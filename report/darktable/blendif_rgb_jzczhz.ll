Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_rgb_jzczhz?download=true
inline.NumInlined: 66
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_blendif_combine_channels:bb.a
  %predphi359 = select nsz <8 x i1> %i.nq, <8 x float> %i.nt, <8 x float> zeroinitializer
  %predphi360 = select nsz <8 x i1> %i.ny, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi359
  %predphi361 = select nsz <8 x i1> %i.nu, <8 x float> %i.nw, <8 x float> %predphi360
  %i.nz = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %predphi361
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index351 ; 2 uses
  %wide.load362 = load <8 x float>, ptr %i.oa, align 4, !tbaa !39, !alias.scope !144, !noalias !153
  %i.ob = fmul reassoc nsz arcp contract afn <8 x float> %i.nz, %wide.load362
  store <8 x float> %i.ob, ptr %i.oa, align 4, !tbaa !39, !alias.scope !144, !noalias !153
  %index.next363 = add nuw i64 %index351, 8       ; 2 uses
  %i.oc = icmp eq i64 %index.next363, %n.vec337
  br i1 %i.oc, label %.lr.ph.split.i80.preheader371, label %vector.body350, !llvm.loop !154

.lr.ph.split.us.i86:                              ; preds = %.lr.ph.i78, %_blendif_compute_factor.exit.us.i89
  %.011.us.i87 = phi i64 [ %i.oy, %_blendif_compute_factor.exit.us.i89 ], [ 0, %.lr.ph.i78 ] ; 2 uses
  %.0910.us.i88 = phi i64 [ %i.ox, %_blendif_compute_factor.exit.us.i89 ], [ 0, %.lr.ph.i78 ] ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.011.us.i87
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load float, ptr %i.oe, align 4, !tbaa !39, !alias.scope !141, !noalias !152 ; 6 uses
  %i.og = fcmp reassoc nsz arcp contract afn ugt float %i.of, %i.mw
  br i1 %i.og, label %bb.at, label %_blendif_compute_factor.exit.us.i89

bb.at:                                            ; preds = %.lr.ph.split.us.i86
  %i.oh = load float, ptr %i.mx, align 4, !tbaa !39, !alias.scope !148, !noalias !151
  %i.oi = fcmp reassoc nsz arcp contract afn olt float %i.of, %i.oh
  br i1 %i.oi, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oj = load float, ptr %i.my, align 4, !tbaa !39, !alias.scope !148, !noalias !151 ; 2 uses
  %i.ok = fcmp reassoc nsz arcp contract afn ugt float %i.of, %i.oj
  br i1 %i.ok, label %bb.av, label %_blendif_compute_factor.exit.us.i89

bb.av:                                            ; preds = %bb.au
  %i.ol = load float, ptr %i.mz, align 4, !tbaa !39, !alias.scope !148, !noalias !151
  %i.om = fcmp reassoc nsz arcp contract afn olt float %i.of, %i.ol
  br i1 %i.om, label %bb.aw, label %_blendif_compute_factor.exit.us.i89

bb.aw:                                            ; preds = %bb.av
  %i.on = fsub reassoc nsz arcp contract afn float %i.of, %i.oj
  %i.oo = load float, ptr %i.na, align 4, !tbaa !39, !alias.scope !148, !noalias !151
  %i.op = fmul reassoc nsz arcp contract afn float %i.oo, %i.on
  %i.oq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.op
  br label %_blendif_compute_factor.exit.us.i89

bb.ax:                                            ; preds = %bb.at
  %i.or = fsub reassoc nsz arcp contract afn float %i.of, %i.mw
  %i.os = load float, ptr %i.nb, align 4, !tbaa !39, !alias.scope !148, !noalias !151
  %i.ot = fmul reassoc nsz arcp contract afn float %i.os, %i.or
  br label %_blendif_compute_factor.exit.us.i89

