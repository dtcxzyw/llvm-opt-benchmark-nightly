inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.fan = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fac, %i.ezq
  %i.fao = select <2 x i1> %i.fan, <2 x float> %i.fac, <2 x float> %i.ezq ; 2 uses
  %i.fap = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezs, %i.ezw
  %i.faq = select <2 x i1> %i.fap, <2 x float> %i.ezs, <2 x float> %i.ezw ; 2 uses
  %i.far = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fak, %i.fao
  %i.fas = select <2 x i1> %i.far, <2 x float> %i.fak, <2 x float> %i.fao ; 2 uses
  %i.fat = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fai, %i.fam
  %i.fau = select <2 x i1> %i.fat, <2 x float> %i.fai, <2 x float> %i.fam ; 2 uses
  %i.fav = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fai, %i.fam
  %i.faw = select <2 x i1> %i.fav, <2 x float> %i.fai, <2 x float> %i.fam ; 2 uses
  %i.fax = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.faq, %i.faa
  %i.fay = select <2 x i1> %i.fax, <2 x float> %i.faq, <2 x float> %i.faa ; 2 uses
  %i.faz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fae, %i.faw
  %i.fba = select <2 x i1> %i.faz, <2 x float> %i.fae, <2 x float> %i.faw ; 2 uses
  %i.fbb = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fag, %i.fas
  %i.fbc = select <2 x i1> %i.fbb, <2 x float> %i.fag, <2 x float> %i.fas ; 4 uses
  %i.fbd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fba, %i.fau
  %i.fbe = select <2 x i1> %i.fbd, <2 x float> %i.fba, <2 x float> %i.fau ; 4 uses
  %i.fbf = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fbe, %i.fbc
  %i.fbg = select <2 x i1> %i.fbf, <2 x float> %i.fbe, <2 x float> %i.fbc ; 2 uses
  %i.fbh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fbe, %i.fbc
  %i.fbi = select <2 x i1> %i.fbh, <2 x float> %i.fbe, <2 x float> %i.fbc ; 2 uses
  %i.fbj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fay, %i.fbg
  %i.fbk = select <2 x i1> %i.fbj, <2 x float> %i.fay, <2 x float> %i.fbg ; 2 uses
  %i.fbl = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fbi, %i.fbk
  %i.fbm = select <2 x i1> %i.fbl, <2 x float> %i.fbi, <2 x float> %i.fbk ; 5 uses
  %foldExtExtBinop4197 = fmul reassoc nsz arcp contract afn <2 x float> %i.fbm, %i.fbm
  %i.fbn = extractelement <2 x float> %foldExtExtBinop4197, i64 0
  %i.fbo = load float, ptr %indvars.iv2570.sroa.phi4466, align 4, !tbaa !58
  %i.fbp = fmul reassoc nsz arcp contract afn float %i.fbo, 4.000000e+00
  %i.fbq = fcmp reassoc nsz arcp contract afn ogt float %i.fbn, %i.fbp
  br i1 %i.fbq, label %.loopexit1907, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %foldExtExtBinop4199 = fmul reassoc nsz arcp contract afn <2 x float> %i.fbm, %i.fbm
  %i.fbr = extractelement <2 x float> %foldExtExtBinop4199, i64 1
  %i.fbs = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv2570
  %i.fbt = load float, ptr %i.fbs, align 4, !tbaa !58
  %i.fbu = fmul reassoc nsz arcp contract afn float %i.fbt, 4.000000e+00
  %i.fbv = fcmp reassoc nsz arcp contract afn ogt float %i.fbr, %i.fbu
  br i1 %i.fbv, label %.loopexit1907, label %.preheader1896.lr.ph

.preheader1896.lr.ph:                             ; preds = %bb.as
  %i.fbw = load i32, ptr %indvars.iv2570.sroa.phi, align 4, !tbaa !16
  %i.fbx = add nsw i32 %i.fbw, 1
  store i32 %i.fbx, ptr %indvars.iv2570.sroa.phi, align 4, !tbaa !16
  %i.fby = getelementptr inbounds nuw i8, ptr %indvars.iv2570.sroa.phi4463, i64 2048 ; 3 uses
  %i.fbz = fpext <2 x float> %i.fbm to <2 x double>
  %i.fca = getelementptr inbounds nuw i8, ptr %indvars.iv2570.sroa.phi4458, i64 128
  %i.fcb = load float, ptr %i.eyj, align 4, !tbaa !58
  %i.fcc = fpext reassoc nsz arcp contract afn float %i.fcb to double ; 2 uses
  %i.fcd = insertelement <2 x double> poison, double %i.fcc, i64 0
  br label %.preheader1896

.preheader1896:                                   ; preds = %.preheader1896.lr.ph, %._crit_edge2107.split.us
  %indvars.iv2565 = phi i64 [ 0, %.preheader1896.lr.ph ], [ %indvars.iv.next2566, %._crit_edge2107.split.us ] ; 2 uses
  %.017262112 = phi double [ 1.000000e+00, %.preheader1896.lr.ph ], [ %i.fee, %._crit_edge2107.split.us ] ; 3 uses
  %i.fce = mul nuw nsw i64 %indvars.iv2565, %i.exr
  %i.fcf = insertelement <2 x double> poison, double %.017262112, i64 0
  %i.fcg = fmul reassoc nsz arcp contract afn <2 x double> %i.fcf, %i.fcd
  br label %.preheader1895.us

.preheader1895.us:                                ; preds = %._crit_edge2104.us, %.preheader1896
  %indvars.iv2560 = phi i64 [ %indvars.iv.next2561, %._crit_edge2104.us ], [ 0, %.preheader1896 ] ; 2 uses
  %.017242105.us = phi double [ %i.fed, %._crit_edge2104.us ], [ 1.000000e+00, %.preheader1896 ] ; 4 uses
  %i.fch = add nuw nsw i64 %indvars.iv2560, %i.fce ; 3 uses
  %i.fci = trunc nuw i64 %i.fch to i32
  %i.fcj = mul nsw i32 %.016222239, %i.fci
  br label %.preheader1894.us

bb.at:                                            ; preds = %bb.at, %.preheader1894.us.new
  %indvars.iv2554 = phi i64 [ 0, %.preheader1894.us.new ], [ %indvars.iv.next2555.1, %bb.at ] ; 3 uses
  %.017202098.us = phi double [ %.017242105.us, %.preheader1894.us.new ], [ %.reass4526, %bb.at ] ; 3 uses
  %niter4331 = phi i64 [ 0, %.preheader1894.us.new ], [ %niter4331.next.1, %bb.at ]
  %.reass.us = fmul reassoc nsz arcp contract afn double %.017202098.us, %factor.op.fmul.us ; 2 uses
  %i.fck = trunc nuw nsw i64 %indvars.iv2554 to i32
  %i.fcl = add i32 %i.fde, %i.fck
  %i.fcm = sext i32 %i.fcl to i64                 ; 2 uses
  %i.fcn = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2570.sroa.phi4463, i64 %i.fcm ; 2 uses
  %i.fco = load double, ptr %i.fcn, align 8, !tbaa !132
  %i.fcp = fadd reassoc nsz arcp contract afn double %.reass.us, %i.fco
  store double %i.fcp, ptr %i.fcn, align 8, !tbaa !132
  %i.fcq = getelementptr inbounds nuw [8 x i8], ptr %i.fby, i64 %i.fcm ; 2 uses
  %i.fcr = load double, ptr %i.fcq, align 8, !tbaa !132
  %i.fcs = fadd reassoc nsz arcp contract afn double %i.fcr, %.reass.us
  store double %i.fcs, ptr %i.fcq, align 8, !tbaa !132
  %.reass4526 = fmul reassoc nsz arcp contract afn double %.017202098.us, %factor.op.fmul ; 2 uses
  %.reass.us.1.reass = fmul reassoc nsz arcp contract afn double %.017202098.us, %invariant.op4525 ; 2 uses
  %i.fct = trunc i64 %indvars.iv2554 to i32
  %i.fcu = or disjoint i32 %i.fct, 1
  %i.fcv = add i32 %i.fde, %i.fcu
  %i.fcw = sext i32 %i.fcv to i64                 ; 2 uses
  %i.fcx = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2570.sroa.phi4463, i64 %i.fcw ; 2 uses
  %i.fcy = load double, ptr %i.fcx, align 8, !tbaa !132
  %i.fcz = fadd reassoc nsz arcp contract afn double %.reass.us.1.reass, %i.fcy
  store double %i.fcz, ptr %i.fcx, align 8, !tbaa !132
  %i.fda = getelementptr inbounds nuw [8 x i8], ptr %i.fby, i64 %i.fcw ; 2 uses
  %i.fdb = load double, ptr %i.fda, align 8, !tbaa !132
  %i.fdc = fadd reassoc nsz arcp contract afn double %i.fdb, %.reass.us.1.reass
  store double %i.fdc, ptr %i.fda, align 8, !tbaa !132
  %indvars.iv.next2555.1 = add nuw nsw i64 %indvars.iv2554, 2 ; 2 uses
  %niter4331.next.1 = add i64 %niter4331, 2       ; 2 uses
  %niter4331.ncmp.1 = icmp eq i64 %niter4331.next.1, %unroll_iter4330
  br i1 %niter4331.ncmp.1, label %._crit_edge2101.us.unr-lcssa, label %bb.at

.preheader1894.us:                                ; preds = %.preheader1895.us, %._crit_edge2101.us
  %.017212103.us = phi i32 [ 0, %.preheader1895.us ], [ %i.fdp, %._crit_edge2101.us ] ; 2 uses
  %.017222102.us = phi double [ %.017262112, %.preheader1895.us ], [ %i.fdo, %._crit_edge2101.us ] ; 2 uses
  %factor.op.fmul.us = fmul reassoc nsz arcp contract afn double %.017222102.us, %i.fcc ; 3 uses
  %i.fdd = mul nuw nsw i32 %.017212103.us, %.016192241
  %i.fde = add i32 %i.fdd, %i.fcj                 ; 3 uses
  br i1 %i.exs, label %.epil.preheader4325, label %.preheader1894.us.new

.preheader1894.us.new:                            ; preds = %.preheader1894.us
  %invariant.op4525 = fmul reassoc nsz arcp contract afn double %i.eyl, %factor.op.fmul.us
  br label %bb.at

._crit_edge2101.us.unr-lcssa:                     ; preds = %bb.at
  br i1 %lcmp.mod4328.not, label %._crit_edge2101.us, label %.epil.preheader4325

