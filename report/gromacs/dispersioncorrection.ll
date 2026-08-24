Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/dispersioncorrection?download=true
inline.NumInlined: 318
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN20DispersionCorrection14TopologyParamsC2ERK10gmx_mtop_tRK10t_inputrecb:bb.a

bb.r:                                             ; preds = %bb.q
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv.next443
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !197
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul nsw i64 %i.gc, %i.fe
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0179.us.us.1 = phi i64 [ %i.gd, %bb.r ], [ %i.fh, %bb.q ] ; 2 uses
  %i.ge = sitofp i64 %.0179.us.us.1 to float
  %i.gf = add nuw nsw i64 %indvars.iv.next443, %i.fi
  %.idx506.1 = mul nuw nsw i64 %i.gf, 12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx506.1
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !171
  %i.gi = fmul float %i.gh, %i.ge
  %.pn230.in.us.us.1 = fpext float %i.gi to double
  %.pn230.us.us.1 = fdiv double %.pn230.in.us.us.1, 6.000000e+00
  %.2200.us.us.1 = fadd double %.2200.us.us, %.pn230.us.us.1 ; 2 uses
  %i.gj = add nsw i64 %.0179.us.us.1, %i.fz       ; 2 uses
  %indvars.iv.next443.1 = add nuw nsw i64 %indvars.iv442, 2 ; 2 uses
  %exitcond446.not.1 = icmp eq i64 %indvars.iv.next443.1, %i.ei
  br i1 %exitcond446.not.1, label %.split.us.us, label %.preheader.us.new, !llvm.loop !198

.split.us.us:                                     ; preds = %bb.s, %.prol.loopexit584
  %.2200.us.us.lcssa = phi double [ %.2200.us.us.lcssa.unr, %.prol.loopexit584 ], [ %.2200.us.us.1, %bb.s ] ; 2 uses
  %.lcssa569 = phi i64 [ %.lcssa569.unr, %.prol.loopexit584 ], [ %i.gj, %bb.s ] ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond449.not = icmp eq i64 %indvars.iv.next441, %i.ei
  br i1 %exitcond449.not, label %._crit_edge302.loopexit, label %.preheader.us, !llvm.loop !199

