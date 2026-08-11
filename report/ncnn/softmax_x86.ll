inline.NumInlined: 23
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
.lr.ph368.i.preheader262:                         ; preds = %.lr.ph368.i.preheader, %middle.block257
  %.1194367.i.ph = phi i32 [ %.0193.lcssa.i, %.lr.ph368.i.preheader ], [ %i.nf, %middle.block257 ]
  %.1196366.i.ph = phi ptr [ %.0195.lcssa.i, %.lr.ph368.i.preheader ], [ %i.nh, %middle.block257 ]
  br label %.lr.ph368.i

.lr.ph363.i:                                      ; preds = %.lr.ph363.i, %.lr.ph363.i.preheader.new
  %.0195361.i = phi ptr [ %6, %.lr.ph363.i.preheader.new ], [ %i.nw, %.lr.ph363.i ] ; 4 uses
  %niter326 = phi i32 [ 0, %.lr.ph363.i.preheader.new ], [ %niter326.next.1, %.lr.ph363.i ]
  %i.nl = load <4 x float>, ptr %.0195361.i, align 1, !tbaa !43 ; 2 uses
  %i.nm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.nl) ; 2 uses
  %i.nn = fmul fast <4 x float> %i.nm, %i.nl
  %i.no = fsub fast <4 x float> splat (float 2.000000e+00), %i.nn
  %i.np = fmul fast <4 x float> %i.no, %i.nm
  store <4 x float> %i.np, ptr %.0195361.i, align 1, !tbaa !43
  %i.nq = getelementptr inbounds nuw i8, ptr %.0195361.i, i64 16 ; 2 uses
  %i.nr = load <4 x float>, ptr %i.nq, align 1, !tbaa !43 ; 2 uses
  %i.ns = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.nr) ; 2 uses
  %i.nt = fmul fast <4 x float> %i.ns, %i.nr
  %i.nu = fsub fast <4 x float> splat (float 2.000000e+00), %i.nt
  %i.nv = fmul fast <4 x float> %i.nu, %i.ns
  store <4 x float> %i.nv, ptr %i.nq, align 1, !tbaa !43
  %i.nw = getelementptr inbounds nuw i8, ptr %.0195361.i, i64 32 ; 3 uses
  %niter326.next.1 = add i32 %niter326, 2         ; 2 uses
  %niter326.ncmp.1.not = icmp eq i32 %niter326.next.1, %unroll_iter325
  br i1 %niter326.ncmp.1.not, label %.preheader328.loopexit.i.unr-lcssa, label %.lr.ph363.i, !llvm.loop !94

.preheader327.i:                                  ; preds = %.lr.ph368.i, %middle.block257, %.preheader328.i
  br i1 %i.ar, label %.lr.ph383.i, label %_ZN4ncnnL13softmax_pack4EPfimiS0_S0_.exit

.lr.ph383.i:                                      ; preds = %.preheader327.i
  %i.nx = and i32 %4, -4
  %wide.trip.count416.i = zext nneg i32 %1 to i64
  %xtraiter327 = and i32 %4, 3                    ; 2 uses
  %lcmp.mod328.not = icmp eq i32 %xtraiter327, 0
  br label %bb.g

.lr.ph368.i:                                      ; preds = %.lr.ph368.i.preheader262, %.lr.ph368.i
  %.1194367.i = phi i32 [ %i.ob, %.lr.ph368.i ], [ %.1194367.i.ph, %.lr.ph368.i.preheader262 ]
  %.1196366.i = phi ptr [ %i.oa, %.lr.ph368.i ], [ %.1196366.i.ph, %.lr.ph368.i.preheader262 ] ; 3 uses
  %i.ny = load float, ptr %.1196366.i, align 4, !tbaa !46
  %i.nz = fdiv fast float 1.000000e+00, %i.ny
  store float %i.nz, ptr %.1196366.i, align 4, !tbaa !46
  %i.oa = getelementptr inbounds nuw i8, ptr %.1196366.i, i64 4
  %i.ob = add nuw nsw i32 %.1194367.i, 1          ; 2 uses
  %exitcond411.not.i = icmp eq i32 %i.ob, %4
  br i1 %exitcond411.not.i, label %.preheader327.i, label %.lr.ph368.i, !llvm.loop !95

bb.g:                                             ; preds = %._crit_edge381.i, %.lr.ph383.i
  %indvars.iv413.i = phi i64 [ 0, %.lr.ph383.i ], [ %indvars.iv.next414.i, %._crit_edge381.i ] ; 2 uses
  %i.oc = mul i64 %indvars.iv413.i, %3
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oc ; 2 uses
  br i1 %i.b, label %.lr.ph373.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph373.i, %bb.g
  %.0190.lcssa.i = phi ptr [ %i.od, %bb.g ], [ %i.pp, %.lr.ph373.i ] ; 2 uses
  %.0188.lcssa.i = phi ptr [ %6, %bb.g ], [ %i.pq, %.lr.ph373.i ] ; 2 uses
  %.0186.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.nx, %.lr.ph373.i ] ; 4 uses
  %i.oe = icmp slt i32 %.0186.lcssa.i, %4
  br i1 %i.oe, label %.lr.ph380.i.preheader, label %._crit_edge381.i

.lr.ph380.i.preheader:                            ; preds = %.preheader.i
  br i1 %lcmp.mod328.not, label %.lr.ph380.i.prol.loopexit, label %.lr.ph380.i.prol

.lr.ph380.i.prol:                                 ; preds = %.lr.ph380.i.preheader, %.lr.ph380.i.prol
  %.1187379.i.prol = phi i32 [ %i.om, %.lr.ph380.i.prol ], [ %.0186.lcssa.i, %.lr.ph380.i.preheader ]
  %.1189378.i.prol = phi ptr [ %i.ol, %.lr.ph380.i.prol ], [ %.0188.lcssa.i, %.lr.ph380.i.preheader ] ; 2 uses
  %.1191377.i.prol = phi ptr [ %i.ok, %.lr.ph380.i.prol ], [ %.0190.lcssa.i, %.lr.ph380.i.preheader ] ; 3 uses
  %prol.iter329 = phi i32 [ %prol.iter329.next, %.lr.ph380.i.prol ], [ 0, %.lr.ph380.i.preheader ]
  %i.of = load <4 x float>, ptr %.1191377.i.prol, align 1, !tbaa !43
  %i.og = load float, ptr %.1189378.i.prol, align 4, !tbaa !46
  %i.oh = insertelement <4 x float> poison, float %i.og, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = fmul fast <4 x float> %i.oi, %i.of
  store <4 x float> %i.oj, ptr %.1191377.i.prol, align 1, !tbaa !43
  %i.ok = getelementptr inbounds nuw i8, ptr %.1191377.i.prol, i64 16 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.1189378.i.prol, i64 4 ; 2 uses
  %i.om = add nuw nsw i32 %.1187379.i.prol, 1     ; 2 uses
  %prol.iter329.next = add i32 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i32 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.lr.ph380.i.prol.loopexit, label %.lr.ph380.i.prol, !llvm.loop !96

.lr.ph380.i.prol.loopexit:                        ; preds = %.lr.ph380.i.prol, %.lr.ph380.i.preheader
  %.1187379.i.unr = phi i32 [ %.0186.lcssa.i, %.lr.ph380.i.preheader ], [ %i.om, %.lr.ph380.i.prol ]
  %.1189378.i.unr = phi ptr [ %.0188.lcssa.i, %.lr.ph380.i.preheader ], [ %i.ol, %.lr.ph380.i.prol ]
  %.1191377.i.unr = phi ptr [ %.0190.lcssa.i, %.lr.ph380.i.preheader ], [ %i.ok, %.lr.ph380.i.prol ]
  %i.on = sub i32 %.0186.lcssa.i, %4
  %i.oo = icmp ugt i32 %i.on, -4
  br i1 %i.oo, label %._crit_edge381.i, label %.lr.ph380.i

.lr.ph373.i:                                      ; preds = %bb.g, %.lr.ph373.i
  %.0186371.i = phi i32 [ %i.pr, %.lr.ph373.i ], [ 0, %bb.g ]
  %.0188370.i = phi ptr [ %i.pq, %.lr.ph373.i ], [ %6, %bb.g ] ; 5 uses
  %.0190369.i = phi ptr [ %i.pp, %.lr.ph373.i ], [ %i.od, %bb.g ] ; 6 uses
  %i.op = load <4 x float>, ptr %.0190369.i, align 1, !tbaa !43
  %i.oq = getelementptr inbounds nuw i8, ptr %.0190369.i, i64 16 ; 2 uses
  %i.or = load <4 x float>, ptr %i.oq, align 1, !tbaa !43
  %i.os = getelementptr inbounds nuw i8, ptr %.0190369.i, i64 32 ; 2 uses
  %i.ot = load <4 x float>, ptr %i.os, align 1, !tbaa !43
  %i.ou = getelementptr inbounds nuw i8, ptr %.0190369.i, i64 48 ; 2 uses
  %i.ov = load <4 x float>, ptr %i.ou, align 1, !tbaa !43
  %i.ow = load float, ptr %.0188370.i, align 4, !tbaa !46
  %i.ox = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oz = fmul fast <4 x float> %i.oy, %i.op
  %i.pa = getelementptr inbounds nuw i8, ptr %.0188370.i, i64 4
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !46
  %i.pc = insertelement <4 x float> poison, float %i.pb, i64 0
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pe = fmul fast <4 x float> %i.pd, %i.or
  %i.pf = getelementptr inbounds nuw i8, ptr %.0188370.i, i64 8
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !46
  %i.ph = insertelement <4 x float> poison, float %i.pg, i64 0
  %i.pi = shufflevector <4 x float> %i.ph, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pj = fmul fast <4 x float> %i.pi, %i.ot
  %i.pk = getelementptr inbounds nuw i8, ptr %.0188370.i, i64 12
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !46
  %i.pm = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.po = fmul fast <4 x float> %i.pn, %i.ov
  store <4 x float> %i.oz, ptr %.0190369.i, align 1, !tbaa !43
  store <4 x float> %i.pe, ptr %i.oq, align 1, !tbaa !43
  store <4 x float> %i.pj, ptr %i.os, align 1, !tbaa !43
  store <4 x float> %i.po, ptr %i.ou, align 1, !tbaa !43
  %i.pp = getelementptr inbounds nuw i8, ptr %.0190369.i, i64 64 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.0188370.i, i64 16 ; 2 uses
  %i.pr = add nuw nsw i32 %.0186371.i, 4          ; 2 uses
  %i.ps = or disjoint i32 %i.pr, 3
  %i.pt = icmp slt i32 %i.ps, %4
  br i1 %i.pt, label %.lr.ph373.i, label %.preheader.i, !llvm.loop !97

.lr.ph380.i:                                      ; preds = %.lr.ph380.i.prol.loopexit, %.lr.ph380.i
  %.1187379.i = phi i32 [ %i.qw, %.lr.ph380.i ], [ %.1187379.i.unr, %.lr.ph380.i.prol.loopexit ]
  %.1189378.i = phi ptr [ %i.qv, %.lr.ph380.i ], [ %.1189378.i.unr, %.lr.ph380.i.prol.loopexit ] ; 5 uses
  %.1191377.i = phi ptr [ %i.qu, %.lr.ph380.i ], [ %.1191377.i.unr, %.lr.ph380.i.prol.loopexit ] ; 6 uses
  %i.pu = load <4 x float>, ptr %.1191377.i, align 1, !tbaa !43
  %i.pv = load float, ptr %.1189378.i, align 4, !tbaa !46
  %i.pw = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.py = fmul fast <4 x float> %i.px, %i.pu
  store <4 x float> %i.py, ptr %.1191377.i, align 1, !tbaa !43
  %i.pz = getelementptr inbounds nuw i8, ptr %.1191377.i, i64 16 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.1189378.i, i64 4
  %i.qb = load <4 x float>, ptr %i.pz, align 1, !tbaa !43
  %i.qc = load float, ptr %i.qa, align 4, !tbaa !46
  %i.qd = insertelement <4 x float> poison, float %i.qc, i64 0
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qf = fmul fast <4 x float> %i.qe, %i.qb
  store <4 x float> %i.qf, ptr %i.pz, align 1, !tbaa !43
  %i.qg = getelementptr inbounds nuw i8, ptr %.1191377.i, i64 32 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.1189378.i, i64 8
  %i.qi = load <4 x float>, ptr %i.qg, align 1, !tbaa !43
  %i.qj = load float, ptr %i.qh, align 4, !tbaa !46
  %i.qk = insertelement <4 x float> poison, float %i.qj, i64 0
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qm = fmul fast <4 x float> %i.ql, %i.qi
  store <4 x float> %i.qm, ptr %i.qg, align 1, !tbaa !43
  %i.qn = getelementptr inbounds nuw i8, ptr %.1191377.i, i64 48 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.1189378.i, i64 12
  %i.qp = load <4 x float>, ptr %i.qn, align 1, !tbaa !43
  %i.qq = load float, ptr %i.qo, align 4, !tbaa !46
  %i.qr = insertelement <4 x float> poison, float %i.qq, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = fmul fast <4 x float> %i.qs, %i.qp
  store <4 x float> %i.qt, ptr %i.qn, align 1, !tbaa !43
  %i.qu = getelementptr inbounds nuw i8, ptr %.1191377.i, i64 64
  %i.qv = getelementptr inbounds nuw i8, ptr %.1189378.i, i64 16
  %i.qw = add nuw nsw i32 %.1187379.i, 4          ; 2 uses
  %exitcond412.not.i.3 = icmp eq i32 %i.qw, %4
  br i1 %exitcond412.not.i.3, label %._crit_edge381.i, label %.lr.ph380.i, !llvm.loop !98

