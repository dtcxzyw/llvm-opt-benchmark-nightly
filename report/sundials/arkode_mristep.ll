Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mristep?download=true
inline.NumInlined: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mriStep_TakeStepMRISR:bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %wide.trip.count425 = zext nneg i32 %i.ea to i64
  %scevgep = getelementptr i8, ptr %0, i64 744    ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %.thread393
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.thread393 ] ; 5 uses
  %indvars.iv422 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next423, %.thread393 ] ; 31 uses
  %i.fk = load i32, ptr %i.ec, align 8, !tbaa !77 ; 2 uses
  %i.fl = add nsw i32 %i.fk, -1
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp eq i64 %indvars.iv422, %i.fm       ; 2 uses
  %i.fo = zext i32 %i.fk to i64
  %i.fp = icmp eq i64 %indvars.iv422, %i.fo       ; 4 uses
  %i.fq = icmp samesign ugt i64 %indvars.iv422, 1 ; 2 uses
  br i1 %i.fq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fr = load ptr, ptr %i.ed, align 8, !tbaa !163
  %i.fs = load ptr, ptr %i.ee, align 8, !tbaa !120
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.fr, ptr noundef %i.fs) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.fp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ft = load ptr, ptr %i.ef, align 8, !tbaa !70
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !132
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv422
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !47
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.fy = phi double [ %i.fx, %bb.ai ], [ 1.000000e+00, %bb.ah ]
  %i.fz = load double, ptr %i.eg, align 8, !tbaa !131 ; 2 uses
  %i.ga = load double, ptr %i.eh, align 8, !tbaa !133
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.ga, double %i.fz) ; 2 uses
  store double %i.gb, ptr %i.ei, align 8, !tbaa !119
  %i.gc = trunc nuw nsw i64 %indvars.iv422 to i32 ; 3 uses
  store i32 %i.gc, ptr %i.f, align 4, !tbaa !113
  store i32 %i.gc, ptr %i.g, align 8, !tbaa !114
  %i.gd = tail call i32 @mriStep_ComputeInnerForcing(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.gc, double noundef %i.fz, double noundef %i.gb) ; 2 uses
  %.not242 = icmp eq i32 %i.gd, 0
  br i1 %.not242, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %.pre428 = load double, ptr %i.eg, align 8, !tbaa !131 ; 3 uses
  %.pre430 = load ptr, ptr %i.ee, align 8, !tbaa !120 ; 3 uses
  br i1 %i.fq, label %bb.al, label %mriStepInnerStepper_Reset.exit281.thread369

bb.al:                                            ; preds = %bb.ak
  %i.ge = load ptr, ptr %i.ej, align 8, !tbaa !52 ; 4 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %mriStepInnerStepper_Reset.exit281.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !55 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %mriStepInnerStepper_Reset.exit281.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !121 ; 2 uses
  %.not.i279 = icmp eq ptr %i.gk, null
  br i1 %.not.i279, label %mriStepInnerStepper_Reset.exit281.thread369, label %mriStepInnerStepper_Reset.exit281

mriStepInnerStepper_Reset.exit281:                ; preds = %bb.an
  %i.gl = tail call i32 %i.gk(ptr noundef nonnull %i.ge, double noundef %.pre428, ptr noundef %.pre430) #14, !inline_history !122 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !106
  %.not243 = icmp eq i32 %i.gl, 0
  br i1 %.not243, label %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge, label %mriStepInnerStepper_Reset.exit281.thread

mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge: ; preds = %mriStepInnerStepper_Reset.exit281
  %.pre427 = load double, ptr %i.eg, align 8, !tbaa !131
  %.pre429 = load ptr, ptr %i.ee, align 8, !tbaa !120
  br label %mriStepInnerStepper_Reset.exit281.thread369

mriStepInnerStepper_Reset.exit281.thread:         ; preds = %bb.al, %bb.am, %mriStepInnerStepper_Reset.exit281
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2568, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