.preheader:                                       ; preds = %.preheader.lr.ph, %.split
  %indvars.iv430 = phi i64 [ %indvars.iv.next431, %.split ], [ 0, %.preheader.lr.ph ] ; 10 uses
  %.0187300 = phi i64 [ %.lcssa, %.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.gk = phi <2 x double> [ %.lcssa568, %.split ], [ zeroinitializer, %.preheader.lr.ph ] ; 2 uses
  %i.gl = sub nsw i64 %i.ei, %indvars.iv430
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv430
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !197
  %i.go = sext i32 %i.gn to i64                   ; 4 uses
  %i.gp = add nsw i64 %i.go, -1
  %i.gq = mul nsw i64 %i.gp, %i.go
  %i.gr = sdiv i64 %i.gq, 2                       ; 4 uses
  %i.gs = mul nuw nsw i64 %indvars.iv430, %i.ei   ; 3 uses
  %xtraiter580 = and i64 %i.gl, 1
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  br i1 %lcmp.mod581.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.gt = sitofp i64 %i.gr to float
  %i.gu = add nuw nsw i64 %indvars.iv430, %i.gs
  %.idx.prol = shl nuw nsw i64 %i.gu, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.prol
  %i.gw = load <2 x float>, ptr %i.gv, align 4, !tbaa !171
  %i.gx = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x float> %i.gw, %i.gy
  %i.ha = fpext <2 x float> %i.gz to <2 x double>
  %i.hb = fdiv <2 x double> %i.ha, <double 6.000000e+00, double 1.200000e+01>
  %i.hc = fadd <2 x double> %i.gk, %i.hb          ; 2 uses
  %i.hd = add nsw i64 %i.gr, %.0187300            ; 2 uses
  %indvars.iv.next433.prol = add nuw nsw i64 %indvars.iv430, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa568.unr = phi <2 x double> [ poison, %.preheader ], [ %i.hc, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %.preheader ], [ %i.hd, %.prol.loopexit.unr-lcssa ]
  %indvars.iv432.unr = phi i64 [ %indvars.iv430, %.preheader ], [ %indvars.iv.next433.prol, %.prol.loopexit.unr-lcssa ]
  %.1188294.unr = phi i64 [ %.0187300, %.preheader ], [ %i.hd, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.gk, %.preheader ], [ %i.hc, %.prol.loopexit.unr-lcssa ]
  %i.he = icmp eq i64 %i.ej, %indvars.iv430
  br i1 %i.he, label %.split, label %.preheader.new

._crit_edge302.loopexit:                          ; preds = %.split.us.us
  %i.hf = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.2200.us.us.lcssa, i64 0
  br label %._crit_edge302

._crit_edge302:                                   ; preds = %.split, %._crit_edge302.loopexit, %.preheader280
  %.0187.lcssa = phi i64 [ 0, %.preheader280 ], [ %.lcssa569, %._crit_edge302.loopexit ], [ %.lcssa, %.split ] ; 2 uses
  %i.hg = phi <2 x double> [ zeroinitializer, %.preheader280 ], [ %i.hf, %._crit_edge302.loopexit ], [ %.lcssa568, %.split ] ; 2 uses
  %i.hh = load ptr, ptr %i.ee, align 8, !tbaa !200 ; 2 uses
  %i.hi = load ptr, ptr %i.ef, align 8, !tbaa !200 ; 2 uses
  %.not278336 = icmp eq ptr %i.hh, %i.hi
  br i1 %.not278336, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %._crit_edge302
  %i.hj = load ptr, ptr %i.eg, align 8, !tbaa !201
  %i.hk = load ptr, ptr %4, align 16              ; 2 uses
  br label %bb.z

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i248 = icmp eq ptr %.sroa.0267.0, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorIiSaIiEED2Ev.exit249, label %bb.ag

.split:                                           ; preds = %bb.x, %.prol.loopexit
  %.lcssa568 = phi <2 x double> [ %.lcssa568.unr, %.prol.loopexit ], [ %i.ip, %bb.x ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.iq, %bb.x ] ; 2 uses
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1 ; 2 uses
  %exitcond439.not = icmp eq i64 %indvars.iv.next431, %i.ei
  br i1 %exitcond439.not, label %._crit_edge302, label %.preheader, !llvm.loop !199

.preheader.new:                                   ; preds = %.prol.loopexit, %bb.x
  %indvars.iv432 = phi i64 [ %indvars.iv.next433.1, %bb.x ], [ %indvars.iv432.unr, %.prol.loopexit ] ; 5 uses
  %.1188294 = phi i64 [ %i.iq, %bb.x ], [ %.1188294.unr, %.prol.loopexit ]
  %i.hm = phi <2 x double> [ %i.ip, %bb.x ], [ %.unr, %.prol.loopexit ]
  %.not = icmp eq i64 %indvars.iv430, %indvars.iv432
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.new
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv432
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !197
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul nsw i64 %i.hp, %i.go
  br label %bb.v

bb.v:                                             ; preds = %.preheader.new, %bb.u
  %.0179 = phi i64 [ %i.hq, %bb.u ], [ %i.gr, %.preheader.new ] ; 2 uses
  %i.hr = sitofp i64 %.0179 to float
  %i.hs = add nuw nsw i64 %indvars.iv432, %i.gs
  %.idx = shl nuw nsw i64 %i.hs, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx
  %i.hu = load <2 x float>, ptr %i.ht, align 4, !tbaa !171
  %i.hv = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.hu, %i.hw
  %i.hy = fpext <2 x float> %i.hx to <2 x double>
  %i.hz = fdiv <2 x double> %i.hy, <double 6.000000e+00, double 1.200000e+01>
  %i.ia = fadd <2 x double> %i.hm, %i.hz
  %i.ib = add nsw i64 %.0179, %.1188294
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 3 uses
  %.not.1 = icmp eq i64 %indvars.iv430, %indvars.iv.next433
  br i1 %.not.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0267.0, i64 %indvars.iv.next433
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !197
  %i.ie = sext i32 %i.id to i64
  %i.if = mul nsw i64 %i.ie, %i.go
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0179.1 = phi i64 [ %i.if, %bb.w ], [ %i.gr, %bb.v ] ; 2 uses
  %i.ig = sitofp i64 %.0179.1 to float
  %i.ih = add nuw nsw i64 %indvars.iv.next433, %i.gs
  %.idx.1 = shl nuw nsw i64 %i.ih, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.1
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !171
  %i.ik = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x float> %i.ij, %i.il
  %i.in = fpext <2 x float> %i.im to <2 x double>
  %i.io = fdiv <2 x double> %i.in, <double 6.000000e+00, double 1.200000e+01>
  %i.ip = fadd <2 x double> %i.ia, %i.io          ; 2 uses
  %i.iq = add nsw i64 %.0179.1, %i.ib             ; 2 uses
  %indvars.iv.next433.1 = add nuw nsw i64 %indvars.iv432, 2 ; 2 uses
  %exitcond436.not.1 = icmp eq i64 %indvars.iv.next433.1, %i.ei
  br i1 %exitcond436.not.1, label %.split, label %.preheader.new, !llvm.loop !198

._crit_edge343:                                   ; preds = %._crit_edge327, %._crit_edge302
  %.0182.lcssa = phi i64 [ 0, %._crit_edge302 ], [ %.1183.lcssa, %._crit_edge327 ] ; 2 uses
  %i.ir = phi <2 x double> [ %i.hg, %._crit_edge302 ], [ %i.kk, %._crit_edge327 ] ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %.sroa.0267.0, null
  br i1 %.not.i.i.i242, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge343
  %i.is = ptrtoint ptr %.sroa.12.0 to i64
  %i.it = ptrtoint ptr %.sroa.0267.0 to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0, i64 noundef %i.iu) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.z:                                             ; preds = %.lr.ph342, %._crit_edge327
  %.0182340 = phi i64 [ 0, %.lr.ph342 ], [ %.1183.lcssa, %._crit_edge327 ] ; 3 uses
  %.sroa.0263.0337 = phi ptr [ %i.hh, %.lr.ph342 ], [ %i.kl, %._crit_edge327 ] ; 3 uses
  %i.iv = phi <2 x double> [ %i.hg, %.lr.ph342 ], [ %i.kk, %._crit_edge327 ] ; 4 uses
  %i.iw = load i32, ptr %.sroa.0263.0337, align 8, !tbaa !202
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2408 x i8], ptr %i.hj, i64 %i.ix ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !204 ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.z
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 2360
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0263.0337, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !209 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !210
  %invariant.gep331 = getelementptr i8, ptr %i.jg, i64 %.0.in.in.v.i ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 2384
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !211 ; 4 uses
  %i.jj = load ptr, ptr %i.jc, align 8, !tbaa !211 ; 2 uses
  %i.jk = sitofp i32 %i.je to float               ; 2 uses
  %i.jl = sext i32 %i.je to i64                   ; 2 uses
  %wide.trip.count458 = zext nneg i32 %i.ja to i64 ; 2 uses
  br i1 %3, label %.lr.ph326.split.us.preheader, label %.lr.ph326.split.preheader