_blendif_compute_factor.exit.us.i89:              ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %.lr.ph.split.us.i86
  %.0.i.us.i90 = phi nsz float [ 1.000000e+00, %bb.au ], [ %i.ot, %bb.ax ], [ 0.000000e+00, %.lr.ph.split.us.i86 ], [ %i.oq, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0910.us.i88 ; 2 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !39, !alias.scope !144, !noalias !153
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ov, %.0.i.us.i90
  store float %i.ow, ptr %i.ou, align 4, !tbaa !39, !alias.scope !144, !noalias !153
  %i.ox = add nuw i64 %.0910.us.i88, 1            ; 2 uses
  %i.oy = add i64 %.011.us.i87, 4
  %exitcond13.not.i91 = icmp eq i64 %i.ox, %2
  br i1 %exitcond13.not.i91, label %_blendif_rgb_blue.exit, label %.lr.ph.split.us.i86

.lr.ph.split.i80:                                 ; preds = %.lr.ph.split.i80.preheader371, %_blendif_compute_factor.exit.i83
  %.011.i81 = phi i64 [ %i.pv, %_blendif_compute_factor.exit.i83 ], [ %.011.i81.ph, %.lr.ph.split.i80.preheader371 ] ; 2 uses
  %.0910.i82 = phi i64 [ %i.pu, %_blendif_compute_factor.exit.i83 ], [ %.0910.i82.ph, %.lr.ph.split.i80.preheader371 ] ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.011.i81
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !39, !alias.scope !141, !noalias !152 ; 6 uses
  %i.pc = fcmp reassoc nsz arcp contract afn ugt float %i.pb, %i.mw
  br i1 %i.pc, label %bb.ay, label %_blendif_compute_factor.exit.i83

bb.ay:                                            ; preds = %.lr.ph.split.i80
  %i.pd = load float, ptr %i.mx, align 4, !tbaa !39, !alias.scope !148, !noalias !151
  %i.pe = fcmp reassoc nsz arcp contract afn olt float %i.pb, %i.pd
  br i1 %i.pe, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.pf = fsub reassoc nsz arcp contract afn float %i.pb, %i.mw
  %i.pg = load float, ptr %i.nb, align 4, !tbaa !39, !alias.scope !148, !noalias !151
  %i.ph = fmul reassoc nsz arcp contract afn float %i.pg, %i.pf
  br label %_blendif_compute_factor.exit.i83

bb.ba:                                            ; preds = %bb.ay
  %i.pi = load float, ptr %i.my, align 4, !tbaa !39, !alias.scope !148, !noalias !151 ; 2 uses
  %i.pj = fcmp reassoc nsz arcp contract afn ugt float %i.pb, %i.pi
  br i1 %i.pj, label %bb.bb, label %_blendif_compute_factor.exit.i83

bb.bb:                                            ; preds = %bb.ba
  %i.pk = load float, ptr %i.mz, align 4, !tbaa !39, !alias.scope !148, !noalias !151
  %i.pl = fcmp reassoc nsz arcp contract afn olt float %i.pb, %i.pk
  br i1 %i.pl, label %bb.bc, label %_blendif_compute_factor.exit.i83

bb.bc:                                            ; preds = %bb.bb
  %i.pm = fsub reassoc nsz arcp contract afn float %i.pb, %i.pi
  %i.pn = load float, ptr %i.na, align 4, !tbaa !39, !alias.scope !148, !noalias !151
  %i.po = fmul reassoc nsz arcp contract afn float %i.pn, %i.pm
  %i.pp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.po
  br label %_blendif_compute_factor.exit.i83

_blendif_compute_factor.exit.i83:                 ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %.lr.ph.split.i80
  %.0.i.i84 = phi nsz float [ 1.000000e+00, %bb.ba ], [ %i.ph, %bb.az ], [ 0.000000e+00, %.lr.ph.split.i80 ], [ %i.pp, %bb.bc ], [ 0.000000e+00, %bb.bb ]
  %i.pq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.i84
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0910.i82 ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !39, !alias.scope !144, !noalias !153
  %i.pt = fmul reassoc nsz arcp contract afn float %i.pq, %i.ps
  store float %i.pt, ptr %i.pr, align 4, !tbaa !39, !alias.scope !144, !noalias !153
  %i.pu = add nuw i64 %.0910.i82, 1               ; 2 uses
  %i.pv = add i64 %.011.i81, 4
  %exitcond.not.i85 = icmp eq i64 %i.pu, %2
  br i1 %exitcond.not.i85, label %_blendif_rgb_blue.exit, label %.lr.ph.split.i80, !llvm.loop !155

_blendif_rgb_blue.exit:                           ; preds = %_blendif_compute_factor.exit.i83, %_blendif_compute_factor.exit.us.i89, %bb.ah, %bb.as, %_blendif_rgb_green.exit
  %i.pw = and i32 %3, 1792
  %.not52 = icmp eq i32 %i.pw, 0
  br i1 %.not52, label %_blendif_jzczhz.exit, label %bb.bd

bb.bd:                                            ; preds = %_blendif_rgb_blue.exit
  %i.px = lshr i32 %3, 16                         ; 3 uses
  %i.py = and i32 %i.px, 256                      ; 2 uses
  %i.pz = and i32 %i.px, 512                      ; 2 uses
  %i.qa = and i32 %i.px, 1024                     ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %5, i64 960 ; 2 uses
  %i.qc = load float, ptr %i.qb, align 64, !tbaa !39
  %i.qd = tail call float @llvm.fabs.f32(float %i.qc)
  %i.qe = fcmp ueq float %i.qd, +inf
  br i1 %i.qe, label %bb.bv, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %.not.i92 = icmp eq i64 %2, 0
  br i1 %.not.i92, label %_blendif_jzczhz.exit, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.be
  %i.qf = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.qg = getelementptr inbounds nuw i8, ptr %5, i64 712
  %i.qh = getelementptr inbounds nuw i8, ptr %5, i64 768
  %i.qi = getelementptr inbounds nuw i8, ptr %5, i64 704
  %i.qj = load i32, ptr %i.qi, align 64, !tbaa !108, !alias.scope !161, !noalias !163
  %i.qk = getelementptr inbounds nuw i8, ptr %5, i64 852
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !95, !alias.scope !161, !noalias !163
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre38.i = load float, ptr %i.qf, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.qp = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 208
  %.not.i.i94 = icmp eq i32 %i.py, 0
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.qx = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.qy = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.qz = getelementptr inbounds nuw i8, ptr %4, i64 232
  %.not.i.1.i = icmp eq i32 %i.pz, 0
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.rd = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.re = getelementptr inbounds nuw i8, ptr %4, i64 252
  %i.rf = getelementptr inbounds nuw i8, ptr %4, i64 260
  %i.rg = getelementptr inbounds nuw i8, ptr %4, i64 256
  %.not.i.2.i = icmp eq i32 %i.qa, 0
  br label %bb.bf

bb.bf:                                            ; preds = %_blendif_compute_factor.exit.2.i, %.lr.ph.i93
  %.02237.i = phi i64 [ 0, %.lr.ph.i93 ], [ %i.vy, %_blendif_compute_factor.exit.2.i ] ; 2 uses
  %.02336.i = phi i64 [ 0, %.lr.ph.i93 ], [ %i.vx, %_blendif_compute_factor.exit.2.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7, !noalias !170
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02237.i
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef readonly %i.rh, ptr noundef %i.b, ptr noundef readonly %i.qb, ptr noundef readonly %i.qg, ptr noundef readonly %i.qh, i32 noundef %i.qj, i32 noundef %i.ql), !noalias !171
  %i.ri = load float, ptr %i.b, align 16, !tbaa !39, !noalias !170 ; 2 uses
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, 1.150000e+00
  %i.rk = load float, ptr %i.qm, align 8, !tbaa !39, !noalias !170 ; 3 uses
  %i.rl = fmul reassoc nsz arcp contract afn float %i.rk, f0x3E199998
  %i.rm = fsub reassoc nsz arcp contract afn float %i.rj, %i.rl ; 2 uses
  %i.rn = load float, ptr %i.qn, align 4, !tbaa !39, !noalias !170
  %i.ro = fmul reassoc nsz arcp contract afn float %i.rn, 6.600000e-01
  %i.rp = fmul reassoc nsz arcp contract afn float %i.ri, f0x3EAE147A
  %i.rq = fadd reassoc nsz arcp contract afn float %i.ro, %i.rp ; 2 uses
  %.reass35.i = fmul reassoc nsz arcp contract afn float %i.rm, -1.660080e-06
  %.reass33.i = fmul reassoc nsz arcp contract afn float %i.rq, 2.648000e-05
  %.reass34.i = fmul reassoc nsz arcp contract afn float %i.rk, f0x388C30BE
  %i.rr = fadd reassoc nsz arcp contract afn float %.reass35.i, %.reass34.i
  %i.rs = fadd reassoc nsz arcp contract afn float %i.rr, %.reass33.i
  %i.rt = insertelement <2 x float> poison, float %i.rm, i64 0
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rv = fmul reassoc nsz arcp contract afn <2 x float> %i.ru, <float -2.015100e-05, float f0x382DF9B4>
  %i.rw = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ry = fmul reassoc nsz arcp contract afn <2 x float> %i.rx, <float f0x38EB0462, float f0x387344EC>
  %i.rz = insertelement <2 x float> poison, float %i.rk, i64 0
  %i.sa = shufflevector <2 x float> %i.rz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sb = fmul reassoc nsz arcp contract afn <2 x float> %i.sa, <float 5.310080e-06, float 1.464800e-06>
  %i.sc = fadd reassoc nsz arcp contract afn <2 x float> %i.rv, %i.sb
  %i.sd = fadd reassoc nsz arcp contract afn <2 x float> %i.sc, %i.ry
  %i.se = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sd, <2 x float> zeroinitializer)
  %i.sf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.se, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.sg = fmul reassoc nsz arcp contract afn <2 x float> %i.sf, splat (float f0x4196D000)
  %i.sh = fadd reassoc nsz arcp contract afn <2 x float> %i.sg, splat (float f0x3F560000)
  %i.si = fmul reassoc nsz arcp contract afn <2 x float> %i.sf, splat (float 1.868750e+01)
  %i.sj = fadd reassoc nsz arcp contract afn <2 x float> %i.si, splat (float 1.000000e+00)
  %i.sk = fdiv reassoc nsz arcp contract afn <2 x float> %i.sh, %i.sj
  %i.sl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.sk, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.sm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rs, float 0.000000e+00)
  %i.sn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sm, float f0x3E232000) ; 2 uses
  %i.so = fmul reassoc nsz arcp contract afn float %i.sn, f0x4196D000
  %i.sp = fadd reassoc nsz arcp contract afn float %i.so, f0x3F560000
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sn, 1.868750e+01
  %i.sr = fadd reassoc nsz arcp contract afn float %i.sq, 1.000000e+00
  %i.ss = fdiv reassoc nsz arcp contract afn float %i.sp, %i.sr
  %i.st = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ss, float f0x430608CD) ; 3 uses
  %i.su = extractelement <2 x float> %i.sl, i64 0 ; 3 uses
  %i.sv = extractelement <2 x float> %i.sl, i64 1 ; 3 uses
  %i.sw = fadd reassoc nsz arcp contract afn float %i.su, %i.sv
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, 5.000000e-01
  %i.sy = fmul reassoc nsz arcp contract afn float %i.st, 0.000000e+00
  %i.sz = fadd reassoc nsz arcp contract afn float %i.sx, %i.sy ; 2 uses
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sv, 3.524000e+00
  %i.tb = fmul reassoc nsz arcp contract afn float %i.su, f0x40822279
  %i.tc = fsub reassoc nsz arcp contract afn float %i.ta, %i.tb
  %i.td = fmul reassoc nsz arcp contract afn float %i.st, 5.427080e-01
  %i.te = fadd reassoc nsz arcp contract afn float %i.tc, %i.td ; 2 uses
  %i.tf = fmul reassoc nsz arcp contract afn float %i.sv, 1.990760e-01
  %i.tg = fmul reassoc nsz arcp contract afn float %i.su, f0x3F8C63E9
  %i.th = fadd reassoc nsz arcp contract afn float %i.tg, %i.tf
  %i.ti = fmul reassoc nsz arcp contract afn float %i.st, f0xBFA5DF3B
  %i.tj = fadd reassoc nsz arcp contract afn float %i.th, %i.ti ; 2 uses
  %i.tk = fmul reassoc nsz arcp contract afn float %i.sz, 4.400000e-01
  %i.tl = fmul reassoc nsz arcp contract afn float %i.sz, 5.600000e-01
  %i.tm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.tl
  %i.tn = fdiv reassoc nsz arcp contract afn float %i.tk, %i.tm
  %i.to = fadd reassoc nsz arcp contract afn float %i.tn, -1.629550e-11
  %i.tp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.to, float 0.000000e+00) ; 6 uses
  %i.tq = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.tj, float %i.te)
  %i.tr = fmul reassoc nsz arcp contract afn float %i.tq, f0x3E22F983 ; 3 uses
  %i.ts = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.te, float noundef %i.tj) #16 ; 6 uses
  %i.tt = fcmp reassoc nsz arcp contract afn oge float %i.tr, 0.000000e+00
  %i.tu = fadd reassoc nsz arcp contract afn float %i.tr, 1.000000e+00
  %i.tv = select reassoc nsz arcp contract afn i1 %i.tt, float %i.tr, float %i.tu ; 6 uses
  %i.tw = fcmp reassoc nsz arcp contract afn ugt float %i.tp, %.pre38.i
  br i1 %i.tw, label %bb.bg, label %_blendif_compute_factor.exit.i95