mriStepInnerStepper_Reset.exit281.thread369:      ; preds = %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge, %bb.an, %bb.ak
  %i.gn = phi ptr [ %.pre429, %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge ], [ %.pre430, %bb.an ], [ %.pre430, %bb.ak ]
  %i.go = phi double [ %.pre427, %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge ], [ %.pre428, %bb.an ], [ %.pre428, %bb.ak ]
  %i.gp = load double, ptr %i.ei, align 8, !tbaa !119
  %i.gq = xor i1 %i.fp, true
  %narrow = select i1 %.not245, i1 %i.gq, i1 false
  %i.gr = zext i1 %narrow to i32
  %i.gs = tail call i32 @mriStep_StageERKFast(ptr noundef nonnull %0, ptr noundef nonnull %i.b, double noundef %i.go, double noundef %i.gp, ptr noundef %i.gn, ptr poison, i32 noundef %i.gr) ; 2 uses
  %.not246 = icmp eq i32 %i.gs, 0
  br i1 %.not246, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %mriStepInnerStepper_Reset.exit281.thread369
  store i32 4, ptr %2, align 4, !tbaa !35
  br label %.loopexit

bb.ap:                                            ; preds = %mriStepInnerStepper_Reset.exit281.thread369
  %i.gt = load i32, ptr %i.dh, align 4, !tbaa !63
  %.not247 = icmp eq i32 %i.gt, 0
  br i1 %.not247, label %bb.bd, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gu = load ptr, ptr %i.ef, align 8, !tbaa !70
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !155
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !157
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv422
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !158 ; 7 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv422
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !47
  %i.hc = tail call double @llvm.fabs.f64(double %i.hb)
  %i.hd = fcmp ogt double %i.hc, f0x3D19000000000000
  br i1 %i.hd, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.fp, label %bb.as, label %._crit_edge431