.epil.preheader4325:                              ; preds = %._crit_edge2101.us.unr-lcssa, %.preheader1894.us
  %indvars.iv2554.epil.init = phi i64 [ 0, %.preheader1894.us ], [ %indvars.iv.next2555.1, %._crit_edge2101.us.unr-lcssa ]
  %.017202098.us.epil.init = phi double [ %.017242105.us, %.preheader1894.us ], [ %.reass4526, %._crit_edge2101.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4329)
  %.reass.us.epil = fmul reassoc nsz arcp contract afn double %.017202098.us.epil.init, %factor.op.fmul.us ; 2 uses
  %i.fdf = trunc nuw nsw i64 %indvars.iv2554.epil.init to i32
  %i.fdg = add i32 %i.fde, %i.fdf
  %i.fdh = sext i32 %i.fdg to i64                 ; 2 uses
  %i.fdi = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2570.sroa.phi4463, i64 %i.fdh ; 2 uses
  %i.fdj = load double, ptr %i.fdi, align 8, !tbaa !132
  %i.fdk = fadd reassoc nsz arcp contract afn double %.reass.us.epil, %i.fdj
  store double %i.fdk, ptr %i.fdi, align 8, !tbaa !132
  %i.fdl = getelementptr inbounds nuw [8 x i8], ptr %i.fby, i64 %i.fdh ; 2 uses
  %i.fdm = load double, ptr %i.fdl, align 8, !tbaa !132
  %i.fdn = fadd reassoc nsz arcp contract afn double %i.fdm, %.reass.us.epil
  store double %i.fdn, ptr %i.fdl, align 8, !tbaa !132
  br label %._crit_edge2101.us

._crit_edge2101.us:                               ; preds = %._crit_edge2101.us.unr-lcssa, %.epil.preheader4325
  %i.fdo = fmul reassoc nsz arcp contract afn double %.017222102.us, %i.exy
  %i.fdp = add nuw nsw i32 %.017212103.us, 1      ; 2 uses
  %exitcond2559.not = icmp eq i32 %i.fdp, %.016192241
  br i1 %exitcond2559.not, label %._crit_edge2104.us, label %.preheader1894.us

._crit_edge2104.us:                               ; preds = %._crit_edge2101.us
  %i.fdq = insertelement <2 x double> poison, double %.017242105.us, i64 0
  %i.fdr = fmul reassoc nsz arcp contract afn <2 x double> %i.fdq, %i.fcg
  %i.fds = shufflevector <2 x double> %i.fdr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fdt = fmul reassoc nsz arcp contract afn <2 x double> %i.fds, %i.fbz
  %i.fdu = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2570.sroa.phi4458, i64 %i.fch ; 2 uses
  %i.fdv = load double, ptr %i.fdu, align 8, !tbaa !132
  %i.fdw = getelementptr inbounds nuw [8 x i8], ptr %i.fca, i64 %i.fch ; 2 uses
  %i.fdx = load double, ptr %i.fdw, align 8, !tbaa !132
  %i.fdy = insertelement <2 x double> poison, double %i.fdv, i64 0
  %i.fdz = insertelement <2 x double> %i.fdy, double %i.fdx, i64 1
  %i.fea = fadd reassoc nsz arcp contract afn <2 x double> %i.fdt, %i.fdz ; 2 uses
  %i.feb = extractelement <2 x double> %i.fea, i64 0
  store double %i.feb, ptr %i.fdu, align 8, !tbaa !132
  %i.fec = extractelement <2 x double> %i.fea, i64 1
  store double %i.fec, ptr %i.fdw, align 8, !tbaa !132
  %i.fed = fmul reassoc nsz arcp contract afn double %.017242105.us, %i.eyl
  %indvars.iv.next2561 = add nuw nsw i64 %indvars.iv2560, 1 ; 2 uses
  %exitcond2564.not = icmp eq i64 %indvars.iv.next2561, %i.exr
  br i1 %exitcond2564.not, label %._crit_edge2107.split.us, label %.preheader1895.us

._crit_edge2107.split.us:                         ; preds = %._crit_edge2104.us
  %i.fee = fmul reassoc nsz arcp contract afn double %.017262112, %i.exy
  %indvars.iv.next2566 = add nuw nsw i64 %indvars.iv2565, 1 ; 2 uses
  %exitcond2569.not = icmp eq i64 %indvars.iv.next2566, %i.exr
  br i1 %exitcond2569.not, label %.loopexit1907, label %.preheader1896

.loopexit1907:                                    ; preds = %._crit_edge2107.split.us, %bb.ar, %bb.as
  br i1 %i.eym, label %bb.ar, label %bb.aq

bb.au:                                            ; preds = %._crit_edge2119.split
  %i.fef = icmp slt i32 %i.exz, 10
  br i1 %i.fef, label %.thread, label %bb.aw

.thread:                                          ; preds = %._crit_edge2094, %bb.au
  %i.feg = phi i32 [ %i.exz, %bb.au ], [ 0, %._crit_edge2094 ]
  %i.feh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.fei = and i32 %i.feh, 33554432
  %.not1784 = icmp eq i32 %i.fei, 0
  br i1 %.not1784, label %.thread1874, label %bb.av

bb.av:                                            ; preds = %.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.7, i32 noundef %i.feg) #20
  br label %.thread1874

.thread1874:                                      ; preds = %.thread, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %.thread1866

bb.aw:                                            ; preds = %bb.au, %._crit_edge2119.split
  %.11623 = phi i32 [ %.016222239, %._crit_edge2119.split ], [ 4, %bb.au ] ; 4 uses
  %.11620 = phi i32 [ %.016192241, %._crit_edge2119.split ], [ 2, %bb.au ] ; 6 uses
  %i.fej = zext i32 %.11623 to i64                ; 58 uses
  %i.fek = add nsw i64 %i.fej, -1                 ; 6 uses
  %.1122132.i = add nuw nsw i64 %i.fej, 1         ; 2 uses
  %i.fel = shl nuw nsw i64 %i.fej, 3              ; 2 uses
  %i.fem = add nuw nsw i64 %i.fel, 2048
  %i.fen = add nuw nsw i64 %i.fel, 8
  %i.feo = mul nuw i64 %i.fej, %i.fej
  %i.fep = shl i64 %i.feo, 3
  %scevgep3158 = getelementptr i8, ptr %scevgep3157, i64 %i.fep
  %i.feq = shl nuw nsw i64 %i.fej, 3
  %i.fer = shl nuw nsw i64 %i.fej, 3              ; 3 uses
  %i.fes = add nuw nsw i64 %i.fer, 8              ; 2 uses
  %i.fet = shl nuw nsw i64 %i.fej, 3
  %i.feu = shl nuw nsw i64 %i.fej, 3
  %i.fev = mul nuw i64 %i.fej, %i.fej
  %i.few = shl i64 %i.fev, 3
  %scevgep3282 = getelementptr i8, ptr %i.l, i64 %i.few
  %i.fex = shl nuw nsw i64 %i.fej, 3
  %i.fey = shl nuw nsw i64 %i.fej, 3              ; 2 uses
  %i.fez = add nuw nsw i64 %i.fey, 8
  %i.ffa = shl nuw nsw i64 %i.fej, 3
  %i.ffb = shl nuw nsw i64 %i.fej, 3
  %i.ffc = add nsw i64 %i.fej, -2                 ; 2 uses
  %i.ffd = getelementptr i8, ptr %i.l, i64 %i.fey
  %i.ffe = getelementptr i8, ptr %i.l, i64 %i.fer
  %i.fff = getelementptr i8, ptr %i.ffe, i64 2048
  br label %.preheader1961

.preheader1961:                                   ; preds = %bb.aw, %_LinEqSolve.exit.1
  %i.ffg = phi i1 [ true, %bb.aw ], [ false, %_LinEqSolve.exit.1 ]
  %indvars.iv2600.sroa.phi = phi ptr [ %i.m, %bb.aw ], [ %indvars.iv2600.sroa.gep4457, %_LinEqSolve.exit.1 ] ; 6 uses
  %indvars.iv2600.sroa.phi4460 = phi ptr [ %i.l, %bb.aw ], [ %indvars.iv2600.sroa.gep4462, %_LinEqSolve.exit.1 ] ; 7 uses
  %indvars.iv2600.sroa.phi4469 = phi ptr [ %i.a, %bb.aw ], [ %indvars.iv2600.sroa.gep4471, %_LinEqSolve.exit.1 ] ; 5 uses
  %indvars.iv2600 = phi i64 [ 0, %bb.aw ], [ 1, %_LinEqSolve.exit.1 ] ; 4 uses
  %.42123 = phi i32 [ 1, %bb.aw ], [ %.6.1, %_LinEqSolve.exit.1 ]
  %i.ffh = shl nuw nsw i64 %indvars.iv2600, 12    ; 7 uses
  %i.ffi = add nuw nsw i64 %i.fer, %i.ffh         ; 2 uses
  %scevgep3283 = getelementptr i8, ptr %scevgep3282, i64 %i.ffh
  %scevgep3335 = getelementptr i8, ptr %i.l, i64 %i.ffh
  %i.ffj = getelementptr i8, ptr %i.l, i64 %i.ffh
  %i.ffk = getelementptr i8, ptr %i.ffd, i64 %i.ffh
  %i.ffl = getelementptr i8, ptr %i.l, i64 %i.ffh
  %i.ffm = getelementptr i8, ptr %i.l, i64 %i.ffi
  %i.ffn = getelementptr i8, ptr %i.l, i64 %i.ffh
  %i.ffo = getelementptr i8, ptr %i.l, i64 %i.ffi
  br label %.lr.ph.preheader.i