.lr.ph326.split.preheader:                        ; preds = %.lr.ph326
  %i.jm = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph326.split

.lr.ph326.split.us.preheader:                     ; preds = %.lr.ph326
  %i.jo = extractelement <2 x double> %i.iv, i64 0
  br label %.lr.ph326.split.us

.lr.ph326.split.us:                               ; preds = %.lr.ph326.split.us.preheader, %._crit_edge314.split.us.us
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %._crit_edge314.split.us.us ], [ 0, %.lr.ph326.split.us.preheader ] ; 4 uses
  %.1183322.us = phi i64 [ %.2184.lcssa.us, %._crit_edge314.split.us.us ], [ %.0182340, %.lr.ph326.split.us.preheader ] ; 2 uses
  %.4202320.us = phi double [ %.5203.lcssa.us, %._crit_edge314.split.us.us ], [ %i.jo, %.lr.ph326.split.us.preheader ] ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.jj, i64 %indvars.iv455 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !197 ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jp, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !197 ; 2 uses
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jt
  %.not279308.us = icmp eq i32 %i.jq, %i.js
  br i1 %.not279308.us, label %._crit_edge314.split.us.us, label %.lr.ph.us

._crit_edge314.split.us.us:                       ; preds = %bb.ac, %.lr.ph326.split.us
  %.5203.lcssa.us = phi double [ %.4202320.us, %.lr.ph326.split.us ], [ %.7205.us.us, %bb.ac ] ; 2 uses
  %.2184.lcssa.us = phi i64 [ %.1183322.us, %.lr.ph326.split.us ], [ %.3185.us.us, %bb.ac ] ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %._crit_edge327.loopexit, label %.lr.ph326.split.us, !llvm.loop !212