._crit_edge431:                                   ; preds = %bb.ar
  %.pre432 = load i32, ptr %i.g, align 8, !tbaa !114
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.he = trunc nuw i64 %indvars.iv422 to i32
  %i.hf = add i32 %i.he, -1                       ; 2 uses
  store i32 %i.hf, ptr %i.g, align 8, !tbaa !114
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge431, %bb.as
  %i.hg = phi i32 [ %.pre432, %._crit_edge431 ], [ %i.hf, %bb.as ]
  %i.hh = load ptr, ptr %i.en, align 8, !tbaa !147
  %i.hi = tail call i32 @mriStep_Predict(ptr noundef nonnull %0, i32 noundef %i.hg, ptr noundef %i.hh) ; 2 uses
  %.not249 = icmp eq i32 %i.hi, 0
  br i1 %.not249, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.hj = load ptr, ptr %i.eo, align 8, !tbaa !164 ; 2 uses
  %.not250 = icmp eq ptr %i.hj, null
  br i1 %.not250, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hk = load double, ptr %i.ei, align 8, !tbaa !119
  %i.hl = load ptr, ptr %i.en, align 8, !tbaa !147
  %i.hm = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.hn = tail call i32 %i.hj(double noundef %i.hk, ptr noundef %i.hl, ptr noundef %i.hm) #14 ; 2 uses
  %i.ho = icmp slt i32 %i.hn, 0
  br i1 %i.ho, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not251 = icmp eq i32 %i.hn, 0
  br i1 %.not251, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.hp = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 8 uses
  %i.hq = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.hr = load ptr, ptr %i.el, align 8, !tbaa !45 ; 9 uses
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !107
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %i.hp, align 8, !tbaa !47
  %i.hs = load ptr, ptr %i.en, align 8, !tbaa !147
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !107
  %i.hu = load ptr, ptr %i.ef, align 8, !tbaa !70
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !155
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !157
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv422
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !158 ; 6 uses
  %i.ia = load ptr, ptr %i.em, align 8, !tbaa !95 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv422, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ax
  %i.ib = getelementptr nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.ic = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.id = add nuw i64 %i.ic, 24                   ; 2 uses
  %i.ie = getelementptr i8, ptr %i.hp, i64 %i.id  ; 2 uses
  %bound0 = icmp ult ptr %i.ib, %scevgep
  %bound1 = icmp ult ptr %i.eh, %i.ie
  %found.conflict = and i1 %bound0, %bound1
  %3 = add nuw i64 %i.ic, 8                       ; 2 uses
  %i.if = getelementptr i8, ptr %i.hz, i64 %3
  %bound0.a = icmp ult ptr %i.ib, %i.if
  %bound1.a = icmp ult ptr %i.hz, %i.ie
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %4 = getelementptr nuw i8, ptr %i.hr, i64 16
  %5 = getelementptr i8, ptr %i.hr, i64 %i.id
  %6 = getelementptr i8, ptr %i.ia, i64 %3
  %bound0502 = icmp ult ptr %4, %6
  %bound1503 = icmp ult ptr %i.ia, %5
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx, %found.conflict504
  br i1 %conflict.rdx505, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv422, 9223372036854775804 ; 3 uses
  %i.ig = load double, ptr %i.eh, align 8, !tbaa !133, !alias.scope !274
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ig, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %wide.load = load <2 x double>, ptr %i.ih, align 8, !tbaa !47, !alias.scope !275
  %wide.load506 = load <2 x double>, ptr %i.ii, align 8, !tbaa !47, !alias.scope !275
  %i.ij = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ik = fmul <2 x double> %broadcast.splat, %wide.load506
  %i.il = or disjoint i64 %index, 2               ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <2 x double> %i.ij, ptr %i.im, align 8, !tbaa !47, !alias.scope !276, !noalias !277
  store <2 x double> %i.ik, ptr %i.in, align 8, !tbaa !47, !alias.scope !276, !noalias !277
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load507 = load <2 x ptr>, ptr %i.io, align 8, !tbaa !107, !alias.scope !278
  %wide.load508 = load <2 x ptr>, ptr %i.ip, align 8, !tbaa !107, !alias.scope !278
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.il ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <2 x ptr> %wide.load507, ptr %i.iq, align 8, !tbaa !107, !alias.scope !279, !noalias !278
  store <2 x ptr> %wide.load508, ptr %i.ir, align 8, !tbaa !107, !alias.scope !279, !noalias !278
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv422, %n.vec
  br i1 %cmp.n, label %.loopexit555, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ax, %middle.block
  %indvars.iv409.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.ax ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter560 = and i64 %indvars.iv422, 1
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.it = load double, ptr %i.eh, align 8, !tbaa !133
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv409.ph
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !47
  %i.iw = fmul double %i.it, %i.iv
  %i.ix = or disjoint i64 %indvars.iv409.ph, 2    ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ix
  store double %i.iw, ptr %i.iy, align 8, !tbaa !47
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv409.ph
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !107
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ix
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !107
  %indvars.iv.next410.prol = or disjoint i64 %indvars.iv409.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv409.unr = phi i64 [ %indvars.iv409.ph, %scalar.ph.preheader ], [ %indvars.iv.next410.prol, %scalar.ph.prol ]
  %i.jc = icmp eq i64 %indvar, %indvars.iv409.ph
  br i1 %i.jc, label %.loopexit555, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.1, %scalar.ph ], [ %indvars.iv409.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.jd = load double, ptr %i.eh, align 8, !tbaa !133
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv409
  %i.jf = load double, ptr %i.je, align 8, !tbaa !47
  %i.jg = fmul double %i.jd, %i.jf
  %i.jh = add nuw nsw i64 %indvars.iv409, 2       ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.jh
  store double %i.jg, ptr %i.ji, align 8, !tbaa !47
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv409
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !107
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.jh
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !107
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.jm = load double, ptr %i.eh, align 8, !tbaa !133
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.next410
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !47
  %i.jp = fmul double %i.jm, %i.jo
  %i.jq = add nuw nsw i64 %indvars.iv409, 3       ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.jq
  store double %i.jp, ptr %i.jr, align 8, !tbaa !47
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next410
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !107
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.jq
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !107
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %exitcond413.not.1 = icmp eq i64 %indvars.iv.next410.1, %indvars.iv422
  br i1 %exitcond413.not.1, label %.loopexit555, label %scalar.ph, !llvm.loop !265

.loopexit555:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.jv = load ptr, ptr %i.eq, align 8, !tbaa !110
  %i.jw = trunc i64 %indvars.iv422 to i32
  %i.jx = add i32 %i.jw, 2
  %i.jy = tail call i32 @N_VLinearCombination(i32 noundef %i.jx, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hr, ptr noundef %i.jv) #14
  %.not252 = icmp eq i32 %i.jy, 0
  br i1 %.not252, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %.loopexit555
  %i.jz = load double, ptr %i.eh, align 8, !tbaa !133
  %i.ka = load ptr, ptr %i.ef, align 8, !tbaa !70
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !155
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !157
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv422
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !158
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv422
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !47
  %i.ki = fmul double %i.jz, %i.kh                ; 3 uses
  store double %i.ki, ptr %i.er, align 8, !tbaa !64
  %i.kj = load i32, ptr %i.es, align 4, !tbaa !165
  %.not253 = icmp eq i32 %i.kj, 0
  br i1 %.not253, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store double %i.ki, ptr %i.et, align 8, !tbaa !150
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.kk = load double, ptr %i.et, align 8, !tbaa !150
  %i.kl = fdiv double %i.ki, %i.kk
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.km = phi double [ %i.kl, %bb.ba ], [ 1.000000e+00, %bb.az ]
  store double %i.km, ptr %i.eu, align 8, !tbaa !65
  %i.kn = load i32, ptr %2, align 4, !tbaa !35
  %i.ko = tail call i32 @mriStep_Nls(ptr noundef nonnull %0, i32 noundef %i.kn) #14 ; 2 uses
  store i32 %i.ko, ptr %2, align 4, !tbaa !35
  %.not255 = icmp eq i32 %i.ko, 0
  br i1 %.not255, label %bb.bd, label %.loopexit

bb.bc:                                            ; preds = %bb.aq
  %i.kp = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 8 uses
  store double 1.000000e+00, ptr %i.kp, align 8, !tbaa !47
  %i.kq = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.kr = load ptr, ptr %i.el, align 8, !tbaa !45 ; 8 uses
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !107
  %i.ks = load ptr, ptr %i.em, align 8, !tbaa !95 ; 6 uses
  %min.iters.check528 = icmp samesign ult i64 %indvars.iv422, 6
  br i1 %min.iters.check528, label %scalar.ph527.preheader, label %vector.memcheck529

vector.memcheck529:                               ; preds = %bb.bc
  %i.kt = getelementptr nuw i8, ptr %i.kp, i64 8  ; 2 uses
  %i.ku = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.kv = add nuw i64 %i.ku, 16                   ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kp, i64 %i.kv  ; 2 uses
  %bound0530 = icmp ult ptr %i.kt, %scevgep
  %bound1531 = icmp ult ptr %i.eh, %i.kw
  %found.conflict532 = and i1 %bound0530, %bound1531
  %7 = add nuw i64 %i.ku, 8                       ; 2 uses
  %i.kx = getelementptr i8, ptr %i.gz, i64 %7
  %bound0530.a = icmp ult ptr %i.kt, %i.kx
  %bound1531.a = icmp ult ptr %i.gz, %i.kw
  %found.conflict532.a = and i1 %bound0530.a, %bound1531.a
  %conflict.rdx536 = or i1 %found.conflict532, %found.conflict532.a
  %8 = getelementptr nuw i8, ptr %i.kr, i64 8
  %9 = getelementptr i8, ptr %i.kr, i64 %i.kv
  %10 = getelementptr i8, ptr %i.ks, i64 %7
  %bound0537 = icmp ult ptr %8, %10
  %bound1538 = icmp ult ptr %i.ks, %9
  %found.conflict539 = and i1 %bound0537, %bound1538
  %conflict.rdx540 = or i1 %conflict.rdx536, %found.conflict539
  br i1 %conflict.rdx540, label %scalar.ph527.preheader, label %vector.ph541

vector.ph541:                                     ; preds = %vector.memcheck529
  %n.vec542 = and i64 %indvars.iv422, 9223372036854775804 ; 3 uses
  %i.ky = load double, ptr %i.eh, align 8, !tbaa !133, !alias.scope !280
  %broadcast.splatinsert547 = insertelement <2 x double> poison, double %i.ky, i64 0
  %broadcast.splat548 = shufflevector <2 x double> %broadcast.splatinsert547, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body543

vector.body543:                                   ; preds = %vector.body543, %vector.ph541
  %index544 = phi i64 [ 0, %vector.ph541 ], [ %index.next551, %vector.body543 ] ; 4 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %index544 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load545 = load <2 x double>, ptr %i.kz, align 8, !tbaa !47, !alias.scope !281
  %wide.load546 = load <2 x double>, ptr %i.la, align 8, !tbaa !47, !alias.scope !281
  %i.lb = fmul <2 x double> %broadcast.splat548, %wide.load545
  %i.lc = fmul <2 x double> %broadcast.splat548, %wide.load546
  %i.ld = or disjoint i64 %index544, 1            ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <2 x double> %i.lb, ptr %i.le, align 8, !tbaa !47, !alias.scope !282, !noalias !283
  store <2 x double> %i.lc, ptr %i.lf, align 8, !tbaa !47, !alias.scope !282, !noalias !283
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %index544 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %wide.load549 = load <2 x ptr>, ptr %i.lg, align 8, !tbaa !107, !alias.scope !284
  %wide.load550 = load <2 x ptr>, ptr %i.lh, align 8, !tbaa !107, !alias.scope !284
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.ld ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store <2 x ptr> %wide.load549, ptr %i.li, align 8, !tbaa !107, !alias.scope !285, !noalias !284
  store <2 x ptr> %wide.load550, ptr %i.lj, align 8, !tbaa !107, !alias.scope !285, !noalias !284
  %index.next551 = add nuw i64 %index544, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next551, %n.vec542
  br i1 %i.lk, label %middle.block552, label %vector.body543, !llvm.loop !272

middle.block552:                                  ; preds = %vector.body543
  %cmp.n553 = icmp eq i64 %indvars.iv422, %n.vec542
  br i1 %cmp.n553, label %.loopexit556, label %scalar.ph527.preheader

scalar.ph527.preheader:                           ; preds = %vector.memcheck529, %bb.bc, %middle.block552
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck529 ], [ 0, %bb.bc ], [ %n.vec542, %middle.block552 ] ; 5 uses
  %xtraiter = and i64 %indvars.iv422, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph527.prol.loopexit, label %scalar.ph527.prol

