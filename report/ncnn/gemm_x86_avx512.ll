Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii:bb.a
  store <16 x float> %i.ml, ptr %i.na, align 64, !tbaa !116
  %i.nb = getelementptr inbounds nuw i8, ptr %.7143, i64 832
  store <16 x float> %i.mm, ptr %i.nb, align 64, !tbaa !116
  %i.nc = getelementptr inbounds nuw i8, ptr %.7143, i64 896
  store <16 x float> %i.mn, ptr %i.nc, align 64, !tbaa !116
  %i.nd = getelementptr inbounds nuw i8, ptr %.7143, i64 960
  store <16 x float> %i.mo, ptr %i.nd, align 64, !tbaa !116
  %i.ne = getelementptr inbounds nuw i8, ptr %.7143, i64 1024 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0680126, i64 64 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.0678127, i64 64 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0676128, i64 64 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.0674129, i64 64 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.0672130, i64 64 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0670131, i64 64 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.0668132, i64 64 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0666133, i64 64 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0664134, i64 64 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0662135, i64 64 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0660136, i64 64 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0658137, i64 64 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0656138, i64 64 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0654139, i64 64 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0652140, i64 64 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.0650141, i64 64 ; 2 uses
  %i.nv = add nuw nsw i32 %.0648142, 16           ; 2 uses
  %i.nw = or disjoint i32 %i.nv, 15
  %i.nx = icmp slt i32 %i.nw, %4
  br i1 %i.nx, label %.lr.ph144, label %.preheader104, !llvm.loop !192

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %.lr.ph181
  %.8180 = phi ptr [ %i.pd, %.lr.ph181 ], [ %.8180.ph, %.lr.ph181.preheader ] ; 17 uses
  %.1649179 = phi i32 [ %i.pu, %.lr.ph181 ], [ %.1649179.ph, %.lr.ph181.preheader ]
  %.1651178 = phi ptr [ %i.pt, %.lr.ph181 ], [ %.1651178.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1653177 = phi ptr [ %i.ps, %.lr.ph181 ], [ %.1653177.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1655176 = phi ptr [ %i.pr, %.lr.ph181 ], [ %.1655176.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1657175 = phi ptr [ %i.pq, %.lr.ph181 ], [ %.1657175.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1659174 = phi ptr [ %i.pp, %.lr.ph181 ], [ %.1659174.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1661173 = phi ptr [ %i.po, %.lr.ph181 ], [ %.1661173.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1663172 = phi ptr [ %i.pn, %.lr.ph181 ], [ %.1663172.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1665171 = phi ptr [ %i.pm, %.lr.ph181 ], [ %.1665171.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1667170 = phi ptr [ %i.pl, %.lr.ph181 ], [ %.1667170.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1669169 = phi ptr [ %i.pk, %.lr.ph181 ], [ %.1669169.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1671168 = phi ptr [ %i.pj, %.lr.ph181 ], [ %.1671168.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1673167 = phi ptr [ %i.pi, %.lr.ph181 ], [ %.1673167.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1675166 = phi ptr [ %i.ph, %.lr.ph181 ], [ %.1675166.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1677165 = phi ptr [ %i.pg, %.lr.ph181 ], [ %.1677165.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1679164 = phi ptr [ %i.pf, %.lr.ph181 ], [ %.1679164.ph, %.lr.ph181.preheader ] ; 2 uses
  %.1681163 = phi ptr [ %i.pe, %.lr.ph181 ], [ %.1681163.ph, %.lr.ph181.preheader ] ; 2 uses
  %i.ny = load float, ptr %.1681163, align 4, !tbaa !68
  store float %i.ny, ptr %.8180, align 4, !tbaa !68
  %i.nz = load float, ptr %.1679164, align 4, !tbaa !68
  %i.oa = getelementptr inbounds nuw i8, ptr %.8180, i64 4
  store float %i.nz, ptr %i.oa, align 4, !tbaa !68
  %i.ob = load float, ptr %.1677165, align 4, !tbaa !68
  %i.oc = getelementptr inbounds nuw i8, ptr %.8180, i64 8
  store float %i.ob, ptr %i.oc, align 4, !tbaa !68
  %i.od = load float, ptr %.1675166, align 4, !tbaa !68
  %i.oe = getelementptr inbounds nuw i8, ptr %.8180, i64 12
  store float %i.od, ptr %i.oe, align 4, !tbaa !68
  %i.of = load float, ptr %.1673167, align 4, !tbaa !68
  %i.og = getelementptr inbounds nuw i8, ptr %.8180, i64 16
  store float %i.of, ptr %i.og, align 4, !tbaa !68
  %i.oh = load float, ptr %.1671168, align 4, !tbaa !68
  %i.oi = getelementptr inbounds nuw i8, ptr %.8180, i64 20
  store float %i.oh, ptr %i.oi, align 4, !tbaa !68
  %i.oj = load float, ptr %.1669169, align 4, !tbaa !68
  %i.ok = getelementptr inbounds nuw i8, ptr %.8180, i64 24
  store float %i.oj, ptr %i.ok, align 4, !tbaa !68
  %i.ol = load float, ptr %.1667170, align 4, !tbaa !68
  %i.om = getelementptr inbounds nuw i8, ptr %.8180, i64 28
  store float %i.ol, ptr %i.om, align 4, !tbaa !68
  %i.on = load float, ptr %.1665171, align 4, !tbaa !68
  %i.oo = getelementptr inbounds nuw i8, ptr %.8180, i64 32
  store float %i.on, ptr %i.oo, align 4, !tbaa !68
  %i.op = load float, ptr %.1663172, align 4, !tbaa !68
  %i.oq = getelementptr inbounds nuw i8, ptr %.8180, i64 36
  store float %i.op, ptr %i.oq, align 4, !tbaa !68
  %i.or = load float, ptr %.1661173, align 4, !tbaa !68
  %i.os = getelementptr inbounds nuw i8, ptr %.8180, i64 40
  store float %i.or, ptr %i.os, align 4, !tbaa !68
  %i.ot = load float, ptr %.1659174, align 4, !tbaa !68
  %i.ou = getelementptr inbounds nuw i8, ptr %.8180, i64 44
  store float %i.ot, ptr %i.ou, align 4, !tbaa !68
  %i.ov = load float, ptr %.1657175, align 4, !tbaa !68
  %i.ow = getelementptr inbounds nuw i8, ptr %.8180, i64 48
  store float %i.ov, ptr %i.ow, align 4, !tbaa !68
  %i.ox = load float, ptr %.1655176, align 4, !tbaa !68
  %i.oy = getelementptr inbounds nuw i8, ptr %.8180, i64 52
  store float %i.ox, ptr %i.oy, align 4, !tbaa !68
  %i.oz = load float, ptr %.1653177, align 4, !tbaa !68
  %i.pa = getelementptr inbounds nuw i8, ptr %.8180, i64 56
  store float %i.oz, ptr %i.pa, align 4, !tbaa !68
  %i.pb = load float, ptr %.1651178, align 4, !tbaa !68
  %i.pc = getelementptr inbounds nuw i8, ptr %.8180, i64 60
  store float %i.pb, ptr %i.pc, align 4, !tbaa !68
  %i.pd = getelementptr inbounds nuw i8, ptr %.8180, i64 64 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.1681163, i64 4
  %i.pf = getelementptr inbounds nuw i8, ptr %.1679164, i64 4
  %i.pg = getelementptr inbounds nuw i8, ptr %.1677165, i64 4
  %i.ph = getelementptr inbounds nuw i8, ptr %.1675166, i64 4
  %i.pi = getelementptr inbounds nuw i8, ptr %.1673167, i64 4
  %i.pj = getelementptr inbounds nuw i8, ptr %.1671168, i64 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.1669169, i64 4
  %i.pl = getelementptr inbounds nuw i8, ptr %.1667170, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.1665171, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %.1663172, i64 4
  %i.po = getelementptr inbounds nuw i8, ptr %.1661173, i64 4
  %i.pp = getelementptr inbounds nuw i8, ptr %.1659174, i64 4
  %i.pq = getelementptr inbounds nuw i8, ptr %.1657175, i64 4
  %i.pr = getelementptr inbounds nuw i8, ptr %.1655176, i64 4
  %i.ps = getelementptr inbounds nuw i8, ptr %.1653177, i64 4
  %i.pt = getelementptr inbounds nuw i8, ptr %.1651178, i64 4
  %i.pu = add nuw nsw i32 %.1649179, 1            ; 2 uses
  %exitcond430.not = icmp eq i32 %i.pu, %4
  br i1 %exitcond430.not, label %.loopexit105, label %.lr.ph181, !llvm.loop !193

.loopexit105.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  br i1 %lcmp.mod1217.not, label %.loopexit105, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit105.loopexit.unr-lcssa, %.lr.ph.preheader
  %.1584111.epil.init = phi ptr [ %.0583184, %.lr.ph.preheader ], [ %i.bx, %.loopexit105.loopexit.unr-lcssa ]
  %.0600110.epil.init = phi ptr [ %i.ba, %.lr.ph.preheader ], [ %i.by, %.loopexit105.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1219)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.1584111.epil = phi ptr [ %i.pw, %.lr.ph.epil ], [ %.1584111.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0600110.epil = phi ptr [ %i.px, %.lr.ph.epil ], [ %.0600110.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter1216 = phi i32 [ %epil.iter1216.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.pv = load <16 x float>, ptr %.0600110.epil, align 64, !tbaa !116
  store <16 x float> %i.pv, ptr %.1584111.epil, align 64, !tbaa !116
  %i.pw = getelementptr inbounds nuw i8, ptr %.1584111.epil, i64 64 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.0600110.epil, i64 64
  %epil.iter1216.next = add i32 %epil.iter1216, 1 ; 2 uses
  %epil.iter1216.cmp.not = icmp eq i32 %epil.iter1216.next, %xtraiter1215
  br i1 %epil.iter1216.cmp.not, label %.loopexit105, label %.lr.ph.epil, !llvm.loop !194

.loopexit105.loopexit1183.unr-lcssa.a:            ; preds = %.lr.ph116
  br i1 %lcmp.mod1210.not, label %.loopexit105, label %.lr.ph116.epil.preheader

.lr.ph116.epil.preheader:                         ; preds = %.loopexit105.loopexit1183.unr-lcssa.a, %.lr.ph116.preheader
  %.3115.epil.init = phi ptr [ %.0583184, %.lr.ph116.preheader ], [ %i.dd, %.loopexit105.loopexit1183.unr-lcssa.a ]
  %.0602114.epil.init = phi ptr [ %i.ch, %.lr.ph116.preheader ], [ %i.de, %.loopexit105.loopexit1183.unr-lcssa.a ]
  %.0603113.epil.init = phi ptr [ %i.ce, %.lr.ph116.preheader ], [ %i.df, %.loopexit105.loopexit1183.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod1212)
  br label %.lr.ph116.epil

.lr.ph116.epil:                                   ; preds = %.lr.ph116.epil, %.lr.ph116.epil.preheader
  %.3115.epil = phi ptr [ %i.qb, %.lr.ph116.epil ], [ %.3115.epil.init, %.lr.ph116.epil.preheader ] ; 3 uses
  %.0602114.epil = phi ptr [ %i.qc, %.lr.ph116.epil ], [ %.0602114.epil.init, %.lr.ph116.epil.preheader ] ; 2 uses
  %.0603113.epil = phi ptr [ %i.qd, %.lr.ph116.epil ], [ %.0603113.epil.init, %.lr.ph116.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph116.epil ], [ 0, %.lr.ph116.epil.preheader ]
  %i.py = load <8 x float>, ptr %.0602114.epil, align 32, !tbaa !116
  store <8 x float> %i.py, ptr %.3115.epil, align 32, !tbaa !116
  %i.pz = getelementptr inbounds nuw i8, ptr %.3115.epil, i64 32
  %i.qa = load <8 x float>, ptr %.0603113.epil, align 32, !tbaa !116
  store <8 x float> %i.qa, ptr %i.pz, align 32, !tbaa !116
  %i.qb = getelementptr inbounds nuw i8, ptr %.3115.epil, i64 64 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0602114.epil, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %.0603113.epil, i64 32
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1209
  br i1 %epil.iter.cmp.not, label %.loopexit105, label %.lr.ph116.epil, !llvm.loop !195

.loopexit105.loopexit1184.unr-lcssa:              ; preds = %.lr.ph124
  br i1 %lcmp.mod.not, label %.loopexit105, label %.lr.ph124.epil.preheader

.lr.ph124.epil.preheader:                         ; preds = %.loopexit105.loopexit1184.unr-lcssa, %.lr.ph124.preheader
  %.5123.epil.init = phi ptr [ %.0583184, %.lr.ph124.preheader ], [ %i.eq, %.loopexit105.loopexit1184.unr-lcssa ] ; 5 uses
  %.0605122.epil.init = phi ptr [ %i.dw, %.lr.ph124.preheader ], [ %i.er, %.loopexit105.loopexit1184.unr-lcssa ]
  %.0606121.epil.init = phi ptr [ %i.dt, %.lr.ph124.preheader ], [ %i.es, %.loopexit105.loopexit1184.unr-lcssa ]
  %.0607120.epil.init = phi ptr [ %i.dp, %.lr.ph124.preheader ], [ %i.et, %.loopexit105.loopexit1184.unr-lcssa ]
  %.0683118.epil.init = phi ptr [ %i.dl, %.lr.ph124.preheader ], [ %i.eu, %.loopexit105.loopexit1184.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1208)
  %i.qe = load <4 x float>, ptr %.0605122.epil.init, align 16, !tbaa !116
  store <4 x float> %i.qe, ptr %.5123.epil.init, align 16, !tbaa !116
  %i.qf = getelementptr inbounds nuw i8, ptr %.5123.epil.init, i64 16
  %i.qg = load <4 x float>, ptr %.0606121.epil.init, align 16, !tbaa !116
  store <4 x float> %i.qg, ptr %i.qf, align 16, !tbaa !116
  %i.qh = getelementptr inbounds nuw i8, ptr %.5123.epil.init, i64 32
  %i.qi = load <4 x float>, ptr %.0607120.epil.init, align 16, !tbaa !116
  store <4 x float> %i.qi, ptr %i.qh, align 16, !tbaa !116
  %i.qj = getelementptr inbounds nuw i8, ptr %.5123.epil.init, i64 48
  %i.qk = load <4 x float>, ptr %.0683118.epil.init, align 16, !tbaa !116
  store <4 x float> %i.qk, ptr %i.qj, align 16, !tbaa !116
  %i.ql = getelementptr inbounds nuw i8, ptr %.5123.epil.init, i64 64
  br label %.loopexit105

.loopexit105:                                     ; preds = %.lr.ph181, %.lr.ph124.epil.preheader, %.loopexit105.loopexit1184.unr-lcssa, %.loopexit105.loopexit1183.unr-lcssa.a, %.lr.ph116.epil, %.loopexit105.loopexit.unr-lcssa, %.lr.ph.epil, %middle.block, %vec.epilog.middle.block, %bb.b, %.split, %bb.c, %bb.d, %bb.e, %.preheader104
  %.9 = phi ptr [ %.0583184, %.split ], [ %.7.lcssa, %.preheader104 ], [ %i.pw, %.lr.ph.epil ], [ %.0583184, %bb.b ], [ %.0583184, %bb.e ], [ %i.qb, %.lr.ph116.epil ], [ %.0583184, %bb.d ], [ %.0583184, %bb.c ], [ %i.ql, %.lr.ph124.epil.preheader ], [ %i.ir, %vec.epilog.middle.block ], [ %i.hu, %middle.block ], [ %i.bx, %.loopexit105.loopexit.unr-lcssa ], [ %i.dd, %.loopexit105.loopexit1183.unr-lcssa.a ], [ %i.eq, %.loopexit105.loopexit1184.unr-lcssa ], [ %i.pd, %.lr.ph181 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.qm = or disjoint i64 %indvars.iv.next, 15
  %i.qn = icmp samesign ult i64 %i.qm, %i.w
  br i1 %i.qn, label %bb.b, label %.preheader103.loopexit, !llvm.loop !196

.preheader98.loopexit:                            ; preds = %.loopexit100
  %i.qo = trunc nuw nsw i64 %indvars.iv.next436 to i32
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98.loopexit, %.preheader103
  %.1587.lcssa = phi i32 [ %.0586.lcssa, %.preheader103 ], [ %i.qo, %.preheader98.loopexit ] ; 8 uses
  %.10.lcssa = phi ptr [ %.0583.lcssa, %.preheader103 ], [ %.17, %.preheader98.loopexit ] ; 5 uses
  %i.qp = or disjoint i32 %.1587.lcssa, 3
  %i.qq = icmp slt i32 %i.qp, %2
  br i1 %i.qq, label %.lr.ph278, label %.preheader94

.lr.ph278:                                        ; preds = %.preheader98
  %i.qr = icmp eq i32 %i.b, 4                     ; 2 uses
  %i.qs = shl nsw i32 %3, 2
  %i.qt = sext i32 %i.qs to i64                   ; 2 uses
  %i.qu = icmp sgt i32 %4, 0                      ; 2 uses
  %i.qv = icmp eq i32 %i.b, 1
  %i.qw = sext i32 %3 to i64                      ; 8 uses
  %i.qx = icmp sgt i32 %4, 7
  br i1 %i.qv, label %.lr.ph278.split.us.preheader, label %.lr.ph278.split

.lr.ph278.split.us.preheader:                     ; preds = %.lr.ph278
  %i.qy = and i32 %4, -8
  %i.qz = zext nneg i32 %.1587.lcssa to i64
  %i.ra = sext i32 %1 to i64
  %i.rb = sext i32 %2 to i64
  %invariant.op546.a = add nsw i64 %i.rb, -3
  %i.rc = add i32 %4, -1
  %xtraiter1243 = and i32 %4, 7                   ; 3 uses
  %i.rd = icmp ult i32 %i.rc, 7
  %unroll_iter1248 = and i32 %4, 2147483640
  %lcmp.mod1245.not = icmp eq i32 %xtraiter1243, 0
  %lcmp.mod1247 = icmp ne i32 %xtraiter1243, 0
  br label %.lr.ph278.split.us

.lr.ph278.split.us:                               ; preds = %.lr.ph278.split.us.preheader, %.loopexit.us
  %indvars.iv445 = phi i64 [ %i.qz, %.lr.ph278.split.us.preheader ], [ %indvars.iv.next446, %.loopexit.us ] ; 2 uses
  %.18277.us = phi ptr [ %.10.lcssa, %.lr.ph278.split.us.preheader ], [ %.23.lcssa.us, %.loopexit.us ] ; 4 uses
  %.pre457 = load ptr, ptr %0, align 8, !tbaa !18 ; 5 uses
  %i.re = add nsw i64 %indvars.iv445, %i.ra       ; 7 uses
  %i.rf = mul i64 %i.k, %i.re                     ; 2 uses
  br i1 %i.qr, label %bb.g, label %.loopexit97.us

bb.g:                                             ; preds = %.lr.ph278.split.us
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.pre457, i64 %i.rf ; 2 uses
  br i1 %i.qu, label %.lr.ph240.us.preheader, label %.loopexit97.us.thread

.loopexit97.us.thread:                            ; preds = %bb.g
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.qw
  %i.ri = add nsw i64 %i.re, 1
  %i.rj = mul i64 %i.k, %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.pre457, i64 %i.rj
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.rk, i64 %i.qw
  %i.rm = add nsw i64 %i.re, 2
  %i.rn = mul i64 %i.k, %i.rm
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.pre457, i64 %i.rn
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.qw
  %i.rq = add nsw i64 %i.re, 3
  %i.rr = mul i64 %i.k, %i.rq
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.pre457, i64 %i.rr
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.qw
  br label %.preheader96.us

.lr.ph240.us.preheader:                           ; preds = %bb.g
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.qt ; 2 uses
  br i1 %i.rd, label %.lr.ph240.us.epil.preheader, label %.lr.ph240.us

.lr.ph240.us:                                     ; preds = %.lr.ph240.us.preheader, %.lr.ph240.us
  %.19239.us = phi ptr [ %i.sr, %.lr.ph240.us ], [ %.18277.us, %.lr.ph240.us.preheader ] ; 9 uses
  %.0624237.us = phi ptr [ %i.ss, %.lr.ph240.us ], [ %i.ru, %.lr.ph240.us.preheader ] ; 9 uses
  %niter1249 = phi i32 [ %niter1249.next.7, %.lr.ph240.us ], [ 0, %.lr.ph240.us.preheader ]
  %i.rv = load <4 x float>, ptr %.0624237.us, align 16, !tbaa !116
  store <4 x float> %i.rv, ptr %.19239.us, align 16, !tbaa !116
  %i.rw = getelementptr inbounds nuw i8, ptr %.19239.us, i64 16
  %i.rx = getelementptr inbounds nuw i8, ptr %.0624237.us, i64 16
  %i.ry = load <4 x float>, ptr %i.rx, align 16, !tbaa !116
  store <4 x float> %i.ry, ptr %i.rw, align 16, !tbaa !116
  %i.rz = getelementptr inbounds nuw i8, ptr %.19239.us, i64 32
  %i.sa = getelementptr inbounds nuw i8, ptr %.0624237.us, i64 32
  %i.sb = load <4 x float>, ptr %i.sa, align 16, !tbaa !116
  store <4 x float> %i.sb, ptr %i.rz, align 16, !tbaa !116
  %i.sc = getelementptr inbounds nuw i8, ptr %.19239.us, i64 48
  %i.sd = getelementptr inbounds nuw i8, ptr %.0624237.us, i64 48
  %i.se = load <4 x float>, ptr %i.sd, align 16, !tbaa !116
  store <4 x float> %i.se, ptr %i.sc, align 16, !tbaa !116
  %i.sf = getelementptr inbounds nuw i8, ptr %.19239.us, i64 64
  %i.sg = getelementptr inbounds nuw i8, ptr %.0624237.us, i64 64
  %i.sh = load <4 x float>, ptr %i.sg, align 16, !tbaa !116
  store <4 x float> %i.sh, ptr %i.sf, align 16, !tbaa !116
  %i.si = getelementptr inbounds nuw i8, ptr %.19239.us, i64 80
  %i.sj = getelementptr inbounds nuw i8, ptr %.0624237.us, i64 80
  %i.sk = load <4 x float>, ptr %i.sj, align 16, !tbaa !116
  store <4 x float> %i.sk, ptr %i.si, align 16, !tbaa !116
  %i.sl = getelementptr inbounds nuw i8, ptr %.19239.us, i64 96
  %i.sm = getelementptr inbounds nuw i8, ptr %.0624237.us, i64 96
  %i.sn = load <4 x float>, ptr %i.sm, align 16, !tbaa !116
  store <4 x float> %i.sn, ptr %i.sl, align 16, !tbaa !116
  %i.so = getelementptr inbounds nuw i8, ptr %.19239.us, i64 112
  %i.sp = getelementptr inbounds nuw i8, ptr %.0624237.us, i64 112
  %i.sq = load <4 x float>, ptr %i.sp, align 16, !tbaa !116
  store <4 x float> %i.sq, ptr %i.so, align 16, !tbaa !116
  %i.sr = getelementptr inbounds nuw i8, ptr %.19239.us, i64 128 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.0624237.us, i64 128 ; 2 uses
  %niter1249.next.7 = add nuw nsw i32 %niter1249, 8 ; 2 uses
  %niter1249.ncmp.7 = icmp eq i32 %niter1249.next.7, %unroll_iter1248
  br i1 %niter1249.ncmp.7, label %.loopexit97.us.loopexit.unr-lcssa, label %.lr.ph240.us, !llvm.loop !197

.loopexit97.us.loopexit.unr-lcssa:                ; preds = %.lr.ph240.us
  br i1 %lcmp.mod1245.not, label %.loopexit97.us.loopexit, label %.lr.ph240.us.epil.preheader

.lr.ph240.us.epil.preheader:                      ; preds = %.loopexit97.us.loopexit.unr-lcssa, %.lr.ph240.us.preheader
  %.19239.us.epil.init = phi ptr [ %.18277.us, %.lr.ph240.us.preheader ], [ %i.sr, %.loopexit97.us.loopexit.unr-lcssa ]
  %.0624237.us.epil.init = phi ptr [ %i.ru, %.lr.ph240.us.preheader ], [ %i.ss, %.loopexit97.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1247)
  br label %.lr.ph240.us.epil

.lr.ph240.us.epil:                                ; preds = %.lr.ph240.us.epil, %.lr.ph240.us.epil.preheader
  %.19239.us.epil = phi ptr [ %i.su, %.lr.ph240.us.epil ], [ %.19239.us.epil.init, %.lr.ph240.us.epil.preheader ] ; 2 uses
  %.0624237.us.epil = phi ptr [ %i.sv, %.lr.ph240.us.epil ], [ %.0624237.us.epil.init, %.lr.ph240.us.epil.preheader ] ; 2 uses
  %epil.iter1244 = phi i32 [ %epil.iter1244.next, %.lr.ph240.us.epil ], [ 0, %.lr.ph240.us.epil.preheader ]
  %i.st = load <4 x float>, ptr %.0624237.us.epil, align 16, !tbaa !116
  store <4 x float> %i.st, ptr %.19239.us.epil, align 16, !tbaa !116
  %i.su = getelementptr inbounds nuw i8, ptr %.19239.us.epil, i64 16 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.0624237.us.epil, i64 16
  %epil.iter1244.next = add i32 %epil.iter1244, 1 ; 2 uses
  %epil.iter1244.cmp.not = icmp eq i32 %epil.iter1244.next, %xtraiter1243
  br i1 %epil.iter1244.cmp.not, label %.loopexit97.us.loopexit, label %.lr.ph240.us.epil, !llvm.loop !198

.loopexit97.us.loopexit:                          ; preds = %.lr.ph240.us.epil, %.loopexit97.us.loopexit.unr-lcssa
  %.lcssa1155 = phi ptr [ %i.sr, %.loopexit97.us.loopexit.unr-lcssa ], [ %i.su, %.lr.ph240.us.epil ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.loopexit97.us

.loopexit97.us:                                   ; preds = %.lr.ph278.split.us, %.loopexit97.us.loopexit
  %i.sw = phi ptr [ %.pre, %.loopexit97.us.loopexit ], [ %.pre457, %.lr.ph278.split.us ] ; 4 uses
  %.20.us = phi ptr [ %.lcssa1155, %.loopexit97.us.loopexit ], [ %.18277.us, %.lr.ph278.split.us ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.rf
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.qw ; 2 uses
  %i.sz = add nsw i64 %i.re, 1
  %i.ta = mul i64 %i.k, %i.sz
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.ta
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.qw ; 2 uses
  %i.td = add nsw i64 %i.re, 2
  %i.te = mul i64 %i.k, %i.td
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.te
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.qw ; 2 uses
  %i.th = add nsw i64 %i.re, 3
  %i.ti = mul i64 %i.k, %i.th
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.ti
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.qw ; 2 uses
  br i1 %i.qx, label %.lr.ph248.us, label %.preheader96.us

.lr.ph248.us:                                     ; preds = %.loopexit97.us, %.lr.ph248.us
  %.21247.us = phi ptr [ %i.ua, %.lr.ph248.us ], [ %.20.us, %.loopexit97.us ] ; 5 uses
  %.0608246.us = phi i32 [ %i.uf, %.lr.ph248.us ], [ 0, %.loopexit97.us ]
  %.0611245.us = phi ptr [ %i.ue, %.lr.ph248.us ], [ %i.tk, %.loopexit97.us ] ; 2 uses
  %.0614244.us = phi ptr [ %i.ud, %.lr.ph248.us ], [ %i.tg, %.loopexit97.us ] ; 2 uses
  %.0617243.us = phi ptr [ %i.uc, %.lr.ph248.us ], [ %i.tc, %.loopexit97.us ] ; 2 uses
  %.0620242.us = phi ptr [ %i.ub, %.lr.ph248.us ], [ %i.sy, %.loopexit97.us ] ; 2 uses
  %i.tl = load <8 x float>, ptr %.0620242.us, align 1, !tbaa !116 ; 2 uses
  %i.tm = load <8 x float>, ptr %.0617243.us, align 1, !tbaa !116 ; 2 uses
  %i.tn = load <8 x float>, ptr %.0614244.us, align 1, !tbaa !116 ; 2 uses
  %i.to = load <8 x float>, ptr %.0611245.us, align 1, !tbaa !116 ; 2 uses
  %i.tp = shufflevector <8 x float> %i.tl, <8 x float> %i.tm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.tq = shufflevector <8 x float> %i.tl, <8 x float> %i.tm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.tr = shufflevector <8 x float> %i.tn, <8 x float> %i.to, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ts = shufflevector <8 x float> %i.tn, <8 x float> %i.to, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.tt = shufflevector <8 x float> %i.tp, <8 x float> %i.tr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.tu = shufflevector <8 x float> %i.tq, <8 x float> %i.ts, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.tv = shufflevector <8 x float> %i.tp, <8 x float> %i.tr, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.tw = shufflevector <8 x float> %i.tq, <8 x float> %i.ts, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.tt, ptr %.21247.us, align 32, !tbaa !116
  %i.tx = getelementptr inbounds nuw i8, ptr %.21247.us, i64 32
  store <8 x float> %i.tu, ptr %i.tx, align 32, !tbaa !116
  %i.ty = getelementptr inbounds nuw i8, ptr %.21247.us, i64 64
  store <8 x float> %i.tv, ptr %i.ty, align 32, !tbaa !116
  %i.tz = getelementptr inbounds nuw i8, ptr %.21247.us, i64 96
  store <8 x float> %i.tw, ptr %i.tz, align 32, !tbaa !116
  %i.ua = getelementptr inbounds nuw i8, ptr %.21247.us, i64 128 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.0620242.us, i64 32 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.0617243.us, i64 32 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.0614244.us, i64 32 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.0611245.us, i64 32 ; 2 uses
  %i.uf = add nuw nsw i32 %.0608246.us, 8         ; 2 uses
  %i.ug = or disjoint i32 %i.uf, 7
  %i.uh = icmp slt i32 %i.ug, %4
  br i1 %i.uh, label %.lr.ph248.us, label %.preheader96.us, !llvm.loop !199

.lr.ph261.us:                                     ; preds = %.preheader96.us, %.lr.ph261.us
  %.22260.us = phi ptr [ %i.ux, %.lr.ph261.us ], [ %.21.lcssa.us, %.preheader96.us ] ; 5 uses
  %.1609259.us = phi i32 [ %i.vc, %.lr.ph261.us ], [ %.0608.lcssa.us, %.preheader96.us ]
  %.1612258.us = phi ptr [ %i.vb, %.lr.ph261.us ], [ %.0611.lcssa.us, %.preheader96.us ] ; 2 uses
  %.1615257.us = phi ptr [ %i.va, %.lr.ph261.us ], [ %.0614.lcssa.us, %.preheader96.us ] ; 2 uses
  %.1618256.us = phi ptr [ %i.uz, %.lr.ph261.us ], [ %.0617.lcssa.us, %.preheader96.us ] ; 2 uses
  %.1621255.us = phi ptr [ %i.uy, %.lr.ph261.us ], [ %.0620.lcssa.us, %.preheader96.us ] ; 2 uses
  %i.ui = load <4 x float>, ptr %.1621255.us, align 1, !tbaa !116 ; 2 uses
  %i.uj = load <4 x float>, ptr %.1618256.us, align 1, !tbaa !116 ; 2 uses
  %i.uk = load <4 x float>, ptr %.1615257.us, align 1, !tbaa !116 ; 2 uses
  %i.ul = load <4 x float>, ptr %.1612258.us, align 1, !tbaa !116 ; 2 uses
  %i.um = shufflevector <4 x float> %i.ui, <4 x float> %i.uj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.un = shufflevector <4 x float> %i.uk, <4 x float> %i.ul, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.uo = shufflevector <4 x float> %i.ui, <4 x float> %i.uj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.up = shufflevector <4 x float> %i.uk, <4 x float> %i.ul, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.uq = shufflevector <4 x float> %i.um, <4 x float> %i.un, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ur = shufflevector <4 x float> %i.un, <4 x float> %i.um, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.us = shufflevector <4 x float> %i.uo, <4 x float> %i.up, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
end_hunk_0
begin_hunk_1_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii:bb.a
  %.1618.lcssa.us = phi ptr [ %.0617.lcssa.us, %.preheader96.us ], [ %i.uz, %.lr.ph261.us ] ; 8 uses
  %.1615.lcssa.us = phi ptr [ %.0614.lcssa.us, %.preheader96.us ], [ %i.va, %.lr.ph261.us ] ; 8 uses
  %.1612.lcssa.us = phi ptr [ %.0611.lcssa.us, %.preheader96.us ], [ %i.vb, %.lr.ph261.us ] ; 8 uses
  %.1609.lcssa.us = phi i32 [ %.0608.lcssa.us, %.preheader96.us ], [ %i.vc, %.lr.ph261.us ] ; 7 uses
  %.22.lcssa.us = phi ptr [ %.21.lcssa.us, %.preheader96.us ], [ %i.ux, %.lr.ph261.us ] ; 12 uses
  %i.we = icmp slt i32 %.1609.lcssa.us, %4
  br i1 %i.we, label %iter.check1019, label %.loopexit.us

iter.check1019:                                   ; preds = %.preheader95.us
  %i.wf = xor i32 %.1609.lcssa.us, -1
  %i.wg = add i32 %4, %i.wf                       ; 3 uses
  %i.wh = zext i32 %i.wg to i64
  %i.wi = add nuw nsw i64 %i.wh, 1                ; 5 uses
  %min.iters.check992 = icmp ult i32 %i.wg, 3
  br i1 %min.iters.check992, label %.lr.ph274.us.preheader, label %vector.memcheck966

vector.memcheck966:                               ; preds = %iter.check1019
  %scevgep967.a = getelementptr i8, ptr %.22.lcssa.us, i64 16
  %i.wj = xor i32 %.1609.lcssa.us, -1
  %i.wk = add i32 %4, %i.wj
  %i.wl = zext i32 %i.wk to i64                   ; 2 uses
  %i.wm = shl nuw nsw i64 %i.wl, 4
  %scevgep968.a = getelementptr i8, ptr %scevgep967.a, i64 %i.wm ; 4 uses
  %scevgep969.a = getelementptr i8, ptr %.1612.lcssa.us, i64 4
  %i.wn = shl nuw nsw i64 %i.wl, 2                ; 4 uses
  %scevgep970.a = getelementptr i8, ptr %scevgep969.a, i64 %i.wn
  %scevgep971.a = getelementptr i8, ptr %.1615.lcssa.us, i64 4
  %scevgep972.a = getelementptr i8, ptr %scevgep971.a, i64 %i.wn
  %scevgep973.a = getelementptr i8, ptr %.1618.lcssa.us, i64 4
  %scevgep974.a = getelementptr i8, ptr %scevgep973.a, i64 %i.wn
  %scevgep975.a = getelementptr i8, ptr %.1621.lcssa.us, i64 4
  %scevgep976 = getelementptr i8, ptr %scevgep975.a, i64 %i.wn
  %bound0977 = icmp ult ptr %.22.lcssa.us, %scevgep970.a
  %bound1978 = icmp ult ptr %.1612.lcssa.us, %scevgep968.a
  %found.conflict979 = and i1 %bound0977, %bound1978
  %bound0980 = icmp ult ptr %.22.lcssa.us, %scevgep972.a
  %bound1981 = icmp ult ptr %.1615.lcssa.us, %scevgep968.a
  %found.conflict982 = and i1 %bound0980, %bound1981
  %conflict.rdx983 = or i1 %found.conflict979, %found.conflict982
  %bound0984 = icmp ult ptr %.22.lcssa.us, %scevgep974.a
  %bound1985 = icmp ult ptr %.1618.lcssa.us, %scevgep968.a
  %found.conflict986 = and i1 %bound0984, %bound1985
  %conflict.rdx987 = or i1 %conflict.rdx983, %found.conflict986
  %bound0988 = icmp ult ptr %.22.lcssa.us, %scevgep976
  %bound1989 = icmp ult ptr %.1621.lcssa.us, %scevgep968.a
  %found.conflict990 = and i1 %bound0988, %bound1989
  %conflict.rdx991 = or i1 %conflict.rdx987, %found.conflict990
  br i1 %conflict.rdx991, label %.lr.ph274.us.preheader, label %vector.main.loop.iter.check993

vector.main.loop.iter.check993:                   ; preds = %vector.memcheck966
  %min.iters.check994 = icmp ult i32 %i.wg, 15
  br i1 %min.iters.check994, label %vec.epilog.ph1023, label %vector.ph995

vector.ph995:                                     ; preds = %vector.main.loop.iter.check993
  %i.wo = and i64 %i.wi, 12
  %n.vec996 = and i64 %i.wi, 8589934576           ; 6 uses
  %i.wp = shl nuw nsw i64 %n.vec996, 4
  %i.wq = getelementptr i8, ptr %.22.lcssa.us, i64 %i.wp ; 2 uses
  %i.wr = trunc i64 %n.vec996 to i32
  %i.ws = add i32 %.1609.lcssa.us, %i.wr
  %i.wt = shl nuw nsw i64 %n.vec996, 2            ; 4 uses
  %i.wu = getelementptr i8, ptr %.1612.lcssa.us, i64 %i.wt
  %i.wv = getelementptr i8, ptr %.1615.lcssa.us, i64 %i.wt
  %i.ww = getelementptr i8, ptr %.1618.lcssa.us, i64 %i.wt
  %i.wx = getelementptr i8, ptr %.1621.lcssa.us, i64 %i.wt
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1009, %vector.body997 ] ; 3 uses
  %i.wy = shl i64 %index998, 4
  %next.gep999.a = getelementptr i8, ptr %.22.lcssa.us, i64 %i.wy
  %i.wz = shl i64 %index998, 2                    ; 4 uses
  %next.gep1000.a = getelementptr i8, ptr %.1612.lcssa.us, i64 %i.wz
  %next.gep1001.a = getelementptr i8, ptr %.1615.lcssa.us, i64 %i.wz
  %next.gep1002.a = getelementptr i8, ptr %.1618.lcssa.us, i64 %i.wz
  %next.gep1003 = getelementptr i8, ptr %.1621.lcssa.us, i64 %i.wz
  %wide.load1004.a = load <16 x float>, ptr %next.gep1003, align 4, !tbaa !68, !alias.scope !202
  %wide.load1005.a = load <16 x float>, ptr %next.gep1002.a, align 4, !tbaa !68, !alias.scope !205
  %wide.load1006.a = load <16 x float>, ptr %next.gep1001.a, align 4, !tbaa !68, !alias.scope !207
  %wide.load1007 = load <16 x float>, ptr %next.gep1000.a, align 4, !tbaa !68, !alias.scope !209
  %i.xa = shufflevector <16 x float> %wide.load1004.a, <16 x float> %wide.load1005.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.xb = shufflevector <16 x float> %wide.load1006.a, <16 x float> %wide.load1007, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1008 = shufflevector <32 x float> %i.xa, <32 x float> %i.xb, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec1008, ptr %next.gep999.a, align 4, !tbaa !68, !alias.scope !211, !noalias !213
  %index.next1009 = add nuw i64 %index998, 16     ; 2 uses
  %i.xc = icmp eq i64 %index.next1009, %n.vec996
  br i1 %i.xc, label %middle.block1010, label %vector.body997, !llvm.loop !214

middle.block1010:                                 ; preds = %vector.body997
  %cmp.n1011 = icmp eq i64 %i.wi, %n.vec996
  br i1 %cmp.n1011, label %.loopexit.us, label %vec.epilog.iter.check1021

vec.epilog.iter.check1021:                        ; preds = %middle.block1010
  %min.epilog.iters.check1022 = icmp eq i64 %i.wo, 0
  br i1 %min.epilog.iters.check1022, label %.lr.ph274.us.preheader, label %vec.epilog.ph1023, !prof !215

vec.epilog.ph1023:                                ; preds = %vector.main.loop.iter.check993, %vec.epilog.iter.check1021
  %vec.epilog.resume.val1012 = phi i64 [ %n.vec996, %vec.epilog.iter.check1021 ], [ 0, %vector.main.loop.iter.check993 ]
  %n.vec1024 = and i64 %i.wi, 8589934588          ; 5 uses
  %i.xd = shl nuw nsw i64 %n.vec1024, 4
  %i.xe = getelementptr i8, ptr %.22.lcssa.us, i64 %i.xd ; 2 uses
  %i.xf = trunc i64 %n.vec1024 to i32
  %i.xg = add i32 %.1609.lcssa.us, %i.xf
  %i.xh = shl nuw nsw i64 %n.vec1024, 2           ; 4 uses
  %i.xi = getelementptr i8, ptr %.1612.lcssa.us, i64 %i.xh
  %i.xj = getelementptr i8, ptr %.1615.lcssa.us, i64 %i.xh
  %i.xk = getelementptr i8, ptr %.1618.lcssa.us, i64 %i.xh
  %i.xl = getelementptr i8, ptr %.1621.lcssa.us, i64 %i.xh
  br label %vec.epilog.vector.body1025

vec.epilog.vector.body1025:                       ; preds = %vec.epilog.vector.body1025, %vec.epilog.ph1023
  %index1026 = phi i64 [ %vec.epilog.resume.val1012, %vec.epilog.ph1023 ], [ %index.next1037, %vec.epilog.vector.body1025 ] ; 3 uses
  %i.xm = shl i64 %index1026, 4
  %next.gep1027.a = getelementptr i8, ptr %.22.lcssa.us, i64 %i.xm
  %i.xn = shl i64 %index1026, 2                   ; 4 uses
  %next.gep1028.a = getelementptr i8, ptr %.1612.lcssa.us, i64 %i.xn
  %next.gep1029.a = getelementptr i8, ptr %.1615.lcssa.us, i64 %i.xn
  %next.gep1030.a = getelementptr i8, ptr %.1618.lcssa.us, i64 %i.xn
  %next.gep1031 = getelementptr i8, ptr %.1621.lcssa.us, i64 %i.xn
  %wide.load1032.a = load <4 x float>, ptr %next.gep1031, align 4, !tbaa !68, !alias.scope !202
  %wide.load1033.a = load <4 x float>, ptr %next.gep1030.a, align 4, !tbaa !68, !alias.scope !205
  %wide.load1034.a = load <4 x float>, ptr %next.gep1029.a, align 4, !tbaa !68, !alias.scope !207
  %wide.load1035 = load <4 x float>, ptr %next.gep1028.a, align 4, !tbaa !68, !alias.scope !209
  %i.xo = shufflevector <4 x float> %wide.load1032.a, <4 x float> %wide.load1033.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xp = shufflevector <4 x float> %wide.load1034.a, <4 x float> %wide.load1035, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1036 = shufflevector <8 x float> %i.xo, <8 x float> %i.xp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec1036, ptr %next.gep1027.a, align 4, !tbaa !68, !alias.scope !211, !noalias !213
  %index.next1037 = add nuw i64 %index1026, 4     ; 2 uses
  %i.xq = icmp eq i64 %index.next1037, %n.vec1024
  br i1 %i.xq, label %vec.epilog.middle.block1038, label %vec.epilog.vector.body1025, !llvm.loop !216

vec.epilog.middle.block1038:                      ; preds = %vec.epilog.vector.body1025
  %cmp.n1039 = icmp eq i64 %i.wi, %n.vec1024
  br i1 %cmp.n1039, label %.loopexit.us, label %.lr.ph274.us.preheader

.lr.ph274.us.preheader:                           ; preds = %vector.memcheck966, %iter.check1019, %vec.epilog.iter.check1021, %vec.epilog.middle.block1038
  %.23273.us.ph = phi ptr [ %.22.lcssa.us, %iter.check1019 ], [ %.22.lcssa.us, %vector.memcheck966 ], [ %i.wq, %vec.epilog.iter.check1021 ], [ %i.xe, %vec.epilog.middle.block1038 ] ; 6 uses
  %.2610272.us.ph = phi i32 [ %.1609.lcssa.us, %iter.check1019 ], [ %.1609.lcssa.us, %vector.memcheck966 ], [ %i.ws, %vec.epilog.iter.check1021 ], [ %i.xg, %vec.epilog.middle.block1038 ] ; 4 uses
  %.2613271.us.ph = phi ptr [ %.1612.lcssa.us, %iter.check1019 ], [ %.1612.lcssa.us, %vector.memcheck966 ], [ %i.wu, %vec.epilog.iter.check1021 ], [ %i.xi, %vec.epilog.middle.block1038 ] ; 3 uses
  %.2616270.us.ph = phi ptr [ %.1615.lcssa.us, %iter.check1019 ], [ %.1615.lcssa.us, %vector.memcheck966 ], [ %i.wv, %vec.epilog.iter.check1021 ], [ %i.xj, %vec.epilog.middle.block1038 ] ; 3 uses
  %.2619269.us.ph = phi ptr [ %.1618.lcssa.us, %iter.check1019 ], [ %.1618.lcssa.us, %vector.memcheck966 ], [ %i.ww, %vec.epilog.iter.check1021 ], [ %i.xk, %vec.epilog.middle.block1038 ] ; 3 uses
  %.2622268.us.ph = phi ptr [ %.1621.lcssa.us, %iter.check1019 ], [ %.1621.lcssa.us, %vector.memcheck966 ], [ %i.wx, %vec.epilog.iter.check1021 ], [ %i.xl, %vec.epilog.middle.block1038 ] ; 3 uses
  %i.xr = sub i32 %4, %.2610272.us.ph
  %.neg = add i32 %.2610272.us.ph, 1
  %xtraiter1250 = and i32 %i.xr, 1
  %lcmp.mod1251.not = icmp eq i32 %xtraiter1250, 0
  br i1 %lcmp.mod1251.not, label %.lr.ph274.us.prol.loopexit, label %.lr.ph274.us.prol

.lr.ph274.us.prol:                                ; preds = %.lr.ph274.us.preheader
  %i.xs = load float, ptr %.2622268.us.ph, align 4, !tbaa !68
  store float %i.xs, ptr %.23273.us.ph, align 4, !tbaa !68
  %i.xt = load float, ptr %.2619269.us.ph, align 4, !tbaa !68
  %i.xu = getelementptr inbounds nuw i8, ptr %.23273.us.ph, i64 4
  store float %i.xt, ptr %i.xu, align 4, !tbaa !68
  %i.xv = load float, ptr %.2616270.us.ph, align 4, !tbaa !68
  %i.xw = getelementptr inbounds nuw i8, ptr %.23273.us.ph, i64 8
  store float %i.xv, ptr %i.xw, align 4, !tbaa !68
  %i.xx = load float, ptr %.2613271.us.ph, align 4, !tbaa !68
  %i.xy = getelementptr inbounds nuw i8, ptr %.23273.us.ph, i64 12
  store float %i.xx, ptr %i.xy, align 4, !tbaa !68
  %i.xz = getelementptr inbounds nuw i8, ptr %.23273.us.ph, i64 16 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.2622268.us.ph, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %.2619269.us.ph, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %.2616270.us.ph, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %.2613271.us.ph, i64 4
  %i.ye = add nuw nsw i32 %.2610272.us.ph, 1
  br label %.lr.ph274.us.prol.loopexit

.lr.ph274.us.prol.loopexit:                       ; preds = %.lr.ph274.us.prol, %.lr.ph274.us.preheader
  %.lcssa1167.unr = phi ptr [ poison, %.lr.ph274.us.preheader ], [ %i.xz, %.lr.ph274.us.prol ]
  %.23273.us.unr = phi ptr [ %.23273.us.ph, %.lr.ph274.us.preheader ], [ %i.xz, %.lr.ph274.us.prol ]
  %.2610272.us.unr = phi i32 [ %.2610272.us.ph, %.lr.ph274.us.preheader ], [ %i.ye, %.lr.ph274.us.prol ]
  %.2613271.us.unr = phi ptr [ %.2613271.us.ph, %.lr.ph274.us.preheader ], [ %i.yd, %.lr.ph274.us.prol ]
  %.2616270.us.unr = phi ptr [ %.2616270.us.ph, %.lr.ph274.us.preheader ], [ %i.yc, %.lr.ph274.us.prol ]
  %.2619269.us.unr = phi ptr [ %.2619269.us.ph, %.lr.ph274.us.preheader ], [ %i.yb, %.lr.ph274.us.prol ]
  %.2622268.us.unr = phi ptr [ %.2622268.us.ph, %.lr.ph274.us.preheader ], [ %i.ya, %.lr.ph274.us.prol ]
  %i.yf = icmp eq i32 %4, %.neg
  br i1 %i.yf, label %.loopexit.us, label %.lr.ph274.us

.loopexit.us:                                     ; preds = %.lr.ph274.us.prol.loopexit, %.lr.ph274.us, %middle.block1010, %vec.epilog.middle.block1038, %.preheader95.us
  %.23.lcssa.us = phi ptr [ %.22.lcssa.us, %.preheader95.us ], [ %i.xe, %vec.epilog.middle.block1038 ], [ %i.wq, %middle.block1010 ], [ %.lcssa1167.unr, %.lr.ph274.us.prol.loopexit ], [ %i.vy, %.lr.ph274.us ] ; 2 uses
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 4 ; 3 uses
  %i.yg = icmp slt i64 %indvars.iv.next446, %invariant.op546.a
  br i1 %i.yg, label %.lr.ph278.split.us, label %.preheader94.loopexit, !llvm.loop !217

.preheader96.us:                                  ; preds = %.lr.ph248.us, %.loopexit97.us.thread, %.loopexit97.us
  %.0620.lcssa.us = phi ptr [ %i.sy, %.loopexit97.us ], [ %i.rh, %.loopexit97.us.thread ], [ %i.ub, %.lr.ph248.us ] ; 2 uses
  %.0617.lcssa.us = phi ptr [ %i.tc, %.loopexit97.us ], [ %i.rl, %.loopexit97.us.thread ], [ %i.uc, %.lr.ph248.us ] ; 2 uses
  %.0614.lcssa.us = phi ptr [ %i.tg, %.loopexit97.us ], [ %i.rp, %.loopexit97.us.thread ], [ %i.ud, %.lr.ph248.us ] ; 2 uses
  %.0611.lcssa.us = phi ptr [ %i.tk, %.loopexit97.us ], [ %i.rt, %.loopexit97.us.thread ], [ %i.ue, %.lr.ph248.us ] ; 2 uses
  %.0608.lcssa.us = phi i32 [ 0, %.loopexit97.us ], [ 0, %.loopexit97.us.thread ], [ %i.qy, %.lr.ph248.us ] ; 3 uses
  %.21.lcssa.us = phi ptr [ %.20.us, %.loopexit97.us ], [ %.18277.us, %.loopexit97.us.thread ], [ %i.ua, %.lr.ph248.us ] ; 2 uses
  %i.yh = or disjoint i32 %.0608.lcssa.us, 3
  %i.yi = icmp slt i32 %i.yh, %4
  br i1 %i.yi, label %.lr.ph261.us, label %.preheader95.us

.lr.ph278.split:                                  ; preds = %.lr.ph278
  br i1 %i.qr, label %.lr.ph278.split.split.us, label %.lr.ph278.split.split.preheader

.lr.ph278.split.split.preheader:                  ; preds = %.lr.ph278.split
  %i.yj = add i32 %2, -4
  %i.yk = sub i32 %i.yj, %.1587.lcssa
  %i.yl = and i32 %i.yk, -4
  %i.ym = add i32 %.1587.lcssa, %i.yl
  %i.yn = add i32 %i.ym, 4
  br label %.preheader94

.lr.ph278.split.split.us:                         ; preds = %.lr.ph278.split
  br i1 %i.qu, label %.lr.ph240.us290.us.preheader, label %.loopexit97.us288.preheader

.loopexit97.us288.preheader:                      ; preds = %.lr.ph278.split.split.us
  %i.yo = add i32 %2, -4
  %i.yp = sub i32 %i.yo, %.1587.lcssa
  %i.yq = and i32 %i.yp, -4
  %i.yr = add i32 %.1587.lcssa, %i.yq
  %i.ys = add i32 %i.yr, 4
  br label %.preheader94

.lr.ph240.us290.us.preheader:                     ; preds = %.lr.ph278.split.split.us
  %i.yt = zext nneg i32 %.1587.lcssa to i64
  %i.yu = sext i32 %1 to i64
  %i.yv = sext i32 %2 to i64
  %invariant.op545 = add nsw i64 %i.yv, -3
  %i.yw = add nsw i32 %4, -1
  %xtraiter1236 = and i32 %4, 7                   ; 3 uses
  %i.yx = icmp ult i32 %i.yw, 7
  %unroll_iter1241 = and i32 %4, 2147483640
  %lcmp.mod1238.not = icmp eq i32 %xtraiter1236, 0
  %lcmp.mod1240 = icmp ne i32 %xtraiter1236, 0
  br label %.lr.ph240.us290.us

.lr.ph240.us290.us:                               ; preds = %.lr.ph240.us290.us.preheader, %..loopexit97_crit_edge.us291.us
  %indvars.iv440 = phi i64 [ %i.yt, %.lr.ph240.us290.us.preheader ], [ %indvars.iv.next441, %..loopexit97_crit_edge.us291.us ] ; 2 uses
  %.18277.us282.us = phi ptr [ %.10.lcssa, %.lr.ph240.us290.us.preheader ], [ %.lcssa1168, %..loopexit97_crit_edge.us291.us ] ; 2 uses
  %i.yy = load ptr, ptr %0, align 8, !tbaa !18
  %i.yz = add nsw i64 %indvars.iv440, %i.yu
  %i.za = mul i64 %i.k, %i.yz
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.za
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.zb, i64 %i.qt ; 2 uses
  br i1 %i.yx, label %.epil.preheader, label %.lr.ph240.us290.us.new

.lr.ph240.us290.us.new:                           ; preds = %.lr.ph240.us290.us, %.lr.ph240.us290.us.new
  %.19239.us284.us = phi ptr [ %i.zz, %.lr.ph240.us290.us.new ], [ %.18277.us282.us, %.lr.ph240.us290.us ] ; 9 uses
  %.0624237.us286.us = phi ptr [ %i.aaa, %.lr.ph240.us290.us.new ], [ %i.zc, %.lr.ph240.us290.us ] ; 9 uses
  %niter1242 = phi i32 [ %niter1242.next.7, %.lr.ph240.us290.us.new ], [ 0, %.lr.ph240.us290.us ]
  %i.zd = load <4 x float>, ptr %.0624237.us286.us, align 16, !tbaa !116
  store <4 x float> %i.zd, ptr %.19239.us284.us, align 16, !tbaa !116
  %i.ze = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %.0624237.us286.us, i64 16
  %i.zg = load <4 x float>, ptr %i.zf, align 16, !tbaa !116
  store <4 x float> %i.zg, ptr %i.ze, align 16, !tbaa !116
  %i.zh = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 32
  %i.zi = getelementptr inbounds nuw i8, ptr %.0624237.us286.us, i64 32
  %i.zj = load <4 x float>, ptr %i.zi, align 16, !tbaa !116
  store <4 x float> %i.zj, ptr %i.zh, align 16, !tbaa !116
  %i.zk = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 48
  %i.zl = getelementptr inbounds nuw i8, ptr %.0624237.us286.us, i64 48
  %i.zm = load <4 x float>, ptr %i.zl, align 16, !tbaa !116
  store <4 x float> %i.zm, ptr %i.zk, align 16, !tbaa !116
  %i.zn = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 64
  %i.zo = getelementptr inbounds nuw i8, ptr %.0624237.us286.us, i64 64
  %i.zp = load <4 x float>, ptr %i.zo, align 16, !tbaa !116
  store <4 x float> %i.zp, ptr %i.zn, align 16, !tbaa !116
  %i.zq = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 80
  %i.zr = getelementptr inbounds nuw i8, ptr %.0624237.us286.us, i64 80
  %i.zs = load <4 x float>, ptr %i.zr, align 16, !tbaa !116
  store <4 x float> %i.zs, ptr %i.zq, align 16, !tbaa !116
  %i.zt = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 96
  %i.zu = getelementptr inbounds nuw i8, ptr %.0624237.us286.us, i64 96
  %i.zv = load <4 x float>, ptr %i.zu, align 16, !tbaa !116
  store <4 x float> %i.zv, ptr %i.zt, align 16, !tbaa !116
  %i.zw = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 112
  %i.zx = getelementptr inbounds nuw i8, ptr %.0624237.us286.us, i64 112
  %i.zy = load <4 x float>, ptr %i.zx, align 16, !tbaa !116
  store <4 x float> %i.zy, ptr %i.zw, align 16, !tbaa !116
  %i.zz = getelementptr inbounds nuw i8, ptr %.19239.us284.us, i64 128 ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0624237.us286.us, i64 128 ; 2 uses
  %niter1242.next.7 = add nuw nsw i32 %niter1242, 8 ; 2 uses
  %niter1242.ncmp.7 = icmp eq i32 %niter1242.next.7, %unroll_iter1241
  br i1 %niter1242.ncmp.7, label %..loopexit97_crit_edge.us291.us.unr-lcssa, label %.lr.ph240.us290.us.new, !llvm.loop !197

..loopexit97_crit_edge.us291.us.unr-lcssa:        ; preds = %.lr.ph240.us290.us.new
  br i1 %lcmp.mod1238.not, label %..loopexit97_crit_edge.us291.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit97_crit_edge.us291.us.unr-lcssa, %.lr.ph240.us290.us
  %.19239.us284.us.epil.init = phi ptr [ %.18277.us282.us, %.lr.ph240.us290.us ], [ %i.zz, %..loopexit97_crit_edge.us291.us.unr-lcssa ]
  %.0624237.us286.us.epil.init = phi ptr [ %i.zc, %.lr.ph240.us290.us ], [ %i.aaa, %..loopexit97_crit_edge.us291.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1240)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.19239.us284.us.epil = phi ptr [ %.19239.us284.us.epil.init, %.epil.preheader ], [ %i.aac, %bb.h ] ; 2 uses
  %.0624237.us286.us.epil = phi ptr [ %.0624237.us286.us.epil.init, %.epil.preheader ], [ %i.aad, %bb.h ] ; 2 uses
  %epil.iter1237 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter1237.next, %bb.h ]
  %i.aab = load <4 x float>, ptr %.0624237.us286.us.epil, align 16, !tbaa !116
  store <4 x float> %i.aab, ptr %.19239.us284.us.epil, align 16, !tbaa !116
  %i.aac = getelementptr inbounds nuw i8, ptr %.19239.us284.us.epil, i64 16 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.0624237.us286.us.epil, i64 16
  %epil.iter1237.next = add i32 %epil.iter1237, 1 ; 2 uses
  %epil.iter1237.cmp.not = icmp eq i32 %epil.iter1237.next, %xtraiter1236
  br i1 %epil.iter1237.cmp.not, label %..loopexit97_crit_edge.us291.us, label %bb.h, !llvm.loop !218

..loopexit97_crit_edge.us291.us:                  ; preds = %bb.h, %..loopexit97_crit_edge.us291.us.unr-lcssa
  %.lcssa1168 = phi ptr [ %i.zz, %..loopexit97_crit_edge.us291.us.unr-lcssa ], [ %i.aac, %bb.h ] ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 4 ; 3 uses
  %i.aae = icmp slt i64 %indvars.iv.next441, %invariant.op545
  br i1 %i.aae, label %.lr.ph240.us290.us, label %.preheader94.loopexit353, !llvm.loop !217

bb.i:                                             ; preds = %.lr.ph234, %.loopexit100
  %indvars.iv435 = phi i64 [ %i.aq, %.lr.ph234 ], [ %indvars.iv.next436, %.loopexit100 ] ; 4 uses
  %.10233 = phi ptr [ %.0583.lcssa, %.lr.ph234 ], [ %.17, %.loopexit100 ] ; 9 uses
  switch i32 %i.b, label %.loopexit100 [
    i32 8, label %bb.j
    i32 4, label %bb.k
    i32 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.ak, label %.lr.ph191.preheader, label %.loopexit100

.lr.ph191.preheader:                              ; preds = %bb.j
  %i.aaf = load ptr, ptr %0, align 8, !tbaa !18
  %i.aag = add nsw i64 %indvars.iv435, %i.as
  %i.aah = mul i64 %i.k, %i.aag
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aah
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.aj ; 2 uses
  br i1 %i.av, label %.lr.ph191.epil.preheader, label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %.lr.ph191
  %.11190 = phi ptr [ %i.abg, %.lr.ph191 ], [ %.10233, %.lr.ph191.preheader ] ; 9 uses
  %.0647188 = phi ptr [ %i.abh, %.lr.ph191 ], [ %i.aaj, %.lr.ph191.preheader ] ; 9 uses
  %niter1235 = phi i32 [ %niter1235.next.7, %.lr.ph191 ], [ 0, %.lr.ph191.preheader ]
  %i.aak = load <8 x float>, ptr %.0647188, align 32, !tbaa !116
  store <8 x float> %i.aak, ptr %.11190, align 32, !tbaa !116
  %i.aal = getelementptr inbounds nuw i8, ptr %.11190, i64 32
  %i.aam = getelementptr inbounds nuw i8, ptr %.0647188, i64 32
  %i.aan = load <8 x float>, ptr %i.aam, align 32, !tbaa !116
  store <8 x float> %i.aan, ptr %i.aal, align 32, !tbaa !116
  %i.aao = getelementptr inbounds nuw i8, ptr %.11190, i64 64
  %i.aap = getelementptr inbounds nuw i8, ptr %.0647188, i64 64
  %i.aaq = load <8 x float>, ptr %i.aap, align 32, !tbaa !116
  store <8 x float> %i.aaq, ptr %i.aao, align 32, !tbaa !116
  %i.aar = getelementptr inbounds nuw i8, ptr %.11190, i64 96
  %i.aas = getelementptr inbounds nuw i8, ptr %.0647188, i64 96
  %i.aat = load <8 x float>, ptr %i.aas, align 32, !tbaa !116
  store <8 x float> %i.aat, ptr %i.aar, align 32, !tbaa !116
  %i.aau = getelementptr inbounds nuw i8, ptr %.11190, i64 128
  %i.aav = getelementptr inbounds nuw i8, ptr %.0647188, i64 128
  %i.aaw = load <8 x float>, ptr %i.aav, align 32, !tbaa !116
  store <8 x float> %i.aaw, ptr %i.aau, align 32, !tbaa !116
  %i.aax = getelementptr inbounds nuw i8, ptr %.11190, i64 160
  %i.aay = getelementptr inbounds nuw i8, ptr %.0647188, i64 160
  %i.aaz = load <8 x float>, ptr %i.aay, align 32, !tbaa !116
  store <8 x float> %i.aaz, ptr %i.aax, align 32, !tbaa !116
  %i.aba = getelementptr inbounds nuw i8, ptr %.11190, i64 192
  %i.abb = getelementptr inbounds nuw i8, ptr %.0647188, i64 192
  %i.abc = load <8 x float>, ptr %i.abb, align 32, !tbaa !116
  store <8 x float> %i.abc, ptr %i.aba, align 32, !tbaa !116
  %i.abd = getelementptr inbounds nuw i8, ptr %.11190, i64 224
  %i.abe = getelementptr inbounds nuw i8, ptr %.0647188, i64 224
  %i.abf = load <8 x float>, ptr %i.abe, align 32, !tbaa !116
  store <8 x float> %i.abf, ptr %i.abd, align 32, !tbaa !116
  %i.abg = getelementptr inbounds nuw i8, ptr %.11190, i64 256 ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.0647188, i64 256 ; 2 uses
  %niter1235.next.7 = add nuw nsw i32 %niter1235, 8 ; 2 uses
  %niter1235.ncmp.7 = icmp eq i32 %niter1235.next.7, %unroll_iter1234
  br i1 %niter1235.ncmp.7, label %.loopexit100.loopexit.unr-lcssa, label %.lr.ph191, !llvm.loop !219

bb.k:                                             ; preds = %bb.i
  br i1 %i.ak, label %.lr.ph197.preheader, label %.loopexit100

.lr.ph197.preheader:                              ; preds = %bb.k
  %i.abi = load ptr, ptr %0, align 8, !tbaa !18   ; 2 uses
  %i.abj = add nsw i64 %indvars.iv435, %i.as      ; 2 uses
  %i.abk = add nsw i64 %i.abj, 4
  %i.abl = mul i64 %i.k, %i.abk
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %i.abl
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.am ; 2 uses
  %i.abo = mul i64 %i.k, %i.abj
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %i.abo
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abp, i64 %i.am ; 2 uses
  br i1 %i.au, label %.lr.ph197.epil.preheader, label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %.lr.ph197
  %.13196 = phi ptr [ %i.acm, %.lr.ph197 ], [ %.10233, %.lr.ph197.preheader ] ; 9 uses
  %.0644194 = phi ptr [ %i.aco, %.lr.ph197 ], [ %i.abn, %.lr.ph197.preheader ] ; 5 uses
  %.0645193 = phi ptr [ %i.acn, %.lr.ph197 ], [ %i.abq, %.lr.ph197.preheader ] ; 5 uses
  %niter1228 = phi i32 [ %niter1228.next.3, %.lr.ph197 ], [ 0, %.lr.ph197.preheader ]
  %i.abr = load <4 x float>, ptr %.0645193, align 16, !tbaa !116
  store <4 x float> %i.abr, ptr %.13196, align 16, !tbaa !116
  %i.abs = getelementptr inbounds nuw i8, ptr %.13196, i64 16
  %i.abt = load <4 x float>, ptr %.0644194, align 16, !tbaa !116
  store <4 x float> %i.abt, ptr %i.abs, align 16, !tbaa !116
  %i.abu = getelementptr inbounds nuw i8, ptr %.13196, i64 32
  %i.abv = getelementptr inbounds nuw i8, ptr %.0645193, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %.0644194, i64 16
  %i.abx = load <4 x float>, ptr %i.abv, align 16, !tbaa !116
  store <4 x float> %i.abx, ptr %i.abu, align 16, !tbaa !116
  %i.aby = getelementptr inbounds nuw i8, ptr %.13196, i64 48
  %i.abz = load <4 x float>, ptr %i.abw, align 16, !tbaa !116
  store <4 x float> %i.abz, ptr %i.aby, align 16, !tbaa !116
  %i.aca = getelementptr inbounds nuw i8, ptr %.13196, i64 64
  %i.acb = getelementptr inbounds nuw i8, ptr %.0645193, i64 32
  %i.acc = getelementptr inbounds nuw i8, ptr %.0644194, i64 32
  %i.acd = load <4 x float>, ptr %i.acb, align 16, !tbaa !116
  store <4 x float> %i.acd, ptr %i.aca, align 16, !tbaa !116
  %i.ace = getelementptr inbounds nuw i8, ptr %.13196, i64 80
  %i.acf = load <4 x float>, ptr %i.acc, align 16, !tbaa !116
  store <4 x float> %i.acf, ptr %i.ace, align 16, !tbaa !116
  %i.acg = getelementptr inbounds nuw i8, ptr %.13196, i64 96
  %i.ach = getelementptr inbounds nuw i8, ptr %.0645193, i64 48
  %i.aci = getelementptr inbounds nuw i8, ptr %.0644194, i64 48
end_hunk_1
begin_hunk_2_@_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii:bb.a
  store <16 x float> %i.ml, ptr %i.na, align 1, !tbaa !116
  %i.nb = getelementptr inbounds nuw i8, ptr %.7144, i64 832
  store <16 x float> %i.mm, ptr %i.nb, align 1, !tbaa !116
  %i.nc = getelementptr inbounds nuw i8, ptr %.7144, i64 896
  store <16 x float> %i.mn, ptr %i.nc, align 1, !tbaa !116
  %i.nd = getelementptr inbounds nuw i8, ptr %.7144, i64 960
  store <16 x float> %i.mo, ptr %i.nd, align 1, !tbaa !116
  %i.ne = getelementptr inbounds nuw i8, ptr %.7144, i64 1024 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0695143, i64 64 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.0697142, i64 64 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0699141, i64 64 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.0701140, i64 64 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.0703139, i64 64 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0705138, i64 64 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.0707137, i64 64 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0709136, i64 64 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0711135, i64 64 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0713134, i64 64 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0715133, i64 64 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0717132, i64 64 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0719131, i64 64 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0721130, i64 64 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0759127, i64 64 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.0757128, i64 64 ; 2 uses
  %i.nv = add nuw nsw i32 %.0755129, 16           ; 2 uses
  %i.nw = or disjoint i32 %i.nv, 15
  %i.nx = icmp slt i32 %i.nw, %4
  br i1 %i.nx, label %.lr.ph145, label %.preheader105, !llvm.loop !317

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %.lr.ph182
  %.8181 = phi ptr [ %i.pd, %.lr.ph182 ], [ %.8181.ph, %.lr.ph182.preheader ] ; 17 uses
  %.1696180 = phi ptr [ %i.pe, %.lr.ph182 ], [ %.1696180.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1698179 = phi ptr [ %i.pf, %.lr.ph182 ], [ %.1698179.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1700178 = phi ptr [ %i.pg, %.lr.ph182 ], [ %.1700178.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1702177 = phi ptr [ %i.ph, %.lr.ph182 ], [ %.1702177.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1704176 = phi ptr [ %i.pi, %.lr.ph182 ], [ %.1704176.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1706175 = phi ptr [ %i.pj, %.lr.ph182 ], [ %.1706175.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1708174 = phi ptr [ %i.pk, %.lr.ph182 ], [ %.1708174.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1710173 = phi ptr [ %i.pl, %.lr.ph182 ], [ %.1710173.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1712172 = phi ptr [ %i.pm, %.lr.ph182 ], [ %.1712172.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1714171 = phi ptr [ %i.pn, %.lr.ph182 ], [ %.1714171.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1716170 = phi ptr [ %i.po, %.lr.ph182 ], [ %.1716170.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1718169 = phi ptr [ %i.pp, %.lr.ph182 ], [ %.1718169.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1720168 = phi ptr [ %i.pq, %.lr.ph182 ], [ %.1720168.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1722167 = phi ptr [ %i.pr, %.lr.ph182 ], [ %.1722167.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1756166 = phi i32 [ %i.pu, %.lr.ph182 ], [ %.1756166.ph, %.lr.ph182.preheader ]
  %.1758165 = phi ptr [ %i.pt, %.lr.ph182 ], [ %.1758165.ph, %.lr.ph182.preheader ] ; 2 uses
  %.1760164 = phi ptr [ %i.ps, %.lr.ph182 ], [ %.1760164.ph, %.lr.ph182.preheader ] ; 2 uses
  %i.ny = load float, ptr %.1696180, align 4, !tbaa !68
  store float %i.ny, ptr %.8181, align 4, !tbaa !68
  %i.nz = load float, ptr %.1698179, align 4, !tbaa !68
  %i.oa = getelementptr inbounds nuw i8, ptr %.8181, i64 4
  store float %i.nz, ptr %i.oa, align 4, !tbaa !68
  %i.ob = load float, ptr %.1700178, align 4, !tbaa !68
  %i.oc = getelementptr inbounds nuw i8, ptr %.8181, i64 8
  store float %i.ob, ptr %i.oc, align 4, !tbaa !68
  %i.od = load float, ptr %.1702177, align 4, !tbaa !68
  %i.oe = getelementptr inbounds nuw i8, ptr %.8181, i64 12
  store float %i.od, ptr %i.oe, align 4, !tbaa !68
  %i.of = load float, ptr %.1704176, align 4, !tbaa !68
  %i.og = getelementptr inbounds nuw i8, ptr %.8181, i64 16
  store float %i.of, ptr %i.og, align 4, !tbaa !68
  %i.oh = load float, ptr %.1706175, align 4, !tbaa !68
  %i.oi = getelementptr inbounds nuw i8, ptr %.8181, i64 20
  store float %i.oh, ptr %i.oi, align 4, !tbaa !68
  %i.oj = load float, ptr %.1708174, align 4, !tbaa !68
  %i.ok = getelementptr inbounds nuw i8, ptr %.8181, i64 24
  store float %i.oj, ptr %i.ok, align 4, !tbaa !68
  %i.ol = load float, ptr %.1710173, align 4, !tbaa !68
  %i.om = getelementptr inbounds nuw i8, ptr %.8181, i64 28
  store float %i.ol, ptr %i.om, align 4, !tbaa !68
  %i.on = load float, ptr %.1712172, align 4, !tbaa !68
  %i.oo = getelementptr inbounds nuw i8, ptr %.8181, i64 32
  store float %i.on, ptr %i.oo, align 4, !tbaa !68
  %i.op = load float, ptr %.1714171, align 4, !tbaa !68
  %i.oq = getelementptr inbounds nuw i8, ptr %.8181, i64 36
  store float %i.op, ptr %i.oq, align 4, !tbaa !68
  %i.or = load float, ptr %.1716170, align 4, !tbaa !68
  %i.os = getelementptr inbounds nuw i8, ptr %.8181, i64 40
  store float %i.or, ptr %i.os, align 4, !tbaa !68
  %i.ot = load float, ptr %.1718169, align 4, !tbaa !68
  %i.ou = getelementptr inbounds nuw i8, ptr %.8181, i64 44
  store float %i.ot, ptr %i.ou, align 4, !tbaa !68
  %i.ov = load float, ptr %.1720168, align 4, !tbaa !68
  %i.ow = getelementptr inbounds nuw i8, ptr %.8181, i64 48
  store float %i.ov, ptr %i.ow, align 4, !tbaa !68
  %i.ox = load float, ptr %.1722167, align 4, !tbaa !68
  %i.oy = getelementptr inbounds nuw i8, ptr %.8181, i64 52
  store float %i.ox, ptr %i.oy, align 4, !tbaa !68
  %i.oz = load float, ptr %.1760164, align 4, !tbaa !68
  %i.pa = getelementptr inbounds nuw i8, ptr %.8181, i64 56
  store float %i.oz, ptr %i.pa, align 4, !tbaa !68
  %i.pb = load float, ptr %.1758165, align 4, !tbaa !68
  %i.pc = getelementptr inbounds nuw i8, ptr %.8181, i64 60
  store float %i.pb, ptr %i.pc, align 4, !tbaa !68
  %i.pd = getelementptr inbounds nuw i8, ptr %.8181, i64 64 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.1696180, i64 4
  %i.pf = getelementptr inbounds nuw i8, ptr %.1698179, i64 4
  %i.pg = getelementptr inbounds nuw i8, ptr %.1700178, i64 4
  %i.ph = getelementptr inbounds nuw i8, ptr %.1702177, i64 4
  %i.pi = getelementptr inbounds nuw i8, ptr %.1704176, i64 4
  %i.pj = getelementptr inbounds nuw i8, ptr %.1706175, i64 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.1708174, i64 4
  %i.pl = getelementptr inbounds nuw i8, ptr %.1710173, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.1712172, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %.1714171, i64 4
  %i.po = getelementptr inbounds nuw i8, ptr %.1716170, i64 4
  %i.pp = getelementptr inbounds nuw i8, ptr %.1718169, i64 4
  %i.pq = getelementptr inbounds nuw i8, ptr %.1720168, i64 4
  %i.pr = getelementptr inbounds nuw i8, ptr %.1722167, i64 4
  %i.ps = getelementptr inbounds nuw i8, ptr %.1760164, i64 4
  %i.pt = getelementptr inbounds nuw i8, ptr %.1758165, i64 4
  %i.pu = add nuw nsw i32 %.1756166, 1            ; 2 uses
  %exitcond462.not = icmp eq i32 %i.pu, %4
  br i1 %exitcond462.not, label %.loopexit106, label %.lr.ph182, !llvm.loop !318

.loopexit106.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  br i1 %lcmp.mod1279.not, label %.loopexit106, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit106.loopexit.unr-lcssa, %.lr.ph.preheader
  %.1652112.epil.init = phi ptr [ %.0651185, %.lr.ph.preheader ], [ %i.bx, %.loopexit106.loopexit.unr-lcssa ]
  %.0668111.epil.init = phi ptr [ %i.ba, %.lr.ph.preheader ], [ %i.by, %.loopexit106.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1281)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.1652112.epil = phi ptr [ %i.pw, %.lr.ph.epil ], [ %.1652112.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0668111.epil = phi ptr [ %i.px, %.lr.ph.epil ], [ %.0668111.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter1278 = phi i32 [ %epil.iter1278.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.pv = load <16 x float>, ptr %.0668111.epil, align 64, !tbaa !116
  store <16 x float> %i.pv, ptr %.1652112.epil, align 1, !tbaa !116
  %i.pw = getelementptr inbounds nuw i8, ptr %.1652112.epil, i64 64 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.0668111.epil, i64 64
  %epil.iter1278.next = add i32 %epil.iter1278, 1 ; 2 uses
  %epil.iter1278.cmp.not = icmp eq i32 %epil.iter1278.next, %xtraiter1277
  br i1 %epil.iter1278.cmp.not, label %.loopexit106, label %.lr.ph.epil, !llvm.loop !319

.loopexit106.loopexit1245.unr-lcssa.a:            ; preds = %.lr.ph117
  br i1 %lcmp.mod1272.not, label %.loopexit106, label %.lr.ph117.epil.preheader

.lr.ph117.epil.preheader:                         ; preds = %.loopexit106.loopexit1245.unr-lcssa.a, %.lr.ph117.preheader
  %.3116.epil.init = phi ptr [ %.0651185, %.lr.ph117.preheader ], [ %i.dd, %.loopexit106.loopexit1245.unr-lcssa.a ]
  %.0670115.epil.init = phi ptr [ %i.ch, %.lr.ph117.preheader ], [ %i.de, %.loopexit106.loopexit1245.unr-lcssa.a ]
  %.0671114.epil.init = phi ptr [ %i.ce, %.lr.ph117.preheader ], [ %i.df, %.loopexit106.loopexit1245.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod1274)
  br label %.lr.ph117.epil

.lr.ph117.epil:                                   ; preds = %.lr.ph117.epil, %.lr.ph117.epil.preheader
  %.3116.epil = phi ptr [ %i.qb, %.lr.ph117.epil ], [ %.3116.epil.init, %.lr.ph117.epil.preheader ] ; 3 uses
  %.0670115.epil = phi ptr [ %i.qc, %.lr.ph117.epil ], [ %.0670115.epil.init, %.lr.ph117.epil.preheader ] ; 2 uses
  %.0671114.epil = phi ptr [ %i.qd, %.lr.ph117.epil ], [ %.0671114.epil.init, %.lr.ph117.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph117.epil ], [ 0, %.lr.ph117.epil.preheader ]
  %i.py = load <8 x float>, ptr %.0670115.epil, align 32, !tbaa !116
  store <8 x float> %i.py, ptr %.3116.epil, align 1, !tbaa !116
  %i.pz = getelementptr inbounds nuw i8, ptr %.3116.epil, i64 32
  %i.qa = load <8 x float>, ptr %.0671114.epil, align 32, !tbaa !116
  store <8 x float> %i.qa, ptr %i.pz, align 1, !tbaa !116
  %i.qb = getelementptr inbounds nuw i8, ptr %.3116.epil, i64 64 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0670115.epil, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %.0671114.epil, i64 32
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1271
  br i1 %epil.iter.cmp.not, label %.loopexit106, label %.lr.ph117.epil, !llvm.loop !320

.loopexit106.loopexit1246.unr-lcssa:              ; preds = %.lr.ph125
  br i1 %lcmp.mod.not, label %.loopexit106, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %.loopexit106.loopexit1246.unr-lcssa, %.lr.ph125.preheader
  %.5124.epil.init = phi ptr [ %.0651185, %.lr.ph125.preheader ], [ %i.eq, %.loopexit106.loopexit1246.unr-lcssa ] ; 5 uses
  %.0673123.epil.init = phi ptr [ %i.dw, %.lr.ph125.preheader ], [ %i.er, %.loopexit106.loopexit1246.unr-lcssa ]
  %.0674122.epil.init = phi ptr [ %i.dt, %.lr.ph125.preheader ], [ %i.es, %.loopexit106.loopexit1246.unr-lcssa ]
  %.0675121.epil.init = phi ptr [ %i.dp, %.lr.ph125.preheader ], [ %i.et, %.loopexit106.loopexit1246.unr-lcssa ]
  %.0693120.epil.init = phi ptr [ %i.dl, %.lr.ph125.preheader ], [ %i.eu, %.loopexit106.loopexit1246.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1270)
  %i.qe = load <4 x float>, ptr %.0673123.epil.init, align 16, !tbaa !116
  store <4 x float> %i.qe, ptr %.5124.epil.init, align 16, !tbaa !116
  %i.qf = getelementptr inbounds nuw i8, ptr %.5124.epil.init, i64 16
  %i.qg = load <4 x float>, ptr %.0674122.epil.init, align 16, !tbaa !116
  store <4 x float> %i.qg, ptr %i.qf, align 16, !tbaa !116
  %i.qh = getelementptr inbounds nuw i8, ptr %.5124.epil.init, i64 32
  %i.qi = load <4 x float>, ptr %.0675121.epil.init, align 16, !tbaa !116
  store <4 x float> %i.qi, ptr %i.qh, align 16, !tbaa !116
  %i.qj = getelementptr inbounds nuw i8, ptr %.5124.epil.init, i64 48
  %i.qk = load <4 x float>, ptr %.0693120.epil.init, align 16, !tbaa !116
  store <4 x float> %i.qk, ptr %i.qj, align 16, !tbaa !116
  %i.ql = getelementptr inbounds nuw i8, ptr %.5124.epil.init, i64 64
  br label %.loopexit106

.loopexit106:                                     ; preds = %.lr.ph182, %.lr.ph125.epil.preheader, %.loopexit106.loopexit1246.unr-lcssa, %.loopexit106.loopexit1245.unr-lcssa.a, %.lr.ph117.epil, %.loopexit106.loopexit.unr-lcssa, %.lr.ph.epil, %middle.block, %vec.epilog.middle.block, %bb.b, %.split, %bb.c, %bb.d, %bb.e, %.preheader105
  %.9 = phi ptr [ %.0651185, %.split ], [ %.7.lcssa, %.preheader105 ], [ %i.pw, %.lr.ph.epil ], [ %.0651185, %bb.b ], [ %.0651185, %bb.e ], [ %i.qb, %.lr.ph117.epil ], [ %.0651185, %bb.d ], [ %.0651185, %bb.c ], [ %i.ql, %.lr.ph125.epil.preheader ], [ %i.ir, %vec.epilog.middle.block ], [ %i.hu, %middle.block ], [ %i.bx, %.loopexit106.loopexit.unr-lcssa ], [ %i.dd, %.loopexit106.loopexit1245.unr-lcssa.a ], [ %i.eq, %.loopexit106.loopexit1246.unr-lcssa ], [ %i.pd, %.lr.ph182 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.qm = or disjoint i64 %indvars.iv.next, 15
  %i.qn = icmp samesign ult i64 %i.qm, %i.w
  br i1 %i.qn, label %bb.b, label %.preheader104.loopexit, !llvm.loop !321

.preheader98.loopexit:                            ; preds = %.loopexit100
  %i.qo = trunc nuw nsw i64 %indvars.iv.next468 to i32
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98.loopexit, %.preheader104
  %.1655.lcssa = phi i32 [ %.0654.lcssa, %.preheader104 ], [ %i.qo, %.preheader98.loopexit ] ; 8 uses
  %.10.lcssa = phi ptr [ %.0651.lcssa, %.preheader104 ], [ %.18, %.preheader98.loopexit ] ; 5 uses
  %i.qp = or disjoint i32 %.1655.lcssa, 3
  %i.qq = icmp slt i32 %i.qp, %2
  br i1 %i.qq, label %.lr.ph300, label %.preheader94

.lr.ph300:                                        ; preds = %.preheader98
  %i.qr = icmp eq i32 %i.b, 4                     ; 2 uses
  %i.qs = shl nsw i32 %3, 2
  %i.qt = sext i32 %i.qs to i64                   ; 2 uses
  %i.qu = icmp sgt i32 %4, 0                      ; 2 uses
  %i.qv = icmp eq i32 %i.b, 1
  %i.qw = sext i32 %3 to i64                      ; 8 uses
  %i.qx = icmp sgt i32 %4, 7
  br i1 %i.qv, label %.lr.ph300.split.us.preheader, label %.lr.ph300.split

.lr.ph300.split.us.preheader:                     ; preds = %.lr.ph300
  %i.qy = and i32 %4, -8
  %i.qz = zext nneg i32 %.1655.lcssa to i64
  %i.ra = sext i32 %1 to i64
  %i.rb = sext i32 %2 to i64
  %invariant.op588.a = add nsw i64 %i.rb, -3
  %i.rc = add i32 %4, -1
  %xtraiter1305 = and i32 %4, 7                   ; 3 uses
  %i.rd = icmp ult i32 %i.rc, 7
  %unroll_iter1310 = and i32 %4, 2147483640
  %lcmp.mod1307.not = icmp eq i32 %xtraiter1305, 0
  %lcmp.mod1309 = icmp ne i32 %xtraiter1305, 0
  br label %.lr.ph300.split.us

.lr.ph300.split.us:                               ; preds = %.lr.ph300.split.us.preheader, %.loopexit.us
  %indvars.iv477 = phi i64 [ %i.qz, %.lr.ph300.split.us.preheader ], [ %indvars.iv.next478, %.loopexit.us ] ; 2 uses
  %.19299.us = phi ptr [ %.10.lcssa, %.lr.ph300.split.us.preheader ], [ %.24.lcssa.us, %.loopexit.us ] ; 4 uses
  %.pre489 = load ptr, ptr %0, align 8, !tbaa !18 ; 5 uses
  %i.re = add nsw i64 %indvars.iv477, %i.ra       ; 7 uses
  %i.rf = mul i64 %i.k, %i.re                     ; 2 uses
  br i1 %i.qr, label %bb.g, label %.loopexit97.us

bb.g:                                             ; preds = %.lr.ph300.split.us
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.pre489, i64 %i.rf ; 2 uses
  br i1 %i.qu, label %.lr.ph262.us.preheader, label %.loopexit97.us.thread

.loopexit97.us.thread:                            ; preds = %bb.g
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.qw
  %i.ri = add nsw i64 %i.re, 1
  %i.rj = mul i64 %i.k, %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.pre489, i64 %i.rj
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.rk, i64 %i.qw
  %i.rm = add nsw i64 %i.re, 2
  %i.rn = mul i64 %i.k, %i.rm
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.pre489, i64 %i.rn
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.qw
  %i.rq = add nsw i64 %i.re, 3
  %i.rr = mul i64 %i.k, %i.rq
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.pre489, i64 %i.rr
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.qw
  br label %.preheader96.us

.lr.ph262.us.preheader:                           ; preds = %bb.g
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.qt ; 2 uses
  br i1 %i.rd, label %.lr.ph262.us.epil.preheader, label %.lr.ph262.us

.lr.ph262.us:                                     ; preds = %.lr.ph262.us.preheader, %.lr.ph262.us
  %.20261.us = phi ptr [ %i.sr, %.lr.ph262.us ], [ %.19299.us, %.lr.ph262.us.preheader ] ; 9 uses
  %.0692259.us = phi ptr [ %i.ss, %.lr.ph262.us ], [ %i.ru, %.lr.ph262.us.preheader ] ; 9 uses
  %niter1311 = phi i32 [ %niter1311.next.7, %.lr.ph262.us ], [ 0, %.lr.ph262.us.preheader ]
  %i.rv = load <4 x float>, ptr %.0692259.us, align 16, !tbaa !116
  store <4 x float> %i.rv, ptr %.20261.us, align 16, !tbaa !116
  %i.rw = getelementptr inbounds nuw i8, ptr %.20261.us, i64 16
  %i.rx = getelementptr inbounds nuw i8, ptr %.0692259.us, i64 16
  %i.ry = load <4 x float>, ptr %i.rx, align 16, !tbaa !116
  store <4 x float> %i.ry, ptr %i.rw, align 16, !tbaa !116
  %i.rz = getelementptr inbounds nuw i8, ptr %.20261.us, i64 32
  %i.sa = getelementptr inbounds nuw i8, ptr %.0692259.us, i64 32
  %i.sb = load <4 x float>, ptr %i.sa, align 16, !tbaa !116
  store <4 x float> %i.sb, ptr %i.rz, align 16, !tbaa !116
  %i.sc = getelementptr inbounds nuw i8, ptr %.20261.us, i64 48
  %i.sd = getelementptr inbounds nuw i8, ptr %.0692259.us, i64 48
  %i.se = load <4 x float>, ptr %i.sd, align 16, !tbaa !116
  store <4 x float> %i.se, ptr %i.sc, align 16, !tbaa !116
  %i.sf = getelementptr inbounds nuw i8, ptr %.20261.us, i64 64
  %i.sg = getelementptr inbounds nuw i8, ptr %.0692259.us, i64 64
  %i.sh = load <4 x float>, ptr %i.sg, align 16, !tbaa !116
  store <4 x float> %i.sh, ptr %i.sf, align 16, !tbaa !116
  %i.si = getelementptr inbounds nuw i8, ptr %.20261.us, i64 80
  %i.sj = getelementptr inbounds nuw i8, ptr %.0692259.us, i64 80
  %i.sk = load <4 x float>, ptr %i.sj, align 16, !tbaa !116
  store <4 x float> %i.sk, ptr %i.si, align 16, !tbaa !116
  %i.sl = getelementptr inbounds nuw i8, ptr %.20261.us, i64 96
  %i.sm = getelementptr inbounds nuw i8, ptr %.0692259.us, i64 96
  %i.sn = load <4 x float>, ptr %i.sm, align 16, !tbaa !116
  store <4 x float> %i.sn, ptr %i.sl, align 16, !tbaa !116
  %i.so = getelementptr inbounds nuw i8, ptr %.20261.us, i64 112
  %i.sp = getelementptr inbounds nuw i8, ptr %.0692259.us, i64 112
  %i.sq = load <4 x float>, ptr %i.sp, align 16, !tbaa !116
  store <4 x float> %i.sq, ptr %i.so, align 16, !tbaa !116
  %i.sr = getelementptr inbounds nuw i8, ptr %.20261.us, i64 128 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.0692259.us, i64 128 ; 2 uses
  %niter1311.next.7 = add nuw nsw i32 %niter1311, 8 ; 2 uses
  %niter1311.ncmp.7 = icmp eq i32 %niter1311.next.7, %unroll_iter1310
  br i1 %niter1311.ncmp.7, label %.loopexit97.us.loopexit.unr-lcssa, label %.lr.ph262.us, !llvm.loop !322

.loopexit97.us.loopexit.unr-lcssa:                ; preds = %.lr.ph262.us
  br i1 %lcmp.mod1307.not, label %.loopexit97.us.loopexit, label %.lr.ph262.us.epil.preheader

.lr.ph262.us.epil.preheader:                      ; preds = %.loopexit97.us.loopexit.unr-lcssa, %.lr.ph262.us.preheader
  %.20261.us.epil.init = phi ptr [ %.19299.us, %.lr.ph262.us.preheader ], [ %i.sr, %.loopexit97.us.loopexit.unr-lcssa ]
  %.0692259.us.epil.init = phi ptr [ %i.ru, %.lr.ph262.us.preheader ], [ %i.ss, %.loopexit97.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1309)
  br label %.lr.ph262.us.epil

.lr.ph262.us.epil:                                ; preds = %.lr.ph262.us.epil, %.lr.ph262.us.epil.preheader
  %.20261.us.epil = phi ptr [ %i.su, %.lr.ph262.us.epil ], [ %.20261.us.epil.init, %.lr.ph262.us.epil.preheader ] ; 2 uses
  %.0692259.us.epil = phi ptr [ %i.sv, %.lr.ph262.us.epil ], [ %.0692259.us.epil.init, %.lr.ph262.us.epil.preheader ] ; 2 uses
  %epil.iter1306 = phi i32 [ %epil.iter1306.next, %.lr.ph262.us.epil ], [ 0, %.lr.ph262.us.epil.preheader ]
  %i.st = load <4 x float>, ptr %.0692259.us.epil, align 16, !tbaa !116
  store <4 x float> %i.st, ptr %.20261.us.epil, align 16, !tbaa !116
  %i.su = getelementptr inbounds nuw i8, ptr %.20261.us.epil, i64 16 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.0692259.us.epil, i64 16
  %epil.iter1306.next = add i32 %epil.iter1306, 1 ; 2 uses
  %epil.iter1306.cmp.not = icmp eq i32 %epil.iter1306.next, %xtraiter1305
  br i1 %epil.iter1306.cmp.not, label %.loopexit97.us.loopexit, label %.lr.ph262.us.epil, !llvm.loop !323

.loopexit97.us.loopexit:                          ; preds = %.lr.ph262.us.epil, %.loopexit97.us.loopexit.unr-lcssa
  %.lcssa1207 = phi ptr [ %i.sr, %.loopexit97.us.loopexit.unr-lcssa ], [ %i.su, %.lr.ph262.us.epil ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.loopexit97.us

.loopexit97.us:                                   ; preds = %.lr.ph300.split.us, %.loopexit97.us.loopexit
  %i.sw = phi ptr [ %.pre, %.loopexit97.us.loopexit ], [ %.pre489, %.lr.ph300.split.us ] ; 4 uses
  %.21.us = phi ptr [ %.lcssa1207, %.loopexit97.us.loopexit ], [ %.19299.us, %.lr.ph300.split.us ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.rf
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.qw ; 2 uses
  %i.sz = add nsw i64 %i.re, 1
  %i.ta = mul i64 %i.k, %i.sz
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.ta
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.qw ; 2 uses
  %i.td = add nsw i64 %i.re, 2
  %i.te = mul i64 %i.k, %i.td
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.te
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.qw ; 2 uses
  %i.th = add nsw i64 %i.re, 3
  %i.ti = mul i64 %i.k, %i.th
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.ti
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.qw ; 2 uses
  br i1 %i.qx, label %.lr.ph270.us, label %.preheader96.us

.lr.ph270.us:                                     ; preds = %.loopexit97.us, %.lr.ph270.us
  %.22269.us = phi ptr [ %i.ua, %.lr.ph270.us ], [ %.21.us, %.loopexit97.us ] ; 5 uses
  %.0676268.us = phi i32 [ %i.uf, %.lr.ph270.us ], [ 0, %.loopexit97.us ]
  %.0679267.us = phi ptr [ %i.ue, %.lr.ph270.us ], [ %i.tk, %.loopexit97.us ] ; 2 uses
  %.0682266.us = phi ptr [ %i.ud, %.lr.ph270.us ], [ %i.tg, %.loopexit97.us ] ; 2 uses
  %.0685265.us = phi ptr [ %i.uc, %.lr.ph270.us ], [ %i.tc, %.loopexit97.us ] ; 2 uses
  %.0688264.us = phi ptr [ %i.ub, %.lr.ph270.us ], [ %i.sy, %.loopexit97.us ] ; 2 uses
  %i.tl = load <8 x float>, ptr %.0688264.us, align 1, !tbaa !116 ; 2 uses
  %i.tm = load <8 x float>, ptr %.0685265.us, align 1, !tbaa !116 ; 2 uses
  %i.tn = load <8 x float>, ptr %.0682266.us, align 1, !tbaa !116 ; 2 uses
  %i.to = load <8 x float>, ptr %.0679267.us, align 1, !tbaa !116 ; 2 uses
  %i.tp = shufflevector <8 x float> %i.tl, <8 x float> %i.tm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.tq = shufflevector <8 x float> %i.tl, <8 x float> %i.tm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.tr = shufflevector <8 x float> %i.tn, <8 x float> %i.to, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ts = shufflevector <8 x float> %i.tn, <8 x float> %i.to, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.tt = shufflevector <8 x float> %i.tp, <8 x float> %i.tr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.tu = shufflevector <8 x float> %i.tq, <8 x float> %i.ts, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.tv = shufflevector <8 x float> %i.tp, <8 x float> %i.tr, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.tw = shufflevector <8 x float> %i.tq, <8 x float> %i.ts, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.tt, ptr %.22269.us, align 1, !tbaa !116
  %i.tx = getelementptr inbounds nuw i8, ptr %.22269.us, i64 32
  store <8 x float> %i.tu, ptr %i.tx, align 1, !tbaa !116
  %i.ty = getelementptr inbounds nuw i8, ptr %.22269.us, i64 64
  store <8 x float> %i.tv, ptr %i.ty, align 1, !tbaa !116
  %i.tz = getelementptr inbounds nuw i8, ptr %.22269.us, i64 96
  store <8 x float> %i.tw, ptr %i.tz, align 1, !tbaa !116
  %i.ua = getelementptr inbounds nuw i8, ptr %.22269.us, i64 128 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.0688264.us, i64 32 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.0685265.us, i64 32 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.0682266.us, i64 32 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.0679267.us, i64 32 ; 2 uses
  %i.uf = add nuw nsw i32 %.0676268.us, 8         ; 2 uses
  %i.ug = or disjoint i32 %i.uf, 7
  %i.uh = icmp slt i32 %i.ug, %4
  br i1 %i.uh, label %.lr.ph270.us, label %.preheader96.us, !llvm.loop !324

.lr.ph283.us:                                     ; preds = %.preheader96.us, %.lr.ph283.us
  %.23282.us = phi ptr [ %i.ux, %.lr.ph283.us ], [ %.22.lcssa.us, %.preheader96.us ] ; 5 uses
  %.1677281.us = phi i32 [ %i.vc, %.lr.ph283.us ], [ %.0676.lcssa.us, %.preheader96.us ]
  %.1680280.us = phi ptr [ %i.vb, %.lr.ph283.us ], [ %.0679.lcssa.us, %.preheader96.us ] ; 2 uses
  %.1683279.us = phi ptr [ %i.va, %.lr.ph283.us ], [ %.0682.lcssa.us, %.preheader96.us ] ; 2 uses
  %.1686278.us = phi ptr [ %i.uz, %.lr.ph283.us ], [ %.0685.lcssa.us, %.preheader96.us ] ; 2 uses
  %.1689277.us = phi ptr [ %i.uy, %.lr.ph283.us ], [ %.0688.lcssa.us, %.preheader96.us ] ; 2 uses
  %i.ui = load <4 x float>, ptr %.1689277.us, align 1, !tbaa !116 ; 2 uses
  %i.uj = load <4 x float>, ptr %.1686278.us, align 1, !tbaa !116 ; 2 uses
  %i.uk = load <4 x float>, ptr %.1683279.us, align 1, !tbaa !116 ; 2 uses
  %i.ul = load <4 x float>, ptr %.1680280.us, align 1, !tbaa !116 ; 2 uses
  %i.um = shufflevector <4 x float> %i.ui, <4 x float> %i.uj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.un = shufflevector <4 x float> %i.uk, <4 x float> %i.ul, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.uo = shufflevector <4 x float> %i.ui, <4 x float> %i.uj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.up = shufflevector <4 x float> %i.uk, <4 x float> %i.ul, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.uq = shufflevector <4 x float> %i.um, <4 x float> %i.un, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ur = shufflevector <4 x float> %i.un, <4 x float> %i.um, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.us = shufflevector <4 x float> %i.uo, <4 x float> %i.up, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
end_hunk_2
begin_hunk_3_@_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %.1686.lcssa.us = phi ptr [ %.0685.lcssa.us, %.preheader96.us ], [ %i.uz, %.lr.ph283.us ] ; 8 uses
  %.1683.lcssa.us = phi ptr [ %.0682.lcssa.us, %.preheader96.us ], [ %i.va, %.lr.ph283.us ] ; 8 uses
  %.1680.lcssa.us = phi ptr [ %.0679.lcssa.us, %.preheader96.us ], [ %i.vb, %.lr.ph283.us ] ; 8 uses
  %.1677.lcssa.us = phi i32 [ %.0676.lcssa.us, %.preheader96.us ], [ %i.vc, %.lr.ph283.us ] ; 7 uses
  %.23.lcssa.us = phi ptr [ %.22.lcssa.us, %.preheader96.us ], [ %i.ux, %.lr.ph283.us ] ; 12 uses
  %i.we = icmp slt i32 %.1677.lcssa.us, %4
  br i1 %i.we, label %iter.check1071, label %.loopexit.us

iter.check1071:                                   ; preds = %.preheader95.us
  %i.wf = xor i32 %.1677.lcssa.us, -1
  %i.wg = add i32 %4, %i.wf                       ; 3 uses
  %i.wh = zext i32 %i.wg to i64
  %i.wi = add nuw nsw i64 %i.wh, 1                ; 5 uses
  %min.iters.check1044 = icmp ult i32 %i.wg, 3
  br i1 %min.iters.check1044, label %.lr.ph296.us.preheader, label %vector.memcheck1018

vector.memcheck1018:                              ; preds = %iter.check1071
  %scevgep1019.a = getelementptr i8, ptr %.23.lcssa.us, i64 16
  %i.wj = xor i32 %.1677.lcssa.us, -1
  %i.wk = add i32 %4, %i.wj
  %i.wl = zext i32 %i.wk to i64                   ; 2 uses
  %i.wm = shl nuw nsw i64 %i.wl, 4
  %scevgep1020.a = getelementptr i8, ptr %scevgep1019.a, i64 %i.wm ; 4 uses
  %scevgep1021.a = getelementptr i8, ptr %.1680.lcssa.us, i64 4
  %i.wn = shl nuw nsw i64 %i.wl, 2                ; 4 uses
  %scevgep1022.a = getelementptr i8, ptr %scevgep1021.a, i64 %i.wn
  %scevgep1023.a = getelementptr i8, ptr %.1683.lcssa.us, i64 4
  %scevgep1024.a = getelementptr i8, ptr %scevgep1023.a, i64 %i.wn
  %scevgep1025.a = getelementptr i8, ptr %.1686.lcssa.us, i64 4
  %scevgep1026.a = getelementptr i8, ptr %scevgep1025.a, i64 %i.wn
  %scevgep1027.a = getelementptr i8, ptr %.1689.lcssa.us, i64 4
  %scevgep1028 = getelementptr i8, ptr %scevgep1027.a, i64 %i.wn
  %bound01029 = icmp ult ptr %.23.lcssa.us, %scevgep1022.a
  %bound11030 = icmp ult ptr %.1680.lcssa.us, %scevgep1020.a
  %found.conflict1031 = and i1 %bound01029, %bound11030
  %bound01032 = icmp ult ptr %.23.lcssa.us, %scevgep1024.a
  %bound11033 = icmp ult ptr %.1683.lcssa.us, %scevgep1020.a
  %found.conflict1034 = and i1 %bound01032, %bound11033
  %conflict.rdx1035 = or i1 %found.conflict1031, %found.conflict1034
  %bound01036 = icmp ult ptr %.23.lcssa.us, %scevgep1026.a
  %bound11037 = icmp ult ptr %.1686.lcssa.us, %scevgep1020.a
  %found.conflict1038 = and i1 %bound01036, %bound11037
  %conflict.rdx1039 = or i1 %conflict.rdx1035, %found.conflict1038
  %bound01040 = icmp ult ptr %.23.lcssa.us, %scevgep1028
  %bound11041 = icmp ult ptr %.1689.lcssa.us, %scevgep1020.a
  %found.conflict1042 = and i1 %bound01040, %bound11041
  %conflict.rdx1043 = or i1 %conflict.rdx1039, %found.conflict1042
  br i1 %conflict.rdx1043, label %.lr.ph296.us.preheader, label %vector.main.loop.iter.check1045

vector.main.loop.iter.check1045:                  ; preds = %vector.memcheck1018
  %min.iters.check1046 = icmp ult i32 %i.wg, 15
  br i1 %min.iters.check1046, label %vec.epilog.ph1075, label %vector.ph1047

vector.ph1047:                                    ; preds = %vector.main.loop.iter.check1045
  %i.wo = and i64 %i.wi, 12
  %n.vec1048 = and i64 %i.wi, 8589934576          ; 6 uses
  %i.wp = shl nuw nsw i64 %n.vec1048, 4
  %i.wq = getelementptr i8, ptr %.23.lcssa.us, i64 %i.wp ; 2 uses
  %i.wr = trunc i64 %n.vec1048 to i32
  %i.ws = add i32 %.1677.lcssa.us, %i.wr
  %i.wt = shl nuw nsw i64 %n.vec1048, 2           ; 4 uses
  %i.wu = getelementptr i8, ptr %.1680.lcssa.us, i64 %i.wt
  %i.wv = getelementptr i8, ptr %.1683.lcssa.us, i64 %i.wt
  %i.ww = getelementptr i8, ptr %.1686.lcssa.us, i64 %i.wt
  %i.wx = getelementptr i8, ptr %.1689.lcssa.us, i64 %i.wt
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %vector.ph1047
  %index1050 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1061, %vector.body1049 ] ; 3 uses
  %i.wy = shl i64 %index1050, 4
  %next.gep1051.a = getelementptr i8, ptr %.23.lcssa.us, i64 %i.wy
  %i.wz = shl i64 %index1050, 2                   ; 4 uses
  %next.gep1052.a = getelementptr i8, ptr %.1680.lcssa.us, i64 %i.wz
  %next.gep1053.a = getelementptr i8, ptr %.1683.lcssa.us, i64 %i.wz
  %next.gep1054.a = getelementptr i8, ptr %.1686.lcssa.us, i64 %i.wz
  %next.gep1055 = getelementptr i8, ptr %.1689.lcssa.us, i64 %i.wz
  %wide.load1056.a = load <16 x float>, ptr %next.gep1055, align 4, !tbaa !68, !alias.scope !327
  %wide.load1057.a = load <16 x float>, ptr %next.gep1054.a, align 4, !tbaa !68, !alias.scope !330
  %wide.load1058.a = load <16 x float>, ptr %next.gep1053.a, align 4, !tbaa !68, !alias.scope !332
  %wide.load1059 = load <16 x float>, ptr %next.gep1052.a, align 4, !tbaa !68, !alias.scope !334
  %i.xa = shufflevector <16 x float> %wide.load1056.a, <16 x float> %wide.load1057.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.xb = shufflevector <16 x float> %wide.load1058.a, <16 x float> %wide.load1059, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1060 = shufflevector <32 x float> %i.xa, <32 x float> %i.xb, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec1060, ptr %next.gep1051.a, align 4, !tbaa !68, !alias.scope !336, !noalias !338
  %index.next1061 = add nuw i64 %index1050, 16    ; 2 uses
  %i.xc = icmp eq i64 %index.next1061, %n.vec1048
  br i1 %i.xc, label %middle.block1062, label %vector.body1049, !llvm.loop !339

middle.block1062:                                 ; preds = %vector.body1049
  %cmp.n1063 = icmp eq i64 %i.wi, %n.vec1048
  br i1 %cmp.n1063, label %.loopexit.us, label %vec.epilog.iter.check1073

vec.epilog.iter.check1073:                        ; preds = %middle.block1062
  %min.epilog.iters.check1074 = icmp eq i64 %i.wo, 0
  br i1 %min.epilog.iters.check1074, label %.lr.ph296.us.preheader, label %vec.epilog.ph1075, !prof !215

vec.epilog.ph1075:                                ; preds = %vector.main.loop.iter.check1045, %vec.epilog.iter.check1073
  %vec.epilog.resume.val1064 = phi i64 [ %n.vec1048, %vec.epilog.iter.check1073 ], [ 0, %vector.main.loop.iter.check1045 ]
  %n.vec1076 = and i64 %i.wi, 8589934588          ; 5 uses
  %i.xd = shl nuw nsw i64 %n.vec1076, 4
  %i.xe = getelementptr i8, ptr %.23.lcssa.us, i64 %i.xd ; 2 uses
  %i.xf = trunc i64 %n.vec1076 to i32
  %i.xg = add i32 %.1677.lcssa.us, %i.xf
  %i.xh = shl nuw nsw i64 %n.vec1076, 2           ; 4 uses
  %i.xi = getelementptr i8, ptr %.1680.lcssa.us, i64 %i.xh
  %i.xj = getelementptr i8, ptr %.1683.lcssa.us, i64 %i.xh
  %i.xk = getelementptr i8, ptr %.1686.lcssa.us, i64 %i.xh
  %i.xl = getelementptr i8, ptr %.1689.lcssa.us, i64 %i.xh
  br label %vec.epilog.vector.body1077

vec.epilog.vector.body1077:                       ; preds = %vec.epilog.vector.body1077, %vec.epilog.ph1075
  %index1078 = phi i64 [ %vec.epilog.resume.val1064, %vec.epilog.ph1075 ], [ %index.next1089, %vec.epilog.vector.body1077 ] ; 3 uses
  %i.xm = shl i64 %index1078, 4
  %next.gep1079.a = getelementptr i8, ptr %.23.lcssa.us, i64 %i.xm
  %i.xn = shl i64 %index1078, 2                   ; 4 uses
  %next.gep1080.a = getelementptr i8, ptr %.1680.lcssa.us, i64 %i.xn
  %next.gep1081.a = getelementptr i8, ptr %.1683.lcssa.us, i64 %i.xn
  %next.gep1082.a = getelementptr i8, ptr %.1686.lcssa.us, i64 %i.xn
  %next.gep1083 = getelementptr i8, ptr %.1689.lcssa.us, i64 %i.xn
  %wide.load1084.a = load <4 x float>, ptr %next.gep1083, align 4, !tbaa !68, !alias.scope !327
  %wide.load1085.a = load <4 x float>, ptr %next.gep1082.a, align 4, !tbaa !68, !alias.scope !330
  %wide.load1086.a = load <4 x float>, ptr %next.gep1081.a, align 4, !tbaa !68, !alias.scope !332
  %wide.load1087 = load <4 x float>, ptr %next.gep1080.a, align 4, !tbaa !68, !alias.scope !334
  %i.xo = shufflevector <4 x float> %wide.load1084.a, <4 x float> %wide.load1085.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xp = shufflevector <4 x float> %wide.load1086.a, <4 x float> %wide.load1087, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1088 = shufflevector <8 x float> %i.xo, <8 x float> %i.xp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec1088, ptr %next.gep1079.a, align 4, !tbaa !68, !alias.scope !336, !noalias !338
  %index.next1089 = add nuw i64 %index1078, 4     ; 2 uses
  %i.xq = icmp eq i64 %index.next1089, %n.vec1076
  br i1 %i.xq, label %vec.epilog.middle.block1090, label %vec.epilog.vector.body1077, !llvm.loop !340

vec.epilog.middle.block1090:                      ; preds = %vec.epilog.vector.body1077
  %cmp.n1091 = icmp eq i64 %i.wi, %n.vec1076
  br i1 %cmp.n1091, label %.loopexit.us, label %.lr.ph296.us.preheader

.lr.ph296.us.preheader:                           ; preds = %vector.memcheck1018, %iter.check1071, %vec.epilog.iter.check1073, %vec.epilog.middle.block1090
  %.24295.us.ph = phi ptr [ %.23.lcssa.us, %iter.check1071 ], [ %.23.lcssa.us, %vector.memcheck1018 ], [ %i.wq, %vec.epilog.iter.check1073 ], [ %i.xe, %vec.epilog.middle.block1090 ] ; 6 uses
  %.2678294.us.ph = phi i32 [ %.1677.lcssa.us, %iter.check1071 ], [ %.1677.lcssa.us, %vector.memcheck1018 ], [ %i.ws, %vec.epilog.iter.check1073 ], [ %i.xg, %vec.epilog.middle.block1090 ] ; 4 uses
  %.2681293.us.ph = phi ptr [ %.1680.lcssa.us, %iter.check1071 ], [ %.1680.lcssa.us, %vector.memcheck1018 ], [ %i.wu, %vec.epilog.iter.check1073 ], [ %i.xi, %vec.epilog.middle.block1090 ] ; 3 uses
  %.2684292.us.ph = phi ptr [ %.1683.lcssa.us, %iter.check1071 ], [ %.1683.lcssa.us, %vector.memcheck1018 ], [ %i.wv, %vec.epilog.iter.check1073 ], [ %i.xj, %vec.epilog.middle.block1090 ] ; 3 uses
  %.2687291.us.ph = phi ptr [ %.1686.lcssa.us, %iter.check1071 ], [ %.1686.lcssa.us, %vector.memcheck1018 ], [ %i.ww, %vec.epilog.iter.check1073 ], [ %i.xk, %vec.epilog.middle.block1090 ] ; 3 uses
  %.2690290.us.ph = phi ptr [ %.1689.lcssa.us, %iter.check1071 ], [ %.1689.lcssa.us, %vector.memcheck1018 ], [ %i.wx, %vec.epilog.iter.check1073 ], [ %i.xl, %vec.epilog.middle.block1090 ] ; 3 uses
  %i.xr = sub i32 %4, %.2678294.us.ph
  %.neg = add i32 %.2678294.us.ph, 1
  %xtraiter1312 = and i32 %i.xr, 1
  %lcmp.mod1313.not = icmp eq i32 %xtraiter1312, 0
  br i1 %lcmp.mod1313.not, label %.lr.ph296.us.prol.loopexit, label %.lr.ph296.us.prol

.lr.ph296.us.prol:                                ; preds = %.lr.ph296.us.preheader
  %i.xs = load float, ptr %.2690290.us.ph, align 4, !tbaa !68
  store float %i.xs, ptr %.24295.us.ph, align 4, !tbaa !68
  %i.xt = load float, ptr %.2687291.us.ph, align 4, !tbaa !68
  %i.xu = getelementptr inbounds nuw i8, ptr %.24295.us.ph, i64 4
  store float %i.xt, ptr %i.xu, align 4, !tbaa !68
  %i.xv = load float, ptr %.2684292.us.ph, align 4, !tbaa !68
  %i.xw = getelementptr inbounds nuw i8, ptr %.24295.us.ph, i64 8
  store float %i.xv, ptr %i.xw, align 4, !tbaa !68
  %i.xx = load float, ptr %.2681293.us.ph, align 4, !tbaa !68
  %i.xy = getelementptr inbounds nuw i8, ptr %.24295.us.ph, i64 12
  store float %i.xx, ptr %i.xy, align 4, !tbaa !68
  %i.xz = getelementptr inbounds nuw i8, ptr %.24295.us.ph, i64 16 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.2690290.us.ph, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %.2687291.us.ph, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %.2684292.us.ph, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %.2681293.us.ph, i64 4
  %i.ye = add nuw nsw i32 %.2678294.us.ph, 1
  br label %.lr.ph296.us.prol.loopexit

.lr.ph296.us.prol.loopexit:                       ; preds = %.lr.ph296.us.prol, %.lr.ph296.us.preheader
  %.lcssa1219.unr = phi ptr [ poison, %.lr.ph296.us.preheader ], [ %i.xz, %.lr.ph296.us.prol ]
  %.24295.us.unr = phi ptr [ %.24295.us.ph, %.lr.ph296.us.preheader ], [ %i.xz, %.lr.ph296.us.prol ]
  %.2678294.us.unr = phi i32 [ %.2678294.us.ph, %.lr.ph296.us.preheader ], [ %i.ye, %.lr.ph296.us.prol ]
  %.2681293.us.unr = phi ptr [ %.2681293.us.ph, %.lr.ph296.us.preheader ], [ %i.yd, %.lr.ph296.us.prol ]
  %.2684292.us.unr = phi ptr [ %.2684292.us.ph, %.lr.ph296.us.preheader ], [ %i.yc, %.lr.ph296.us.prol ]
  %.2687291.us.unr = phi ptr [ %.2687291.us.ph, %.lr.ph296.us.preheader ], [ %i.yb, %.lr.ph296.us.prol ]
  %.2690290.us.unr = phi ptr [ %.2690290.us.ph, %.lr.ph296.us.preheader ], [ %i.ya, %.lr.ph296.us.prol ]
  %i.yf = icmp eq i32 %4, %.neg
  br i1 %i.yf, label %.loopexit.us, label %.lr.ph296.us

.loopexit.us:                                     ; preds = %.lr.ph296.us.prol.loopexit, %.lr.ph296.us, %middle.block1062, %vec.epilog.middle.block1090, %.preheader95.us
  %.24.lcssa.us = phi ptr [ %.23.lcssa.us, %.preheader95.us ], [ %i.xe, %vec.epilog.middle.block1090 ], [ %i.wq, %middle.block1062 ], [ %.lcssa1219.unr, %.lr.ph296.us.prol.loopexit ], [ %i.vy, %.lr.ph296.us ] ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 4 ; 3 uses
  %i.yg = icmp slt i64 %indvars.iv.next478, %invariant.op588.a
  br i1 %i.yg, label %.lr.ph300.split.us, label %.preheader94.loopexit, !llvm.loop !341

.preheader96.us:                                  ; preds = %.lr.ph270.us, %.loopexit97.us.thread, %.loopexit97.us
  %.0688.lcssa.us = phi ptr [ %i.sy, %.loopexit97.us ], [ %i.rh, %.loopexit97.us.thread ], [ %i.ub, %.lr.ph270.us ] ; 2 uses
  %.0685.lcssa.us = phi ptr [ %i.tc, %.loopexit97.us ], [ %i.rl, %.loopexit97.us.thread ], [ %i.uc, %.lr.ph270.us ] ; 2 uses
  %.0682.lcssa.us = phi ptr [ %i.tg, %.loopexit97.us ], [ %i.rp, %.loopexit97.us.thread ], [ %i.ud, %.lr.ph270.us ] ; 2 uses
  %.0679.lcssa.us = phi ptr [ %i.tk, %.loopexit97.us ], [ %i.rt, %.loopexit97.us.thread ], [ %i.ue, %.lr.ph270.us ] ; 2 uses
  %.0676.lcssa.us = phi i32 [ 0, %.loopexit97.us ], [ 0, %.loopexit97.us.thread ], [ %i.qy, %.lr.ph270.us ] ; 3 uses
  %.22.lcssa.us = phi ptr [ %.21.us, %.loopexit97.us ], [ %.19299.us, %.loopexit97.us.thread ], [ %i.ua, %.lr.ph270.us ] ; 2 uses
  %i.yh = or disjoint i32 %.0676.lcssa.us, 3
  %i.yi = icmp slt i32 %i.yh, %4
  br i1 %i.yi, label %.lr.ph283.us, label %.preheader95.us

.lr.ph300.split:                                  ; preds = %.lr.ph300
  br i1 %i.qr, label %.lr.ph300.split.split.us, label %.lr.ph300.split.split.preheader

.lr.ph300.split.split.preheader:                  ; preds = %.lr.ph300.split
  %i.yj = add i32 %2, -4
  %i.yk = sub i32 %i.yj, %.1655.lcssa
  %i.yl = and i32 %i.yk, -4
  %i.ym = add i32 %.1655.lcssa, %i.yl
  %i.yn = add i32 %i.ym, 4
  br label %.preheader94

.lr.ph300.split.split.us:                         ; preds = %.lr.ph300.split
  br i1 %i.qu, label %.lr.ph262.us312.us.preheader, label %.loopexit97.us310.preheader

.loopexit97.us310.preheader:                      ; preds = %.lr.ph300.split.split.us
  %i.yo = add i32 %2, -4
  %i.yp = sub i32 %i.yo, %.1655.lcssa
  %i.yq = and i32 %i.yp, -4
  %i.yr = add i32 %.1655.lcssa, %i.yq
  %i.ys = add i32 %i.yr, 4
  br label %.preheader94

.lr.ph262.us312.us.preheader:                     ; preds = %.lr.ph300.split.split.us
  %i.yt = zext nneg i32 %.1655.lcssa to i64
  %i.yu = sext i32 %1 to i64
  %i.yv = sext i32 %2 to i64
  %invariant.op587 = add nsw i64 %i.yv, -3
  %i.yw = add nsw i32 %4, -1
  %xtraiter1298 = and i32 %4, 7                   ; 3 uses
  %i.yx = icmp ult i32 %i.yw, 7
  %unroll_iter1303 = and i32 %4, 2147483640
  %lcmp.mod1300.not = icmp eq i32 %xtraiter1298, 0
  %lcmp.mod1302 = icmp ne i32 %xtraiter1298, 0
  br label %.lr.ph262.us312.us

.lr.ph262.us312.us:                               ; preds = %.lr.ph262.us312.us.preheader, %..loopexit97_crit_edge.us313.us
  %indvars.iv472 = phi i64 [ %i.yt, %.lr.ph262.us312.us.preheader ], [ %indvars.iv.next473, %..loopexit97_crit_edge.us313.us ] ; 2 uses
  %.19299.us304.us = phi ptr [ %.10.lcssa, %.lr.ph262.us312.us.preheader ], [ %.lcssa1220, %..loopexit97_crit_edge.us313.us ] ; 2 uses
  %i.yy = load ptr, ptr %0, align 8, !tbaa !18
  %i.yz = add nsw i64 %indvars.iv472, %i.yu
  %i.za = mul i64 %i.k, %i.yz
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.za
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.zb, i64 %i.qt ; 2 uses
  br i1 %i.yx, label %.epil.preheader, label %.lr.ph262.us312.us.new

.lr.ph262.us312.us.new:                           ; preds = %.lr.ph262.us312.us, %.lr.ph262.us312.us.new
  %.20261.us306.us = phi ptr [ %i.zz, %.lr.ph262.us312.us.new ], [ %.19299.us304.us, %.lr.ph262.us312.us ] ; 9 uses
  %.0692259.us308.us = phi ptr [ %i.aaa, %.lr.ph262.us312.us.new ], [ %i.zc, %.lr.ph262.us312.us ] ; 9 uses
  %niter1304 = phi i32 [ %niter1304.next.7, %.lr.ph262.us312.us.new ], [ 0, %.lr.ph262.us312.us ]
  %i.zd = load <4 x float>, ptr %.0692259.us308.us, align 16, !tbaa !116
  store <4 x float> %i.zd, ptr %.20261.us306.us, align 16, !tbaa !116
  %i.ze = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %.0692259.us308.us, i64 16
  %i.zg = load <4 x float>, ptr %i.zf, align 16, !tbaa !116
  store <4 x float> %i.zg, ptr %i.ze, align 16, !tbaa !116
  %i.zh = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 32
  %i.zi = getelementptr inbounds nuw i8, ptr %.0692259.us308.us, i64 32
  %i.zj = load <4 x float>, ptr %i.zi, align 16, !tbaa !116
  store <4 x float> %i.zj, ptr %i.zh, align 16, !tbaa !116
  %i.zk = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 48
  %i.zl = getelementptr inbounds nuw i8, ptr %.0692259.us308.us, i64 48
  %i.zm = load <4 x float>, ptr %i.zl, align 16, !tbaa !116
  store <4 x float> %i.zm, ptr %i.zk, align 16, !tbaa !116
  %i.zn = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 64
  %i.zo = getelementptr inbounds nuw i8, ptr %.0692259.us308.us, i64 64
  %i.zp = load <4 x float>, ptr %i.zo, align 16, !tbaa !116
  store <4 x float> %i.zp, ptr %i.zn, align 16, !tbaa !116
  %i.zq = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 80
  %i.zr = getelementptr inbounds nuw i8, ptr %.0692259.us308.us, i64 80
  %i.zs = load <4 x float>, ptr %i.zr, align 16, !tbaa !116
  store <4 x float> %i.zs, ptr %i.zq, align 16, !tbaa !116
  %i.zt = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 96
  %i.zu = getelementptr inbounds nuw i8, ptr %.0692259.us308.us, i64 96
  %i.zv = load <4 x float>, ptr %i.zu, align 16, !tbaa !116
  store <4 x float> %i.zv, ptr %i.zt, align 16, !tbaa !116
  %i.zw = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 112
  %i.zx = getelementptr inbounds nuw i8, ptr %.0692259.us308.us, i64 112
  %i.zy = load <4 x float>, ptr %i.zx, align 16, !tbaa !116
  store <4 x float> %i.zy, ptr %i.zw, align 16, !tbaa !116
  %i.zz = getelementptr inbounds nuw i8, ptr %.20261.us306.us, i64 128 ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0692259.us308.us, i64 128 ; 2 uses
  %niter1304.next.7 = add nuw nsw i32 %niter1304, 8 ; 2 uses
  %niter1304.ncmp.7 = icmp eq i32 %niter1304.next.7, %unroll_iter1303
  br i1 %niter1304.ncmp.7, label %..loopexit97_crit_edge.us313.us.unr-lcssa, label %.lr.ph262.us312.us.new, !llvm.loop !322

..loopexit97_crit_edge.us313.us.unr-lcssa:        ; preds = %.lr.ph262.us312.us.new
  br i1 %lcmp.mod1300.not, label %..loopexit97_crit_edge.us313.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit97_crit_edge.us313.us.unr-lcssa, %.lr.ph262.us312.us
  %.20261.us306.us.epil.init = phi ptr [ %.19299.us304.us, %.lr.ph262.us312.us ], [ %i.zz, %..loopexit97_crit_edge.us313.us.unr-lcssa ]
  %.0692259.us308.us.epil.init = phi ptr [ %i.zc, %.lr.ph262.us312.us ], [ %i.aaa, %..loopexit97_crit_edge.us313.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1302)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.20261.us306.us.epil = phi ptr [ %.20261.us306.us.epil.init, %.epil.preheader ], [ %i.aac, %bb.h ] ; 2 uses
  %.0692259.us308.us.epil = phi ptr [ %.0692259.us308.us.epil.init, %.epil.preheader ], [ %i.aad, %bb.h ] ; 2 uses
  %epil.iter1299 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter1299.next, %bb.h ]
  %i.aab = load <4 x float>, ptr %.0692259.us308.us.epil, align 16, !tbaa !116
  store <4 x float> %i.aab, ptr %.20261.us306.us.epil, align 16, !tbaa !116
  %i.aac = getelementptr inbounds nuw i8, ptr %.20261.us306.us.epil, i64 16 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.0692259.us308.us.epil, i64 16
  %epil.iter1299.next = add i32 %epil.iter1299, 1 ; 2 uses
  %epil.iter1299.cmp.not = icmp eq i32 %epil.iter1299.next, %xtraiter1298
  br i1 %epil.iter1299.cmp.not, label %..loopexit97_crit_edge.us313.us, label %bb.h, !llvm.loop !342

..loopexit97_crit_edge.us313.us:                  ; preds = %bb.h, %..loopexit97_crit_edge.us313.us.unr-lcssa
  %.lcssa1220 = phi ptr [ %i.zz, %..loopexit97_crit_edge.us313.us.unr-lcssa ], [ %i.aac, %bb.h ] ; 2 uses
  %indvars.iv.next473 = add nuw nsw i64 %indvars.iv472, 4 ; 3 uses
  %i.aae = icmp slt i64 %indvars.iv.next473, %invariant.op587
  br i1 %i.aae, label %.lr.ph262.us312.us, label %.preheader94.loopexit375, !llvm.loop !341

bb.i:                                             ; preds = %.lr.ph256, %.loopexit100
  %indvars.iv467 = phi i64 [ %i.aq, %.lr.ph256 ], [ %indvars.iv.next468, %.loopexit100 ] ; 4 uses
  %.10255 = phi ptr [ %.0651.lcssa, %.lr.ph256 ], [ %.18, %.loopexit100 ] ; 9 uses
  switch i32 %i.b, label %.loopexit100 [
    i32 8, label %bb.j
    i32 4, label %bb.k
    i32 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.ak, label %.lr.ph192.preheader, label %.loopexit100

.lr.ph192.preheader:                              ; preds = %bb.j
  %i.aaf = load ptr, ptr %0, align 8, !tbaa !18
  %i.aag = add nsw i64 %indvars.iv467, %i.as
  %i.aah = mul i64 %i.k, %i.aag
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aah
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.aj ; 2 uses
  br i1 %i.av, label %.lr.ph192.epil.preheader, label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %.lr.ph192
  %.11191 = phi ptr [ %i.abg, %.lr.ph192 ], [ %.10255, %.lr.ph192.preheader ] ; 9 uses
  %.0754189 = phi ptr [ %i.abh, %.lr.ph192 ], [ %i.aaj, %.lr.ph192.preheader ] ; 9 uses
  %niter1297 = phi i32 [ %niter1297.next.7, %.lr.ph192 ], [ 0, %.lr.ph192.preheader ]
  %i.aak = load <8 x float>, ptr %.0754189, align 32, !tbaa !116
  store <8 x float> %i.aak, ptr %.11191, align 1, !tbaa !116
  %i.aal = getelementptr inbounds nuw i8, ptr %.11191, i64 32
  %i.aam = getelementptr inbounds nuw i8, ptr %.0754189, i64 32
  %i.aan = load <8 x float>, ptr %i.aam, align 32, !tbaa !116
  store <8 x float> %i.aan, ptr %i.aal, align 1, !tbaa !116
  %i.aao = getelementptr inbounds nuw i8, ptr %.11191, i64 64
  %i.aap = getelementptr inbounds nuw i8, ptr %.0754189, i64 64
  %i.aaq = load <8 x float>, ptr %i.aap, align 32, !tbaa !116
  store <8 x float> %i.aaq, ptr %i.aao, align 1, !tbaa !116
  %i.aar = getelementptr inbounds nuw i8, ptr %.11191, i64 96
  %i.aas = getelementptr inbounds nuw i8, ptr %.0754189, i64 96
  %i.aat = load <8 x float>, ptr %i.aas, align 32, !tbaa !116
  store <8 x float> %i.aat, ptr %i.aar, align 1, !tbaa !116
  %i.aau = getelementptr inbounds nuw i8, ptr %.11191, i64 128
  %i.aav = getelementptr inbounds nuw i8, ptr %.0754189, i64 128
  %i.aaw = load <8 x float>, ptr %i.aav, align 32, !tbaa !116
  store <8 x float> %i.aaw, ptr %i.aau, align 1, !tbaa !116
  %i.aax = getelementptr inbounds nuw i8, ptr %.11191, i64 160
  %i.aay = getelementptr inbounds nuw i8, ptr %.0754189, i64 160
  %i.aaz = load <8 x float>, ptr %i.aay, align 32, !tbaa !116
  store <8 x float> %i.aaz, ptr %i.aax, align 1, !tbaa !116
  %i.aba = getelementptr inbounds nuw i8, ptr %.11191, i64 192
  %i.abb = getelementptr inbounds nuw i8, ptr %.0754189, i64 192
  %i.abc = load <8 x float>, ptr %i.abb, align 32, !tbaa !116
  store <8 x float> %i.abc, ptr %i.aba, align 1, !tbaa !116
  %i.abd = getelementptr inbounds nuw i8, ptr %.11191, i64 224
  %i.abe = getelementptr inbounds nuw i8, ptr %.0754189, i64 224
  %i.abf = load <8 x float>, ptr %i.abe, align 32, !tbaa !116
  store <8 x float> %i.abf, ptr %i.abd, align 1, !tbaa !116
  %i.abg = getelementptr inbounds nuw i8, ptr %.11191, i64 256 ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.0754189, i64 256 ; 2 uses
  %niter1297.next.7 = add nuw nsw i32 %niter1297, 8 ; 2 uses
  %niter1297.ncmp.7 = icmp eq i32 %niter1297.next.7, %unroll_iter1296
  br i1 %niter1297.ncmp.7, label %.loopexit100.loopexit.unr-lcssa, label %.lr.ph192, !llvm.loop !343

bb.k:                                             ; preds = %bb.i
  br i1 %i.ak, label %.lr.ph198.preheader, label %.loopexit100

.lr.ph198.preheader:                              ; preds = %bb.k
  %i.abi = load ptr, ptr %0, align 8, !tbaa !18   ; 2 uses
  %i.abj = add nsw i64 %indvars.iv467, %i.as      ; 2 uses
  %i.abk = add nsw i64 %i.abj, 4
  %i.abl = mul i64 %i.k, %i.abk
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %i.abl
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.am ; 2 uses
  %i.abo = mul i64 %i.k, %i.abj
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %i.abo
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abp, i64 %i.am ; 2 uses
  br i1 %i.au, label %.lr.ph198.epil.preheader, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.lr.ph198
  %.13197 = phi ptr [ %i.acm, %.lr.ph198 ], [ %.10255, %.lr.ph198.preheader ] ; 9 uses
  %.0751195 = phi ptr [ %i.aco, %.lr.ph198 ], [ %i.abn, %.lr.ph198.preheader ] ; 5 uses
  %.0752194 = phi ptr [ %i.acn, %.lr.ph198 ], [ %i.abq, %.lr.ph198.preheader ] ; 5 uses
  %niter1290 = phi i32 [ %niter1290.next.3, %.lr.ph198 ], [ 0, %.lr.ph198.preheader ]
  %i.abr = load <4 x float>, ptr %.0752194, align 16, !tbaa !116
  store <4 x float> %i.abr, ptr %.13197, align 16, !tbaa !116
  %i.abs = getelementptr inbounds nuw i8, ptr %.13197, i64 16
  %i.abt = load <4 x float>, ptr %.0751195, align 16, !tbaa !116
  store <4 x float> %i.abt, ptr %i.abs, align 16, !tbaa !116
  %i.abu = getelementptr inbounds nuw i8, ptr %.13197, i64 32
  %i.abv = getelementptr inbounds nuw i8, ptr %.0752194, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %.0751195, i64 16
  %i.abx = load <4 x float>, ptr %i.abv, align 16, !tbaa !116
  store <4 x float> %i.abx, ptr %i.abu, align 16, !tbaa !116
  %i.aby = getelementptr inbounds nuw i8, ptr %.13197, i64 48
  %i.abz = load <4 x float>, ptr %i.abw, align 16, !tbaa !116
  store <4 x float> %i.abz, ptr %i.aby, align 16, !tbaa !116
  %i.aca = getelementptr inbounds nuw i8, ptr %.13197, i64 64
  %i.acb = getelementptr inbounds nuw i8, ptr %.0752194, i64 32
  %i.acc = getelementptr inbounds nuw i8, ptr %.0751195, i64 32
  %i.acd = load <4 x float>, ptr %i.acb, align 16, !tbaa !116
  store <4 x float> %i.acd, ptr %i.aca, align 16, !tbaa !116
  %i.ace = getelementptr inbounds nuw i8, ptr %.13197, i64 80
  %i.acf = load <4 x float>, ptr %i.acc, align 16, !tbaa !116
  store <4 x float> %i.acf, ptr %i.ace, align 16, !tbaa !116
  %i.acg = getelementptr inbounds nuw i8, ptr %.13197, i64 96
  %i.ach = getelementptr inbounds nuw i8, ptr %.0752194, i64 48
  %i.aci = getelementptr inbounds nuw i8, ptr %.0751195, i64 48
end_hunk_3
begin_hunk_4_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a

bb.aj:                                            ; preds = %.lr.ph2801
  %i.bhp = load <4 x i32>, ptr %.172800, align 16, !tbaa !116
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph2801, %bb.aj
  %i.bhq = phi <4 x i32> [ %i.bhp, %bb.aj ], [ zeroinitializer, %.lr.ph2801 ] ; 3 uses
  br i1 %i.ym, label %.lr.ph2786.preheader, label %.preheader2159

.lr.ph2786.preheader:                             ; preds = %bb.ak
  br i1 %i.ze, label %.lr.ph2786.epil.preheader, label %.lr.ph2786

.preheader2159.loopexit.unr-lcssa:                ; preds = %.lr.ph2786
  br i1 %lcmp.mod5244.not.not, label %.lr.ph2786.epil.preheader, label %.preheader2159.loopexit

.lr.ph2786.epil.preheader:                        ; preds = %.preheader2159.loopexit.unr-lcssa, %.lr.ph2786.preheader
  %.1313792784.epil.init = phi ptr [ %.1213782799, %.lr.ph2786.preheader ], [ %i.bjo, %.preheader2159.loopexit.unr-lcssa ]
  %.014062783.epil.init = phi ptr [ %.212122806, %.lr.ph2786.preheader ], [ %i.bjn, %.preheader2159.loopexit.unr-lcssa ]
  %.epil.init5243 = phi <4 x i32> [ %i.bhq, %.lr.ph2786.preheader ], [ %i.bjm, %.preheader2159.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod5246)
  %i.bhr = load <8 x i8>, ptr %.014062783.epil.init, align 1, !tbaa !116
  %i.bhs = load i16, ptr %.1313792784.epil.init, align 2, !tbaa !821
  %i.bht = insertelement <8 x i16> poison, i16 %i.bhs, i64 0
  %i.bhu = sext <8 x i8> %i.bhr to <8 x i16>
  %i.bhv = bitcast <8 x i16> %i.bht to <16 x i8>
  %i.bhw = shufflevector <16 x i8> %i.bhv, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bhx = sext <8 x i8> %i.bhw to <8 x i16>
  %i.bhy = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bhu, <8 x i16> %i.bhx)
  %i.bhz = add <4 x i32> %i.bhy, %.epil.init5243
  br label %.preheader2159.loopexit

.preheader2159.loopexit:                          ; preds = %.preheader2159.loopexit.unr-lcssa, %.lr.ph2786.epil.preheader
  %.lcssa5039 = phi <4 x i32> [ %i.bjm, %.preheader2159.loopexit.unr-lcssa ], [ %i.bhz, %.lr.ph2786.epil.preheader ]
  %i.bia = getelementptr i8, ptr %.1213782799, i64 %i.yz
  %scevgep3488 = getelementptr i8, ptr %i.bia, i64 2
  br label %.preheader2159

.preheader2159:                                   ; preds = %.preheader2159.loopexit, %bb.ak
  %.lcssa2236 = phi <4 x i32> [ %i.bhq, %bb.ak ], [ %.lcssa5039, %.preheader2159.loopexit ] ; 3 uses
  %.01432.lcssa = phi i32 [ 0, %bb.ak ], [ %i.yr, %.preheader2159.loopexit ] ; 5 uses
  %.01406.lcssa = phi ptr [ %.212122806, %bb.ak ], [ %indvars.iv3482, %.preheader2159.loopexit ] ; 3 uses
  %.131379.lcssa = phi ptr [ %.1213782799, %bb.ak ], [ %scevgep3488, %.preheader2159.loopexit ] ; 4 uses
  %i.bib = icmp slt i32 %.01432.lcssa, %8
  br i1 %i.bib, label %.lr.ph2794.preheader, label %._crit_edge2795

.lr.ph2794.preheader:                             ; preds = %.preheader2159
  %i.bic = sub i32 %8, %.01432.lcssa
  %.neg5330 = add i32 %.01432.lcssa, 1
  %xtraiter5249 = and i32 %i.bic, 1
  %lcmp.mod5250.not = icmp eq i32 %xtraiter5249, 0
  br i1 %lcmp.mod5250.not, label %.lr.ph2794.prol.loopexit, label %.lr.ph2794.prol

.lr.ph2794.prol:                                  ; preds = %.lr.ph2794.preheader
  %i.bid = load <8 x i8>, ptr %.01406.lcssa, align 1, !tbaa !116
  %i.bie = load i8, ptr %.131379.lcssa, align 1, !tbaa !116
  %i.bif = sext i8 %i.bie to i16
  %i.big = insertelement <8 x i16> poison, i16 %i.bif, i64 0
  %i.bih = shufflevector <8 x i16> %i.big, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bii = sext <8 x i8> %i.bid to <8 x i16>      ; 2 uses
  %i.bij = mul <8 x i16> %i.bih, %i.bii
  %i.bik = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bii, <8 x i16> %i.bih)
  %i.bil = shufflevector <8 x i16> %i.bij, <8 x i16> %i.bik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bim = bitcast <8 x i16> %i.bil to <4 x i32>
  %i.bin = add <4 x i32> %.lcssa2236, %i.bim      ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %.01406.lcssa, i64 4
  %i.bip = getelementptr inbounds nuw i8, ptr %.131379.lcssa, i64 1 ; 2 uses
  %i.biq = add nuw nsw i32 %.01432.lcssa, 1
  br label %.lr.ph2794.prol.loopexit

.lr.ph2794.prol.loopexit:                         ; preds = %.lr.ph2794.prol, %.lr.ph2794.preheader
  %.lcssa5041.unr = phi <4 x i32> [ poison, %.lr.ph2794.preheader ], [ %i.bin, %.lr.ph2794.prol ]
  %.lcssa5040.unr = phi ptr [ poison, %.lr.ph2794.preheader ], [ %i.bip, %.lr.ph2794.prol ]
  %.1413802793.unr = phi ptr [ %.131379.lcssa, %.lr.ph2794.preheader ], [ %i.bip, %.lr.ph2794.prol ]
  %.114072792.unr = phi ptr [ %.01406.lcssa, %.lr.ph2794.preheader ], [ %i.bio, %.lr.ph2794.prol ]
  %.114332791.unr = phi i32 [ %.01432.lcssa, %.lr.ph2794.preheader ], [ %i.biq, %.lr.ph2794.prol ]
  %.unr5251 = phi <4 x i32> [ %.lcssa2236, %.lr.ph2794.preheader ], [ %i.bin, %.lr.ph2794.prol ]
  %i.bir = icmp eq i32 %8, %.neg5330
  br i1 %i.bir, label %._crit_edge2795, label %.lr.ph2794

.lr.ph2786:                                       ; preds = %.lr.ph2786.preheader, %.lr.ph2786
  %.1313792784 = phi ptr [ %i.bjo, %.lr.ph2786 ], [ %.1213782799, %.lr.ph2786.preheader ] ; 3 uses
  %.014062783 = phi ptr [ %i.bjn, %.lr.ph2786 ], [ %.212122806, %.lr.ph2786.preheader ] ; 3 uses
  %i.bis = phi <4 x i32> [ %i.bjm, %.lr.ph2786 ], [ %i.bhq, %.lr.ph2786.preheader ]
  %niter5248 = phi i32 [ %niter5248.next.1, %.lr.ph2786 ], [ 0, %.lr.ph2786.preheader ]
  %i.bit = load <8 x i8>, ptr %.014062783, align 1, !tbaa !116
  %i.biu = load i16, ptr %.1313792784, align 2, !tbaa !821
  %i.biv = insertelement <8 x i16> poison, i16 %i.biu, i64 0
  %i.biw = sext <8 x i8> %i.bit to <8 x i16>
  %i.bix = bitcast <8 x i16> %i.biv to <16 x i8>
  %i.biy = shufflevector <16 x i8> %i.bix, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.biz = sext <8 x i8> %i.biy to <8 x i16>
  %i.bja = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.biw, <8 x i16> %i.biz)
  %i.bjb = add <4 x i32> %i.bja, %i.bis
  %i.bjc = getelementptr inbounds nuw i8, ptr %.014062783, i64 8
  %i.bjd = getelementptr inbounds nuw i8, ptr %.1313792784, i64 2
  %i.bje = load <8 x i8>, ptr %i.bjc, align 1, !tbaa !116
  %i.bjf = load i16, ptr %i.bjd, align 2, !tbaa !821
  %i.bjg = insertelement <8 x i16> poison, i16 %i.bjf, i64 0
  %i.bjh = sext <8 x i8> %i.bje to <8 x i16>
  %i.bji = bitcast <8 x i16> %i.bjg to <16 x i8>
  %i.bjj = shufflevector <16 x i8> %i.bji, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bjk = sext <8 x i8> %i.bjj to <8 x i16>
  %i.bjl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bjh, <8 x i16> %i.bjk)
  %i.bjm = add <4 x i32> %i.bjl, %i.bjb           ; 3 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %.014062783, i64 16 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %.1313792784, i64 4 ; 2 uses
  %niter5248.next.1 = add nuw nsw i32 %niter5248, 2 ; 2 uses
  %niter5248.ncmp.1.not = icmp eq i32 %niter5248.next.1, %unroll_iter5247
  br i1 %niter5248.ncmp.1.not, label %.preheader2159.loopexit.unr-lcssa, label %.lr.ph2786, !llvm.loop !857

.lr.ph2794:                                       ; preds = %.lr.ph2794.prol.loopexit, %.lr.ph2794
  %.1413802793 = phi ptr [ %i.bkp, %.lr.ph2794 ], [ %.1413802793.unr, %.lr.ph2794.prol.loopexit ] ; 3 uses
  %.114072792 = phi ptr [ %i.bko, %.lr.ph2794 ], [ %.114072792.unr, %.lr.ph2794.prol.loopexit ] ; 3 uses
  %.114332791 = phi i32 [ %i.bkq, %.lr.ph2794 ], [ %.114332791.unr, %.lr.ph2794.prol.loopexit ]
  %i.bjp = phi <4 x i32> [ %i.bkn, %.lr.ph2794 ], [ %.unr5251, %.lr.ph2794.prol.loopexit ]
  %i.bjq = load <8 x i8>, ptr %.114072792, align 1, !tbaa !116
  %i.bjr = load i8, ptr %.1413802793, align 1, !tbaa !116
  %i.bjs = sext i8 %i.bjr to i16
  %i.bjt = insertelement <8 x i16> poison, i16 %i.bjs, i64 0
  %i.bju = shufflevector <8 x i16> %i.bjt, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bjv = sext <8 x i8> %i.bjq to <8 x i16>      ; 2 uses
  %i.bjw = mul <8 x i16> %i.bju, %i.bjv
  %i.bjx = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bjv, <8 x i16> %i.bju)
  %i.bjy = shufflevector <8 x i16> %i.bjw, <8 x i16> %i.bjx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bjz = bitcast <8 x i16> %i.bjy to <4 x i32>
  %i.bka = add <4 x i32> %i.bjp, %i.bjz
  %i.bkb = getelementptr inbounds nuw i8, ptr %.114072792, i64 4
  %i.bkc = getelementptr inbounds nuw i8, ptr %.1413802793, i64 1
  %i.bkd = load <8 x i8>, ptr %i.bkb, align 1, !tbaa !116
  %i.bke = load i8, ptr %i.bkc, align 1, !tbaa !116
  %i.bkf = sext i8 %i.bke to i16
  %i.bkg = insertelement <8 x i16> poison, i16 %i.bkf, i64 0
  %i.bkh = shufflevector <8 x i16> %i.bkg, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bki = sext <8 x i8> %i.bkd to <8 x i16>      ; 2 uses
  %i.bkj = mul <8 x i16> %i.bkh, %i.bki
  %i.bkk = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bki, <8 x i16> %i.bkh)
  %i.bkl = shufflevector <8 x i16> %i.bkj, <8 x i16> %i.bkk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bkm = bitcast <8 x i16> %i.bkl to <4 x i32>
  %i.bkn = add <4 x i32> %i.bka, %i.bkm           ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.114072792, i64 8
  %i.bkp = getelementptr inbounds nuw i8, ptr %.1413802793, i64 2 ; 2 uses
  %i.bkq = add nuw nsw i32 %.114332791, 2         ; 2 uses
  %exitcond3489.not.1 = icmp eq i32 %i.bkq, %8
  br i1 %exitcond3489.not.1, label %._crit_edge2795, label %.lr.ph2794, !llvm.loop !858

._crit_edge2795:                                  ; preds = %.lr.ph2794.prol.loopexit, %.lr.ph2794, %.preheader2159
  %.lcssa2237 = phi <4 x i32> [ %.lcssa2236, %.preheader2159 ], [ %.lcssa5041.unr, %.lr.ph2794.prol.loopexit ], [ %i.bkn, %.lr.ph2794 ]
  %.141380.lcssa = phi ptr [ %.131379.lcssa, %.preheader2159 ], [ %.lcssa5040.unr, %.lr.ph2794.prol.loopexit ], [ %i.bkp, %.lr.ph2794 ]
  store <4 x i32> %.lcssa2237, ptr %.172800, align 16, !tbaa !116
  %i.bkr = getelementptr inbounds nuw i8, ptr %.172800, i64 16 ; 2 uses
  %i.bks = add nuw nsw i32 %.413852798, 1         ; 2 uses
  %exitcond3490.not = icmp eq i32 %i.bks, %6
  br i1 %exitcond3490.not, label %._crit_edge2802, label %.lr.ph2801, !llvm.loop !859

._crit_edge2802:                                  ; preds = %._crit_edge2795, %.preheader2164
  %.17.lcssa = phi ptr [ %.16.lcssa, %.preheader2164 ], [ %i.bkr, %._crit_edge2795 ] ; 2 uses
  %i.bkt = getelementptr inbounds i8, ptr %.212122806, i64 %i.yo ; 2 uses
  %i.bku = add nuw nsw i32 %.212202804, 4         ; 3 uses
  %i.bkv = or disjoint i32 %i.bku, 3
  %i.bkw = icmp slt i32 %i.bkv, %4
  %scevgep3483 = getelementptr i8, ptr %indvars.iv3482, i64 %i.yo
  br i1 %i.bkw, label %.preheader2168, label %.preheader2158, !llvm.loop !860

.preheader2157:                                   ; preds = %.preheader2157.lr.ph, %._crit_edge2948
  %indvars.iv3495 = phi ptr [ %scevgep3494, %.preheader2157.lr.ph ], [ %scevgep3496, %._crit_edge2948 ] ; 4 uses
  %.32952 = phi ptr [ %.21212.lcssa, %.preheader2157.lr.ph ], [ %i.cpc, %._crit_edge2948 ] ; 26 uses
  %.182951 = phi ptr [ %.12.lcssa, %.preheader2157.lr.ph ], [ %.23.lcssa, %._crit_edge2948 ] ; 2 uses
  %.312212950 = phi i32 [ %.21220.lcssa, %.preheader2157.lr.ph ], [ %i.cpd, %._crit_edge2948 ]
  br i1 %i.atv, label %.lr.ph2831, label %.preheader2156

.preheader2147:                                   ; preds = %._crit_edge2948, %.preheader2158
  %.31221.lcssa = phi i32 [ %.21220.lcssa, %.preheader2158 ], [ %i.cpd, %._crit_edge2948 ] ; 2 uses
  %.18.lcssa = phi ptr [ %.12.lcssa, %.preheader2158 ], [ %.23.lcssa, %._crit_edge2948 ]
  %.3.lcssa = phi ptr [ %.21212.lcssa, %.preheader2158 ], [ %i.cpc, %._crit_edge2948 ] ; 2 uses
  %i.bkx = icmp slt i32 %.31221.lcssa, %4
  br i1 %i.bkx, label %.preheader2146.lr.ph, label %.loopexit

.preheader2146.lr.ph:                             ; preds = %.preheader2147
  %i.bky = icmp sgt i32 %6, 15
  %i.bkz = icmp eq i32 %7, 0                      ; 5 uses
  %i.bla = icmp sgt i32 %8, 1                     ; 4 uses
  %i.blb = icmp sgt i32 %8, 3
  %i.blc = sext i32 %8 to i64                     ; 2 uses
  %i.bld = add i32 %8, -2                         ; 4 uses
  %i.ble = and i32 %i.bld, -2
  %i.blf = add i32 %i.ble, 2                      ; 5 uses
  %i.blg = and i32 %6, -16
  %i.blh = zext i32 %i.bld to i64                 ; 2 uses
  %i.bli = lshr i64 %i.blh, 1                     ; 4 uses
  %i.blj = shl nuw nsw i64 %i.bli, 4
  %i.blk = and i64 %i.blh, 4294967294
  %i.bll = getelementptr i8, ptr %.3.lcssa, i64 %i.blk
  %scevgep3507 = getelementptr i8, ptr %i.bll, i64 2
  %i.blm = shl nuw nsw i64 %i.bli, 3
  %i.bln = shl nuw nsw i64 %i.bli, 2
  %i.blo = and i32 %8, -4                         ; 3 uses
  %i.blp = add i32 %8, -4                         ; 3 uses
  %i.blq = lshr i32 %i.blp, 2
  %narrow = add nuw nsw i32 %i.blq, 1
  %i.blr = zext nneg i32 %narrow to i64           ; 5 uses
  %9 = add i32 %8, -4
  %i.bls = add nuw nsw i64 %i.bli, 1              ; 5 uses
  %i.blt = add i32 %8, -2                         ; 4 uses
  %i.blu = lshr i32 %i.blt, 1                     ; 4 uses
  %i.blv = add nuw i32 %i.blu, 1                  ; 6 uses
  %i.blw = icmp eq i32 %i.blu, 0
  %unroll_iter5300 = and i32 %i.blv, -2
  %i.blx = and i32 %i.blt, 2
  %lcmp.mod5295.not.not = icmp eq i32 %i.blx, 0
  %lcmp.mod5299 = trunc i32 %i.blv to i1
  %i.bly = icmp eq i32 %i.blu, 0
  %unroll_iter5312 = and i32 %i.blv, -2
  %i.blz = and i32 %i.blt, 2
  %lcmp.mod5308.not.not = icmp eq i32 %i.blz, 0
  %lcmp.mod5311 = trunc i32 %i.blv to i1
  %i.bma = icmp eq i32 %i.blu, 0
  %unroll_iter5323 = and i32 %i.blv, -2
  %i.bmb = and i32 %i.blt, 2
  %lcmp.mod5320.not.not = icmp eq i32 %i.bmb, 0
  %lcmp.mod5322 = trunc i32 %i.blv to i1
  %min.iters.check4719 = icmp ult i32 %i.bld, 14
  %min.iters.check4721 = icmp ult i32 %i.bld, 126
  %i.bmc = and i64 %i.bls, 56
  %n.vec4723 = and i64 %i.bls, 4294967232         ; 6 uses
  %i.bmd = trunc nuw i64 %n.vec4723 to i32
  %i.bme = shl i32 %i.bmd, 1
  %i.bmf = shl nuw nsw i64 %n.vec4723, 1
  %i.bmg = shl nuw nsw i64 %n.vec4723, 2
  %cmp.n4782 = icmp eq i64 %i.bls, %n.vec4723
  %min.epilog.iters.check4791 = icmp eq i64 %i.bmc, 0
  %n.vec4793 = and i64 %i.bls, 4294967288         ; 5 uses
  %i.bmh = trunc nuw i64 %n.vec4793 to i32
  %i.bmi = shl i32 %i.bmh, 1
  %i.bmj = shl nuw nsw i64 %n.vec4793, 1
  %i.bmk = shl nuw nsw i64 %n.vec4793, 2
  %cmp.n4810 = icmp eq i64 %i.bls, %n.vec4793
  %min.iters.check4467 = icmp ult i32 %i.blp, 12
  %min.iters.check4469 = icmp ult i32 %i.blp, 124
  %i.bml = and i64 %i.blr, 28
  %n.vec4471 = and i64 %i.blr, 2147483616         ; 5 uses
  %i.bmm = trunc nuw nsw i64 %n.vec4471 to i32
  %i.bmn = shl i32 %i.bmm, 2
  %i.bmo = shl nuw nsw i64 %n.vec4471, 2          ; 2 uses
  %cmp.n4512 = icmp eq i64 %n.vec4471, %i.blr
  %min.epilog.iters.check4523 = icmp eq i64 %i.bml, 0
  %n.vec4525 = and i64 %i.blr, 2147483644         ; 4 uses
  %i.bmp = trunc nuw nsw i64 %n.vec4525 to i32
  %i.bmq = shl i32 %i.bmp, 2
  %i.bmr = shl nuw nsw i64 %n.vec4525, 2          ; 2 uses
  %cmp.n4546 = icmp eq i64 %n.vec4525, %i.blr
  br label %.preheader2146

.preheader2156:                                   ; preds = %._crit_edge2824, %.preheader2157
  %.01417.lcssa = phi ptr [ %i.e, %.preheader2157 ], [ %.21419.lcssa, %._crit_edge2824 ] ; 2 uses
  %.01412.lcssa = phi i32 [ 0, %.preheader2157 ], [ %i.aud, %._crit_edge2824 ] ; 3 uses
  %.19.lcssa = phi ptr [ %.182951, %.preheader2157 ], [ %i.bpq, %._crit_edge2824 ] ; 2 uses
  %i.bms = or disjoint i32 %.01412.lcssa, 7
  %i.bmt = icmp slt i32 %i.bms, %6
  br i1 %i.bmt, label %.lr.ph2856, label %.preheader2155

.lr.ph2831:                                       ; preds = %.preheader2157, %._crit_edge2824
  %.192830 = phi ptr [ %i.bpq, %._crit_edge2824 ], [ %.182951, %.preheader2157 ] ; 5 uses
  %.014122829 = phi i32 [ %i.bpr, %._crit_edge2824 ], [ 0, %.preheader2157 ]
  %.014172828 = phi ptr [ %.21419.lcssa, %._crit_edge2824 ], [ %i.e, %.preheader2157 ] ; 3 uses
  br i1 %i.atw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph2831
  %i.bmu = load <16 x i32>, ptr %.192830, align 1, !tbaa !116
  %i.bmv = getelementptr inbounds nuw i8, ptr %.192830, i64 64
  %i.bmw = load <16 x i32>, ptr %i.bmv, align 1, !tbaa !116
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph2831, %bb.al
  %i.bmx = phi <16 x i32> [ %i.bmu, %bb.al ], [ zeroinitializer, %.lr.ph2831 ] ; 3 uses
  %i.bmy = phi <16 x i32> [ %i.bmw, %bb.al ], [ zeroinitializer, %.lr.ph2831 ] ; 3 uses
  br i1 %i.atx, label %.lr.ph2814.preheader, label %.preheader2152

.lr.ph2814.preheader:                             ; preds = %bb.am
  br i1 %i.aup, label %.lr.ph2814.epil.preheader, label %.lr.ph2814

.preheader2152.loopexit.unr-lcssa:                ; preds = %.lr.ph2814
  br i1 %lcmp.mod5257.not.not, label %.lr.ph2814.epil.preheader, label %.preheader2152

.lr.ph2814.epil.preheader:                        ; preds = %.preheader2152.loopexit.unr-lcssa, %.lr.ph2814.preheader
  %.014102811.epil.init = phi ptr [ %.32952, %.lr.ph2814.preheader ], [ %i.bot, %.preheader2152.loopexit.unr-lcssa ] ; 2 uses
  %.114182810.epil.init = phi ptr [ %.014172828, %.lr.ph2814.preheader ], [ %i.bou, %.preheader2152.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init5254 = phi <16 x i32> [ %i.bmy, %.lr.ph2814.preheader ], [ %i.bos, %.preheader2152.loopexit.unr-lcssa ]
  %.epil.init5256 = phi <16 x i32> [ %i.bmx, %.lr.ph2814.preheader ], [ %i.boo, %.preheader2152.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod5262)
  %i.bmz = load float, ptr %.014102811.epil.init, align 1, !tbaa !116
  %i.bna = insertelement <8 x float> poison, float %i.bmz, i64 0
  %i.bnb = shufflevector <8 x float> %i.bna, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnc = load <32 x i8>, ptr %.114182810.epil.init, align 1, !tbaa !116 ; 2 uses
  %i.bnd = bitcast <8 x float> %i.bnb to <32 x i8>
  %i.bne = sext <32 x i8> %i.bnd to <32 x i16>    ; 2 uses
  %i.bnf = sext <32 x i8> %i.bnc to <32 x i16>
  %i.bng = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bne, <32 x i16> %i.bnf)
  %i.bnh = add <16 x i32> %i.bng, %.epil.init5256
  %i.bni = shufflevector <32 x i8> %i.bnc, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.bnj = sext <32 x i8> %i.bni to <32 x i16>
  %i.bnk = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bne, <32 x i16> %i.bnj)
  %i.bnl = add <16 x i32> %i.bnk, %.epil.init5254
  %i.bnm = getelementptr inbounds nuw i8, ptr %.014102811.epil.init, i64 4
  %i.bnn = getelementptr inbounds nuw i8, ptr %.114182810.epil.init, i64 32
  br label %.preheader2152

.preheader2152:                                   ; preds = %.lr.ph2814.epil.preheader, %.preheader2152.loopexit.unr-lcssa, %bb.am
  %.lcssa2197 = phi <16 x i32> [ %i.bmx, %bb.am ], [ %i.boo, %.preheader2152.loopexit.unr-lcssa ], [ %i.bnh, %.lr.ph2814.epil.preheader ] ; 2 uses
  %.lcssa2196 = phi <16 x i32> [ %i.bmy, %bb.am ], [ %i.bos, %.preheader2152.loopexit.unr-lcssa ], [ %i.bnl, %.lr.ph2814.epil.preheader ] ; 2 uses
  %.11418.lcssa = phi ptr [ %.014172828, %bb.am ], [ %i.bou, %.preheader2152.loopexit.unr-lcssa ], [ %i.bnn, %.lr.ph2814.epil.preheader ] ; 2 uses
  %.01410.lcssa = phi ptr [ %.32952, %bb.am ], [ %i.bot, %.preheader2152.loopexit.unr-lcssa ], [ %i.bnm, %.lr.ph2814.epil.preheader ]
  %.01408.lcssa = phi i32 [ 0, %bb.am ], [ %i.auc, %.preheader2152.loopexit.unr-lcssa ], [ %i.auc, %.lr.ph2814.epil.preheader ] ; 2 uses
  %i.bno = icmp slt i32 %.01408.lcssa, %8
  br i1 %i.bno, label %.lr.ph2823, label %._crit_edge2824

.lr.ph2814:                                       ; preds = %.lr.ph2814.preheader, %.lr.ph2814
  %.014102811 = phi ptr [ %i.bot, %.lr.ph2814 ], [ %.32952, %.lr.ph2814.preheader ] ; 3 uses
  %.114182810 = phi ptr [ %i.bou, %.lr.ph2814 ], [ %.014172828, %.lr.ph2814.preheader ] ; 3 uses
  %i.bnp = phi <16 x i32> [ %i.bos, %.lr.ph2814 ], [ %i.bmy, %.lr.ph2814.preheader ]
  %i.bnq = phi <16 x i32> [ %i.boo, %.lr.ph2814 ], [ %i.bmx, %.lr.ph2814.preheader ]
  %niter5264 = phi i32 [ %niter5264.next.1, %.lr.ph2814 ], [ 0, %.lr.ph2814.preheader ]
  %i.bnr = load float, ptr %.014102811, align 1, !tbaa !116
  %i.bns = insertelement <8 x float> poison, float %i.bnr, i64 0
  %i.bnt = shufflevector <8 x float> %i.bns, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bnu = load <32 x i8>, ptr %.114182810, align 1, !tbaa !116 ; 2 uses
  %i.bnv = bitcast <8 x float> %i.bnt to <32 x i8>
  %i.bnw = sext <32 x i8> %i.bnv to <32 x i16>    ; 2 uses
  %i.bnx = sext <32 x i8> %i.bnu to <32 x i16>
  %i.bny = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bnw, <32 x i16> %i.bnx)
  %i.bnz = add <16 x i32> %i.bny, %i.bnq
  %i.boa = shufflevector <32 x i8> %i.bnu, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.bob = sext <32 x i8> %i.boa to <32 x i16>
  %i.boc = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bnw, <32 x i16> %i.bob)
  %i.bod = add <16 x i32> %i.boc, %i.bnp
  %i.boe = getelementptr inbounds nuw i8, ptr %.014102811, i64 4
  %i.bof = getelementptr inbounds nuw i8, ptr %.114182810, i64 32
  %i.bog = load float, ptr %i.boe, align 1, !tbaa !116
  %i.boh = insertelement <8 x float> poison, float %i.bog, i64 0
  %i.boi = shufflevector <8 x float> %i.boh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.boj = load <32 x i8>, ptr %i.bof, align 1, !tbaa !116 ; 2 uses
  %i.bok = bitcast <8 x float> %i.boi to <32 x i8>
  %i.bol = sext <32 x i8> %i.bok to <32 x i16>    ; 2 uses
  %i.bom = sext <32 x i8> %i.boj to <32 x i16>
  %i.bon = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bol, <32 x i16> %i.bom)
  %i.boo = add <16 x i32> %i.bon, %i.bnz          ; 3 uses
  %i.bop = shufflevector <32 x i8> %i.boj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.boq = sext <32 x i8> %i.bop to <32 x i16>
  %i.bor = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bol, <32 x i16> %i.boq)
  %i.bos = add <16 x i32> %i.bor, %i.bod          ; 3 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %.014102811, i64 8 ; 3 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %.114182810, i64 64 ; 3 uses
  %niter5264.next.1 = add nuw nsw i32 %niter5264, 2 ; 2 uses
  %niter5264.ncmp.1.not = icmp eq i32 %niter5264.next.1, %unroll_iter5263
  br i1 %niter5264.ncmp.1.not, label %.preheader2152.loopexit.unr-lcssa, label %.lr.ph2814, !llvm.loop !861

.lr.ph2823:                                       ; preds = %.preheader2152, %.lr.ph2823
  %.114092822 = phi i32 [ %i.bpo, %.lr.ph2823 ], [ %.01408.lcssa, %.preheader2152 ]
  %.114112821 = phi ptr [ %i.bpm, %.lr.ph2823 ], [ %.01410.lcssa, %.preheader2152 ] ; 2 uses
  %.214192820 = phi ptr [ %i.bpn, %.lr.ph2823 ], [ %.11418.lcssa, %.preheader2152 ] ; 2 uses
  %i.bov = phi <16 x i32> [ %i.bpl, %.lr.ph2823 ], [ %.lcssa2196, %.preheader2152 ]
  %i.bow = phi <16 x i32> [ %i.bpi, %.lr.ph2823 ], [ %.lcssa2197, %.preheader2152 ]
  %i.box = load i16, ptr %.114112821, align 2, !tbaa !821
  %i.boy = insertelement <8 x i16> poison, i16 %i.box, i64 0
  %i.boz = load <16 x i8>, ptr %.214192820, align 16, !tbaa !116 ; 2 uses
  %i.bpa = bitcast <8 x i16> %i.boy to <16 x i8>
  %i.bpb = shufflevector <16 x i8> %i.bpa, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bpc = sext <16 x i8> %i.bpb to <16 x i16>    ; 2 uses
  %i.bpd = sext <16 x i8> %i.boz to <16 x i16>
  %i.bpe = shufflevector <16 x i8> %i.boz, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bpf = sext <16 x i8> %i.bpe to <16 x i16>
  %i.bpg = mul nsw <16 x i16> %i.bpc, %i.bpd
  %i.bph = sext <16 x i16> %i.bpg to <16 x i32>
  %i.bpi = add <16 x i32> %i.bow, %i.bph          ; 2 uses
  %i.bpj = mul nsw <16 x i16> %i.bpf, %i.bpc
  %i.bpk = sext <16 x i16> %i.bpj to <16 x i32>
  %i.bpl = add <16 x i32> %i.bov, %i.bpk          ; 2 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %.114112821, i64 2
  %i.bpn = getelementptr inbounds nuw i8, ptr %.214192820, i64 16 ; 2 uses
  %i.bpo = add nuw nsw i32 %.114092822, 1         ; 2 uses
  %exitcond3491.not = icmp eq i32 %i.bpo, %8
  br i1 %exitcond3491.not, label %._crit_edge2824, label %.lr.ph2823, !llvm.loop !862

._crit_edge2824:                                  ; preds = %.lr.ph2823, %.preheader2152
  %.lcssa2199 = phi <16 x i32> [ %.lcssa2197, %.preheader2152 ], [ %i.bpi, %.lr.ph2823 ]
  %.lcssa2198 = phi <16 x i32> [ %.lcssa2196, %.preheader2152 ], [ %i.bpl, %.lr.ph2823 ]
  %.21419.lcssa = phi ptr [ %.11418.lcssa, %.preheader2152 ], [ %i.bpn, %.lr.ph2823 ] ; 2 uses
  store <16 x i32> %.lcssa2199, ptr %.192830, align 1, !tbaa !116
  %i.bpp = getelementptr inbounds nuw i8, ptr %.192830, i64 64
  store <16 x i32> %.lcssa2198, ptr %i.bpp, align 1, !tbaa !116
  %i.bpq = getelementptr inbounds nuw i8, ptr %.192830, i64 128 ; 2 uses
  %i.bpr = add nuw nsw i32 %.014122829, 16        ; 2 uses
  %i.bps = or disjoint i32 %i.bpr, 15
  %i.bpt = icmp slt i32 %i.bps, %6
  br i1 %i.bpt, label %.lr.ph2831, label %.preheader2156, !llvm.loop !863

.preheader2155:                                   ; preds = %._crit_edge2849, %.preheader2156
  %.31420.lcssa = phi ptr [ %.01417.lcssa, %.preheader2156 ], [ %.51422.lcssa, %._crit_edge2849 ] ; 2 uses
  %.11413.lcssa = phi i32 [ %.01412.lcssa, %.preheader2156 ], [ %i.bue, %._crit_edge2849 ] ; 3 uses
  %.20.lcssa = phi ptr [ %.19.lcssa, %.preheader2156 ], [ %i.bud, %._crit_edge2849 ] ; 2 uses
  %i.bpu = or disjoint i32 %.11413.lcssa, 3
  %i.bpv = icmp slt i32 %i.bpu, %6
end_hunk_4
begin_hunk_5_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii:bb.a
vector.body4724:                                  ; preds = %vector.body4724, %vector.ph4722
  %index4725 = phi i64 [ 0, %vector.ph4722 ], [ %index.next4774, %vector.body4724 ] ; 3 uses
  %vec.phi4726 = phi <16 x i32> [ %i.czd, %vector.ph4722 ], [ %i.dbn, %vector.body4724 ]
  %vec.phi4727 = phi <16 x i32> [ zeroinitializer, %vector.ph4722 ], [ %i.dbo, %vector.body4724 ]
  %vec.phi4728 = phi <16 x i32> [ zeroinitializer, %vector.ph4722 ], [ %i.dbp, %vector.body4724 ]
  %vec.phi4729 = phi <16 x i32> [ zeroinitializer, %vector.ph4722 ], [ %i.dbq, %vector.body4724 ]
  %vec.phi4730 = phi <16 x i32> [ %i.cze, %vector.ph4722 ], [ %i.dap, %vector.body4724 ]
  %vec.phi4731 = phi <16 x i32> [ zeroinitializer, %vector.ph4722 ], [ %i.daq, %vector.body4724 ]
  %vec.phi4732 = phi <16 x i32> [ zeroinitializer, %vector.ph4722 ], [ %i.dar, %vector.body4724 ]
  %vec.phi4733 = phi <16 x i32> [ zeroinitializer, %vector.ph4722 ], [ %i.das, %vector.body4724 ]
  %i.czf = shl i64 %index4725, 1                  ; 4 uses
  %next.gep4734 = getelementptr i8, ptr %.43113, i64 %i.czf
  %i.czg = getelementptr i8, ptr %.43113, i64 %i.czf
  %next.gep4735 = getelementptr i8, ptr %i.czg, i64 32
  %i.czh = getelementptr i8, ptr %.43113, i64 %i.czf
  %next.gep4736 = getelementptr i8, ptr %i.czh, i64 64
  %i.czi = getelementptr i8, ptr %.43113, i64 %i.czf
  %next.gep4737 = getelementptr i8, ptr %i.czi, i64 96
  %i.czj = shl i64 %index4725, 2                  ; 4 uses
  %next.gep4738 = getelementptr i8, ptr %.912893072, i64 %i.czj
  %i.czk = getelementptr i8, ptr %.912893072, i64 %i.czj
  %next.gep4739 = getelementptr i8, ptr %i.czk, i64 64
  %i.czl = getelementptr i8, ptr %.912893072, i64 %i.czj
  %next.gep4740 = getelementptr i8, ptr %i.czl, i64 128
  %i.czm = getelementptr i8, ptr %.912893072, i64 %i.czj
  %next.gep4741 = getelementptr i8, ptr %i.czm, i64 192
  %wide.vec4742 = load <32 x i8>, ptr %next.gep4734, align 1, !tbaa !116 ; 2 uses
  %strided.vec4743 = shufflevector <32 x i8> %wide.vec4742, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec4744 = shufflevector <32 x i8> %wide.vec4742, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec4745 = load <32 x i8>, ptr %next.gep4735, align 1, !tbaa !116 ; 2 uses
  %strided.vec4746 = shufflevector <32 x i8> %wide.vec4745, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec4747 = shufflevector <32 x i8> %wide.vec4745, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec4748 = load <32 x i8>, ptr %next.gep4736, align 1, !tbaa !116 ; 2 uses
  %strided.vec4749 = shufflevector <32 x i8> %wide.vec4748, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec4750 = shufflevector <32 x i8> %wide.vec4748, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec4751 = load <32 x i8>, ptr %next.gep4737, align 1, !tbaa !116 ; 2 uses
  %strided.vec4752 = shufflevector <32 x i8> %wide.vec4751, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec4753 = shufflevector <32 x i8> %wide.vec4751, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.czn = sext <16 x i8> %strided.vec4743 to <16 x i32> ; 2 uses
  %i.czo = sext <16 x i8> %strided.vec4746 to <16 x i32> ; 2 uses
  %i.czp = sext <16 x i8> %strided.vec4749 to <16 x i32> ; 2 uses
  %i.czq = sext <16 x i8> %strided.vec4752 to <16 x i32> ; 2 uses
  %wide.vec4754 = load <64 x i8>, ptr %next.gep4738, align 1, !tbaa !116 ; 4 uses
  %strided.vec4755 = shufflevector <64 x i8> %wide.vec4754, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec4756 = shufflevector <64 x i8> %wide.vec4754, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec4757 = shufflevector <64 x i8> %wide.vec4754, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec4758 = shufflevector <64 x i8> %wide.vec4754, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec4759 = load <64 x i8>, ptr %next.gep4739, align 1, !tbaa !116 ; 4 uses
  %strided.vec4760 = shufflevector <64 x i8> %wide.vec4759, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec4761 = shufflevector <64 x i8> %wide.vec4759, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec4762 = shufflevector <64 x i8> %wide.vec4759, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec4763 = shufflevector <64 x i8> %wide.vec4759, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec4764 = load <64 x i8>, ptr %next.gep4740, align 1, !tbaa !116 ; 4 uses
  %strided.vec4765 = shufflevector <64 x i8> %wide.vec4764, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec4766 = shufflevector <64 x i8> %wide.vec4764, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec4767 = shufflevector <64 x i8> %wide.vec4764, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec4768 = shufflevector <64 x i8> %wide.vec4764, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec4769 = load <64 x i8>, ptr %next.gep4741, align 1, !tbaa !116 ; 4 uses
  %strided.vec4770 = shufflevector <64 x i8> %wide.vec4769, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec4771 = shufflevector <64 x i8> %wide.vec4769, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec4772 = shufflevector <64 x i8> %wide.vec4769, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec4773 = shufflevector <64 x i8> %wide.vec4769, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.czr = sext <16 x i8> %strided.vec4755 to <16 x i32>
  %i.czs = sext <16 x i8> %strided.vec4760 to <16 x i32>
  %i.czt = sext <16 x i8> %strided.vec4765 to <16 x i32>
  %i.czu = sext <16 x i8> %strided.vec4770 to <16 x i32>
  %i.czv = mul nsw <16 x i32> %i.czr, %i.czn
  %i.czw = mul nsw <16 x i32> %i.czs, %i.czo
  %i.czx = mul nsw <16 x i32> %i.czt, %i.czp
  %i.czy = mul nsw <16 x i32> %i.czu, %i.czq
  %i.czz = add <16 x i32> %i.czv, %vec.phi4730
  %i.daa = add <16 x i32> %i.czw, %vec.phi4731
  %i.dab = add <16 x i32> %i.czx, %vec.phi4732
  %i.dac = add <16 x i32> %i.czy, %vec.phi4733
  %i.dad = sext <16 x i8> %strided.vec4744 to <16 x i32> ; 2 uses
  %i.dae = sext <16 x i8> %strided.vec4747 to <16 x i32> ; 2 uses
  %i.daf = sext <16 x i8> %strided.vec4750 to <16 x i32> ; 2 uses
  %i.dag = sext <16 x i8> %strided.vec4753 to <16 x i32> ; 2 uses
  %i.dah = sext <16 x i8> %strided.vec4756 to <16 x i32>
  %i.dai = sext <16 x i8> %strided.vec4761 to <16 x i32>
  %i.daj = sext <16 x i8> %strided.vec4766 to <16 x i32>
  %i.dak = sext <16 x i8> %strided.vec4771 to <16 x i32>
  %i.dal = mul nsw <16 x i32> %i.dah, %i.dad
  %i.dam = mul nsw <16 x i32> %i.dai, %i.dae
  %i.dan = mul nsw <16 x i32> %i.daj, %i.daf
  %i.dao = mul nsw <16 x i32> %i.dak, %i.dag
  %i.dap = add <16 x i32> %i.czz, %i.dal          ; 2 uses
  %i.daq = add <16 x i32> %i.daa, %i.dam          ; 2 uses
  %i.dar = add <16 x i32> %i.dab, %i.dan          ; 2 uses
  %i.das = add <16 x i32> %i.dac, %i.dao          ; 2 uses
  %i.dat = sext <16 x i8> %strided.vec4757 to <16 x i32>
  %i.dau = sext <16 x i8> %strided.vec4762 to <16 x i32>
  %i.dav = sext <16 x i8> %strided.vec4767 to <16 x i32>
  %i.daw = sext <16 x i8> %strided.vec4772 to <16 x i32>
  %i.dax = mul nsw <16 x i32> %i.dat, %i.czn
  %i.day = mul nsw <16 x i32> %i.dau, %i.czo
  %i.daz = mul nsw <16 x i32> %i.dav, %i.czp
  %i.dba = mul nsw <16 x i32> %i.daw, %i.czq
  %i.dbb = add <16 x i32> %i.dax, %vec.phi4726
  %i.dbc = add <16 x i32> %i.day, %vec.phi4727
  %i.dbd = add <16 x i32> %i.daz, %vec.phi4728
  %i.dbe = add <16 x i32> %i.dba, %vec.phi4729
  %i.dbf = sext <16 x i8> %strided.vec4758 to <16 x i32>
  %i.dbg = sext <16 x i8> %strided.vec4763 to <16 x i32>
  %i.dbh = sext <16 x i8> %strided.vec4768 to <16 x i32>
  %i.dbi = sext <16 x i8> %strided.vec4773 to <16 x i32>
  %i.dbj = mul nsw <16 x i32> %i.dbf, %i.dad
  %i.dbk = mul nsw <16 x i32> %i.dbg, %i.dae
  %i.dbl = mul nsw <16 x i32> %i.dbh, %i.daf
  %i.dbm = mul nsw <16 x i32> %i.dbi, %i.dag
  %i.dbn = add <16 x i32> %i.dbb, %i.dbj          ; 2 uses
  %i.dbo = add <16 x i32> %i.dbc, %i.dbk          ; 2 uses
  %i.dbp = add <16 x i32> %i.dbd, %i.dbl          ; 2 uses
  %i.dbq = add <16 x i32> %i.dbe, %i.dbm          ; 2 uses
  %index.next4774 = add nuw i64 %index4725, 64    ; 2 uses
  %i.dbr = icmp eq i64 %index.next4774, %n.vec4723
  br i1 %i.dbr, label %middle.block4775, label %vector.body4724, !llvm.loop !895

middle.block4775:                                 ; preds = %vector.body4724
  %bin.rdx4776 = add <16 x i32> %i.dbo, %i.dbn
  %bin.rdx4777 = add <16 x i32> %i.dbp, %bin.rdx4776
  %bin.rdx4778 = add <16 x i32> %i.dbq, %bin.rdx4777
  %i.dbs = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx4778) ; 3 uses
  %bin.rdx4779 = add <16 x i32> %i.daq, %i.dap
  %bin.rdx4780 = add <16 x i32> %i.dar, %bin.rdx4779
  %bin.rdx4781 = add <16 x i32> %i.das, %bin.rdx4780
  %i.dbt = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx4781) ; 3 uses
  br i1 %cmp.n4782, label %.preheader.loopexit, label %vec.epilog.iter.check4790

vec.epilog.iter.check4790:                        ; preds = %middle.block4775
  br i1 %min.epilog.iters.check4791, label %.lr.ph3031.preheader, label %vec.epilog.ph4792, !prof !78

vec.epilog.ph4792:                                ; preds = %vector.main.loop.iter.check4720, %vec.epilog.iter.check4790
  %vec.epilog.resume.val4783 = phi i64 [ %n.vec4723, %vec.epilog.iter.check4790 ], [ 0, %vector.main.loop.iter.check4720 ]
  %bc.merge.rdx4785 = phi i32 [ %i.dbs, %vec.epilog.iter.check4790 ], [ %.01204, %vector.main.loop.iter.check4720 ]
  %bc.merge.rdx4786 = phi i32 [ %i.dbt, %vec.epilog.iter.check4790 ], [ %.01207, %vector.main.loop.iter.check4720 ]
  %i.dbu = getelementptr i8, ptr %.912893072, i64 %i.bmk
  %i.dbv = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4785, i64 0
  %i.dbw = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4786, i64 0
  br label %vec.epilog.vector.body4794

vec.epilog.vector.body4794:                       ; preds = %vec.epilog.vector.body4794, %vec.epilog.ph4792
  %index4795 = phi i64 [ %vec.epilog.resume.val4783, %vec.epilog.ph4792 ], [ %index.next4808, %vec.epilog.vector.body4794 ] ; 3 uses
  %vec.phi4796 = phi <8 x i32> [ %i.dbv, %vec.epilog.ph4792 ], [ %i.dcm, %vec.epilog.vector.body4794 ]
  %vec.phi4797 = phi <8 x i32> [ %i.dbw, %vec.epilog.ph4792 ], [ %i.dcg, %vec.epilog.vector.body4794 ]
  %i.dbx = shl i64 %index4795, 1
  %next.gep4798 = getelementptr i8, ptr %.43113, i64 %i.dbx
  %i.dby = shl i64 %index4795, 2
  %next.gep4799 = getelementptr i8, ptr %.912893072, i64 %i.dby
  %wide.vec4800 = load <16 x i8>, ptr %next.gep4798, align 1, !tbaa !116 ; 2 uses
  %strided.vec4801 = shufflevector <16 x i8> %wide.vec4800, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4802 = shufflevector <16 x i8> %wide.vec4800, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.dbz = sext <8 x i8> %strided.vec4801 to <8 x i32> ; 2 uses
  %wide.vec4803 = load <32 x i8>, ptr %next.gep4799, align 1, !tbaa !116 ; 4 uses
  %strided.vec4804 = shufflevector <32 x i8> %wide.vec4803, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec4805 = shufflevector <32 x i8> %wide.vec4803, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec4806 = shufflevector <32 x i8> %wide.vec4803, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec4807 = shufflevector <32 x i8> %wide.vec4803, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.dca = sext <8 x i8> %strided.vec4804 to <8 x i32>
  %i.dcb = mul nsw <8 x i32> %i.dca, %i.dbz
  %i.dcc = add <8 x i32> %i.dcb, %vec.phi4797
  %i.dcd = sext <8 x i8> %strided.vec4802 to <8 x i32> ; 2 uses
  %i.dce = sext <8 x i8> %strided.vec4805 to <8 x i32>
  %i.dcf = mul nsw <8 x i32> %i.dce, %i.dcd
  %i.dcg = add <8 x i32> %i.dcc, %i.dcf           ; 2 uses
  %i.dch = sext <8 x i8> %strided.vec4806 to <8 x i32>
  %i.dci = mul nsw <8 x i32> %i.dch, %i.dbz
  %i.dcj = add <8 x i32> %i.dci, %vec.phi4796
  %i.dck = sext <8 x i8> %strided.vec4807 to <8 x i32>
  %i.dcl = mul nsw <8 x i32> %i.dck, %i.dcd
  %i.dcm = add <8 x i32> %i.dcj, %i.dcl           ; 2 uses
  %index.next4808 = add nuw i64 %index4795, 8     ; 2 uses
  %i.dcn = icmp eq i64 %index.next4808, %n.vec4793
  br i1 %i.dcn, label %vec.epilog.middle.block4809, label %vec.epilog.vector.body4794, !llvm.loop !896

vec.epilog.middle.block4809:                      ; preds = %vec.epilog.vector.body4794
  %i.dco = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dcm) ; 2 uses
  %i.dcp = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dcg) ; 2 uses
  br i1 %cmp.n4810, label %.preheader.loopexit, label %.lr.ph3031.preheader

.lr.ph3031.preheader:                             ; preds = %iter.check4788, %vec.epilog.iter.check4790, %vec.epilog.middle.block4809
  %.011993029.ph = phi i32 [ 0, %iter.check4788 ], [ %i.bme, %vec.epilog.iter.check4790 ], [ %i.bmi, %vec.epilog.middle.block4809 ]
  %.012013028.ph = phi ptr [ %.43113, %iter.check4788 ], [ %i.cvo, %vec.epilog.iter.check4790 ], [ %i.cvp, %vec.epilog.middle.block4809 ]
  %.112053027.ph = phi i32 [ %.01204, %iter.check4788 ], [ %i.dbs, %vec.epilog.iter.check4790 ], [ %i.dco, %vec.epilog.middle.block4809 ]
  %.112083026.ph = phi i32 [ %.01207, %iter.check4788 ], [ %i.dbt, %vec.epilog.iter.check4790 ], [ %i.dcp, %vec.epilog.middle.block4809 ]
  %.1012903025.ph = phi ptr [ %.912893072, %iter.check4788 ], [ %i.czc, %vec.epilog.iter.check4790 ], [ %i.dbu, %vec.epilog.middle.block4809 ]
  br label %.lr.ph3031

.preheader.loopexit:                              ; preds = %.lr.ph3031, %vec.epilog.middle.block4809, %middle.block4775
  %.lcssa3848 = phi i32 [ %i.dcp, %vec.epilog.middle.block4809 ], [ %i.dbt, %middle.block4775 ], [ %i.dhg, %.lr.ph3031 ]
  %.lcssa3847 = phi i32 [ %i.dco, %vec.epilog.middle.block4809 ], [ %i.dbs, %middle.block4775 ], [ %i.dhq, %.lr.ph3031 ]
  %i.dcq = getelementptr i8, ptr %.912893072, i64 %i.bln
  %scevgep3512 = getelementptr i8, ptr %i.dcq, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.bc
  %.101290.lcssa = phi ptr [ %.912893072, %bb.bc ], [ %scevgep3512, %.preheader.loopexit ] ; 6 uses
  %.11208.lcssa = phi i32 [ %.01207, %bb.bc ], [ %.lcssa3848, %.preheader.loopexit ]
  %.11205.lcssa = phi i32 [ %.01204, %bb.bc ], [ %.lcssa3847, %.preheader.loopexit ]
  %.01201.lcssa = phi ptr [ %.43113, %bb.bc ], [ %indvars.iv3508, %.preheader.loopexit ] ; 6 uses
  %.01199.lcssa = phi i32 [ 0, %bb.bc ], [ %i.blf, %.preheader.loopexit ] ; 6 uses
  %i.dcr = add nuw nsw i32 %.01199.lcssa, 3
  %i.dcs = icmp slt i32 %i.dcr, %8
  br i1 %i.dcs, label %iter.check4673, label %._crit_edge3049

iter.check4673:                                   ; preds = %.preheader
  %i.dct = sub i32 %9, %.01199.lcssa              ; 3 uses
  %i.dcu = lshr i32 %i.dct, 2
  %narrow4816 = add nuw nsw i32 %i.dcu, 1
  %i.dcv = zext nneg i32 %narrow4816 to i64       ; 5 uses
  %min.iters.check4628 = icmp ult i32 %i.dct, 12
  br i1 %min.iters.check4628, label %.lr.ph3048.preheader, label %vector.main.loop.iter.check4629

vector.main.loop.iter.check4629:                  ; preds = %iter.check4673
  %min.iters.check4630 = icmp ult i32 %i.dct, 60
  br i1 %min.iters.check4630, label %vec.epilog.ph4677, label %vector.ph4631

vector.ph4631:                                    ; preds = %vector.main.loop.iter.check4629
  %i.dcw = and i64 %i.dcv, 12
  %n.vec4632 = and i64 %i.dcv, 2147483632         ; 6 uses
  %i.dcx = trunc nuw nsw i64 %n.vec4632 to i32
  %i.dcy = shl i32 %i.dcx, 2
  %i.dcz = add i32 %.01199.lcssa, %i.dcy          ; 2 uses
  %i.dda = shl nuw nsw i64 %n.vec4632, 2
  %i.ddb = getelementptr i8, ptr %.01201.lcssa, i64 %i.dda ; 2 uses
  %i.ddc = shl nuw nsw i64 %n.vec4632, 3
  %i.ddd = getelementptr i8, ptr %.101290.lcssa, i64 %i.ddc ; 2 uses
  br label %vector.body4633

vector.body4633:                                  ; preds = %vector.body4633, %vector.ph4631
  %index4634 = phi i64 [ 0, %vector.ph4631 ], [ %index.next4659, %vector.body4633 ] ; 3 uses
  %vec.phi4635 = phi <16 x i32> [ zeroinitializer, %vector.ph4631 ], [ %i.deh, %vector.body4633 ]
  %vec.phi4636 = phi <16 x i32> [ zeroinitializer, %vector.ph4631 ], [ %i.dea, %vector.body4633 ]
  %vec.phi4637 = phi <16 x i32> [ zeroinitializer, %vector.ph4631 ], [ %i.ddt, %vector.body4633 ]
  %vec.phi4638 = phi <16 x i32> [ zeroinitializer, %vector.ph4631 ], [ %i.ddm, %vector.body4633 ]
  %vec.phi4639 = phi <16 x i32> [ zeroinitializer, %vector.ph4631 ], [ %i.dee, %vector.body4633 ]
  %vec.phi4640 = phi <16 x i32> [ zeroinitializer, %vector.ph4631 ], [ %i.ddx, %vector.body4633 ]
  %vec.phi4641 = phi <16 x i32> [ zeroinitializer, %vector.ph4631 ], [ %i.ddq, %vector.body4633 ]
  %vec.phi4642 = phi <16 x i32> [ zeroinitializer, %vector.ph4631 ], [ %i.ddj, %vector.body4633 ]
  %i.dde = shl i64 %index4634, 2
  %next.gep4643 = getelementptr i8, ptr %.01201.lcssa, i64 %i.dde
  %i.ddf = shl i64 %index4634, 3
  %next.gep4644 = getelementptr i8, ptr %.101290.lcssa, i64 %i.ddf
  %wide.vec4645 = load <64 x i8>, ptr %next.gep4643, align 1, !tbaa !116 ; 4 uses
  %strided.vec4646 = shufflevector <64 x i8> %wide.vec4645, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec4647 = shufflevector <64 x i8> %wide.vec4645, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec4648 = shufflevector <64 x i8> %wide.vec4645, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec4649 = shufflevector <64 x i8> %wide.vec4645, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ddg = sext <16 x i8> %strided.vec4646 to <16 x i32> ; 2 uses
  %wide.vec4650 = load <128 x i8>, ptr %next.gep4644, align 1, !tbaa !116 ; 8 uses
  %strided.vec4651 = shufflevector <128 x i8> %wide.vec4650, <128 x i8> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec4652 = shufflevector <128 x i8> %wide.vec4650, <128 x i8> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec4653 = shufflevector <128 x i8> %wide.vec4650, <128 x i8> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec4654 = shufflevector <128 x i8> %wide.vec4650, <128 x i8> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec4655 = shufflevector <128 x i8> %wide.vec4650, <128 x i8> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec4656 = shufflevector <128 x i8> %wide.vec4650, <128 x i8> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec4657 = shufflevector <128 x i8> %wide.vec4650, <128 x i8> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec4658 = shufflevector <128 x i8> %wide.vec4650, <128 x i8> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %i.ddh = sext <16 x i8> %strided.vec4651 to <16 x i32>
  %i.ddi = mul nsw <16 x i32> %i.ddh, %i.ddg
  %i.ddj = add <16 x i32> %i.ddi, %vec.phi4642    ; 2 uses
  %i.ddk = sext <16 x i8> %strided.vec4652 to <16 x i32>
  %i.ddl = mul nsw <16 x i32> %i.ddk, %i.ddg
  %i.ddm = add <16 x i32> %i.ddl, %vec.phi4638    ; 2 uses
  %i.ddn = sext <16 x i8> %strided.vec4647 to <16 x i32> ; 2 uses
  %i.ddo = sext <16 x i8> %strided.vec4653 to <16 x i32>
  %i.ddp = mul nsw <16 x i32> %i.ddo, %i.ddn
  %i.ddq = add <16 x i32> %i.ddp, %vec.phi4641    ; 2 uses
  %i.ddr = sext <16 x i8> %strided.vec4654 to <16 x i32>
  %i.dds = mul nsw <16 x i32> %i.ddr, %i.ddn
  %i.ddt = add <16 x i32> %i.dds, %vec.phi4637    ; 2 uses
  %i.ddu = sext <16 x i8> %strided.vec4648 to <16 x i32> ; 2 uses
  %i.ddv = sext <16 x i8> %strided.vec4655 to <16 x i32>
  %i.ddw = mul nsw <16 x i32> %i.ddv, %i.ddu
  %i.ddx = add <16 x i32> %i.ddw, %vec.phi4640    ; 2 uses
  %i.ddy = sext <16 x i8> %strided.vec4656 to <16 x i32>
  %i.ddz = mul nsw <16 x i32> %i.ddy, %i.ddu
  %i.dea = add <16 x i32> %i.ddz, %vec.phi4636    ; 2 uses
  %i.deb = sext <16 x i8> %strided.vec4649 to <16 x i32> ; 2 uses
  %i.dec = sext <16 x i8> %strided.vec4657 to <16 x i32>
  %i.ded = mul nsw <16 x i32> %i.dec, %i.deb
  %i.dee = add <16 x i32> %i.ded, %vec.phi4639    ; 2 uses
  %i.def = sext <16 x i8> %strided.vec4658 to <16 x i32>
  %i.deg = mul nsw <16 x i32> %i.def, %i.deb
  %i.deh = add <16 x i32> %i.deg, %vec.phi4635    ; 2 uses
  %index.next4659 = add nuw i64 %index4634, 16    ; 2 uses
  %i.dei = icmp eq i64 %index.next4659, %n.vec4632
  br i1 %i.dei, label %middle.block4660, label %vector.body4633, !llvm.loop !897

middle.block4660:                                 ; preds = %vector.body4633
  %i.dej = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.deh) ; 3 uses
  %i.dek = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.dea) ; 3 uses
  %i.del = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ddt) ; 3 uses
  %i.dem = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ddm) ; 3 uses
  %i.den = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.dee) ; 3 uses
  %i.deo = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ddx) ; 3 uses
  %i.dep = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ddq) ; 3 uses
  %i.deq = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ddj) ; 3 uses
  %cmp.n4661 = icmp eq i64 %n.vec4632, %i.dcv
  br i1 %cmp.n4661, label %._crit_edge3049, label %vec.epilog.iter.check4675

vec.epilog.iter.check4675:                        ; preds = %middle.block4660
  %min.epilog.iters.check4676 = icmp eq i64 %i.dcw, 0
  br i1 %min.epilog.iters.check4676, label %.lr.ph3048.preheader, label %vec.epilog.ph4677, !prof !215

vec.epilog.ph4677:                                ; preds = %vector.main.loop.iter.check4629, %vec.epilog.iter.check4675
  %vec.epilog.resume.val4662 = phi i64 [ %n.vec4632, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %bc.merge.rdx4663 = phi i32 [ %i.dej, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %bc.merge.rdx4664 = phi i32 [ %i.dek, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %bc.merge.rdx4665 = phi i32 [ %i.del, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %bc.merge.rdx4666 = phi i32 [ %i.dem, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %bc.merge.rdx4667 = phi i32 [ %i.den, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %bc.merge.rdx4668 = phi i32 [ %i.deo, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %bc.merge.rdx4669 = phi i32 [ %i.dep, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %bc.merge.rdx4670 = phi i32 [ %i.deq, %vec.epilog.iter.check4675 ], [ 0, %vector.main.loop.iter.check4629 ]
  %n.vec4678 = and i64 %i.dcv, 2147483644         ; 5 uses
  %i.der = trunc nuw nsw i64 %n.vec4678 to i32
  %i.des = shl i32 %i.der, 2
  %i.det = add i32 %.01199.lcssa, %i.des          ; 2 uses
  %i.deu = shl nuw nsw i64 %n.vec4678, 2
  %i.dev = getelementptr i8, ptr %.01201.lcssa, i64 %i.deu ; 2 uses
  %i.dew = shl nuw nsw i64 %n.vec4678, 3
  %i.dex = getelementptr i8, ptr %.101290.lcssa, i64 %i.dew ; 2 uses
  %i.dey = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4663, i64 0
  %i.dez = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4664, i64 0
  %i.dfa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4665, i64 0
  %i.dfb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4666, i64 0
  %i.dfc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4667, i64 0
  %i.dfd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4668, i64 0
  %i.dfe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4669, i64 0
  %i.dff = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx4670, i64 0
  br label %vec.epilog.vector.body4679

vec.epilog.vector.body4679:                       ; preds = %vec.epilog.vector.body4679, %vec.epilog.ph4677
  %index4680 = phi i64 [ %vec.epilog.resume.val4662, %vec.epilog.ph4677 ], [ %index.next4705, %vec.epilog.vector.body4679 ] ; 3 uses
  %vec.phi4681 = phi <4 x i32> [ %i.dey, %vec.epilog.ph4677 ], [ %i.dgj, %vec.epilog.vector.body4679 ]
  %vec.phi4682 = phi <4 x i32> [ %i.dez, %vec.epilog.ph4677 ], [ %i.dgc, %vec.epilog.vector.body4679 ]
  %vec.phi4683 = phi <4 x i32> [ %i.dfa, %vec.epilog.ph4677 ], [ %i.dfv, %vec.epilog.vector.body4679 ]
  %vec.phi4684 = phi <4 x i32> [ %i.dfb, %vec.epilog.ph4677 ], [ %i.dfo, %vec.epilog.vector.body4679 ]
  %vec.phi4685 = phi <4 x i32> [ %i.dfc, %vec.epilog.ph4677 ], [ %i.dgg, %vec.epilog.vector.body4679 ]
  %vec.phi4686 = phi <4 x i32> [ %i.dfd, %vec.epilog.ph4677 ], [ %i.dfz, %vec.epilog.vector.body4679 ]
  %vec.phi4687 = phi <4 x i32> [ %i.dfe, %vec.epilog.ph4677 ], [ %i.dfs, %vec.epilog.vector.body4679 ]
  %vec.phi4688 = phi <4 x i32> [ %i.dff, %vec.epilog.ph4677 ], [ %i.dfl, %vec.epilog.vector.body4679 ]
  %i.dfg = shl i64 %index4680, 2
  %next.gep4689 = getelementptr i8, ptr %.01201.lcssa, i64 %i.dfg
  %i.dfh = shl i64 %index4680, 3
  %next.gep4690 = getelementptr i8, ptr %.101290.lcssa, i64 %i.dfh
  %wide.vec4691 = load <16 x i8>, ptr %next.gep4689, align 1, !tbaa !116 ; 4 uses
  %strided.vec4692 = shufflevector <16 x i8> %wide.vec4691, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec4693 = shufflevector <16 x i8> %wide.vec4691, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec4694 = shufflevector <16 x i8> %wide.vec4691, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec4695 = shufflevector <16 x i8> %wide.vec4691, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.dfi = sext <4 x i8> %strided.vec4692 to <4 x i32> ; 2 uses
  %wide.vec4696 = load <32 x i8>, ptr %next.gep4690, align 1, !tbaa !116 ; 8 uses
  %strided.vec4697 = shufflevector <32 x i8> %wide.vec4696, <32 x i8> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec4698 = shufflevector <32 x i8> %wide.vec4696, <32 x i8> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec4699 = shufflevector <32 x i8> %wide.vec4696, <32 x i8> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec4700 = shufflevector <32 x i8> %wide.vec4696, <32 x i8> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec4701 = shufflevector <32 x i8> %wide.vec4696, <32 x i8> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec4702 = shufflevector <32 x i8> %wide.vec4696, <32 x i8> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec4703 = shufflevector <32 x i8> %wide.vec4696, <32 x i8> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec4704 = shufflevector <32 x i8> %wide.vec4696, <32 x i8> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.dfj = sext <4 x i8> %strided.vec4697 to <4 x i32>
  %i.dfk = mul nsw <4 x i32> %i.dfj, %i.dfi
  %i.dfl = add <4 x i32> %i.dfk, %vec.phi4688     ; 2 uses
  %i.dfm = sext <4 x i8> %strided.vec4698 to <4 x i32>
  %i.dfn = mul nsw <4 x i32> %i.dfm, %i.dfi
  %i.dfo = add <4 x i32> %i.dfn, %vec.phi4684     ; 2 uses
  %i.dfp = sext <4 x i8> %strided.vec4693 to <4 x i32> ; 2 uses
  %i.dfq = sext <4 x i8> %strided.vec4699 to <4 x i32>
  %i.dfr = mul nsw <4 x i32> %i.dfq, %i.dfp
  %i.dfs = add <4 x i32> %i.dfr, %vec.phi4687     ; 2 uses
  %i.dft = sext <4 x i8> %strided.vec4700 to <4 x i32>
  %i.dfu = mul nsw <4 x i32> %i.dft, %i.dfp
  %i.dfv = add <4 x i32> %i.dfu, %vec.phi4683     ; 2 uses
  %i.dfw = sext <4 x i8> %strided.vec4694 to <4 x i32> ; 2 uses
  %i.dfx = sext <4 x i8> %strided.vec4701 to <4 x i32>
  %i.dfy = mul nsw <4 x i32> %i.dfx, %i.dfw
  %i.dfz = add <4 x i32> %i.dfy, %vec.phi4686     ; 2 uses
  %i.dga = sext <4 x i8> %strided.vec4702 to <4 x i32>
  %i.dgb = mul nsw <4 x i32> %i.dga, %i.dfw
  %i.dgc = add <4 x i32> %i.dgb, %vec.phi4682     ; 2 uses
  %i.dgd = sext <4 x i8> %strided.vec4695 to <4 x i32> ; 2 uses
  %i.dge = sext <4 x i8> %strided.vec4703 to <4 x i32>
  %i.dgf = mul nsw <4 x i32> %i.dge, %i.dgd
  %i.dgg = add <4 x i32> %i.dgf, %vec.phi4685     ; 2 uses
  %i.dgh = sext <4 x i8> %strided.vec4704 to <4 x i32>
  %i.dgi = mul nsw <4 x i32> %i.dgh, %i.dgd
  %i.dgj = add <4 x i32> %i.dgi, %vec.phi4681     ; 2 uses
  %index.next4705 = add nuw i64 %index4680, 4     ; 2 uses
  %i.dgk = icmp eq i64 %index.next4705, %n.vec4678
  br i1 %i.dgk, label %vec.epilog.middle.block4706, label %vec.epilog.vector.body4679, !llvm.loop !898

vec.epilog.middle.block4706:                      ; preds = %vec.epilog.vector.body4679
  %i.dgl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dgj) ; 2 uses
  %i.dgm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dgc) ; 2 uses
  %i.dgn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dfv) ; 2 uses
  %i.dgo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dfo) ; 2 uses
  %i.dgp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dgg) ; 2 uses
  %i.dgq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dfz) ; 2 uses
  %i.dgr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dfs) ; 2 uses
  %i.dgs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dfl) ; 2 uses
  %cmp.n4707 = icmp eq i64 %n.vec4678, %i.dcv
  br i1 %cmp.n4707, label %._crit_edge3049, label %.lr.ph3048.preheader

.lr.ph3048.preheader:                             ; preds = %iter.check4673, %vec.epilog.iter.check4675, %vec.epilog.middle.block4706
  %.011913047.ph = phi i32 [ 0, %iter.check4673 ], [ %i.dej, %vec.epilog.iter.check4675 ], [ %i.dgl, %vec.epilog.middle.block4706 ]
end_hunk_5
begin_hunk_6_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %.0259298.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph302.preheader ], [ %i.au, %middle.block ] ; 4 uses
  %.0260297.ph = phi ptr [ %i.ek, %vector.memcheck ], [ %i.ek, %.lr.ph302.preheader ], [ %i.fh, %middle.block ] ; 3 uses
  %.0261296.ph = phi ptr [ %i.el, %vector.memcheck ], [ %i.el, %.lr.ph302.preheader ], [ %i.fi, %middle.block ] ; 3 uses
  %i.fo = sub i32 %5, %.0259298.ph
  %.neg966 = add i32 %.0259298.ph, 1
  %xtraiter919 = and i32 %i.fo, 1
  %lcmp.mod920.not = icmp eq i32 %xtraiter919, 0
  br i1 %lcmp.mod920.not, label %.lr.ph302.prol.loopexit, label %.lr.ph302.prol

.lr.ph302.prol:                                   ; preds = %.lr.ph302.preheader910
  %i.fp = load i64, ptr %.4229300.ph, align 1, !tbaa !116
  store i64 %i.fp, ptr %.5301.ph, align 1, !tbaa !116
  %i.fq = getelementptr inbounds nuw i8, ptr %.5301.ph, i64 8
  %i.fr = load i64, ptr %.0257299.ph, align 1, !tbaa !116
  store i64 %i.fr, ptr %i.fq, align 1, !tbaa !116
  %i.fs = getelementptr inbounds nuw i8, ptr %.5301.ph, i64 16
  %i.ft = load i64, ptr %.0261296.ph, align 1, !tbaa !116
  store i64 %i.ft, ptr %i.fs, align 1, !tbaa !116
  %i.fu = getelementptr inbounds nuw i8, ptr %.5301.ph, i64 24
  %i.fv = load i64, ptr %.0260297.ph, align 1, !tbaa !116
  store i64 %i.fv, ptr %i.fu, align 1, !tbaa !116
  %i.fw = getelementptr inbounds nuw i8, ptr %.5301.ph, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.4229300.ph, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.0257299.ph, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.0261296.ph, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.0260297.ph, i64 8
  %i.gb = add nuw nsw i32 %.0259298.ph, 1
  br label %.lr.ph302.prol.loopexit

.lr.ph302.prol.loopexit:                          ; preds = %.lr.ph302.prol, %.lr.ph302.preheader910
  %.lcssa914.unr = phi ptr [ poison, %.lr.ph302.preheader910 ], [ %i.fw, %.lr.ph302.prol ]
  %.5301.unr = phi ptr [ %.5301.ph, %.lr.ph302.preheader910 ], [ %i.fw, %.lr.ph302.prol ]
  %.4229300.unr = phi ptr [ %.4229300.ph, %.lr.ph302.preheader910 ], [ %i.fx, %.lr.ph302.prol ]
  %.0257299.unr = phi ptr [ %.0257299.ph, %.lr.ph302.preheader910 ], [ %i.fy, %.lr.ph302.prol ]
  %.0259298.unr = phi i32 [ %.0259298.ph, %.lr.ph302.preheader910 ], [ %i.gb, %.lr.ph302.prol ]
  %.0260297.unr = phi ptr [ %.0260297.ph, %.lr.ph302.preheader910 ], [ %i.ga, %.lr.ph302.prol ]
  %.0261296.unr = phi ptr [ %.0261296.ph, %.lr.ph302.preheader910 ], [ %i.fz, %.lr.ph302.prol ]
  %i.gc = icmp eq i32 %5, %.neg966
  br i1 %i.gc, label %.loopexit280, label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.prol.loopexit, %.lr.ph302
  %.5301 = phi ptr [ %i.gw, %.lr.ph302 ], [ %.5301.unr, %.lr.ph302.prol.loopexit ] ; 9 uses
  %.4229300 = phi ptr [ %i.gx, %.lr.ph302 ], [ %.4229300.unr, %.lr.ph302.prol.loopexit ] ; 3 uses
  %.0257299 = phi ptr [ %i.gy, %.lr.ph302 ], [ %.0257299.unr, %.lr.ph302.prol.loopexit ] ; 3 uses
  %.0259298 = phi i32 [ %i.hb, %.lr.ph302 ], [ %.0259298.unr, %.lr.ph302.prol.loopexit ]
  %.0260297 = phi ptr [ %i.ha, %.lr.ph302 ], [ %.0260297.unr, %.lr.ph302.prol.loopexit ] ; 3 uses
  %.0261296 = phi ptr [ %i.gz, %.lr.ph302 ], [ %.0261296.unr, %.lr.ph302.prol.loopexit ] ; 3 uses
  %i.gd = load i64, ptr %.4229300, align 1, !tbaa !116
  store i64 %i.gd, ptr %.5301, align 1, !tbaa !116
  %i.ge = getelementptr inbounds nuw i8, ptr %.5301, i64 8
  %i.gf = load i64, ptr %.0257299, align 1, !tbaa !116
  store i64 %i.gf, ptr %i.ge, align 1, !tbaa !116
  %i.gg = getelementptr inbounds nuw i8, ptr %.5301, i64 16
  %i.gh = load i64, ptr %.0261296, align 1, !tbaa !116
  store i64 %i.gh, ptr %i.gg, align 1, !tbaa !116
  %i.gi = getelementptr inbounds nuw i8, ptr %.5301, i64 24
  %i.gj = load i64, ptr %.0260297, align 1, !tbaa !116
  store i64 %i.gj, ptr %i.gi, align 1, !tbaa !116
  %i.gk = getelementptr inbounds nuw i8, ptr %.5301, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %.4229300, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.0257299, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.0261296, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.0260297, i64 8
  %i.gp = load i64, ptr %i.gl, align 1, !tbaa !116
  store i64 %i.gp, ptr %i.gk, align 1, !tbaa !116
  %i.gq = getelementptr inbounds nuw i8, ptr %.5301, i64 40
  %i.gr = load i64, ptr %i.gm, align 1, !tbaa !116
  store i64 %i.gr, ptr %i.gq, align 1, !tbaa !116
  %i.gs = getelementptr inbounds nuw i8, ptr %.5301, i64 48
  %i.gt = load i64, ptr %i.gn, align 1, !tbaa !116
  store i64 %i.gt, ptr %i.gs, align 1, !tbaa !116
  %i.gu = getelementptr inbounds nuw i8, ptr %.5301, i64 56
  %i.gv = load i64, ptr %i.go, align 1, !tbaa !116
  store i64 %i.gv, ptr %i.gu, align 1, !tbaa !116
  %i.gw = getelementptr inbounds nuw i8, ptr %.5301, i64 64 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.4229300, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %.0257299, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %.0261296, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.0260297, i64 16
  %i.hb = add nuw nsw i32 %.0259298, 2            ; 2 uses
  %exitcond461.not.1 = icmp eq i32 %i.hb, %5
  br i1 %exitcond461.not.1, label %.loopexit280, label %.lr.ph302, !llvm.loop !1315

.loopexit281:                                     ; preds = %.loopexit284
  br i1 %brmerge415, label %.loopexit280, label %.lr.ph308.preheader

.lr.ph308.preheader:                              ; preds = %.loopexit281
  br i1 %i.aw, label %.lr.ph308.epil.preheader, label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %.lr.ph308
  %.7307 = phi ptr [ %i.hq, %.lr.ph308 ], [ %.0219311, %.lr.ph308.preheader ] ; 5 uses
  %.6231306 = phi ptr [ %i.hr, %.lr.ph308 ], [ %i.cm, %.lr.ph308.preheader ] ; 5 uses
  %niter934 = phi i32 [ %niter934.next.3, %.lr.ph308 ], [ 0, %.lr.ph308.preheader ]
  %i.hc = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.6231306, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.hd = trunc <16 x i32> %i.hc to <16 x i16>
  store <16 x i16> %i.hd, ptr %.7307, align 1, !tbaa !116
  %i.he = getelementptr inbounds nuw i8, ptr %.7307, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %.6231306, i64 2
  %i.hg = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.hf, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.hh = trunc <16 x i32> %i.hg to <16 x i16>
  store <16 x i16> %i.hh, ptr %i.he, align 1, !tbaa !116
  %i.hi = getelementptr inbounds nuw i8, ptr %.7307, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %.6231306, i64 4
  %i.hk = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.hj, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.hl = trunc <16 x i32> %i.hk to <16 x i16>
  store <16 x i16> %i.hl, ptr %i.hi, align 1, !tbaa !116
  %i.hm = getelementptr inbounds nuw i8, ptr %.7307, i64 96
  %i.hn = getelementptr inbounds nuw i8, ptr %.6231306, i64 6
  %i.ho = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.hn, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.hp = trunc <16 x i32> %i.ho to <16 x i16>
  store <16 x i16> %i.hp, ptr %i.hm, align 1, !tbaa !116
  %i.hq = getelementptr inbounds nuw i8, ptr %.7307, i64 128 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.6231306, i64 8 ; 2 uses
  %niter934.next.3 = add nuw nsw i32 %niter934, 4 ; 2 uses
  %niter934.ncmp.3 = icmp eq i32 %niter934.next.3, %unroll_iter933
  br i1 %niter934.ncmp.3, label %.loopexit280.loopexit.unr-lcssa, label %.lr.ph308, !llvm.loop !1316

.loopexit280.loopexit.unr-lcssa:                  ; preds = %.lr.ph308
  br i1 %lcmp.mod930.not, label %.loopexit280, label %.lr.ph308.epil.preheader

.lr.ph308.epil.preheader:                         ; preds = %.loopexit280.loopexit.unr-lcssa, %.lr.ph308.preheader
  %.7307.epil.init = phi ptr [ %.0219311, %.lr.ph308.preheader ], [ %i.hq, %.loopexit280.loopexit.unr-lcssa ]
  %.6231306.epil.init = phi ptr [ %i.cm, %.lr.ph308.preheader ], [ %i.hr, %.loopexit280.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod932)
  br label %.lr.ph308.epil

.lr.ph308.epil:                                   ; preds = %.lr.ph308.epil, %.lr.ph308.epil.preheader
  %.7307.epil = phi ptr [ %i.hu, %.lr.ph308.epil ], [ %.7307.epil.init, %.lr.ph308.epil.preheader ] ; 2 uses
  %.6231306.epil = phi ptr [ %i.hv, %.lr.ph308.epil ], [ %.6231306.epil.init, %.lr.ph308.epil.preheader ] ; 2 uses
  %epil.iter929 = phi i32 [ %epil.iter929.next, %.lr.ph308.epil ], [ 0, %.lr.ph308.epil.preheader ]
  %i.hs = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.6231306.epil, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.ht = trunc <16 x i32> %i.hs to <16 x i16>
  store <16 x i16> %i.ht, ptr %.7307.epil, align 1, !tbaa !116
  %i.hu = getelementptr inbounds nuw i8, ptr %.7307.epil, i64 32 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.6231306.epil, i64 2
  %epil.iter929.next = add i32 %epil.iter929, 1   ; 2 uses
  %epil.iter929.cmp.not = icmp eq i32 %epil.iter929.next, %xtraiter928
  br i1 %epil.iter929.cmp.not, label %.loopexit280, label %.lr.ph308.epil, !llvm.loop !1317

.loopexit280.loopexit909.unr-lcssa.a:             ; preds = %.lr.ph293
  br i1 %lcmp.mod923.not, label %.loopexit280, label %.lr.ph293.epil.preheader

.lr.ph293.epil.preheader:                         ; preds = %.loopexit280.loopexit909.unr-lcssa.a, %.lr.ph293.preheader
  %.3292.epil.init = phi ptr [ %.0219311, %.lr.ph293.preheader ], [ %i.eh, %.loopexit280.loopexit909.unr-lcssa.a ]
  %.2227291.epil.init = phi ptr [ %i.cm, %.lr.ph293.preheader ], [ %i.ei, %.loopexit280.loopexit909.unr-lcssa.a ]
  %.0246290.epil.init = phi ptr [ %i.dl, %.lr.ph293.preheader ], [ %i.ej, %.loopexit280.loopexit909.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod925)
  br label %.lr.ph293.epil

.lr.ph293.epil:                                   ; preds = %.lr.ph293.epil, %.lr.ph293.epil.preheader
  %.3292.epil = phi ptr [ %i.hz, %.lr.ph293.epil ], [ %.3292.epil.init, %.lr.ph293.epil.preheader ] ; 3 uses
  %.2227291.epil = phi ptr [ %i.ia, %.lr.ph293.epil ], [ %.2227291.epil.init, %.lr.ph293.epil.preheader ] ; 2 uses
  %.0246290.epil = phi ptr [ %i.ib, %.lr.ph293.epil ], [ %.0246290.epil.init, %.lr.ph293.epil.preheader ] ; 2 uses
  %epil.iter922 = phi i32 [ %epil.iter922.next, %.lr.ph293.epil ], [ 0, %.lr.ph293.epil.preheader ]
  %i.hw = load <2 x i64>, ptr %.2227291.epil, align 1, !tbaa !116
  store <2 x i64> %i.hw, ptr %.3292.epil, align 1, !tbaa !116
  %i.hx = getelementptr inbounds nuw i8, ptr %.3292.epil, i64 16
  %i.hy = load <2 x i64>, ptr %.0246290.epil, align 1, !tbaa !116
  store <2 x i64> %i.hy, ptr %i.hx, align 1, !tbaa !116
  %i.hz = getelementptr inbounds nuw i8, ptr %.3292.epil, i64 32 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.2227291.epil, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %.0246290.epil, i64 16
  %epil.iter922.next = add i32 %epil.iter922, 1   ; 2 uses
  %epil.iter922.cmp.not = icmp eq i32 %epil.iter922.next, %xtraiter921
  br i1 %epil.iter922.cmp.not, label %.loopexit280, label %.lr.ph293.epil, !llvm.loop !1318

.loopexit280.loopexit912.unr-lcssa:               ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit280, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit280.loopexit912.unr-lcssa, %.lr.ph.preheader
  %.1287.epil.init = phi ptr [ %.0219311, %.lr.ph.preheader ], [ %i.dj, %.loopexit280.loopexit912.unr-lcssa ]
  %.0225286.epil.init = phi ptr [ %i.cm, %.lr.ph.preheader ], [ %i.dk, %.loopexit280.loopexit912.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod918)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.1287.epil = phi ptr [ %i.id, %.lr.ph.epil ], [ %.1287.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0225286.epil = phi ptr [ %i.ie, %.lr.ph.epil ], [ %.0225286.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ic = load <4 x i64>, ptr %.0225286.epil, align 1, !tbaa !116
  store <4 x i64> %i.ic, ptr %.1287.epil, align 1, !tbaa !116
  %i.id = getelementptr inbounds nuw i8, ptr %.1287.epil, i64 32 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0225286.epil, i64 32
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit280, label %.lr.ph.epil, !llvm.loop !1319

.loopexit280:                                     ; preds = %.loopexit280.loopexit912.unr-lcssa, %.lr.ph.epil, %.lr.ph302.prol.loopexit, %.lr.ph302, %.loopexit280.loopexit909.unr-lcssa.a, %.lr.ph293.epil, %.loopexit280.loopexit.unr-lcssa, %.lr.ph308.epil, %middle.block, %bb.h, %bb.i, %.loopexit281
  %.8 = phi ptr [ %.0219311, %.loopexit281 ], [ %i.hu, %.lr.ph308.epil ], [ %i.gw, %.lr.ph302 ], [ %.0219311, %bb.i ], [ %i.hz, %.lr.ph293.epil ], [ %.0219311, %bb.h ], [ %i.fe, %middle.block ], [ %i.hq, %.loopexit280.loopexit.unr-lcssa ], [ %i.eh, %.loopexit280.loopexit909.unr-lcssa.a ], [ %.lcssa914.unr, %.lr.ph302.prol.loopexit ], [ %i.dj, %.loopexit280.loopexit912.unr-lcssa ], [ %i.id, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.if = or disjoint i64 %indvars.iv.next, 15
  %i.ig = icmp samesign ult i64 %i.if, %i.y
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ig, label %bb.g, label %.preheader279.loopexit, !llvm.loop !1320

.preheader274.loopexit:                           ; preds = %.loopexit275
  %i.ih = trunc nuw nsw i64 %indvars.iv.next468 to i32
  br label %.preheader274

.preheader274:                                    ; preds = %.preheader274.loopexit, %.preheader279
  %.1221.lcssa = phi i32 [ %.0220.lcssa, %.preheader279 ], [ %i.ih, %.preheader274.loopexit ] ; 8 uses
  %.9.lcssa = phi ptr [ %.0219.lcssa, %.preheader279 ], [ %.15, %.preheader274.loopexit ] ; 5 uses
  %i.ii = or disjoint i32 %.1221.lcssa, 3
  %i.ij = icmp slt i32 %i.ii, %3
  br i1 %i.ij, label %.lr.ph367, label %.preheader269

.lr.ph367:                                        ; preds = %.preheader274
  %i.ik = mul i32 %i.c, %4
  %i.il = sext i32 %i.ik to i64                   ; 4 uses
  %i.im = icmp ne i32 %i.c, 4                     ; 2 uses
  %i.in = icmp slt i32 %5, 1                      ; 2 uses
  %i.io = icmp eq i32 %i.c, 1
  %.idx = shl i64 %i.l, 2
  %.idx262 = mul i64 %i.l, 6
  %i.ip = icmp sgt i32 %5, 3
  br i1 %i.io, label %.lr.ph367.split.us.preheader, label %.lr.ph367.split

.lr.ph367.split.us.preheader:                     ; preds = %.lr.ph367
  %i.iq = and i32 %5, -4
  %i.ir = zext i32 %.1221.lcssa to i64            ; 2 uses
  %i.is = sext i32 %2 to i64                      ; 2 uses
  %i.it = sext i32 %3 to i64
  %brmerge418 = or i1 %i.im, %i.in
  %invariant.op535 = add nsw i64 %i.it, -3
  %i.iu = add nsw i64 %i.is, %i.ir
  %i.iv = mul i64 %i.l, %i.iu
  %i.iw = mul i64 %i.iv, -2
  %i.ix = shl nsw i64 %i.il, 1
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = mul i64 %i.l, -8
  %i.ja = zext i32 %5 to i64                      ; 5 uses
  %min.iters.check739.a = icmp ult i32 %5, 8
  %min.iters.check741 = icmp ult i32 %5, 32
  %i.jb = and i64 %i.ja, 24
  %n.vec743 = and i64 %i.ja, 2147483616           ; 5 uses
  %i.jc = shl nuw nsw i64 %n.vec743, 3            ; 2 uses
  %i.jd = trunc nuw nsw i64 %n.vec743 to i32
  %cmp.n754 = icmp eq i64 %n.vec743, %i.ja
  %min.epilog.iters.check762 = icmp eq i64 %i.jb, 0
  %n.vec764 = and i64 %i.ja, 2147483640           ; 4 uses
  %i.je = shl nuw nsw i64 %n.vec764, 3            ; 2 uses
  %i.jf = trunc nuw nsw i64 %n.vec764 to i32
  %cmp.n772 = icmp eq i64 %n.vec764, %i.ja
  br label %.lr.ph367.split.us

.lr.ph367.split.us:                               ; preds = %.lr.ph367.split.us.preheader, %.loopexit271.us
  %indvar735 = phi i64 [ 0, %.lr.ph367.split.us.preheader ], [ %indvar.next736, %.loopexit271.us ] ; 2 uses
  %indvars.iv477 = phi i64 [ %i.ir, %.lr.ph367.split.us.preheader ], [ %indvars.iv.next478, %.loopexit271.us ] ; 2 uses
  %.16366.us = phi ptr [ %.9.lcssa, %.lr.ph367.split.us.preheader ], [ %.20.lcssa.us, %.loopexit271.us ] ; 8 uses
  %.16366.us734 = ptrtoaddr ptr %.16366.us to i64
  %i.jg = mul i64 %i.iz, %indvar735
  %i.jh = add i64 %i.iy, %i.jg
  %i.ji = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.jj = ptrtoaddr ptr %i.ji to i64
  %i.jk = add nsw i64 %indvars.iv477, %i.is
  %i.jl = mul i64 %i.l, %i.jk
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %i.jl
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.jm, i64 %i.il ; 7 uses
  br i1 %brmerge418, label %.loopexit273.us, label %iter.check759

iter.check759:                                    ; preds = %.lr.ph367.split.us
  br i1 %min.iters.check739.a, label %.lr.ph341.us.preheader, label %vector.memcheck733

vector.memcheck733:                               ; preds = %iter.check759
  %i.jo = add i64 %i.jh, %.16366.us734
  %i.jp = sub i64 %i.jj, %i.jo
  %diff.check737 = icmp ugt i64 %i.jp, -256
  br i1 %diff.check737, label %.lr.ph341.us.preheader, label %vector.main.loop.iter.check740

vector.main.loop.iter.check740:                   ; preds = %vector.memcheck733
  br i1 %min.iters.check741, label %vec.epilog.ph763, label %vector.ph742

vector.ph742:                                     ; preds = %vector.main.loop.iter.check740
  %i.jq = getelementptr i8, ptr %.16366.us, i64 %i.jc ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jn, i64 %i.jc  ; 2 uses
  br label %vector.body744

vector.body744:                                   ; preds = %vector.body744, %vector.ph742
  %index745 = phi i64 [ 0, %vector.ph742 ], [ %index.next752, %vector.body744 ] ; 2 uses
  %i.js = shl i64 %index745, 3                    ; 2 uses
  %next.gep746 = getelementptr i8, ptr %.16366.us, i64 %i.js ; 4 uses
  %next.gep747 = getelementptr i8, ptr %i.jn, i64 %i.js ; 4 uses
  %i.jt = getelementptr i8, ptr %next.gep747, i64 64
  %i.ju = getelementptr i8, ptr %next.gep747, i64 128
  %i.jv = getelementptr i8, ptr %next.gep747, i64 192
  %wide.load748.a = load <8 x i64>, ptr %next.gep747, align 1, !tbaa !116
  %wide.load749.a = load <8 x i64>, ptr %i.jt, align 1, !tbaa !116
  %wide.load750 = load <8 x i64>, ptr %i.ju, align 1, !tbaa !116
  %wide.load751 = load <8 x i64>, ptr %i.jv, align 1, !tbaa !116
  %i.jw = getelementptr i8, ptr %next.gep746, i64 64
  %i.jx = getelementptr i8, ptr %next.gep746, i64 128
  %i.jy = getelementptr i8, ptr %next.gep746, i64 192
  store <8 x i64> %wide.load748.a, ptr %next.gep746, align 1, !tbaa !116
  store <8 x i64> %wide.load749.a, ptr %i.jw, align 1, !tbaa !116
  store <8 x i64> %wide.load750, ptr %i.jx, align 1, !tbaa !116
  store <8 x i64> %wide.load751, ptr %i.jy, align 1, !tbaa !116
  %index.next752 = add nuw i64 %index745, 32      ; 2 uses
  %i.jz = icmp eq i64 %index.next752, %n.vec743
  br i1 %i.jz, label %middle.block753, label %vector.body744, !llvm.loop !1321

middle.block753:                                  ; preds = %vector.body744
  br i1 %cmp.n754, label %.loopexit273.us, label %vec.epilog.iter.check761

vec.epilog.iter.check761:                         ; preds = %middle.block753
  br i1 %min.epilog.iters.check762, label %.lr.ph341.us.preheader, label %vec.epilog.ph763, !prof !520

vec.epilog.ph763:                                 ; preds = %vector.main.loop.iter.check740, %vec.epilog.iter.check761
  %vec.epilog.resume.val755 = phi i64 [ %n.vec743, %vec.epilog.iter.check761 ], [ 0, %vector.main.loop.iter.check740 ]
  %i.ka = getelementptr i8, ptr %.16366.us, i64 %i.je ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jn, i64 %i.je  ; 2 uses
  br label %vec.epilog.vector.body765

vec.epilog.vector.body765:                        ; preds = %vec.epilog.vector.body765, %vec.epilog.ph763
  %index766 = phi i64 [ %vec.epilog.resume.val755, %vec.epilog.ph763 ], [ %index.next770, %vec.epilog.vector.body765 ] ; 2 uses
  %i.kc = shl i64 %index766, 3                    ; 2 uses
  %next.gep767 = getelementptr i8, ptr %.16366.us, i64 %i.kc
  %next.gep768 = getelementptr i8, ptr %i.jn, i64 %i.kc
  %wide.load769 = load <8 x i64>, ptr %next.gep768, align 1, !tbaa !116
  store <8 x i64> %wide.load769, ptr %next.gep767, align 1, !tbaa !116
  %index.next770 = add nuw i64 %index766, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next770, %n.vec764
  br i1 %i.kd, label %vec.epilog.middle.block771, label %vec.epilog.vector.body765, !llvm.loop !1322

vec.epilog.middle.block771:                       ; preds = %vec.epilog.vector.body765
  br i1 %cmp.n772, label %.loopexit273.us, label %.lr.ph341.us.preheader

.lr.ph341.us.preheader:                           ; preds = %vector.memcheck733, %iter.check759, %vec.epilog.iter.check761, %vec.epilog.middle.block771
  %.17340.us.ph = phi ptr [ %.16366.us, %iter.check759 ], [ %.16366.us, %vector.memcheck733 ], [ %i.jq, %vec.epilog.iter.check761 ], [ %i.ka, %vec.epilog.middle.block771 ] ; 2 uses
  %.0241339.us.ph = phi i32 [ 0, %iter.check759 ], [ 0, %vector.memcheck733 ], [ %i.jd, %vec.epilog.iter.check761 ], [ %i.jf, %vec.epilog.middle.block771 ] ; 4 uses
  %.0242338.us.ph = phi ptr [ %i.jn, %iter.check759 ], [ %i.jn, %vector.memcheck733 ], [ %i.jr, %vec.epilog.iter.check761 ], [ %i.kb, %vec.epilog.middle.block771 ] ; 2 uses
  %i.ke = sub i32 %5, %.0241339.us.ph
  %xtraiter954.a = and i32 %i.ke, 7               ; 2 uses
  %lcmp.mod955.not.a = icmp eq i32 %xtraiter954.a, 0
  br i1 %lcmp.mod955.not.a, label %.lr.ph341.us.prol.loopexit, label %.lr.ph341.us.prol

.lr.ph341.us.prol:                                ; preds = %.lr.ph341.us.preheader, %.lr.ph341.us.prol
  %.17340.us.prol = phi ptr [ %i.kg, %.lr.ph341.us.prol ], [ %.17340.us.ph, %.lr.ph341.us.preheader ] ; 2 uses
  %.0241339.us.prol = phi i32 [ %i.ki, %.lr.ph341.us.prol ], [ %.0241339.us.ph, %.lr.ph341.us.preheader ]
  %.0242338.us.prol = phi ptr [ %i.kh, %.lr.ph341.us.prol ], [ %.0242338.us.ph, %.lr.ph341.us.preheader ] ; 2 uses
  %prol.iter956 = phi i32 [ %prol.iter956.next, %.lr.ph341.us.prol ], [ 0, %.lr.ph341.us.preheader ]
  %i.kf = load i64, ptr %.0242338.us.prol, align 1, !tbaa !116
  store i64 %i.kf, ptr %.17340.us.prol, align 1, !tbaa !116
  %i.kg = getelementptr inbounds nuw i8, ptr %.17340.us.prol, i64 8 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0242338.us.prol, i64 8 ; 3 uses
  %i.ki = add nuw nsw i32 %.0241339.us.prol, 1    ; 2 uses
  %prol.iter956.next = add i32 %prol.iter956, 1   ; 2 uses
  %prol.iter956.cmp.not = icmp eq i32 %prol.iter956.next, %xtraiter954.a
  br i1 %prol.iter956.cmp.not, label %.lr.ph341.us.prol.loopexit, label %.lr.ph341.us.prol, !llvm.loop !1323

.lr.ph341.us.prol.loopexit:                       ; preds = %.lr.ph341.us.prol, %.lr.ph341.us.preheader
  %.lcssa895.unr = phi ptr [ poison, %.lr.ph341.us.preheader ], [ %i.kg, %.lr.ph341.us.prol ]
  %.lcssa894.unr = phi ptr [ poison, %.lr.ph341.us.preheader ], [ %i.kh, %.lr.ph341.us.prol ]
  %.17340.us.unr = phi ptr [ %.17340.us.ph, %.lr.ph341.us.preheader ], [ %i.kg, %.lr.ph341.us.prol ]
  %.0241339.us.unr = phi i32 [ %.0241339.us.ph, %.lr.ph341.us.preheader ], [ %i.ki, %.lr.ph341.us.prol ]
  %.0242338.us.unr = phi ptr [ %.0242338.us.ph, %.lr.ph341.us.preheader ], [ %i.kh, %.lr.ph341.us.prol ]
  %i.kj = sub i32 %.0241339.us.ph, %5
  %i.kk = icmp ugt i32 %i.kj, -8
  br i1 %i.kk, label %.loopexit273.us, label %.lr.ph341.us

.lr.ph341.us:                                     ; preds = %.lr.ph341.us.prol.loopexit, %.lr.ph341.us
  %.17340.us = phi ptr [ %i.lh, %.lr.ph341.us ], [ %.17340.us.unr, %.lr.ph341.us.prol.loopexit ] ; 9 uses
  %.0241339.us = phi i32 [ %i.lj, %.lr.ph341.us ], [ %.0241339.us.unr, %.lr.ph341.us.prol.loopexit ]
  %.0242338.us = phi ptr [ %i.li, %.lr.ph341.us ], [ %.0242338.us.unr, %.lr.ph341.us.prol.loopexit ] ; 9 uses
  %i.kl = load i64, ptr %.0242338.us, align 1, !tbaa !116
  store i64 %i.kl, ptr %.17340.us, align 1, !tbaa !116
  %i.km = getelementptr inbounds nuw i8, ptr %.17340.us, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.0242338.us, i64 8
  %i.ko = load i64, ptr %i.kn, align 1, !tbaa !116
  store i64 %i.ko, ptr %i.km, align 1, !tbaa !116
  %i.kp = getelementptr inbounds nuw i8, ptr %.17340.us, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %.0242338.us, i64 16
  %i.kr = load i64, ptr %i.kq, align 1, !tbaa !116
  store i64 %i.kr, ptr %i.kp, align 1, !tbaa !116
  %i.ks = getelementptr inbounds nuw i8, ptr %.17340.us, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %.0242338.us, i64 24
  %i.ku = load i64, ptr %i.kt, align 1, !tbaa !116
  store i64 %i.ku, ptr %i.ks, align 1, !tbaa !116
  %i.kv = getelementptr inbounds nuw i8, ptr %.17340.us, i64 32
  %i.kw = getelementptr inbounds nuw i8, ptr %.0242338.us, i64 32
  %i.kx = load i64, ptr %i.kw, align 1, !tbaa !116
  store i64 %i.kx, ptr %i.kv, align 1, !tbaa !116
  %i.ky = getelementptr inbounds nuw i8, ptr %.17340.us, i64 40
  %i.kz = getelementptr inbounds nuw i8, ptr %.0242338.us, i64 40
  %i.la = load i64, ptr %i.kz, align 1, !tbaa !116
  store i64 %i.la, ptr %i.ky, align 1, !tbaa !116
  %i.lb = getelementptr inbounds nuw i8, ptr %.17340.us, i64 48
  %i.lc = getelementptr inbounds nuw i8, ptr %.0242338.us, i64 48
  %i.ld = load i64, ptr %i.lc, align 1, !tbaa !116
  store i64 %i.ld, ptr %i.lb, align 1, !tbaa !116
  %i.le = getelementptr inbounds nuw i8, ptr %.17340.us, i64 56
  %i.lf = getelementptr inbounds nuw i8, ptr %.0242338.us, i64 56
  %i.lg = load i64, ptr %i.lf, align 1, !tbaa !116
  store i64 %i.lg, ptr %i.le, align 1, !tbaa !116
  %i.lh = getelementptr inbounds nuw i8, ptr %.17340.us, i64 64 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0242338.us, i64 64 ; 2 uses
  %i.lj = add nuw nsw i32 %.0241339.us, 8         ; 2 uses
  %exitcond475.not.7 = icmp eq i32 %i.lj, %5
  br i1 %exitcond475.not.7, label %.loopexit273.us, label %.lr.ph341.us, !llvm.loop !1324

.loopexit273.us:                                  ; preds = %.lr.ph341.us.prol.loopexit, %.lr.ph341.us, %middle.block753, %vec.epilog.middle.block771, %.lr.ph367.split.us
  %.1243.us = phi ptr [ %i.jn, %.lr.ph367.split.us ], [ %i.kb, %vec.epilog.middle.block771 ], [ %i.jr, %middle.block753 ], [ %.lcssa894.unr, %.lr.ph341.us.prol.loopexit ], [ %i.li, %.lr.ph341.us ] ; 5 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %i.ni = getelementptr inbounds nuw i8, ptr %.3245357.us, i64 4
  %i.nj = getelementptr inbounds nuw i8, ptr %.1240358.us, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %.1238359.us, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %.1236360.us, i64 4
  %i.nm = add nuw nsw i32 %.1234361.us, 2         ; 2 uses
  %exitcond476.not.1 = icmp eq i32 %i.nm, %5
  br i1 %exitcond476.not.1, label %.loopexit271.us, label %.lr.ph363.us, !llvm.loop !1326

.preheader270.us:                                 ; preds = %.lr.ph350.us, %.loopexit273.us
  %.2244.lcssa.us = phi ptr [ %.1243.us, %.loopexit273.us ], [ %i.mh, %.lr.ph350.us ] ; 8 uses
  %.0239.lcssa.us = phi ptr [ %i.lk, %.loopexit273.us ], [ %i.mi, %.lr.ph350.us ] ; 8 uses
  %.0237.lcssa.us = phi ptr [ %i.ll, %.loopexit273.us ], [ %i.mj, %.lr.ph350.us ] ; 8 uses
  %.0235.lcssa.us = phi ptr [ %i.lm, %.loopexit273.us ], [ %i.mk, %.lr.ph350.us ] ; 8 uses
  %.0233.lcssa.us = phi i32 [ 0, %.loopexit273.us ], [ %i.iq, %.lr.ph350.us ] ; 7 uses
  %.19.lcssa.us = phi ptr [ %.18.us, %.loopexit273.us ], [ %i.mg, %.lr.ph350.us ] ; 12 uses
  %i.nn = icmp slt i32 %.0233.lcssa.us, %5
  br i1 %i.nn, label %iter.check706, label %.loopexit271.us

iter.check706:                                    ; preds = %.preheader270.us
  %i.no = xor i32 %.0233.lcssa.us, -1
  %i.np = add i32 %5, %i.no                       ; 3 uses
  %i.nq = zext i32 %i.np to i64
  %i.nr = add nuw nsw i64 %i.nq, 1                ; 5 uses
  %min.iters.check679.a = icmp ult i32 %i.np, 7
  br i1 %min.iters.check679.a, label %.lr.ph363.us.preheader, label %vector.memcheck652

vector.memcheck652:                               ; preds = %iter.check706
  %scevgep653.a = getelementptr i8, ptr %.19.lcssa.us, i64 8
  %i.ns = xor i32 %.0233.lcssa.us, -1
  %i.nt = add i32 %5, %i.ns
  %i.nu = zext i32 %i.nt to i64                   ; 2 uses
  %i.nv = shl nuw nsw i64 %i.nu, 3
  %scevgep654.a = getelementptr i8, ptr %scevgep653.a, i64 %i.nv ; 4 uses
  %scevgep655.a = getelementptr i8, ptr %.0235.lcssa.us, i64 2
  %i.nw = shl nuw nsw i64 %i.nu, 1                ; 4 uses
  %scevgep656.a = getelementptr i8, ptr %scevgep655.a, i64 %i.nw
  %scevgep657.a = getelementptr i8, ptr %.0237.lcssa.us, i64 2
  %scevgep658.a = getelementptr i8, ptr %scevgep657.a, i64 %i.nw
  %scevgep659.a = getelementptr i8, ptr %.0239.lcssa.us, i64 2
  %scevgep660.a = getelementptr i8, ptr %scevgep659.a, i64 %i.nw
  %scevgep661 = getelementptr i8, ptr %.2244.lcssa.us, i64 2
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.nw
  %bound0663 = icmp ult ptr %.19.lcssa.us, %scevgep656.a
  %bound1664 = icmp ult ptr %.0235.lcssa.us, %scevgep654.a
  %found.conflict665 = and i1 %bound0663, %bound1664
  %bound0666 = icmp ult ptr %.19.lcssa.us, %scevgep658.a
  %bound1667 = icmp ult ptr %.0237.lcssa.us, %scevgep654.a
  %found.conflict668 = and i1 %bound0666, %bound1667
  %conflict.rdx669 = or i1 %found.conflict665, %found.conflict668
  %bound0670 = icmp ult ptr %.19.lcssa.us, %scevgep660.a
  %bound1671 = icmp ult ptr %.0239.lcssa.us, %scevgep654.a
  %found.conflict672 = and i1 %bound0670, %bound1671
  %conflict.rdx673 = or i1 %conflict.rdx669, %found.conflict672
  %bound0674 = icmp ult ptr %.19.lcssa.us, %scevgep662
  %bound1675 = icmp ult ptr %.2244.lcssa.us, %scevgep654.a
  %found.conflict676 = and i1 %bound0674, %bound1675
  %conflict.rdx677 = or i1 %conflict.rdx673, %found.conflict676
  br i1 %conflict.rdx677, label %.lr.ph363.us.preheader, label %vector.main.loop.iter.check680

vector.main.loop.iter.check680:                   ; preds = %vector.memcheck652
  %min.iters.check681 = icmp ult i32 %i.np, 31
  br i1 %min.iters.check681, label %vec.epilog.ph710, label %vector.ph682

vector.ph682:                                     ; preds = %vector.main.loop.iter.check680
  %i.nx = and i64 %i.nr, 24
  %n.vec683 = and i64 %i.nr, 8589934560           ; 6 uses
  %i.ny = shl nuw nsw i64 %n.vec683, 3
  %i.nz = getelementptr i8, ptr %.19.lcssa.us, i64 %i.ny ; 2 uses
  %i.oa = trunc i64 %n.vec683 to i32
  %i.ob = add i32 %.0233.lcssa.us, %i.oa
  %i.oc = shl nuw nsw i64 %n.vec683, 1            ; 4 uses
  %i.od = getelementptr i8, ptr %.0235.lcssa.us, i64 %i.oc
  %i.oe = getelementptr i8, ptr %.0237.lcssa.us, i64 %i.oc
  %i.of = getelementptr i8, ptr %.0239.lcssa.us, i64 %i.oc
  %i.og = getelementptr i8, ptr %.2244.lcssa.us, i64 %i.oc
  br label %vector.body684

vector.body684:                                   ; preds = %vector.body684, %vector.ph682
  %index685 = phi i64 [ 0, %vector.ph682 ], [ %index.next696, %vector.body684 ] ; 3 uses
  %i.oh = shl i64 %index685, 3
  %next.gep686.a = getelementptr i8, ptr %.19.lcssa.us, i64 %i.oh
  %i.oi = shl i64 %index685, 1                    ; 4 uses
  %next.gep687.a = getelementptr i8, ptr %.0235.lcssa.us, i64 %i.oi
  %next.gep688.a = getelementptr i8, ptr %.0237.lcssa.us, i64 %i.oi
  %next.gep689 = getelementptr i8, ptr %.0239.lcssa.us, i64 %i.oi
  %next.gep690 = getelementptr i8, ptr %.2244.lcssa.us, i64 %i.oi
  %wide.load691.a = load <32 x i16>, ptr %next.gep690, align 2, !tbaa !821, !alias.scope !1327
  %wide.load692.a = load <32 x i16>, ptr %next.gep689, align 2, !tbaa !821, !alias.scope !1330
  %wide.load693 = load <32 x i16>, ptr %next.gep688.a, align 2, !tbaa !821, !alias.scope !1332
  %wide.load694 = load <32 x i16>, ptr %next.gep687.a, align 2, !tbaa !821, !alias.scope !1334
  %i.oj = shufflevector <32 x i16> %wide.load691.a, <32 x i16> %wide.load692.a, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ok = shufflevector <32 x i16> %wide.load693, <32 x i16> %wide.load694, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec695 = shufflevector <64 x i16> %i.oj, <64 x i16> %i.ok, <128 x i32> <i32 0, i32 32, i32 64, i32 96, i32 1, i32 33, i32 65, i32 97, i32 2, i32 34, i32 66, i32 98, i32 3, i32 35, i32 67, i32 99, i32 4, i32 36, i32 68, i32 100, i32 5, i32 37, i32 69, i32 101, i32 6, i32 38, i32 70, i32 102, i32 7, i32 39, i32 71, i32 103, i32 8, i32 40, i32 72, i32 104, i32 9, i32 41, i32 73, i32 105, i32 10, i32 42, i32 74, i32 106, i32 11, i32 43, i32 75, i32 107, i32 12, i32 44, i32 76, i32 108, i32 13, i32 45, i32 77, i32 109, i32 14, i32 46, i32 78, i32 110, i32 15, i32 47, i32 79, i32 111, i32 16, i32 48, i32 80, i32 112, i32 17, i32 49, i32 81, i32 113, i32 18, i32 50, i32 82, i32 114, i32 19, i32 51, i32 83, i32 115, i32 20, i32 52, i32 84, i32 116, i32 21, i32 53, i32 85, i32 117, i32 22, i32 54, i32 86, i32 118, i32 23, i32 55, i32 87, i32 119, i32 24, i32 56, i32 88, i32 120, i32 25, i32 57, i32 89, i32 121, i32 26, i32 58, i32 90, i32 122, i32 27, i32 59, i32 91, i32 123, i32 28, i32 60, i32 92, i32 124, i32 29, i32 61, i32 93, i32 125, i32 30, i32 62, i32 94, i32 126, i32 31, i32 63, i32 95, i32 127>
  store <128 x i16> %interleaved.vec695, ptr %next.gep686.a, align 2, !tbaa !821, !alias.scope !1336, !noalias !1338
  %index.next696 = add nuw i64 %index685, 32      ; 2 uses
  %i.ol = icmp eq i64 %index.next696, %n.vec683
  br i1 %i.ol, label %middle.block697, label %vector.body684, !llvm.loop !1339

middle.block697:                                  ; preds = %vector.body684
  %cmp.n698 = icmp eq i64 %i.nr, %n.vec683
  br i1 %cmp.n698, label %.loopexit271.us, label %vec.epilog.iter.check708

vec.epilog.iter.check708:                         ; preds = %middle.block697
  %min.epilog.iters.check709 = icmp eq i64 %i.nx, 0
  br i1 %min.epilog.iters.check709, label %.lr.ph363.us.preheader, label %vec.epilog.ph710, !prof !520

vec.epilog.ph710:                                 ; preds = %vector.main.loop.iter.check680, %vec.epilog.iter.check708
  %vec.epilog.resume.val699 = phi i64 [ %n.vec683, %vec.epilog.iter.check708 ], [ 0, %vector.main.loop.iter.check680 ]
  %n.vec711 = and i64 %i.nr, 8589934584           ; 5 uses
  %i.om = shl nuw nsw i64 %n.vec711, 3
  %i.on = getelementptr i8, ptr %.19.lcssa.us, i64 %i.om ; 2 uses
  %i.oo = trunc i64 %n.vec711 to i32
  %i.op = add i32 %.0233.lcssa.us, %i.oo
  %i.oq = shl nuw nsw i64 %n.vec711, 1            ; 4 uses
  %i.or = getelementptr i8, ptr %.0235.lcssa.us, i64 %i.oq
  %i.os = getelementptr i8, ptr %.0237.lcssa.us, i64 %i.oq
  %i.ot = getelementptr i8, ptr %.0239.lcssa.us, i64 %i.oq
  %i.ou = getelementptr i8, ptr %.2244.lcssa.us, i64 %i.oq
  br label %vec.epilog.vector.body712

vec.epilog.vector.body712:                        ; preds = %vec.epilog.vector.body712, %vec.epilog.ph710
  %index713 = phi i64 [ %vec.epilog.resume.val699, %vec.epilog.ph710 ], [ %index.next724, %vec.epilog.vector.body712 ] ; 3 uses
  %i.ov = shl i64 %index713, 3
  %next.gep714.a = getelementptr i8, ptr %.19.lcssa.us, i64 %i.ov
  %i.ow = shl i64 %index713, 1                    ; 4 uses
  %next.gep715.a = getelementptr i8, ptr %.0235.lcssa.us, i64 %i.ow
  %next.gep716.a = getelementptr i8, ptr %.0237.lcssa.us, i64 %i.ow
  %next.gep717 = getelementptr i8, ptr %.0239.lcssa.us, i64 %i.ow
  %next.gep718 = getelementptr i8, ptr %.2244.lcssa.us, i64 %i.ow
  %wide.load719.a = load <8 x i16>, ptr %next.gep718, align 2, !tbaa !821, !alias.scope !1327
  %wide.load720.a = load <8 x i16>, ptr %next.gep717, align 2, !tbaa !821, !alias.scope !1330
  %wide.load721 = load <8 x i16>, ptr %next.gep716.a, align 2, !tbaa !821, !alias.scope !1332
  %wide.load722 = load <8 x i16>, ptr %next.gep715.a, align 2, !tbaa !821, !alias.scope !1334
  %i.ox = shufflevector <8 x i16> %wide.load719.a, <8 x i16> %wide.load720.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oy = shufflevector <8 x i16> %wide.load721, <8 x i16> %wide.load722, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec723 = shufflevector <16 x i16> %i.ox, <16 x i16> %i.oy, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec723, ptr %next.gep714.a, align 2, !tbaa !821, !alias.scope !1336, !noalias !1338
  %index.next724 = add nuw i64 %index713, 8       ; 2 uses
  %i.oz = icmp eq i64 %index.next724, %n.vec711
  br i1 %i.oz, label %vec.epilog.middle.block725, label %vec.epilog.vector.body712, !llvm.loop !1340

vec.epilog.middle.block725:                       ; preds = %vec.epilog.vector.body712
  %cmp.n726 = icmp eq i64 %i.nr, %n.vec711
  br i1 %cmp.n726, label %.loopexit271.us, label %.lr.ph363.us.preheader

.lr.ph363.us.preheader:                           ; preds = %vector.memcheck652, %iter.check706, %vec.epilog.iter.check708, %vec.epilog.middle.block725
  %.20362.us.ph = phi ptr [ %.19.lcssa.us, %iter.check706 ], [ %.19.lcssa.us, %vector.memcheck652 ], [ %i.nz, %vec.epilog.iter.check708 ], [ %i.on, %vec.epilog.middle.block725 ] ; 6 uses
  %.1234361.us.ph = phi i32 [ %.0233.lcssa.us, %iter.check706 ], [ %.0233.lcssa.us, %vector.memcheck652 ], [ %i.ob, %vec.epilog.iter.check708 ], [ %i.op, %vec.epilog.middle.block725 ] ; 4 uses
  %.1236360.us.ph = phi ptr [ %.0235.lcssa.us, %iter.check706 ], [ %.0235.lcssa.us, %vector.memcheck652 ], [ %i.od, %vec.epilog.iter.check708 ], [ %i.or, %vec.epilog.middle.block725 ] ; 3 uses
  %.1238359.us.ph = phi ptr [ %.0237.lcssa.us, %iter.check706 ], [ %.0237.lcssa.us, %vector.memcheck652 ], [ %i.oe, %vec.epilog.iter.check708 ], [ %i.os, %vec.epilog.middle.block725 ] ; 3 uses
  %.1240358.us.ph = phi ptr [ %.0239.lcssa.us, %iter.check706 ], [ %.0239.lcssa.us, %vector.memcheck652 ], [ %i.of, %vec.epilog.iter.check708 ], [ %i.ot, %vec.epilog.middle.block725 ] ; 3 uses
  %.3245357.us.ph = phi ptr [ %.2244.lcssa.us, %iter.check706 ], [ %.2244.lcssa.us, %vector.memcheck652 ], [ %i.og, %vec.epilog.iter.check708 ], [ %i.ou, %vec.epilog.middle.block725 ] ; 3 uses
  %i.pa = sub i32 %5, %.1234361.us.ph
  %.neg975 = add i32 %.1234361.us.ph, 1
  %xtraiter957.a = and i32 %i.pa, 1
  %lcmp.mod958.not.a = icmp eq i32 %xtraiter957.a, 0
  br i1 %lcmp.mod958.not.a, label %.lr.ph363.us.prol.loopexit, label %.lr.ph363.us.prol

.lr.ph363.us.prol:                                ; preds = %.lr.ph363.us.preheader
  %i.pb = load i16, ptr %.3245357.us.ph, align 2, !tbaa !821
  store i16 %i.pb, ptr %.20362.us.ph, align 2, !tbaa !821
  %i.pc = load i16, ptr %.1240358.us.ph, align 2, !tbaa !821
  %i.pd = getelementptr inbounds nuw i8, ptr %.20362.us.ph, i64 2
  store i16 %i.pc, ptr %i.pd, align 2, !tbaa !821
  %i.pe = load i16, ptr %.1238359.us.ph, align 2, !tbaa !821
  %i.pf = getelementptr inbounds nuw i8, ptr %.20362.us.ph, i64 4
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !821
  %i.pg = load i16, ptr %.1236360.us.ph, align 2, !tbaa !821
  %i.ph = getelementptr inbounds nuw i8, ptr %.20362.us.ph, i64 6
  store i16 %i.pg, ptr %i.ph, align 2, !tbaa !821
  %i.pi = getelementptr inbounds nuw i8, ptr %.20362.us.ph, i64 8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.3245357.us.ph, i64 2
  %i.pk = getelementptr inbounds nuw i8, ptr %.1240358.us.ph, i64 2
  %i.pl = getelementptr inbounds nuw i8, ptr %.1238359.us.ph, i64 2
  %i.pm = getelementptr inbounds nuw i8, ptr %.1236360.us.ph, i64 2
  %i.pn = add nuw nsw i32 %.1234361.us.ph, 1
  br label %.lr.ph363.us.prol.loopexit

.lr.ph363.us.prol.loopexit:                       ; preds = %.lr.ph363.us.prol, %.lr.ph363.us.preheader
  %.lcssa901.unr = phi ptr [ poison, %.lr.ph363.us.preheader ], [ %i.pi, %.lr.ph363.us.prol ]
  %.20362.us.unr = phi ptr [ %.20362.us.ph, %.lr.ph363.us.preheader ], [ %i.pi, %.lr.ph363.us.prol ]
  %.1234361.us.unr = phi i32 [ %.1234361.us.ph, %.lr.ph363.us.preheader ], [ %i.pn, %.lr.ph363.us.prol ]
  %.1236360.us.unr = phi ptr [ %.1236360.us.ph, %.lr.ph363.us.preheader ], [ %i.pm, %.lr.ph363.us.prol ]
  %.1238359.us.unr = phi ptr [ %.1238359.us.ph, %.lr.ph363.us.preheader ], [ %i.pl, %.lr.ph363.us.prol ]
  %.1240358.us.unr = phi ptr [ %.1240358.us.ph, %.lr.ph363.us.preheader ], [ %i.pk, %.lr.ph363.us.prol ]
  %.3245357.us.unr = phi ptr [ %.3245357.us.ph, %.lr.ph363.us.preheader ], [ %i.pj, %.lr.ph363.us.prol ]
  %i.po = icmp eq i32 %5, %.neg975
  br i1 %i.po, label %.loopexit271.us, label %.lr.ph363.us

.loopexit271.us:                                  ; preds = %.lr.ph363.us.prol.loopexit, %.lr.ph363.us, %middle.block697, %vec.epilog.middle.block725, %.preheader270.us
  %.20.lcssa.us = phi ptr [ %.19.lcssa.us, %.preheader270.us ], [ %i.on, %vec.epilog.middle.block725 ], [ %i.nz, %middle.block697 ], [ %.lcssa901.unr, %.lr.ph363.us.prol.loopexit ], [ %i.nh, %.lr.ph363.us ] ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 4 ; 3 uses
  %i.pp = icmp slt i64 %indvars.iv.next478, %invariant.op535
  %indvar.next736 = add i64 %indvar735, 1
  br i1 %i.pp, label %.lr.ph367.split.us, label %.preheader269.loopexit, !llvm.loop !1341

.lr.ph367.split:                                  ; preds = %.lr.ph367
  br i1 %i.im, label %.lr.ph367.split.split.preheader, label %.lr.ph367.split.split.us

.lr.ph367.split.split.preheader:                  ; preds = %.lr.ph367.split
  %i.pq = add i32 %3, -4
  %i.pr = sub i32 %i.pq, %.1221.lcssa
  %i.ps = and i32 %i.pr, -4
  %i.pt = add i32 %.1221.lcssa, %i.ps
  %i.pu = add i32 %i.pt, 4
  br label %.preheader269

.lr.ph367.split.split.us:                         ; preds = %.lr.ph367.split
  br i1 %i.in, label %.preheader272.us377.preheader, label %.preheader272.us377.us.preheader

.preheader272.us377.us.preheader:                 ; preds = %.lr.ph367.split.split.us
  %i.pv = zext i32 %.1221.lcssa to i64            ; 2 uses
  %i.pw = sext i32 %2 to i64                      ; 2 uses
  %i.px = sext i32 %3 to i64
  %invariant.op534.a = add nsw i64 %i.px, -3
  %i.py = add nsw i64 %i.pw, %i.pv
  %i.pz = mul i64 %i.l, %i.py
  %i.qa = mul i64 %i.pz, -2
  %i.qb = shl nsw i64 %i.il, 1
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = mul i64 %i.l, -8
  %i.qe = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check624 = icmp ult i32 %5, 8
  %min.iters.check625 = icmp ult i32 %5, 32
  %i.qf = and i64 %i.qe, 24
  %n.vec627 = and i64 %i.qe, 2147483616           ; 5 uses
  %i.qg = shl nuw nsw i64 %n.vec627, 3            ; 2 uses
  %i.qh = trunc nuw nsw i64 %n.vec627 to i32
  %cmp.n638 = icmp eq i64 %n.vec627, %i.qe
  %min.epilog.iters.check = icmp eq i64 %i.qf, 0
  %n.vec642 = and i64 %i.qe, 2147483640           ; 4 uses
  %i.qi = shl nuw nsw i64 %n.vec642, 3            ; 2 uses
  %i.qj = trunc nuw nsw i64 %n.vec642 to i32
  %cmp.n648 = icmp eq i64 %n.vec642, %i.qe
  br label %iter.check

.preheader272.us377.preheader:                    ; preds = %.lr.ph367.split.split.us
  %i.qk = add i32 %3, -4
  %i.ql = sub i32 %i.qk, %.1221.lcssa
  %i.qm = and i32 %i.ql, -4
  %i.qn = add i32 %.1221.lcssa, %i.qm
  %i.qo = add i32 %i.qn, 4
  br label %.preheader269

iter.check:                                       ; preds = %.preheader272.us377.us.preheader, %..loopexit273_crit_edge.us381.us
  %indvar621 = phi i64 [ 0, %.preheader272.us377.us.preheader ], [ %indvar.next622, %..loopexit273_crit_edge.us381.us ] ; 2 uses
  %indvars.iv471 = phi i64 [ %i.pv, %.preheader272.us377.us.preheader ], [ %indvars.iv.next472, %..loopexit273_crit_edge.us381.us ] ; 2 uses
  %.16366.us371.us = phi ptr [ %.9.lcssa, %.preheader272.us377.us.preheader ], [ %.lcssa551, %..loopexit273_crit_edge.us381.us ] ; 7 uses
  %i.qp = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.qq = add nsw i64 %indvars.iv471, %i.pw
  %i.qr = mul i64 %i.l, %i.qq
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.qr
  %i.qt = getelementptr inbounds [2 x i8], ptr %i.qs, i64 %i.il ; 6 uses
  br i1 %min.iters.check624, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck619

vector.memcheck619:                               ; preds = %iter.check
  %i.qu = ptrtoaddr ptr %i.qp to i64
  %i.qv = mul i64 %i.qd, %indvar621
  %i.qw = add i64 %i.qc, %i.qv
  %.16366.us371.us620 = ptrtoaddr ptr %.16366.us371.us to i64
  %i.qx = add i64 %i.qw, %.16366.us371.us620
  %i.qy = sub i64 %i.qu, %i.qx
  %diff.check = icmp ugt i64 %i.qy, -256
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck619
  br i1 %min.iters.check625, label %vec.epilog.ph, label %vector.ph626

vector.ph626:                                     ; preds = %vector.main.loop.iter.check
  %i.qz = getelementptr i8, ptr %.16366.us371.us, i64 %i.qg ; 2 uses
  %i.ra = getelementptr i8, ptr %i.qt, i64 %i.qg
  br label %vector.body628

vector.body628:                                   ; preds = %vector.body628, %vector.ph626
  %index629 = phi i64 [ 0, %vector.ph626 ], [ %index.next636, %vector.body628 ] ; 2 uses
  %i.rb = shl i64 %index629, 3                    ; 2 uses
  %next.gep630 = getelementptr i8, ptr %.16366.us371.us, i64 %i.rb ; 4 uses
  %next.gep631 = getelementptr i8, ptr %i.qt, i64 %i.rb ; 4 uses
  %i.rc = getelementptr i8, ptr %next.gep631, i64 64
  %i.rd = getelementptr i8, ptr %next.gep631, i64 128
  %i.re = getelementptr i8, ptr %next.gep631, i64 192
  %wide.load632.a = load <8 x i64>, ptr %next.gep631, align 1, !tbaa !116
  %wide.load633.a = load <8 x i64>, ptr %i.rc, align 1, !tbaa !116
  %wide.load634 = load <8 x i64>, ptr %i.rd, align 1, !tbaa !116
  %wide.load635 = load <8 x i64>, ptr %i.re, align 1, !tbaa !116
  %i.rf = getelementptr i8, ptr %next.gep630, i64 64
  %i.rg = getelementptr i8, ptr %next.gep630, i64 128
  %i.rh = getelementptr i8, ptr %next.gep630, i64 192
  store <8 x i64> %wide.load632.a, ptr %next.gep630, align 1, !tbaa !116
  store <8 x i64> %wide.load633.a, ptr %i.rf, align 1, !tbaa !116
  store <8 x i64> %wide.load634, ptr %i.rg, align 1, !tbaa !116
  store <8 x i64> %wide.load635, ptr %i.rh, align 1, !tbaa !116
  %index.next636 = add nuw i64 %index629, 32      ; 2 uses
  %i.ri = icmp eq i64 %index.next636, %n.vec627
  br i1 %i.ri, label %middle.block637, label %vector.body628, !llvm.loop !1342

middle.block637:                                  ; preds = %vector.body628
  br i1 %cmp.n638, label %..loopexit273_crit_edge.us381.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block637
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !520

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec627, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rj = getelementptr i8, ptr %.16366.us371.us, i64 %i.qi ; 2 uses
  %i.rk = getelementptr i8, ptr %i.qt, i64 %i.qi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index643 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next647, %vec.epilog.vector.body ] ; 2 uses
  %i.rl = shl i64 %index643, 3                    ; 2 uses
  %next.gep644 = getelementptr i8, ptr %.16366.us371.us, i64 %i.rl
  %next.gep645 = getelementptr i8, ptr %i.qt, i64 %i.rl
  %wide.load646 = load <8 x i64>, ptr %next.gep645, align 1, !tbaa !116
  store <8 x i64> %wide.load646, ptr %next.gep644, align 1, !tbaa !116
  %index.next647 = add nuw i64 %index643, 8       ; 2 uses
  %i.rm = icmp eq i64 %index.next647, %n.vec642
  br i1 %i.rm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1343

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n648, label %..loopexit273_crit_edge.us381.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck619, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.17340.us373.us.ph = phi ptr [ %.16366.us371.us, %iter.check ], [ %.16366.us371.us, %vector.memcheck619 ], [ %i.qz, %vec.epilog.iter.check ], [ %i.rj, %vec.epilog.middle.block ] ; 2 uses
  %.0241339.us374.us.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck619 ], [ %i.qh, %vec.epilog.iter.check ], [ %i.qj, %vec.epilog.middle.block ] ; 4 uses
  %.0242338.us375.us.ph = phi ptr [ %i.qt, %iter.check ], [ %i.qt, %vector.memcheck619 ], [ %i.ra, %vec.epilog.iter.check ], [ %i.rk, %vec.epilog.middle.block ] ; 2 uses
  %i.rn = sub i32 %5, %.0241339.us374.us.ph
  %xtraiter951 = and i32 %i.rn, 7                 ; 2 uses
  %lcmp.mod952.not = icmp eq i32 %xtraiter951, 0
  br i1 %lcmp.mod952.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.17340.us373.us.prol = phi ptr [ %i.rp, %vec.epilog.scalar.ph.prol ], [ %.17340.us373.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0241339.us374.us.prol = phi i32 [ %i.rr, %vec.epilog.scalar.ph.prol ], [ %.0241339.us374.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0242338.us375.us.prol = phi ptr [ %i.rq, %vec.epilog.scalar.ph.prol ], [ %.0242338.us375.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter953 = phi i32 [ %prol.iter953.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ro = load i64, ptr %.0242338.us375.us.prol, align 1, !tbaa !116
  store i64 %i.ro, ptr %.17340.us373.us.prol, align 1, !tbaa !116
  %i.rp = getelementptr inbounds nuw i8, ptr %.17340.us373.us.prol, i64 8 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.0242338.us375.us.prol, i64 8 ; 2 uses
  %i.rr = add nuw nsw i32 %.0241339.us374.us.prol, 1 ; 2 uses
  %prol.iter953.next = add i32 %prol.iter953, 1   ; 2 uses
  %prol.iter953.cmp.not = icmp eq i32 %prol.iter953.next, %xtraiter951
  br i1 %prol.iter953.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1344

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa902.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.rp, %vec.epilog.scalar.ph.prol ]
  %.17340.us373.us.unr = phi ptr [ %.17340.us373.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rp, %vec.epilog.scalar.ph.prol ]
  %.0241339.us374.us.unr = phi i32 [ %.0241339.us374.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rr, %vec.epilog.scalar.ph.prol ]
  %.0242338.us375.us.unr = phi ptr [ %.0242338.us375.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rq, %vec.epilog.scalar.ph.prol ]
  %i.rs = sub i32 %.0241339.us374.us.ph, %5
  %i.rt = icmp ugt i32 %i.rs, -8
  br i1 %i.rt, label %..loopexit273_crit_edge.us381.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.17340.us373.us = phi ptr [ %i.sq, %vec.epilog.scalar.ph ], [ %.17340.us373.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0241339.us374.us = phi i32 [ %i.ss, %vec.epilog.scalar.ph ], [ %.0241339.us374.us.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0242338.us375.us = phi ptr [ %i.sr, %vec.epilog.scalar.ph ], [ %.0242338.us375.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ru = load i64, ptr %.0242338.us375.us, align 1, !tbaa !116
  store i64 %i.ru, ptr %.17340.us373.us, align 1, !tbaa !116
  %i.rv = getelementptr inbounds nuw i8, ptr %.17340.us373.us, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %.0242338.us375.us, i64 8
  %i.rx = load i64, ptr %i.rw, align 1, !tbaa !116
  store i64 %i.rx, ptr %i.rv, align 1, !tbaa !116
  %i.ry = getelementptr inbounds nuw i8, ptr %.17340.us373.us, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %.0242338.us375.us, i64 16
  %i.sa = load i64, ptr %i.rz, align 1, !tbaa !116
  store i64 %i.sa, ptr %i.ry, align 1, !tbaa !116
  %i.sb = getelementptr inbounds nuw i8, ptr %.17340.us373.us, i64 24
  %i.sc = getelementptr inbounds nuw i8, ptr %.0242338.us375.us, i64 24
  %i.sd = load i64, ptr %i.sc, align 1, !tbaa !116
  store i64 %i.sd, ptr %i.sb, align 1, !tbaa !116
  %i.se = getelementptr inbounds nuw i8, ptr %.17340.us373.us, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %.0242338.us375.us, i64 32
  %i.sg = load i64, ptr %i.sf, align 1, !tbaa !116
  store i64 %i.sg, ptr %i.se, align 1, !tbaa !116
  %i.sh = getelementptr inbounds nuw i8, ptr %.17340.us373.us, i64 40
  %i.si = getelementptr inbounds nuw i8, ptr %.0242338.us375.us, i64 40
  %i.sj = load i64, ptr %i.si, align 1, !tbaa !116
  store i64 %i.sj, ptr %i.sh, align 1, !tbaa !116
  %i.sk = getelementptr inbounds nuw i8, ptr %.17340.us373.us, i64 48
  %i.sl = getelementptr inbounds nuw i8, ptr %.0242338.us375.us, i64 48
  %i.sm = load i64, ptr %i.sl, align 1, !tbaa !116
  store i64 %i.sm, ptr %i.sk, align 1, !tbaa !116
  %i.sn = getelementptr inbounds nuw i8, ptr %.17340.us373.us, i64 56
  %i.so = getelementptr inbounds nuw i8, ptr %.0242338.us375.us, i64 56
  %i.sp = load i64, ptr %i.so, align 1, !tbaa !116
  store i64 %i.sp, ptr %i.sn, align 1, !tbaa !116
  %i.sq = getelementptr inbounds nuw i8, ptr %.17340.us373.us, i64 64 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.0242338.us375.us, i64 64
  %i.ss = add nuw nsw i32 %.0241339.us374.us, 8   ; 2 uses
  %exitcond470.not.7 = icmp eq i32 %i.ss, %5
  br i1 %exitcond470.not.7, label %..loopexit273_crit_edge.us381.us, label %vec.epilog.scalar.ph, !llvm.loop !1345

..loopexit273_crit_edge.us381.us:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block637
  %.lcssa551 = phi ptr [ %i.rj, %vec.epilog.middle.block ], [ %i.qz, %middle.block637 ], [ %.lcssa902.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.sq, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 4 ; 3 uses
  %i.st = icmp slt i64 %indvars.iv.next472, %invariant.op534.a
  %indvar.next622 = add i64 %indvar621, 1
  br i1 %i.st, label %iter.check, label %.preheader269.loopexit428, !llvm.loop !1341

bb.j:                                             ; preds = %.lr.ph335, %.loopexit275
  %indvar588 = phi i64 [ 0, %.lr.ph335 ], [ %indvar.next589, %.loopexit275 ] ; 2 uses
  %indvars.iv467 = phi i64 [ %i.bl, %.lr.ph335 ], [ %indvars.iv.next468, %.loopexit275 ] ; 2 uses
  %.9334 = phi ptr [ %.0219.lcssa, %.lr.ph335 ], [ %.15, %.loopexit275 ] ; 13 uses
  %i.su = mul i64 %i.bw, %indvar588               ; 3 uses
  %i.sv = load ptr, ptr %0, align 8, !tbaa !18    ; 4 uses
  %i.sw = add i64 %indvars.iv467, %i.bn
  %i.sx = mul i64 %i.l, %i.sw
  %i.sy = getelementptr [2 x i8], ptr %i.sv, i64 %i.sx
  %i.sz = getelementptr [2 x i8], ptr %i.sy, i64 %i.bb ; 10 uses
  br i1 %brmerge421, label %.loopexit278, label %.lr.ph318.preheader

.lr.ph318.preheader:                              ; preds = %bb.j
  br i1 %i.cb, label %.lr.ph318.epil.preheader, label %.lr.ph318

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %.lr.ph318
  %.10317 = phi ptr [ %i.tw, %.lr.ph318 ], [ %.9334, %.lr.ph318.preheader ] ; 9 uses
  %.0251315 = phi ptr [ %i.tx, %.lr.ph318 ], [ %i.sz, %.lr.ph318.preheader ] ; 9 uses
  %niter941 = phi i32 [ %niter941.next.7, %.lr.ph318 ], [ 0, %.lr.ph318.preheader ]
  %i.ta = load <2 x i64>, ptr %.0251315, align 1, !tbaa !116
  store <2 x i64> %i.ta, ptr %.10317, align 1, !tbaa !116
  %i.tb = getelementptr inbounds nuw i8, ptr %.10317, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %.0251315, i64 16
  %i.td = load <2 x i64>, ptr %i.tc, align 1, !tbaa !116
  store <2 x i64> %i.td, ptr %i.tb, align 1, !tbaa !116
  %i.te = getelementptr inbounds nuw i8, ptr %.10317, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %.0251315, i64 32
  %i.tg = load <2 x i64>, ptr %i.tf, align 1, !tbaa !116
  store <2 x i64> %i.tg, ptr %i.te, align 1, !tbaa !116
  %i.th = getelementptr inbounds nuw i8, ptr %.10317, i64 48
  %i.ti = getelementptr inbounds nuw i8, ptr %.0251315, i64 48
  %i.tj = load <2 x i64>, ptr %i.ti, align 1, !tbaa !116
  store <2 x i64> %i.tj, ptr %i.th, align 1, !tbaa !116
  %i.tk = getelementptr inbounds nuw i8, ptr %.10317, i64 64
  %i.tl = getelementptr inbounds nuw i8, ptr %.0251315, i64 64
  %i.tm = load <2 x i64>, ptr %i.tl, align 1, !tbaa !116
  store <2 x i64> %i.tm, ptr %i.tk, align 1, !tbaa !116
end_hunk_7
begin_hunk_8_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %conflict.rdx599 = or i1 %found.conflict595, %found.conflict598
  br i1 %conflict.rdx599, label %.lr.ph325.preheader903, label %vector.ph602

vector.ph602:                                     ; preds = %vector.memcheck586
  %i.uk = getelementptr i8, ptr %.9334, i64 %i.ce ; 2 uses
  %i.ul = getelementptr i8, ptr %i.ty, i64 %i.cg
  %i.um = getelementptr i8, ptr %i.sz, i64 %i.cg
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next612, %vector.body604 ] ; 3 uses
  %i.un = shl i64 %index605, 4
  %next.gep606.a = getelementptr i8, ptr %.9334, i64 %i.un
  %i.uo = shl i64 %index605, 3                    ; 2 uses
  %next.gep607 = getelementptr i8, ptr %i.ty, i64 %i.uo
  %next.gep608 = getelementptr i8, ptr %i.sz, i64 %i.uo
  %wide.load609 = load <8 x i64>, ptr %next.gep608, align 1, !tbaa !116, !alias.scope !1347
  %wide.load610 = load <8 x i64>, ptr %next.gep607, align 1, !tbaa !116, !alias.scope !1350
  %interleaved.vec611 = shufflevector <8 x i64> %wide.load609, <8 x i64> %wide.load610, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i64> %interleaved.vec611, ptr %next.gep606.a, align 1, !tbaa !116, !alias.scope !1352, !noalias !1354
  %index.next612 = add nuw i64 %index605, 8       ; 2 uses
  %i.up = icmp eq i64 %index.next612, %n.vec603
  br i1 %i.up, label %middle.block613, label %vector.body604, !llvm.loop !1355

middle.block613:                                  ; preds = %vector.body604
  br i1 %cmp.n614, label %.loopexit275, label %.lr.ph325.preheader903

.lr.ph325.preheader903:                           ; preds = %vector.memcheck586, %.lr.ph325.preheader, %middle.block613
  %.12324.ph = phi ptr [ %.9334, %vector.memcheck586 ], [ %.9334, %.lr.ph325.preheader ], [ %i.uk, %middle.block613 ] ; 2 uses
  %.0248323.ph = phi i32 [ 0, %vector.memcheck586 ], [ 0, %.lr.ph325.preheader ], [ %i.cf, %middle.block613 ] ; 4 uses
  %.0249322.ph = phi ptr [ %i.ty, %vector.memcheck586 ], [ %i.ty, %.lr.ph325.preheader ], [ %i.ul, %middle.block613 ] ; 2 uses
  %.2253321.ph = phi ptr [ %i.sz, %vector.memcheck586 ], [ %i.sz, %.lr.ph325.preheader ], [ %i.um, %middle.block613 ] ; 2 uses
  %i.uq = sub i32 %5, %.0248323.ph
  %xtraiter949 = and i32 %i.uq, 3                 ; 2 uses
  %lcmp.mod950.not = icmp eq i32 %xtraiter949, 0
  br i1 %lcmp.mod950.not, label %.lr.ph325.prol.loopexit, label %.lr.ph325.prol

.lr.ph325.prol:                                   ; preds = %.lr.ph325.preheader903, %.lr.ph325.prol
  %.12324.prol = phi ptr [ %i.uu, %.lr.ph325.prol ], [ %.12324.ph, %.lr.ph325.preheader903 ] ; 3 uses
  %.0248323.prol = phi i32 [ %i.ux, %.lr.ph325.prol ], [ %.0248323.ph, %.lr.ph325.preheader903 ]
  %.0249322.prol = phi ptr [ %i.uw, %.lr.ph325.prol ], [ %.0249322.ph, %.lr.ph325.preheader903 ] ; 2 uses
  %.2253321.prol = phi ptr [ %i.uv, %.lr.ph325.prol ], [ %.2253321.ph, %.lr.ph325.preheader903 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph325.prol ], [ 0, %.lr.ph325.preheader903 ]
  %i.ur = load i64, ptr %.2253321.prol, align 1, !tbaa !116
  store i64 %i.ur, ptr %.12324.prol, align 1, !tbaa !116
  %i.us = getelementptr inbounds nuw i8, ptr %.12324.prol, i64 8
  %i.ut = load i64, ptr %.0249322.prol, align 1, !tbaa !116
  store i64 %i.ut, ptr %i.us, align 1, !tbaa !116
  %i.uu = getelementptr inbounds nuw i8, ptr %.12324.prol, i64 16 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.2253321.prol, i64 8 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.0249322.prol, i64 8 ; 2 uses
  %i.ux = add nuw nsw i32 %.0248323.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter949
  br i1 %prol.iter.cmp.not, label %.lr.ph325.prol.loopexit, label %.lr.ph325.prol, !llvm.loop !1356

.lr.ph325.prol.loopexit:                          ; preds = %.lr.ph325.prol, %.lr.ph325.preheader903
  %.lcssa908.unr = phi ptr [ poison, %.lr.ph325.preheader903 ], [ %i.uu, %.lr.ph325.prol ]
  %.12324.unr = phi ptr [ %.12324.ph, %.lr.ph325.preheader903 ], [ %i.uu, %.lr.ph325.prol ]
  %.0248323.unr = phi i32 [ %.0248323.ph, %.lr.ph325.preheader903 ], [ %i.ux, %.lr.ph325.prol ]
  %.0249322.unr = phi ptr [ %.0249322.ph, %.lr.ph325.preheader903 ], [ %i.uw, %.lr.ph325.prol ]
  %.2253321.unr = phi ptr [ %.2253321.ph, %.lr.ph325.preheader903 ], [ %i.uv, %.lr.ph325.prol ]
  %i.uy = sub i32 %.0248323.ph, %5
  %i.uz = icmp ugt i32 %i.uy, -4
  br i1 %i.uz, label %.loopexit275, label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph325.prol.loopexit, %.lr.ph325
  %.12324 = phi ptr [ %i.vv, %.lr.ph325 ], [ %.12324.unr, %.lr.ph325.prol.loopexit ] ; 9 uses
  %.0248323 = phi i32 [ %i.vy, %.lr.ph325 ], [ %.0248323.unr, %.lr.ph325.prol.loopexit ]
  %.0249322 = phi ptr [ %i.vx, %.lr.ph325 ], [ %.0249322.unr, %.lr.ph325.prol.loopexit ] ; 5 uses
  %.2253321 = phi ptr [ %i.vw, %.lr.ph325 ], [ %.2253321.unr, %.lr.ph325.prol.loopexit ] ; 5 uses
  %i.va = load i64, ptr %.2253321, align 1, !tbaa !116
  store i64 %i.va, ptr %.12324, align 1, !tbaa !116
  %i.vb = getelementptr inbounds nuw i8, ptr %.12324, i64 8
  %i.vc = load i64, ptr %.0249322, align 1, !tbaa !116
  store i64 %i.vc, ptr %i.vb, align 1, !tbaa !116
  %i.vd = getelementptr inbounds nuw i8, ptr %.12324, i64 16
  %i.ve = getelementptr inbounds nuw i8, ptr %.2253321, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %.0249322, i64 8
  %i.vg = load i64, ptr %i.ve, align 1, !tbaa !116
  store i64 %i.vg, ptr %i.vd, align 1, !tbaa !116
  %i.vh = getelementptr inbounds nuw i8, ptr %.12324, i64 24
  %i.vi = load i64, ptr %i.vf, align 1, !tbaa !116
  store i64 %i.vi, ptr %i.vh, align 1, !tbaa !116
  %i.vj = getelementptr inbounds nuw i8, ptr %.12324, i64 32
  %i.vk = getelementptr inbounds nuw i8, ptr %.2253321, i64 16
  %i.vl = getelementptr inbounds nuw i8, ptr %.0249322, i64 16
  %i.vm = load i64, ptr %i.vk, align 1, !tbaa !116
  store i64 %i.vm, ptr %i.vj, align 1, !tbaa !116
  %i.vn = getelementptr inbounds nuw i8, ptr %.12324, i64 40
  %i.vo = load i64, ptr %i.vl, align 1, !tbaa !116
  store i64 %i.vo, ptr %i.vn, align 1, !tbaa !116
  %i.vp = getelementptr inbounds nuw i8, ptr %.12324, i64 48
  %i.vq = getelementptr inbounds nuw i8, ptr %.2253321, i64 24
  %i.vr = getelementptr inbounds nuw i8, ptr %.0249322, i64 24
  %i.vs = load i64, ptr %i.vq, align 1, !tbaa !116
  store i64 %i.vs, ptr %i.vp, align 1, !tbaa !116
  %i.vt = getelementptr inbounds nuw i8, ptr %.12324, i64 56
  %i.vu = load i64, ptr %i.vr, align 1, !tbaa !116
  store i64 %i.vu, ptr %i.vt, align 1, !tbaa !116
  %i.vv = getelementptr inbounds nuw i8, ptr %.12324, i64 64 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.2253321, i64 32
  %i.vx = getelementptr inbounds nuw i8, ptr %.0249322, i64 32
  %i.vy = add nuw nsw i32 %.0248323, 4            ; 2 uses
  %exitcond465.not.3 = icmp eq i32 %i.vy, %5
  br i1 %exitcond465.not.3, label %.loopexit275, label %.lr.ph325, !llvm.loop !1357

.loopexit276:                                     ; preds = %.loopexit278
  br i1 %brmerge424, label %.loopexit275, label %.lr.ph331.preheader

.lr.ph331.preheader:                              ; preds = %.loopexit276
  br i1 %i.cc, label %.lr.ph331.epil.preheader, label %.lr.ph331

.lr.ph331:                                        ; preds = %.lr.ph331.preheader, %.lr.ph331
  %.14330 = phi ptr [ %i.wn, %.lr.ph331 ], [ %.9334, %.lr.ph331.preheader ] ; 5 uses
  %.4255328 = phi ptr [ %i.wo, %.lr.ph331 ], [ %i.sz, %.lr.ph331.preheader ] ; 5 uses
  %niter948 = phi i32 [ %niter948.next.3, %.lr.ph331 ], [ 0, %.lr.ph331.preheader ]
  %i.vz = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.4255328, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.wa = trunc <8 x i32> %i.vz to <8 x i16>
  store <8 x i16> %i.wa, ptr %.14330, align 1, !tbaa !116
  %i.wb = getelementptr inbounds nuw i8, ptr %.14330, i64 16
  %i.wc = getelementptr inbounds nuw i8, ptr %.4255328, i64 2
  %i.wd = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.wc, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.we = trunc <8 x i32> %i.wd to <8 x i16>
  store <8 x i16> %i.we, ptr %i.wb, align 1, !tbaa !116
  %i.wf = getelementptr inbounds nuw i8, ptr %.14330, i64 32
  %i.wg = getelementptr inbounds nuw i8, ptr %.4255328, i64 4
  %i.wh = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.wg, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.wi = trunc <8 x i32> %i.wh to <8 x i16>
  store <8 x i16> %i.wi, ptr %i.wf, align 1, !tbaa !116
  %i.wj = getelementptr inbounds nuw i8, ptr %.14330, i64 48
  %i.wk = getelementptr inbounds nuw i8, ptr %.4255328, i64 6
  %i.wl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.wk, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.wm = trunc <8 x i32> %i.wl to <8 x i16>
  store <8 x i16> %i.wm, ptr %i.wj, align 1, !tbaa !116
  %i.wn = getelementptr inbounds nuw i8, ptr %.14330, i64 64 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.4255328, i64 8 ; 2 uses
  %niter948.next.3 = add nuw nsw i32 %niter948, 4 ; 2 uses
  %niter948.ncmp.3 = icmp eq i32 %niter948.next.3, %unroll_iter947
  br i1 %niter948.ncmp.3, label %.loopexit275.loopexit904.unr-lcssa, label %.lr.ph331, !llvm.loop !1358

.loopexit275.loopexit904.unr-lcssa:               ; preds = %.lr.ph331
  br i1 %lcmp.mod944.not, label %.loopexit275, label %.lr.ph331.epil.preheader

.lr.ph331.epil.preheader:                         ; preds = %.loopexit275.loopexit904.unr-lcssa, %.lr.ph331.preheader
  %.14330.epil.init = phi ptr [ %.9334, %.lr.ph331.preheader ], [ %i.wn, %.loopexit275.loopexit904.unr-lcssa ]
  %.4255328.epil.init = phi ptr [ %i.sz, %.lr.ph331.preheader ], [ %i.wo, %.loopexit275.loopexit904.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod946)
  br label %.lr.ph331.epil

.lr.ph331.epil:                                   ; preds = %.lr.ph331.epil, %.lr.ph331.epil.preheader
  %.14330.epil = phi ptr [ %i.wr, %.lr.ph331.epil ], [ %.14330.epil.init, %.lr.ph331.epil.preheader ] ; 2 uses
  %.4255328.epil = phi ptr [ %i.ws, %.lr.ph331.epil ], [ %.4255328.epil.init, %.lr.ph331.epil.preheader ] ; 2 uses
  %epil.iter943 = phi i32 [ %epil.iter943.next, %.lr.ph331.epil ], [ 0, %.lr.ph331.epil.preheader ]
  %i.wp = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.4255328.epil, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.wq = trunc <8 x i32> %i.wp to <8 x i16>
  store <8 x i16> %i.wq, ptr %.14330.epil, align 1, !tbaa !116
  %i.wr = getelementptr inbounds nuw i8, ptr %.14330.epil, i64 16 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.4255328.epil, i64 2
  %epil.iter943.next = add i32 %epil.iter943, 1   ; 2 uses
  %epil.iter943.cmp.not = icmp eq i32 %epil.iter943.next, %xtraiter942
  br i1 %epil.iter943.cmp.not, label %.loopexit275, label %.lr.ph331.epil, !llvm.loop !1359

.loopexit275.loopexit905.unr-lcssa:               ; preds = %.lr.ph318
  br i1 %lcmp.mod937.not, label %.loopexit275, label %.lr.ph318.epil.preheader

.lr.ph318.epil.preheader:                         ; preds = %.loopexit275.loopexit905.unr-lcssa, %.lr.ph318.preheader
  %.10317.epil.init = phi ptr [ %.9334, %.lr.ph318.preheader ], [ %i.tw, %.loopexit275.loopexit905.unr-lcssa ]
  %.0251315.epil.init = phi ptr [ %i.sz, %.lr.ph318.preheader ], [ %i.tx, %.loopexit275.loopexit905.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod939)
  br label %.lr.ph318.epil

.lr.ph318.epil:                                   ; preds = %.lr.ph318.epil, %.lr.ph318.epil.preheader
  %.10317.epil = phi ptr [ %i.wu, %.lr.ph318.epil ], [ %.10317.epil.init, %.lr.ph318.epil.preheader ] ; 2 uses
  %.0251315.epil = phi ptr [ %i.wv, %.lr.ph318.epil ], [ %.0251315.epil.init, %.lr.ph318.epil.preheader ] ; 2 uses
  %epil.iter936 = phi i32 [ %epil.iter936.next, %.lr.ph318.epil ], [ 0, %.lr.ph318.epil.preheader ]
  %i.wt = load <2 x i64>, ptr %.0251315.epil, align 1, !tbaa !116
  store <2 x i64> %i.wt, ptr %.10317.epil, align 1, !tbaa !116
  %i.wu = getelementptr inbounds nuw i8, ptr %.10317.epil, i64 16 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.0251315.epil, i64 16
  %epil.iter936.next = add i32 %epil.iter936, 1   ; 2 uses
  %epil.iter936.cmp.not = icmp eq i32 %epil.iter936.next, %xtraiter935
  br i1 %epil.iter936.cmp.not, label %.loopexit275, label %.lr.ph318.epil, !llvm.loop !1360

.loopexit275:                                     ; preds = %.loopexit275.loopexit905.unr-lcssa, %.lr.ph318.epil, %.loopexit275.loopexit904.unr-lcssa, %.lr.ph331.epil, %.lr.ph325.prol.loopexit, %.lr.ph325, %middle.block613, %bb.k, %.loopexit276
  %.15 = phi ptr [ %.9334, %.loopexit276 ], [ %i.wr, %.lr.ph331.epil ], [ %i.vv, %.lr.ph325 ], [ %.9334, %bb.k ], [ %i.uk, %middle.block613 ], [ %.lcssa908.unr, %.lr.ph325.prol.loopexit ], [ %i.wn, %.loopexit275.loopexit904.unr-lcssa ], [ %i.tw, %.loopexit275.loopexit905.unr-lcssa ], [ %i.wu, %.lr.ph318.epil ] ; 2 uses
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 8 ; 3 uses
  %i.ww = icmp slt i64 %indvars.iv.next468, %invariant.op
  %indvar.next589 = add i64 %indvar588, 1
  br i1 %i.ww, label %bb.j, label %.preheader274.loopexit, !llvm.loop !1361

.preheader269.loopexit:                           ; preds = %.loopexit271.us
  %i.wx = trunc nsw i64 %indvars.iv.next478 to i32
  br label %.preheader269

.preheader269.loopexit428:                        ; preds = %..loopexit273_crit_edge.us381.us
  %i.wy = trunc nsw i64 %indvars.iv.next472 to i32
  br label %.preheader269

.preheader269:                                    ; preds = %.preheader269.loopexit428, %.preheader272.us377.preheader, %.lr.ph367.split.split.preheader, %.preheader269.loopexit, %.preheader274
  %.2222.lcssa = phi i32 [ %.1221.lcssa, %.preheader274 ], [ %i.wx, %.preheader269.loopexit ], [ %i.pu, %.lr.ph367.split.split.preheader ], [ %i.qo, %.preheader272.us377.preheader ], [ %i.wy, %.preheader269.loopexit428 ] ; 5 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %.preheader274 ], [ %.20.lcssa.us, %.preheader269.loopexit ], [ %.9.lcssa, %.lr.ph367.split.split.preheader ], [ %.9.lcssa, %.preheader272.us377.preheader ], [ %.lcssa551, %.preheader269.loopexit428 ] ; 3 uses
  %i.wz = or disjoint i32 %.2222.lcssa, 1
  %i.xa = icmp slt i32 %i.wz, %3
  br i1 %i.xa, label %.lr.ph397, label %.preheader

.lr.ph397:                                        ; preds = %.preheader269
  %i.xb = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.xc = sext i32 %4 to i64                      ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.xb, i64 %i.xc
  %i.xd = icmp sgt i32 %5, 0
  br i1 %i.xd, label %.lr.ph393.us.preheader, label %.lr.ph397.split.preheader

.lr.ph397.split.preheader:                        ; preds = %.lr.ph397
  %i.xe = add i32 %3, -2
  %i.xf = sub i32 %i.xe, %.2222.lcssa
  %i.xg = and i32 %i.xf, -2
  %i.xh = add i32 %.2222.lcssa, %i.xg
  %i.xi = add i32 %i.xh, 2
  br label %.preheader

.lr.ph393.us.preheader:                           ; preds = %.lr.ph397
  %i.xj = sext i32 %.2222.lcssa to i64            ; 4 uses
  %i.xk = sext i32 %2 to i64                      ; 2 uses
  %i.xl = sext i32 %3 to i64
  %invariant.op536 = add nsw i64 %i.xl, -1        ; 2 uses
  %i.xm = add nsw i32 %5, -1
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %i.xo = shl nuw nsw i64 %i.xn, 2
  %i.xp = add nsw i64 %i.xj, %i.xk                ; 2 uses
  %i.xq = shl nsw i64 %i.xp, 1                    ; 3 uses
  %i.xr = add nsw i64 %i.xq, 2
  %i.xs = mul i64 %i.l, %i.xr
  %i.xt = shl nsw i64 %i.xc, 1                    ; 3 uses
  %i.xu = getelementptr i8, ptr %i.xb, i64 %i.xs
  %scevgep778.a = getelementptr i8, ptr %i.xu, i64 %i.xt
  %i.xv = add nsw i64 %i.xj, 2
  %smax779 = tail call i64 @llvm.smax.i64(i64 %invariant.op536, i64 %i.xv)
  %i.xw = xor i64 %i.xj, -1
  %i.xx = add i64 %smax779, %i.xw
  %i.xy = shl i64 %i.xx, 1
  %i.xz = and i64 %i.xy, -4                       ; 2 uses
  %i.ya = add i64 %i.xz, %i.xq
  %i.yb = add i64 %i.ya, 2
  %i.yc = mul i64 %i.l, %i.yb
  %i.yd = shl nuw nsw i64 %i.xn, 1                ; 2 uses
  %i.ye = getelementptr i8, ptr %i.xb, i64 %i.yc
  %i.yf = getelementptr i8, ptr %i.ye, i64 %i.xt
  %i.yg = getelementptr i8, ptr %i.yf, i64 %i.yd
  %scevgep780 = getelementptr i8, ptr %i.yg, i64 2
  %i.yh = mul i64 %i.l, %i.xp
  %i.yi = add i64 %i.yh, %i.xc
  %i.yj = shl i64 %i.yi, 1
  %scevgep781 = getelementptr i8, ptr %i.xb, i64 %i.yj
  %i.yk = add i64 %i.xz, %i.xq
  %i.yl = mul i64 %i.l, %i.yk
  %i.ym = getelementptr i8, ptr %i.xb, i64 %i.yl
  %i.yn = getelementptr i8, ptr %i.ym, i64 %i.xt
  %i.yo = getelementptr i8, ptr %i.yn, i64 %i.yd
  %scevgep782 = getelementptr i8, ptr %i.yo, i64 2
  %i.yp = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check792 = icmp ult i32 %5, 8
  %.mask = and i64 %i.l, 2305843009213693952
  %stride.check789 = icmp ne i64 %.mask, 0
  %min.iters.check794 = icmp ult i32 %5, 32
  %i.yq = and i64 %i.yp, 24
  %n.vec796 = and i64 %i.yp, 2147483616           ; 6 uses
  %i.yr = trunc nuw nsw i64 %n.vec796 to i32
  %i.ys = shl nuw nsw i64 %n.vec796, 1            ; 2 uses
  %i.yt = shl nuw nsw i64 %n.vec796, 2
  %cmp.n807 = icmp eq i64 %n.vec796, %i.yp
  %min.epilog.iters.check816 = icmp eq i64 %i.yq, 0
  %n.vec818 = and i64 %i.yp, 2147483640           ; 5 uses
  %i.yu = trunc nuw nsw i64 %n.vec818 to i32
  %i.yv = shl nuw nsw i64 %n.vec818, 1            ; 2 uses
  %i.yw = shl nuw nsw i64 %n.vec818, 2
  %cmp.n829 = icmp eq i64 %n.vec818, %i.yp
  br label %iter.check813

iter.check813:                                    ; preds = %.lr.ph393.us.preheader, %._crit_edge.us
  %indvars.iv482 = phi i64 [ %i.xj, %.lr.ph393.us.preheader ], [ %indvars.iv.next483, %._crit_edge.us ] ; 2 uses
  %.22396.us = phi ptr [ %.16.lcssa, %.lr.ph393.us.preheader ], [ %.lcssa542, %._crit_edge.us ] ; 9 uses
  %i.yx = add nsw i64 %indvars.iv482, %i.xk
  %i.yy = mul i64 %i.l, %i.yx
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.yy ; 7 uses
  %i.yz = getelementptr inbounds nuw [2 x i8], ptr %gep.us, i64 %i.l ; 6 uses
  br i1 %min.iters.check792, label %vec.epilog.scalar.ph814.preheader, label %vector.memcheck776

vector.memcheck776:                               ; preds = %iter.check813
  %i.za = getelementptr i8, ptr %.22396.us, i64 %i.xo
  %scevgep777 = getelementptr i8, ptr %i.za, i64 4 ; 2 uses
  %bound0783.a = icmp ult ptr %.22396.us, %scevgep780
  %bound1784.a = icmp ult ptr %scevgep778.a, %scevgep777
  %found.conflict785.a = and i1 %bound0783.a, %bound1784.a
  %bound0786 = icmp ult ptr %.22396.us, %scevgep782
  %bound1787 = icmp ult ptr %scevgep781, %scevgep777
  %found.conflict788 = and i1 %bound0786, %bound1787
  %i.zb = or i1 %found.conflict788, %stride.check789
  %conflict.rdx790 = or i1 %found.conflict785.a, %i.zb
  br i1 %conflict.rdx790, label %vec.epilog.scalar.ph814.preheader, label %vector.main.loop.iter.check793

vector.main.loop.iter.check793:                   ; preds = %vector.memcheck776
  br i1 %min.iters.check794, label %vec.epilog.ph817, label %vector.ph795

vector.ph795:                                     ; preds = %vector.main.loop.iter.check793
  %i.zc = getelementptr i8, ptr %i.yz, i64 %i.ys
  %i.zd = getelementptr i8, ptr %gep.us, i64 %i.ys
  %i.ze = getelementptr i8, ptr %.22396.us, i64 %i.yt ; 2 uses
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph795
  %index798 = phi i64 [ 0, %vector.ph795 ], [ %index.next805, %vector.body797 ] ; 3 uses
  %i.zf = shl i64 %index798, 1                    ; 2 uses
  %next.gep799 = getelementptr i8, ptr %i.yz, i64 %i.zf
  %next.gep800 = getelementptr i8, ptr %gep.us, i64 %i.zf
  %i.zg = shl i64 %index798, 2
  %next.gep801 = getelementptr i8, ptr %.22396.us, i64 %i.zg
  %wide.load802 = load <32 x i16>, ptr %next.gep800, align 2, !tbaa !821, !alias.scope !1362
  %wide.load803 = load <32 x i16>, ptr %next.gep799, align 2, !tbaa !821, !alias.scope !1365
  %interleaved.vec804 = shufflevector <32 x i16> %wide.load802, <32 x i16> %wide.load803, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec804, ptr %next.gep801, align 2, !tbaa !821, !alias.scope !1367, !noalias !1369
  %index.next805 = add nuw i64 %index798, 32      ; 2 uses
  %i.zh = icmp eq i64 %index.next805, %n.vec796
  br i1 %i.zh, label %middle.block806, label %vector.body797, !llvm.loop !1370

middle.block806:                                  ; preds = %vector.body797
  br i1 %cmp.n807, label %._crit_edge.us, label %vec.epilog.iter.check815

vec.epilog.iter.check815:                         ; preds = %middle.block806
  br i1 %min.epilog.iters.check816, label %vec.epilog.scalar.ph814.preheader, label %vec.epilog.ph817, !prof !520

vec.epilog.ph817:                                 ; preds = %vector.main.loop.iter.check793, %vec.epilog.iter.check815
  %vec.epilog.resume.val808 = phi i64 [ %n.vec796, %vec.epilog.iter.check815 ], [ 0, %vector.main.loop.iter.check793 ]
  %i.zi = getelementptr i8, ptr %i.yz, i64 %i.yv
  %i.zj = getelementptr i8, ptr %gep.us, i64 %i.yv
  %i.zk = getelementptr i8, ptr %.22396.us, i64 %i.yw ; 2 uses
  br label %vec.epilog.vector.body819

vec.epilog.vector.body819:                        ; preds = %vec.epilog.vector.body819, %vec.epilog.ph817
  %index820 = phi i64 [ %vec.epilog.resume.val808, %vec.epilog.ph817 ], [ %index.next827, %vec.epilog.vector.body819 ] ; 3 uses
  %i.zl = shl i64 %index820, 1                    ; 2 uses
  %next.gep821 = getelementptr i8, ptr %i.yz, i64 %i.zl
  %next.gep822 = getelementptr i8, ptr %gep.us, i64 %i.zl
  %i.zm = shl i64 %index820, 2
  %next.gep823 = getelementptr i8, ptr %.22396.us, i64 %i.zm
  %wide.load824 = load <8 x i16>, ptr %next.gep822, align 2, !tbaa !821, !alias.scope !1362
  %wide.load825 = load <8 x i16>, ptr %next.gep821, align 2, !tbaa !821, !alias.scope !1365
  %interleaved.vec826 = shufflevector <8 x i16> %wide.load824, <8 x i16> %wide.load825, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i16> %interleaved.vec826, ptr %next.gep823, align 2, !tbaa !821, !alias.scope !1367, !noalias !1369
  %index.next827 = add nuw i64 %index820, 8       ; 2 uses
  %i.zn = icmp eq i64 %index.next827, %n.vec818
  br i1 %i.zn, label %vec.epilog.middle.block828, label %vec.epilog.vector.body819, !llvm.loop !1371

vec.epilog.middle.block828:                       ; preds = %vec.epilog.vector.body819
  br i1 %cmp.n829, label %._crit_edge.us, label %vec.epilog.scalar.ph814.preheader

vec.epilog.scalar.ph814.preheader:                ; preds = %vector.memcheck776, %iter.check813, %vec.epilog.iter.check815, %vec.epilog.middle.block828
  %.0216392.us.ph = phi i32 [ 0, %iter.check813 ], [ 0, %vector.memcheck776 ], [ %i.yr, %vec.epilog.iter.check815 ], [ %i.yu, %vec.epilog.middle.block828 ] ; 4 uses
  %.0217391.us.ph = phi ptr [ %i.yz, %iter.check813 ], [ %i.yz, %vector.memcheck776 ], [ %i.zc, %vec.epilog.iter.check815 ], [ %i.zi, %vec.epilog.middle.block828 ] ; 2 uses
  %.0218390.us.ph = phi ptr [ %gep.us, %iter.check813 ], [ %gep.us, %vector.memcheck776 ], [ %i.zd, %vec.epilog.iter.check815 ], [ %i.zj, %vec.epilog.middle.block828 ] ; 2 uses
  %.23389.us.ph = phi ptr [ %.22396.us, %iter.check813 ], [ %.22396.us, %vector.memcheck776 ], [ %i.ze, %vec.epilog.iter.check815 ], [ %i.zk, %vec.epilog.middle.block828 ] ; 2 uses
  %i.zo = sub i32 %5, %.0216392.us.ph
  %xtraiter960.a = and i32 %i.zo, 3               ; 2 uses
  %lcmp.mod961.not.a = icmp eq i32 %xtraiter960.a, 0
  br i1 %lcmp.mod961.not.a, label %vec.epilog.scalar.ph814.prol.loopexit, label %vec.epilog.scalar.ph814.prol

vec.epilog.scalar.ph814.prol:                     ; preds = %vec.epilog.scalar.ph814.preheader, %vec.epilog.scalar.ph814.prol
  %.0216392.us.prol = phi i32 [ %i.zv, %vec.epilog.scalar.ph814.prol ], [ %.0216392.us.ph, %vec.epilog.scalar.ph814.preheader ]
  %.0217391.us.prol = phi ptr [ %i.zu, %vec.epilog.scalar.ph814.prol ], [ %.0217391.us.ph, %vec.epilog.scalar.ph814.preheader ] ; 2 uses
  %.0218390.us.prol = phi ptr [ %i.zt, %vec.epilog.scalar.ph814.prol ], [ %.0218390.us.ph, %vec.epilog.scalar.ph814.preheader ] ; 2 uses
  %.23389.us.prol = phi ptr [ %i.zs, %vec.epilog.scalar.ph814.prol ], [ %.23389.us.ph, %vec.epilog.scalar.ph814.preheader ] ; 3 uses
  %prol.iter962.a = phi i32 [ %prol.iter962.next.a, %vec.epilog.scalar.ph814.prol ], [ 0, %vec.epilog.scalar.ph814.preheader ]
  %i.zp = load i16, ptr %.0218390.us.prol, align 2, !tbaa !821
  store i16 %i.zp, ptr %.23389.us.prol, align 2, !tbaa !821
  %i.zq = load i16, ptr %.0217391.us.prol, align 2, !tbaa !821
  %i.zr = getelementptr inbounds nuw i8, ptr %.23389.us.prol, i64 2
  store i16 %i.zq, ptr %i.zr, align 2, !tbaa !821
  %i.zs = getelementptr inbounds nuw i8, ptr %.23389.us.prol, i64 4 ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.0218390.us.prol, i64 2 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.0217391.us.prol, i64 2 ; 2 uses
  %i.zv = add nuw nsw i32 %.0216392.us.prol, 1    ; 2 uses
  %prol.iter962.next.a = add i32 %prol.iter962.a, 1 ; 2 uses
  %prol.iter962.cmp.not.a = icmp eq i32 %prol.iter962.next.a, %xtraiter960.a
  br i1 %prol.iter962.cmp.not.a, label %vec.epilog.scalar.ph814.prol.loopexit, label %vec.epilog.scalar.ph814.prol, !llvm.loop !1372

vec.epilog.scalar.ph814.prol.loopexit:            ; preds = %vec.epilog.scalar.ph814.prol, %vec.epilog.scalar.ph814.preheader
  %.lcssa893.unr = phi ptr [ poison, %vec.epilog.scalar.ph814.preheader ], [ %i.zs, %vec.epilog.scalar.ph814.prol ]
  %.0216392.us.unr = phi i32 [ %.0216392.us.ph, %vec.epilog.scalar.ph814.preheader ], [ %i.zv, %vec.epilog.scalar.ph814.prol ]
  %.0217391.us.unr = phi ptr [ %.0217391.us.ph, %vec.epilog.scalar.ph814.preheader ], [ %i.zu, %vec.epilog.scalar.ph814.prol ]
  %.0218390.us.unr = phi ptr [ %.0218390.us.ph, %vec.epilog.scalar.ph814.preheader ], [ %i.zt, %vec.epilog.scalar.ph814.prol ]
  %.23389.us.unr = phi ptr [ %.23389.us.ph, %vec.epilog.scalar.ph814.preheader ], [ %i.zs, %vec.epilog.scalar.ph814.prol ]
  %i.zw = sub i32 %.0216392.us.ph, %5
  %i.zx = icmp ugt i32 %i.zw, -4
  br i1 %i.zx, label %._crit_edge.us, label %vec.epilog.scalar.ph814

vec.epilog.scalar.ph814:                          ; preds = %vec.epilog.scalar.ph814.prol.loopexit, %vec.epilog.scalar.ph814
  %.0216392.us = phi i32 [ %i.aaw, %vec.epilog.scalar.ph814 ], [ %.0216392.us.unr, %vec.epilog.scalar.ph814.prol.loopexit ]
  %.0217391.us = phi ptr [ %i.aav, %vec.epilog.scalar.ph814 ], [ %.0217391.us.unr, %vec.epilog.scalar.ph814.prol.loopexit ] ; 5 uses
  %.0218390.us = phi ptr [ %i.aau, %vec.epilog.scalar.ph814 ], [ %.0218390.us.unr, %vec.epilog.scalar.ph814.prol.loopexit ] ; 5 uses
  %.23389.us = phi ptr [ %i.aat, %vec.epilog.scalar.ph814 ], [ %.23389.us.unr, %vec.epilog.scalar.ph814.prol.loopexit ] ; 9 uses
  %i.zy = load i16, ptr %.0218390.us, align 2, !tbaa !821
  store i16 %i.zy, ptr %.23389.us, align 2, !tbaa !821
  %i.zz = load i16, ptr %.0217391.us, align 2, !tbaa !821
  %i.aaa = getelementptr inbounds nuw i8, ptr %.23389.us, i64 2
  store i16 %i.zz, ptr %i.aaa, align 2, !tbaa !821
  %i.aab = getelementptr inbounds nuw i8, ptr %.23389.us, i64 4
  %i.aac = getelementptr inbounds nuw i8, ptr %.0218390.us, i64 2
  %i.aad = getelementptr inbounds nuw i8, ptr %.0217391.us, i64 2
  %i.aae = load i16, ptr %i.aac, align 2, !tbaa !821
  store i16 %i.aae, ptr %i.aab, align 2, !tbaa !821
  %i.aaf = load i16, ptr %i.aad, align 2, !tbaa !821
  %i.aag = getelementptr inbounds nuw i8, ptr %.23389.us, i64 6
  store i16 %i.aaf, ptr %i.aag, align 2, !tbaa !821
  %i.aah = getelementptr inbounds nuw i8, ptr %.23389.us, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %.0218390.us, i64 4
end_hunk_8
begin_hunk_9_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %.0216268.ph = phi ptr [ %i.el, %vector.memcheck ], [ %i.el, %.lr.ph272.preheader ], [ %i.fg, %middle.block ] ; 3 uses
  %.0217267.ph = phi ptr [ %i.em, %vector.memcheck ], [ %i.em, %.lr.ph272.preheader ], [ %i.fh, %middle.block ] ; 3 uses
  %.4225266.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph272.preheader ], [ %i.fi, %middle.block ] ; 3 uses
  %i.fo = sub i32 %5, %.0214270.ph
  %.neg900 = add i32 %.0214270.ph, 1
  %xtraiter853 = and i32 %i.fo, 1
  %lcmp.mod854.not = icmp eq i32 %xtraiter853, 0
  br i1 %lcmp.mod854.not, label %.lr.ph272.prol.loopexit, label %.lr.ph272.prol

.lr.ph272.prol:                                   ; preds = %.lr.ph272.preheader844
  %i.fp = load i64, ptr %.4225266.ph, align 1, !tbaa !116
  store i64 %i.fp, ptr %.5271.ph, align 1, !tbaa !116
  %i.fq = getelementptr inbounds nuw i8, ptr %.5271.ph, i64 8
  %i.fr = load i64, ptr %.0217267.ph, align 1, !tbaa !116
  store i64 %i.fr, ptr %i.fq, align 1, !tbaa !116
  %i.fs = getelementptr inbounds nuw i8, ptr %.5271.ph, i64 16
  %i.ft = load i64, ptr %.0216268.ph, align 1, !tbaa !116
  store i64 %i.ft, ptr %i.fs, align 1, !tbaa !116
  %i.fu = getelementptr inbounds nuw i8, ptr %.5271.ph, i64 24
  %i.fv = load i64, ptr %.0215269.ph, align 1, !tbaa !116
  store i64 %i.fv, ptr %i.fu, align 1, !tbaa !116
  %i.fw = getelementptr inbounds nuw i8, ptr %.5271.ph, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.4225266.ph, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.0217267.ph, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.0216268.ph, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.0215269.ph, i64 8
  %i.gb = add nuw nsw i32 %.0214270.ph, 1
  br label %.lr.ph272.prol.loopexit

.lr.ph272.prol.loopexit:                          ; preds = %.lr.ph272.prol, %.lr.ph272.preheader844
  %.lcssa848.unr = phi ptr [ poison, %.lr.ph272.preheader844 ], [ %i.fw, %.lr.ph272.prol ]
  %.5271.unr = phi ptr [ %.5271.ph, %.lr.ph272.preheader844 ], [ %i.fw, %.lr.ph272.prol ]
  %.0214270.unr = phi i32 [ %.0214270.ph, %.lr.ph272.preheader844 ], [ %i.gb, %.lr.ph272.prol ]
  %.0215269.unr = phi ptr [ %.0215269.ph, %.lr.ph272.preheader844 ], [ %i.ga, %.lr.ph272.prol ]
  %.0216268.unr = phi ptr [ %.0216268.ph, %.lr.ph272.preheader844 ], [ %i.fz, %.lr.ph272.prol ]
  %.0217267.unr = phi ptr [ %.0217267.ph, %.lr.ph272.preheader844 ], [ %i.fy, %.lr.ph272.prol ]
  %.4225266.unr = phi ptr [ %.4225266.ph, %.lr.ph272.preheader844 ], [ %i.fx, %.lr.ph272.prol ]
  %i.gc = icmp eq i32 %5, %.neg900
  br i1 %i.gc, label %.loopexit250, label %.lr.ph272

.lr.ph272:                                        ; preds = %.lr.ph272.prol.loopexit, %.lr.ph272
  %.5271 = phi ptr [ %i.gw, %.lr.ph272 ], [ %.5271.unr, %.lr.ph272.prol.loopexit ] ; 9 uses
  %.0214270 = phi i32 [ %i.hb, %.lr.ph272 ], [ %.0214270.unr, %.lr.ph272.prol.loopexit ]
  %.0215269 = phi ptr [ %i.ha, %.lr.ph272 ], [ %.0215269.unr, %.lr.ph272.prol.loopexit ] ; 3 uses
  %.0216268 = phi ptr [ %i.gz, %.lr.ph272 ], [ %.0216268.unr, %.lr.ph272.prol.loopexit ] ; 3 uses
  %.0217267 = phi ptr [ %i.gy, %.lr.ph272 ], [ %.0217267.unr, %.lr.ph272.prol.loopexit ] ; 3 uses
  %.4225266 = phi ptr [ %i.gx, %.lr.ph272 ], [ %.4225266.unr, %.lr.ph272.prol.loopexit ] ; 3 uses
  %i.gd = load i64, ptr %.4225266, align 1, !tbaa !116
  store i64 %i.gd, ptr %.5271, align 1, !tbaa !116
  %i.ge = getelementptr inbounds nuw i8, ptr %.5271, i64 8
  %i.gf = load i64, ptr %.0217267, align 1, !tbaa !116
  store i64 %i.gf, ptr %i.ge, align 1, !tbaa !116
  %i.gg = getelementptr inbounds nuw i8, ptr %.5271, i64 16
  %i.gh = load i64, ptr %.0216268, align 1, !tbaa !116
  store i64 %i.gh, ptr %i.gg, align 1, !tbaa !116
  %i.gi = getelementptr inbounds nuw i8, ptr %.5271, i64 24
  %i.gj = load i64, ptr %.0215269, align 1, !tbaa !116
  store i64 %i.gj, ptr %i.gi, align 1, !tbaa !116
  %i.gk = getelementptr inbounds nuw i8, ptr %.5271, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %.4225266, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.0217267, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.0216268, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.0215269, i64 8
  %i.gp = load i64, ptr %i.gl, align 1, !tbaa !116
  store i64 %i.gp, ptr %i.gk, align 1, !tbaa !116
  %i.gq = getelementptr inbounds nuw i8, ptr %.5271, i64 40
  %i.gr = load i64, ptr %i.gm, align 1, !tbaa !116
  store i64 %i.gr, ptr %i.gq, align 1, !tbaa !116
  %i.gs = getelementptr inbounds nuw i8, ptr %.5271, i64 48
  %i.gt = load i64, ptr %i.gn, align 1, !tbaa !116
  store i64 %i.gt, ptr %i.gs, align 1, !tbaa !116
  %i.gu = getelementptr inbounds nuw i8, ptr %.5271, i64 56
  %i.gv = load i64, ptr %i.go, align 1, !tbaa !116
  store i64 %i.gv, ptr %i.gu, align 1, !tbaa !116
  %i.gw = getelementptr inbounds nuw i8, ptr %.5271, i64 64 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.4225266, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %.0217267, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %.0216268, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.0215269, i64 16
  %i.hb = add nuw nsw i32 %.0214270, 2            ; 2 uses
  %exitcond412.not.1 = icmp eq i32 %i.hb, %5
  br i1 %exitcond412.not.1, label %.loopexit250, label %.lr.ph272, !llvm.loop !1402

.loopexit251:                                     ; preds = %.loopexit254
  br i1 %brmerge372, label %.loopexit250, label %.lr.ph278.preheader

.lr.ph278.preheader:                              ; preds = %.loopexit251
  br i1 %i.aw, label %.lr.ph278.epil.preheader, label %.lr.ph278

.lr.ph278:                                        ; preds = %.lr.ph278.preheader, %.lr.ph278
  %.7277 = phi ptr [ %i.hq, %.lr.ph278 ], [ %.0208281, %.lr.ph278.preheader ] ; 5 uses
  %.6227275 = phi ptr [ %i.hr, %.lr.ph278 ], [ %i.cm, %.lr.ph278.preheader ] ; 5 uses
  %niter868 = phi i32 [ %niter868.next.3, %.lr.ph278 ], [ 0, %.lr.ph278.preheader ]
  %i.hc = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.6227275, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.hd = trunc <16 x i32> %i.hc to <16 x i16>
  store <16 x i16> %i.hd, ptr %.7277, align 1, !tbaa !116
  %i.he = getelementptr inbounds nuw i8, ptr %.7277, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %.6227275, i64 2
  %i.hg = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.hf, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.hh = trunc <16 x i32> %i.hg to <16 x i16>
  store <16 x i16> %i.hh, ptr %i.he, align 1, !tbaa !116
  %i.hi = getelementptr inbounds nuw i8, ptr %.7277, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %.6227275, i64 4
  %i.hk = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.hj, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.hl = trunc <16 x i32> %i.hk to <16 x i16>
  store <16 x i16> %i.hl, ptr %i.hi, align 1, !tbaa !116
  %i.hm = getelementptr inbounds nuw i8, ptr %.7277, i64 96
  %i.hn = getelementptr inbounds nuw i8, ptr %.6227275, i64 6
  %i.ho = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.hn, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.hp = trunc <16 x i32> %i.ho to <16 x i16>
  store <16 x i16> %i.hp, ptr %i.hm, align 1, !tbaa !116
  %i.hq = getelementptr inbounds nuw i8, ptr %.7277, i64 128 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.6227275, i64 8 ; 2 uses
  %niter868.next.3 = add nuw nsw i32 %niter868, 4 ; 2 uses
  %niter868.ncmp.3 = icmp eq i32 %niter868.next.3, %unroll_iter867
  br i1 %niter868.ncmp.3, label %.loopexit250.loopexit.unr-lcssa, label %.lr.ph278, !llvm.loop !1403

.loopexit250.loopexit.unr-lcssa:                  ; preds = %.lr.ph278
  br i1 %lcmp.mod864.not, label %.loopexit250, label %.lr.ph278.epil.preheader

.lr.ph278.epil.preheader:                         ; preds = %.loopexit250.loopexit.unr-lcssa, %.lr.ph278.preheader
  %.7277.epil.init = phi ptr [ %.0208281, %.lr.ph278.preheader ], [ %i.hq, %.loopexit250.loopexit.unr-lcssa ]
  %.6227275.epil.init = phi ptr [ %i.cm, %.lr.ph278.preheader ], [ %i.hr, %.loopexit250.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod866)
  br label %.lr.ph278.epil

.lr.ph278.epil:                                   ; preds = %.lr.ph278.epil, %.lr.ph278.epil.preheader
  %.7277.epil = phi ptr [ %i.hu, %.lr.ph278.epil ], [ %.7277.epil.init, %.lr.ph278.epil.preheader ] ; 2 uses
  %.6227275.epil = phi ptr [ %i.hv, %.lr.ph278.epil ], [ %.6227275.epil.init, %.lr.ph278.epil.preheader ] ; 2 uses
  %epil.iter863 = phi i32 [ %epil.iter863.next, %.lr.ph278.epil ], [ 0, %.lr.ph278.epil.preheader ]
  %i.hs = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %.6227275.epil, <16 x i32> %i.x, <16 x i1> splat (i1 true), i32 2)
  %i.ht = trunc <16 x i32> %i.hs to <16 x i16>
  store <16 x i16> %i.ht, ptr %.7277.epil, align 1, !tbaa !116
  %i.hu = getelementptr inbounds nuw i8, ptr %.7277.epil, i64 32 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.6227275.epil, i64 2
  %epil.iter863.next = add i32 %epil.iter863, 1   ; 2 uses
  %epil.iter863.cmp.not = icmp eq i32 %epil.iter863.next, %xtraiter862
  br i1 %epil.iter863.cmp.not, label %.loopexit250, label %.lr.ph278.epil, !llvm.loop !1404

.loopexit250.loopexit843.unr-lcssa.a:             ; preds = %.lr.ph263
  br i1 %lcmp.mod857.not, label %.loopexit250, label %.lr.ph263.epil.preheader

.lr.ph263.epil.preheader:                         ; preds = %.loopexit250.loopexit843.unr-lcssa.a, %.lr.ph263.preheader
  %.3211262.epil.init = phi ptr [ %.0208281, %.lr.ph263.preheader ], [ %i.eh, %.loopexit250.loopexit843.unr-lcssa.a ]
  %.0219260.epil.init = phi ptr [ %i.dl, %.lr.ph263.preheader ], [ %i.ej, %.loopexit250.loopexit843.unr-lcssa.a ]
  %.2223259.epil.init = phi ptr [ %i.cm, %.lr.ph263.preheader ], [ %i.ei, %.loopexit250.loopexit843.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod859)
  br label %.lr.ph263.epil

.lr.ph263.epil:                                   ; preds = %.lr.ph263.epil, %.lr.ph263.epil.preheader
  %.3211262.epil = phi ptr [ %i.hz, %.lr.ph263.epil ], [ %.3211262.epil.init, %.lr.ph263.epil.preheader ] ; 3 uses
  %.0219260.epil = phi ptr [ %i.ib, %.lr.ph263.epil ], [ %.0219260.epil.init, %.lr.ph263.epil.preheader ] ; 2 uses
  %.2223259.epil = phi ptr [ %i.ia, %.lr.ph263.epil ], [ %.2223259.epil.init, %.lr.ph263.epil.preheader ] ; 2 uses
  %epil.iter856 = phi i32 [ %epil.iter856.next, %.lr.ph263.epil ], [ 0, %.lr.ph263.epil.preheader ]
  %i.hw = load <2 x i64>, ptr %.2223259.epil, align 1, !tbaa !116
  store <2 x i64> %i.hw, ptr %.3211262.epil, align 1, !tbaa !116
  %i.hx = getelementptr inbounds nuw i8, ptr %.3211262.epil, i64 16
  %i.hy = load <2 x i64>, ptr %.0219260.epil, align 1, !tbaa !116
  store <2 x i64> %i.hy, ptr %i.hx, align 1, !tbaa !116
  %i.hz = getelementptr inbounds nuw i8, ptr %.3211262.epil, i64 32 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.2223259.epil, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %.0219260.epil, i64 16
  %epil.iter856.next = add i32 %epil.iter856, 1   ; 2 uses
  %epil.iter856.cmp.not = icmp eq i32 %epil.iter856.next, %xtraiter855
  br i1 %epil.iter856.cmp.not, label %.loopexit250, label %.lr.ph263.epil, !llvm.loop !1405

.loopexit250.loopexit846.unr-lcssa:               ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit250, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit250.loopexit846.unr-lcssa, %.lr.ph.preheader
  %.1209257.epil.init = phi ptr [ %.0208281, %.lr.ph.preheader ], [ %i.dj, %.loopexit250.loopexit846.unr-lcssa ]
  %.0221255.epil.init = phi ptr [ %i.cm, %.lr.ph.preheader ], [ %i.dk, %.loopexit250.loopexit846.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod852)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.1209257.epil = phi ptr [ %i.id, %.lr.ph.epil ], [ %.1209257.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0221255.epil = phi ptr [ %i.ie, %.lr.ph.epil ], [ %.0221255.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ic = load <4 x i64>, ptr %.0221255.epil, align 1, !tbaa !116
  store <4 x i64> %i.ic, ptr %.1209257.epil, align 1, !tbaa !116
  %i.id = getelementptr inbounds nuw i8, ptr %.1209257.epil, i64 32 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0221255.epil, i64 32
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit250, label %.lr.ph.epil, !llvm.loop !1406

.loopexit250:                                     ; preds = %.loopexit250.loopexit846.unr-lcssa, %.lr.ph.epil, %.lr.ph272.prol.loopexit, %.lr.ph272, %.loopexit250.loopexit843.unr-lcssa.a, %.lr.ph263.epil, %.loopexit250.loopexit.unr-lcssa, %.lr.ph278.epil, %middle.block, %bb.h, %bb.i, %.loopexit251
  %.8 = phi ptr [ %.0208281, %.loopexit251 ], [ %i.hu, %.lr.ph278.epil ], [ %i.gw, %.lr.ph272 ], [ %.0208281, %bb.i ], [ %i.hz, %.lr.ph263.epil ], [ %.0208281, %bb.h ], [ %i.fe, %middle.block ], [ %i.hq, %.loopexit250.loopexit.unr-lcssa ], [ %i.eh, %.loopexit250.loopexit843.unr-lcssa.a ], [ %.lcssa848.unr, %.lr.ph272.prol.loopexit ], [ %i.dj, %.loopexit250.loopexit846.unr-lcssa ], [ %i.id, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.if = or disjoint i64 %indvars.iv.next, 15
  %i.ig = icmp samesign ult i64 %i.if, %i.y
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ig, label %bb.g, label %.preheader249.loopexit, !llvm.loop !1407

.preheader244.loopexit:                           ; preds = %.loopexit245
  %i.ih = trunc nuw nsw i64 %indvars.iv.next419 to i32
  br label %.preheader244

.preheader244:                                    ; preds = %.preheader244.loopexit, %.preheader249
  %.1229.lcssa = phi i32 [ %.0228.lcssa, %.preheader249 ], [ %i.ih, %.preheader244.loopexit ] ; 8 uses
  %.9.lcssa = phi ptr [ %.0208.lcssa, %.preheader249 ], [ %.15, %.preheader244.loopexit ] ; 5 uses
  %i.ii = or disjoint i32 %.1229.lcssa, 3
  %i.ij = icmp slt i32 %i.ii, %3
  br i1 %i.ij, label %.lr.ph324, label %.preheader240

.lr.ph324:                                        ; preds = %.preheader244
  %i.ik = mul i32 %i.c, %4
  %i.il = sext i32 %i.ik to i64                   ; 4 uses
  %i.im = icmp ne i32 %i.c, 4                     ; 2 uses
  %i.in = icmp slt i32 %5, 1                      ; 2 uses
  %i.io = icmp eq i32 %i.c, 1
  %.idx = shl i64 %i.l, 2                         ; 2 uses
  %.idx233 = mul i64 %i.l, 6                      ; 2 uses
  %i.ip = icmp sgt i32 %5, 0
  br i1 %i.io, label %.lr.ph324.split.us.preheader, label %.lr.ph324.split

.lr.ph324.split.us.preheader:                     ; preds = %.lr.ph324
  %i.iq = zext i32 %.1229.lcssa to i64            ; 2 uses
  %i.ir = sext i32 %2 to i64                      ; 2 uses
  %i.is = sext i32 %3 to i64
  %brmerge375 = or i1 %i.im, %i.in
  %invariant.op484 = add nsw i64 %i.is, -3
  %i.it = add i32 %5, -1
  %i.iu = zext i32 %i.it to i64                   ; 3 uses
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = shl nuw nsw i64 %i.iu, 1                ; 3 uses
  %i.ix = add i64 %i.l, %i.iu
  %i.iy = shl i64 %i.ix, 1
  %i.iz = add i32 %5, -1                          ; 3 uses
  %i.ja = zext i32 %i.iz to i64
  %i.jb = add nuw nsw i64 %i.ja, 1                ; 5 uses
  %i.jc = add nsw i64 %i.ir, %i.iq
  %i.jd = mul i64 %i.l, %i.jc
  %i.je = mul i64 %i.jd, -2
  %i.jf = shl nsw i64 %i.il, 1
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = mul i64 %i.l, -8
  %i.ji = zext i32 %5 to i64                      ; 5 uses
  %min.iters.check678.a = icmp ult i32 %5, 8
  %min.iters.check680 = icmp ult i32 %5, 32
  %i.jj = and i64 %i.ji, 24
  %n.vec682 = and i64 %i.ji, 2147483616           ; 5 uses
  %i.jk = trunc nuw nsw i64 %n.vec682 to i32
  %i.jl = shl nuw nsw i64 %n.vec682, 3            ; 2 uses
  %cmp.n693 = icmp eq i64 %n.vec682, %i.ji
  %min.epilog.iters.check701 = icmp eq i64 %i.jj, 0
  %n.vec703 = and i64 %i.ji, 2147483640           ; 4 uses
  %i.jm = trunc nuw nsw i64 %n.vec703 to i32
  %i.jn = shl nuw nsw i64 %n.vec703, 3            ; 2 uses
  %cmp.n711 = icmp eq i64 %n.vec703, %i.ji
  %min.iters.check618.a = icmp ult i32 %i.iz, 7
  %min.iters.check620 = icmp ult i32 %i.iz, 31
  %i.jo = and i64 %i.jb, 24
  %n.vec622 = and i64 %i.jb, 8589934560           ; 6 uses
  %i.jp = trunc i64 %n.vec622 to i32
  %i.jq = shl nuw nsw i64 %n.vec622, 1            ; 4 uses
  %i.jr = shl nuw nsw i64 %n.vec622, 3
  %cmp.n637 = icmp eq i64 %i.jb, %n.vec622
  %min.epilog.iters.check648 = icmp eq i64 %i.jo, 0
  %n.vec650 = and i64 %i.jb, 8589934584           ; 5 uses
  %i.js = trunc i64 %n.vec650 to i32
  %i.jt = shl nuw nsw i64 %n.vec650, 1            ; 4 uses
  %i.ju = shl nuw nsw i64 %n.vec650, 3
  %cmp.n665 = icmp eq i64 %i.jb, %n.vec650
  br label %.lr.ph324.split.us

.lr.ph324.split.us:                               ; preds = %.lr.ph324.split.us.preheader, %.loopexit241.us
  %indvar674 = phi i64 [ 0, %.lr.ph324.split.us.preheader ], [ %indvar.next675, %.loopexit241.us ] ; 2 uses
  %indvars.iv428 = phi i64 [ %i.iq, %.lr.ph324.split.us.preheader ], [ %indvars.iv.next429, %.loopexit241.us ] ; 2 uses
  %.16323.us = phi ptr [ %.9.lcssa, %.lr.ph324.split.us.preheader ], [ %.19.lcssa.us, %.loopexit241.us ] ; 9 uses
  %.16323.us673 = ptrtoaddr ptr %.16323.us to i64
  %i.jv = mul i64 %i.jh, %indvar674
  %i.jw = add i64 %i.jg, %i.jv
  %i.jx = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.jy = ptrtoaddr ptr %i.jx to i64
  %i.jz = add nsw i64 %indvars.iv428, %i.ir
  %i.ka = mul i64 %i.l, %i.jz
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jx, i64 %i.ka
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.il ; 7 uses
  br i1 %brmerge375, label %.loopexit243.us, label %iter.check698

iter.check698:                                    ; preds = %.lr.ph324.split.us
  br i1 %min.iters.check678.a, label %.lr.ph311.us.preheader, label %vector.memcheck672

vector.memcheck672:                               ; preds = %iter.check698
  %i.kd = add i64 %i.jw, %.16323.us673
  %i.ke = sub i64 %i.jy, %i.kd
  %diff.check676 = icmp ugt i64 %i.ke, -256
  br i1 %diff.check676, label %.lr.ph311.us.preheader, label %vector.main.loop.iter.check679

vector.main.loop.iter.check679:                   ; preds = %vector.memcheck672
  br i1 %min.iters.check680, label %vec.epilog.ph702, label %vector.ph681

vector.ph681:                                     ; preds = %vector.main.loop.iter.check679
  %i.kf = getelementptr i8, ptr %i.kc, i64 %i.jl  ; 2 uses
  %i.kg = getelementptr i8, ptr %.16323.us, i64 %i.jl ; 2 uses
  br label %vector.body683

vector.body683:                                   ; preds = %vector.body683, %vector.ph681
  %index684 = phi i64 [ 0, %vector.ph681 ], [ %index.next691, %vector.body683 ] ; 2 uses
  %i.kh = shl i64 %index684, 3                    ; 2 uses
  %next.gep685 = getelementptr i8, ptr %i.kc, i64 %i.kh ; 4 uses
  %next.gep686 = getelementptr i8, ptr %.16323.us, i64 %i.kh ; 4 uses
  %i.ki = getelementptr i8, ptr %next.gep685, i64 64
  %i.kj = getelementptr i8, ptr %next.gep685, i64 128
  %i.kk = getelementptr i8, ptr %next.gep685, i64 192
  %wide.load687.a = load <8 x i64>, ptr %next.gep685, align 1, !tbaa !116
  %wide.load688.a = load <8 x i64>, ptr %i.ki, align 1, !tbaa !116
  %wide.load689 = load <8 x i64>, ptr %i.kj, align 1, !tbaa !116
  %wide.load690 = load <8 x i64>, ptr %i.kk, align 1, !tbaa !116
  %i.kl = getelementptr i8, ptr %next.gep686, i64 64
  %i.km = getelementptr i8, ptr %next.gep686, i64 128
  %i.kn = getelementptr i8, ptr %next.gep686, i64 192
  store <8 x i64> %wide.load687.a, ptr %next.gep686, align 1, !tbaa !116
  store <8 x i64> %wide.load688.a, ptr %i.kl, align 1, !tbaa !116
  store <8 x i64> %wide.load689, ptr %i.km, align 1, !tbaa !116
  store <8 x i64> %wide.load690, ptr %i.kn, align 1, !tbaa !116
  %index.next691 = add nuw i64 %index684, 32      ; 2 uses
  %i.ko = icmp eq i64 %index.next691, %n.vec682
  br i1 %i.ko, label %middle.block692, label %vector.body683, !llvm.loop !1408

middle.block692:                                  ; preds = %vector.body683
  br i1 %cmp.n693, label %iter.check645, label %vec.epilog.iter.check700

vec.epilog.iter.check700:                         ; preds = %middle.block692
  br i1 %min.epilog.iters.check701, label %.lr.ph311.us.preheader, label %vec.epilog.ph702, !prof !520

vec.epilog.ph702:                                 ; preds = %vector.main.loop.iter.check679, %vec.epilog.iter.check700
  %vec.epilog.resume.val694 = phi i64 [ %n.vec682, %vec.epilog.iter.check700 ], [ 0, %vector.main.loop.iter.check679 ]
  %i.kp = getelementptr i8, ptr %i.kc, i64 %i.jn  ; 2 uses
  %i.kq = getelementptr i8, ptr %.16323.us, i64 %i.jn ; 2 uses
  br label %vec.epilog.vector.body704

vec.epilog.vector.body704:                        ; preds = %vec.epilog.vector.body704, %vec.epilog.ph702
  %index705 = phi i64 [ %vec.epilog.resume.val694, %vec.epilog.ph702 ], [ %index.next709, %vec.epilog.vector.body704 ] ; 2 uses
  %i.kr = shl i64 %index705, 3                    ; 2 uses
  %next.gep706 = getelementptr i8, ptr %i.kc, i64 %i.kr
  %next.gep707 = getelementptr i8, ptr %.16323.us, i64 %i.kr
  %wide.load708 = load <8 x i64>, ptr %next.gep706, align 1, !tbaa !116
  store <8 x i64> %wide.load708, ptr %next.gep707, align 1, !tbaa !116
  %index.next709 = add nuw i64 %index705, 8       ; 2 uses
  %i.ks = icmp eq i64 %index.next709, %n.vec703
  br i1 %i.ks, label %vec.epilog.middle.block710, label %vec.epilog.vector.body704, !llvm.loop !1409

vec.epilog.middle.block710:                       ; preds = %vec.epilog.vector.body704
  br i1 %cmp.n711, label %iter.check645, label %.lr.ph311.us.preheader

.lr.ph311.us.preheader:                           ; preds = %vector.memcheck672, %iter.check698, %vec.epilog.iter.check700, %vec.epilog.middle.block710
  %.0199310.us.ph = phi i32 [ 0, %iter.check698 ], [ 0, %vector.memcheck672 ], [ %i.jk, %vec.epilog.iter.check700 ], [ %i.jm, %vec.epilog.middle.block710 ] ; 4 uses
  %.0200309.us.ph = phi ptr [ %i.kc, %iter.check698 ], [ %i.kc, %vector.memcheck672 ], [ %i.kf, %vec.epilog.iter.check700 ], [ %i.kp, %vec.epilog.middle.block710 ] ; 2 uses
  %.17308.us.ph = phi ptr [ %.16323.us, %iter.check698 ], [ %.16323.us, %vector.memcheck672 ], [ %i.kg, %vec.epilog.iter.check700 ], [ %i.kq, %vec.epilog.middle.block710 ] ; 2 uses
  %i.kt = sub i32 %5, %.0199310.us.ph
  %xtraiter888.a = and i32 %i.kt, 7               ; 2 uses
  %lcmp.mod889.not.a = icmp eq i32 %xtraiter888.a, 0
  br i1 %lcmp.mod889.not.a, label %.lr.ph311.us.prol.loopexit, label %.lr.ph311.us.prol

.lr.ph311.us.prol:                                ; preds = %.lr.ph311.us.preheader, %.lr.ph311.us.prol
  %.0199310.us.prol = phi i32 [ %i.kx, %.lr.ph311.us.prol ], [ %.0199310.us.ph, %.lr.ph311.us.preheader ]
  %.0200309.us.prol = phi ptr [ %i.kw, %.lr.ph311.us.prol ], [ %.0200309.us.ph, %.lr.ph311.us.preheader ] ; 2 uses
  %.17308.us.prol = phi ptr [ %i.kv, %.lr.ph311.us.prol ], [ %.17308.us.ph, %.lr.ph311.us.preheader ] ; 2 uses
  %prol.iter890 = phi i32 [ %prol.iter890.next, %.lr.ph311.us.prol ], [ 0, %.lr.ph311.us.preheader ]
  %i.ku = load i64, ptr %.0200309.us.prol, align 1, !tbaa !116
  store i64 %i.ku, ptr %.17308.us.prol, align 1, !tbaa !116
  %i.kv = getelementptr inbounds nuw i8, ptr %.17308.us.prol, i64 8 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.0200309.us.prol, i64 8 ; 3 uses
  %i.kx = add nuw nsw i32 %.0199310.us.prol, 1    ; 2 uses
  %prol.iter890.next = add i32 %prol.iter890, 1   ; 2 uses
  %prol.iter890.cmp.not = icmp eq i32 %prol.iter890.next, %xtraiter888.a
  br i1 %prol.iter890.cmp.not, label %.lr.ph311.us.prol.loopexit, label %.lr.ph311.us.prol, !llvm.loop !1410

.lr.ph311.us.prol.loopexit:                       ; preds = %.lr.ph311.us.prol, %.lr.ph311.us.preheader
  %.lcssa834.unr = phi ptr [ poison, %.lr.ph311.us.preheader ], [ %i.kv, %.lr.ph311.us.prol ]
  %.lcssa833.unr.a = phi ptr [ poison, %.lr.ph311.us.preheader ], [ %i.kw, %.lr.ph311.us.prol ]
  %.0199310.us.unr = phi i32 [ %.0199310.us.ph, %.lr.ph311.us.preheader ], [ %i.kx, %.lr.ph311.us.prol ]
  %.0200309.us.unr = phi ptr [ %.0200309.us.ph, %.lr.ph311.us.preheader ], [ %i.kw, %.lr.ph311.us.prol ]
  %.17308.us.unr = phi ptr [ %.17308.us.ph, %.lr.ph311.us.preheader ], [ %i.kv, %.lr.ph311.us.prol ]
  %i.ky = sub i32 %.0199310.us.ph, %5
  %i.kz = icmp ugt i32 %i.ky, -8
  br i1 %i.kz, label %iter.check645, label %.lr.ph311.us

.lr.ph311.us:                                     ; preds = %.lr.ph311.us.prol.loopexit, %.lr.ph311.us
  %.0199310.us = phi i32 [ %i.ly, %.lr.ph311.us ], [ %.0199310.us.unr, %.lr.ph311.us.prol.loopexit ]
  %.0200309.us = phi ptr [ %i.lx, %.lr.ph311.us ], [ %.0200309.us.unr, %.lr.ph311.us.prol.loopexit ] ; 9 uses
  %.17308.us = phi ptr [ %i.lw, %.lr.ph311.us ], [ %.17308.us.unr, %.lr.ph311.us.prol.loopexit ] ; 9 uses
  %i.la = load i64, ptr %.0200309.us, align 1, !tbaa !116
  store i64 %i.la, ptr %.17308.us, align 1, !tbaa !116
  %i.lb = getelementptr inbounds nuw i8, ptr %.17308.us, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %.0200309.us, i64 8
  %i.ld = load i64, ptr %i.lc, align 1, !tbaa !116
  store i64 %i.ld, ptr %i.lb, align 1, !tbaa !116
  %i.le = getelementptr inbounds nuw i8, ptr %.17308.us, i64 16
  %i.lf = getelementptr inbounds nuw i8, ptr %.0200309.us, i64 16
  %i.lg = load i64, ptr %i.lf, align 1, !tbaa !116
  store i64 %i.lg, ptr %i.le, align 1, !tbaa !116
  %i.lh = getelementptr inbounds nuw i8, ptr %.17308.us, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %.0200309.us, i64 24
  %i.lj = load i64, ptr %i.li, align 1, !tbaa !116
  store i64 %i.lj, ptr %i.lh, align 1, !tbaa !116
  %i.lk = getelementptr inbounds nuw i8, ptr %.17308.us, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %.0200309.us, i64 32
end_hunk_9
begin_hunk_10_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a

vector.memcheck596:                               ; preds = %iter.check645
  %i.mc = getelementptr i8, ptr %.18.us459, i64 %i.iv
  %scevgep597.a = getelementptr i8, ptr %i.mc, i64 8 ; 4 uses
  %i.md = getelementptr i8, ptr %.1.us460, i64 %.idx233
  %i.me = getelementptr i8, ptr %i.md, i64 %i.iw
  %scevgep598.a = getelementptr i8, ptr %i.me, i64 2
  %i.mf = getelementptr i8, ptr %.1.us460, i64 %.idx
  %i.mg = getelementptr i8, ptr %i.mf, i64 %i.iw
  %scevgep599.a = getelementptr i8, ptr %i.mg, i64 2
  %i.mh = getelementptr i8, ptr %.1.us460, i64 %i.iy
  %scevgep600 = getelementptr i8, ptr %i.mh, i64 2
  %i.mi = getelementptr i8, ptr %.1.us460, i64 %i.iw
  %scevgep601 = getelementptr i8, ptr %i.mi, i64 2
  %bound0602 = icmp ult ptr %.18.us459, %scevgep598.a
  %bound1603 = icmp ult ptr %i.lz, %scevgep597.a
  %found.conflict604 = and i1 %bound0602, %bound1603
  %bound0605 = icmp ult ptr %.18.us459, %scevgep599.a
  %bound1606 = icmp ult ptr %i.ma, %scevgep597.a
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx608 = or i1 %found.conflict604, %found.conflict607
  %bound0609 = icmp ult ptr %.18.us459, %scevgep600
  %bound1610 = icmp ult ptr %i.mb, %scevgep597.a
  %found.conflict611 = and i1 %bound0609, %bound1610
  %conflict.rdx612 = or i1 %conflict.rdx608, %found.conflict611
  %bound0613 = icmp ult ptr %.18.us459, %scevgep601
  %bound1614 = icmp ult ptr %.1.us460, %scevgep597.a
  %found.conflict615 = and i1 %bound0613, %bound1614
  %conflict.rdx616 = or i1 %conflict.rdx612, %found.conflict615
  br i1 %conflict.rdx616, label %.lr.ph320.us.preheader, label %vector.main.loop.iter.check619

vector.main.loop.iter.check619:                   ; preds = %vector.memcheck596
  br i1 %min.iters.check620, label %vec.epilog.ph649, label %vector.ph621

vector.ph621:                                     ; preds = %vector.main.loop.iter.check619
  %i.mj = getelementptr i8, ptr %i.lz, i64 %i.jq
  %i.mk = getelementptr i8, ptr %i.ma, i64 %i.jq
  %i.ml = getelementptr i8, ptr %i.mb, i64 %i.jq
  %i.mm = getelementptr i8, ptr %.1.us460, i64 %i.jq
  %i.mn = getelementptr i8, ptr %.18.us459, i64 %i.jr ; 2 uses
  br label %vector.body623

vector.body623:                                   ; preds = %vector.body623, %vector.ph621
  %index624 = phi i64 [ 0, %vector.ph621 ], [ %index.next635, %vector.body623 ] ; 3 uses
  %i.mo = shl i64 %index624, 1                    ; 4 uses
  %next.gep625.a = getelementptr i8, ptr %i.lz, i64 %i.mo
  %next.gep626.a = getelementptr i8, ptr %i.ma, i64 %i.mo
  %next.gep627.a = getelementptr i8, ptr %i.mb, i64 %i.mo
  %next.gep628 = getelementptr i8, ptr %.1.us460, i64 %i.mo
  %i.mp = shl i64 %index624, 3
  %next.gep629 = getelementptr i8, ptr %.18.us459, i64 %i.mp
  %wide.load630.a = load <32 x i16>, ptr %next.gep628, align 2, !tbaa !821, !alias.scope !1412
  %wide.load631.a = load <32 x i16>, ptr %next.gep627.a, align 2, !tbaa !821, !alias.scope !1415
  %wide.load632 = load <32 x i16>, ptr %next.gep626.a, align 2, !tbaa !821, !alias.scope !1417
  %wide.load633 = load <32 x i16>, ptr %next.gep625.a, align 2, !tbaa !821, !alias.scope !1419
  %i.mq = shufflevector <32 x i16> %wide.load630.a, <32 x i16> %wide.load631.a, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.mr = shufflevector <32 x i16> %wide.load632, <32 x i16> %wide.load633, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec634 = shufflevector <64 x i16> %i.mq, <64 x i16> %i.mr, <128 x i32> <i32 0, i32 32, i32 64, i32 96, i32 1, i32 33, i32 65, i32 97, i32 2, i32 34, i32 66, i32 98, i32 3, i32 35, i32 67, i32 99, i32 4, i32 36, i32 68, i32 100, i32 5, i32 37, i32 69, i32 101, i32 6, i32 38, i32 70, i32 102, i32 7, i32 39, i32 71, i32 103, i32 8, i32 40, i32 72, i32 104, i32 9, i32 41, i32 73, i32 105, i32 10, i32 42, i32 74, i32 106, i32 11, i32 43, i32 75, i32 107, i32 12, i32 44, i32 76, i32 108, i32 13, i32 45, i32 77, i32 109, i32 14, i32 46, i32 78, i32 110, i32 15, i32 47, i32 79, i32 111, i32 16, i32 48, i32 80, i32 112, i32 17, i32 49, i32 81, i32 113, i32 18, i32 50, i32 82, i32 114, i32 19, i32 51, i32 83, i32 115, i32 20, i32 52, i32 84, i32 116, i32 21, i32 53, i32 85, i32 117, i32 22, i32 54, i32 86, i32 118, i32 23, i32 55, i32 87, i32 119, i32 24, i32 56, i32 88, i32 120, i32 25, i32 57, i32 89, i32 121, i32 26, i32 58, i32 90, i32 122, i32 27, i32 59, i32 91, i32 123, i32 28, i32 60, i32 92, i32 124, i32 29, i32 61, i32 93, i32 125, i32 30, i32 62, i32 94, i32 126, i32 31, i32 63, i32 95, i32 127>
  store <128 x i16> %interleaved.vec634, ptr %next.gep629, align 2, !tbaa !821, !alias.scope !1421, !noalias !1423
  %index.next635 = add nuw i64 %index624, 32      ; 2 uses
  %i.ms = icmp eq i64 %index.next635, %n.vec622
  br i1 %i.ms, label %middle.block636, label %vector.body623, !llvm.loop !1424

middle.block636:                                  ; preds = %vector.body623
  br i1 %cmp.n637, label %.loopexit241.us, label %vec.epilog.iter.check647

vec.epilog.iter.check647:                         ; preds = %middle.block636
  br i1 %min.epilog.iters.check648, label %.lr.ph320.us.preheader, label %vec.epilog.ph649, !prof !520

vec.epilog.ph649:                                 ; preds = %vector.main.loop.iter.check619, %vec.epilog.iter.check647
  %vec.epilog.resume.val638 = phi i64 [ %n.vec622, %vec.epilog.iter.check647 ], [ 0, %vector.main.loop.iter.check619 ]
  %i.mt = getelementptr i8, ptr %i.lz, i64 %i.jt
  %i.mu = getelementptr i8, ptr %i.ma, i64 %i.jt
  %i.mv = getelementptr i8, ptr %i.mb, i64 %i.jt
  %i.mw = getelementptr i8, ptr %.1.us460, i64 %i.jt
  %i.mx = getelementptr i8, ptr %.18.us459, i64 %i.ju ; 2 uses
  br label %vec.epilog.vector.body651

vec.epilog.vector.body651:                        ; preds = %vec.epilog.vector.body651, %vec.epilog.ph649
  %index652 = phi i64 [ %vec.epilog.resume.val638, %vec.epilog.ph649 ], [ %index.next663, %vec.epilog.vector.body651 ] ; 3 uses
  %i.my = shl i64 %index652, 1                    ; 4 uses
  %next.gep653.a = getelementptr i8, ptr %i.lz, i64 %i.my
  %next.gep654.a = getelementptr i8, ptr %i.ma, i64 %i.my
  %next.gep655.a = getelementptr i8, ptr %i.mb, i64 %i.my
  %next.gep656 = getelementptr i8, ptr %.1.us460, i64 %i.my
  %i.mz = shl i64 %index652, 3
  %next.gep657 = getelementptr i8, ptr %.18.us459, i64 %i.mz
  %wide.load658.a = load <8 x i16>, ptr %next.gep656, align 2, !tbaa !821, !alias.scope !1412
  %wide.load659.a = load <8 x i16>, ptr %next.gep655.a, align 2, !tbaa !821, !alias.scope !1415
  %wide.load660 = load <8 x i16>, ptr %next.gep654.a, align 2, !tbaa !821, !alias.scope !1417
  %wide.load661 = load <8 x i16>, ptr %next.gep653.a, align 2, !tbaa !821, !alias.scope !1419
  %i.na = shufflevector <8 x i16> %wide.load658.a, <8 x i16> %wide.load659.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nb = shufflevector <8 x i16> %wide.load660, <8 x i16> %wide.load661, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec662 = shufflevector <16 x i16> %i.na, <16 x i16> %i.nb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec662, ptr %next.gep657, align 2, !tbaa !821, !alias.scope !1421, !noalias !1423
  %index.next663 = add nuw i64 %index652, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next663, %n.vec650
  br i1 %i.nc, label %vec.epilog.middle.block664, label %vec.epilog.vector.body651, !llvm.loop !1425

vec.epilog.middle.block664:                       ; preds = %vec.epilog.vector.body651
  br i1 %cmp.n665, label %.loopexit241.us, label %.lr.ph320.us.preheader

.lr.ph320.us.preheader:                           ; preds = %vector.memcheck596, %iter.check645, %vec.epilog.iter.check647, %vec.epilog.middle.block664
  %.0195319.us.ph = phi i32 [ 0, %iter.check645 ], [ 0, %vector.memcheck596 ], [ %i.jp, %vec.epilog.iter.check647 ], [ %i.js, %vec.epilog.middle.block664 ] ; 4 uses
  %.0196318.us.ph = phi ptr [ %i.lz, %iter.check645 ], [ %i.lz, %vector.memcheck596 ], [ %i.mj, %vec.epilog.iter.check647 ], [ %i.mt, %vec.epilog.middle.block664 ] ; 3 uses
  %.0197317.us.ph = phi ptr [ %i.ma, %iter.check645 ], [ %i.ma, %vector.memcheck596 ], [ %i.mk, %vec.epilog.iter.check647 ], [ %i.mu, %vec.epilog.middle.block664 ] ; 3 uses
  %.0198316.us.ph = phi ptr [ %i.mb, %iter.check645 ], [ %i.mb, %vector.memcheck596 ], [ %i.ml, %vec.epilog.iter.check647 ], [ %i.mv, %vec.epilog.middle.block664 ] ; 3 uses
  %.2315.us.ph = phi ptr [ %.1.us460, %iter.check645 ], [ %.1.us460, %vector.memcheck596 ], [ %i.mm, %vec.epilog.iter.check647 ], [ %i.mw, %vec.epilog.middle.block664 ] ; 3 uses
  %.19314.us.ph = phi ptr [ %.18.us459, %iter.check645 ], [ %.18.us459, %vector.memcheck596 ], [ %i.mn, %vec.epilog.iter.check647 ], [ %i.mx, %vec.epilog.middle.block664 ] ; 6 uses
  %i.nd = sub i32 %5, %.0195319.us.ph
  %.neg909 = add i32 %.0195319.us.ph, 1
  %xtraiter891.a = and i32 %i.nd, 1
  %lcmp.mod892.not.a = icmp eq i32 %xtraiter891.a, 0
  br i1 %lcmp.mod892.not.a, label %.lr.ph320.us.prol.loopexit, label %.lr.ph320.us.prol

.lr.ph320.us.prol:                                ; preds = %.lr.ph320.us.preheader
  %i.ne = load i16, ptr %.2315.us.ph, align 2, !tbaa !821
  store i16 %i.ne, ptr %.19314.us.ph, align 2, !tbaa !821
  %i.nf = load i16, ptr %.0198316.us.ph, align 2, !tbaa !821
  %i.ng = getelementptr inbounds nuw i8, ptr %.19314.us.ph, i64 2
  store i16 %i.nf, ptr %i.ng, align 2, !tbaa !821
  %i.nh = load i16, ptr %.0197317.us.ph, align 2, !tbaa !821
  %i.ni = getelementptr inbounds nuw i8, ptr %.19314.us.ph, i64 4
  store i16 %i.nh, ptr %i.ni, align 2, !tbaa !821
  %i.nj = load i16, ptr %.0196318.us.ph, align 2, !tbaa !821
  %i.nk = getelementptr inbounds nuw i8, ptr %.19314.us.ph, i64 6
  store i16 %i.nj, ptr %i.nk, align 2, !tbaa !821
  %i.nl = getelementptr inbounds nuw i8, ptr %.19314.us.ph, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.2315.us.ph, i64 2
  %i.nn = getelementptr inbounds nuw i8, ptr %.0198316.us.ph, i64 2
  %i.no = getelementptr inbounds nuw i8, ptr %.0197317.us.ph, i64 2
  %i.np = getelementptr inbounds nuw i8, ptr %.0196318.us.ph, i64 2
  %i.nq = add nuw nsw i32 %.0195319.us.ph, 1
  br label %.lr.ph320.us.prol.loopexit

.lr.ph320.us.prol.loopexit:                       ; preds = %.lr.ph320.us.prol, %.lr.ph320.us.preheader
  %.lcssa835.unr = phi ptr [ poison, %.lr.ph320.us.preheader ], [ %i.nl, %.lr.ph320.us.prol ]
  %.0195319.us.unr = phi i32 [ %.0195319.us.ph, %.lr.ph320.us.preheader ], [ %i.nq, %.lr.ph320.us.prol ]
  %.0196318.us.unr = phi ptr [ %.0196318.us.ph, %.lr.ph320.us.preheader ], [ %i.np, %.lr.ph320.us.prol ]
  %.0197317.us.unr = phi ptr [ %.0197317.us.ph, %.lr.ph320.us.preheader ], [ %i.no, %.lr.ph320.us.prol ]
  %.0198316.us.unr = phi ptr [ %.0198316.us.ph, %.lr.ph320.us.preheader ], [ %i.nn, %.lr.ph320.us.prol ]
  %.2315.us.unr = phi ptr [ %.2315.us.ph, %.lr.ph320.us.preheader ], [ %i.nm, %.lr.ph320.us.prol ]
  %.19314.us.unr = phi ptr [ %.19314.us.ph, %.lr.ph320.us.preheader ], [ %i.nl, %.lr.ph320.us.prol ]
  %i.nr = icmp eq i32 %5, %.neg909
  br i1 %i.nr, label %.loopexit241.us, label %.lr.ph320.us

.lr.ph320.us:                                     ; preds = %.lr.ph320.us.prol.loopexit, %.lr.ph320.us
  %.0195319.us = phi i32 [ %i.oq, %.lr.ph320.us ], [ %.0195319.us.unr, %.lr.ph320.us.prol.loopexit ]
  %.0196318.us = phi ptr [ %i.op, %.lr.ph320.us ], [ %.0196318.us.unr, %.lr.ph320.us.prol.loopexit ] ; 3 uses
  %.0197317.us = phi ptr [ %i.oo, %.lr.ph320.us ], [ %.0197317.us.unr, %.lr.ph320.us.prol.loopexit ] ; 3 uses
  %.0198316.us = phi ptr [ %i.on, %.lr.ph320.us ], [ %.0198316.us.unr, %.lr.ph320.us.prol.loopexit ] ; 3 uses
  %.2315.us = phi ptr [ %i.om, %.lr.ph320.us ], [ %.2315.us.unr, %.lr.ph320.us.prol.loopexit ] ; 3 uses
  %.19314.us = phi ptr [ %i.ol, %.lr.ph320.us ], [ %.19314.us.unr, %.lr.ph320.us.prol.loopexit ] ; 9 uses
  %i.ns = load i16, ptr %.2315.us, align 2, !tbaa !821
  store i16 %i.ns, ptr %.19314.us, align 2, !tbaa !821
  %i.nt = load i16, ptr %.0198316.us, align 2, !tbaa !821
  %i.nu = getelementptr inbounds nuw i8, ptr %.19314.us, i64 2
  store i16 %i.nt, ptr %i.nu, align 2, !tbaa !821
  %i.nv = load i16, ptr %.0197317.us, align 2, !tbaa !821
  %i.nw = getelementptr inbounds nuw i8, ptr %.19314.us, i64 4
  store i16 %i.nv, ptr %i.nw, align 2, !tbaa !821
  %i.nx = load i16, ptr %.0196318.us, align 2, !tbaa !821
  %i.ny = getelementptr inbounds nuw i8, ptr %.19314.us, i64 6
  store i16 %i.nx, ptr %i.ny, align 2, !tbaa !821
  %i.nz = getelementptr inbounds nuw i8, ptr %.19314.us, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %.2315.us, i64 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.0198316.us, i64 2
  %i.oc = getelementptr inbounds nuw i8, ptr %.0197317.us, i64 2
  %i.od = getelementptr inbounds nuw i8, ptr %.0196318.us, i64 2
  %i.oe = load i16, ptr %i.oa, align 2, !tbaa !821
  store i16 %i.oe, ptr %i.nz, align 2, !tbaa !821
  %i.of = load i16, ptr %i.ob, align 2, !tbaa !821
  %i.og = getelementptr inbounds nuw i8, ptr %.19314.us, i64 10
  store i16 %i.of, ptr %i.og, align 2, !tbaa !821
  %i.oh = load i16, ptr %i.oc, align 2, !tbaa !821
  %i.oi = getelementptr inbounds nuw i8, ptr %.19314.us, i64 12
  store i16 %i.oh, ptr %i.oi, align 2, !tbaa !821
  %i.oj = load i16, ptr %i.od, align 2, !tbaa !821
  %i.ok = getelementptr inbounds nuw i8, ptr %.19314.us, i64 14
  store i16 %i.oj, ptr %i.ok, align 2, !tbaa !821
  %i.ol = getelementptr inbounds nuw i8, ptr %.19314.us, i64 16 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.2315.us, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %.0198316.us, i64 4
  %i.oo = getelementptr inbounds nuw i8, ptr %.0197317.us, i64 4
  %i.op = getelementptr inbounds nuw i8, ptr %.0196318.us, i64 4
  %i.oq = add nuw nsw i32 %.0195319.us, 2         ; 2 uses
  %exitcond427.not.1 = icmp eq i32 %i.oq, %5
  br i1 %exitcond427.not.1, label %.loopexit241.us, label %.lr.ph320.us, !llvm.loop !1426

.loopexit241.us:                                  ; preds = %.lr.ph320.us.prol.loopexit, %.lr.ph320.us, %middle.block636, %vec.epilog.middle.block664, %.loopexit243.us
  %.19.lcssa.us = phi ptr [ %.16323.us, %.loopexit243.us ], [ %i.mx, %vec.epilog.middle.block664 ], [ %i.mn, %middle.block636 ], [ %.lcssa835.unr, %.lr.ph320.us.prol.loopexit ], [ %i.ol, %.lr.ph320.us ] ; 2 uses
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 4 ; 3 uses
  %i.or = icmp slt i64 %indvars.iv.next429, %invariant.op484
  %indvar.next675 = add i64 %indvar674, 1
  br i1 %i.or, label %.lr.ph324.split.us, label %.preheader240.loopexit, !llvm.loop !1427

.lr.ph324.split:                                  ; preds = %.lr.ph324
  br i1 %i.im, label %.lr.ph324.split.split.preheader, label %.lr.ph324.split.split.us

.lr.ph324.split.split.preheader:                  ; preds = %.lr.ph324.split
  %i.os = add i32 %3, -4
  %i.ot = sub i32 %i.os, %.1229.lcssa
  %i.ou = and i32 %i.ot, -4
  %i.ov = add i32 %.1229.lcssa, %i.ou
  %i.ow = add i32 %i.ov, 4
  br label %.preheader240

.lr.ph324.split.split.us:                         ; preds = %.lr.ph324.split
  br i1 %i.in, label %.preheader242.us334.preheader, label %.preheader242.us334.us.preheader

.preheader242.us334.us.preheader:                 ; preds = %.lr.ph324.split.split.us
  %i.ox = zext i32 %.1229.lcssa to i64            ; 2 uses
  %i.oy = sext i32 %2 to i64                      ; 2 uses
  %i.oz = sext i32 %3 to i64
  %invariant.op483.a = add nsw i64 %i.oz, -3
  %i.pa = add nsw i64 %i.oy, %i.ox
  %i.pb = mul i64 %i.l, %i.pa
  %i.pc = mul i64 %i.pb, -2
  %i.pd = shl nsw i64 %i.il, 1
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = mul i64 %i.l, -8
  %i.pg = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check568 = icmp ult i32 %5, 8
  %min.iters.check569 = icmp ult i32 %5, 32
  %i.ph = and i64 %i.pg, 24
  %n.vec571 = and i64 %i.pg, 2147483616           ; 5 uses
  %i.pi = trunc nuw nsw i64 %n.vec571 to i32
  %i.pj = shl nuw nsw i64 %n.vec571, 3            ; 2 uses
  %cmp.n582 = icmp eq i64 %n.vec571, %i.pg
  %min.epilog.iters.check = icmp eq i64 %i.ph, 0
  %n.vec586 = and i64 %i.pg, 2147483640           ; 4 uses
  %i.pk = trunc nuw nsw i64 %n.vec586 to i32
  %i.pl = shl nuw nsw i64 %n.vec586, 3            ; 2 uses
  %cmp.n592 = icmp eq i64 %n.vec586, %i.pg
  br label %iter.check

.preheader242.us334.preheader:                    ; preds = %.lr.ph324.split.split.us
  %i.pm = add i32 %3, -4
  %i.pn = sub i32 %i.pm, %.1229.lcssa
  %i.po = and i32 %i.pn, -4
  %i.pp = add i32 %.1229.lcssa, %i.po
  %i.pq = add i32 %i.pp, 4
  br label %.preheader240

iter.check:                                       ; preds = %.preheader242.us334.us.preheader, %..loopexit243_crit_edge.us338.us
  %indvar565 = phi i64 [ 0, %.preheader242.us334.us.preheader ], [ %indvar.next566, %..loopexit243_crit_edge.us338.us ] ; 2 uses
  %indvars.iv422 = phi i64 [ %i.ox, %.preheader242.us334.us.preheader ], [ %indvars.iv.next423, %..loopexit243_crit_edge.us338.us ] ; 2 uses
  %.16323.us328.us = phi ptr [ %.9.lcssa, %.preheader242.us334.us.preheader ], [ %.lcssa495, %..loopexit243_crit_edge.us338.us ] ; 7 uses
  %i.pr = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ps = add nsw i64 %indvars.iv422, %i.oy
  %i.pt = mul i64 %i.l, %i.ps
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.pr, i64 %i.pt
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.pu, i64 %i.il ; 6 uses
  br i1 %min.iters.check568, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck563

vector.memcheck563:                               ; preds = %iter.check
  %i.pw = ptrtoaddr ptr %i.pr to i64
  %i.px = mul i64 %i.pf, %indvar565
  %i.py = add i64 %i.pe, %i.px
  %.16323.us328.us564 = ptrtoaddr ptr %.16323.us328.us to i64
  %i.pz = add i64 %i.py, %.16323.us328.us564
  %i.qa = sub i64 %i.pw, %i.pz
  %diff.check = icmp ugt i64 %i.qa, -256
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck563
  br i1 %min.iters.check569, label %vec.epilog.ph, label %vector.ph570

vector.ph570:                                     ; preds = %vector.main.loop.iter.check
  %i.qb = getelementptr i8, ptr %i.pv, i64 %i.pj
  %i.qc = getelementptr i8, ptr %.16323.us328.us, i64 %i.pj ; 2 uses
  br label %vector.body572

vector.body572:                                   ; preds = %vector.body572, %vector.ph570
  %index573 = phi i64 [ 0, %vector.ph570 ], [ %index.next580, %vector.body572 ] ; 2 uses
  %i.qd = shl i64 %index573, 3                    ; 2 uses
  %next.gep574 = getelementptr i8, ptr %i.pv, i64 %i.qd ; 4 uses
  %next.gep575 = getelementptr i8, ptr %.16323.us328.us, i64 %i.qd ; 4 uses
  %i.qe = getelementptr i8, ptr %next.gep574, i64 64
  %i.qf = getelementptr i8, ptr %next.gep574, i64 128
  %i.qg = getelementptr i8, ptr %next.gep574, i64 192
  %wide.load576.a = load <8 x i64>, ptr %next.gep574, align 1, !tbaa !116
  %wide.load577.a = load <8 x i64>, ptr %i.qe, align 1, !tbaa !116
  %wide.load578 = load <8 x i64>, ptr %i.qf, align 1, !tbaa !116
  %wide.load579 = load <8 x i64>, ptr %i.qg, align 1, !tbaa !116
  %i.qh = getelementptr i8, ptr %next.gep575, i64 64
  %i.qi = getelementptr i8, ptr %next.gep575, i64 128
  %i.qj = getelementptr i8, ptr %next.gep575, i64 192
  store <8 x i64> %wide.load576.a, ptr %next.gep575, align 1, !tbaa !116
  store <8 x i64> %wide.load577.a, ptr %i.qh, align 1, !tbaa !116
  store <8 x i64> %wide.load578, ptr %i.qi, align 1, !tbaa !116
  store <8 x i64> %wide.load579, ptr %i.qj, align 1, !tbaa !116
  %index.next580 = add nuw i64 %index573, 32      ; 2 uses
  %i.qk = icmp eq i64 %index.next580, %n.vec571
  br i1 %i.qk, label %middle.block581, label %vector.body572, !llvm.loop !1428

middle.block581:                                  ; preds = %vector.body572
  br i1 %cmp.n582, label %..loopexit243_crit_edge.us338.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block581
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !520

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec571, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ql = getelementptr i8, ptr %i.pv, i64 %i.pl
  %i.qm = getelementptr i8, ptr %.16323.us328.us, i64 %i.pl ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index587 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next591, %vec.epilog.vector.body ] ; 2 uses
  %i.qn = shl i64 %index587, 3                    ; 2 uses
  %next.gep588 = getelementptr i8, ptr %i.pv, i64 %i.qn
  %next.gep589 = getelementptr i8, ptr %.16323.us328.us, i64 %i.qn
  %wide.load590 = load <8 x i64>, ptr %next.gep588, align 1, !tbaa !116
  store <8 x i64> %wide.load590, ptr %next.gep589, align 1, !tbaa !116
  %index.next591 = add nuw i64 %index587, 8       ; 2 uses
  %i.qo = icmp eq i64 %index.next591, %n.vec586
  br i1 %i.qo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1429

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n592, label %..loopexit243_crit_edge.us338.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck563, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0199310.us330.us.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck563 ], [ %i.pi, %vec.epilog.iter.check ], [ %i.pk, %vec.epilog.middle.block ] ; 4 uses
  %.0200309.us331.us.ph = phi ptr [ %i.pv, %iter.check ], [ %i.pv, %vector.memcheck563 ], [ %i.qb, %vec.epilog.iter.check ], [ %i.ql, %vec.epilog.middle.block ] ; 2 uses
  %.17308.us332.us.ph = phi ptr [ %.16323.us328.us, %iter.check ], [ %.16323.us328.us, %vector.memcheck563 ], [ %i.qc, %vec.epilog.iter.check ], [ %i.qm, %vec.epilog.middle.block ] ; 2 uses
  %i.qp = sub i32 %5, %.0199310.us330.us.ph
  %xtraiter885 = and i32 %i.qp, 7                 ; 2 uses
  %lcmp.mod886.not = icmp eq i32 %xtraiter885, 0
  br i1 %lcmp.mod886.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0199310.us330.us.prol = phi i32 [ %i.qt, %vec.epilog.scalar.ph.prol ], [ %.0199310.us330.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0200309.us331.us.prol = phi ptr [ %i.qs, %vec.epilog.scalar.ph.prol ], [ %.0200309.us331.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.17308.us332.us.prol = phi ptr [ %i.qr, %vec.epilog.scalar.ph.prol ], [ %.17308.us332.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter887 = phi i32 [ %prol.iter887.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qq = load i64, ptr %.0200309.us331.us.prol, align 1, !tbaa !116
  store i64 %i.qq, ptr %.17308.us332.us.prol, align 1, !tbaa !116
  %i.qr = getelementptr inbounds nuw i8, ptr %.17308.us332.us.prol, i64 8 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.0200309.us331.us.prol, i64 8 ; 2 uses
  %i.qt = add nuw nsw i32 %.0199310.us330.us.prol, 1 ; 2 uses
  %prol.iter887.next = add i32 %prol.iter887, 1   ; 2 uses
  %prol.iter887.cmp.not = icmp eq i32 %prol.iter887.next, %xtraiter885
  br i1 %prol.iter887.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1430

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa836.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.qr, %vec.epilog.scalar.ph.prol ]
  %.0199310.us330.us.unr = phi i32 [ %.0199310.us330.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qt, %vec.epilog.scalar.ph.prol ]
  %.0200309.us331.us.unr = phi ptr [ %.0200309.us331.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qs, %vec.epilog.scalar.ph.prol ]
  %.17308.us332.us.unr = phi ptr [ %.17308.us332.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qr, %vec.epilog.scalar.ph.prol ]
  %i.qu = sub i32 %.0199310.us330.us.ph, %5
  %i.qv = icmp ugt i32 %i.qu, -8
  br i1 %i.qv, label %..loopexit243_crit_edge.us338.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0199310.us330.us = phi i32 [ %i.ru, %vec.epilog.scalar.ph ], [ %.0199310.us330.us.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0200309.us331.us = phi ptr [ %i.rt, %vec.epilog.scalar.ph ], [ %.0200309.us331.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.17308.us332.us = phi ptr [ %i.rs, %vec.epilog.scalar.ph ], [ %.17308.us332.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.qw = load i64, ptr %.0200309.us331.us, align 1, !tbaa !116
  store i64 %i.qw, ptr %.17308.us332.us, align 1, !tbaa !116
  %i.qx = getelementptr inbounds nuw i8, ptr %.17308.us332.us, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %.0200309.us331.us, i64 8
  %i.qz = load i64, ptr %i.qy, align 1, !tbaa !116
  store i64 %i.qz, ptr %i.qx, align 1, !tbaa !116
  %i.ra = getelementptr inbounds nuw i8, ptr %.17308.us332.us, i64 16
  %i.rb = getelementptr inbounds nuw i8, ptr %.0200309.us331.us, i64 16
  %i.rc = load i64, ptr %i.rb, align 1, !tbaa !116
  store i64 %i.rc, ptr %i.ra, align 1, !tbaa !116
  %i.rd = getelementptr inbounds nuw i8, ptr %.17308.us332.us, i64 24
  %i.re = getelementptr inbounds nuw i8, ptr %.0200309.us331.us, i64 24
  %i.rf = load i64, ptr %i.re, align 1, !tbaa !116
  store i64 %i.rf, ptr %i.rd, align 1, !tbaa !116
  %i.rg = getelementptr inbounds nuw i8, ptr %.17308.us332.us, i64 32
  %i.rh = getelementptr inbounds nuw i8, ptr %.0200309.us331.us, i64 32
  %i.ri = load i64, ptr %i.rh, align 1, !tbaa !116
  store i64 %i.ri, ptr %i.rg, align 1, !tbaa !116
  %i.rj = getelementptr inbounds nuw i8, ptr %.17308.us332.us, i64 40
  %i.rk = getelementptr inbounds nuw i8, ptr %.0200309.us331.us, i64 40
  %i.rl = load i64, ptr %i.rk, align 1, !tbaa !116
  store i64 %i.rl, ptr %i.rj, align 1, !tbaa !116
  %i.rm = getelementptr inbounds nuw i8, ptr %.17308.us332.us, i64 48
  %i.rn = getelementptr inbounds nuw i8, ptr %.0200309.us331.us, i64 48
  %i.ro = load i64, ptr %i.rn, align 1, !tbaa !116
  store i64 %i.ro, ptr %i.rm, align 1, !tbaa !116
  %i.rp = getelementptr inbounds nuw i8, ptr %.17308.us332.us, i64 56
  %i.rq = getelementptr inbounds nuw i8, ptr %.0200309.us331.us, i64 56
  %i.rr = load i64, ptr %i.rq, align 1, !tbaa !116
  store i64 %i.rr, ptr %i.rp, align 1, !tbaa !116
  %i.rs = getelementptr inbounds nuw i8, ptr %.17308.us332.us, i64 64 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.0200309.us331.us, i64 64
  %i.ru = add nuw nsw i32 %.0199310.us330.us, 8   ; 2 uses
  %exitcond421.not.7 = icmp eq i32 %i.ru, %5
  br i1 %exitcond421.not.7, label %..loopexit243_crit_edge.us338.us, label %vec.epilog.scalar.ph, !llvm.loop !1431

..loopexit243_crit_edge.us338.us:                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block581
  %.lcssa495 = phi ptr [ %i.qm, %vec.epilog.middle.block ], [ %i.qc, %middle.block581 ], [ %.lcssa836.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.rs, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 4 ; 3 uses
  %i.rv = icmp slt i64 %indvars.iv.next423, %invariant.op483.a
  %indvar.next566 = add i64 %indvar565, 1
  br i1 %i.rv, label %iter.check, label %.preheader240.loopexit385, !llvm.loop !1427

bb.j:                                             ; preds = %.lr.ph305, %.loopexit245
  %indvar532 = phi i64 [ 0, %.lr.ph305 ], [ %indvar.next533, %.loopexit245 ] ; 2 uses
  %indvars.iv418 = phi i64 [ %i.bl, %.lr.ph305 ], [ %indvars.iv.next419, %.loopexit245 ] ; 2 uses
  %.9304 = phi ptr [ %.0208.lcssa, %.lr.ph305 ], [ %.15, %.loopexit245 ] ; 13 uses
  %i.rw = mul i64 %i.bw, %indvar532               ; 3 uses
  %i.rx = load ptr, ptr %0, align 8, !tbaa !18    ; 4 uses
  %i.ry = add i64 %indvars.iv418, %i.bn
  %i.rz = mul i64 %i.l, %i.ry
  %i.sa = getelementptr [2 x i8], ptr %i.rx, i64 %i.rz
  %i.sb = getelementptr [2 x i8], ptr %i.sa, i64 %i.bb ; 10 uses
  br i1 %brmerge378, label %.loopexit248, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %bb.j
  br i1 %i.cb, label %.lr.ph288.epil.preheader, label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %.lr.ph288
  %.0205286 = phi ptr [ %i.sz, %.lr.ph288 ], [ %i.sb, %.lr.ph288.preheader ] ; 9 uses
  %.10285 = phi ptr [ %i.sy, %.lr.ph288 ], [ %.9304, %.lr.ph288.preheader ] ; 9 uses
  %niter875 = phi i32 [ %niter875.next.7, %.lr.ph288 ], [ 0, %.lr.ph288.preheader ]
  %i.sc = load <2 x i64>, ptr %.0205286, align 1, !tbaa !116
  store <2 x i64> %i.sc, ptr %.10285, align 1, !tbaa !116
  %i.sd = getelementptr inbounds nuw i8, ptr %.10285, i64 16
  %i.se = getelementptr inbounds nuw i8, ptr %.0205286, i64 16
  %i.sf = load <2 x i64>, ptr %i.se, align 1, !tbaa !116
  store <2 x i64> %i.sf, ptr %i.sd, align 1, !tbaa !116
  %i.sg = getelementptr inbounds nuw i8, ptr %.10285, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %.0205286, i64 32
  %i.si = load <2 x i64>, ptr %i.sh, align 1, !tbaa !116
  store <2 x i64> %i.si, ptr %i.sg, align 1, !tbaa !116
  %i.sj = getelementptr inbounds nuw i8, ptr %.10285, i64 48
  %i.sk = getelementptr inbounds nuw i8, ptr %.0205286, i64 48
  %i.sl = load <2 x i64>, ptr %i.sk, align 1, !tbaa !116
  store <2 x i64> %i.sl, ptr %i.sj, align 1, !tbaa !116
  %i.sm = getelementptr inbounds nuw i8, ptr %.10285, i64 64
  %i.sn = getelementptr inbounds nuw i8, ptr %.0205286, i64 64
  %i.so = load <2 x i64>, ptr %i.sn, align 1, !tbaa !116
  store <2 x i64> %i.so, ptr %i.sm, align 1, !tbaa !116
end_hunk_10
begin_hunk_11_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %conflict.rdx543 = or i1 %found.conflict539, %found.conflict542
  br i1 %conflict.rdx543, label %.lr.ph295.preheader837, label %vector.ph546

vector.ph546:                                     ; preds = %vector.memcheck530
  %i.tm = getelementptr i8, ptr %i.ta, i64 %i.cf
  %i.tn = getelementptr i8, ptr %i.sb, i64 %i.cf
  %i.to = getelementptr i8, ptr %.9304, i64 %i.cg ; 2 uses
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next556, %vector.body548 ] ; 3 uses
  %i.tp = shl i64 %index549, 3                    ; 2 uses
  %next.gep550.a = getelementptr i8, ptr %i.ta, i64 %i.tp
  %next.gep551 = getelementptr i8, ptr %i.sb, i64 %i.tp
  %i.tq = shl i64 %index549, 4
  %next.gep552 = getelementptr i8, ptr %.9304, i64 %i.tq
  %wide.load553 = load <8 x i64>, ptr %next.gep551, align 1, !tbaa !116, !alias.scope !1433
  %wide.load554 = load <8 x i64>, ptr %next.gep550.a, align 1, !tbaa !116, !alias.scope !1436
  %interleaved.vec555 = shufflevector <8 x i64> %wide.load553, <8 x i64> %wide.load554, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i64> %interleaved.vec555, ptr %next.gep552, align 1, !tbaa !116, !alias.scope !1438, !noalias !1440
  %index.next556 = add nuw i64 %index549, 8       ; 2 uses
  %i.tr = icmp eq i64 %index.next556, %n.vec547
  br i1 %i.tr, label %middle.block557, label %vector.body548, !llvm.loop !1441

middle.block557:                                  ; preds = %vector.body548
  br i1 %cmp.n558, label %.loopexit245, label %.lr.ph295.preheader837

.lr.ph295.preheader837:                           ; preds = %vector.memcheck530, %.lr.ph295.preheader, %middle.block557
  %.0202294.ph = phi i32 [ 0, %vector.memcheck530 ], [ 0, %.lr.ph295.preheader ], [ %i.ce, %middle.block557 ] ; 4 uses
  %.0203293.ph = phi ptr [ %i.ta, %vector.memcheck530 ], [ %i.ta, %.lr.ph295.preheader ], [ %i.tm, %middle.block557 ] ; 2 uses
  %.2207292.ph = phi ptr [ %i.sb, %vector.memcheck530 ], [ %i.sb, %.lr.ph295.preheader ], [ %i.tn, %middle.block557 ] ; 2 uses
  %.12291.ph = phi ptr [ %.9304, %vector.memcheck530 ], [ %.9304, %.lr.ph295.preheader ], [ %i.to, %middle.block557 ] ; 2 uses
  %i.ts = sub i32 %5, %.0202294.ph
  %xtraiter883 = and i32 %i.ts, 3                 ; 2 uses
  %lcmp.mod884.not = icmp eq i32 %xtraiter883, 0
  br i1 %lcmp.mod884.not, label %.lr.ph295.prol.loopexit, label %.lr.ph295.prol

.lr.ph295.prol:                                   ; preds = %.lr.ph295.preheader837, %.lr.ph295.prol
  %.0202294.prol = phi i32 [ %i.tz, %.lr.ph295.prol ], [ %.0202294.ph, %.lr.ph295.preheader837 ]
  %.0203293.prol = phi ptr [ %i.ty, %.lr.ph295.prol ], [ %.0203293.ph, %.lr.ph295.preheader837 ] ; 2 uses
  %.2207292.prol = phi ptr [ %i.tx, %.lr.ph295.prol ], [ %.2207292.ph, %.lr.ph295.preheader837 ] ; 2 uses
  %.12291.prol = phi ptr [ %i.tw, %.lr.ph295.prol ], [ %.12291.ph, %.lr.ph295.preheader837 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph295.prol ], [ 0, %.lr.ph295.preheader837 ]
  %i.tt = load i64, ptr %.2207292.prol, align 1, !tbaa !116
  store i64 %i.tt, ptr %.12291.prol, align 1, !tbaa !116
  %i.tu = getelementptr inbounds nuw i8, ptr %.12291.prol, i64 8
  %i.tv = load i64, ptr %.0203293.prol, align 1, !tbaa !116
  store i64 %i.tv, ptr %i.tu, align 1, !tbaa !116
  %i.tw = getelementptr inbounds nuw i8, ptr %.12291.prol, i64 16 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.2207292.prol, i64 8 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.0203293.prol, i64 8 ; 2 uses
  %i.tz = add nuw nsw i32 %.0202294.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter883
  br i1 %prol.iter.cmp.not, label %.lr.ph295.prol.loopexit, label %.lr.ph295.prol, !llvm.loop !1442

.lr.ph295.prol.loopexit:                          ; preds = %.lr.ph295.prol, %.lr.ph295.preheader837
  %.lcssa842.unr = phi ptr [ poison, %.lr.ph295.preheader837 ], [ %i.tw, %.lr.ph295.prol ]
  %.0202294.unr = phi i32 [ %.0202294.ph, %.lr.ph295.preheader837 ], [ %i.tz, %.lr.ph295.prol ]
  %.0203293.unr = phi ptr [ %.0203293.ph, %.lr.ph295.preheader837 ], [ %i.ty, %.lr.ph295.prol ]
  %.2207292.unr = phi ptr [ %.2207292.ph, %.lr.ph295.preheader837 ], [ %i.tx, %.lr.ph295.prol ]
  %.12291.unr = phi ptr [ %.12291.ph, %.lr.ph295.preheader837 ], [ %i.tw, %.lr.ph295.prol ]
  %i.ua = sub i32 %.0202294.ph, %5
  %i.ub = icmp ugt i32 %i.ua, -4
  br i1 %i.ub, label %.loopexit245, label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.prol.loopexit, %.lr.ph295
  %.0202294 = phi i32 [ %i.va, %.lr.ph295 ], [ %.0202294.unr, %.lr.ph295.prol.loopexit ]
  %.0203293 = phi ptr [ %i.uz, %.lr.ph295 ], [ %.0203293.unr, %.lr.ph295.prol.loopexit ] ; 5 uses
  %.2207292 = phi ptr [ %i.uy, %.lr.ph295 ], [ %.2207292.unr, %.lr.ph295.prol.loopexit ] ; 5 uses
  %.12291 = phi ptr [ %i.ux, %.lr.ph295 ], [ %.12291.unr, %.lr.ph295.prol.loopexit ] ; 9 uses
  %i.uc = load i64, ptr %.2207292, align 1, !tbaa !116
  store i64 %i.uc, ptr %.12291, align 1, !tbaa !116
  %i.ud = getelementptr inbounds nuw i8, ptr %.12291, i64 8
  %i.ue = load i64, ptr %.0203293, align 1, !tbaa !116
  store i64 %i.ue, ptr %i.ud, align 1, !tbaa !116
  %i.uf = getelementptr inbounds nuw i8, ptr %.12291, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %.2207292, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %.0203293, i64 8
  %i.ui = load i64, ptr %i.ug, align 1, !tbaa !116
  store i64 %i.ui, ptr %i.uf, align 1, !tbaa !116
  %i.uj = getelementptr inbounds nuw i8, ptr %.12291, i64 24
  %i.uk = load i64, ptr %i.uh, align 1, !tbaa !116
  store i64 %i.uk, ptr %i.uj, align 1, !tbaa !116
  %i.ul = getelementptr inbounds nuw i8, ptr %.12291, i64 32
  %i.um = getelementptr inbounds nuw i8, ptr %.2207292, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %.0203293, i64 16
  %i.uo = load i64, ptr %i.um, align 1, !tbaa !116
  store i64 %i.uo, ptr %i.ul, align 1, !tbaa !116
  %i.up = getelementptr inbounds nuw i8, ptr %.12291, i64 40
  %i.uq = load i64, ptr %i.un, align 1, !tbaa !116
  store i64 %i.uq, ptr %i.up, align 1, !tbaa !116
  %i.ur = getelementptr inbounds nuw i8, ptr %.12291, i64 48
  %i.us = getelementptr inbounds nuw i8, ptr %.2207292, i64 24
  %i.ut = getelementptr inbounds nuw i8, ptr %.0203293, i64 24
  %i.uu = load i64, ptr %i.us, align 1, !tbaa !116
  store i64 %i.uu, ptr %i.ur, align 1, !tbaa !116
  %i.uv = getelementptr inbounds nuw i8, ptr %.12291, i64 56
  %i.uw = load i64, ptr %i.ut, align 1, !tbaa !116
  store i64 %i.uw, ptr %i.uv, align 1, !tbaa !116
  %i.ux = getelementptr inbounds nuw i8, ptr %.12291, i64 64 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.2207292, i64 32
  %i.uz = getelementptr inbounds nuw i8, ptr %.0203293, i64 32
  %i.va = add nuw nsw i32 %.0202294, 4            ; 2 uses
  %exitcond416.not.3 = icmp eq i32 %i.va, %5
  br i1 %exitcond416.not.3, label %.loopexit245, label %.lr.ph295, !llvm.loop !1443

.loopexit246:                                     ; preds = %.loopexit248
  br i1 %brmerge381, label %.loopexit245, label %.lr.ph301.preheader

.lr.ph301.preheader:                              ; preds = %.loopexit246
  br i1 %i.cc, label %.lr.ph301.epil.preheader, label %.lr.ph301

.lr.ph301:                                        ; preds = %.lr.ph301.preheader, %.lr.ph301
  %.4299 = phi ptr [ %i.vq, %.lr.ph301 ], [ %i.sb, %.lr.ph301.preheader ] ; 5 uses
  %.14298 = phi ptr [ %i.vp, %.lr.ph301 ], [ %.9304, %.lr.ph301.preheader ] ; 5 uses
  %niter882 = phi i32 [ %niter882.next.3, %.lr.ph301 ], [ 0, %.lr.ph301.preheader ]
  %i.vb = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.4299, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vc = trunc <8 x i32> %i.vb to <8 x i16>
  store <8 x i16> %i.vc, ptr %.14298, align 1, !tbaa !116
  %i.vd = getelementptr inbounds nuw i8, ptr %.14298, i64 16
  %i.ve = getelementptr inbounds nuw i8, ptr %.4299, i64 2
  %i.vf = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.ve, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vg = trunc <8 x i32> %i.vf to <8 x i16>
  store <8 x i16> %i.vg, ptr %i.vd, align 1, !tbaa !116
  %i.vh = getelementptr inbounds nuw i8, ptr %.14298, i64 32
  %i.vi = getelementptr inbounds nuw i8, ptr %.4299, i64 4
  %i.vj = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.vi, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vk = trunc <8 x i32> %i.vj to <8 x i16>
  store <8 x i16> %i.vk, ptr %i.vh, align 1, !tbaa !116
  %i.vl = getelementptr inbounds nuw i8, ptr %.14298, i64 48
  %i.vm = getelementptr inbounds nuw i8, ptr %.4299, i64 6
  %i.vn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.vm, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vo = trunc <8 x i32> %i.vn to <8 x i16>
  store <8 x i16> %i.vo, ptr %i.vl, align 1, !tbaa !116
  %i.vp = getelementptr inbounds nuw i8, ptr %.14298, i64 64 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.4299, i64 8 ; 2 uses
  %niter882.next.3 = add nuw nsw i32 %niter882, 4 ; 2 uses
  %niter882.ncmp.3 = icmp eq i32 %niter882.next.3, %unroll_iter881
  br i1 %niter882.ncmp.3, label %.loopexit245.loopexit838.unr-lcssa, label %.lr.ph301, !llvm.loop !1444

.loopexit245.loopexit838.unr-lcssa:               ; preds = %.lr.ph301
  br i1 %lcmp.mod878.not, label %.loopexit245, label %.lr.ph301.epil.preheader

.lr.ph301.epil.preheader:                         ; preds = %.loopexit245.loopexit838.unr-lcssa, %.lr.ph301.preheader
  %.4299.epil.init = phi ptr [ %i.sb, %.lr.ph301.preheader ], [ %i.vq, %.loopexit245.loopexit838.unr-lcssa ]
  %.14298.epil.init = phi ptr [ %.9304, %.lr.ph301.preheader ], [ %i.vp, %.loopexit245.loopexit838.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod880)
  br label %.lr.ph301.epil

.lr.ph301.epil:                                   ; preds = %.lr.ph301.epil, %.lr.ph301.epil.preheader
  %.4299.epil = phi ptr [ %i.vu, %.lr.ph301.epil ], [ %.4299.epil.init, %.lr.ph301.epil.preheader ] ; 2 uses
  %.14298.epil = phi ptr [ %i.vt, %.lr.ph301.epil ], [ %.14298.epil.init, %.lr.ph301.epil.preheader ] ; 2 uses
  %epil.iter877 = phi i32 [ %epil.iter877.next, %.lr.ph301.epil ], [ 0, %.lr.ph301.epil.preheader ]
  %i.vr = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.4299.epil, <8 x i32> %i.bk, <8 x i32> splat (i32 -1), i8 2)
  %i.vs = trunc <8 x i32> %i.vr to <8 x i16>
  store <8 x i16> %i.vs, ptr %.14298.epil, align 1, !tbaa !116
  %i.vt = getelementptr inbounds nuw i8, ptr %.14298.epil, i64 16 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.4299.epil, i64 2
  %epil.iter877.next = add i32 %epil.iter877, 1   ; 2 uses
  %epil.iter877.cmp.not = icmp eq i32 %epil.iter877.next, %xtraiter876
  br i1 %epil.iter877.cmp.not, label %.loopexit245, label %.lr.ph301.epil, !llvm.loop !1445

.loopexit245.loopexit839.unr-lcssa:               ; preds = %.lr.ph288
  br i1 %lcmp.mod871.not, label %.loopexit245, label %.lr.ph288.epil.preheader

.lr.ph288.epil.preheader:                         ; preds = %.loopexit245.loopexit839.unr-lcssa, %.lr.ph288.preheader
  %.0205286.epil.init = phi ptr [ %i.sb, %.lr.ph288.preheader ], [ %i.sz, %.loopexit245.loopexit839.unr-lcssa ]
  %.10285.epil.init = phi ptr [ %.9304, %.lr.ph288.preheader ], [ %i.sy, %.loopexit245.loopexit839.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod873)
  br label %.lr.ph288.epil

.lr.ph288.epil:                                   ; preds = %.lr.ph288.epil, %.lr.ph288.epil.preheader
  %.0205286.epil = phi ptr [ %i.vx, %.lr.ph288.epil ], [ %.0205286.epil.init, %.lr.ph288.epil.preheader ] ; 2 uses
  %.10285.epil = phi ptr [ %i.vw, %.lr.ph288.epil ], [ %.10285.epil.init, %.lr.ph288.epil.preheader ] ; 2 uses
  %epil.iter870 = phi i32 [ %epil.iter870.next, %.lr.ph288.epil ], [ 0, %.lr.ph288.epil.preheader ]
  %i.vv = load <2 x i64>, ptr %.0205286.epil, align 1, !tbaa !116
  store <2 x i64> %i.vv, ptr %.10285.epil, align 1, !tbaa !116
  %i.vw = getelementptr inbounds nuw i8, ptr %.10285.epil, i64 16 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.0205286.epil, i64 16
  %epil.iter870.next = add i32 %epil.iter870, 1   ; 2 uses
  %epil.iter870.cmp.not = icmp eq i32 %epil.iter870.next, %xtraiter869
  br i1 %epil.iter870.cmp.not, label %.loopexit245, label %.lr.ph288.epil, !llvm.loop !1446

.loopexit245:                                     ; preds = %.loopexit245.loopexit839.unr-lcssa, %.lr.ph288.epil, %.loopexit245.loopexit838.unr-lcssa, %.lr.ph301.epil, %.lr.ph295.prol.loopexit, %.lr.ph295, %middle.block557, %bb.k, %.loopexit246
  %.15 = phi ptr [ %.9304, %.loopexit246 ], [ %i.vt, %.lr.ph301.epil ], [ %i.ux, %.lr.ph295 ], [ %.9304, %bb.k ], [ %i.to, %middle.block557 ], [ %.lcssa842.unr, %.lr.ph295.prol.loopexit ], [ %i.vp, %.loopexit245.loopexit838.unr-lcssa ], [ %i.sy, %.loopexit245.loopexit839.unr-lcssa ], [ %i.vw, %.lr.ph288.epil ] ; 2 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 8 ; 3 uses
  %i.vy = icmp slt i64 %indvars.iv.next419, %invariant.op
  %indvar.next533 = add i64 %indvar532, 1
  br i1 %i.vy, label %bb.j, label %.preheader244.loopexit, !llvm.loop !1447

.preheader240.loopexit:                           ; preds = %.loopexit241.us
  %i.vz = trunc nsw i64 %indvars.iv.next429 to i32
  br label %.preheader240

.preheader240.loopexit385:                        ; preds = %..loopexit243_crit_edge.us338.us
  %i.wa = trunc nsw i64 %indvars.iv.next423 to i32
  br label %.preheader240

.preheader240:                                    ; preds = %.preheader240.loopexit385, %.preheader242.us334.preheader, %.lr.ph324.split.split.preheader, %.preheader240.loopexit, %.preheader244
  %.2230.lcssa = phi i32 [ %.1229.lcssa, %.preheader244 ], [ %i.vz, %.preheader240.loopexit ], [ %i.ow, %.lr.ph324.split.split.preheader ], [ %i.pq, %.preheader242.us334.preheader ], [ %i.wa, %.preheader240.loopexit385 ] ; 5 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %.preheader244 ], [ %.19.lcssa.us, %.preheader240.loopexit ], [ %.9.lcssa, %.lr.ph324.split.split.preheader ], [ %.9.lcssa, %.preheader242.us334.preheader ], [ %.lcssa495, %.preheader240.loopexit385 ] ; 3 uses
  %i.wb = or disjoint i32 %.2230.lcssa, 1
  %i.wc = icmp slt i32 %i.wb, %3
  br i1 %i.wc, label %.lr.ph354, label %.preheader

.lr.ph354:                                        ; preds = %.preheader240
  %i.wd = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.we = sext i32 %4 to i64                      ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.wd, i64 %i.we
  %i.wf = icmp sgt i32 %5, 0
  br i1 %i.wf, label %.lr.ph350.us.preheader, label %.lr.ph354.split.preheader

.lr.ph354.split.preheader:                        ; preds = %.lr.ph354
  %i.wg = add i32 %3, -2
  %i.wh = sub i32 %i.wg, %.2230.lcssa
  %i.wi = and i32 %i.wh, -2
  %i.wj = add i32 %.2230.lcssa, %i.wi
  %i.wk = add i32 %i.wj, 2
  br label %.preheader

.lr.ph350.us.preheader:                           ; preds = %.lr.ph354
  %i.wl = sext i32 %.2230.lcssa to i64            ; 4 uses
  %i.wm = sext i32 %2 to i64                      ; 2 uses
  %i.wn = sext i32 %3 to i64
  %invariant.op485 = add nsw i64 %i.wn, -1        ; 2 uses
  %i.wo = add nsw i32 %5, -1
  %i.wp = zext i32 %i.wo to i64                   ; 2 uses
  %i.wq = shl nuw nsw i64 %i.wp, 2
  %i.wr = add nsw i64 %i.wl, %i.wm                ; 2 uses
  %i.ws = shl nsw i64 %i.wr, 1                    ; 3 uses
  %i.wt = add nsw i64 %i.ws, 2
  %i.wu = mul i64 %i.l, %i.wt
  %i.wv = shl nsw i64 %i.we, 1                    ; 3 uses
  %i.ww = getelementptr i8, ptr %i.wd, i64 %i.wu
  %scevgep717.a = getelementptr i8, ptr %i.ww, i64 %i.wv
  %i.wx = add nsw i64 %i.wl, 2
  %smax718 = tail call i64 @llvm.smax.i64(i64 %invariant.op485, i64 %i.wx)
  %i.wy = xor i64 %i.wl, -1
  %i.wz = add i64 %smax718, %i.wy
  %i.xa = shl i64 %i.wz, 1
  %i.xb = and i64 %i.xa, -4                       ; 2 uses
  %i.xc = add i64 %i.xb, %i.ws
  %i.xd = add i64 %i.xc, 2
  %i.xe = mul i64 %i.l, %i.xd
  %i.xf = shl nuw nsw i64 %i.wp, 1                ; 2 uses
  %i.xg = getelementptr i8, ptr %i.wd, i64 %i.xe
  %i.xh = getelementptr i8, ptr %i.xg, i64 %i.wv
  %i.xi = getelementptr i8, ptr %i.xh, i64 %i.xf
  %scevgep719 = getelementptr i8, ptr %i.xi, i64 2
  %i.xj = mul i64 %i.l, %i.wr
  %i.xk = add i64 %i.xj, %i.we
  %i.xl = shl i64 %i.xk, 1
  %scevgep720 = getelementptr i8, ptr %i.wd, i64 %i.xl
  %i.xm = add i64 %i.xb, %i.ws
  %i.xn = mul i64 %i.l, %i.xm
  %i.xo = getelementptr i8, ptr %i.wd, i64 %i.xn
  %i.xp = getelementptr i8, ptr %i.xo, i64 %i.wv
  %i.xq = getelementptr i8, ptr %i.xp, i64 %i.xf
  %scevgep721 = getelementptr i8, ptr %i.xq, i64 2
  %i.xr = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check731 = icmp ult i32 %5, 8
  %.mask = and i64 %i.l, 2305843009213693952
  %stride.check728 = icmp ne i64 %.mask, 0
  %min.iters.check733 = icmp ult i32 %5, 32
  %i.xs = and i64 %i.xr, 24
  %n.vec735 = and i64 %i.xr, 2147483616           ; 6 uses
  %i.xt = trunc nuw nsw i64 %n.vec735 to i32
  %i.xu = shl nuw nsw i64 %n.vec735, 1            ; 2 uses
  %i.xv = shl nuw nsw i64 %n.vec735, 2
  %cmp.n746 = icmp eq i64 %n.vec735, %i.xr
  %min.epilog.iters.check755 = icmp eq i64 %i.xs, 0
  %n.vec757 = and i64 %i.xr, 2147483640           ; 5 uses
  %i.xw = trunc nuw nsw i64 %n.vec757 to i32
  %i.xx = shl nuw nsw i64 %n.vec757, 1            ; 2 uses
  %i.xy = shl nuw nsw i64 %n.vec757, 2
  %cmp.n768 = icmp eq i64 %n.vec757, %i.xr
  br label %iter.check752

iter.check752:                                    ; preds = %.lr.ph350.us.preheader, %._crit_edge.us
  %indvars.iv433 = phi i64 [ %i.wl, %.lr.ph350.us.preheader ], [ %indvars.iv.next434, %._crit_edge.us ] ; 2 uses
  %.21353.us = phi ptr [ %.16.lcssa, %.lr.ph350.us.preheader ], [ %.lcssa491, %._crit_edge.us ] ; 9 uses
  %i.xz = add nsw i64 %indvars.iv433, %i.wm
  %i.ya = mul i64 %i.l, %i.xz
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ya ; 7 uses
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %gep.us, i64 %i.l ; 6 uses
  br i1 %min.iters.check731, label %vec.epilog.scalar.ph753.preheader, label %vector.memcheck715

vector.memcheck715:                               ; preds = %iter.check752
  %i.yc = getelementptr i8, ptr %.21353.us, i64 %i.wq
  %scevgep716 = getelementptr i8, ptr %i.yc, i64 4 ; 2 uses
  %bound0722.a = icmp ult ptr %.21353.us, %scevgep719
  %bound1723.a = icmp ult ptr %scevgep717.a, %scevgep716
  %found.conflict724.a = and i1 %bound0722.a, %bound1723.a
  %bound0725 = icmp ult ptr %.21353.us, %scevgep721
  %bound1726 = icmp ult ptr %scevgep720, %scevgep716
  %found.conflict727 = and i1 %bound0725, %bound1726
  %i.yd = or i1 %found.conflict727, %stride.check728
  %conflict.rdx729 = or i1 %found.conflict724.a, %i.yd
  br i1 %conflict.rdx729, label %vec.epilog.scalar.ph753.preheader, label %vector.main.loop.iter.check732

vector.main.loop.iter.check732:                   ; preds = %vector.memcheck715
  br i1 %min.iters.check733, label %vec.epilog.ph756, label %vector.ph734

vector.ph734:                                     ; preds = %vector.main.loop.iter.check732
  %i.ye = getelementptr i8, ptr %i.yb, i64 %i.xu
  %i.yf = getelementptr i8, ptr %gep.us, i64 %i.xu
  %i.yg = getelementptr i8, ptr %.21353.us, i64 %i.xv ; 2 uses
  br label %vector.body736

vector.body736:                                   ; preds = %vector.body736, %vector.ph734
  %index737 = phi i64 [ 0, %vector.ph734 ], [ %index.next744, %vector.body736 ] ; 3 uses
  %i.yh = shl i64 %index737, 1                    ; 2 uses
  %next.gep738 = getelementptr i8, ptr %i.yb, i64 %i.yh
  %next.gep739 = getelementptr i8, ptr %gep.us, i64 %i.yh
  %i.yi = shl i64 %index737, 2
  %next.gep740 = getelementptr i8, ptr %.21353.us, i64 %i.yi
  %wide.load741 = load <32 x i16>, ptr %next.gep739, align 2, !tbaa !821, !alias.scope !1448
  %wide.load742 = load <32 x i16>, ptr %next.gep738, align 2, !tbaa !821, !alias.scope !1451
  %interleaved.vec743 = shufflevector <32 x i16> %wide.load741, <32 x i16> %wide.load742, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec743, ptr %next.gep740, align 2, !tbaa !821, !alias.scope !1453, !noalias !1455
  %index.next744 = add nuw i64 %index737, 32      ; 2 uses
  %i.yj = icmp eq i64 %index.next744, %n.vec735
  br i1 %i.yj, label %middle.block745, label %vector.body736, !llvm.loop !1456

middle.block745:                                  ; preds = %vector.body736
  br i1 %cmp.n746, label %._crit_edge.us, label %vec.epilog.iter.check754

vec.epilog.iter.check754:                         ; preds = %middle.block745
  br i1 %min.epilog.iters.check755, label %vec.epilog.scalar.ph753.preheader, label %vec.epilog.ph756, !prof !520

vec.epilog.ph756:                                 ; preds = %vector.main.loop.iter.check732, %vec.epilog.iter.check754
  %vec.epilog.resume.val747 = phi i64 [ %n.vec735, %vec.epilog.iter.check754 ], [ 0, %vector.main.loop.iter.check732 ]
  %i.yk = getelementptr i8, ptr %i.yb, i64 %i.xx
  %i.yl = getelementptr i8, ptr %gep.us, i64 %i.xx
  %i.ym = getelementptr i8, ptr %.21353.us, i64 %i.xy ; 2 uses
  br label %vec.epilog.vector.body758

vec.epilog.vector.body758:                        ; preds = %vec.epilog.vector.body758, %vec.epilog.ph756
  %index759 = phi i64 [ %vec.epilog.resume.val747, %vec.epilog.ph756 ], [ %index.next766, %vec.epilog.vector.body758 ] ; 3 uses
  %i.yn = shl i64 %index759, 1                    ; 2 uses
  %next.gep760 = getelementptr i8, ptr %i.yb, i64 %i.yn
  %next.gep761 = getelementptr i8, ptr %gep.us, i64 %i.yn
  %i.yo = shl i64 %index759, 2
  %next.gep762 = getelementptr i8, ptr %.21353.us, i64 %i.yo
  %wide.load763 = load <8 x i16>, ptr %next.gep761, align 2, !tbaa !821, !alias.scope !1448
  %wide.load764 = load <8 x i16>, ptr %next.gep760, align 2, !tbaa !821, !alias.scope !1451
  %interleaved.vec765 = shufflevector <8 x i16> %wide.load763, <8 x i16> %wide.load764, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i16> %interleaved.vec765, ptr %next.gep762, align 2, !tbaa !821, !alias.scope !1453, !noalias !1455
  %index.next766 = add nuw i64 %index759, 8       ; 2 uses
  %i.yp = icmp eq i64 %index.next766, %n.vec757
  br i1 %i.yp, label %vec.epilog.middle.block767, label %vec.epilog.vector.body758, !llvm.loop !1457

vec.epilog.middle.block767:                       ; preds = %vec.epilog.vector.body758
  br i1 %cmp.n768, label %._crit_edge.us, label %vec.epilog.scalar.ph753.preheader

vec.epilog.scalar.ph753.preheader:                ; preds = %vector.memcheck715, %iter.check752, %vec.epilog.iter.check754, %vec.epilog.middle.block767
  %.0192349.us.ph = phi i32 [ 0, %iter.check752 ], [ 0, %vector.memcheck715 ], [ %i.xt, %vec.epilog.iter.check754 ], [ %i.xw, %vec.epilog.middle.block767 ] ; 4 uses
  %.0193348.us.ph = phi ptr [ %i.yb, %iter.check752 ], [ %i.yb, %vector.memcheck715 ], [ %i.ye, %vec.epilog.iter.check754 ], [ %i.yk, %vec.epilog.middle.block767 ] ; 2 uses
  %.0194347.us.ph = phi ptr [ %gep.us, %iter.check752 ], [ %gep.us, %vector.memcheck715 ], [ %i.yf, %vec.epilog.iter.check754 ], [ %i.yl, %vec.epilog.middle.block767 ] ; 2 uses
  %.22346.us.ph = phi ptr [ %.21353.us, %iter.check752 ], [ %.21353.us, %vector.memcheck715 ], [ %i.yg, %vec.epilog.iter.check754 ], [ %i.ym, %vec.epilog.middle.block767 ] ; 2 uses
  %i.yq = sub i32 %5, %.0192349.us.ph
  %xtraiter894.a = and i32 %i.yq, 3               ; 2 uses
  %lcmp.mod895.not.a = icmp eq i32 %xtraiter894.a, 0
  br i1 %lcmp.mod895.not.a, label %vec.epilog.scalar.ph753.prol.loopexit, label %vec.epilog.scalar.ph753.prol

vec.epilog.scalar.ph753.prol:                     ; preds = %vec.epilog.scalar.ph753.preheader, %vec.epilog.scalar.ph753.prol
  %.0192349.us.prol = phi i32 [ %i.yx, %vec.epilog.scalar.ph753.prol ], [ %.0192349.us.ph, %vec.epilog.scalar.ph753.preheader ]
  %.0193348.us.prol = phi ptr [ %i.yw, %vec.epilog.scalar.ph753.prol ], [ %.0193348.us.ph, %vec.epilog.scalar.ph753.preheader ] ; 2 uses
  %.0194347.us.prol = phi ptr [ %i.yv, %vec.epilog.scalar.ph753.prol ], [ %.0194347.us.ph, %vec.epilog.scalar.ph753.preheader ] ; 2 uses
  %.22346.us.prol = phi ptr [ %i.yu, %vec.epilog.scalar.ph753.prol ], [ %.22346.us.ph, %vec.epilog.scalar.ph753.preheader ] ; 3 uses
  %prol.iter896.a = phi i32 [ %prol.iter896.next.a, %vec.epilog.scalar.ph753.prol ], [ 0, %vec.epilog.scalar.ph753.preheader ]
  %i.yr = load i16, ptr %.0194347.us.prol, align 2, !tbaa !821
  store i16 %i.yr, ptr %.22346.us.prol, align 2, !tbaa !821
  %i.ys = load i16, ptr %.0193348.us.prol, align 2, !tbaa !821
  %i.yt = getelementptr inbounds nuw i8, ptr %.22346.us.prol, i64 2
  store i16 %i.ys, ptr %i.yt, align 2, !tbaa !821
  %i.yu = getelementptr inbounds nuw i8, ptr %.22346.us.prol, i64 4 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.0194347.us.prol, i64 2 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.0193348.us.prol, i64 2 ; 2 uses
  %i.yx = add nuw nsw i32 %.0192349.us.prol, 1    ; 2 uses
  %prol.iter896.next.a = add i32 %prol.iter896.a, 1 ; 2 uses
  %prol.iter896.cmp.not.a = icmp eq i32 %prol.iter896.next.a, %xtraiter894.a
  br i1 %prol.iter896.cmp.not.a, label %vec.epilog.scalar.ph753.prol.loopexit, label %vec.epilog.scalar.ph753.prol, !llvm.loop !1458

vec.epilog.scalar.ph753.prol.loopexit:            ; preds = %vec.epilog.scalar.ph753.prol, %vec.epilog.scalar.ph753.preheader
  %.lcssa832.unr = phi ptr [ poison, %vec.epilog.scalar.ph753.preheader ], [ %i.yu, %vec.epilog.scalar.ph753.prol ]
  %.0192349.us.unr = phi i32 [ %.0192349.us.ph, %vec.epilog.scalar.ph753.preheader ], [ %i.yx, %vec.epilog.scalar.ph753.prol ]
  %.0193348.us.unr = phi ptr [ %.0193348.us.ph, %vec.epilog.scalar.ph753.preheader ], [ %i.yw, %vec.epilog.scalar.ph753.prol ]
  %.0194347.us.unr = phi ptr [ %.0194347.us.ph, %vec.epilog.scalar.ph753.preheader ], [ %i.yv, %vec.epilog.scalar.ph753.prol ]
  %.22346.us.unr = phi ptr [ %.22346.us.ph, %vec.epilog.scalar.ph753.preheader ], [ %i.yu, %vec.epilog.scalar.ph753.prol ]
  %i.yy = sub i32 %.0192349.us.ph, %5
  %i.yz = icmp ugt i32 %i.yy, -4
  br i1 %i.yz, label %._crit_edge.us, label %vec.epilog.scalar.ph753

vec.epilog.scalar.ph753:                          ; preds = %vec.epilog.scalar.ph753.prol.loopexit, %vec.epilog.scalar.ph753
  %.0192349.us = phi i32 [ %i.zy, %vec.epilog.scalar.ph753 ], [ %.0192349.us.unr, %vec.epilog.scalar.ph753.prol.loopexit ]
  %.0193348.us = phi ptr [ %i.zx, %vec.epilog.scalar.ph753 ], [ %.0193348.us.unr, %vec.epilog.scalar.ph753.prol.loopexit ] ; 5 uses
  %.0194347.us = phi ptr [ %i.zw, %vec.epilog.scalar.ph753 ], [ %.0194347.us.unr, %vec.epilog.scalar.ph753.prol.loopexit ] ; 5 uses
  %.22346.us = phi ptr [ %i.zv, %vec.epilog.scalar.ph753 ], [ %.22346.us.unr, %vec.epilog.scalar.ph753.prol.loopexit ] ; 9 uses
  %i.za = load i16, ptr %.0194347.us, align 2, !tbaa !821
  store i16 %i.za, ptr %.22346.us, align 2, !tbaa !821
  %i.zb = load i16, ptr %.0193348.us, align 2, !tbaa !821
  %i.zc = getelementptr inbounds nuw i8, ptr %.22346.us, i64 2
  store i16 %i.zb, ptr %i.zc, align 2, !tbaa !821
  %i.zd = getelementptr inbounds nuw i8, ptr %.22346.us, i64 4
  %i.ze = getelementptr inbounds nuw i8, ptr %.0194347.us, i64 2
  %i.zf = getelementptr inbounds nuw i8, ptr %.0193348.us, i64 2
  %i.zg = load i16, ptr %i.ze, align 2, !tbaa !821
  store i16 %i.zg, ptr %i.zd, align 2, !tbaa !821
  %i.zh = load i16, ptr %i.zf, align 2, !tbaa !821
  %i.zi = getelementptr inbounds nuw i8, ptr %.22346.us, i64 6
  store i16 %i.zh, ptr %i.zi, align 2, !tbaa !821
  %i.zj = getelementptr inbounds nuw i8, ptr %.22346.us, i64 8
  %i.zk = getelementptr inbounds nuw i8, ptr %.0194347.us, i64 4
end_hunk_11