.loopexit134.i:                                   ; preds = %._crit_edge147.us.i
  %exitcond169.not.i = icmp eq i64 %i.fgb, %i.fek
  br i1 %exitcond169.not.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit134.i, %.preheader1961
  %.0121152.i = phi i64 [ %i.fgb, %.loopexit134.i ], [ 0, %.preheader1961 ] ; 27 uses
  %i.ffp = sub i64 %i.fek, %.0121152.i
  %i.ffq = sub i64 %i.ffc, %.0121152.i
  %i.ffr = mul i64 %i.fez, %.0121152.i
  %scevgep3331 = getelementptr i8, ptr %i.ffj, i64 %i.ffr
  %i.ffs = mul i64 %i.ffa, %.0121152.i
  %scevgep3332 = getelementptr i8, ptr %i.ffk, i64 %i.ffs
  %i.fft = shl i64 %.0121152.i, 3
  %scevgep3333 = getelementptr i8, ptr %i.ffl, i64 %i.fft
  %i.ffu = sub nsw i64 %i.fej, %.0121152.i        ; 10 uses
  %i.ffv = mul i64 %i.fes, %.0121152.i            ; 2 uses
  %scevgep3281 = getelementptr i8, ptr %i.ffm, i64 %i.ffv
  %scevgep3284 = getelementptr i8, ptr %i.ffn, i64 %i.ffv
  %i.ffw = mul i64 %i.fex, %.0121152.i
  %scevgep3285 = getelementptr i8, ptr %i.ffo, i64 %i.ffw
  %i.ffx = mul nuw nsw i64 %.0121152.i, %i.fej
  %i.ffy = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4460, i64 %i.ffx ; 14 uses
  %i.ffz = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %.0121152.i ; 3 uses
  %i.fga = load double, ptr %i.ffz, align 8, !tbaa !132 ; 2 uses
  %i.fgb = add nuw nsw i64 %.0121152.i, 1         ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4460, i64 %.0121152.i ; 5 uses
  %i.fgc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fga) ; 2 uses
  %xtraiter4332 = and i64 %i.ffp, 3               ; 2 uses
  %lcmp.mod4333.not = icmp eq i64 %xtraiter4332, 0
  br i1 %lcmp.mod4333.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.0140.i.prol = phi i64 [ %.1.i.prol, %.lr.ph.i.prol ], [ %.0121152.i, %.lr.ph.preheader.i ]
  %.0124139.i.prol = phi i64 [ %i.fgh, %.lr.ph.i.prol ], [ %i.fgb, %.lr.ph.preheader.i ] ; 3 uses
  %.0126138.i.prol = phi double [ %.1127.i.prol, %.lr.ph.i.prol ], [ %i.fgc, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter4334 = phi i64 [ %prol.iter4334.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.fgd = mul nuw nsw i64 %.0124139.i.prol, %i.fej
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgd
  %i.fge = load double, ptr %gep.i.prol, align 8, !tbaa !132 ; 2 uses
  %i.fgf = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fge)
  %i.fgg = fcmp reassoc nsz arcp contract afn olt double %.0126138.i.prol, %i.fgf ; 2 uses
  %.1127.i.prol = select nsz i1 %i.fgg, double %i.fge, double %.0126138.i.prol ; 2 uses
  %.1.i.prol = select i1 %i.fgg, i64 %.0124139.i.prol, i64 %.0140.i.prol ; 3 uses
  %i.fgh = add nuw nsw i64 %.0124139.i.prol, 1    ; 2 uses
  %prol.iter4334.next = add i64 %prol.iter4334, 1 ; 2 uses
  %prol.iter4334.cmp.not = icmp eq i64 %prol.iter4334.next, %xtraiter4332
  br i1 %prol.iter4334.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !133

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.1.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i.prol ]
  %.0140.i.unr = phi i64 [ %.0121152.i, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i.prol ]
  %.0124139.i.unr = phi i64 [ %i.fgb, %.lr.ph.preheader.i ], [ %i.fgh, %.lr.ph.i.prol ]
  %.0126138.i.unr = phi double [ %i.fgc, %.lr.ph.preheader.i ], [ %.1127.i.prol, %.lr.ph.i.prol ]
  %i.fgi = icmp ult i64 %i.ffq, 3
  br i1 %i.fgi, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0140.i = phi i64 [ %.1.i.3, %.lr.ph.i ], [ %.0140.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0124139.i = phi i64 [ %i.fhc, %.lr.ph.i ], [ %.0124139.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0126138.i = phi double [ %.1127.i.3, %.lr.ph.i ], [ %.0126138.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.fgj = mul nuw nsw i64 %.0124139.i, %i.fej
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgj
  %i.fgk = load double, ptr %gep.i, align 8, !tbaa !132 ; 2 uses
  %i.fgl = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgk)
  %i.fgm = fcmp reassoc nsz arcp contract afn olt double %.0126138.i, %i.fgl ; 2 uses
  %.1127.i = select nsz i1 %i.fgm, double %i.fgk, double %.0126138.i ; 2 uses
  %.1.i = select i1 %i.fgm, i64 %.0124139.i, i64 %.0140.i
  %i.fgn = add nuw nsw i64 %.0124139.i, 1         ; 2 uses
  %i.fgo = mul nuw nsw i64 %i.fgn, %i.fej
  %gep.i.14338 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgo
  %i.fgp = load double, ptr %gep.i.14338, align 8, !tbaa !132 ; 2 uses
  %i.fgq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgp)
  %i.fgr = fcmp reassoc nsz arcp contract afn olt double %.1127.i, %i.fgq ; 2 uses
  %.1127.i.14339 = select nsz i1 %i.fgr, double %i.fgp, double %.1127.i ; 2 uses
  %.1.i.14340 = select i1 %i.fgr, i64 %i.fgn, i64 %.1.i
  %i.fgs = add nuw nsw i64 %.0124139.i, 2         ; 2 uses
  %i.fgt = mul nuw nsw i64 %i.fgs, %i.fej
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgt
  %i.fgu = load double, ptr %gep.i.2, align 8, !tbaa !132 ; 2 uses
  %i.fgv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgu)
  %i.fgw = fcmp reassoc nsz arcp contract afn olt double %.1127.i.14339, %i.fgv ; 2 uses
  %.1127.i.2 = select nsz i1 %i.fgw, double %i.fgu, double %.1127.i.14339 ; 2 uses
  %.1.i.2 = select i1 %i.fgw, i64 %i.fgs, i64 %.1.i.14340
  %i.fgx = add nuw nsw i64 %.0124139.i, 3         ; 2 uses
  %i.fgy = mul nuw nsw i64 %i.fgx, %i.fej
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.fgy
  %i.fgz = load double, ptr %gep.i.3, align 8, !tbaa !132 ; 2 uses
  %i.fha = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fgz)
  %i.fhb = fcmp reassoc nsz arcp contract afn olt double %.1127.i.2, %i.fha ; 2 uses
  %.1127.i.3 = select nsz i1 %i.fhb, double %i.fgz, double %.1127.i.2
  %.1.i.3 = select i1 %i.fhb, i64 %i.fgx, i64 %.1.i.2 ; 2 uses
  %i.fhc = add nuw nsw i64 %.0124139.i, 4         ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fhc, %i.fej
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.1.i.lcssa = phi i64 [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.3, %.lr.ph.i ] ; 5 uses
  %.not.i1832 = icmp eq i64 %.1.i.lcssa, %.0121152.i
  br i1 %.not.i1832, label %bb.ax, label %.lr.ph142.i

.lr.ph142.i:                                      ; preds = %._crit_edge.i
  %i.fhd = mul nsw i64 %.1.i.lcssa, %i.fej
  %i.fhe = getelementptr [8 x i8], ptr %indvars.iv2600.sroa.phi4460, i64 %i.fhd ; 6 uses
  %min.iters.check3341 = icmp ult i64 %i.ffu, 8
  br i1 %min.iters.check3341, label %scalar.ph3340.preheader, label %vector.memcheck3330

vector.memcheck3330:                              ; preds = %.lr.ph142.i
  %i.fhf = mul i64 %i.ffb, %.1.i.lcssa
  %scevgep3334 = getelementptr i8, ptr %scevgep3333, i64 %i.fhf
  %i.fhg = shl i64 %.1.i.lcssa, 3
  %i.fhh = add i64 %i.fhg, 8
  %i.fhi = mul i64 %i.fhh, %i.fej
  %scevgep3336 = getelementptr i8, ptr %scevgep3335, i64 %i.fhi
  %bound03337 = icmp ult ptr %scevgep3331, %scevgep3336
  %bound13338 = icmp ult ptr %scevgep3334, %scevgep3332
  %found.conflict3339 = and i1 %bound03337, %bound13338
  br i1 %found.conflict3339, label %scalar.ph3340.preheader, label %vector.ph3342

vector.ph3342:                                    ; preds = %vector.memcheck3330
  %n.vec3344 = and i64 %i.ffu, -8                 ; 3 uses
  %i.fhj = add i64 %.0121152.i, %n.vec3344
  br label %vector.body3345

vector.body3345:                                  ; preds = %vector.body3345, %vector.ph3342
  %index3346 = phi i64 [ 0, %vector.ph3342 ], [ %index.next3351, %vector.body3345 ] ; 2 uses
  %i.fhk = add nuw i64 %.0121152.i, %index3346    ; 2 uses
  %i.fhl = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.fhk ; 3 uses
  %i.fhm = getelementptr inbounds nuw i8, ptr %i.fhl, i64 32 ; 2 uses
  %wide.load3347 = load <4 x double>, ptr %i.fhl, align 8, !tbaa !132, !alias.scope !134, !noalias !137
  %wide.load3348 = load <4 x double>, ptr %i.fhm, align 8, !tbaa !132, !alias.scope !134, !noalias !137
  %i.fhn = getelementptr [8 x i8], ptr %i.fhe, i64 %i.fhk ; 3 uses
  %i.fho = getelementptr i8, ptr %i.fhn, i64 32   ; 2 uses
  %wide.load3349 = load <4 x double>, ptr %i.fhn, align 8, !tbaa !132, !alias.scope !137
  %wide.load3350 = load <4 x double>, ptr %i.fho, align 8, !tbaa !132, !alias.scope !137
  store <4 x double> %wide.load3349, ptr %i.fhl, align 8, !tbaa !132, !alias.scope !134, !noalias !137
  store <4 x double> %wide.load3350, ptr %i.fhm, align 8, !tbaa !132, !alias.scope !134, !noalias !137
  store <4 x double> %wide.load3347, ptr %i.fhn, align 8, !tbaa !132, !alias.scope !137
  store <4 x double> %wide.load3348, ptr %i.fho, align 8, !tbaa !132, !alias.scope !137
  %index.next3351 = add nuw i64 %index3346, 8     ; 2 uses
  %i.fhp = icmp eq i64 %index.next3351, %n.vec3344
  br i1 %i.fhp, label %middle.block3352, label %vector.body3345, !llvm.loop !139

middle.block3352:                                 ; preds = %vector.body3345
  %cmp.n3353 = icmp eq i64 %i.ffu, %n.vec3344
  br i1 %cmp.n3353, label %._crit_edge143.i, label %scalar.ph3340.preheader

scalar.ph3340.preheader:                          ; preds = %vector.memcheck3330, %.lr.ph142.i, %middle.block3352
  %.1125141.i.ph = phi i64 [ %.0121152.i, %vector.memcheck3330 ], [ %.0121152.i, %.lr.ph142.i ], [ %i.fhj, %middle.block3352 ] ; 4 uses
  %i.fhq = sub i64 %i.fej, %.1125141.i.ph
  %xtraiter4343 = and i64 %i.fhq, 3               ; 2 uses
  %lcmp.mod4344.not = icmp eq i64 %xtraiter4343, 0
  br i1 %lcmp.mod4344.not, label %scalar.ph3340.prol.loopexit, label %scalar.ph3340.prol