scalar.ph527.prol:                                ; preds = %scalar.ph527.preheader
  %i.ll = load double, ptr %i.eh, align 8, !tbaa !133
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.ph
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !47
  %i.lo = fmul double %i.ll, %i.ln
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 3 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv.next.prol
  store double %i.lo, ptr %i.lp, align 8, !tbaa !47
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.ph
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !107
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.next.prol
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !107
  br label %scalar.ph527.prol.loopexit

scalar.ph527.prol.loopexit:                       ; preds = %scalar.ph527.prol, %scalar.ph527.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph527.preheader ], [ %indvars.iv.next.prol, %scalar.ph527.prol ]
  %i.lt = icmp eq i64 %indvar, %indvars.iv.ph
  br i1 %i.lt, label %.loopexit556, label %scalar.ph527

scalar.ph527:                                     ; preds = %scalar.ph527.prol.loopexit, %scalar.ph527
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph527 ], [ %indvars.iv.unr, %scalar.ph527.prol.loopexit ] ; 4 uses
  %i.lu = load double, ptr %i.eh, align 8, !tbaa !133
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !47
  %i.lx = fmul double %i.lu, %i.lw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv.next
  store double %i.lx, ptr %i.ly, align 8, !tbaa !47
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !107
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.next
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !107
  %i.mc = load double, ptr %i.eh, align 8, !tbaa !133
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next
  %i.me = load double, ptr %i.md, align 8, !tbaa !47
  %i.mf = fmul double %i.mc, %i.me
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv.next.1
  store double %i.mf, ptr %i.mg, align 8, !tbaa !47
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.next
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !107
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.next.1
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !107
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %indvars.iv422
  br i1 %exitcond.not.1, label %.loopexit556, label %scalar.ph527, !llvm.loop !273