bb.bg:                                            ; preds = %bb.bf
  %i.tx = load float, ptr %i.qo, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.ty = fcmp reassoc nsz arcp contract afn olt float %i.tp, %i.tx
  br i1 %i.ty, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.tz = fsub reassoc nsz arcp contract afn float %i.tp, %.pre38.i
  %i.ua = load float, ptr %i.qs, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.ub = fmul reassoc nsz arcp contract afn float %i.ua, %i.tz
  br label %_blendif_compute_factor.exit.i95

bb.bi:                                            ; preds = %bb.bg
  %i.uc = load float, ptr %i.qp, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.ud = fcmp reassoc nsz arcp contract afn ugt float %i.tp, %i.uc
  br i1 %i.ud, label %bb.bj, label %_blendif_compute_factor.exit.i95

bb.bj:                                            ; preds = %bb.bi
  %i.ue = load float, ptr %i.qq, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.uf = fcmp reassoc nsz arcp contract afn olt float %i.tp, %i.ue
  br i1 %i.uf, label %bb.bk, label %_blendif_compute_factor.exit.i95

bb.bk:                                            ; preds = %bb.bj
  %i.ug = fsub reassoc nsz arcp contract afn float %i.tp, %i.uc
  %i.uh = load float, ptr %i.qr, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.ui = fmul reassoc nsz arcp contract afn float %i.uh, %i.ug
  %i.uj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ui
  br label %_blendif_compute_factor.exit.i95

_blendif_compute_factor.exit.i95:                 ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %.0.i.i96 = phi nsz float [ 1.000000e+00, %bb.bi ], [ %i.ub, %bb.bh ], [ 0.000000e+00, %bb.bf ], [ %i.uj, %bb.bk ], [ 0.000000e+00, %bb.bj ] ; 2 uses
  %i.uk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.i96
  %i.ul = select reassoc nsz arcp contract afn i1 %.not.i.i94, float %.0.i.i96, float %i.uk
  %i.um = fcmp reassoc nsz arcp contract afn ugt float %i.ts, %i.qu
  br i1 %i.um, label %bb.bl, label %_blendif_compute_factor.exit.1.i

bb.bl:                                            ; preds = %_blendif_compute_factor.exit.i95
  %i.un = load float, ptr %i.qv, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.uo = fcmp reassoc nsz arcp contract afn olt float %i.ts, %i.un
  br i1 %i.uo, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.up = load float, ptr %i.qw, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.uq = fcmp reassoc nsz arcp contract afn ugt float %i.ts, %i.up
  br i1 %i.uq, label %bb.bn, label %_blendif_compute_factor.exit.1.i

bb.bn:                                            ; preds = %bb.bm
  %i.ur = load float, ptr %i.qx, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.us = fcmp reassoc nsz arcp contract afn olt float %i.ts, %i.ur
  br i1 %i.us, label %bb.bo, label %_blendif_compute_factor.exit.1.i

bb.bo:                                            ; preds = %bb.bn
  %i.ut = fsub reassoc nsz arcp contract afn float %i.ts, %i.up
  %i.uu = load float, ptr %i.qy, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.uv = fmul reassoc nsz arcp contract afn float %i.uu, %i.ut
  %i.uw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.uv
  br label %_blendif_compute_factor.exit.1.i

bb.bp:                                            ; preds = %bb.bl
  %i.ux = fsub reassoc nsz arcp contract afn float %i.ts, %i.qu
  %i.uy = load float, ptr %i.qz, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uy, %i.ux
  br label %_blendif_compute_factor.exit.1.i

_blendif_compute_factor.exit.1.i:                 ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %_blendif_compute_factor.exit.i95
  %.0.i.1.i = phi nsz float [ 1.000000e+00, %bb.bm ], [ %i.uz, %bb.bp ], [ 0.000000e+00, %_blendif_compute_factor.exit.i95 ], [ %i.uw, %bb.bo ], [ 0.000000e+00, %bb.bn ] ; 2 uses
  %i.va = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.1.i
  %i.vb = select reassoc nsz arcp contract afn i1 %.not.i.1.i, float %.0.i.1.i, float %i.va
  %i.vc = fmul reassoc nsz arcp contract afn float %i.vb, %i.ul
  %i.vd = fcmp reassoc nsz arcp contract afn ugt float %i.tv, %i.rb
  br i1 %i.vd, label %bb.bq, label %_blendif_compute_factor.exit.2.i