scalar.ph3340.prol:                               ; preds = %scalar.ph3340.preheader, %scalar.ph3340.prol
  %.1125141.i.prol = phi i64 [ %i.fhv, %scalar.ph3340.prol ], [ %.1125141.i.ph, %scalar.ph3340.preheader ] ; 3 uses
  %prol.iter4345 = phi i64 [ %prol.iter4345.next, %scalar.ph3340.prol ], [ 0, %scalar.ph3340.preheader ]
  %i.fhr = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %.1125141.i.prol ; 2 uses
  %i.fhs = load double, ptr %i.fhr, align 8, !tbaa !132
  %i.fht = getelementptr [8 x i8], ptr %i.fhe, i64 %.1125141.i.prol ; 2 uses
  %i.fhu = load double, ptr %i.fht, align 8, !tbaa !132
  store double %i.fhu, ptr %i.fhr, align 8, !tbaa !132
  store double %i.fhs, ptr %i.fht, align 8, !tbaa !132
  %i.fhv = add nuw nsw i64 %.1125141.i.prol, 1    ; 2 uses
  %prol.iter4345.next = add i64 %prol.iter4345, 1 ; 2 uses
  %prol.iter4345.cmp.not = icmp eq i64 %prol.iter4345.next, %xtraiter4343
  br i1 %prol.iter4345.cmp.not, label %scalar.ph3340.prol.loopexit, label %scalar.ph3340.prol, !llvm.loop !140

scalar.ph3340.prol.loopexit:                      ; preds = %scalar.ph3340.prol, %scalar.ph3340.preheader
  %.1125141.i.unr = phi i64 [ %.1125141.i.ph, %scalar.ph3340.preheader ], [ %i.fhv, %scalar.ph3340.prol ]
  %i.fhw = sub i64 %.1125141.i.ph, %i.fej
  %i.fhx = icmp ugt i64 %i.fhw, -4
  br i1 %i.fhx, label %._crit_edge143.i, label %scalar.ph3340

scalar.ph3340:                                    ; preds = %scalar.ph3340.prol.loopexit, %scalar.ph3340
  %.1125141.i = phi i64 [ %i.fir, %scalar.ph3340 ], [ %.1125141.i.unr, %scalar.ph3340.prol.loopexit ] ; 6 uses
  %i.fhy = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %.1125141.i ; 2 uses
  %i.fhz = load double, ptr %i.fhy, align 8, !tbaa !132
  %i.fia = getelementptr [8 x i8], ptr %i.fhe, i64 %.1125141.i ; 2 uses
  %i.fib = load double, ptr %i.fia, align 8, !tbaa !132
  store double %i.fib, ptr %i.fhy, align 8, !tbaa !132
  store double %i.fhz, ptr %i.fia, align 8, !tbaa !132
  %i.fic = add nuw nsw i64 %.1125141.i, 1         ; 2 uses
  %i.fid = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.fic ; 2 uses
  %i.fie = load double, ptr %i.fid, align 8, !tbaa !132
  %i.fif = getelementptr [8 x i8], ptr %i.fhe, i64 %i.fic ; 2 uses
  %i.fig = load double, ptr %i.fif, align 8, !tbaa !132
  store double %i.fig, ptr %i.fid, align 8, !tbaa !132
  store double %i.fie, ptr %i.fif, align 8, !tbaa !132
  %i.fih = add nuw nsw i64 %.1125141.i, 2         ; 2 uses
  %i.fii = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.fih ; 2 uses
  %i.fij = load double, ptr %i.fii, align 8, !tbaa !132
  %i.fik = getelementptr [8 x i8], ptr %i.fhe, i64 %i.fih ; 2 uses
  %i.fil = load double, ptr %i.fik, align 8, !tbaa !132
  store double %i.fil, ptr %i.fii, align 8, !tbaa !132
  store double %i.fij, ptr %i.fik, align 8, !tbaa !132
  %i.fim = add nuw nsw i64 %.1125141.i, 3         ; 2 uses
  %i.fin = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.fim ; 2 uses
  %i.fio = load double, ptr %i.fin, align 8, !tbaa !132
  %i.fip = getelementptr [8 x i8], ptr %i.fhe, i64 %i.fim ; 2 uses
  %i.fiq = load double, ptr %i.fip, align 8, !tbaa !132
  store double %i.fiq, ptr %i.fin, align 8, !tbaa !132
  store double %i.fio, ptr %i.fip, align 8, !tbaa !132
  %i.fir = add nuw nsw i64 %.1125141.i, 4         ; 2 uses
  %exitcond166.not.i.3 = icmp eq i64 %i.fir, %i.fej
  br i1 %exitcond166.not.i.3, label %._crit_edge143.i, label %scalar.ph3340, !llvm.loop !141

._crit_edge143.i:                                 ; preds = %scalar.ph3340.prol.loopexit, %scalar.ph3340, %middle.block3352
  %i.fis = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi, i64 %.0121152.i ; 2 uses
  %i.fit = load double, ptr %i.fis, align 8, !tbaa !132
  %i.fiu = getelementptr inbounds [8 x i8], ptr %indvars.iv2600.sroa.phi, i64 %.1.i.lcssa ; 2 uses
  %i.fiv = load double, ptr %i.fiu, align 8, !tbaa !132
  store double %i.fiv, ptr %i.fis, align 8, !tbaa !132
  store double %i.fit, ptr %i.fiu, align 8, !tbaa !132
  %.pre.i = load double, ptr %i.ffz, align 8, !tbaa !132
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge143.i, %._crit_edge.i
  %i.fiw = phi double [ %.pre.i, %._crit_edge143.i ], [ %i.fga, %._crit_edge.i ]
  %i.fix = fcmp reassoc nsz arcp contract afn oeq double %i.fiw, 0.000000e+00
  br i1 %i.fix, label %bb.ay, label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %bb.ax
  %i.fiy = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi, i64 %.0121152.i
  %min.iters.check3290 = icmp ult i64 %i.ffu, 4
  %bound03286 = icmp ult ptr %scevgep3281, %scevgep3285
  %bound13287 = icmp ult ptr %scevgep3284, %scevgep3283
  %found.conflict3288 = and i1 %bound03286, %bound13287
  %min.iters.check3292 = icmp ult i64 %i.ffu, 16
  %n.mod.vf3294 = and i64 %i.ffu, 12
  %n.vec3295 = and i64 %i.ffu, -16                ; 4 uses
  %i.fiz = add i64 %.0121152.i, %n.vec3295
  %cmp.n3310 = icmp eq i64 %i.ffu, %n.vec3295
  %min.epilog.iters.check3316 = icmp eq i64 %n.mod.vf3294, 0
  %n.vec3319 = and i64 %i.ffu, -4                 ; 3 uses
  %i.fja = add i64 %.0121152.i, %n.vec3319
  %cmp.n3328 = icmp eq i64 %i.ffu, %n.vec3319
  br label %iter.check3313

iter.check3313:                                   ; preds = %._crit_edge147.us.i, %.lr.ph149.i
  %.0123148.us.i = phi i64 [ %i.fgb, %.lr.ph149.i ], [ %i.flv, %._crit_edge147.us.i ] ; 3 uses
  %i.fjb = mul nuw nsw i64 %.0123148.us.i, %i.fej
  %i.fjc = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4460, i64 %i.fjb ; 8 uses
  %i.fjd = getelementptr inbounds nuw [8 x i8], ptr %i.fjc, i64 %.0121152.i
  %i.fje = load double, ptr %i.fjd, align 8, !tbaa !132
  %i.fjf = fneg reassoc nsz arcp contract afn double %i.fje
  %i.fjg = load double, ptr %i.ffz, align 8, !tbaa !132
  %i.fjh = fdiv reassoc nsz arcp contract afn double %i.fjf, %i.fjg ; 8 uses
  %brmerge4548 = select i1 %min.iters.check3290, i1 true, i1 %found.conflict3288
  br i1 %brmerge4548, label %vec.epilog.scalar.ph3314.preheader, label %vector.main.loop.iter.check3291

vector.main.loop.iter.check3291:                  ; preds = %iter.check3313
  br i1 %min.iters.check3292, label %vec.epilog.ph3317, label %vector.ph3293

vector.ph3293:                                    ; preds = %vector.main.loop.iter.check3291
  %broadcast.splatinsert3296 = insertelement <4 x double> poison, double %i.fjh, i64 0
  %broadcast.splat3297 = shufflevector <4 x double> %broadcast.splatinsert3296, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3298

vector.body3298:                                  ; preds = %vector.body3298, %vector.ph3293
  %index3299 = phi i64 [ 0, %vector.ph3293 ], [ %index.next3308, %vector.body3298 ] ; 2 uses
  %i.fji = add nuw i64 %.0121152.i, %index3299    ; 2 uses
  %i.fjj = getelementptr inbounds nuw [8 x i8], ptr %i.fjc, i64 %i.fji ; 5 uses
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.fjj, i64 32 ; 2 uses
  %i.fjl = getelementptr inbounds nuw i8, ptr %i.fjj, i64 64 ; 2 uses
  %i.fjm = getelementptr inbounds nuw i8, ptr %i.fjj, i64 96 ; 2 uses
  %wide.load3300 = load <4 x double>, ptr %i.fjj, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  %wide.load3301 = load <4 x double>, ptr %i.fjk, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  %wide.load3302 = load <4 x double>, ptr %i.fjl, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  %wide.load3303 = load <4 x double>, ptr %i.fjm, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  %i.fjn = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.fji ; 4 uses
  %i.fjo = getelementptr inbounds nuw i8, ptr %i.fjn, i64 32
  %i.fjp = getelementptr inbounds nuw i8, ptr %i.fjn, i64 64
  %i.fjq = getelementptr inbounds nuw i8, ptr %i.fjn, i64 96
  %wide.load3304 = load <4 x double>, ptr %i.fjn, align 8, !tbaa !132, !alias.scope !145
  %wide.load3305 = load <4 x double>, ptr %i.fjo, align 8, !tbaa !132, !alias.scope !145
  %wide.load3306 = load <4 x double>, ptr %i.fjp, align 8, !tbaa !132, !alias.scope !145
  %wide.load3307 = load <4 x double>, ptr %i.fjq, align 8, !tbaa !132, !alias.scope !145
  %i.fjr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3304, %broadcast.splat3297
  %i.fjs = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3305, %broadcast.splat3297
  %i.fjt = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3306, %broadcast.splat3297
  %i.fju = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3307, %broadcast.splat3297
  %i.fjv = fadd reassoc nsz arcp contract afn <4 x double> %i.fjr, %wide.load3300
  %i.fjw = fadd reassoc nsz arcp contract afn <4 x double> %i.fjs, %wide.load3301
  %i.fjx = fadd reassoc nsz arcp contract afn <4 x double> %i.fjt, %wide.load3302
  %i.fjy = fadd reassoc nsz arcp contract afn <4 x double> %i.fju, %wide.load3303
  store <4 x double> %i.fjv, ptr %i.fjj, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  store <4 x double> %i.fjw, ptr %i.fjk, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  store <4 x double> %i.fjx, ptr %i.fjl, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  store <4 x double> %i.fjy, ptr %i.fjm, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  %index.next3308 = add nuw i64 %index3299, 16    ; 2 uses
  %i.fjz = icmp eq i64 %index.next3308, %n.vec3295
  br i1 %i.fjz, label %middle.block3309, label %vector.body3298, !llvm.loop !147