.loopexit556:                                     ; preds = %scalar.ph527.prol.loopexit, %scalar.ph527, %middle.block552
  %i.mk = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.ml = trunc i64 %indvars.iv422 to i32
  %i.mm = add i32 %i.ml, 1
  %i.mn = tail call i32 @N_VLinearCombination(i32 noundef %i.mm, ptr noundef nonnull %i.kp, ptr noundef nonnull %i.kr, ptr noundef %i.mk) #14
  %.not248 = icmp eq i32 %i.mn, 0
  br i1 %.not248, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %bb.bb, %.loopexit556, %bb.ap
  %.0205.shrunk = phi i1 [ true, %bb.bb ], [ false, %.loopexit556 ], [ false, %bb.ap ] ; 2 uses
  %or.cond5 = or i1 %i.fp, %i.fn
  br i1 %or.cond5, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mo = load ptr, ptr %i.ev, align 8, !tbaa !134 ; 2 uses
  %.not256 = icmp eq ptr %i.mo, null
  br i1 %.not256, label %.thread387, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mp = load double, ptr %i.ei, align 8, !tbaa !119
  %i.mq = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.mr = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.ms = tail call i32 %i.mo(double noundef %i.mp, ptr noundef %i.mq, ptr noundef %i.mr) #14
  %.not257 = icmp eq i32 %i.ms, 0
  br i1 %.not257, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.mt = load ptr, ptr %i.ej, align 8, !tbaa !52 ; 4 uses
  %i.mu = load double, ptr %i.ei, align 8, !tbaa !119
  %i.mv = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.mw = icmp eq ptr %i.mt, null
  br i1 %i.mw, label %mriStepInnerStepper_Reset.exit284.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !55 ; 2 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %mriStepInnerStepper_Reset.exit284.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !121 ; 2 uses
  %.not.i282 = icmp eq ptr %i.nb, null
  br i1 %.not.i282, label %.thread387, label %mriStepInnerStepper_Reset.exit284