.lr.ph.us:                                        ; preds = %.lr.ph326.split.us
  %i.jv = sext i32 %i.jq to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jv
  %gep332.us = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep331, i64 %indvars.iv455
  %.0.in.i.us = load i16, ptr %gep332.us, align 2, !tbaa !213
  %.0.i.us = zext i16 %.0.in.i.us to i32
  %i.jx = mul nuw nsw i32 %i.b, %.0.i.us
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.us
  %.2184312.us.us = phi i64 [ %.1183322.us, %.lr.ph.us ], [ %.3185.us.us, %bb.ac ] ; 2 uses
  %.5203310.us.us = phi double [ %.4202320.us, %.lr.ph.us ], [ %.7205.us.us, %bb.ac ] ; 2 uses
  %.sroa.0.0309.us.us = phi ptr [ %i.jw, %.lr.ph.us ], [ %i.ki, %bb.ac ] ; 2 uses
  %i.jy = load i32, ptr %.sroa.0.0309.us.us, align 4, !tbaa !197
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = icmp slt i64 %indvars.iv455, %i.jz
  br i1 %i.ka, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %gep.us.us = getelementptr [36 x i8], ptr %invariant.gep331, i64 %i.jz
  %.0.in.i246.us.us = load i16, ptr %gep.us.us, align 2, !tbaa !213
  %.0.i247.us.us = zext i16 %.0.in.i246.us.us to i32
  %i.kb = add nuw nsw i32 %i.jx, %.0.i247.us.us
  %i.kc = mul nuw nsw i32 %i.kb, 3
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !171
  %i.kg = fmul float %i.kf, %i.jk
  %.pn229.in.us.us = fpext float %i.kg to double
  %.pn229.us.us = fdiv double %.pn229.in.us.us, 6.000000e+00
  %.6204.us.us = fsub double %.5203310.us.us, %.pn229.us.us
  %i.kh = add nsw i64 %.2184312.us.us, %i.jl
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.7205.us.us = phi double [ %.6204.us.us, %bb.ab ], [ %.5203310.us.us, %bb.aa ] ; 2 uses
  %.3185.us.us = phi i64 [ %i.kh, %bb.ab ], [ %.2184312.us.us, %bb.aa ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.0309.us.us, i64 4 ; 2 uses
  %.not279.us.us = icmp eq ptr %i.ki, %i.ju
  br i1 %.not279.us.us, label %._crit_edge314.split.us.us, label %bb.aa

._crit_edge327.loopexit:                          ; preds = %._crit_edge314.split.us.us
  %i.kj = insertelement <2 x double> %i.iv, double %.5203.lcssa.us, i64 0
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge314.split, %._crit_edge327.loopexit, %bb.z
  %.1183.lcssa = phi i64 [ %.0182340, %bb.z ], [ %.2184.lcssa.us, %._crit_edge327.loopexit ], [ %.2184.lcssa, %._crit_edge314.split ] ; 2 uses
  %i.kk = phi <2 x double> [ %i.iv, %bb.z ], [ %i.kj, %._crit_edge327.loopexit ], [ %i.kw, %._crit_edge314.split ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0263.0337, i64 56 ; 2 uses
  %.not278 = icmp eq ptr %i.kl, %i.hi
  br i1 %.not278, label %._crit_edge343, label %bb.z

.lr.ph326.split:                                  ; preds = %.lr.ph326.split.preheader, %._crit_edge314.split
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %._crit_edge314.split ], [ 0, %.lr.ph326.split.preheader ] ; 4 uses
  %.1183322 = phi i64 [ %.2184.lcssa, %._crit_edge314.split ], [ %.0182340, %.lr.ph326.split.preheader ] ; 2 uses
  %i.km = phi <2 x double> [ %i.kw, %._crit_edge314.split ], [ %i.iv, %.lr.ph326.split.preheader ] ; 2 uses
  %i.kn = getelementptr [4 x i8], ptr %i.jj, i64 %indvars.iv450 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !197 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kn, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !197 ; 2 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.kr
  %.not279308 = icmp eq i32 %i.ko, %i.kq
  br i1 %.not279308, label %._crit_edge314.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph326.split
  %i.kt = sext i32 %i.ko to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.kt
  %gep332 = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep331, i64 %indvars.iv450
  %.0.in.i = load i16, ptr %gep332, align 2, !tbaa !213
  %.0.i = zext i16 %.0.in.i to i32
  %i.kv = mul nuw nsw i32 %i.b, %.0.i
  br label %bb.ad

._crit_edge314.split:                             ; preds = %bb.af, %.lr.ph326.split
  %.2184.lcssa = phi i64 [ %.1183322, %.lr.ph326.split ], [ %.3185, %bb.af ] ; 2 uses
  %i.kw = phi <2 x double> [ %i.km, %.lr.ph326.split ], [ %i.ll, %bb.af ] ; 2 uses
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next451, %wide.trip.count458
  br i1 %exitcond454.not, label %._crit_edge327, label %.lr.ph326.split, !llvm.loop !212

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %.2184312 = phi i64 [ %.1183322, %.lr.ph ], [ %.3185, %bb.af ] ; 2 uses
  %.sroa.0.0309 = phi ptr [ %i.ku, %.lr.ph ], [ %i.lm, %bb.af ] ; 2 uses
  %i.kx = phi <2 x double> [ %i.km, %.lr.ph ], [ %i.ll, %bb.af ] ; 2 uses
  %i.ky = load i32, ptr %.sroa.0.0309, align 4, !tbaa !197
  %i.kz = sext i32 %i.ky to i64                   ; 2 uses
  %i.la = icmp slt i64 %indvars.iv450, %i.kz
  br i1 %i.la, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %gep = getelementptr [36 x i8], ptr %invariant.gep331, i64 %i.kz
  %.0.in.i246 = load i16, ptr %gep, align 2, !tbaa !213
  %.0.i247 = zext i16 %.0.in.i246 to i32
  %i.lb = add nuw nsw i32 %i.kv, %.0.i247
  %i.lc = shl nuw nsw i32 %i.lb, 1
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ld
  %i.lf = load <2 x float>, ptr %i.le, align 4, !tbaa !171
  %i.lg = fmul <2 x float> %i.lf, %i.jn
  %i.lh = fpext <2 x float> %i.lg to <2 x double>
  %i.li = fdiv <2 x double> %i.lh, <double 6.000000e+00, double 1.200000e+01>
  %i.lj = fsub <2 x double> %i.kx, %i.li
  %i.lk = add nsw i64 %.2184312, %i.jl
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3185 = phi i64 [ %i.lk, %bb.ae ], [ %.2184312, %bb.ad ] ; 2 uses
  %i.ll = phi <2 x double> [ %i.lj, %bb.ae ], [ %i.kx, %bb.ad ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0309, i64 4 ; 2 uses
  %.not279 = icmp eq ptr %i.lm, %i.ks
  br i1 %.not279, label %._crit_edge314.split, label %bb.ad

bb.ag:                                            ; preds = %bb.t
  %i.ln = ptrtoint ptr %.sroa.12.0 to i64
  %i.lo = ptrtoint ptr %.sroa.0267.0 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0, i64 noundef %i.lp) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

bb.ah:                                            ; preds = %bb.l
  %i.lq = load ptr, ptr %i.ef, align 8, !tbaa !200 ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -56
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !202
  %i.lt = sext i32 %i.ls to i64
  %i.lu = load ptr, ptr %i.eg, align 8, !tbaa !201 ; 2 uses
  %i.lv = getelementptr inbounds nuw [2408 x i8], ptr %i.lu, i64 %i.lt ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i32, ptr %i.dx, align 8, !tbaa !192
  %i.ly = load i32, ptr %i.lw, align 8, !tbaa !204
  %.fr409 = freeze i32 %i.ly                      ; 7 uses
  %i.lz = sub nsw i32 %i.lx, %.fr409
  store i32 %i.lz, ptr %0, align 4, !tbaa !193
  %i.ma = sitofp i32 %.fr409 to float
  store float %i.ma, ptr %i.dy, align 4, !tbaa !196
  %i.mb = load ptr, ptr %i.ee, align 8, !tbaa !215 ; 3 uses
  %.not407 = icmp eq ptr %i.lq, %i.mb
  br i1 %.not407, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.ah
  %i.mc = ptrtoint ptr %i.lq to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = sdiv exact i64 %i.me, 56                ; 2 uses
  %i.mg = add nsw i64 %i.mf, -1
  %i.mh = icmp sgt i32 %.fr409, 0
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 2 uses
  %i.mj = load ptr, ptr %4, align 16              ; 10 uses
  %i.mk = add i32 %.fr409, -1
  %i.ml = zext i32 %i.mk to i64
  %i.mm = add nuw nsw i64 %i.ml, 1
  %wide.trip.count463 = zext i32 %.fr409 to i64   ; 4 uses
  %xtraiter588 = and i64 %wide.trip.count463, 3   ; 3 uses
  %i.mn = icmp ult i32 %.fr409, 4
  %unroll_iter = and i64 %wide.trip.count463, 2147483644
  %lcmp.mod590.not = icmp eq i64 %xtraiter588, 0
  %lcmp.mod592 = icmp ne i64 %xtraiter588, 0
  %xtraiter594 = and i64 %wide.trip.count463, 3   ; 3 uses
  %i.mo = icmp ult i32 %.fr409, 4
  %unroll_iter599 = and i64 %wide.trip.count463, 2147483644
  %lcmp.mod596.not = icmp eq i64 %xtraiter594, 0
  %lcmp.mod598 = icmp ne i64 %xtraiter594, 0
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph396, %._crit_edge367
  %.0176394 = phi i64 [ 0, %.lr.ph396 ], [ %i.rk, %._crit_edge367 ] ; 4 uses
  %.2189393 = phi i64 [ 0, %.lr.ph396 ], [ %.3190.lcssa, %._crit_edge367 ] ; 4 uses
  %.8206391 = phi double [ 0.000000e+00, %.lr.ph396 ], [ %i.rj, %._crit_edge367 ]
  %i.mp = phi <2 x double> [ zeroinitializer, %.lr.ph396 ], [ %i.ri, %._crit_edge367 ] ; 4 uses
  %i.mq = getelementptr inbounds nuw [56 x i8], ptr %i.mb, i64 %.0176394 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !202
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [2408 x i8], ptr %i.lu, i64 %i.ms ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !204 ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %bb.ai
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !209 ; 2 uses
  %i.mz = icmp ne i64 %.0176394, %i.mg            ; 3 uses
  %i.na = icmp ne i64 %.0176394, 0
  %i.nb = icmp ne i32 %i.my, 1
  %or.cond.not412 = select i1 %i.na, i1 true, i1 %i.nb ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 2 uses
  br i1 %i.mh, label %.lr.ph366.split.us, label %.lr.ph366.split

.lr.ph366.split.us:                               ; preds = %.lr.ph366
  %wide.trip.count478 = zext nneg i32 %i.mv to i64 ; 2 uses
  %brmerge = select i1 %i.mz, i1 true, i1 %or.cond.not412 ; 2 uses
  %not. = xor i1 %i.mz, true
  %i.nd = sext i1 %not. to i32
  %.mux = add nsw i32 %i.my, %i.nd                ; 2 uses
  %i.ne = sitofp i32 %.mux to float               ; 6 uses
  %i.nf = sext i32 %.mux to i64
  %i.ng = mul nsw i64 %i.mm, %i.nf                ; 2 uses
  br i1 %3, label %.lr.ph366.split.us.split.us, label %.lr.ph366.split.us.split.preheader

.lr.ph366.split.us.split.preheader:               ; preds = %.lr.ph366.split.us
  %i.nh = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph366.split.us.split

.lr.ph366.split.us.split.us:                      ; preds = %.lr.ph366.split.us, %._crit_edge353.split.us.us.us
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %._crit_edge353.split.us.us.us ], [ 0, %.lr.ph366.split.us ] ; 2 uses
  %.3190363.us.us = phi i64 [ %i.oy, %._crit_edge353.split.us.us.us ], [ %.2189393, %.lr.ph366.split.us ]
  %.9207361.us.us = phi double [ %.11209.us.us.us.lcssa, %._crit_edge353.split.us.us.us ], [ %.8206391, %.lr.ph366.split.us ] ; 2 uses
  br i1 %brmerge, label %.lr.ph352.us.us, label %.split385.us