middle.block3309:                                 ; preds = %vector.body3298
  br i1 %cmp.n3310, label %._crit_edge147.us.i, label %vec.epilog.iter.check3315

vec.epilog.iter.check3315:                        ; preds = %middle.block3309
  br i1 %min.epilog.iters.check3316, label %vec.epilog.scalar.ph3314.preheader, label %vec.epilog.ph3317, !prof !148

vec.epilog.ph3317:                                ; preds = %vector.main.loop.iter.check3291, %vec.epilog.iter.check3315
  %vec.epilog.resume.val3311 = phi i64 [ %n.vec3295, %vec.epilog.iter.check3315 ], [ 0, %vector.main.loop.iter.check3291 ]
  %broadcast.splatinsert3320 = insertelement <4 x double> poison, double %i.fjh, i64 0
  %broadcast.splat3321 = shufflevector <4 x double> %broadcast.splatinsert3320, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3322

vec.epilog.vector.body3322:                       ; preds = %vec.epilog.vector.body3322, %vec.epilog.ph3317
  %index3323 = phi i64 [ %vec.epilog.resume.val3311, %vec.epilog.ph3317 ], [ %index.next3326, %vec.epilog.vector.body3322 ] ; 2 uses
  %i.fka = add nuw i64 %.0121152.i, %index3323    ; 2 uses
  %i.fkb = getelementptr inbounds nuw [8 x i8], ptr %i.fjc, i64 %i.fka ; 2 uses
  %wide.load3324 = load <4 x double>, ptr %i.fkb, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  %i.fkc = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.fka
  %wide.load3325 = load <4 x double>, ptr %i.fkc, align 8, !tbaa !132, !alias.scope !145
  %i.fkd = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3325, %broadcast.splat3321
  %i.fke = fadd reassoc nsz arcp contract afn <4 x double> %i.fkd, %wide.load3324
  store <4 x double> %i.fke, ptr %i.fkb, align 8, !tbaa !132, !alias.scope !142, !noalias !145
  %index.next3326 = add nuw i64 %index3323, 4     ; 2 uses
  %i.fkf = icmp eq i64 %index.next3326, %n.vec3319
  br i1 %i.fkf, label %vec.epilog.middle.block3327, label %vec.epilog.vector.body3322, !llvm.loop !149

vec.epilog.middle.block3327:                      ; preds = %vec.epilog.vector.body3322
  br i1 %cmp.n3328, label %._crit_edge147.us.i, label %vec.epilog.scalar.ph3314.preheader

vec.epilog.scalar.ph3314.preheader:               ; preds = %iter.check3313, %vec.epilog.iter.check3315, %vec.epilog.middle.block3327
  %.2144.us.i.ph = phi i64 [ %.0121152.i, %iter.check3313 ], [ %i.fja, %vec.epilog.middle.block3327 ], [ %i.fiz, %vec.epilog.iter.check3315 ] ; 4 uses
  %i.fkg = sub i64 %i.fej, %.2144.us.i.ph
  %xtraiter4348 = and i64 %i.fkg, 3               ; 2 uses
  %lcmp.mod4349.not = icmp eq i64 %xtraiter4348, 0
  br i1 %lcmp.mod4349.not, label %vec.epilog.scalar.ph3314.prol.loopexit, label %vec.epilog.scalar.ph3314.prol

vec.epilog.scalar.ph3314.prol:                    ; preds = %vec.epilog.scalar.ph3314.preheader, %vec.epilog.scalar.ph3314.prol
  %.2144.us.i.prol = phi i64 [ %i.fkn, %vec.epilog.scalar.ph3314.prol ], [ %.2144.us.i.ph, %vec.epilog.scalar.ph3314.preheader ] ; 3 uses
  %prol.iter4350 = phi i64 [ %prol.iter4350.next, %vec.epilog.scalar.ph3314.prol ], [ 0, %vec.epilog.scalar.ph3314.preheader ]
  %i.fkh = getelementptr inbounds nuw [8 x i8], ptr %i.fjc, i64 %.2144.us.i.prol ; 2 uses
  %i.fki = load double, ptr %i.fkh, align 8, !tbaa !132
  %i.fkj = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %.2144.us.i.prol
  %i.fkk = load double, ptr %i.fkj, align 8, !tbaa !132
  %i.fkl = fmul reassoc nsz arcp contract afn double %i.fkk, %i.fjh
  %i.fkm = fadd reassoc nsz arcp contract afn double %i.fkl, %i.fki
  store double %i.fkm, ptr %i.fkh, align 8, !tbaa !132
  %i.fkn = add nuw nsw i64 %.2144.us.i.prol, 1    ; 2 uses
  %prol.iter4350.next = add i64 %prol.iter4350, 1 ; 2 uses
  %prol.iter4350.cmp.not = icmp eq i64 %prol.iter4350.next, %xtraiter4348
  br i1 %prol.iter4350.cmp.not, label %vec.epilog.scalar.ph3314.prol.loopexit, label %vec.epilog.scalar.ph3314.prol, !llvm.loop !150

vec.epilog.scalar.ph3314.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3314.prol, %vec.epilog.scalar.ph3314.preheader
  %.2144.us.i.unr = phi i64 [ %.2144.us.i.ph, %vec.epilog.scalar.ph3314.preheader ], [ %i.fkn, %vec.epilog.scalar.ph3314.prol ]
  %6 = sub i64 %.2144.us.i.ph, %i.fej
  %7 = icmp ugt i64 %6, -4
  br i1 %7, label %._crit_edge147.us.i, label %vec.epilog.scalar.ph3314

vec.epilog.scalar.ph3314:                         ; preds = %vec.epilog.scalar.ph3314.prol.loopexit, %vec.epilog.scalar.ph3314
  %.2144.us.i = phi i64 [ %i.flp, %vec.epilog.scalar.ph3314 ], [ %.2144.us.i.unr, %vec.epilog.scalar.ph3314.prol.loopexit ] ; 6 uses
  %i.fko = getelementptr inbounds nuw [8 x i8], ptr %i.fjc, i64 %.2144.us.i ; 2 uses
  %i.fkp = load double, ptr %i.fko, align 8, !tbaa !132
  %i.fkq = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %.2144.us.i
  %i.fkr = load double, ptr %i.fkq, align 8, !tbaa !132
  %i.fks = fmul reassoc nsz arcp contract afn double %i.fkr, %i.fjh
  %i.fkt = fadd reassoc nsz arcp contract afn double %i.fks, %i.fkp
  store double %i.fkt, ptr %i.fko, align 8, !tbaa !132
  %i.fku = add nuw nsw i64 %.2144.us.i, 1         ; 2 uses
  %i.fkv = getelementptr inbounds nuw [8 x i8], ptr %i.fjc, i64 %i.fku ; 2 uses
  %i.fkw = load double, ptr %i.fkv, align 8, !tbaa !132
  %i.fkx = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.fku
  %i.fky = load double, ptr %i.fkx, align 8, !tbaa !132
  %i.fkz = fmul reassoc nsz arcp contract afn double %i.fky, %i.fjh
  %i.fla = fadd reassoc nsz arcp contract afn double %i.fkz, %i.fkw
  store double %i.fla, ptr %i.fkv, align 8, !tbaa !132
  %i.flb = add nuw nsw i64 %.2144.us.i, 2         ; 2 uses
  %i.flc = getelementptr inbounds nuw [8 x i8], ptr %i.fjc, i64 %i.flb ; 2 uses
  %i.fld = load double, ptr %i.flc, align 8, !tbaa !132
  %i.fle = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.flb
  %i.flf = load double, ptr %i.fle, align 8, !tbaa !132
  %i.flg = fmul reassoc nsz arcp contract afn double %i.flf, %i.fjh
  %i.flh = fadd reassoc nsz arcp contract afn double %i.flg, %i.fld
  store double %i.flh, ptr %i.flc, align 8, !tbaa !132
  %i.fli = add nuw nsw i64 %.2144.us.i, 3         ; 2 uses
  %i.flj = getelementptr inbounds nuw [8 x i8], ptr %i.fjc, i64 %i.fli ; 2 uses
  %i.flk = load double, ptr %i.flj, align 8, !tbaa !132
  %i.fll = getelementptr inbounds nuw [8 x i8], ptr %i.ffy, i64 %i.fli
  %i.flm = load double, ptr %i.fll, align 8, !tbaa !132
  %i.fln = fmul reassoc nsz arcp contract afn double %i.flm, %i.fjh
  %i.flo = fadd reassoc nsz arcp contract afn double %i.fln, %i.flk
  store double %i.flo, ptr %i.flj, align 8, !tbaa !132
  %i.flp = add nuw nsw i64 %.2144.us.i, 4         ; 2 uses
  %exitcond167.not.i.3 = icmp eq i64 %i.flp, %i.fej
  br i1 %exitcond167.not.i.3, label %._crit_edge147.us.i, label %vec.epilog.scalar.ph3314, !llvm.loop !151

._crit_edge147.us.i:                              ; preds = %vec.epilog.scalar.ph3314.prol.loopexit, %vec.epilog.scalar.ph3314, %vec.epilog.middle.block3327, %middle.block3309
  %i.flq = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi, i64 %.0123148.us.i ; 2 uses
  %i.flr = load double, ptr %i.flq, align 8, !tbaa !132
  %i.fls = load double, ptr %i.fiy, align 8, !tbaa !132
  %i.flt = fmul reassoc nsz arcp contract afn double %i.fls, %i.fjh
  %i.flu = fadd reassoc nsz arcp contract afn double %i.flt, %i.flr
  store double %i.flu, ptr %i.flq, align 8, !tbaa !132
  %i.flv = add nuw nsw i64 %.0123148.us.i, 1      ; 2 uses
  %exitcond168.not.i = icmp eq i64 %i.flv, %i.fej
  br i1 %exitcond168.not.i, label %.loopexit134.i, label %iter.check3313