._crit_edge381.i:                                 ; preds = %.lr.ph380.i.prol.loopexit, %.lr.ph380.i, %.preheader.i
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond417.not.i = icmp eq i64 %indvars.iv.next414.i, %wide.trip.count416.i
  br i1 %exitcond417.not.i, label %_ZN4ncnnL13softmax_pack4EPfimiS0_S0_.exit, label %bb.g, !llvm.loop !99

bb.h:                                             ; preds = %._crit_edge
  %i.qx = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.qx, label %.lr.ph170.i, label %.preheader155.i

.lr.ph170.i:                                      ; preds = %bb.h
  %wide.trip.count229.i = zext nneg i32 %1 to i64 ; 3 uses
  br i1 %i.b, label %.lr.ph.us.preheader.i49, label %.lr.ph170.split.i

.lr.ph.us.preheader.i49:                          ; preds = %.lr.ph170.i
  %i.qy = and i32 %4, 2147483644                  ; 5 uses
  %.not = icmp eq i32 %i.qy, %4
  %i.qz = xor i32 %i.qy, -1
  %i.ra = add nsw i32 %4, %i.qz
  %i.rb = zext i32 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 2
  %i.rd = add nuw nsw i64 %i.rc, 20               ; 2 uses
  %i.re = shl i64 %3, 2
  %i.rf = add nsw i32 %4, -4                      ; 2 uses
  %i.rg = lshr i32 %i.rf, 2
  %i.rh = add nuw nsw i32 %i.rg, 1                ; 2 uses
  %xtraiter288 = and i32 %i.rh, 3                 ; 3 uses
  %i.ri = icmp ult i32 %i.rf, 12
  %unroll_iter294 = and i32 %i.rh, 2147483644
  %lcmp.mod290.not = icmp eq i32 %xtraiter288, 0
  %lcmp.mod293 = icmp ne i32 %xtraiter288, 0
  %i.rj = and i32 %4, 2147483644
  %7 = xor i32 %i.rj, -1
  %i.rk = add nsw i32 %4, %7                      ; 2 uses
  %i.rl = zext i32 %i.rk to i64
  %i.rm = add nuw nsw i64 %i.rl, 1                ; 2 uses
  %min.iters.check157 = icmp ult i32 %i.rk, 7
  %invariant.op = sub i64 -16, %i.a
  %i.rn = getelementptr i8, ptr %5, i64 %i.rd
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.rd
  %n.vec159 = and i64 %i.rm, 8589934584           ; 4 uses
  %i.ro = shl nuw nsw i64 %n.vec159, 2            ; 2 uses
  %i.rp = trunc i64 %n.vec159 to i32
  %i.rq = add i32 %i.qy, %i.rp
  %cmp.n169 = icmp eq i64 %i.rm, %n.vec159
  br label %.lr.ph.us.i50

.lr.ph.us.i50:                                    ; preds = %._crit_edge.us.i51, %.lr.ph.us.preheader.i49
  %indvars.iv226.i = phi i64 [ 0, %.lr.ph.us.preheader.i49 ], [ %indvars.iv.next227.i, %._crit_edge.us.i51 ] ; 3 uses
  %i.rr = mul i64 %i.re, %indvars.iv226.i
  %i.rs = mul i64 %indvars.iv226.i, %3
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.rs ; 2 uses
  br i1 %i.ri, label %.epil.preheader, label %.lr.ph.us.i50.new

.lr.ph.us.i50.new:                                ; preds = %.lr.ph.us.i50, %.lr.ph.us.i50.new
  %.097161.us.i = phi ptr [ %i.sm, %.lr.ph.us.i50.new ], [ %i.rt, %.lr.ph.us.i50 ] ; 5 uses
  %.0109160.us.i = phi ptr [ %i.sn, %.lr.ph.us.i50.new ], [ %5, %.lr.ph.us.i50 ] ; 6 uses
  %niter295 = phi i32 [ %niter295.next.3, %.lr.ph.us.i50.new ], [ 0, %.lr.ph.us.i50 ]
  %i.ru = load <4 x float>, ptr %.097161.us.i, align 1, !tbaa !43
  %i.rv = load <4 x float>, ptr %.0109160.us.i, align 1, !tbaa !43
  %i.rw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rv, <4 x float> nofpclass(nan inf) %i.ru)
  store <4 x float> %i.rw, ptr %.0109160.us.i, align 1, !tbaa !43
  %i.rx = getelementptr i8, ptr %.097161.us.i, i64 16
  %i.ry = getelementptr i8, ptr %.0109160.us.i, i64 16 ; 2 uses
  %i.rz = load <4 x float>, ptr %i.rx, align 1, !tbaa !43
  %i.sa = load <4 x float>, ptr %i.ry, align 1, !tbaa !43
  %i.sb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sa, <4 x float> nofpclass(nan inf) %i.rz)
  store <4 x float> %i.sb, ptr %i.ry, align 1, !tbaa !43
  %i.sc = getelementptr i8, ptr %.097161.us.i, i64 32
  %i.sd = getelementptr i8, ptr %.0109160.us.i, i64 32 ; 2 uses
  %i.se = load <4 x float>, ptr %i.sc, align 1, !tbaa !43
  %i.sf = load <4 x float>, ptr %i.sd, align 1, !tbaa !43
  %i.sg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sf, <4 x float> nofpclass(nan inf) %i.se)
  store <4 x float> %i.sg, ptr %i.sd, align 1, !tbaa !43
  %i.sh = getelementptr i8, ptr %.097161.us.i, i64 48
  %i.si = getelementptr i8, ptr %.0109160.us.i, i64 48 ; 2 uses
  %i.sj = load <4 x float>, ptr %i.sh, align 1, !tbaa !43
  %i.sk = load <4 x float>, ptr %i.si, align 1, !tbaa !43
  %i.sl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sk, <4 x float> nofpclass(nan inf) %i.sj)
  store <4 x float> %i.sl, ptr %i.si, align 1, !tbaa !43
  %i.sm = getelementptr i8, ptr %.097161.us.i, i64 64 ; 3 uses
  %i.sn = getelementptr i8, ptr %.0109160.us.i, i64 64 ; 3 uses
  %niter295.next.3 = add nuw nsw i32 %niter295, 4 ; 2 uses
  %niter295.ncmp.3.not = icmp eq i32 %niter295.next.3, %unroll_iter294
  br i1 %niter295.ncmp.3.not, label %..preheader158_crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i50.new, !llvm.loop !100

.lr.ph167.us.i:                                   ; preds = %.lr.ph167.us.i.prol.loopexit, %.lr.ph167.us.i
  %.1166.us.i = phi ptr [ %i.sy, %.lr.ph167.us.i ], [ %.1166.us.i.unr, %.lr.ph167.us.i.prol.loopexit ] ; 3 uses
  %.1110165.us.i = phi ptr [ %i.sz, %.lr.ph167.us.i ], [ %.1110165.us.i.unr, %.lr.ph167.us.i.prol.loopexit ] ; 4 uses
  %.1112164.us.i = phi i32 [ %i.ta, %.lr.ph167.us.i ], [ %.1112164.us.i.unr, %.lr.ph167.us.i.prol.loopexit ]
  %i.so = load float, ptr %.1110165.us.i, align 4, !tbaa !46 ; 2 uses
  %i.sp = load float, ptr %.1166.us.i, align 4, !tbaa !46 ; 2 uses
  %i.sq = fcmp fast olt float %i.so, %i.sp
  %i.sr = select i1 %i.sq, float %i.sp, float %i.so
  store float %i.sr, ptr %.1110165.us.i, align 4, !tbaa !46
  %i.ss = getelementptr inbounds nuw i8, ptr %.1166.us.i, i64 4
  %i.st = getelementptr inbounds nuw i8, ptr %.1110165.us.i, i64 4 ; 2 uses
  %i.su = load float, ptr %i.st, align 4, !tbaa !46 ; 2 uses
  %i.sv = load float, ptr %i.ss, align 4, !tbaa !46 ; 2 uses
  %i.sw = fcmp fast olt float %i.su, %i.sv
  %i.sx = select i1 %i.sw, float %i.sv, float %i.su
  store float %i.sx, ptr %i.st, align 4, !tbaa !46
  %i.sy = getelementptr inbounds nuw i8, ptr %.1166.us.i, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %.1110165.us.i, i64 8
  %i.ta = add nuw nsw i32 %.1112164.us.i, 2       ; 2 uses
  %exitcond225.not.i.1 = icmp eq i32 %i.ta, %4
  br i1 %exitcond225.not.i.1, label %._crit_edge.us.i51, label %.lr.ph167.us.i, !llvm.loop !101

._crit_edge.us.i51:                               ; preds = %.lr.ph167.us.i.prol.loopexit, %.lr.ph167.us.i, %middle.block168, %..preheader158_crit_edge.us.i
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count229.i
  br i1 %exitcond230.not.i, label %.lr.ph186.i, label %.lr.ph.us.i50, !llvm.loop !102

..preheader158_crit_edge.us.i.unr-lcssa:          ; preds = %.lr.ph.us.i50.new
  br i1 %lcmp.mod290.not, label %..preheader158_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader158_crit_edge.us.i.unr-lcssa, %.lr.ph.us.i50
  %.097161.us.i.epil.init = phi ptr [ %i.rt, %.lr.ph.us.i50 ], [ %i.sm, %..preheader158_crit_edge.us.i.unr-lcssa ]
  %.0109160.us.i.epil.init = phi ptr [ %5, %.lr.ph.us.i50 ], [ %i.sn, %..preheader158_crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod293)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.097161.us.i.epil = phi ptr [ %.097161.us.i.epil.init, %.epil.preheader ], [ %i.te, %bb.i ] ; 2 uses
  %.0109160.us.i.epil = phi ptr [ %.0109160.us.i.epil.init, %.epil.preheader ], [ %i.tf, %bb.i ] ; 3 uses
  %epil.iter289 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter289.next, %bb.i ]
  %i.tb = load <4 x float>, ptr %.097161.us.i.epil, align 1, !tbaa !43
  %i.tc = load <4 x float>, ptr %.0109160.us.i.epil, align 1, !tbaa !43
  %i.td = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.tc, <4 x float> nofpclass(nan inf) %i.tb)
  store <4 x float> %i.td, ptr %.0109160.us.i.epil, align 1, !tbaa !43
  %i.te = getelementptr i8, ptr %.097161.us.i.epil, i64 16 ; 2 uses
  %i.tf = getelementptr i8, ptr %.0109160.us.i.epil, i64 16 ; 2 uses
  %epil.iter289.next = add i32 %epil.iter289, 1   ; 2 uses
  %epil.iter289.cmp.not = icmp eq i32 %epil.iter289.next, %xtraiter288
  br i1 %epil.iter289.cmp.not, label %..preheader158_crit_edge.us.i, label %bb.i, !llvm.loop !103

..preheader158_crit_edge.us.i:                    ; preds = %bb.i, %..preheader158_crit_edge.us.i.unr-lcssa
  %.lcssa282 = phi ptr [ %i.sm, %..preheader158_crit_edge.us.i.unr-lcssa ], [ %i.te, %bb.i ] ; 5 uses
  %.lcssa281 = phi ptr [ %i.sn, %..preheader158_crit_edge.us.i.unr-lcssa ], [ %i.tf, %bb.i ] ; 6 uses
  br i1 %.not, label %._crit_edge.us.i51, label %.lr.ph167.us.i.preheader

.lr.ph167.us.i.preheader:                         ; preds = %..preheader158_crit_edge.us.i
  br i1 %min.iters.check157, label %.lr.ph167.us.i.preheader280, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph167.us.i.preheader
  %i.tg = ptrtoaddr ptr %.lcssa281 to i64
  %.reass = add i64 %i.tg, %invariant.op          ; 2 uses
  %scevgep154 = getelementptr i8, ptr %i.rn, i64 %.reass
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass
  %scevgep155 = getelementptr i8, ptr %gep, i64 %i.rr
  %bound0 = icmp ult ptr %.lcssa281, %scevgep155
  %bound1 = icmp ult ptr %.lcssa282, %scevgep154
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph167.us.i.preheader280, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck
  %i.th = getelementptr i8, ptr %.lcssa282, i64 %i.ro
  %i.ti = getelementptr i8, ptr %.lcssa281, i64 %i.ro
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next167, %vector.body160 ] ; 2 uses
  %i.tj = shl i64 %index161, 2                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %.lcssa282, i64 %i.tj ; 2 uses
  %next.gep163 = getelementptr i8, ptr %.lcssa281, i64 %i.tj ; 3 uses
  %i.tk = getelementptr i8, ptr %next.gep163, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep163, align 4, !tbaa !46, !alias.scope !104, !noalias !107 ; 2 uses
  %wide.load164 = load <4 x float>, ptr %i.tk, align 4, !tbaa !46, !alias.scope !104, !noalias !107 ; 2 uses
  %i.tl = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load165 = load <4 x float>, ptr %next.gep162, align 4, !tbaa !46, !alias.scope !107 ; 2 uses
  %wide.load166 = load <4 x float>, ptr %i.tl, align 4, !tbaa !46, !alias.scope !107 ; 2 uses
  %i.tm = fcmp fast olt <4 x float> %wide.load, %wide.load165
  %i.tn = fcmp fast olt <4 x float> %wide.load164, %wide.load166
  %i.to = select <4 x i1> %i.tm, <4 x float> %wide.load165, <4 x float> %wide.load
  %i.tp = select <4 x i1> %i.tn, <4 x float> %wide.load166, <4 x float> %wide.load164
  store <4 x float> %i.to, ptr %next.gep163, align 4, !tbaa !46, !alias.scope !104, !noalias !107
  store <4 x float> %i.tp, ptr %i.tk, align 4, !tbaa !46, !alias.scope !104, !noalias !107
  %index.next167 = add nuw i64 %index161, 8       ; 2 uses
  %i.tq = icmp eq i64 %index.next167, %n.vec159
  br i1 %i.tq, label %middle.block168, label %vector.body160, !llvm.loop !109