bb.bq:                                            ; preds = %_blendif_compute_factor.exit.1.i
  %i.ve = load float, ptr %i.rc, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.vf = fcmp reassoc nsz arcp contract afn olt float %i.tv, %i.ve
  br i1 %i.vf, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.vg = load float, ptr %i.rd, align 4, !tbaa !39, !alias.scope !166, !noalias !169 ; 2 uses
  %i.vh = fcmp reassoc nsz arcp contract afn ugt float %i.tv, %i.vg
  br i1 %i.vh, label %bb.bs, label %_blendif_compute_factor.exit.2.i

bb.bs:                                            ; preds = %bb.br
  %i.vi = load float, ptr %i.re, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.vj = fcmp reassoc nsz arcp contract afn olt float %i.tv, %i.vi
  br i1 %i.vj, label %bb.bt, label %_blendif_compute_factor.exit.2.i

bb.bt:                                            ; preds = %bb.bs
  %i.vk = fsub reassoc nsz arcp contract afn float %i.tv, %i.vg
  %i.vl = load float, ptr %i.rf, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.vm = fmul reassoc nsz arcp contract afn float %i.vl, %i.vk
  %i.vn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.vm
  br label %_blendif_compute_factor.exit.2.i

bb.bu:                                            ; preds = %bb.bq
  %i.vo = fsub reassoc nsz arcp contract afn float %i.tv, %i.rb
  %i.vp = load float, ptr %i.rg, align 4, !tbaa !39, !alias.scope !166, !noalias !169
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vp, %i.vo
  br label %_blendif_compute_factor.exit.2.i

_blendif_compute_factor.exit.2.i:                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %_blendif_compute_factor.exit.1.i
  %.0.i.2.i = phi nsz float [ 1.000000e+00, %bb.br ], [ %i.vq, %bb.bu ], [ 0.000000e+00, %_blendif_compute_factor.exit.1.i ], [ %i.vn, %bb.bt ], [ 0.000000e+00, %bb.bs ] ; 2 uses
  %i.vr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.2.i
  %i.vs = select reassoc nsz arcp contract afn i1 %.not.i.2.i, float %.0.i.2.i, float %i.vr
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02336.i ; 2 uses
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !39, !alias.scope !156, !noalias !172
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vc, %i.vu
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vv, %i.vs
  store float %i.vw, ptr %i.vt, align 4, !tbaa !39, !alias.scope !156, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7, !noalias !170
  %i.vx = add nuw i64 %.02336.i, 1                ; 2 uses
  %i.vy = add i64 %.02237.i, 4
  %exitcond.not.i97 = icmp eq i64 %i.vx, %2
  br i1 %exitcond.not.i97, label %_blendif_jzczhz.exit, label %bb.bf

bb.bv:                                            ; preds = %bb.bd
  %i.vz = load i32, ptr %5, align 64, !tbaa !173
  %i.wa = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.wb = tail call ptr @dt_colorspaces_get_profile(i32 noundef %i.vz, ptr noundef nonnull %i.wa, i32 noundef 1) #7
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1032
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !174
  %i.we = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str, i32 noundef 63) #7
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1032
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !174
  %i.wh = getelementptr inbounds nuw i8, ptr %5, i64 516
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !176
  %i.wj = tail call ptr @cmsCreateTransform(ptr noundef %i.wd, i32 noundef 4456604, ptr noundef %i.wg, i32 noundef 4849820, i32 noundef %i.wi, i32 noundef 0) #7 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %4, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %.not.i98 = icmp eq i64 %2, 0
  br i1 %.not.i98, label %_blendif_jzczhz_lab.exit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.bv
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.wm = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.wn = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.wo = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.wp = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.wq = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.wr = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.wt = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.wu = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.wv = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.ww = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.wx = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.wy = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.wz = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.xa = getelementptr inbounds nuw i8, ptr %4, i64 252
  %i.xb = getelementptr inbounds nuw i8, ptr %4, i64 260
  %i.xc = getelementptr inbounds nuw i8, ptr %4, i64 256
  %.not.i.i103 = icmp eq i32 %i.py, 0
  %.not.i.1.i106 = icmp eq i32 %i.pz, 0
  %.not.i.2.i109 = icmp eq i32 %i.qa, 0
  br label %bb.bw