.preheader.i:                                     ; preds = %.loopexit134.i, %._crit_edge161.i
  %indvar3231 = phi i64 [ %indvar.next3232, %._crit_edge161.i ], [ 0, %.loopexit134.i ] ; 8 uses
  %.1122163.i = phi i64 [ %i.fnq, %._crit_edge161.i ], [ %i.fek, %.loopexit134.i ] ; 7 uses
  %i.flw = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi, i64 %.1122163.i
  %i.flx = load double, ptr %i.flw, align 8, !tbaa !132 ; 5 uses
  %i.fly = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4469, i64 %.1122163.i ; 5 uses
  store double %i.flx, ptr %i.fly, align 8, !tbaa !132
  %.3156.i = add nuw nsw i64 %.1122163.i, 1       ; 6 uses
  %i.flz = icmp slt i64 %.3156.i, %i.fej
  br i1 %i.flz, label %iter.check3263, label %._crit_edge161.i

iter.check3263:                                   ; preds = %.preheader.i
  %i.fma = mul nuw nsw i64 %.1122163.i, %i.fej
  %i.fmb = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4460, i64 %i.fma ; 3 uses
  %min.iters.check3234 = icmp ult i64 %indvar3231, 4
  br i1 %min.iters.check3234, label %vec.epilog.scalar.ph3264.preheader, label %vector.main.loop.iter.check3235

vector.main.loop.iter.check3235:                  ; preds = %iter.check3263
  %min.iters.check3236 = icmp ult i64 %indvar3231, 16
  br i1 %min.iters.check3236, label %vec.epilog.ph3267, label %vector.ph3237

vector.ph3237:                                    ; preds = %vector.main.loop.iter.check3235
  %n.mod.vf3238 = and i64 %indvar3231, 12
  %n.vec3239 = and i64 %indvar3231, -16           ; 4 uses
  %i.fmc = add i64 %.3156.i, %n.vec3239
  %i.fmd = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.flx, i64 0
  br label %vector.body3240

vector.body3240:                                  ; preds = %vector.body3240, %vector.ph3237
  %index3241 = phi i64 [ 0, %vector.ph3237 ], [ %index.next3254, %vector.body3240 ] ; 2 uses
  %vec.phi3242 = phi <4 x double> [ %i.fmd, %vector.ph3237 ], [ %i.fmr, %vector.body3240 ]
  %vec.phi3243 = phi <4 x double> [ zeroinitializer, %vector.ph3237 ], [ %i.fms, %vector.body3240 ]
  %vec.phi3244 = phi <4 x double> [ zeroinitializer, %vector.ph3237 ], [ %i.fmt, %vector.body3240 ]
  %vec.phi3245 = phi <4 x double> [ zeroinitializer, %vector.ph3237 ], [ %i.fmu, %vector.body3240 ]
  %i.fme = add nuw i64 %.3156.i, %index3241       ; 2 uses
  %i.fmf = getelementptr inbounds nuw [8 x i8], ptr %i.fmb, i64 %i.fme ; 4 uses
  %i.fmg = getelementptr inbounds nuw i8, ptr %i.fmf, i64 32
  %i.fmh = getelementptr inbounds nuw i8, ptr %i.fmf, i64 64
  %i.fmi = getelementptr inbounds nuw i8, ptr %i.fmf, i64 96
  %wide.load3246 = load <4 x double>, ptr %i.fmf, align 8, !tbaa !132
  %wide.load3247 = load <4 x double>, ptr %i.fmg, align 8, !tbaa !132
  %wide.load3248 = load <4 x double>, ptr %i.fmh, align 8, !tbaa !132
  %wide.load3249 = load <4 x double>, ptr %i.fmi, align 8, !tbaa !132
  %i.fmj = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4469, i64 %i.fme ; 4 uses
  %i.fmk = getelementptr inbounds nuw i8, ptr %i.fmj, i64 32
  %i.fml = getelementptr inbounds nuw i8, ptr %i.fmj, i64 64
  %i.fmm = getelementptr inbounds nuw i8, ptr %i.fmj, i64 96
  %wide.load3250 = load <4 x double>, ptr %i.fmj, align 8, !tbaa !132
  %wide.load3251 = load <4 x double>, ptr %i.fmk, align 8, !tbaa !132
  %wide.load3252 = load <4 x double>, ptr %i.fml, align 8, !tbaa !132
  %wide.load3253 = load <4 x double>, ptr %i.fmm, align 8, !tbaa !132
  %i.fmn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3250, %wide.load3246
  %i.fmo = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3251, %wide.load3247
  %i.fmp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3252, %wide.load3248
  %i.fmq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3253, %wide.load3249
  %i.fmr = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3242, %i.fmn ; 2 uses
  %i.fms = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3243, %i.fmo ; 2 uses
  %i.fmt = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3244, %i.fmp ; 2 uses
  %i.fmu = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3245, %i.fmq ; 2 uses
  %index.next3254 = add nuw i64 %index3241, 16    ; 2 uses
  %i.fmv = icmp eq i64 %index.next3254, %n.vec3239
  br i1 %i.fmv, label %middle.block3255, label %vector.body3240, !llvm.loop !152

middle.block3255:                                 ; preds = %vector.body3240
  %bin.rdx3256 = fadd reassoc nsz arcp contract afn <4 x double> %i.fms, %i.fmr
  %bin.rdx3257 = fadd reassoc nsz arcp contract afn <4 x double> %i.fmt, %bin.rdx3256
  %bin.rdx3258 = fadd reassoc nsz arcp contract afn <4 x double> %i.fmu, %bin.rdx3257
  %i.fmw = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx3258) ; 4 uses
  store double %i.fmw, ptr %i.fly, align 8, !tbaa !132
  %cmp.n3259 = icmp eq i64 %indvar3231, %n.vec3239
  br i1 %cmp.n3259, label %._crit_edge161.i, label %vec.epilog.iter.check3265

vec.epilog.iter.check3265:                        ; preds = %middle.block3255
  %min.epilog.iters.check3266 = icmp eq i64 %n.mod.vf3238, 0
  br i1 %min.epilog.iters.check3266, label %vec.epilog.scalar.ph3264.preheader, label %vec.epilog.ph3267, !prof !148

vec.epilog.ph3267:                                ; preds = %vector.main.loop.iter.check3235, %vec.epilog.iter.check3265
  %vec.epilog.resume.val3260 = phi i64 [ %n.vec3239, %vec.epilog.iter.check3265 ], [ 0, %vector.main.loop.iter.check3235 ]
  %bc.merge.rdx3262 = phi double [ %i.fmw, %vec.epilog.iter.check3265 ], [ %i.flx, %vector.main.loop.iter.check3235 ]
  %n.vec3269 = and i64 %indvar3231, -4            ; 3 uses
  %i.fmx = add i64 %.3156.i, %n.vec3269
  %i.fmy = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx3262, i64 0
  br label %vec.epilog.vector.body3270

vec.epilog.vector.body3270:                       ; preds = %vec.epilog.vector.body3270, %vec.epilog.ph3267
  %index3271 = phi i64 [ %vec.epilog.resume.val3260, %vec.epilog.ph3267 ], [ %index.next3275, %vec.epilog.vector.body3270 ] ; 2 uses
  %vec.phi3272 = phi <4 x double> [ %i.fmy, %vec.epilog.ph3267 ], [ %i.fnd, %vec.epilog.vector.body3270 ]
  %i.fmz = add nuw i64 %.3156.i, %index3271       ; 2 uses
  %i.fna = getelementptr inbounds nuw [8 x i8], ptr %i.fmb, i64 %i.fmz
  %wide.load3273 = load <4 x double>, ptr %i.fna, align 8, !tbaa !132
  %i.fnb = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4469, i64 %i.fmz
  %wide.load3274 = load <4 x double>, ptr %i.fnb, align 8, !tbaa !132
  %i.fnc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3274, %wide.load3273
  %i.fnd = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3272, %i.fnc ; 2 uses
  %index.next3275 = add nuw i64 %index3271, 4     ; 2 uses
  %i.fne = icmp eq i64 %index.next3275, %n.vec3269
  br i1 %i.fne, label %vec.epilog.middle.block3276, label %vec.epilog.vector.body3270, !llvm.loop !153

vec.epilog.middle.block3276:                      ; preds = %vec.epilog.vector.body3270
  %i.fnf = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fnd) ; 3 uses
  store double %i.fnf, ptr %i.fly, align 8, !tbaa !132
  %cmp.n3277 = icmp eq i64 %indvar3231, %n.vec3269
  br i1 %cmp.n3277, label %._crit_edge161.i, label %vec.epilog.scalar.ph3264.preheader

vec.epilog.scalar.ph3264.preheader:               ; preds = %iter.check3263, %vec.epilog.iter.check3265, %vec.epilog.middle.block3276
  %.3158.i.ph = phi i64 [ %.3156.i, %iter.check3263 ], [ %i.fmc, %vec.epilog.iter.check3265 ], [ %i.fmx, %vec.epilog.middle.block3276 ]
  %storemerge157.i.ph = phi double [ %i.flx, %iter.check3263 ], [ %i.fmw, %vec.epilog.iter.check3265 ], [ %i.fnf, %vec.epilog.middle.block3276 ]
  br label %vec.epilog.scalar.ph3264

vec.epilog.scalar.ph3264:                         ; preds = %vec.epilog.scalar.ph3264.preheader, %vec.epilog.scalar.ph3264
  %.3158.i = phi i64 [ %.3.i, %vec.epilog.scalar.ph3264 ], [ %.3158.i.ph, %vec.epilog.scalar.ph3264.preheader ] ; 3 uses
  %storemerge157.i = phi double [ %i.fnl, %vec.epilog.scalar.ph3264 ], [ %storemerge157.i.ph, %vec.epilog.scalar.ph3264.preheader ]
  %i.fng = getelementptr inbounds nuw [8 x i8], ptr %i.fmb, i64 %.3158.i
  %i.fnh = load double, ptr %i.fng, align 8, !tbaa !132
  %i.fni = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4469, i64 %.3158.i
  %i.fnj = load double, ptr %i.fni, align 8, !tbaa !132
  %i.fnk = fmul reassoc nsz arcp contract afn double %i.fnj, %i.fnh
  %i.fnl = fsub reassoc nsz arcp contract afn double %storemerge157.i, %i.fnk ; 3 uses
  store double %i.fnl, ptr %i.fly, align 8, !tbaa !132
  %.3.i = add nuw nsw i64 %.3158.i, 1             ; 2 uses
  %exitcond170.not.i = icmp eq i64 %.3.i, %i.fej
  br i1 %exitcond170.not.i, label %._crit_edge161.i, label %vec.epilog.scalar.ph3264, !llvm.loop !154