middle.block168:                                  ; preds = %vector.body160
  br i1 %cmp.n169, label %._crit_edge.us.i51, label %.lr.ph167.us.i.preheader280

.lr.ph167.us.i.preheader280:                      ; preds = %vector.memcheck, %.lr.ph167.us.i.preheader, %middle.block168
  %.1166.us.i.ph = phi ptr [ %.lcssa282, %vector.memcheck ], [ %.lcssa282, %.lr.ph167.us.i.preheader ], [ %i.th, %middle.block168 ] ; 3 uses
  %.1110165.us.i.ph = phi ptr [ %.lcssa281, %vector.memcheck ], [ %.lcssa281, %.lr.ph167.us.i.preheader ], [ %i.ti, %middle.block168 ] ; 4 uses
  %.1112164.us.i.ph = phi i32 [ %i.qy, %vector.memcheck ], [ %i.qy, %.lr.ph167.us.i.preheader ], [ %i.rq, %middle.block168 ] ; 4 uses
  %i.tr = sub i32 %4, %.1112164.us.i.ph
  %.neg = add i32 %.1112164.us.i.ph, 1
  %xtraiter296 = and i32 %i.tr, 1
  %lcmp.mod297.not = icmp eq i32 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %.lr.ph167.us.i.prol.loopexit, label %.lr.ph167.us.i.prol

.lr.ph167.us.i.prol:                              ; preds = %.lr.ph167.us.i.preheader280
  %i.ts = load float, ptr %.1110165.us.i.ph, align 4, !tbaa !46 ; 2 uses
  %i.tt = load float, ptr %.1166.us.i.ph, align 4, !tbaa !46 ; 2 uses
  %i.tu = fcmp fast olt float %i.ts, %i.tt
  %i.tv = select i1 %i.tu, float %i.tt, float %i.ts
  store float %i.tv, ptr %.1110165.us.i.ph, align 4, !tbaa !46
  %i.tw = getelementptr inbounds nuw i8, ptr %.1166.us.i.ph, i64 4
  %i.tx = getelementptr inbounds nuw i8, ptr %.1110165.us.i.ph, i64 4
  %i.ty = add nuw nsw i32 %.1112164.us.i.ph, 1
  br label %.lr.ph167.us.i.prol.loopexit

.lr.ph167.us.i.prol.loopexit:                     ; preds = %.lr.ph167.us.i.prol, %.lr.ph167.us.i.preheader280
  %.1166.us.i.unr = phi ptr [ %.1166.us.i.ph, %.lr.ph167.us.i.preheader280 ], [ %i.tw, %.lr.ph167.us.i.prol ]
  %.1110165.us.i.unr = phi ptr [ %.1110165.us.i.ph, %.lr.ph167.us.i.preheader280 ], [ %i.tx, %.lr.ph167.us.i.prol ]
  %.1112164.us.i.unr = phi i32 [ %.1112164.us.i.ph, %.lr.ph167.us.i.preheader280 ], [ %i.ty, %.lr.ph167.us.i.prol ]
  %i.tz = icmp eq i32 %4, %.neg
  br i1 %i.tz, label %._crit_edge.us.i51, label %.lr.ph167.us.i

.lr.ph170.split.i:                                ; preds = %.lr.ph170.i
  %i.ua = icmp sgt i32 %4, 0
  br i1 %i.ua, label %.preheader158.i.preheader, label %.lr.ph186.i

.preheader158.i.preheader:                        ; preds = %.lr.ph170.split.i
  %exitcond.not.i46 = icmp eq i32 %4, 1
  %i.ub = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %exitcond.not.i46.1 = icmp eq i32 %4, 2
  %i.uc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted = load float, ptr %5, align 4, !tbaa !46
  br label %.preheader158.i

.lr.ph186.i:                                      ; preds = %._crit_edge.i47, %._crit_edge.us.i51, %.lr.ph170.split.i
  %i.ud = and i32 %4, -4
  br label %bb.l

.preheader158.i:                                  ; preds = %.preheader158.i.preheader, %._crit_edge.i47
  %i.ue = phi float [ %i.uj, %._crit_edge.i47 ], [ %.promoted, %.preheader158.i.preheader ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i48, %._crit_edge.i47 ], [ 0, %.preheader158.i.preheader ] ; 2 uses
  %i.uf = mul i64 %indvars.iv.i45, %3
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uf ; 3 uses
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !46 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1:bb.a
  %i.v = load i32, ptr %4, align 4, !tbaa !23
  %i.w = load i32, ptr %5, align 4, !tbaa !23
  call fastcc void @_ZN4ncnnL7softmaxEPfii(ptr noundef %i.u, i32 noundef %i.v, i32 noundef %i.w)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.x = load i32, ptr %i.b, align 4, !tbaa !23
  %i.y = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.noexc
  %.036 = phi i32 [ %i.k, %.lr.ph ], [ %i.aj, %.noexc ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !23     ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !23
  %i.p = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.q = mul nsw i32 %i.n, %.036                  ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.n)
  %i.s = load ptr, ptr %5, align 8, !tbaa !42, !noalias !138
  %i.t = load i64, ptr %i.l, align 8, !tbaa !64, !noalias !138
  %i.u = sext i32 %i.p to i64
  %i.v = mul i64 %i.t, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !138
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !23
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %6, align 8, !tbaa !42
  %i.ad = load i32, ptr %7, align 4, !tbaa !23    ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %8, align 4, !tbaa !23
  %i.ai = load i64, ptr %9, align 8, !tbaa !62
  call fastcc void @_ZN4ncnnL7softmaxEPfiimiS0_S0_(ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ad, i64 noundef %i.ai, i32 noundef %.sroa.speculated, ptr noundef %i.y, ptr noundef %i.ab)
  %i.aj = add nsw i32 %.036, 1
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !23
  %.not.not = icmp slt i32 %.036, %i.ak
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #19
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not89 = icmp sgt i32 %i.k, %i.j
  br i1 %.not89, label %._crit_edge91, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i32, ptr %3, align 4, !tbaa !23     ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader.preheader, label %._crit_edge91

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.u = phi i32 [ %i.j, %.preheader.preheader ], [ %i.x, %._crit_edge ]
  %i.v = phi i32 [ %i.r, %.preheader.preheader ], [ %i.y, %._crit_edge ] ; 2 uses
  %indvars.iv103 = phi i64 [ %i.t, %.preheader.preheader ], [ %indvars.iv.next104, %._crit_edge ] ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc26, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4ncnnL7softmaxEPfiimiS0_S0_.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.x = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.u, %.preheader ] ; 2 uses
  %i.y = phi i32 [ %i.ou, %._crit_edge.loopexit ], [ %i.v, %.preheader ]
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1
  %i.z = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv103, %i.z
  br i1 %.not.not, label %.preheader, label %._crit_edge91, !llvm.loop !141

.noexc26:                                         ; preds = %.preheader, %_ZN4ncnnL7softmaxEPfiimiS0_S0_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4ncnnL7softmaxEPfiimiS0_S0_.exit ], [ 0, %.preheader ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !22, !noalias !143
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !24, !noalias !143
  %i.ac = load ptr, ptr %4, align 8, !tbaa !42, !noalias !143 ; 2 uses
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !64, !noalias !143 ; 2 uses
  %i.ae = mul i64 %i.ad, %indvars.iv103
  %i.af = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !143 ; 3 uses
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.ai = sext i32 %i.aa to i64                   ; 2 uses
  %i.aj = sext i32 %i.ab to i64                   ; 2 uses
  %i.ak = mul nsw i64 %indvars.iv, %i.ai
  %i.al = mul i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 4 uses
  %i.ao = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !42, !noalias !146 ; 2 uses
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !64, !noalias !146
  %i.ar = sext i32 %i.ao to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !146
  %i.au = mul i64 %i.as, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 12 uses
  %i.aw = load i32, ptr %6, align 4, !tbaa !23    ; 43 uses
  %i.ax = sext i32 %i.aw to i64                   ; 6 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax ; 11 uses
  %i.az = load i32, ptr %7, align 4, !tbaa !23    ; 3 uses
  %i.ba = icmp sgt i32 %i.aw, 3                   ; 6 uses
  br i1 %i.ba, label %.lr.ph.i.preheader, label %.preheader57.i

.lr.ph.i.preheader:                               ; preds = %.noexc
  %i.bb = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = add nuw nsw i32 %i.bc, 1                ; 2 uses
  %xtraiter = and i32 %i.bd, 7                    ; 3 uses
  %i.be = icmp ult i32 %i.bb, 28
  br i1 %i.be, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.bd, 2147483640
  br label %.lr.ph.i

.preheader57.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader57.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader57.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.074.i.epil.init = phi ptr [ %i.av, %.lr.ph.i.preheader ], [ %i.ca, %.preheader57.loopexit.i.unr-lcssa ]
  %lcmp.mod244 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod244)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.074.i.epil = phi ptr [ %i.bf, %.lr.ph.i.epil ], [ %.074.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.074.i.epil, align 1, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %.074.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader57.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !149

.preheader57.loopexit.i:                          ; preds = %.lr.ph.i.epil, %.preheader57.loopexit.i.unr-lcssa
  %.lcssa = phi ptr [ %i.ca, %.preheader57.loopexit.i.unr-lcssa ], [ %i.bf, %.lr.ph.i.epil ]
  %i.bg = and i32 %i.aw, 2147483644
  br label %.preheader57.i

.preheader57.i:                                   ; preds = %.preheader57.loopexit.i, %.noexc
  %.039.lcssa.i = phi i32 [ 0, %.noexc ], [ %i.bg, %.preheader57.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %i.av, %.noexc ], [ %.lcssa, %.preheader57.loopexit.i ] ; 3 uses
  %i.bh = icmp slt i32 %.039.lcssa.i, %i.aw
  br i1 %i.bh, label %.lr.ph78.i.preheader, label %.preheader56.i

.lr.ph78.i.preheader:                             ; preds = %.preheader57.i
  %i.bi = xor i32 %.039.lcssa.i, -1
  %i.bj = add i32 %i.aw, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check217 = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check217, label %.lr.ph78.i.preheader233, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph78.i.preheader
  %n.vec219 = and i64 %i.bl, 8589934584           ; 4 uses
  %i.bm = shl nuw nsw i64 %n.vec219, 2
  %i.bn = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bm
  %i.bo = trunc i64 %n.vec219 to i32
  %i.bp = add i32 %.039.lcssa.i, %i.bo
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next223, %vector.body220 ] ; 2 uses
  %i.bq = shl i64 %index221, 2
  %next.gep222 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep222, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %next.gep222, align 4, !tbaa !46
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.br, align 4, !tbaa !46
  %index.next223 = add nuw i64 %index221, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next223, %n.vec219
  br i1 %i.bs, label %middle.block224, label %vector.body220, !llvm.loop !150

middle.block224:                                  ; preds = %vector.body220
  %cmp.n225 = icmp eq i64 %i.bl, %n.vec219
  br i1 %cmp.n225, label %.preheader56.i, label %.lr.ph78.i.preheader233

.lr.ph78.i.preheader233:                          ; preds = %.lr.ph78.i.preheader, %middle.block224
  %.177.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph78.i.preheader ], [ %i.bn, %middle.block224 ]
  %.14076.i.ph = phi i32 [ %.039.lcssa.i, %.lr.ph78.i.preheader ], [ %i.bp, %middle.block224 ]
  br label %.lr.ph78.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.074.i = phi ptr [ %i.av, %.lr.ph.i.preheader.new ], [ %i.ca, %.lr.ph.i ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.074.i, align 1, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %.074.i, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bt, align 1, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %.074.i, i64 32
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bu, align 1, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %.074.i, i64 48
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bv, align 1, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %.074.i, i64 64
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bw, align 1, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %.074.i, i64 80
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bx, align 1, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %.074.i, i64 96
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.by, align 1, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %.074.i, i64 112
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bz, align 1, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %.074.i, i64 128 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.preheader57.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !85

.preheader56.i:                                   ; preds = %.lr.ph78.i, %middle.block224, %.preheader57.i
  br i1 %i.ba, label %.lr.ph81.preheader.i, label %.preheader.i

.lr.ph81.preheader.i:                             ; preds = %.preheader56.i
  %i.cb = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.cc = lshr i32 %i.cb, 2
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 4
  %i.cf = add nuw nsw i64 %i.ce, 16               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, i8 0, i64 %i.cf, i1 false), !tbaa !43
  %scevgep.i = getelementptr i8, ptr %i.ay, i64 %i.cf
  %i.cg = and i32 %i.cb, -4
  %i.ch = add nuw nsw i32 %i.cg, 4
  br label %.preheader.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader233, %.lr.ph78.i
  %.177.i = phi ptr [ %i.ci, %.lr.ph78.i ], [ %.177.i.ph, %.lr.ph78.i.preheader233 ] ; 2 uses
  %.14076.i = phi i32 [ %i.cj, %.lr.ph78.i ], [ %.14076.i.ph, %.lr.ph78.i.preheader233 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.177.i, i64 4
  store float f0xFF7FFFFF, ptr %.177.i, align 4, !tbaa !46
  %i.cj = add nuw nsw i32 %.14076.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cj, %i.aw
  br i1 %exitcond.not.i, label %.preheader56.i, label %.lr.ph78.i, !llvm.loop !151

.preheader.i:                                     ; preds = %.lr.ph81.preheader.i, %.preheader56.i
  %.037.lcssa.i = phi ptr [ %i.ay, %.preheader56.i ], [ %scevgep.i, %.lr.ph81.preheader.i ]
  %.035.lcssa.i = phi i32 [ 0, %.preheader56.i ], [ %i.ch, %.lr.ph81.preheader.i ] ; 2 uses
  %i.ck = icmp slt i32 %.035.lcssa.i, %i.aw
  br i1 %i.ck, label %.lr.ph86.preheader.i, label %._crit_edge.i

.lr.ph86.preheader.i:                             ; preds = %.preheader.i
  %i.cl = xor i32 %.035.lcssa.i, -1
  %i.cm = add nsw i32 %i.aw, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.037.lcssa.i, i8 0, i64 %i.cp, i1 false), !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph86.preheader.i, %.preheader.i
  %i.cq = icmp sgt i32 %i.az, 0                   ; 2 uses
  br i1 %i.cq, label %.lr.ph170.i.i, label %.preheader155.i.i