bb.bw:                                            ; preds = %_blendif_compute_factor.exit.2.i107, %.lr.ph.i99
  %.01849.i = phi i64 [ 0, %.lr.ph.i99 ], [ %i.adi, %_blendif_compute_factor.exit.2.i107 ] ; 2 uses
  %.01948.i = phi i64 [ 0, %.lr.ph.i99 ], [ %i.adh, %_blendif_compute_factor.exit.2.i107 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7, !noalias !182
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01849.i
  call void @cmsDoTransform(ptr noundef %i.wj, ptr noundef %i.xd, ptr noundef nonnull %i.a, i32 noundef 1) #7, !noalias !185
  %i.xe = load float, ptr %i.a, align 16, !tbaa !39, !noalias !182
  %i.xf = fmul reassoc nsz arcp contract afn float %i.xe, 8.620690e-03
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xf, f0x3E0D3DCB ; 6 uses
  %i.xh = fcmp reassoc nsz arcp contract afn ogt float %i.xg, f0x3E53DCB1
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xg, %i.xg
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, %i.xg
  %i.xk = fmul reassoc nsz arcp contract afn float %i.xg, f0x3E038026
  %i.xl = fadd reassoc nsz arcp contract afn float %i.xk, f0xBC911AA6
  %i.xm = load <2 x float>, ptr %i.wl, align 4, !tbaa !39, !noalias !182
  %i.xn = fmul reassoc nsz arcp contract afn <2 x float> %i.xm, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.xo = select reassoc nsz arcp contract afn i1 %i.xh, float %i.xj, float %i.xl ; 3 uses
  %i.xp = insertelement <2 x float> poison, float %i.xg, i64 0
  %i.xq = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xr = fadd reassoc nsz arcp contract afn <2 x float> %i.xq, %i.xn
  %i.xs = fsub reassoc nsz arcp contract afn <2 x float> %i.xq, %i.xn
  %i.xt = shufflevector <2 x float> %i.xr, <2 x float> %i.xs, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.xu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.xt, splat (float f0x3E53DCB1)
  %i.xv = fmul reassoc nsz arcp contract afn <2 x float> %i.xt, %i.xt
  %i.xw = fmul reassoc nsz arcp contract afn <2 x float> %i.xv, %i.xt
  %i.xx = fmul reassoc nsz arcp contract afn <2 x float> %i.xt, splat (float f0x3E038026)
  %i.xy = fadd reassoc nsz arcp contract afn <2 x float> %i.xx, splat (float f0xBC911AA6)
  %i.xz = select <2 x i1> %i.xu, <2 x float> %i.xw, <2 x float> %i.xy ; 4 uses
  %i.ya = extractelement <2 x float> %i.xz, i64 0
  %i.yb = fmul reassoc nsz arcp contract afn float %i.xo, 2.303930e-02
  %i.yc = fmul reassoc nsz arcp contract afn <2 x float> %i.xz, <float f0x3F6BDEB5, float f0x3D556AA4> ; 2 uses
  %i.yd = extractelement <2 x float> %i.yc, i64 0
  %i.ye = fsub reassoc nsz arcp contract afn float %i.yd, %i.yb
  %i.yf = extractelement <2 x float> %i.yc, i64 1
  %i.yg = fadd reassoc nsz arcp contract afn float %i.ye, %i.yf ; 2 uses
  %.reass38.i = fmul reassoc nsz arcp contract afn float %i.ya, f0xBC937A4A
  %.reass37.i = fmul reassoc nsz arcp contract afn float %i.xo, f0x3F2AA3C6
  %i.yh = fmul reassoc nsz arcp contract afn <2 x float> %i.xz, <float f0x3C4247BE, float f0x3C3B638A> ; 2 uses
  %i.yi = fadd reassoc nsz arcp contract afn float %.reass37.i, %.reass38.i
  %i.yj = fmul reassoc nsz arcp contract afn float %i.xo, 2.048300e-02
  %i.yk = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.yl = insertelement <2 x float> %i.yk, float %i.yi, i64 1 ; 2 uses
  %i.ym = fsub reassoc nsz arcp contract afn <2 x float> %i.yh, %i.yl
  %i.yn = fadd reassoc nsz arcp contract afn <2 x float> %i.yh, %i.yl
  %i.yo = shufflevector <2 x float> %i.ym, <2 x float> %i.yn, <2 x i32> <i32 0, i32 3>
  %i.yp = fmul reassoc nsz arcp contract afn float %i.yg, 1.150000e+00
  %i.yq = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yr = insertelement <2 x float> %i.yq, float %i.yg, i64 1
  %i.ys = fmul reassoc nsz arcp contract afn <2 x float> %i.yr, <float f0x3F8C6BE4, float f0x3EAE147A>
  %i.yt = fadd reassoc nsz arcp contract afn <2 x float> %i.yo, %i.ys ; 4 uses
  %i.yu = extractelement <2 x float> %i.yt, i64 0
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yu, f0x3E199998
  %i.yw = fsub reassoc nsz arcp contract afn float %i.yp, %i.yv ; 2 uses
  %.reass47.i = fmul reassoc nsz arcp contract afn float %i.yw, -1.660080e-06
  %i.yx = fmul reassoc nsz arcp contract afn <2 x float> %i.yt, <float f0x388C30BE, float 2.648000e-05> ; 2 uses
  %i.yy = extractelement <2 x float> %i.yx, i64 0
  %i.yz = fadd reassoc nsz arcp contract afn float %.reass47.i, %i.yy
  %i.za = extractelement <2 x float> %i.yx, i64 1
  %i.zb = fadd reassoc nsz arcp contract afn float %i.yz, %i.za
  %i.zc = insertelement <2 x float> poison, float %i.yw, i64 0
  %i.zd = shufflevector <2 x float> %i.zc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ze = fmul reassoc nsz arcp contract afn <2 x float> %i.zd, <float -2.015100e-05, float f0x382DF9B4>
  %i.zf = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zg = fmul reassoc nsz arcp contract afn <2 x float> %i.zf, <float f0x38EB0462, float f0x387344EC>
  %i.zh = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zi = fmul reassoc nsz arcp contract afn <2 x float> %i.zh, <float 5.310080e-06, float 1.464800e-06>
  %i.zj = fadd reassoc nsz arcp contract afn <2 x float> %i.ze, %i.zi
  %i.zk = fadd reassoc nsz arcp contract afn <2 x float> %i.zj, %i.zg
  %i.zl = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.zk, <2 x float> zeroinitializer)
  %i.zm = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.zl, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.zn = fmul reassoc nsz arcp contract afn <2 x float> %i.zm, splat (float f0x4196D000)
  %i.zo = fadd reassoc nsz arcp contract afn <2 x float> %i.zn, splat (float f0x3F560000)
  %i.zp = fmul reassoc nsz arcp contract afn <2 x float> %i.zm, splat (float 1.868750e+01)
  %i.zq = fadd reassoc nsz arcp contract afn <2 x float> %i.zp, splat (float 1.000000e+00)
  %i.zr = fdiv reassoc nsz arcp contract afn <2 x float> %i.zo, %i.zq
  %i.zs = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.zr, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.zt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.zb, float 0.000000e+00)
  %i.zu = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zt, float f0x3E232000) ; 2 uses
  %i.zv = fmul reassoc nsz arcp contract afn float %i.zu, f0x4196D000
  %i.zw = fadd reassoc nsz arcp contract afn float %i.zv, f0x3F560000
  %i.zx = fmul reassoc nsz arcp contract afn float %i.zu, 1.868750e+01
  %i.zy = fadd reassoc nsz arcp contract afn float %i.zx, 1.000000e+00
  %i.zz = fdiv reassoc nsz arcp contract afn float %i.zw, %i.zy
  %i.aaa = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zz, float f0x430608CD) ; 3 uses
  %i.aab = extractelement <2 x float> %i.zs, i64 0 ; 3 uses
  %i.aac = extractelement <2 x float> %i.zs, i64 1 ; 3 uses
  %i.aad = fadd reassoc nsz arcp contract afn float %i.aab, %i.aac
  %i.aae = fmul reassoc nsz arcp contract afn float %i.aad, 5.000000e-01
  %i.aaf = fmul reassoc nsz arcp contract afn float %i.aaa, 0.000000e+00
  %i.aag = fadd reassoc nsz arcp contract afn float %i.aae, %i.aaf ; 2 uses
  %i.aah = fmul reassoc nsz arcp contract afn float %i.aac, 3.524000e+00
  %i.aai = fmul reassoc nsz arcp contract afn float %i.aab, f0x40822279
  %i.aaj = fsub reassoc nsz arcp contract afn float %i.aah, %i.aai
  %i.aak = fmul reassoc nsz arcp contract afn float %i.aaa, 5.427080e-01
  %i.aal = fadd reassoc nsz arcp contract afn float %i.aaj, %i.aak ; 2 uses
  %i.aam = fmul reassoc nsz arcp contract afn float %i.aac, 1.990760e-01
  %i.aan = fmul reassoc nsz arcp contract afn float %i.aab, f0x3F8C63E9
  %i.aao = fadd reassoc nsz arcp contract afn float %i.aan, %i.aam
  %i.aap = fmul reassoc nsz arcp contract afn float %i.aaa, f0xBFA5DF3B
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.aao, %i.aap ; 2 uses
  %i.aar = fmul reassoc nsz arcp contract afn float %i.aag, 4.400000e-01
  %i.aas = fmul reassoc nsz arcp contract afn float %i.aag, 5.600000e-01
  %i.aat = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aas
  %i.aau = fdiv reassoc nsz arcp contract afn float %i.aar, %i.aat
  %i.aav = fadd reassoc nsz arcp contract afn float %i.aau, -1.629550e-11
  %i.aaw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aav, float 0.000000e+00) ; 6 uses
  %i.aax = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.aaq, float %i.aal)
  %i.aay = fmul reassoc nsz arcp contract afn float %i.aax, f0x3E22F983 ; 3 uses
  %i.aaz = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aal, float noundef %i.aaq) #16 ; 6 uses
  %i.aba = fcmp reassoc nsz arcp contract afn oge float %i.aay, 0.000000e+00
  %i.abb = fadd reassoc nsz arcp contract afn float %i.aay, 1.000000e+00
  %i.abc = select reassoc nsz arcp contract afn i1 %i.aba, float %i.aay, float %i.abb ; 6 uses
  %i.abd = load float, ptr %i.wk, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.abe = fcmp reassoc nsz arcp contract afn ugt float %i.aaw, %i.abd
  br i1 %i.abe, label %bb.bx, label %_blendif_compute_factor.exit.i101