.lr.ph352.us.us:                                  ; preds = %.lr.ph366.split.us.split.us
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !210
  %i.nk = getelementptr inbounds nuw [36 x i8], ptr %i.nj, i64 %indvars.iv475
  %.0.in.in.i251.us.us = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.0.in.in.v.i
  %.0.in.i252.us.us = load i16, ptr %.0.in.in.i251.us.us, align 2, !tbaa !213
  %.0.i253.us.us = zext i16 %.0.in.i252.us.us to i32 ; 5 uses
  %i.nl = load ptr, ptr %i.mi, align 8, !tbaa !210
  %invariant.gep357.us.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.0.in.in.v.i ; 5 uses
  br i1 %i.mo, label %.epil.preheader593, label %.lr.ph352.us.us.new

.lr.ph352.us.us.new:                              ; preds = %.lr.ph352.us.us, %.lr.ph352.us.us.new
  %indvars.iv470 = phi i64 [ %indvars.iv.next471.3, %.lr.ph352.us.us.new ], [ 0, %.lr.ph352.us.us ] ; 5 uses
  %.10208347.us.us.us = phi double [ %.11209.us.us.us.3, %.lr.ph352.us.us.new ], [ %.9207361.us.us, %.lr.ph352.us.us ]
  %niter600 = phi i64 [ %niter600.next.3, %.lr.ph352.us.us.new ], [ 0, %.lr.ph352.us.us ]
  %gep358.us.us.us = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %.0.in.i256.us.us.us = load i16, ptr %gep358.us.us.us, align 2, !tbaa !213
  %.0.i257.us.us.us = zext i16 %.0.in.i256.us.us.us to i32
  %i.nm = mul nsw i32 %i.b, %.0.i257.us.us.us
  %i.nn = add nsw i32 %i.nm, %.0.i253.us.us
  %i.no = mul nsw i32 %i.nn, 3
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !171
  %i.ns = fmul float %i.nr, %i.ne
  %.pn232.in.us.us.us = fpext float %i.ns to double
  %.pn232.us.us.us = fdiv double %.pn232.in.us.us.us, 6.000000e+00
  %.11209.us.us.us = fadd double %.10208347.us.us.us, %.pn232.us.us.us
  %i.nt = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.1 = getelementptr inbounds nuw i8, ptr %i.nt, i64 36
  %.0.in.i256.us.us.us.1 = load i16, ptr %gep358.us.us.us.1, align 2, !tbaa !213
  %.0.i257.us.us.us.1 = zext i16 %.0.in.i256.us.us.us.1 to i32
  %i.nu = mul nsw i32 %i.b, %.0.i257.us.us.us.1
  %i.nv = add nsw i32 %i.nu, %.0.i253.us.us
  %i.nw = mul nsw i32 %i.nv, 3
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.nx
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !171
  %i.oa = fmul float %i.nz, %i.ne
  %.pn232.in.us.us.us.1 = fpext float %i.oa to double
  %.pn232.us.us.us.1 = fdiv double %.pn232.in.us.us.us.1, 6.000000e+00
  %.11209.us.us.us.1 = fadd double %.11209.us.us.us, %.pn232.us.us.us.1
  %i.ob = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.2 = getelementptr inbounds nuw i8, ptr %i.ob, i64 72
  %.0.in.i256.us.us.us.2 = load i16, ptr %gep358.us.us.us.2, align 2, !tbaa !213
  %.0.i257.us.us.us.2 = zext i16 %.0.in.i256.us.us.us.2 to i32
  %i.oc = mul nsw i32 %i.b, %.0.i257.us.us.us.2
  %i.od = add nsw i32 %i.oc, %.0.i253.us.us
  %i.oe = mul nsw i32 %i.od, 3
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !171
  %i.oi = fmul float %i.oh, %i.ne
  %.pn232.in.us.us.us.2 = fpext float %i.oi to double
  %.pn232.us.us.us.2 = fdiv double %.pn232.in.us.us.us.2, 6.000000e+00
  %.11209.us.us.us.2 = fadd double %.11209.us.us.us.1, %.pn232.us.us.us.2
  %i.oj = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.3 = getelementptr inbounds nuw i8, ptr %i.oj, i64 108
  %.0.in.i256.us.us.us.3 = load i16, ptr %gep358.us.us.us.3, align 2, !tbaa !213
  %.0.i257.us.us.us.3 = zext i16 %.0.in.i256.us.us.us.3 to i32
  %i.ok = mul nsw i32 %i.b, %.0.i257.us.us.us.3
  %i.ol = add nsw i32 %i.ok, %.0.i253.us.us
  %i.om = mul nsw i32 %i.ol, 3
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !171
  %i.oq = fmul float %i.op, %i.ne
  %.pn232.in.us.us.us.3 = fpext float %i.oq to double
  %.pn232.us.us.us.3 = fdiv double %.pn232.in.us.us.us.3, 6.000000e+00
  %.11209.us.us.us.3 = fadd double %.11209.us.us.us.2, %.pn232.us.us.us.3 ; 3 uses
  %indvars.iv.next471.3 = add nuw nsw i64 %indvars.iv470, 4 ; 2 uses
  %niter600.next.3 = add i64 %niter600, 4         ; 2 uses
  %niter600.ncmp.3 = icmp eq i64 %niter600.next.3, %unroll_iter599
  br i1 %niter600.ncmp.3, label %._crit_edge353.split.us.us.us.unr-lcssa, label %.lr.ph352.us.us.new, !llvm.loop !216

._crit_edge353.split.us.us.us.unr-lcssa:          ; preds = %.lr.ph352.us.us.new
  br i1 %lcmp.mod596.not, label %._crit_edge353.split.us.us.us, label %.epil.preheader593

.epil.preheader593:                               ; preds = %._crit_edge353.split.us.us.us.unr-lcssa, %.lr.ph352.us.us
  %indvars.iv470.epil.init = phi i64 [ 0, %.lr.ph352.us.us ], [ %indvars.iv.next471.3, %._crit_edge353.split.us.us.us.unr-lcssa ]
  %.10208347.us.us.us.epil.init = phi double [ %.9207361.us.us, %.lr.ph352.us.us ], [ %.11209.us.us.us.3, %._crit_edge353.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod598)
  br label %bb.aj
end_hunk_0