.lr.ph170.i.i:                                    ; preds = %._crit_edge.i
  %wide.trip.count229.i.i = zext nneg i32 %i.az to i64 ; 3 uses
  br i1 %i.ba, label %.lr.ph.us.preheader.i49.i, label %.lr.ph170.split.i.i

.lr.ph.us.preheader.i49.i:                        ; preds = %.lr.ph170.i.i
  %i.cr = and i32 %i.aw, 2147483644               ; 5 uses
  %.not.i44 = icmp eq i32 %i.cr, %i.aw
  %i.cs = xor i32 %i.cr, -1
  %i.ct = add nsw i32 %i.aw, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2                ; 2 uses
  %i.cw = mul i64 %indvars.iv, %i.ai
  %i.cx = mul i64 %i.cw, %i.aj
  %i.cy = mul i64 %indvars.iv103, %i.ad
  %i.cz = add i64 %i.cx, %i.cy
  %i.da = mul i64 %i.af, %i.cz
  %i.db = shl nuw nsw i64 %i.ax, 2
  %i.dc = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.dd = lshr i32 %i.dc, 2                       ; 2 uses
  %i.de = add nuw nsw i32 %i.dd, 1                ; 2 uses
  %i.df = icmp eq i32 %i.dd, 0
  %unroll_iter252 = and i32 %i.de, 2147483646
  %i.dg = and i32 %i.dc, 4
  %lcmp.mod247.not.not = icmp eq i32 %i.dg, 0
  %lcmp.mod251 = trunc i32 %i.de to i1
  %i.dh = and i32 %i.aw, 2147483644
  %8 = xor i32 %i.dh, -1
  %i.di = add nsw i32 %i.aw, %8                   ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check199 = icmp ult i32 %i.di, 7
  %i.dl = getelementptr i8, ptr %i.ap, i64 %i.au
  %i.dm = getelementptr i8, ptr %i.dl, i64 20
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.cv
  %invariant.gep = getelementptr i8, ptr %i.ac, i64 %i.da
  %n.vec201 = and i64 %i.dk, 8589934584           ; 4 uses
  %i.do = shl nuw nsw i64 %n.vec201, 2            ; 2 uses
  %i.dp = trunc i64 %n.vec201 to i32
  %i.dq = add i32 %i.cr, %i.dp
  %cmp.n212 = icmp eq i64 %i.dk, %n.vec201
  br label %.lr.ph.us.i50.i

.lr.ph.us.i50.i:                                  ; preds = %._crit_edge.us.i51.i, %.lr.ph.us.preheader.i49.i
  %indvars.iv226.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i49.i ], [ %indvars.iv.next227.i.i, %._crit_edge.us.i51.i ] ; 3 uses
  %i.dr = mul i64 %i.db, %indvars.iv226.i.i
  %i.ds = mul nuw nsw i64 %indvars.iv226.i.i, %i.ax
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ds ; 2 uses
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.us.i50.i.new

.lr.ph.us.i50.i.new:                              ; preds = %.lr.ph.us.i50.i, %.lr.ph.us.i50.i.new
  %indvar = phi i64 [ %indvar.next.1, %.lr.ph.us.i50.i.new ], [ 0, %.lr.ph.us.i50.i ] ; 2 uses
  %.097161.us.i.i = phi ptr [ %i.ec, %.lr.ph.us.i50.i.new ], [ %i.dt, %.lr.ph.us.i50.i ] ; 3 uses
  %.0109160.us.i.i = phi ptr [ %i.ed, %.lr.ph.us.i50.i.new ], [ %i.av, %.lr.ph.us.i50.i ] ; 4 uses
  %niter253 = phi i32 [ %niter253.next.1, %.lr.ph.us.i50.i.new ], [ 0, %.lr.ph.us.i50.i ]
  %i.du = load <4 x float>, ptr %.097161.us.i.i, align 1, !tbaa !43
  %i.dv = load <4 x float>, ptr %.0109160.us.i.i, align 1, !tbaa !43
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.du)
  store <4 x float> %i.dw, ptr %.0109160.us.i.i, align 1, !tbaa !43
  %i.dx = getelementptr i8, ptr %.097161.us.i.i, i64 16
  %i.dy = getelementptr i8, ptr %.0109160.us.i.i, i64 16 ; 2 uses
  %i.dz = load <4 x float>, ptr %i.dx, align 1, !tbaa !43
  %i.ea = load <4 x float>, ptr %i.dy, align 1, !tbaa !43
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dz)
  store <4 x float> %i.eb, ptr %i.dy, align 1, !tbaa !43
  %i.ec = getelementptr i8, ptr %.097161.us.i.i, i64 32 ; 3 uses
  %i.ed = getelementptr i8, ptr %.0109160.us.i.i, i64 32 ; 3 uses
  %indvar.next.1 = add nuw nsw i64 %indvar, 2     ; 2 uses
  %niter253.next.1 = add i32 %niter253, 2         ; 2 uses
  %niter253.ncmp.1.not = icmp eq i32 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1.not, label %..preheader158_crit_edge.us.i.i.unr-lcssa, label %.lr.ph.us.i50.i.new, !llvm.loop !100

.lr.ph167.us.i.i:                                 ; preds = %.lr.ph167.us.i.i.prol.loopexit, %.lr.ph167.us.i.i
  %.1166.us.i.i = phi ptr [ %i.eo, %.lr.ph167.us.i.i ], [ %.1166.us.i.i.unr, %.lr.ph167.us.i.i.prol.loopexit ] ; 3 uses
  %.1110165.us.i.i = phi ptr [ %i.ep, %.lr.ph167.us.i.i ], [ %.1110165.us.i.i.unr, %.lr.ph167.us.i.i.prol.loopexit ] ; 4 uses
  %.1112164.us.i.i = phi i32 [ %i.eq, %.lr.ph167.us.i.i ], [ %.1112164.us.i.i.unr, %.lr.ph167.us.i.i.prol.loopexit ]
  %i.ee = load float, ptr %.1110165.us.i.i, align 4, !tbaa !46 ; 2 uses
  %i.ef = load float, ptr %.1166.us.i.i, align 4, !tbaa !46 ; 2 uses
  %i.eg = fcmp fast olt float %i.ee, %i.ef
  %i.eh = select i1 %i.eg, float %i.ef, float %i.ee
  store float %i.eh, ptr %.1110165.us.i.i, align 4, !tbaa !46
  %i.ei = getelementptr inbounds nuw i8, ptr %.1166.us.i.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.1110165.us.i.i, i64 4 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !46 ; 2 uses
  %i.el = load float, ptr %i.ei, align 4, !tbaa !46 ; 2 uses
  %i.em = fcmp fast olt float %i.ek, %i.el
  %i.en = select i1 %i.em, float %i.el, float %i.ek
  store float %i.en, ptr %i.ej, align 4, !tbaa !46
  %i.eo = getelementptr inbounds nuw i8, ptr %.1166.us.i.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.1110165.us.i.i, i64 8
  %i.eq = add nuw nsw i32 %.1112164.us.i.i, 2     ; 2 uses
  %exitcond225.not.i.i.1 = icmp eq i32 %i.eq, %i.aw
  br i1 %exitcond225.not.i.i.1, label %._crit_edge.us.i51.i, label %.lr.ph167.us.i.i, !llvm.loop !152

._crit_edge.us.i51.i:                             ; preds = %.lr.ph167.us.i.i.prol.loopexit, %.lr.ph167.us.i.i, %middle.block211, %..preheader158_crit_edge.us.i.i
  %indvars.iv.next227.i.i = add nuw nsw i64 %indvars.iv226.i.i, 1 ; 2 uses
  %exitcond230.not.i.i = icmp eq i64 %indvars.iv.next227.i.i, %wide.trip.count229.i.i
  br i1 %exitcond230.not.i.i, label %.lr.ph186.i.i, label %.lr.ph.us.i50.i, !llvm.loop !102

..preheader158_crit_edge.us.i.i.unr-lcssa:        ; preds = %.lr.ph.us.i50.i.new
  %indvar.next = or disjoint i64 %indvar, 1
  br i1 %lcmp.mod247.not.not, label %.epil.preheader, label %..preheader158_crit_edge.us.i.i

.epil.preheader:                                  ; preds = %..preheader158_crit_edge.us.i.i.unr-lcssa, %.lr.ph.us.i50.i
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.us.i50.i ], [ %indvar.next.1, %..preheader158_crit_edge.us.i.i.unr-lcssa ]
  %.097161.us.i.i.epil.init = phi ptr [ %i.dt, %.lr.ph.us.i50.i ], [ %i.ec, %..preheader158_crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.0109160.us.i.i.epil.init = phi ptr [ %i.av, %.lr.ph.us.i50.i ], [ %i.ed, %..preheader158_crit_edge.us.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod251)
  %i.er = load <4 x float>, ptr %.097161.us.i.i.epil.init, align 1, !tbaa !43
  %i.es = load <4 x float>, ptr %.0109160.us.i.i.epil.init, align 1, !tbaa !43
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.es, <4 x float> nofpclass(nan inf) %i.er)
  store <4 x float> %i.et, ptr %.0109160.us.i.i.epil.init, align 1, !tbaa !43
  %i.eu = getelementptr i8, ptr %.097161.us.i.i.epil.init, i64 16
  %i.ev = getelementptr i8, ptr %.0109160.us.i.i.epil.init, i64 16
  br label %..preheader158_crit_edge.us.i.i

..preheader158_crit_edge.us.i.i:                  ; preds = %..preheader158_crit_edge.us.i.i.unr-lcssa, %.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %..preheader158_crit_edge.us.i.i.unr-lcssa ], [ %indvar.epil.init, %.epil.preheader ]
  %.lcssa235 = phi ptr [ %i.ec, %..preheader158_crit_edge.us.i.i.unr-lcssa ], [ %i.eu, %.epil.preheader ] ; 5 uses
  %.lcssa234 = phi ptr [ %i.ed, %..preheader158_crit_edge.us.i.i.unr-lcssa ], [ %i.ev, %.epil.preheader ] ; 5 uses
  br i1 %.not.i44, label %._crit_edge.us.i51.i, label %.lr.ph167.us.i.i.preheader

.lr.ph167.us.i.i.preheader:                       ; preds = %..preheader158_crit_edge.us.i.i
  br i1 %min.iters.check199, label %.lr.ph167.us.i.i.preheader230, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph167.us.i.i.preheader
  %i.ew = shl nuw nsw i64 %indvar.lcssa, 4        ; 2 uses
  %scevgep193 = getelementptr i8, ptr %i.dn, i64 %i.ew
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ew
  %i.ex = getelementptr i8, ptr %gep, i64 20
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.cv
  %scevgep194 = getelementptr i8, ptr %i.ey, i64 %i.dr
  %bound0195 = icmp ult ptr %.lcssa234, %scevgep194
  %bound1196 = icmp ult ptr %.lcssa235, %scevgep193
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %.lr.ph167.us.i.i.preheader230, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck192
  %i.ez = getelementptr i8, ptr %.lcssa235, i64 %i.do
  %i.fa = getelementptr i8, ptr %.lcssa234, i64 %i.do
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next210, %vector.body202 ] ; 2 uses
  %i.fb = shl i64 %index203, 2                    ; 2 uses
  %next.gep204 = getelementptr i8, ptr %.lcssa235, i64 %i.fb ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.lcssa234, i64 %i.fb ; 3 uses
  %i.fc = getelementptr i8, ptr %next.gep205, i64 16 ; 2 uses
  %wide.load206 = load <4 x float>, ptr %next.gep205, align 4, !tbaa !46, !alias.scope !153, !noalias !156 ; 2 uses
  %wide.load207 = load <4 x float>, ptr %i.fc, align 4, !tbaa !46, !alias.scope !153, !noalias !156 ; 2 uses
  %i.fd = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load208 = load <4 x float>, ptr %next.gep204, align 4, !tbaa !46, !alias.scope !156 ; 2 uses
  %wide.load209 = load <4 x float>, ptr %i.fd, align 4, !tbaa !46, !alias.scope !156 ; 2 uses
  %i.fe = fcmp fast olt <4 x float> %wide.load206, %wide.load208
  %i.ff = fcmp fast olt <4 x float> %wide.load207, %wide.load209
  %i.fg = select <4 x i1> %i.fe, <4 x float> %wide.load208, <4 x float> %wide.load206
  %i.fh = select <4 x i1> %i.ff, <4 x float> %wide.load209, <4 x float> %wide.load207
  store <4 x float> %i.fg, ptr %next.gep205, align 4, !tbaa !46, !alias.scope !153, !noalias !156
  store <4 x float> %i.fh, ptr %i.fc, align 4, !tbaa !46, !alias.scope !153, !noalias !156
  %index.next210 = add nuw i64 %index203, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next210, %n.vec201
  br i1 %i.fi, label %middle.block211, label %vector.body202, !llvm.loop !158