._crit_edge161.i:                                 ; preds = %vec.epilog.scalar.ph3264, %middle.block3255, %vec.epilog.middle.block3276, %.preheader.i
  %storemerge.lcssa.i = phi double [ %i.flx, %.preheader.i ], [ %i.fnf, %vec.epilog.middle.block3276 ], [ %i.fmw, %middle.block3255 ], [ %i.fnl, %vec.epilog.scalar.ph3264 ]
  %i.fnm = mul nuw i64 %.1122163.i, %.1122132.i
  %i.fnn = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2600.sroa.phi4460, i64 %i.fnm
  %i.fno = load double, ptr %i.fnn, align 8, !tbaa !132
  %i.fnp = fdiv reassoc nsz arcp contract afn double %storemerge.lcssa.i, %i.fno
  store double %i.fnp, ptr %i.fly, align 8, !tbaa !132
  %i.fnq = add nsw i64 %.1122163.i, -1
  %i.fnr = icmp sgt i64 %.1122163.i, 0
  %indvar.next3232 = add i64 %indvar3231, 1
  br i1 %i.fnr, label %.preheader.i, label %_LinEqSolve.exit

bb.ay:                                            ; preds = %bb.ax
  %i.fns = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.fnt = and i32 %i.fns, 33554432
  %.not1789 = icmp eq i32 %i.fnt, 0
  br i1 %.not1789, label %_LinEqSolve.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fnu = trunc nuw nsw i64 %indvars.iv2600 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, i32 noundef %i.fnu, i32 noundef 0) #20
  br label %_LinEqSolve.exit

_LinEqSolve.exit:                                 ; preds = %._crit_edge161.i, %bb.ay, %bb.az
  %.6 = phi i32 [ 0, %bb.ay ], [ 0, %bb.az ], [ %.42123, %._crit_edge161.i ]
  %i.fnv = getelementptr inbounds nuw i8, ptr %indvars.iv2600.sroa.phi4460, i64 2048 ; 6 uses
  %i.fnw = getelementptr inbounds nuw i8, ptr %indvars.iv2600.sroa.phi, i64 128 ; 5 uses
  %i.fnx = getelementptr inbounds nuw i8, ptr %indvars.iv2600.sroa.phi4469, i64 128 ; 4 uses
  %i.fny = shl nuw nsw i64 %indvars.iv2600, 12    ; 5 uses
  %i.fnz = add nuw nsw i64 %i.fem, %i.fny         ; 2 uses
  %scevgep3159 = getelementptr i8, ptr %scevgep3158, i64 %i.fny
  %i.foa = or disjoint i64 %i.fny, 2048           ; 3 uses
  %scevgep3211 = getelementptr i8, ptr %scevgep3210, i64 %i.fny
  %i.fob = getelementptr i8, ptr %i.l, i64 %i.foa
  %i.foc = getelementptr i8, ptr %i.fff, i64 %i.fny
  %i.fod = getelementptr i8, ptr %i.l, i64 %i.foa
  %i.foe = getelementptr i8, ptr %i.l, i64 %i.fnz
  %i.fof = getelementptr i8, ptr %i.l, i64 %i.foa
  %i.fog = getelementptr i8, ptr %i.l, i64 %i.fnz
  br label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %.loopexit134.i.1, %_LinEqSolve.exit
  %.0121152.i.1 = phi i64 [ %i.fot, %.loopexit134.i.1 ], [ 0, %_LinEqSolve.exit ] ; 27 uses
  %i.foh = sub i64 %i.fek, %.0121152.i.1
  %i.foi = sub i64 %i.ffc, %.0121152.i.1
  %i.foj = mul i64 %i.fes, %.0121152.i.1
  %scevgep3206 = getelementptr i8, ptr %i.fob, i64 %i.foj
  %i.fok = mul i64 %i.fet, %.0121152.i.1
  %scevgep3207 = getelementptr i8, ptr %i.foc, i64 %i.fok
  %i.fol = shl i64 %.0121152.i.1, 3
  %scevgep3208 = getelementptr i8, ptr %i.fod, i64 %i.fol
  %i.fom = sub nsw i64 %i.fej, %.0121152.i.1      ; 10 uses
  %i.fon = mul i64 %i.fen, %.0121152.i.1          ; 2 uses
  %scevgep3156 = getelementptr i8, ptr %i.foe, i64 %i.fon
  %scevgep3160 = getelementptr i8, ptr %i.fof, i64 %i.fon
  %i.foo = mul i64 %i.feq, %.0121152.i.1
  %scevgep3161 = getelementptr i8, ptr %i.fog, i64 %i.foo
  %i.fop = mul nuw nsw i64 %.0121152.i.1, %i.fej
  %i.foq = getelementptr inbounds nuw [8 x i8], ptr %i.fnv, i64 %i.fop ; 14 uses
  %i.for = getelementptr inbounds nuw [8 x i8], ptr %i.foq, i64 %.0121152.i.1 ; 3 uses
  %i.fos = load double, ptr %i.for, align 8, !tbaa !132 ; 2 uses
  %i.fot = add nuw nsw i64 %.0121152.i.1, 1       ; 5 uses
  %invariant.gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.fnv, i64 %.0121152.i.1 ; 5 uses
  %i.fou = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fos) ; 2 uses
  %xtraiter4353 = and i64 %i.foh, 3               ; 2 uses
  %lcmp.mod4354.not = icmp eq i64 %xtraiter4353, 0
  br i1 %lcmp.mod4354.not, label %.lr.ph.i.1.prol.loopexit, label %.lr.ph.i.1.prol

.lr.ph.i.1.prol:                                  ; preds = %.lr.ph.preheader.i.1, %.lr.ph.i.1.prol
  %.0140.i.1.prol = phi i64 [ %.1.i.1.prol, %.lr.ph.i.1.prol ], [ %.0121152.i.1, %.lr.ph.preheader.i.1 ]
  %.0124139.i.1.prol = phi i64 [ %i.foz, %.lr.ph.i.1.prol ], [ %i.fot, %.lr.ph.preheader.i.1 ] ; 3 uses
  %.0126138.i.1.prol = phi double [ %.1127.i.1.prol, %.lr.ph.i.1.prol ], [ %i.fou, %.lr.ph.preheader.i.1 ] ; 2 uses
  %prol.iter4355 = phi i64 [ %prol.iter4355.next, %.lr.ph.i.1.prol ], [ 0, %.lr.ph.preheader.i.1 ]
  %i.fov = mul nuw nsw i64 %.0124139.i.1.prol, %i.fej
  %gep.i.1.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fov
  %i.fow = load double, ptr %gep.i.1.prol, align 8, !tbaa !132 ; 2 uses
  %i.fox = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fow)
  %i.foy = fcmp reassoc nsz arcp contract afn olt double %.0126138.i.1.prol, %i.fox ; 2 uses
  %.1127.i.1.prol = select nsz i1 %i.foy, double %i.fow, double %.0126138.i.1.prol ; 2 uses
  %.1.i.1.prol = select i1 %i.foy, i64 %.0124139.i.1.prol, i64 %.0140.i.1.prol ; 3 uses
  %i.foz = add nuw nsw i64 %.0124139.i.1.prol, 1  ; 2 uses
  %prol.iter4355.next = add i64 %prol.iter4355, 1 ; 2 uses
  %prol.iter4355.cmp.not = icmp eq i64 %prol.iter4355.next, %xtraiter4353
  br i1 %prol.iter4355.cmp.not, label %.lr.ph.i.1.prol.loopexit, label %.lr.ph.i.1.prol, !llvm.loop !155

.lr.ph.i.1.prol.loopexit:                         ; preds = %.lr.ph.i.1.prol, %.lr.ph.preheader.i.1
  %.1.i.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i.1 ], [ %.1.i.1.prol, %.lr.ph.i.1.prol ]
  %.0140.i.1.unr = phi i64 [ %.0121152.i.1, %.lr.ph.preheader.i.1 ], [ %.1.i.1.prol, %.lr.ph.i.1.prol ]
  %.0124139.i.1.unr = phi i64 [ %i.fot, %.lr.ph.preheader.i.1 ], [ %i.foz, %.lr.ph.i.1.prol ]
  %.0126138.i.1.unr = phi double [ %i.fou, %.lr.ph.preheader.i.1 ], [ %.1127.i.1.prol, %.lr.ph.i.1.prol ]
  %i.fpa = icmp ult i64 %i.foi, 3
  br i1 %i.fpa, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1.prol.loopexit, %.lr.ph.i.1
  %.0140.i.1 = phi i64 [ %.1.i.1.3, %.lr.ph.i.1 ], [ %.0140.i.1.unr, %.lr.ph.i.1.prol.loopexit ]
  %.0124139.i.1 = phi i64 [ %i.fpu, %.lr.ph.i.1 ], [ %.0124139.i.1.unr, %.lr.ph.i.1.prol.loopexit ] ; 6 uses
  %.0126138.i.1 = phi double [ %.1127.i.1.3, %.lr.ph.i.1 ], [ %.0126138.i.1.unr, %.lr.ph.i.1.prol.loopexit ] ; 2 uses
  %i.fpb = mul nuw nsw i64 %.0124139.i.1, %i.fej
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpb
  %i.fpc = load double, ptr %gep.i.1, align 8, !tbaa !132 ; 2 uses
  %i.fpd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fpc)
  %i.fpe = fcmp reassoc nsz arcp contract afn olt double %.0126138.i.1, %i.fpd ; 2 uses
  %.1127.i.1 = select nsz i1 %i.fpe, double %i.fpc, double %.0126138.i.1 ; 2 uses
  %.1.i.1 = select i1 %i.fpe, i64 %.0124139.i.1, i64 %.0140.i.1
  %i.fpf = add nuw nsw i64 %.0124139.i.1, 1       ; 2 uses
  %i.fpg = mul nuw nsw i64 %i.fpf, %i.fej
  %gep.i.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpg
  %i.fph = load double, ptr %gep.i.1.1, align 8, !tbaa !132 ; 2 uses
  %i.fpi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fph)
  %i.fpj = fcmp reassoc nsz arcp contract afn olt double %.1127.i.1, %i.fpi ; 2 uses
  %.1127.i.1.1 = select nsz i1 %i.fpj, double %i.fph, double %.1127.i.1 ; 2 uses
  %.1.i.1.1 = select i1 %i.fpj, i64 %i.fpf, i64 %.1.i.1
  %i.fpk = add nuw nsw i64 %.0124139.i.1, 2       ; 2 uses
  %i.fpl = mul nuw nsw i64 %i.fpk, %i.fej
  %gep.i.1.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpl
  %i.fpm = load double, ptr %gep.i.1.2, align 8, !tbaa !132 ; 2 uses
  %i.fpn = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fpm)
  %i.fpo = fcmp reassoc nsz arcp contract afn olt double %.1127.i.1.1, %i.fpn ; 2 uses
  %.1127.i.1.2 = select nsz i1 %i.fpo, double %i.fpm, double %.1127.i.1.1 ; 2 uses
  %.1.i.1.2 = select i1 %i.fpo, i64 %i.fpk, i64 %.1.i.1.1
  %i.fpp = add nuw nsw i64 %.0124139.i.1, 3       ; 2 uses
  %i.fpq = mul nuw nsw i64 %i.fpp, %i.fej
  %gep.i.1.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fpq
  %i.fpr = load double, ptr %gep.i.1.3, align 8, !tbaa !132 ; 2 uses
  %i.fps = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fpr)
  %i.fpt = fcmp reassoc nsz arcp contract afn olt double %.1127.i.1.2, %i.fps ; 2 uses
  %.1127.i.1.3 = select nsz i1 %i.fpt, double %i.fpr, double %.1127.i.1.2
  %.1.i.1.3 = select i1 %i.fpt, i64 %i.fpp, i64 %.1.i.1.2 ; 2 uses
  %i.fpu = add nuw nsw i64 %.0124139.i.1, 4       ; 2 uses
  %exitcond.not.i.1.3 = icmp eq i64 %i.fpu, %i.fej
  br i1 %exitcond.not.i.1.3, label %._crit_edge.i.1, label %.lr.ph.i.1

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %.lr.ph.i.1.prol.loopexit
  %.1.i.1.lcssa = phi i64 [ %.1.i.1.lcssa.unr, %.lr.ph.i.1.prol.loopexit ], [ %.1.i.1.3, %.lr.ph.i.1 ] ; 5 uses
  %.not.i1832.1 = icmp eq i64 %.1.i.1.lcssa, %.0121152.i.1
  br i1 %.not.i1832.1, label %bb.ba, label %.lr.ph142.i.1