bb.bx:                                            ; preds = %bb.bw
  %i.abf = load float, ptr %i.wm, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abg = fcmp reassoc nsz arcp contract afn olt float %i.aaw, %i.abf
  br i1 %i.abg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.abh = fsub reassoc nsz arcp contract afn float %i.aaw, %i.abd
  %i.abi = load float, ptr %i.wq, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abj = fmul reassoc nsz arcp contract afn float %i.abi, %i.abh
  br label %_blendif_compute_factor.exit.i101

bb.bz:                                            ; preds = %bb.bx
  %i.abk = load float, ptr %i.wn, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.abl = fcmp reassoc nsz arcp contract afn ugt float %i.aaw, %i.abk
  br i1 %i.abl, label %bb.ca, label %_blendif_compute_factor.exit.i101

bb.ca:                                            ; preds = %bb.bz
  %i.abm = load float, ptr %i.wo, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abn = fcmp reassoc nsz arcp contract afn olt float %i.aaw, %i.abm
  br i1 %i.abn, label %bb.cb, label %_blendif_compute_factor.exit.i101

bb.cb:                                            ; preds = %bb.ca
  %i.abo = fsub reassoc nsz arcp contract afn float %i.aaw, %i.abk
  %i.abp = load float, ptr %i.wp, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abq = fmul reassoc nsz arcp contract afn float %i.abp, %i.abo
  %i.abr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.abq
  br label %_blendif_compute_factor.exit.i101

_blendif_compute_factor.exit.i101:                ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bw
  %.0.i.i102 = phi nsz float [ 1.000000e+00, %bb.bz ], [ %i.abj, %bb.by ], [ 0.000000e+00, %bb.bw ], [ %i.abr, %bb.cb ], [ 0.000000e+00, %bb.ca ] ; 2 uses
  %i.abs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.i102
  %i.abt = select reassoc nsz arcp contract afn i1 %.not.i.i103, float %.0.i.i102, float %i.abs
  %i.abu = load float, ptr %i.wr, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.abv = fcmp reassoc nsz arcp contract afn ugt float %i.aaz, %i.abu
  br i1 %i.abv, label %bb.cc, label %_blendif_compute_factor.exit.1.i104

bb.cc:                                            ; preds = %_blendif_compute_factor.exit.i101
  %i.abw = load float, ptr %i.ws, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.abx = fcmp reassoc nsz arcp contract afn olt float %i.aaz, %i.abw
  br i1 %i.abx, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aby = load float, ptr %i.wt, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.abz = fcmp reassoc nsz arcp contract afn ugt float %i.aaz, %i.aby
  br i1 %i.abz, label %bb.ce, label %_blendif_compute_factor.exit.1.i104

bb.ce:                                            ; preds = %bb.cd
  %i.aca = load float, ptr %i.wu, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.acb = fcmp reassoc nsz arcp contract afn olt float %i.aaz, %i.aca
  br i1 %i.acb, label %bb.cf, label %_blendif_compute_factor.exit.1.i104

bb.cf:                                            ; preds = %bb.ce
  %i.acc = fsub reassoc nsz arcp contract afn float %i.aaz, %i.aby
  %i.acd = load float, ptr %i.wv, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, %i.acc
  %i.acf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ace
  br label %_blendif_compute_factor.exit.1.i104

bb.cg:                                            ; preds = %bb.cc
  %i.acg = fsub reassoc nsz arcp contract afn float %i.aaz, %i.abu
  %i.ach = load float, ptr %i.ww, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.aci = fmul reassoc nsz arcp contract afn float %i.ach, %i.acg
  br label %_blendif_compute_factor.exit.1.i104

_blendif_compute_factor.exit.1.i104:              ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %_blendif_compute_factor.exit.i101
  %.0.i.1.i105 = phi nsz float [ 1.000000e+00, %bb.cd ], [ %i.aci, %bb.cg ], [ 0.000000e+00, %_blendif_compute_factor.exit.i101 ], [ %i.acf, %bb.cf ], [ 0.000000e+00, %bb.ce ] ; 2 uses
  %i.acj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.1.i105
  %i.ack = select reassoc nsz arcp contract afn i1 %.not.i.1.i106, float %.0.i.1.i105, float %i.acj
  %i.acl = fmul reassoc nsz arcp contract afn float %i.ack, %i.abt
  %i.acm = load float, ptr %i.wx, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.acn = fcmp reassoc nsz arcp contract afn ugt float %i.abc, %i.acm
  br i1 %i.acn, label %bb.ch, label %_blendif_compute_factor.exit.2.i107

bb.ch:                                            ; preds = %_blendif_compute_factor.exit.1.i104
  %i.aco = load float, ptr %i.wy, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.acp = fcmp reassoc nsz arcp contract afn olt float %i.abc, %i.aco
  br i1 %i.acp, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.acq = load float, ptr %i.wz, align 4, !tbaa !39, !alias.scope !186, !noalias !189 ; 2 uses
  %i.acr = fcmp reassoc nsz arcp contract afn ugt float %i.abc, %i.acq
  br i1 %i.acr, label %bb.cj, label %_blendif_compute_factor.exit.2.i107

bb.cj:                                            ; preds = %bb.ci
  %i.acs = load float, ptr %i.xa, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.act = fcmp reassoc nsz arcp contract afn olt float %i.abc, %i.acs
  br i1 %i.act, label %bb.ck, label %_blendif_compute_factor.exit.2.i107

bb.ck:                                            ; preds = %bb.cj
  %i.acu = fsub reassoc nsz arcp contract afn float %i.abc, %i.acq
  %i.acv = load float, ptr %i.xb, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.acw = fmul reassoc nsz arcp contract afn float %i.acv, %i.acu
  %i.acx = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.acw
  br label %_blendif_compute_factor.exit.2.i107

bb.cl:                                            ; preds = %bb.ch
  %i.acy = fsub reassoc nsz arcp contract afn float %i.abc, %i.acm
  %i.acz = load float, ptr %i.xc, align 4, !tbaa !39, !alias.scope !186, !noalias !189
  %i.ada = fmul reassoc nsz arcp contract afn float %i.acz, %i.acy
  br label %_blendif_compute_factor.exit.2.i107

_blendif_compute_factor.exit.2.i107:              ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %_blendif_compute_factor.exit.1.i104
  %.0.i.2.i108 = phi nsz float [ 1.000000e+00, %bb.ci ], [ %i.ada, %bb.cl ], [ 0.000000e+00, %_blendif_compute_factor.exit.1.i104 ], [ %i.acx, %bb.ck ], [ 0.000000e+00, %bb.cj ] ; 2 uses
  %i.adb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i.2.i108
  %i.adc = select reassoc nsz arcp contract afn i1 %.not.i.2.i109, float %.0.i.2.i108, float %i.adb
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01948.i ; 2 uses
  %i.ade = load float, ptr %i.add, align 4, !tbaa !39, !alias.scope !177, !noalias !190
  %i.adf = fmul reassoc nsz arcp contract afn float %i.acl, %i.ade
  %i.adg = fmul reassoc nsz arcp contract afn float %i.adf, %i.adc
  store float %i.adg, ptr %i.add, align 4, !tbaa !39, !alias.scope !177, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7, !noalias !182
  %i.adh = add nuw i64 %.01948.i, 1               ; 2 uses
  %i.adi = add i64 %.01849.i, 4
  %exitcond.not.i110 = icmp eq i64 %i.adh, %2
  br i1 %exitcond.not.i110, label %_blendif_jzczhz_lab.exit, label %bb.bw