middle.block211:                                  ; preds = %vector.body202
  br i1 %cmp.n212, label %._crit_edge.us.i51.i, label %.lr.ph167.us.i.i.preheader230

.lr.ph167.us.i.i.preheader230:                    ; preds = %vector.memcheck192, %.lr.ph167.us.i.i.preheader, %middle.block211
  %.1166.us.i.i.ph = phi ptr [ %.lcssa235, %vector.memcheck192 ], [ %.lcssa235, %.lr.ph167.us.i.i.preheader ], [ %i.ez, %middle.block211 ] ; 3 uses
  %.1110165.us.i.i.ph = phi ptr [ %.lcssa234, %vector.memcheck192 ], [ %.lcssa234, %.lr.ph167.us.i.i.preheader ], [ %i.fa, %middle.block211 ] ; 4 uses
  %.1112164.us.i.i.ph = phi i32 [ %i.cr, %vector.memcheck192 ], [ %i.cr, %.lr.ph167.us.i.i.preheader ], [ %i.dq, %middle.block211 ] ; 4 uses
  %i.fj = sub i32 %i.aw, %.1112164.us.i.i.ph
  %.neg = add i32 %.1112164.us.i.i.ph, 1
  %xtraiter254 = and i32 %i.fj, 1
  %lcmp.mod255.not = icmp eq i32 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %.lr.ph167.us.i.i.prol.loopexit, label %.lr.ph167.us.i.i.prol

.lr.ph167.us.i.i.prol:                            ; preds = %.lr.ph167.us.i.i.preheader230
  %i.fk = load float, ptr %.1110165.us.i.i.ph, align 4, !tbaa !46 ; 2 uses
  %i.fl = load float, ptr %.1166.us.i.i.ph, align 4, !tbaa !46 ; 2 uses
  %i.fm = fcmp fast olt float %i.fk, %i.fl
  %i.fn = select i1 %i.fm, float %i.fl, float %i.fk
  store float %i.fn, ptr %.1110165.us.i.i.ph, align 4, !tbaa !46
  %i.fo = getelementptr inbounds nuw i8, ptr %.1166.us.i.i.ph, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.1110165.us.i.i.ph, i64 4
  %i.fq = add nuw nsw i32 %.1112164.us.i.i.ph, 1
  br label %.lr.ph167.us.i.i.prol.loopexit

.lr.ph167.us.i.i.prol.loopexit:                   ; preds = %.lr.ph167.us.i.i.prol, %.lr.ph167.us.i.i.preheader230
  %.1166.us.i.i.unr = phi ptr [ %.1166.us.i.i.ph, %.lr.ph167.us.i.i.preheader230 ], [ %i.fo, %.lr.ph167.us.i.i.prol ]
  %.1110165.us.i.i.unr = phi ptr [ %.1110165.us.i.i.ph, %.lr.ph167.us.i.i.preheader230 ], [ %i.fp, %.lr.ph167.us.i.i.prol ]
  %.1112164.us.i.i.unr = phi i32 [ %.1112164.us.i.i.ph, %.lr.ph167.us.i.i.preheader230 ], [ %i.fq, %.lr.ph167.us.i.i.prol ]
  %i.fr = icmp eq i32 %i.aw, %.neg
  br i1 %i.fr, label %._crit_edge.us.i51.i, label %.lr.ph167.us.i.i

.lr.ph170.split.i.i:                              ; preds = %.lr.ph170.i.i
  %i.fs = icmp sgt i32 %i.aw, 0
  br i1 %i.fs, label %.preheader158.i.i.preheader, label %.lr.ph186.i.i

.preheader158.i.i.preheader:                      ; preds = %.lr.ph170.split.i.i
  %exitcond.not.i46.i = icmp eq i32 %i.aw, 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %exitcond.not.i46.i.1 = icmp eq i32 %i.aw, 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.promoted = load float, ptr %i.av, align 4, !tbaa !46
  br label %.preheader158.i.i

.lr.ph186.i.i:                                    ; preds = %._crit_edge.i47.i, %._crit_edge.us.i51.i, %.lr.ph170.split.i.i
  %i.fv = and i32 %i.aw, -4
  br label %bb.e

.preheader158.i.i:                                ; preds = %.preheader158.i.i.preheader, %._crit_edge.i47.i
  %i.fw = phi float [ %i.gb, %._crit_edge.i47.i ], [ %.promoted, %.preheader158.i.i.preheader ] ; 2 uses
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i48.i, %._crit_edge.i47.i ], [ 0, %.preheader158.i.i.preheader ] ; 2 uses
  %i.fx = mul nuw nsw i64 %indvars.iv.i45.i, %i.ax
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.fx ; 3 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !46 ; 2 uses
  %i.ga = fcmp fast olt float %i.fw, %i.fz
  %i.gb = select i1 %i.ga, float %i.fz, float %i.fw ; 2 uses
  store float %i.gb, ptr %i.av, align 4, !tbaa !46
  br i1 %exitcond.not.i46.i, label %._crit_edge.i47.i, label %bb.c

bb.c:                                             ; preds = %.preheader158.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gd = load float, ptr %i.ft, align 4, !tbaa !46 ; 2 uses
  %i.ge = load float, ptr %i.gc, align 4, !tbaa !46 ; 2 uses
  %i.gf = fcmp fast olt float %i.gd, %i.ge
  %i.gg = select i1 %i.gf, float %i.ge, float %i.gd
  store float %i.gg, ptr %i.ft, align 4, !tbaa !46
  br i1 %exitcond.not.i46.i.1, label %._crit_edge.i47.i, label %bb.d
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  %i.ch = fmul fast <4 x float> %i.cg, splat (float f0x3F317218)
  %i.ci = fsub fast <4 x float> %i.bz, %i.ch      ; 8 uses
  %i.cj = fmul fast <4 x float> %i.ci, %i.ci
  %i.ck = fmul fast <4 x float> %i.ci, splat (float f0x39506967)
  %i.cl = fadd fast <4 x float> %i.ck, splat (float f0x3AB743CE)
  %i.cm = fmul fast <4 x float> %i.cl, %i.ci
  %i.cn = fadd fast <4 x float> %i.cm, splat (float f0x3C088908)
  %i.co = fmul fast <4 x float> %i.cn, %i.ci
  %i.cp = fadd fast <4 x float> %i.co, splat (float f0x3D2AA9C1)
  %i.cq = fmul fast <4 x float> %i.cp, %i.ci
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3E2AAAAA)
  %i.cs = fmul fast <4 x float> %i.cr, %i.ci
  %i.ct = fadd fast <4 x float> %i.cs, splat (float 5.000000e-01)
  %i.cu = fmul fast <4 x float> %i.cj, %i.ct
  %i.cv = fadd fast <4 x float> %i.ci, splat (float 1.000000e+00)
  %i.cw = fadd fast <4 x float> %i.cv, %i.cu
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cg)
  %i.cy = shl <4 x i32> %i.cx, splat (i32 23)
  %i.cz = add <4 x i32> %i.cy, splat (i32 1065353216)
  %i.da = bitcast <4 x i32> %i.cz to <4 x float>
  %i.db = fmul fast <4 x float> %i.cw, %i.da      ; 3 uses
  %i.dc = bitcast <4 x float> %i.db to <8 x i16>
  %i.dd = shufflevector <8 x i16> %i.dc, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.de = bitcast <8 x i16> %i.dd to <4 x float>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dg = bitcast <4 x float> %i.df to <2 x i64>
  %i.dh = extractelement <2 x i64> %i.dg, i64 0
  store i64 %i.dh, ptr %.073126.i, align 1, !tbaa !43
  %i.di = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dj = fadd fast <4 x float> %i.di, %i.db      ; 2 uses
  %i.dk = extractelement <4 x float> %i.dj, i64 1
  %i.dl = extractelement <4 x float> %i.dj, i64 0
  %i.dm = load float, ptr %.071128.i, align 4, !tbaa !46
  %i.dn = fadd fast float %i.dk, %i.dm
  %i.do = fadd fast float %i.dn, %i.dl
  store float %i.do, ptr %.071128.i, align 4, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %.073126.i, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.072127.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.071128.i, i64 4
  %i.ds = add nuw nsw i32 %.070129.i, 1           ; 2 uses
  %exitcond156.not.i = icmp eq i32 %i.ds, %4
  br i1 %exitcond156.not.i, label %._crit_edge132.i, label %bb.d, !llvm.loop !234

._crit_edge132.i:                                 ; preds = %bb.d
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next158.i, %wide.trip.count.i
  br i1 %exitcond161.not.i, label %.preheader118.i, label %.lr.ph131.i, !llvm.loop !235

.preheader117.loopexit.i.unr-lcssa:               ; preds = %.lr.ph137.i
  %i.dt = and i32 %i.bj, 4
  %lcmp.mod231.not.not = icmp eq i32 %i.dt, 0
  br i1 %lcmp.mod231.not.not, label %.lr.ph137.i.epil.preheader, label %.preheader117.loopexit.i

.lr.ph137.i.epil.preheader:                       ; preds = %.preheader117.loopexit.i.unr-lcssa, %.lr.ph137.i.preheader
  %.067135.i.epil.init = phi ptr [ %6, %.lr.ph137.i.preheader ], [ %i.ey, %.preheader117.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod233 = trunc i32 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.du = load <4 x float>, ptr %.067135.i.epil.init, align 1, !tbaa !43 ; 2 uses
  %i.dv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.du) ; 2 uses
  %i.dw = fmul fast <4 x float> %i.dv, %i.du
  %i.dx = fsub fast <4 x float> splat (float 2.000000e+00), %i.dw
  %i.dy = fmul fast <4 x float> %i.dx, %i.dv
  store <4 x float> %i.dy, ptr %.067135.i.epil.init, align 1, !tbaa !43
  %i.dz = getelementptr inbounds nuw i8, ptr %.067135.i.epil.init, i64 16
  br label %.preheader117.loopexit.i

.preheader117.loopexit.i:                         ; preds = %.preheader117.loopexit.i.unr-lcssa, %.lr.ph137.i.epil.preheader
  %.lcssa = phi ptr [ %i.ey, %.preheader117.loopexit.i.unr-lcssa ], [ %i.dz, %.lr.ph137.i.epil.preheader ]
  %i.ea = and i32 %4, 2147483644
  br label %.preheader117.i

.preheader117.i:                                  ; preds = %.preheader117.loopexit.i, %.preheader118.i
  %.067.lcssa.i = phi ptr [ %6, %.preheader118.i ], [ %.lcssa, %.preheader117.loopexit.i ] ; 3 uses
  %.066.lcssa.i = phi i32 [ 0, %.preheader118.i ], [ %i.ea, %.preheader117.loopexit.i ] ; 4 uses
  %i.eb = icmp slt i32 %.066.lcssa.i, %4
  br i1 %i.eb, label %.lr.ph141.i.preheader, label %.preheader.i

.lr.ph141.i.preheader:                            ; preds = %.preheader117.i
  %i.ec = xor i32 %.066.lcssa.i, -1
  %i.ed = add i32 %4, %i.ec                       ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check189 = icmp ult i32 %i.ed, 3
  br i1 %min.iters.check189, label %.lr.ph141.i.preheader201, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph141.i.preheader
  %n.vec191 = and i64 %i.ef, 8589934588           ; 4 uses
  %i.eg = trunc i64 %n.vec191 to i32
  %i.eh = add i32 %.066.lcssa.i, %i.eg
  %i.ei = shl nuw nsw i64 %n.vec191, 2
  %i.ej = getelementptr i8, ptr %.067.lcssa.i, i64 %i.ei
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next196, %vector.body192 ] ; 2 uses
  %i.ek = shl i64 %index193, 2
  %next.gep194 = getelementptr i8, ptr %.067.lcssa.i, i64 %i.ek ; 2 uses
  %wide.load195 = load <4 x float>, ptr %next.gep194, align 4, !tbaa !46
  %i.el = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load195
  store <4 x float> %i.el, ptr %next.gep194, align 4, !tbaa !46
  %index.next196 = add nuw i64 %index193, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next196, %n.vec191
  br i1 %i.em, label %middle.block197, label %vector.body192, !llvm.loop !236

middle.block197:                                  ; preds = %vector.body192
  %cmp.n198 = icmp eq i64 %i.ef, %n.vec191
  br i1 %cmp.n198, label %.preheader.i, label %.lr.ph141.i.preheader201

.lr.ph141.i.preheader201:                         ; preds = %.lr.ph141.i.preheader, %middle.block197
  %.1140.i.ph = phi i32 [ %.066.lcssa.i, %.lr.ph141.i.preheader ], [ %i.eh, %middle.block197 ]
  %.168139.i.ph = phi ptr [ %.067.lcssa.i, %.lr.ph141.i.preheader ], [ %i.ej, %middle.block197 ]
  br label %.lr.ph141.i

.lr.ph137.i:                                      ; preds = %.lr.ph137.i, %.lr.ph137.i.preheader.new
  %.067135.i = phi ptr [ %6, %.lr.ph137.i.preheader.new ], [ %i.ey, %.lr.ph137.i ] ; 4 uses
  %niter235 = phi i32 [ 0, %.lr.ph137.i.preheader.new ], [ %niter235.next.1, %.lr.ph137.i ]
  %i.en = load <4 x float>, ptr %.067135.i, align 1, !tbaa !43 ; 2 uses
  %i.eo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.en) ; 2 uses
  %i.ep = fmul fast <4 x float> %i.eo, %i.en
  %i.eq = fsub fast <4 x float> splat (float 2.000000e+00), %i.ep
  %i.er = fmul fast <4 x float> %i.eq, %i.eo
  store <4 x float> %i.er, ptr %.067135.i, align 1, !tbaa !43
  %i.es = getelementptr inbounds nuw i8, ptr %.067135.i, i64 16 ; 2 uses
  %i.et = load <4 x float>, ptr %i.es, align 1, !tbaa !43 ; 2 uses
  %i.eu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.et) ; 2 uses
  %i.ev = fmul fast <4 x float> %i.eu, %i.et
  %i.ew = fsub fast <4 x float> splat (float 2.000000e+00), %i.ev
  %i.ex = fmul fast <4 x float> %i.ew, %i.eu
  store <4 x float> %i.ex, ptr %i.es, align 1, !tbaa !43
  %i.ey = getelementptr inbounds nuw i8, ptr %.067135.i, i64 32 ; 3 uses
  %niter235.next.1 = add i32 %niter235, 2         ; 2 uses
  %niter235.ncmp.1.not = icmp eq i32 %niter235.next.1, %unroll_iter234
  br i1 %niter235.ncmp.1.not, label %.preheader117.loopexit.i.unr-lcssa, label %.lr.ph137.i, !llvm.loop !237