.lr.ph142.i.1:                                    ; preds = %._crit_edge.i.1
  %i.fpv = mul nsw i64 %.1.i.1.lcssa, %i.fej
  %i.fpw = getelementptr [8 x i8], ptr %i.fnv, i64 %i.fpv ; 6 uses
  %min.iters.check3216 = icmp ult i64 %i.fom, 8
  br i1 %min.iters.check3216, label %scalar.ph.preheader, label %vector.memcheck3205

vector.memcheck3205:                              ; preds = %.lr.ph142.i.1
  %i.fpx = mul i64 %i.feu, %.1.i.1.lcssa
  %scevgep3209 = getelementptr i8, ptr %scevgep3208, i64 %i.fpx
  %i.fpy = shl i64 %.1.i.1.lcssa, 3
  %i.fpz = add i64 %i.fpy, 8
  %i.fqa = mul i64 %i.fpz, %i.fej
  %scevgep3212 = getelementptr i8, ptr %scevgep3211, i64 %i.fqa
  %bound03213 = icmp ult ptr %scevgep3206, %scevgep3212
  %bound13214 = icmp ult ptr %scevgep3209, %scevgep3207
  %found.conflict3215 = and i1 %bound03213, %bound13214
  br i1 %found.conflict3215, label %scalar.ph.preheader, label %vector.ph3217

vector.ph3217:                                    ; preds = %vector.memcheck3205
  %n.vec3219 = and i64 %i.fom, -8                 ; 3 uses
  %i.fqb = add i64 %.0121152.i.1, %n.vec3219
  br label %vector.body3220

vector.body3220:                                  ; preds = %vector.body3220, %vector.ph3217
  %index3221 = phi i64 [ 0, %vector.ph3217 ], [ %index.next3226, %vector.body3220 ] ; 2 uses
  %i.fqc = add nuw i64 %.0121152.i.1, %index3221  ; 2 uses
  %i.fqd = getelementptr inbounds nuw [8 x i8], ptr %i.foq, i64 %i.fqc ; 3 uses
  %i.fqe = getelementptr inbounds nuw i8, ptr %i.fqd, i64 32 ; 2 uses
  %wide.load3222 = load <4 x double>, ptr %i.fqd, align 8, !tbaa !132, !alias.scope !156, !noalias !159
  %wide.load3223 = load <4 x double>, ptr %i.fqe, align 8, !tbaa !132, !alias.scope !156, !noalias !159
  %i.fqf = getelementptr [8 x i8], ptr %i.fpw, i64 %i.fqc ; 3 uses
  %i.fqg = getelementptr i8, ptr %i.fqf, i64 32   ; 2 uses
  %wide.load3224 = load <4 x double>, ptr %i.fqf, align 8, !tbaa !132, !alias.scope !159
  %wide.load3225 = load <4 x double>, ptr %i.fqg, align 8, !tbaa !132, !alias.scope !159
  store <4 x double> %wide.load3224, ptr %i.fqd, align 8, !tbaa !132, !alias.scope !156, !noalias !159
  store <4 x double> %wide.load3225, ptr %i.fqe, align 8, !tbaa !132, !alias.scope !156, !noalias !159
  store <4 x double> %wide.load3222, ptr %i.fqf, align 8, !tbaa !132, !alias.scope !159
  store <4 x double> %wide.load3223, ptr %i.fqg, align 8, !tbaa !132, !alias.scope !159
  %index.next3226 = add nuw i64 %index3221, 8     ; 2 uses
  %i.fqh = icmp eq i64 %index.next3226, %n.vec3219
  br i1 %i.fqh, label %middle.block3227, label %vector.body3220, !llvm.loop !161

middle.block3227:                                 ; preds = %vector.body3220
  %cmp.n3228 = icmp eq i64 %i.fom, %n.vec3219
  br i1 %cmp.n3228, label %._crit_edge143.i.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck3205, %.lr.ph142.i.1, %middle.block3227
  %.1125141.i.1.ph = phi i64 [ %.0121152.i.1, %vector.memcheck3205 ], [ %.0121152.i.1, %.lr.ph142.i.1 ], [ %i.fqb, %middle.block3227 ] ; 4 uses
  %i.fqi = sub i64 %i.fej, %.1125141.i.1.ph
  %xtraiter4356 = and i64 %i.fqi, 3               ; 2 uses
  %lcmp.mod4357.not = icmp eq i64 %xtraiter4356, 0
  br i1 %lcmp.mod4357.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1125141.i.1.prol = phi i64 [ %i.fqn, %scalar.ph.prol ], [ %.1125141.i.1.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter4358 = phi i64 [ %prol.iter4358.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fqj = getelementptr inbounds nuw [8 x i8], ptr %i.foq, i64 %.1125141.i.1.prol ; 2 uses
  %i.fqk = load double, ptr %i.fqj, align 8, !tbaa !132
  %i.fql = getelementptr [8 x i8], ptr %i.fpw, i64 %.1125141.i.1.prol ; 2 uses
  %i.fqm = load double, ptr %i.fql, align 8, !tbaa !132
  store double %i.fqm, ptr %i.fqj, align 8, !tbaa !132
  store double %i.fqk, ptr %i.fql, align 8, !tbaa !132
  %i.fqn = add nuw nsw i64 %.1125141.i.1.prol, 1  ; 2 uses
  %prol.iter4358.next = add i64 %prol.iter4358, 1 ; 2 uses
  %prol.iter4358.cmp.not = icmp eq i64 %prol.iter4358.next, %xtraiter4356
  br i1 %prol.iter4358.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !162

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1125141.i.1.unr = phi i64 [ %.1125141.i.1.ph, %scalar.ph.preheader ], [ %i.fqn, %scalar.ph.prol ]
  %i.fqo = sub i64 %.1125141.i.1.ph, %i.fej
  %i.fqp = icmp ugt i64 %i.fqo, -4
  br i1 %i.fqp, label %._crit_edge143.i.1, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1125141.i.1 = phi i64 [ %i.frj, %scalar.ph ], [ %.1125141.i.1.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fqq = getelementptr inbounds nuw [8 x i8], ptr %i.foq, i64 %.1125141.i.1 ; 2 uses
  %i.fqr = load double, ptr %i.fqq, align 8, !tbaa !132
  %i.fqs = getelementptr [8 x i8], ptr %i.fpw, i64 %.1125141.i.1 ; 2 uses
  %i.fqt = load double, ptr %i.fqs, align 8, !tbaa !132
  store double %i.fqt, ptr %i.fqq, align 8, !tbaa !132
  store double %i.fqr, ptr %i.fqs, align 8, !tbaa !132
  %i.fqu = add nuw nsw i64 %.1125141.i.1, 1       ; 2 uses
  %i.fqv = getelementptr inbounds nuw [8 x i8], ptr %i.foq, i64 %i.fqu ; 2 uses
  %i.fqw = load double, ptr %i.fqv, align 8, !tbaa !132
  %i.fqx = getelementptr [8 x i8], ptr %i.fpw, i64 %i.fqu ; 2 uses
  %i.fqy = load double, ptr %i.fqx, align 8, !tbaa !132
  store double %i.fqy, ptr %i.fqv, align 8, !tbaa !132
  store double %i.fqw, ptr %i.fqx, align 8, !tbaa !132
  %i.fqz = add nuw nsw i64 %.1125141.i.1, 2       ; 2 uses
  %i.fra = getelementptr inbounds nuw [8 x i8], ptr %i.foq, i64 %i.fqz ; 2 uses
  %i.frb = load double, ptr %i.fra, align 8, !tbaa !132
  %i.frc = getelementptr [8 x i8], ptr %i.fpw, i64 %i.fqz ; 2 uses
  %i.frd = load double, ptr %i.frc, align 8, !tbaa !132
  store double %i.frd, ptr %i.fra, align 8, !tbaa !132
  store double %i.frb, ptr %i.frc, align 8, !tbaa !132
  %i.fre = add nuw nsw i64 %.1125141.i.1, 3       ; 2 uses
  %i.frf = getelementptr inbounds nuw [8 x i8], ptr %i.foq, i64 %i.fre ; 2 uses
  %i.frg = load double, ptr %i.frf, align 8, !tbaa !132
  %i.frh = getelementptr [8 x i8], ptr %i.fpw, i64 %i.fre ; 2 uses
  %i.fri = load double, ptr %i.frh, align 8, !tbaa !132
  store double %i.fri, ptr %i.frf, align 8, !tbaa !132
  store double %i.frg, ptr %i.frh, align 8, !tbaa !132
  %i.frj = add nuw nsw i64 %.1125141.i.1, 4       ; 2 uses
  %exitcond166.not.i.1.3 = icmp eq i64 %i.frj, %i.fej
  br i1 %exitcond166.not.i.1.3, label %._crit_edge143.i.1, label %scalar.ph, !llvm.loop !163

._crit_edge143.i.1:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block3227
  %i.frk = getelementptr inbounds nuw [8 x i8], ptr %i.fnw, i64 %.0121152.i.1 ; 2 uses
end_hunk_0