_blendif_jzczhz_lab.exit:                         ; preds = %_blendif_compute_factor.exit.2.i107, %bb.bv
  call void @cmsDeleteTransform(ptr noundef %i.wj) #7
  br label %_blendif_jzczhz.exit

_blendif_jzczhz.exit:                             ; preds = %_blendif_compute_factor.exit.2.i, %_blendif_jzczhz_lab.exit, %bb.be, %_blendif_rgb_blue.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_develop_blendif_rgb_jzczhz_blend(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noalias noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = alloca [4 x float], align 16             ; 4 uses
  %i.f = alloca [4 x float], align 16             ; 4 uses
  %i.g = alloca [4 x float], align 16             ; 4 uses
  %i.h = alloca [4 x float], align 16             ; 4 uses
  %7 = alloca %struct.dt_iop_order_iccprofile_info_t, align 64 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30
  %.not = icmp eq i32 %i.l, 4
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %4, align 4, !tbaa !191
  %i.n = load i32, ptr %3, align 4, !tbaa !191
  %i.o = sub nsw i32 %i.m, %i.n                   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !192
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !192
  %i.t = sub nsw i32 %i.q, %i.s                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 21 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !193
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 628
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !194
end_hunk_0
begin_hunk_1_@dt_ioppr_apply_trc:bb.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @dt_ioppr_apply_trc(ptr noundef %0, ptr noundef %i.a, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load float, ptr %2, align 4, !tbaa !39
  %i.g = load float, ptr %i.a, align 16, !tbaa !39 ; 4 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.f
  %i.i = load float, ptr %i.b, align 4, !tbaa !39
  %i.j = load float, ptr %i.c, align 4, !tbaa !39 ; 4 uses
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, %i.h
  %i.m = load float, ptr %i.d, align 4, !tbaa !39
  %i.n = load float, ptr %i.e, align 8, !tbaa !39 ; 4 uses
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %i.m
  %i.p = fadd reassoc nsz arcp contract afn float %i.l, %i.o
  store float %i.p, ptr %1, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !39
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !39
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.j
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.y = load float, ptr %i.x, align 4, !tbaa !39
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.n
  %i.aa = fadd reassoc nsz arcp contract afn float %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !39
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !39
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.j
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !39
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.n
  %i.am = fadd reassoc nsz arcp contract afn float %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.am, ptr %i.an, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !39
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.g
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = load float, ptr %i.ar, align 4, !tbaa !39
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %i.j
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !39
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.n
  %i.ay = fadd reassoc nsz arcp contract afn float %i.au, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bd = load float, ptr %2, align 4, !tbaa !39
  %i.be = load float, ptr %0, align 4, !tbaa !39
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.bd
  %i.bg = load float, ptr %i.az, align 4, !tbaa !39
  %i.bh = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bg
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bf
  %i.bk = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bl = load float, ptr %i.bc, align 4, !tbaa !39
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %i.bk
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bj, %i.bm
  store float %i.bn, ptr %1, align 4, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !39
  %i.bq = load float, ptr %0, align 4, !tbaa !39
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !39
  %i.bu = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bt
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.by = load float, ptr %i.bx, align 4, !tbaa !39
  %i.bz = load float, ptr %i.bc, align 4, !tbaa !39
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.by
  %i.cb = fadd reassoc nsz arcp contract afn float %i.bw, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !39
  %i.cf = load float, ptr %0, align 4, !tbaa !39
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !39
  %i.cj = load float, ptr %i.ba, align 4, !tbaa !39
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ci
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !39
  %i.co = load float, ptr %i.bc, align 4, !tbaa !39
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, %i.cn
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.cq, ptr %i.cr, align 4, !tbaa !39
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !39
  %i.cu = load float, ptr %0, align 4, !tbaa !39
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !39
  %i.cy = load float, ptr %i.ba, align 4, !tbaa !39
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.cx
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %i.cv
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dc = load float, ptr %i.db, align 4, !tbaa !39
  %i.dd = load float, ptr %i.bc, align 4, !tbaa !39
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.dc
  %i.df = fadd reassoc nsz arcp contract afn float %i.da, %i.de
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ %i.df, %bb.c ], [ %i.ay, %bb.b ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %.sink, ptr %i.dg, align 4, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #11

declare void @cmsDoTransform(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_rgb_to_JzCzhz(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %1, ptr noalias nofree noundef readonly captures(address_is_null) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load i32, ptr %i.e, align 64, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 852
  %i.h = load i32, ptr %i.g, align 4, !tbaa !95
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.f, i32 noundef %i.h)
  %i.i = load float, ptr %i.a, align 16, !tbaa !39 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 1.150000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !39 ; 3 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, f0x3E199998
  %i.n = fsub reassoc nsz arcp contract afn float %i.j, %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !39
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 6.600000e-01
  %i.r = fmul reassoc nsz arcp contract afn float %i.i, f0x3EAE147A
  %i.s = fadd reassoc nsz arcp contract afn float %i.q, %i.r ; 2 uses
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.u, <float f0x3F8F716D, float 5.799990e-01>
  %i.w = insertelement <2 x float> poison, float %i.n, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, <float -2.015100e-01, float f0x3ED45F51>
  %i.z = insertelement <2 x float> poison, float %i.l, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul reassoc nsz arcp contract afn <2 x float> %i.aa, <float 5.310080e-02, float 1.464800e-02>
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.ab
  %i.ad = fmul reassoc nsz arcp contract afn float %i.n, -1.660080e-02
  %i.ae = fmul reassoc nsz arcp contract afn float %i.s, 2.648000e-01
  %i.af = fmul reassoc nsz arcp contract afn float %i.l, f0x3F2B2180
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ad, %i.af
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.ae
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, f0x38D1B717
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ai, float 0.000000e+00)
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aj, float f0x3E232000) ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, f0x4196D000
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, f0x3F560000
  %i.an = fmul reassoc nsz arcp contract afn float %i.ak, 1.868750e+01
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, 1.000000e+00
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.am, %i.ao
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ap, float f0x430608CD) ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, 0.000000e+00
  %i.as = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.v
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.as, splat (float f0x38D1B717)
  %i.au = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.at, <2 x float> zeroinitializer)
  %i.av = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.au, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn <2 x float> %i.av, splat (float f0x4196D000)
  %i.ax = fadd reassoc nsz arcp contract afn <2 x float> %i.aw, splat (float f0x3F560000)
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.av, splat (float 1.868750e+01)
  %i.az = fadd reassoc nsz arcp contract afn <2 x float> %i.ay, splat (float 1.000000e+00)
  %i.ba = fdiv reassoc nsz arcp contract afn <2 x float> %i.ax, %i.az
  %i.bb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ba, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bb)
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 5.000000e-01
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.ar ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, <float f0xC0822279, float 1.990760e-01>
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, <float f0x3F8C63E9, float 3.524000e+00>
  %i.bi = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bg
  %i.bj = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, <float f0xBFA5DF3B, float 5.427080e-01>
  %i.bm = fadd reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn float %i.be, 4.400000e-01
  %i.bo = fmul reassoc nsz arcp contract afn float %i.be, 5.600000e-01
  %i.bp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bo
  %i.bq = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bp
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, -1.629550e-11
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.br, float 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bt = load float, ptr %0, align 4, !tbaa !39  ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, 1.150000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !39 ; 3 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, f0x3E199998
  %i.by = fsub reassoc nsz arcp contract afn float %i.bu, %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !39
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, 6.600000e-01
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bt, f0x3EAE147A
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cb, %i.cc ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, <float f0x3F8F716D, float 5.799990e-01>
  %i.ch = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul reassoc nsz arcp contract afn <2 x float> %i.ci, <float -2.015100e-01, float f0x3ED45F51>
  %i.ck = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul reassoc nsz arcp contract afn <2 x float> %i.cl, <float 5.310080e-02, float 1.464800e-02>
  %i.cn = fadd reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cm
  %i.co = fmul reassoc nsz arcp contract afn float %i.by, -1.660080e-02
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cd, 2.648000e-01
  %i.cq = fmul reassoc nsz arcp contract afn float %i.bw, f0x3F2B2180
  %i.cr = fadd reassoc nsz arcp contract afn float %i.co, %i.cq
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.cp
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, f0x38D1B717
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ct, float 0.000000e+00)
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cu, float f0x3E232000) ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, f0x4196D000
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, f0x3F560000
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cv, 1.868750e+01
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, 1.000000e+00
  %i.da = fdiv reassoc nsz arcp contract afn float %i.cx, %i.cz
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.da, float f0x430608CD) ; 2 uses
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, 0.000000e+00
  %i.dd = fadd reassoc nsz arcp contract afn <2 x float> %i.cn, %i.cg
  %i.de = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, splat (float f0x38D1B717)
  %i.df = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.de, <2 x float> zeroinitializer)
  %i.dg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.df, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.dh = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, splat (float f0x4196D000)
  %i.di = fadd reassoc nsz arcp contract afn <2 x float> %i.dh, splat (float f0x3F560000)
  %i.dj = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, splat (float 1.868750e+01)
  %i.dk = fadd reassoc nsz arcp contract afn <2 x float> %i.dj, splat (float 1.000000e+00)
  %i.dl = fdiv reassoc nsz arcp contract afn <2 x float> %i.di, %i.dk
  %i.dm = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.dl, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.dm)
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, 5.000000e-01
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, %i.dc ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.dm, <float f0xC0822279, float 1.990760e-01>
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dm, <float f0x3F8C63E9, float 3.524000e+00>
  %i.dt = fadd reassoc nsz arcp contract afn <2 x float> %i.ds, %i.dr
  %i.du = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul reassoc nsz arcp contract afn <2 x float> %i.dv, <float f0xBFA5DF3B, float 5.427080e-01>
  %i.dx = fadd reassoc nsz arcp contract afn <2 x float> %i.dt, %i.dw
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dp, 4.400000e-01
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dp, 5.600000e-01
  %i.ea = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dz
  %i.eb = fdiv reassoc nsz arcp contract afn float %i.dy, %i.ea
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, -1.629550e-11
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ec, float 0.000000e+00)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi nsz float [ %i.ed, %bb.c ], [ %i.bs, %bb.b ]
  %i.ee = phi <2 x float> [ %i.dx, %bb.c ], [ %i.bm, %bb.b ] ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.eg = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ef, float %i.eg)
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, f0x3E22F983 ; 3 uses
  store float %.sroa.0.0, ptr %1, align 4, !tbaa !39
  %i.ej = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.eg, float noundef %i.ef) #16
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ej, ptr %i.ek, align 4, !tbaa !39
  %i.el = fcmp reassoc nsz arcp contract afn oge float %i.ei, 0.000000e+00
  %i.em = fadd reassoc nsz arcp contract afn float %i.ei, 1.000000e+00
  %i.en = select reassoc nsz arcp contract afn i1 %i.el, float %i.ei, float %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.en, ptr %i.eo, align 4, !tbaa !39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_multiply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i64 noundef %5) unnamed_addr #12 {