.preheader.i:                                     ; preds = %.lr.ph141.i, %middle.block197, %.preheader117.i
  br i1 %or.cond.i, label %.lr.ph146.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit

.lr.ph146.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count167.i = zext nneg i32 %1 to i64
  br label %.lr.ph146.i

.lr.ph141.i:                                      ; preds = %.lr.ph141.i.preheader201, %.lr.ph141.i
  %.1140.i = phi i32 [ %i.fc, %.lr.ph141.i ], [ %.1140.i.ph, %.lr.ph141.i.preheader201 ]
  %.168139.i = phi ptr [ %i.fb, %.lr.ph141.i ], [ %.168139.i.ph, %.lr.ph141.i.preheader201 ] ; 3 uses
  %i.ez = load float, ptr %.168139.i, align 4, !tbaa !46
  %i.fa = fdiv fast float 1.000000e+00, %i.ez
  store float %i.fa, ptr %.168139.i, align 4, !tbaa !46
  %i.fb = getelementptr inbounds nuw i8, ptr %.168139.i, i64 4
  %i.fc = add nuw nsw i32 %.1140.i, 1             ; 2 uses
  %exitcond162.not.i = icmp eq i32 %i.fc, %4
  br i1 %exitcond162.not.i, label %.preheader.i, label %.lr.ph141.i, !llvm.loop !238

.lr.ph146.i:                                      ; preds = %._crit_edge147.i, %.lr.ph146.preheader.i
  %indvars.iv164.i = phi i64 [ 0, %.lr.ph146.preheader.i ], [ %indvars.iv.next165.i, %._crit_edge147.i ] ; 2 uses
  %i.fd = mul i64 %indvars.iv164.i, %3
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fd
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph146.i
  %.062144.i = phi i32 [ 0, %.lr.ph146.i ], [ %i.fw, %bb.e ]
  %.063143.i = phi ptr [ %6, %.lr.ph146.i ], [ %i.fv, %bb.e ] ; 2 uses
  %.064142.i = phi ptr [ %i.fe, %.lr.ph146.i ], [ %i.fu, %bb.e ] ; 3 uses
  %i.ff = load i64, ptr %.064142.i, align 1, !tbaa !43
  %i.fg = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %i.fh = bitcast <2 x i64> %i.fg to <8 x i16>
  %i.fi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fj = bitcast <8 x i16> %i.fi to <4 x float>
  %i.fk = load float, ptr %.063143.i, align 4, !tbaa !46
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = fmul fast <4 x float> %i.fm, %i.fj
  %i.fo = bitcast <4 x float> %i.fn to <8 x i16>
  %i.fp = shufflevector <8 x i16> %i.fo, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fq = bitcast <8 x i16> %i.fp to <4 x float>
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fs = bitcast <4 x float> %i.fr to <2 x i64>
  %i.ft = extractelement <2 x i64> %i.fs, i64 0
  store i64 %i.ft, ptr %.064142.i, align 1, !tbaa !43
  %i.fu = getelementptr inbounds nuw i8, ptr %.064142.i, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.063143.i, i64 4
  %i.fw = add nuw nsw i32 %.062144.i, 1           ; 2 uses
  %exitcond163.not.i = icmp eq i32 %i.fw, %4
  br i1 %exitcond163.not.i, label %._crit_edge147.i, label %bb.e, !llvm.loop !239

._crit_edge147.i:                                 ; preds = %bb.e
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  br i1 %exitcond168.not.i, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit, label %.lr.ph146.i, !llvm.loop !240

bb.f:                                             ; preds = %._crit_edge
  %i.fx = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.fx, label %.lr.ph177.i, label %.preheader162.i

.lr.ph177.i:                                      ; preds = %bb.f
  %wide.trip.count236.i = zext nneg i32 %1 to i64 ; 3 uses
  br i1 %i.a, label %.lr.ph.us.preheader.i, label %.lr.ph177.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph177.i
  %i.fy = and i32 %4, 2147483644                  ; 3 uses
  %.not = icmp eq i32 %i.fy, %4
  %i.fz = and i32 %4, 2147483644
  %7 = xor i32 %i.fz, -1
  %i.ga = add nsw i32 %4, %7                      ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check118 = icmp ult i32 %i.ga, 7
  %n.vec120 = and i64 %i.gc, 8589934584           ; 5 uses
  %i.gd = shl nuw nsw i64 %n.vec120, 1
  %i.ge = shl nuw nsw i64 %n.vec120, 2
  %i.gf = trunc i64 %n.vec120 to i32
  %i.gg = add i32 %i.fy, %i.gf
  %cmp.n130 = icmp eq i64 %i.gc, %n.vec120
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv233.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next234.i, %._crit_edge.us.i ] ; 2 uses
  %i.gh = mul i64 %indvars.iv233.i, %3
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gh
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.i
  %.0106168.us.i = phi ptr [ %i.gi, %.lr.ph.us.i ], [ %i.gq, %bb.g ] ; 2 uses
  %.0108167.us.i = phi ptr [ %5, %.lr.ph.us.i ], [ %i.gr, %bb.g ] ; 3 uses
  %.0110166.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.gs, %bb.g ]
  %i.gj = load i64, ptr %.0106168.us.i, align 1, !tbaa !43
  %i.gk = insertelement <2 x i64> poison, i64 %i.gj, i64 0
  %i.gl = bitcast <2 x i64> %i.gk to <8 x i16>
  %i.gm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gn = bitcast <8 x i16> %i.gm to <4 x float>
  %i.go = load <4 x float>, ptr %.0108167.us.i, align 1, !tbaa !43
  %i.gp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.go, <4 x float> nofpclass(nan inf) %i.gn)
  store <4 x float> %i.gp, ptr %.0108167.us.i, align 1, !tbaa !43
  %i.gq = getelementptr inbounds nuw i8, ptr %.0106168.us.i, i64 8 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0108167.us.i, i64 16 ; 4 uses
  %i.gs = add nuw nsw i32 %.0110166.us.i, 4       ; 2 uses
  %i.gt = or disjoint i32 %i.gs, 3
  %i.gu = icmp slt i32 %i.gt, %4
  br i1 %i.gu, label %bb.g, label %..preheader165_crit_edge.us.i, !llvm.loop !241

.lr.ph174.us.i:                                   ; preds = %.lr.ph174.us.i.preheader212, %.lr.ph174.us.i
  %.1107173.us.i = phi ptr [ %i.hb, %.lr.ph174.us.i ], [ %.1107173.us.i.ph, %.lr.ph174.us.i.preheader212 ] ; 2 uses
  %.1109172.us.i = phi ptr [ %i.hc, %.lr.ph174.us.i ], [ %.1109172.us.i.ph, %.lr.ph174.us.i.preheader212 ] ; 3 uses
  %.1111171.us.i = phi i32 [ %i.hd, %.lr.ph174.us.i ], [ %.1111171.us.i.ph, %.lr.ph174.us.i.preheader212 ]
  %i.gv = load i16, ptr %.1107173.us.i, align 2, !tbaa !214
  %i.gw = zext i16 %i.gv to i32
  %i.gx = shl nuw i32 %i.gw, 16
  %i.gy = bitcast i32 %i.gx to float              ; 2 uses
  %i.gz = load float, ptr %.1109172.us.i, align 4, !tbaa !46 ; 2 uses
  %i.ha = fcmp fast olt float %i.gz, %i.gy
  %.sroa.speculated.us.i = select i1 %i.ha, float %i.gy, float %i.gz
  store float %.sroa.speculated.us.i, ptr %.1109172.us.i, align 4, !tbaa !46
  %i.hb = getelementptr inbounds nuw i8, ptr %.1107173.us.i, i64 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.1109172.us.i, i64 4
  %i.hd = add nuw nsw i32 %.1111171.us.i, 1       ; 2 uses
  %exitcond232.not.i = icmp eq i32 %i.hd, %4
  br i1 %exitcond232.not.i, label %._crit_edge.us.i, label %.lr.ph174.us.i, !llvm.loop !242

._crit_edge.us.i:                                 ; preds = %.lr.ph174.us.i, %middle.block129, %..preheader165_crit_edge.us.i
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count236.i
  br i1 %exitcond237.not.i, label %.lr.ph193.i, label %.lr.ph.us.i, !llvm.loop !243

..preheader165_crit_edge.us.i:                    ; preds = %bb.g
  br i1 %.not, label %._crit_edge.us.i, label %.lr.ph174.us.i.preheader

.lr.ph174.us.i.preheader:                         ; preds = %..preheader165_crit_edge.us.i
  br i1 %min.iters.check118, label %.lr.ph174.us.i.preheader212, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph174.us.i.preheader
  %i.he = getelementptr i8, ptr %i.gq, i64 %i.gd
  %i.hf = getelementptr i8, ptr %i.gr, i64 %i.ge
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next128, %vector.body121 ] ; 3 uses
  %i.hg = shl i64 %index122, 1
  %next.gep123 = getelementptr i8, ptr %i.gq, i64 %i.hg ; 2 uses
  %i.hh = shl i64 %index122, 2
  %next.gep124 = getelementptr i8, ptr %i.gr, i64 %i.hh ; 3 uses
  %i.hi = getelementptr i8, ptr %next.gep123, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep123, align 2, !tbaa !214
  %wide.load125 = load <4 x i16>, ptr %i.hi, align 2, !tbaa !214
  %i.hj = zext <4 x i16> %wide.load to <4 x i32>
  %i.hk = zext <4 x i16> %wide.load125 to <4 x i32>
  %i.hl = shl nuw <4 x i32> %i.hj, splat (i32 16)
  %i.hm = shl nuw <4 x i32> %i.hk, splat (i32 16)
  %i.hn = bitcast <4 x i32> %i.hl to <4 x float>  ; 2 uses
  %i.ho = bitcast <4 x i32> %i.hm to <4 x float>  ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep124, i64 16 ; 2 uses
  %wide.load126 = load <4 x float>, ptr %next.gep124, align 4, !tbaa !46 ; 2 uses
  %wide.load127 = load <4 x float>, ptr %i.hp, align 4, !tbaa !46 ; 2 uses
  %i.hq = fcmp fast olt <4 x float> %wide.load126, %i.hn
  %i.hr = fcmp fast olt <4 x float> %wide.load127, %i.ho
  %i.hs = select <4 x i1> %i.hq, <4 x float> %i.hn, <4 x float> %wide.load126
  %i.ht = select <4 x i1> %i.hr, <4 x float> %i.ho, <4 x float> %wide.load127
  store <4 x float> %i.hs, ptr %next.gep124, align 4, !tbaa !46
  store <4 x float> %i.ht, ptr %i.hp, align 4, !tbaa !46
  %index.next128 = add nuw i64 %index122, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next128, %n.vec120
  br i1 %i.hu, label %middle.block129, label %vector.body121, !llvm.loop !244

middle.block129:                                  ; preds = %vector.body121
  br i1 %cmp.n130, label %._crit_edge.us.i, label %.lr.ph174.us.i.preheader212

.lr.ph174.us.i.preheader212:                      ; preds = %.lr.ph174.us.i.preheader, %middle.block129
  %.1107173.us.i.ph = phi ptr [ %i.gq, %.lr.ph174.us.i.preheader ], [ %i.he, %middle.block129 ]
  %.1109172.us.i.ph = phi ptr [ %i.gr, %.lr.ph174.us.i.preheader ], [ %i.hf, %middle.block129 ]
  %.1111171.us.i.ph = phi i32 [ %i.fy, %.lr.ph174.us.i.preheader ], [ %i.gg, %middle.block129 ]
  br label %.lr.ph174.us.i

.lr.ph177.split.i:                                ; preds = %.lr.ph177.i
  %i.hv = icmp sgt i32 %4, 0
  br i1 %i.hv, label %.preheader165.i.preheader, label %.lr.ph193.i

.preheader165.i.preheader:                        ; preds = %.lr.ph177.split.i
  %exitcond.not.i47 = icmp eq i32 %4, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %exitcond.not.i47.1 = icmp eq i32 %4, 2
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted = load float, ptr %5, align 4, !tbaa !46
  br label %.preheader165.i

.lr.ph193.i.loopexit215:                          ; preds = %._crit_edge.i48
  store float %.sroa.speculated.i46, ptr %5, align 4, !tbaa !46
  br label %.lr.ph193.i

.lr.ph193.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph193.i.loopexit215, %.lr.ph177.split.i
  %i.hy = and i32 %4, -4
  br label %bb.j