mriStepInnerStepper_Reset.exit284:                ; preds = %bb.bi
  %i.nc = tail call i32 %i.nb(ptr noundef nonnull %i.mt, double noundef %i.mu, ptr noundef %i.mv) #14, !inline_history !122 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  store i32 %i.nc, ptr %i.nd, align 8, !tbaa !106
  %.not258 = icmp eq i32 %i.nc, 0
  br i1 %.not258, label %.thread387, label %mriStepInnerStepper_Reset.exit284.thread

mriStepInnerStepper_Reset.exit284.thread:         ; preds = %bb.bg, %bb.bh, %mriStepInnerStepper_Reset.exit284
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2706, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

bb.bj:                                            ; preds = %bb.bd
  br i1 %i.fn, label %bb.bk, label %.thread393

bb.bk:                                            ; preds = %bb.bj
  %i.ne = load ptr, ptr %i.fj, align 8, !tbaa !140 ; 2 uses
  %.not259 = icmp eq ptr %i.ne, null
  br i1 %.not259, label %.thread392, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nf = load double, ptr %i.ei, align 8, !tbaa !119
  %i.ng = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.nh = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.ni = tail call i32 %i.ne(double noundef %i.nf, ptr noundef %i.ng, ptr noundef %i.nh) #14
  %.not260 = icmp eq i32 %i.ni, 0
  br i1 %.not260, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.nj = load ptr, ptr %i.ej, align 8, !tbaa !52 ; 4 uses
  %i.nk = load double, ptr %i.ei, align 8, !tbaa !119
  %i.nl = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.nm = icmp eq ptr %i.nj, null
  br i1 %i.nm, label %mriStepInnerStepper_Reset.exit287.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !55 ; 2 uses
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %mriStepInnerStepper_Reset.exit287.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !121 ; 2 uses
  %.not.i285 = icmp eq ptr %i.nr, null
  br i1 %.not.i285, label %.thread392, label %mriStepInnerStepper_Reset.exit287

mriStepInnerStepper_Reset.exit287:                ; preds = %bb.bo
  %i.ns = tail call i32 %i.nr(ptr noundef nonnull %i.nj, double noundef %i.nk, ptr noundef %i.nl) #14, !inline_history !122 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  store i32 %i.ns, ptr %i.nt, align 8, !tbaa !106
  %.not261 = icmp eq i32 %i.ns, 0
  br i1 %.not261, label %.thread392, label %mriStepInnerStepper_Reset.exit287.thread

mriStepInnerStepper_Reset.exit287.thread:         ; preds = %bb.bm, %bb.bn, %mriStepInnerStepper_Reset.exit287
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2727, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

.thread387:                                       ; preds = %bb.bi, %mriStepInnerStepper_Reset.exit284, %bb.be
  %i.nu = load ptr, ptr %i.ew, align 8, !tbaa !108 ; 2 uses
  %.not262 = icmp eq ptr %i.nu, null
  br i1 %.not262, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %.thread387
end_hunk_0