bb.a:
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.memcheck

.lr.ph.preheader43:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02529.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02628.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %5, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep31 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep32 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %3, %scevgep31
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %3, %scevgep32
  %bound134 = icmp ult ptr %1, %scevgep
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %5, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %5, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !39 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !263 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec36 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec37 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec38 = load <32 x float>, ptr %i.j, align 4, !tbaa !39, !alias.scope !266 ; 3 uses
  %strided.vec39 = shufflevector <32 x float> %wide.vec38, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec40 = shufflevector <32 x float> %wide.vec38, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec41 = shufflevector <32 x float> %wide.vec38, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %i.k, %strided.vec39
  %i.m = fsub reassoc nsz arcp contract afn <8 x float> %i.l, %strided.vec
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %wide.load
  %i.o = fadd reassoc nsz arcp contract afn <8 x float> %i.n, %strided.vec
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec36, %broadcast.splat
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.q, %strided.vec40
  %i.s = fsub reassoc nsz arcp contract afn <8 x float> %i.r, %strided.vec36
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %strided.vec36
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec37, %broadcast.splat
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.v, %strided.vec41
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %strided.vec37
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %wide.load
  %i.z = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %strided.vec37
  %i.aa = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ab = shufflevector <8 x float> %i.z, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !39, !alias.scope !268, !noalias !270
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %.lr.ph.preheader43, label %vector.body, !llvm.loop !271

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %.02529 = phi i64 [ %i.bm, %.lr.ph ], [ %.02529.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.02628 = phi i64 [ %i.bn, %.lr.ph ], [ %.02628.ph, %.lr.ph.preheader43 ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02529
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !39 ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02628
  %i.ag = load float, ptr %i.af, align 4, !tbaa !39 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02628
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !39
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ag, %2
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ai
  %i.al = fsub reassoc nsz arcp contract afn float %i.ak, %i.ag
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.ae
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, %i.ag
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02628 ; 2 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = or disjoint i64 %.02628, 1              ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !39 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.at = load float, ptr %i.as, align 4, !tbaa !39
  %i.au = fmul reassoc nsz arcp contract afn float %i.ar, %2
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = fsub reassoc nsz arcp contract afn float %i.av, %i.ar
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.ae
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.ar
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  store float %i.ay, ptr %i.az, align 4, !tbaa !39
  %i.ba = or disjoint i64 %.02628, 2              ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba
  %i.be = load float, ptr %i.bd, align 4, !tbaa !39
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bc, %2
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.be
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bg, %i.bc
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.ae
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bc
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ba
  store float %i.bj, ptr %i.bk, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store float %i.ae, ptr %i.bl, align 4, !tbaa !39
  %i.bm = add nuw i64 %.02529, 1                  ; 2 uses
  %i.bn = add i64 %.02628, 4
  %exitcond.not = icmp eq i64 %i.bm, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !272
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_average(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float %2, ptr nofree noundef writeonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i64 noundef %5) unnamed_addr #12 {
bb.a:
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

.lr.ph.preheader42:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %5, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %3, %scevgep30
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %3, %scevgep31
  %bound133 = icmp ult ptr %1, %scevgep
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph
end_hunk_1