.preheader165.i:                                  ; preds = %.preheader165.i.preheader, %._crit_edge.i48
  %i.hz = phi float [ %.sroa.speculated.i46, %._crit_edge.i48 ], [ %.promoted, %.preheader165.i.preheader ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i49, %._crit_edge.i48 ], [ 0, %.preheader165.i.preheader ] ; 2 uses
  %i.ia = mul i64 %indvars.iv.i45, %3
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ia ; 3 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !214
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw i32 %i.id, 16
  %i.if = bitcast i32 %i.ie to float              ; 2 uses
  %i.ig = fcmp fast olt float %i.hz, %i.if
  %.sroa.speculated.i46 = select i1 %i.ig, float %i.if, float %i.hz ; 2 uses
  br i1 %exitcond.not.i47, label %._crit_edge.i48, label %bb.h

bb.h:                                             ; preds = %.preheader165.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !214
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw i32 %i.ij, 16
  %i.il = bitcast i32 %i.ik to float              ; 2 uses
  %i.im = load float, ptr %i.hw, align 4, !tbaa !46 ; 2 uses
  %i.in = fcmp fast olt float %i.im, %i.il
  %.sroa.speculated.i46.1 = select i1 %i.in, float %i.il, float %i.im
  store float %.sroa.speculated.i46.1, ptr %i.hw, align 4, !tbaa !46
  br i1 %exitcond.not.i47.1, label %._crit_edge.i48, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.io = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !214
  %i.iq = zext i16 %i.ip to i32
  %i.ir = shl nuw i32 %i.iq, 16
  %i.is = bitcast i32 %i.ir to float              ; 2 uses
  %i.it = load float, ptr %i.hx, align 4, !tbaa !46 ; 2 uses
  %i.iu = fcmp fast olt float %i.it, %i.is
  %.sroa.speculated.i46.2 = select i1 %i.iu, float %i.is, float %i.it
  store float %.sroa.speculated.i46.2, ptr %i.hx, align 4, !tbaa !46
  br label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %bb.i, %bb.h, %.preheader165.i
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count236.i
  br i1 %exitcond231.not.i, label %.lr.ph193.i.loopexit215, label %.preheader165.i, !llvm.loop !243

.preheader162.i:                                  ; preds = %._crit_edge191.i, %bb.f
  br i1 %i.a, label %.lr.ph196.i.preheader, label %.preheader161.i

.lr.ph196.i.preheader:                            ; preds = %.preheader162.i
  %i.iv = add nsw i32 %4, -4                      ; 2 uses
  %i.iw = lshr i32 %i.iv, 2                       ; 2 uses
  %i.ix = add nuw nsw i32 %i.iw, 1                ; 2 uses
  %i.iy = icmp eq i32 %i.iw, 0
  br i1 %i.iy, label %.lr.ph196.i.epil.preheader, label %.lr.ph196.i.preheader.new

.lr.ph196.i.preheader.new:                        ; preds = %.lr.ph196.i.preheader
  %unroll_iter227 = and i32 %i.ix, 2147483646
  br label %.lr.ph196.i

bb.j:                                             ; preds = %._crit_edge191.i, %.lr.ph193.i
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph193.i ], [ %indvars.iv.next240.i, %._crit_edge191.i ] ; 2 uses
  %i.iz = mul i64 %indvars.iv239.i, %3
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.iz ; 2 uses
  br i1 %i.a, label %.lr.ph.i43, label %.preheader163.i

.preheader163.i:                                  ; preds = %.lr.ph.i43, %bb.j
  %.0118.lcssa.i = phi ptr [ %i.ja, %bb.j ], [ %i.mo, %.lr.ph.i43 ] ; 4 uses
  %.0116.lcssa.i = phi ptr [ %5, %bb.j ], [ %i.mp, %.lr.ph.i43 ] ; 6 uses
  %.0114.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.mq, %.lr.ph.i43 ] ; 6 uses
  %.0112.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.hy, %.lr.ph.i43 ] ; 6 uses
  %i.jb = icmp slt i32 %.0112.lcssa.i, %4
  br i1 %i.jb, label %.lr.ph190.i.preheader, label %._crit_edge191.i

.lr.ph190.i.preheader:                            ; preds = %.preheader163.i
  %i.jc = xor i32 %.0112.lcssa.i, -1
  %i.jd = add i32 %4, %i.jc                       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.7:bb.a
  %i.v = load i32, ptr %4, align 4, !tbaa !23
  %i.w = load i32, ptr %5, align 4, !tbaa !23
  call fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr noundef %i.u, i32 noundef %i.v, i32 noundef %i.w)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.x = load i32, ptr %i.b, align 4, !tbaa !23
  %i.y = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.noexc
  %.036 = phi i32 [ %i.k, %.lr.ph ], [ %i.aj, %.noexc ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !23     ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !23
  %i.p = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.q = mul nsw i32 %i.n, %.036                  ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.n)
  %i.s = load ptr, ptr %5, align 8, !tbaa !42, !noalias !261
  %i.t = load i64, ptr %i.l, align 8, !tbaa !64, !noalias !261
  %i.u = sext i32 %i.p to i64
  %i.v = mul i64 %i.t, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !261
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !23
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %6, align 8, !tbaa !42
  %i.ad = load i32, ptr %7, align 4, !tbaa !23    ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %8, align 4, !tbaa !23
  %i.ai = load i64, ptr %9, align 8, !tbaa !62
  call fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ad, i64 noundef %i.ai, i32 noundef %.sroa.speculated, ptr noundef %i.y, ptr noundef %i.ab)
  %i.aj = add nsw i32 %.036, 1
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !23
  %.not.not = icmp slt i32 %.036, %i.ak
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #19
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not89 = icmp sgt i32 %i.k, %i.j
  br i1 %.not89, label %._crit_edge91, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i32, ptr %3, align 4, !tbaa !23     ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader.preheader, label %._crit_edge91

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.u = phi i32 [ %i.j, %.preheader.preheader ], [ %i.x, %._crit_edge ]
  %i.v = phi i32 [ %i.r, %.preheader.preheader ], [ %i.y, %._crit_edge ] ; 2 uses
  %indvars.iv103 = phi i64 [ %i.t, %.preheader.preheader ], [ %indvars.iv.next104, %._crit_edge ] ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc26, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.x = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.u, %.preheader ] ; 2 uses
  %i.y = phi i32 [ %i.on, %._crit_edge.loopexit ], [ %i.v, %.preheader ]
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1
  %i.z = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv103, %i.z
  br i1 %.not.not, label %.preheader, label %._crit_edge91, !llvm.loop !264

.noexc26:                                         ; preds = %.preheader, %_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !22, !noalias !265
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !24, !noalias !265
  %i.ac = load ptr, ptr %4, align 8, !tbaa !42, !noalias !265
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !64, !noalias !265
  %i.ae = mul i64 %i.ad, %indvars.iv103
  %i.af = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !265 ; 2 uses
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.ai = sext i32 %i.aa to i64
  %i.aj = sext i32 %i.ab to i64
  %i.ak = mul nsw i64 %indvars.iv, %i.ai
  %i.al = mul i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 4 uses
  %i.ao = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !42, !noalias !268
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !64, !noalias !268
  %i.ar = sext i32 %i.ao to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !268
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 11 uses
  %i.aw = load i32, ptr %6, align 4, !tbaa !23    ; 37 uses
  %i.ax = sext i32 %i.aw to i64                   ; 5 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax ; 10 uses
  %i.az = load i32, ptr %7, align 4, !tbaa !23    ; 3 uses
  %i.ba = icmp sgt i32 %i.aw, 3                   ; 6 uses
  br i1 %i.ba, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph.i.preheader:                               ; preds = %.noexc
  %i.bb = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = add nuw nsw i32 %i.bc, 1                ; 2 uses
  %xtraiter = and i32 %i.bd, 7                    ; 3 uses
  %i.be = icmp ult i32 %i.bb, 28
  br i1 %i.be, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.bd, 2147483640
  br label %.lr.ph.i

.preheader53.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader53.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader53.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.063.i.epil.init = phi ptr [ %i.av, %.lr.ph.i.preheader ], [ %i.ca, %.preheader53.loopexit.i.unr-lcssa ]
  %lcmp.mod221 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod221)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.063.i.epil = phi ptr [ %i.bf, %.lr.ph.i.epil ], [ %.063.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.063.i.epil, align 1, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %.063.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader53.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !271

.preheader53.loopexit.i:                          ; preds = %.lr.ph.i.epil, %.preheader53.loopexit.i.unr-lcssa
  %.lcssa = phi ptr [ %i.ca, %.preheader53.loopexit.i.unr-lcssa ], [ %i.bf, %.lr.ph.i.epil ]
  %i.bg = and i32 %i.aw, 2147483644
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.preheader53.loopexit.i, %.noexc
  %.039.lcssa.i = phi i32 [ 0, %.noexc ], [ %i.bg, %.preheader53.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %i.av, %.noexc ], [ %.lcssa, %.preheader53.loopexit.i ] ; 3 uses
  %i.bh = icmp slt i32 %.039.lcssa.i, %i.aw
  br i1 %i.bh, label %.lr.ph67.i.preheader, label %.preheader52.i

.lr.ph67.i.preheader:                             ; preds = %.preheader53.i
  %i.bi = xor i32 %.039.lcssa.i, -1
  %i.bj = add i32 %i.aw, %i.bi                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check194 = icmp ult i32 %i.bj, 7
  br i1 %min.iters.check194, label %.lr.ph67.i.preheader210, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph67.i.preheader
  %n.vec196 = and i64 %i.bl, 8589934584           ; 4 uses
  %i.bm = shl nuw nsw i64 %n.vec196, 2
  %i.bn = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bm
  %i.bo = trunc i64 %n.vec196 to i32
  %i.bp = add i32 %.039.lcssa.i, %i.bo
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next200, %vector.body197 ] ; 2 uses
  %i.bq = shl i64 %index198, 2
  %next.gep199 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep199, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %next.gep199, align 4, !tbaa !46
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.br, align 4, !tbaa !46
  %index.next200 = add nuw i64 %index198, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next200, %n.vec196
  br i1 %i.bs, label %middle.block201, label %vector.body197, !llvm.loop !272

middle.block201:                                  ; preds = %vector.body197
  %cmp.n202 = icmp eq i64 %i.bl, %n.vec196
  br i1 %cmp.n202, label %.preheader52.i, label %.lr.ph67.i.preheader210

.lr.ph67.i.preheader210:                          ; preds = %.lr.ph67.i.preheader, %middle.block201
  %.166.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph67.i.preheader ], [ %i.bn, %middle.block201 ]
  %.14065.i.ph = phi i32 [ %.039.lcssa.i, %.lr.ph67.i.preheader ], [ %i.bp, %middle.block201 ]
  br label %.lr.ph67.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.063.i = phi ptr [ %i.av, %.lr.ph.i.preheader.new ], [ %i.ca, %.lr.ph.i ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.063.i, align 1, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bt, align 1, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bu, align 1, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %.063.i, i64 48
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bv, align 1, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %.063.i, i64 64
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bw, align 1, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %.063.i, i64 80
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bx, align 1, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %.063.i, i64 96
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.by, align 1, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %.063.i, i64 112
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.bz, align 1, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %.063.i, i64 128 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.preheader53.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !230

.preheader52.i:                                   ; preds = %.lr.ph67.i, %middle.block201, %.preheader53.i
  br i1 %i.ba, label %.lr.ph70.preheader.i, label %.preheader.i

.lr.ph70.preheader.i:                             ; preds = %.preheader52.i
  %i.cb = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.cc = lshr i32 %i.cb, 2
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 4
  %i.cf = add nuw nsw i64 %i.ce, 16               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, i8 0, i64 %i.cf, i1 false), !tbaa !43
  %scevgep.i = getelementptr i8, ptr %i.ay, i64 %i.cf
  %i.cg = and i32 %i.cb, -4
  %i.ch = add nuw nsw i32 %i.cg, 4
  br label %.preheader.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.preheader210, %.lr.ph67.i
  %.166.i = phi ptr [ %i.ci, %.lr.ph67.i ], [ %.166.i.ph, %.lr.ph67.i.preheader210 ] ; 2 uses
  %.14065.i = phi i32 [ %i.cj, %.lr.ph67.i ], [ %.14065.i.ph, %.lr.ph67.i.preheader210 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.166.i, i64 4
  store float f0xFF7FFFFF, ptr %.166.i, align 4, !tbaa !46
  %i.cj = add nuw nsw i32 %.14065.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cj, %i.aw
  br i1 %exitcond.not.i, label %.preheader52.i, label %.lr.ph67.i, !llvm.loop !273

.preheader.i:                                     ; preds = %.lr.ph70.preheader.i, %.preheader52.i
  %.037.lcssa.i = phi ptr [ %i.ay, %.preheader52.i ], [ %scevgep.i, %.lr.ph70.preheader.i ]
  %.035.lcssa.i = phi i32 [ 0, %.preheader52.i ], [ %i.ch, %.lr.ph70.preheader.i ] ; 2 uses
  %i.ck = icmp slt i32 %.035.lcssa.i, %i.aw
  br i1 %i.ck, label %.lr.ph75.preheader.i, label %._crit_edge.i

.lr.ph75.preheader.i:                             ; preds = %.preheader.i
  %i.cl = xor i32 %.035.lcssa.i, -1
  %i.cm = add nsw i32 %i.aw, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.037.lcssa.i, i8 0, i64 %i.cp, i1 false), !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph75.preheader.i, %.preheader.i
  %i.cq = icmp sgt i32 %i.az, 0                   ; 2 uses
  br i1 %i.cq, label %.lr.ph177.i.i, label %.preheader162.i.i

.lr.ph177.i.i:                                    ; preds = %._crit_edge.i
  %wide.trip.count236.i.i = zext nneg i32 %i.az to i64 ; 3 uses
  br i1 %i.ba, label %.lr.ph.us.preheader.i.i, label %.lr.ph177.split.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.lr.ph177.i.i
  %i.cr = and i32 %i.aw, 2147483644               ; 3 uses
  %.not.i44 = icmp eq i32 %i.cr, %i.aw
  %i.cs = and i32 %i.aw, 2147483644
  %8 = xor i32 %i.cs, -1
  %i.ct = add nsw i32 %i.aw, %8                   ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check176 = icmp ult i32 %i.ct, 7
  %n.vec178 = and i64 %i.cv, 8589934584           ; 5 uses
  %i.cw = shl nuw nsw i64 %n.vec178, 1
  %i.cx = shl nuw nsw i64 %n.vec178, 2
  %i.cy = trunc i64 %n.vec178 to i32
  %i.cz = add i32 %i.cr, %i.cy
  %cmp.n189 = icmp eq i64 %i.cv, %n.vec178
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph.us.preheader.i.i
  %indvars.iv233.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next234.i.i, %._crit_edge.us.i.i ] ; 2 uses
  %i.da = mul nuw nsw i64 %indvars.iv233.i.i, %i.ax
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.da
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us.i.i
  %.0106168.us.i.i = phi ptr [ %i.db, %.lr.ph.us.i.i ], [ %i.dj, %bb.c ] ; 2 uses
  %.0108167.us.i.i = phi ptr [ %i.av, %.lr.ph.us.i.i ], [ %i.dk, %bb.c ] ; 3 uses
  %.0110166.us.i.i = phi i32 [ 0, %.lr.ph.us.i.i ], [ %i.dl, %bb.c ]
  %i.dc = load i64, ptr %.0106168.us.i.i, align 1, !tbaa !43
  %i.dd = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.de = bitcast <2 x i64> %i.dd to <8 x i16>
  %i.df = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.de, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dg = bitcast <8 x i16> %i.df to <4 x float>
  %i.dh = load <4 x float>, ptr %.0108167.us.i.i, align 1, !tbaa !43
  %i.di = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dg)
  store <4 x float> %i.di, ptr %.0108167.us.i.i, align 1, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %.0106168.us.i.i, i64 8 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0108167.us.i.i, i64 16 ; 4 uses
  %i.dl = add nuw nsw i32 %.0110166.us.i.i, 4     ; 2 uses
  %i.dm = or disjoint i32 %i.dl, 3
  %i.dn = icmp slt i32 %i.dm, %i.aw
  br i1 %i.dn, label %bb.c, label %..preheader165_crit_edge.us.i.i, !llvm.loop !241

.lr.ph174.us.i.i:                                 ; preds = %.lr.ph174.us.i.i.preheader207, %.lr.ph174.us.i.i
  %.1107173.us.i.i = phi ptr [ %i.du, %.lr.ph174.us.i.i ], [ %.1107173.us.i.i.ph, %.lr.ph174.us.i.i.preheader207 ] ; 2 uses
  %.1109172.us.i.i = phi ptr [ %i.dv, %.lr.ph174.us.i.i ], [ %.1109172.us.i.i.ph, %.lr.ph174.us.i.i.preheader207 ] ; 3 uses
  %.1111171.us.i.i = phi i32 [ %i.dw, %.lr.ph174.us.i.i ], [ %.1111171.us.i.i.ph, %.lr.ph174.us.i.i.preheader207 ]
  %i.do = load i16, ptr %.1107173.us.i.i, align 2, !tbaa !214
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw i32 %i.dp, 16
  %i.dr = bitcast i32 %i.dq to float              ; 2 uses
  %i.ds = load float, ptr %.1109172.us.i.i, align 4, !tbaa !46 ; 2 uses
  %i.dt = fcmp fast olt float %i.ds, %i.dr
  %.sroa.speculated.us.i.i = select i1 %i.dt, float %i.dr, float %i.ds
  store float %.sroa.speculated.us.i.i, ptr %.1109172.us.i.i, align 4, !tbaa !46
  %i.du = getelementptr inbounds nuw i8, ptr %.1107173.us.i.i, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.1109172.us.i.i, i64 4
  %i.dw = add nuw nsw i32 %.1111171.us.i.i, 1     ; 2 uses
  %exitcond232.not.i.i = icmp eq i32 %i.dw, %i.aw
  br i1 %exitcond232.not.i.i, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i, !llvm.loop !274

._crit_edge.us.i.i:                               ; preds = %.lr.ph174.us.i.i, %middle.block188, %..preheader165_crit_edge.us.i.i
  %indvars.iv.next234.i.i = add nuw nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %exitcond237.not.i.i = icmp eq i64 %indvars.iv.next234.i.i, %wide.trip.count236.i.i
  br i1 %exitcond237.not.i.i, label %.lr.ph193.i.i, label %.lr.ph.us.i.i, !llvm.loop !243

..preheader165_crit_edge.us.i.i:                  ; preds = %bb.c
  br i1 %.not.i44, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i.preheader

.lr.ph174.us.i.i.preheader:                       ; preds = %..preheader165_crit_edge.us.i.i
  br i1 %min.iters.check176, label %.lr.ph174.us.i.i.preheader207, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph174.us.i.i.preheader
  %i.dx = getelementptr i8, ptr %i.dj, i64 %i.cw
  %i.dy = getelementptr i8, ptr %i.dk, i64 %i.cx
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next187, %vector.body179 ] ; 3 uses
  %i.dz = shl i64 %index180, 1
  %next.gep181 = getelementptr i8, ptr %i.dj, i64 %i.dz ; 2 uses
  %i.ea = shl i64 %index180, 2
  %next.gep182 = getelementptr i8, ptr %i.dk, i64 %i.ea ; 3 uses
  %i.eb = getelementptr i8, ptr %next.gep181, i64 8
  %wide.load183 = load <4 x i16>, ptr %next.gep181, align 2, !tbaa !214
  %wide.load184 = load <4 x i16>, ptr %i.eb, align 2, !tbaa !214
  %i.ec = zext <4 x i16> %wide.load183 to <4 x i32>
  %i.ed = zext <4 x i16> %wide.load184 to <4 x i32>
  %i.ee = shl nuw <4 x i32> %i.ec, splat (i32 16)
  %i.ef = shl nuw <4 x i32> %i.ed, splat (i32 16)
  %i.eg = bitcast <4 x i32> %i.ee to <4 x float>  ; 2 uses
  %i.eh = bitcast <4 x i32> %i.ef to <4 x float>  ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep182, i64 16 ; 2 uses
  %wide.load185 = load <4 x float>, ptr %next.gep182, align 4, !tbaa !46 ; 2 uses
  %wide.load186 = load <4 x float>, ptr %i.ei, align 4, !tbaa !46 ; 2 uses
  %i.ej = fcmp fast olt <4 x float> %wide.load185, %i.eg
  %i.ek = fcmp fast olt <4 x float> %wide.load186, %i.eh
  %i.el = select <4 x i1> %i.ej, <4 x float> %i.eg, <4 x float> %wide.load185
  %i.em = select <4 x i1> %i.ek, <4 x float> %i.eh, <4 x float> %wide.load186
  store <4 x float> %i.el, ptr %next.gep182, align 4, !tbaa !46
  store <4 x float> %i.em, ptr %i.ei, align 4, !tbaa !46
  %index.next187 = add nuw i64 %index180, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next187, %n.vec178
  br i1 %i.en, label %middle.block188, label %vector.body179, !llvm.loop !275

middle.block188:                                  ; preds = %vector.body179
  br i1 %cmp.n189, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i.preheader207

.lr.ph174.us.i.i.preheader207:                    ; preds = %.lr.ph174.us.i.i.preheader, %middle.block188
  %.1107173.us.i.i.ph = phi ptr [ %i.dj, %.lr.ph174.us.i.i.preheader ], [ %i.dx, %middle.block188 ]
  %.1109172.us.i.i.ph = phi ptr [ %i.dk, %.lr.ph174.us.i.i.preheader ], [ %i.dy, %middle.block188 ]
  %.1111171.us.i.i.ph = phi i32 [ %i.cr, %.lr.ph174.us.i.i.preheader ], [ %i.cz, %middle.block188 ]
  br label %.lr.ph174.us.i.i

.lr.ph177.split.i.i:                              ; preds = %.lr.ph177.i.i
  %i.eo = icmp sgt i32 %i.aw, 0
  br i1 %i.eo, label %.preheader165.i.i.preheader, label %.lr.ph193.i.i

.preheader165.i.i.preheader:                      ; preds = %.lr.ph177.split.i.i
  %exitcond.not.i47.i = icmp eq i32 %i.aw, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %exitcond.not.i47.i.1 = icmp eq i32 %i.aw, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.promoted = load float, ptr %i.av, align 4, !tbaa !46
  br label %.preheader165.i.i

.lr.ph193.i.i.loopexit209:                        ; preds = %._crit_edge.i48.i
  store float %.sroa.speculated.i46.i, ptr %i.av, align 4, !tbaa !46
  br label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph193.i.i.loopexit209, %.lr.ph177.split.i.i
  %i.er = and i32 %i.aw, -4
  br label %bb.f

.preheader165.i.i:                                ; preds = %.preheader165.i.i.preheader, %._crit_edge.i48.i
  %i.es = phi float [ %.sroa.speculated.i46.i, %._crit_edge.i48.i ], [ %.promoted, %.preheader165.i.i.preheader ] ; 2 uses
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i49.i, %._crit_edge.i48.i ], [ 0, %.preheader165.i.i.preheader ] ; 2 uses
  %i.et = mul nuw nsw i64 %indvars.iv.i45.i, %i.ax
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.et ; 3 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !214
  %i.ew = zext i16 %i.ev to i32
  %i.ex = shl nuw i32 %i.ew, 16
  %i.ey = bitcast i32 %i.ex to float              ; 2 uses
  %i.ez = fcmp fast olt float %i.es, %i.ey
  %.sroa.speculated.i46.i = select i1 %i.ez, float %i.ey, float %i.es ; 2 uses
  br i1 %exitcond.not.i47.i, label %._crit_edge.i48.i, label %bb.d

bb.d:                                             ; preds = %.preheader165.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !214
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 16
  %i.fe = bitcast i32 %i.fd to float              ; 2 uses
  %i.ff = load float, ptr %i.ep, align 4, !tbaa !46 ; 2 uses
  %i.fg = fcmp fast olt float %i.ff, %i.fe
  %.sroa.speculated.i46.i.1 = select i1 %i.fg, float %i.fe, float %i.ff
  store float %.sroa.speculated.i46.i.1, ptr %i.ep, align 4, !tbaa !46
  br i1 %exitcond.not.i47.i.1, label %._crit_edge.i48.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !214
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 16
  %i.fl = bitcast i32 %i.fk to float              ; 2 uses
  %i.fm = load float, ptr %i.eq, align 4, !tbaa !46 ; 2 uses
  %i.fn = fcmp fast olt float %i.fm, %i.fl
  %.sroa.speculated.i46.i.2 = select i1 %i.fn, float %i.fl, float %i.fm
  store float %.sroa.speculated.i46.i.2, ptr %i.eq, align 4, !tbaa !46
  br label %._crit_edge.i48.i

._crit_edge.i48.i:                                ; preds = %bb.e, %bb.d, %.preheader165.i.i
  %indvars.iv.next.i49.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond231.not.i.i = icmp eq i64 %indvars.iv.next.i49.i, %wide.trip.count236.i.i
  br i1 %exitcond231.not.i.i, label %.lr.ph193.i.i.loopexit209, label %.preheader165.i.i, !llvm.loop !243

.preheader162.i.i:                                ; preds = %._crit_edge191.i.i, %._crit_edge.i
  br i1 %i.ba, label %.lr.ph196.i.i.preheader, label %.preheader161.i.i

.lr.ph196.i.i.preheader:                          ; preds = %.preheader162.i.i
  %i.fo = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.fp = lshr i32 %i.fo, 2                       ; 2 uses
  %i.fq = add nuw nsw i32 %i.fp, 1                ; 2 uses
  %i.fr = icmp eq i32 %i.fp, 0
  br i1 %i.fr, label %.lr.ph196.i.i.epil.preheader, label %.lr.ph196.i.i.preheader.new

.lr.ph196.i.i.preheader.new:                      ; preds = %.lr.ph196.i.i.preheader
  %unroll_iter229 = and i32 %i.fq, 2147483646
  br label %.lr.ph196.i.i

bb.f:                                             ; preds = %._crit_edge191.i.i, %.lr.ph193.i.i
  %indvars.iv239.i.i = phi i64 [ 0, %.lr.ph193.i.i ], [ %indvars.iv.next240.i.i, %._crit_edge191.i.i ] ; 2 uses
  %i.fs = mul i64 %indvars.iv239.i.i, %i.ax
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.fs ; 2 uses
  br i1 %i.ba, label %.lr.ph.i43.i, label %.preheader163.i.i

.preheader163.i.i:                                ; preds = %.lr.ph.i43.i, %bb.f
  %.0118.lcssa.i.i = phi ptr [ %i.ft, %bb.f ], [ %i.jh, %.lr.ph.i43.i ] ; 4 uses
  %.0116.lcssa.i.i = phi ptr [ %i.av, %bb.f ], [ %i.ji, %.lr.ph.i43.i ] ; 6 uses
  %.0114.lcssa.i.i = phi ptr [ %i.ay, %bb.f ], [ %i.jj, %.lr.ph.i43.i ] ; 6 uses
  %.0112.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.er, %.lr.ph.i43.i ] ; 6 uses
  %i.fu = icmp slt i32 %.0112.lcssa.i.i, %i.aw
  br i1 %i.fu, label %.lr.ph190.i.i.preheader, label %._crit_edge191.i.i

.lr.ph190.i.i.preheader:                          ; preds = %.preheader163.i.i
  %i.fv = xor i32 %.0112.lcssa.i.i, -1
  %i.fw = add i32 %i.aw, %i.fv                    ; 2 uses
end_hunk_3
