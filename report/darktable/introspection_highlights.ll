inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_process_opposed:bb.a

vec.epilog.ph591:                                 ; preds = %vector.main.loop.iter.check569, %vec.epilog.iter.check589
  %vec.epilog.resume.val586 = phi i64 [ %n.vec572, %vec.epilog.iter.check589 ], [ 0, %vector.main.loop.iter.check569 ] ; 2 uses
  %broadcast.splatinsert597 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val586, i64 0
  %broadcast.splat598 = shufflevector <4 x i64> %broadcast.splatinsert597, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat598, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body599

vec.epilog.vector.body599:                        ; preds = %vec.epilog.vector.body599, %vec.epilog.ph591
  %index600 = phi i64 [ %vec.epilog.resume.val586, %vec.epilog.ph591 ], [ %index.next604, %vec.epilog.vector.body599 ] ; 2 uses
  %vec.ind601 = phi <4 x i64> [ %induction, %vec.epilog.ph591 ], [ %vec.ind.next605, %vec.epilog.vector.body599 ] ; 2 uses
  %i.aeo = add <4 x i64> %vec.ind601, %broadcast.splat594 ; 2 uses
  %i.aep = extractelement <4 x i64> %i.aeo, i64 0
  %i.aeq = icmp ult <4 x i64> %i.aeo, %broadcast.splat596
  %i.aer = getelementptr [4 x i8], ptr %i.ady, i64 %i.aep
  %wide.masked.load602 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aer, <4 x i1> %i.aeq, <4 x float> zeroinitializer), !tbaa !11, !alias.scope !476
  %i.aes = getelementptr [4 x i8], ptr %i.adw, i64 %index600
  store <4 x float> %wide.masked.load602, ptr %i.aes, align 4, !tbaa !11, !alias.scope !479, !noalias !476
  %index.next604 = add nuw i64 %index600, 4       ; 2 uses
  %vec.ind.next605 = add nuw <4 x i64> %vec.ind601, splat (i64 4)
  %i.aet = icmp eq i64 %index.next604, %n.vec592
  br i1 %i.aet, label %vec.epilog.middle.block606, label %vec.epilog.vector.body599, !llvm.loop !482

vec.epilog.middle.block606:                       ; preds = %vec.epilog.vector.body599
  br i1 %cmp.n607, label %._crit_edge405, label %.lr.ph.split406.split.preheader

.lr.ph.split406.split.preheader:                  ; preds = %iter.check587, %vec.epilog.iter.check589, %vec.epilog.middle.block606
  %.0271404.ph = phi i64 [ 0, %iter.check587 ], [ %n.vec592, %vec.epilog.middle.block606 ], [ %n.vec572, %vec.epilog.iter.check589 ] ; 3 uses
  br i1 %lcmp.mod618.not, label %.lr.ph.split406.split.prol.loopexit, label %.lr.ph.split406.split.prol

.lr.ph.split406.split.prol:                       ; preds = %.lr.ph.split406.split.preheader, %bb.ai
  %.0271404.prol = phi i64 [ %i.aez, %bb.ai ], [ %.0271404.ph, %.lr.ph.split406.split.preheader ] ; 3 uses
  %prol.iter619 = phi i64 [ %prol.iter619.next, %bb.ai ], [ 0, %.lr.ph.split406.split.preheader ]
  %i.aeu = add i64 %.0271404.prol, %i.aco         ; 2 uses
  %i.aev = icmp ult i64 %i.aeu, %i.acq
  br i1 %i.aev, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split406.split.prol
  %i.aew = getelementptr [4 x i8], ptr %i.ady, i64 %i.aeu
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.split406.split.prol
  %.1.prol = phi nsz float [ %i.aex, %bb.ah ], [ 0.000000e+00, %.lr.ph.split406.split.prol ]
  %i.aey = getelementptr [4 x i8], ptr %i.adw, i64 %.0271404.prol
  store float %.1.prol, ptr %i.aey, align 4, !tbaa !11
  %i.aez = add nuw i64 %.0271404.prol, 1          ; 2 uses
  %prol.iter619.next = add i64 %prol.iter619, 1   ; 2 uses
  %prol.iter619.cmp.not = icmp eq i64 %prol.iter619.next, %xtraiter617
  br i1 %prol.iter619.cmp.not, label %.lr.ph.split406.split.prol.loopexit, label %.lr.ph.split406.split.prol, !llvm.loop !483

.lr.ph.split406.split.prol.loopexit:              ; preds = %bb.ai, %.lr.ph.split406.split.preheader
  %.0271404.unr = phi i64 [ %.0271404.ph, %.lr.ph.split406.split.preheader ], [ %i.aez, %bb.ai ]
  %i.afa = sub nsw i64 %.0271404.ph, %i.aci
  %i.afb = icmp ugt i64 %i.afa, -4
  br i1 %i.afb, label %._crit_edge405, label %.lr.ph.split406.split

.lr.ph.split406.split.us.preheader:               ; preds = %.lr.ph.split406
  %i.afc = getelementptr [4 x i8], ptr %2, i64 %i.adn
  br label %.lr.ph.split406.split.us

.lr.ph.split406.split.us:                         ; preds = %.lr.ph.split406.split.us.preheader, %bb.an
  %.0271404.us408 = phi i64 [ %i.agc, %bb.an ], [ 0, %.lr.ph.split406.split.us.preheader ] ; 3 uses
  %i.afd = add i64 %.0271404.us408, %i.aco        ; 3 uses
  %i.afe = icmp ult i64 %i.afd, %i.acq
  br i1 %i.afe, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %.lr.ph.split406.split.us
  %i.aff = trunc i64 %i.afd to i32                ; 3 uses
  br i1 %i.acj, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.afg = and i32 %i.aff, 1
  %.tr.i.i332.us = or disjoint i32 %i.adr, %i.afg
  %i.afh = shl nuw nsw i32 %.tr.i.i332.us, 1
  %i.afi = lshr i32 %i.j, %i.afh
  %i.afj = and i32 %i.afi, 3
  br label %fcol.exit334.us

bb.al:                                            ; preds = %bb.aj
  %i.afk = add nsw i32 %i.aff, 600
  %i.afl = srem i32 %i.afk, 6
  %i.afm = sext i32 %i.afl to i64
  %i.afn = getelementptr inbounds i8, ptr %i.adv, i64 %i.afm
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !332
  %i.afp = zext i8 %i.afo to i32
  br label %fcol.exit334.us

fcol.exit334.us:                                  ; preds = %bb.al, %bb.ak
  %.0.i333.us = phi i32 [ %i.afp, %bb.al ], [ %i.afj, %bb.ak ]
  %i.afq = getelementptr [4 x i8], ptr %i.afc, i64 %i.afd
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !11 ; 4 uses
  %i.afs = zext nneg i32 %.0.i333.us to i64       ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.afs
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !11
  %i.afv = fcmp reassoc nsz arcp contract afn ult float %i.afr, %i.afu
  br i1 %i.afv, label %bb.an, label %bb.am

bb.am:                                            ; preds = %fcol.exit334.us
  %i.afw = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.adp, i32 noundef %i.aff, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.afs
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !11
  %i.afz = fadd reassoc nsz arcp contract afn float %i.afy, %i.afw ; 2 uses
  %i.aga = fcmp reassoc nsz arcp contract afn ogt float %i.afr, %i.afz
  %.325.us = select reassoc nsz arcp contract afn i1 %i.aga, float %i.afr, float %i.afz
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %fcol.exit334.us, %.lr.ph.split406.split.us
  %.1.us409 = phi nsz float [ %i.afr, %fcol.exit334.us ], [ 0.000000e+00, %.lr.ph.split406.split.us ], [ %.325.us, %bb.am ]
  %i.agb = getelementptr [4 x i8], ptr %i.adw, i64 %.0271404.us408
  store float %.1.us409, ptr %i.agb, align 4, !tbaa !11
  %i.agc = add nuw i64 %.0271404.us408, 1         ; 2 uses
  %exitcond487.not = icmp eq i64 %i.agc, %i.aci
  br i1 %exitcond487.not, label %._crit_edge405, label %.lr.ph.split406.split.us

._crit_edge405:                                   ; preds = %.lr.ph.split406.split.prol.loopexit, %bb.as, %bb.an, %middle.block584, %vec.epilog.middle.block606, %.lr.ph.split406.us.preheader
  %i.agd = add nuw i64 %.0272410, 1               ; 2 uses
  %exitcond488.not = icmp eq i64 %i.agd, %i.acf
  br i1 %exitcond488.not, label %.loopexit, label %.preheader

.lr.ph.split406.split:                            ; preds = %.lr.ph.split406.split.prol.loopexit, %bb.as
  %.0271404 = phi i64 [ %i.ahb, %bb.as ], [ %.0271404.unr, %.lr.ph.split406.split.prol.loopexit ] ; 6 uses
  %i.age = add i64 %.0271404, %i.aco              ; 2 uses
  %i.agf = icmp ult i64 %i.age, %i.acq
  br i1 %i.agf, label %bb.ao, label %.lr.ph.split406.split.1

bb.ao:                                            ; preds = %.lr.ph.split406.split
  %i.agg = getelementptr [4 x i8], ptr %i.ady, i64 %i.age
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !11
  br label %.lr.ph.split406.split.1

.lr.ph.split406.split.1:                          ; preds = %bb.ao, %.lr.ph.split406.split
  %.1 = phi nsz float [ %i.agh, %bb.ao ], [ 0.000000e+00, %.lr.ph.split406.split ]
  %i.agi = getelementptr [4 x i8], ptr %i.adw, i64 %.0271404
  store float %.1, ptr %i.agi, align 4, !tbaa !11
  %i.agj = add nuw i64 %.0271404, 1               ; 2 uses
  %i.agk = add i64 %i.agj, %i.aco                 ; 2 uses
  %i.agl = icmp ult i64 %i.agk, %i.acq
  br i1 %i.agl, label %bb.ap, label %.lr.ph.split406.split.2

bb.ap:                                            ; preds = %.lr.ph.split406.split.1
  %i.agm = getelementptr [4 x i8], ptr %i.ady, i64 %i.agk
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !11
  br label %.lr.ph.split406.split.2

.lr.ph.split406.split.2:                          ; preds = %bb.ap, %.lr.ph.split406.split.1
  %.1.1 = phi nsz float [ %i.agn, %bb.ap ], [ 0.000000e+00, %.lr.ph.split406.split.1 ]
  %i.ago = getelementptr [4 x i8], ptr %i.adw, i64 %i.agj
  store float %.1.1, ptr %i.ago, align 4, !tbaa !11
  %i.agp = add nuw i64 %.0271404, 2               ; 2 uses
  %i.agq = add i64 %i.agp, %i.aco                 ; 2 uses
  %i.agr = icmp ult i64 %i.agq, %i.acq
  br i1 %i.agr, label %bb.aq, label %.lr.ph.split406.split.3

bb.aq:                                            ; preds = %.lr.ph.split406.split.2
  %i.ags = getelementptr [4 x i8], ptr %i.ady, i64 %i.agq
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !11
  br label %.lr.ph.split406.split.3

.lr.ph.split406.split.3:                          ; preds = %bb.aq, %.lr.ph.split406.split.2
  %.1.2 = phi nsz float [ %i.agt, %bb.aq ], [ 0.000000e+00, %.lr.ph.split406.split.2 ]
  %i.agu = getelementptr [4 x i8], ptr %i.adw, i64 %i.agp
  store float %.1.2, ptr %i.agu, align 4, !tbaa !11
  %i.agv = add nuw i64 %.0271404, 3               ; 2 uses
  %i.agw = add i64 %i.agv, %i.aco                 ; 2 uses
  %i.agx = icmp ult i64 %i.agw, %i.acq
  br i1 %i.agx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split406.split.3
  %i.agy = getelementptr [4 x i8], ptr %i.ady, i64 %i.agw
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.split406.split.3
  %.1.3 = phi nsz float [ %i.agz, %bb.ar ], [ 0.000000e+00, %.lr.ph.split406.split.3 ]
  %i.aha = getelementptr [4 x i8], ptr %i.adw, i64 %i.agv
  store float %.1.3, ptr %i.aha, align 4, !tbaa !11
  %i.ahb = add nuw i64 %.0271404, 4               ; 2 uses
  %exitcond486.not.3 = icmp eq i64 %i.ahb, %i.aci
  br i1 %exitcond486.not.3, label %._crit_edge405, label %.lr.ph.split406.split, !llvm.loop !484

.loopexit:                                        ; preds = %._crit_edge405, %.thread344, %.preheader.lr.ph, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.acc, %.preheader.lr.ph ], [ %i.acc, %.thread344 ], [ %i.acc, %._crit_edge405 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_process_segmentation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 5, 4) %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 7 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [8 x ptr], align 16               ; 12 uses
  %i.e = alloca [3 x ptr], align 16               ; 7 uses
  %8 = alloca [4 x %struct.dt_iop_segmentation_t], align 16 ; 70 uses
  %i.f = alloca [4 x float], align 16             ; 22 uses
  %i.g = alloca [4 x float], align 16             ; 21 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.i = load i32, ptr %i.h, align 4, !tbaa !312  ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !281  ; 7 uses
  %i.l = getelementptr i8, ptr %i.k, i64 644
  %.val = load i32, ptr %i.l, align 4, !tbaa !325
  %10 = and i32 %.val, 2
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !328
  %11 = fmul reassoc nsz arcp contract afn float %i.n, f0x3F7CAC08 ; 2 uses
  %12 = fcmp reassoc nsz arcp contract afn olt float %11, 1.000000e-01
  %13 = select reassoc nsz arcp contract afn i1 %12, float 1.000000e-01, float %11 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.p = load float, ptr %i.o, align 16, !tbaa !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 260
  %i.r = load float, ptr %i.q, align 4, !tbaa !11 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %15 = load float, ptr %14, align 8, !tbaa !11   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.s = fmul reassoc nsz arcp contract afn float %i.p, %13 ; 2 uses
  store float %i.s, ptr %i.a, align 16, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = fmul reassoc nsz arcp contract afn float %i.r, %13 ; 2 uses
  store float %i.u, ptr %i.t, align 4, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = fmul reassoc nsz arcp contract afn float %15, %13 ; 2 uses
  store float %i.w, ptr %i.v, align 8, !tbaa !11
  %.ptr447 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %.ptr447, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.x = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.s) #35 ; 2 uses
  store float %i.x, ptr %i.b, align 16, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.u) #35 ; 2 uses
  store float %i.z, ptr %i.y, align 4, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.w) #35 ; 2 uses
  store float %i.ab, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !11
  %i.ad = load ptr, ptr %0, align 16, !tbaa !333
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 664
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !334 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2480
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.thread550, label %bb.b

.thread550:                                       ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 2416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 2448
  %i.al = load <2 x double>, ptr %i.aj, align 16, !tbaa !437
  %i.am = load <2 x double>, ptr %i.ak, align 16, !tbaa !437
  %i.an = fdiv reassoc nsz arcp contract afn <2 x double> %i.al, %i.am
  %i.ao = fptrunc <2 x double> %i.an to <2 x float>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 2432
  %i.ar = load double, ptr %i.aq, align 16, !tbaa !437
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 2464
  %i.at = load double, ptr %i.as, align 16, !tbaa !437
  %i.au = fdiv reassoc nsz arcp contract afn double %i.ar, %i.at
  %i.av = fptrunc reassoc nsz arcp contract afn double %i.au to float
  br label %bb.c

bb.c:                                             ; preds = %.thread550, %bb.b
  %i.aw = phi ptr [ %i.ai, %.thread550 ], [ %i.ap, %bb.b ]
  %i.ax = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread550 ], [ %i.av, %bb.b ] ; 2 uses
  %i.ay = phi <2 x float> [ splat (float 1.000000e+00), %.thread550 ], [ %i.ao, %bb.b ] ; 3 uses
  store <2 x float> %i.ay, ptr %i.c, align 16, !tbaa !11
  store float %i.ax, ptr %i.aw, align 4, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 1.000000e+00, ptr %i.az, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !485 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !486 ; 5 uses
  %i.be = sext i32 %i.bb to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr @__const._process_segmentation.recovery_closing, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !487
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !488
  %i.bl = mul nsw i32 %i.bk, %i.bi
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !489 ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.bo
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, 2.500000e-04
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bm
  %i.bs = fptosi float %i.br to i32               ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !310
  %i.bv = sdiv i32 %i.bu, 3
  %i.bw = sext i32 %i.bv to i64
  %i.bx = tail call i64 @dt_round_size(i64 noundef %i.bw, i64 noundef 2) #33 ; 4 uses
  %i.by = add i64 %i.bx, 16                       ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !308
  %i.cb = sdiv i32 %i.ca, 3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = tail call i64 @dt_round_size(i64 noundef %i.cc, i64 noundef 2) #33 ; 3 uses
  %i.ce = add i64 %i.cd, 16                       ; 7 uses
  %i.cf = mul i64 %i.ce, %i.by
  %i.cg = tail call i64 @dt_round_size(i64 noundef %i.cf, i64 noundef 64) #33 ; 9 uses
  %i.ch = shl i64 %i.cg, 5
  %i.ci = tail call ptr @dt_alloc_aligned(i64 noundef %i.ch) #33 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ci, i64 64) ]
  %.not450 = icmp eq ptr %i.ci, null
  br i1 %.not450, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.ck = and i32 %i.cj, 33554432
  %.not451 = icmp eq i32 %i.ck, 0
  br i1 %.not451, label %bb.ex, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.119) #33
  br label %bb.ex

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.ci, ptr %i.d, align 16, !tbaa !386
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cg ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !386
  %.idx = shl i64 %i.cg, 3                        ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.cn, ptr %i.co, align 16, !tbaa !386
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.idx840 = shl i64 %i.cg, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx840
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.cq, ptr %i.cr, align 16, !tbaa !386
  %.idx841 = mul i64 %i.cg, 20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx841
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !386
  %.idx842 = mul i64 %i.cg, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx842
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 16, !tbaa !386
  %i.cw = insertelement <4 x i64> poison, i64 %i.cg, i64 0
  %i.cx = shufflevector <4 x i64> %i.cw, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cy = mul <4 x i64> %i.cx, <i64 28, i64 poison, i64 poison, i64 12> ; 2 uses
  %i.cz = extractelement <4 x i64> %i.cy, i64 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cz ; 38 uses
  store ptr %i.da, ptr %i.cp, align 8, !tbaa !386
  %i.db = extractelement <4 x i64> %i.cy, i64 0   ; 3 uses
  %i.dc = getelementptr i8, ptr %i.ci, i64 %i.db  ; 17 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.cr, i64 24, i1 false), !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.de = trunc i64 %i.by to i32                  ; 19 uses
  %i.df = trunc i64 %i.ce to i32                  ; 10 uses
  %i.dg = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %8, i32 noundef %i.de, i32 noundef %i.df, i32 noundef 9, i32 noundef %i.bs)
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 5 uses
  %i.di = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dh, i32 noundef %i.de, i32 noundef %i.df, i32 noundef 9, i32 noundef %i.bs)
  %i.dj = or i32 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 5 uses
  %i.dl = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dk, i32 noundef %i.de, i32 noundef %i.df, i32 noundef 9, i32 noundef %i.bs)
  %i.dm = or i32 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 288 ; 10 uses
  %i.do = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dn, i32 noundef %i.de, i32 noundef %i.df, i32 noundef 9, i32 noundef %i.bs)
  %i.dp = or i32 %i.do, %i.dm
  %.not452 = icmp eq i32 %i.dp, 0
  br i1 %.not452, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.dr = and i32 %i.dq, 33554432
  %.not457 = icmp eq i32 %i.dr, 0
  br i1 %.not457, label %bb.ew, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.120) #33
  br label %bb.ew

bb.i:                                             ; preds = %bb.f
  %.not453 = icmp eq i32 %i.i, 9                  ; 7 uses
  %i.ds = and i32 %i.i, 3
  %i.dt = icmp ne i32 %i.ds, 1
  %i.du = or i1 %.not453, %i.dt
  %i.dv = select i1 %i.du, i32 2, i32 1
  %i.dw = load i32, ptr %i.bz, align 4, !tbaa !308 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 2
  br i1 %i.dx, label %.preheader592.lr.ph, label %._crit_edge616

.preheader592.lr.ph:                              ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.bt, align 4, !tbaa !310 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ec = load ptr, ptr %i.e, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.eg = load ptr, ptr %i.ef, align 16
  %i.eh = extractelement <2 x float> %i.ay, i64 0
  %i.ei = extractelement <2 x float> %i.ay, i64 1
  br label %.preheader592

.preheader592:                                    ; preds = %.preheader592.lr.ph, %._crit_edge
  %i.ej = phi i32 [ %i.dw, %.preheader592.lr.ph ], [ %i.gy, %._crit_edge ] ; 2 uses
  %i.ek = phi i32 [ %.pre, %.preheader592.lr.ph ], [ %i.gz, %._crit_edge ] ; 3 uses
  %i.el = phi i32 [ %.pre, %.preheader592.lr.ph ], [ %i.ha, %._crit_edge ] ; 4 uses
  %indvars.iv682 = phi i64 [ 0, %.preheader592.lr.ph ], [ %indvars.iv.next683, %._crit_edge ] ; 5 uses
  %.0401615 = phi i32 [ 0, %.preheader592.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.0402614 = phi i32 [ 0, %.preheader592.lr.ph ], [ %.1403.lcssa, %._crit_edge ] ; 3 uses
  %.0405613 = phi i32 [ 1, %.preheader592.lr.ph ], [ %i.hb, %._crit_edge ] ; 3 uses
  %i.em = icmp sgt i32 %i.el, 2
  br i1 %i.em, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader592
  %i.en = urem i32 %.0405613, 3
  %i.eo = icmp eq i32 %i.en, 1
  %i.ep = udiv i32 %.0405613, 3
  %i.eq = add nuw nsw i32 %i.ep, 8
  %i.er = mul nsw i32 %i.eq, %i.de
  %i.es = add i32 %i.er, 8
  %i.et = load ptr, ptr %i.dn, align 16
  br i1 %i.eo, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.eu = load ptr, ptr %8, align 16
  %i.ev = load ptr, ptr %i.dh, align 16
  %i.ew = load ptr, ptr %i.dk, align 16
  %i.ex = trunc i64 %indvars.iv682 to i32         ; 2 uses
  %i.ey = shl i32 %i.ex, 1
  %i.ez = and i32 %i.ey, 14                       ; 3 uses
  %i.fa = add i32 %i.ex, 600
  %i.fb = srem i32 %i.fa, 6
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [6 x i8], ptr %9, i64 %i.fc ; 3 uses
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv682, 1 ; 2 uses
  %i.fe = trunc i64 %indvars.iv.next685 to i32    ; 2 uses
  %i.ff = shl i32 %i.fe, 1
  %i.fg = and i32 %i.ff, 14                       ; 3 uses
  %i.fh = add i32 %i.fe, 600
  %i.fi = srem i32 %i.fh, 6
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [6 x i8], ptr %9, i64 %i.fj ; 3 uses
  %indvars.iv.next685.1 = add nuw nsw i64 %indvars.iv682, 2 ; 2 uses
  %i.fl = trunc i64 %indvars.iv.next685.1 to i32  ; 2 uses
  %i.fm = shl i32 %i.fl, 1
  %i.fn = and i32 %i.fm, 14                       ; 3 uses
  %i.fo = add i32 %i.fl, 600
  %i.fp = srem i32 %i.fo, 6
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [6 x i8], ptr %9, i64 %i.fq ; 3 uses
  br label %.lr.ph.split

._crit_edge616.loopexit:                          ; preds = %._crit_edge
  %i.fs = icmp slt i32 %.1.lcssa, 20
  %i.ft = icmp ne i32 %.1403.lcssa, 0
  br label %._crit_edge616

._crit_edge616:                                   ; preds = %._crit_edge616.loopexit, %bb.i
  %.0402.lcssa = phi i1 [ false, %bb.i ], [ %i.ft, %._crit_edge616.loopexit ]
  %.0401.lcssa = phi i1 [ true, %bb.i ], [ %i.fs, %._crit_edge616.loopexit ]
  %i.fu = icmp eq i32 %6, 0
  %or.cond = and i1 %i.fu, %.0401.lcssa
  br i1 %or.cond, label %bb.ew, label %.preheader590

.preheader590:                                    ; preds = %._crit_edge616
  %i.fv = add nsw i32 %i.df, -8                   ; 2 uses
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = icmp ugt i32 %i.fv, 8                   ; 3 uses
  %sext567 = shl i64 %i.by, 32                    ; 6 uses
  %i.fy = ashr exact i64 %sext567, 32             ; 50 uses
  %.not.i = icmp eq i32 %i.de, 0                  ; 5 uses
  %i.fz = shl nsw i32 %i.de, 3
  %i.ga = sext i32 %i.fz to i64                   ; 3 uses
  %i.gb = shl i64 %i.bx, 32                       ; 2 uses
  %sext568 = add i64 %i.gb, 30064771072
  %i.gc = ashr exact i64 %sext568, 32             ; 3 uses
  %i.gd = add i64 %i.cd, 7
  %sext569 = mul i64 %sext567, %i.gd
  %sext570 = shl i64 %i.ce, 32
  %i.ge = ashr exact i64 %sext570, 32             ; 18 uses
  %i.gf = ashr exact i64 %sext569, 30             ; 3 uses
  %i.gg = add nsw i64 %i.ge, -1
  %i.gh = mul nsw i64 %i.gg, %i.fy                ; 3 uses
  %i.gi = add nsw i64 %i.ge, -2
  %i.gj = mul nsw i64 %i.gi, %i.fy                ; 3 uses
  %i.gk = ashr exact i64 %sext567, 29             ; 3 uses
  %i.gl = add nsw i64 %i.ge, -3
  %i.gm = mul nsw i64 %i.gl, %i.fy                ; 3 uses
  %.idx844 = mul nsw i64 %i.fy, 12                ; 3 uses
  %i.gn = add nsw i64 %i.ge, -4
  %i.go = mul nsw i64 %i.gn, %i.fy                ; 3 uses
  %i.gp = ashr exact i64 %sext567, 28             ; 3 uses
  %i.gq = add nsw i64 %i.ge, -5
  %i.gr = mul nsw i64 %i.gq, %i.fy                ; 3 uses
  %.idx845 = mul nsw i64 %i.fy, 20                ; 3 uses
  %i.gs = add nsw i64 %i.ge, -6
  %i.gt = mul nsw i64 %i.gs, %i.fy                ; 3 uses
  %.idx846 = mul nsw i64 %i.fy, 24                ; 3 uses
  %i.gu = add nsw i64 %i.ge, -7
  %i.gv = mul nsw i64 %i.gu, %i.fy                ; 3 uses
  %.idx847 = mul nsw i64 %i.fy, 28                ; 3 uses
  %i.gw = add nsw i64 %i.ge, -8
  %i.gx = mul nsw i64 %i.gw, %i.fy                ; 3 uses
  br i1 %i.fx, label %.lr.ph.i, label %.preheader.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre781 = load i32, ptr %i.bz, align 4, !tbaa !308
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %.preheader592
  %i.gy = phi i32 [ %i.ej, %.preheader592 ], [ %.pre781, %._crit_edge.loopexit ], [ %i.ej, %.lr.ph ] ; 2 uses
  %i.gz = phi i32 [ %i.ek, %.preheader592 ], [ %i.rc, %._crit_edge.loopexit ], [ %i.ek, %.lr.ph ]
  %i.ha = phi i32 [ %i.el, %.preheader592 ], [ %i.rc, %._crit_edge.loopexit ], [ %i.el, %.lr.ph ]
  %.1403.lcssa = phi i32 [ %.0402614, %.preheader592 ], [ %.2404, %._crit_edge.loopexit ], [ %.0402614, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0401615, %.preheader592 ], [ %.2, %._crit_edge.loopexit ], [ %.0401615, %.lr.ph ] ; 2 uses
  %i.hb = add nuw nsw i32 %.0405613, 1            ; 2 uses
  %i.hc = add nsw i32 %i.gy, -1
  %i.hd = icmp slt i32 %i.hb, %i.hc
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1
  br i1 %i.hd, label %.preheader592, label %._crit_edge616.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.t
  %i.he = phi i32 [ %i.ek, %.lr.ph.split.preheader ], [ %i.rc, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.t ] ; 19 uses
  %i.hf = phi i32 [ %i.el, %.lr.ph.split.preheader ], [ %i.rc, %bb.t ]
  %.1610 = phi i32 [ %.0401615, %.lr.ph.split.preheader ], [ %.2, %bb.t ] ; 2 uses
  %.1403609 = phi i32 [ %.0402614, %.lr.ph.split.preheader ], [ %.2404, %bb.t ] ; 2 uses
  %.0408608 = phi i32 [ 1, %.lr.ph.split.preheader ], [ %i.rd, %bb.t ] ; 3 uses
  %i.hg = urem i32 %.0408608, 3
  %i.hh = udiv i32 %.0408608, 3
  %i.hi = icmp eq i32 %i.hg, %i.dv
  br i1 %i.hi, label %bb.j, label %bb.t

bb.j:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.hj = sext i32 %i.hf to i64                   ; 3 uses
  %i.hk = trunc nuw nsw i64 %indvars.iv to i32
  %i.hl = and i32 %i.hk, 1                        ; 3 uses
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.hm = trunc nuw nsw i64 %indvars.iv.next675 to i32
  %i.hn = and i32 %i.hm, 1                        ; 3 uses
  %i.ho = trunc i64 %indvars.iv to i32
  %i.hp = and i32 %i.ho, 1                        ; 3 uses
  %i.hq = trunc i64 %indvars.iv to i32
  %i.hr = add i32 %i.hq, 600
  %i.hs = srem i32 %i.hr, 6
  %i.ht = sext i32 %i.hs to i64                   ; 3 uses
  %i.hu = trunc i64 %indvars.iv to i32
  %i.hv = add i32 %i.hu, 601
  %i.hw = srem i32 %i.hv, 6
  %i.hx = sext i32 %i.hw to i64                   ; 3 uses
  %i.hy = trunc i64 %indvars.iv to i32
  %i.hz = add i32 %i.hy, 602
  %i.ia = srem i32 %i.hz, 6
  %i.ib = sext i32 %i.ia to i64                   ; 3 uses
  %i.ic = mul nsw i64 %indvars.iv682, %i.hj
  %i.id = getelementptr [4 x i8], ptr %7, i64 %i.ic ; 5 uses
  br i1 %.not453, label %fcol.exit.us.preheader, label %fcol.exit.preheader

fcol.exit.preheader:                              ; preds = %bb.j
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv
  %i.if = load float, ptr %i.ie, align 4, !tbaa !11
  %.tr.i.i = or disjoint i32 %i.hl, %i.ez
  %i.ig = shl nuw nsw i32 %.tr.i.i, 1
  %i.ih = lshr i32 %i.i, %i.ig
  %i.ii = and i32 %i.ih, 3
  %i.ij = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ij ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !11
  %i.im = fadd reassoc nsz arcp contract afn float %i.il, %i.if
  store float %i.im, ptr %i.ik, align 4, !tbaa !11
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ij ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !11
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, 1.000000e+00
  store float %i.ip, ptr %i.in, align 4, !tbaa !11
  %i.iq = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv.next675
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !11
  %.tr.i.i.1 = or disjoint i32 %i.hn, %i.ez
  %i.is = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.it = lshr i32 %i.i, %i.is
  %i.iu = and i32 %i.it, 3
  %i.iv = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iv ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !11
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, %i.ir
  store float %i.iy, ptr %i.iw, align 4, !tbaa !11
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.iv ; 2 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !11
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, 1.000000e+00
  store float %i.jb, ptr %i.iz, align 4, !tbaa !11
  %.tr.i.i.2 = or disjoint i32 %i.hp, %i.ez
  %i.jc = shl nuw nsw i32 %.tr.i.i.2, 1
  %i.jd = lshr i32 %i.i, %i.jc
  %i.je = and i32 %i.jd, 3
  %i.jf = zext nneg i32 %i.je to i64
  br label %.split603.us

fcol.exit.us.preheader:                           ; preds = %bb.j
  %i.jg = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !11
  %i.ji = getelementptr inbounds i8, ptr %i.fd, i64 %i.ht
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !332
  %i.jk = zext i8 %i.jj to i64                    ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jk ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !11
  %i.jn = fadd reassoc nsz arcp contract afn float %i.jm, %i.jh
  store float %i.jn, ptr %i.jl, align 4, !tbaa !11
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jk ; 2 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !11
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jp, 1.000000e+00
  store float %i.jq, ptr %i.jo, align 4, !tbaa !11
  %i.jr = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  %i.jt = load float, ptr %i.js, align 4, !tbaa !11
  %i.ju = getelementptr inbounds i8, ptr %i.fd, i64 %i.hx
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !332
  %i.jw = zext i8 %i.jv to i64                    ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jw ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !11
  %i.jz = fadd reassoc nsz arcp contract afn float %i.jy, %i.jt
  store float %i.jz, ptr %i.jx, align 4, !tbaa !11
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jw ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !11
  %i.kc = fadd reassoc nsz arcp contract afn float %i.kb, 1.000000e+00
  store float %i.kc, ptr %i.ka, align 4, !tbaa !11
  %i.kd = getelementptr inbounds i8, ptr %i.fd, i64 %i.ib
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !332
  %i.kf = zext i8 %i.ke to i64
  br label %.split603.us

.split603.us:                                     ; preds = %fcol.exit.preheader, %fcol.exit.us.preheader
  %.sink864 = phi i64 [ %i.jf, %fcol.exit.preheader ], [ %i.kf, %fcol.exit.us.preheader ] ; 2 uses
  %.pn = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv
  %.sink862.in = getelementptr i8, ptr %.pn, i64 8
  %.sink862 = load float, ptr %.sink862.in, align 4, !tbaa !11
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sink864 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !11
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %.sink862
  store float %i.ki, ptr %i.kg, align 4, !tbaa !11
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink864 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !11
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kk, 1.000000e+00
  store float %i.kl, ptr %i.kj, align 4, !tbaa !11
  %i.km = mul nsw i64 %indvars.iv.next685, %i.hj
  %i.kn = getelementptr [4 x i8], ptr %7, i64 %i.km ; 5 uses
  br i1 %.not453, label %fcol.exit.us.preheader.1, label %fcol.exit.preheader.1

end_hunk_0
begin_hunk_1_@_process_segmentation:bb.a
  %i.agr = select i1 %i.agn, float %i.agp, float %i.agj ; 2 uses
  %i.ags = select i1 %i.agn, float %i.agq, float %i.agk ; 2 uses
  %i.agt = getelementptr i8, ptr %i.afq, i64 8
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !11 ; 2 uses
  %i.agv = fcmp reassoc nsz arcp contract afn olt float %i.agu, %i.yw ; 2 uses
  %i.agw = fadd reassoc nsz arcp contract afn float %i.agr, %i.agu
  %i.agx = fadd reassoc nsz arcp contract afn float %i.ags, 1.000000e+00
  %i.agy = select i1 %i.agv, float %i.agw, float %i.agr ; 2 uses
  %i.agz = select i1 %i.agv, float %i.agx, float %i.ags ; 2 uses
  %i.aha = getelementptr [4 x i8], ptr %i.afp, i64 %i.abf ; 5 uses
  %i.ahb = getelementptr i8, ptr %i.aha, i64 -8
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !11 ; 2 uses
  %i.ahd = fcmp reassoc nsz arcp contract afn olt float %i.ahc, %i.yw ; 2 uses
  %i.ahe = fmul reassoc nsz arcp contract afn float %i.ahc, 4.000000e+00
  %i.ahf = fadd reassoc nsz arcp contract afn float %i.agy, %i.ahe
  %i.ahg = fadd reassoc nsz arcp contract afn float %i.agz, 4.000000e+00
  %i.ahh = select i1 %i.ahd, float %i.ahf, float %i.agy ; 2 uses
  %i.ahi = select i1 %i.ahd, float %i.ahg, float %i.agz ; 2 uses
  %i.ahj = getelementptr i8, ptr %i.aha, i64 -4
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !11 ; 2 uses
  %i.ahl = fcmp reassoc nsz arcp contract afn olt float %i.ahk, %i.yw ; 2 uses
  %i.ahm = fmul reassoc nsz arcp contract afn float %i.ahk, 1.600000e+01
  %i.ahn = fadd reassoc nsz arcp contract afn float %i.ahh, %i.ahm
  %i.aho = fadd reassoc nsz arcp contract afn float %i.ahi, 1.600000e+01
  %i.ahp = select i1 %i.ahl, float %i.ahn, float %i.ahh ; 2 uses
  %i.ahq = select i1 %i.ahl, float %i.aho, float %i.ahi ; 2 uses
  %i.ahr = load float, ptr %i.aha, align 4, !tbaa !11 ; 2 uses
  %i.ahs = fcmp reassoc nsz arcp contract afn olt float %i.ahr, %i.yw ; 2 uses
  %i.aht = fmul reassoc nsz arcp contract afn float %i.ahr, 2.400000e+01
  %i.ahu = fadd reassoc nsz arcp contract afn float %i.ahp, %i.aht
  %i.ahv = fadd reassoc nsz arcp contract afn float %i.ahq, 2.400000e+01
  %i.ahw = select i1 %i.ahs, float %i.ahu, float %i.ahp ; 2 uses
  %i.ahx = select i1 %i.ahs, float %i.ahv, float %i.ahq ; 2 uses
  %i.ahy = getelementptr i8, ptr %i.aha, i64 4
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !11 ; 2 uses
  %i.aia = fcmp reassoc nsz arcp contract afn olt float %i.ahz, %i.yw ; 2 uses
  %i.aib = fmul reassoc nsz arcp contract afn float %i.ahz, 1.600000e+01
  %i.aic = fadd reassoc nsz arcp contract afn float %i.ahw, %i.aib
  %i.aid = fadd reassoc nsz arcp contract afn float %i.ahx, 1.600000e+01
  %i.aie = select i1 %i.aia, float %i.aic, float %i.ahw ; 2 uses
  %i.aif = select i1 %i.aia, float %i.aid, float %i.ahx ; 2 uses
  %i.aig = getelementptr i8, ptr %i.aha, i64 8
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !11 ; 2 uses
  %i.aii = fcmp reassoc nsz arcp contract afn olt float %i.aih, %i.yw ; 2 uses
  %i.aij = fmul reassoc nsz arcp contract afn float %i.aih, 4.000000e+00
  %i.aik = fadd reassoc nsz arcp contract afn float %i.aie, %i.aij
  %i.ail = fadd reassoc nsz arcp contract afn float %i.aif, 4.000000e+00
  %i.aim = select i1 %i.aii, float %i.aik, float %i.aie ; 2 uses
  %i.ain = select i1 %i.aii, float %i.ail, float %i.aif ; 2 uses
  %i.aio = getelementptr i8, ptr %i.afp, i64 -8
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !11 ; 2 uses
  %i.aiq = fcmp reassoc nsz arcp contract afn olt float %i.aip, %i.yw ; 2 uses
  %i.air = fmul reassoc nsz arcp contract afn float %i.aip, 6.000000e+00
  %i.ais = fadd reassoc nsz arcp contract afn float %i.aim, %i.air
  %i.ait = fadd reassoc nsz arcp contract afn float %i.ain, 6.000000e+00
  %i.aiu = select i1 %i.aiq, float %i.ais, float %i.aim ; 2 uses
  %i.aiv = select i1 %i.aiq, float %i.ait, float %i.ain ; 2 uses
  %i.aiw = getelementptr i8, ptr %i.afp, i64 -4
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !11 ; 2 uses
  %i.aiy = fcmp reassoc nsz arcp contract afn olt float %i.aix, %i.yw ; 2 uses
  %i.aiz = fmul reassoc nsz arcp contract afn float %i.aix, 2.400000e+01
  %i.aja = fadd reassoc nsz arcp contract afn float %i.aiu, %i.aiz
  %i.ajb = fadd reassoc nsz arcp contract afn float %i.aiv, 2.400000e+01
  %i.ajc = select i1 %i.aiy, float %i.aja, float %i.aiu ; 2 uses
  %i.ajd = select i1 %i.aiy, float %i.ajb, float %i.aiv ; 2 uses
  %i.aje = load float, ptr %i.afp, align 4, !tbaa !11 ; 2 uses
  %i.ajf = fcmp reassoc nsz arcp contract afn olt float %i.aje, %i.yw ; 2 uses
  %i.ajg = fmul reassoc nsz arcp contract afn float %i.aje, 3.600000e+01
  %i.ajh = fadd reassoc nsz arcp contract afn float %i.ajc, %i.ajg
  %i.aji = fadd reassoc nsz arcp contract afn float %i.ajd, 3.600000e+01
  %i.ajj = select i1 %i.ajf, float %i.ajh, float %i.ajc ; 2 uses
  %i.ajk = select i1 %i.ajf, float %i.aji, float %i.ajd ; 2 uses
  %i.ajl = getelementptr i8, ptr %i.afp, i64 4
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !11 ; 2 uses
  %i.ajn = fcmp reassoc nsz arcp contract afn olt float %i.ajm, %i.yw ; 2 uses
  %i.ajo = fmul reassoc nsz arcp contract afn float %i.ajm, 2.400000e+01
  %i.ajp = fadd reassoc nsz arcp contract afn float %i.ajj, %i.ajo
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajk, 2.400000e+01
  %i.ajr = select i1 %i.ajn, float %i.ajp, float %i.ajj ; 2 uses
  %i.ajs = select i1 %i.ajn, float %i.ajq, float %i.ajk ; 2 uses
  %i.ajt = getelementptr i8, ptr %i.afp, i64 8
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !11 ; 2 uses
  %i.ajv = fcmp reassoc nsz arcp contract afn olt float %i.aju, %i.yw ; 2 uses
  %i.ajw = fmul reassoc nsz arcp contract afn float %i.aju, 6.000000e+00
  %i.ajx = fadd reassoc nsz arcp contract afn float %i.ajr, %i.ajw
  %i.ajy = fadd reassoc nsz arcp contract afn float %i.ajs, 6.000000e+00
  %i.ajz = select i1 %i.ajv, float %i.ajx, float %i.ajr ; 2 uses
  %i.aka = select i1 %i.ajv, float %i.ajy, float %i.ajs ; 2 uses
  %i.akb = getelementptr [4 x i8], ptr %i.afp, i64 %i.abd ; 5 uses
  %i.akc = getelementptr i8, ptr %i.akb, i64 -8
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !11 ; 2 uses
  %i.ake = fcmp reassoc nsz arcp contract afn olt float %i.akd, %i.yw ; 2 uses
  %i.akf = fmul reassoc nsz arcp contract afn float %i.akd, 4.000000e+00
  %i.akg = fadd reassoc nsz arcp contract afn float %i.ajz, %i.akf
  %i.akh = fadd reassoc nsz arcp contract afn float %i.aka, 4.000000e+00
  %i.aki = select i1 %i.ake, float %i.akg, float %i.ajz ; 2 uses
  %i.akj = select i1 %i.ake, float %i.akh, float %i.aka ; 2 uses
  %i.akk = getelementptr i8, ptr %i.akb, i64 -4
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !11 ; 2 uses
  %i.akm = fcmp reassoc nsz arcp contract afn olt float %i.akl, %i.yw ; 2 uses
  %i.akn = fmul reassoc nsz arcp contract afn float %i.akl, 1.600000e+01
  %i.ako = fadd reassoc nsz arcp contract afn float %i.aki, %i.akn
  %i.akp = fadd reassoc nsz arcp contract afn float %i.akj, 1.600000e+01
  %i.akq = select i1 %i.akm, float %i.ako, float %i.aki ; 2 uses
  %i.akr = select i1 %i.akm, float %i.akp, float %i.akj ; 2 uses
  %i.aks = load float, ptr %i.akb, align 4, !tbaa !11 ; 2 uses
  %i.akt = fcmp reassoc nsz arcp contract afn olt float %i.aks, %i.yw ; 2 uses
  %i.aku = fmul reassoc nsz arcp contract afn float %i.aks, 2.400000e+01
  %i.akv = fadd reassoc nsz arcp contract afn float %i.akq, %i.aku
  %i.akw = fadd reassoc nsz arcp contract afn float %i.akr, 2.400000e+01
  %i.akx = select i1 %i.akt, float %i.akv, float %i.akq ; 2 uses
  %i.aky = select i1 %i.akt, float %i.akw, float %i.akr ; 2 uses
  %i.akz = getelementptr i8, ptr %i.akb, i64 4
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !11 ; 2 uses
  %i.alb = fcmp reassoc nsz arcp contract afn olt float %i.ala, %i.yw ; 2 uses
  %i.alc = fmul reassoc nsz arcp contract afn float %i.ala, 1.600000e+01
  %i.ald = fadd reassoc nsz arcp contract afn float %i.akx, %i.alc
  %i.ale = fadd reassoc nsz arcp contract afn float %i.aky, 1.600000e+01
  %i.alf = select i1 %i.alb, float %i.ald, float %i.akx ; 2 uses
  %i.alg = select i1 %i.alb, float %i.ale, float %i.aky ; 2 uses
  %i.alh = getelementptr i8, ptr %i.akb, i64 8
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !11 ; 2 uses
  %i.alj = fcmp reassoc nsz arcp contract afn olt float %i.ali, %i.yw ; 2 uses
  %i.alk = fmul reassoc nsz arcp contract afn float %i.ali, 4.000000e+00
  %i.all = fadd reassoc nsz arcp contract afn float %i.alf, %i.alk
  %i.alm = fadd reassoc nsz arcp contract afn float %i.alg, 4.000000e+00
  %i.aln = select i1 %i.alj, float %i.all, float %i.alf ; 2 uses
  %i.alo = select i1 %i.alj, float %i.alm, float %i.alg ; 2 uses
  %.idx202.i = shl nsw i64 %i.abd, 3
  %i.alp = getelementptr i8, ptr %i.afp, i64 %.idx202.i ; 5 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 -8
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !11 ; 2 uses
  %i.als = fcmp reassoc nsz arcp contract afn olt float %i.alr, %i.yw ; 2 uses
  %i.alt = fadd reassoc nsz arcp contract afn float %i.aln, %i.alr
  %i.alu = fadd reassoc nsz arcp contract afn float %i.alo, 1.000000e+00
  %i.alv = select i1 %i.als, float %i.alt, float %i.aln ; 2 uses
  %i.alw = select i1 %i.als, float %i.alu, float %i.alo ; 2 uses
  %i.alx = getelementptr i8, ptr %i.alp, i64 -4
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !11 ; 2 uses
  %i.alz = fcmp reassoc nsz arcp contract afn olt float %i.aly, %i.yw ; 2 uses
  %i.ama = fmul reassoc nsz arcp contract afn float %i.aly, 4.000000e+00
  %i.amb = fadd reassoc nsz arcp contract afn float %i.alv, %i.ama
  %i.amc = fadd reassoc nsz arcp contract afn float %i.alw, 4.000000e+00
  %i.amd = select i1 %i.alz, float %i.amb, float %i.alv ; 2 uses
  %i.ame = select i1 %i.alz, float %i.amc, float %i.alw ; 2 uses
  %i.amf = load float, ptr %i.alp, align 4, !tbaa !11 ; 2 uses
  %i.amg = fcmp reassoc nsz arcp contract afn olt float %i.amf, %i.yw ; 2 uses
  %i.amh = fmul reassoc nsz arcp contract afn float %i.amf, 6.000000e+00
  %i.ami = fadd reassoc nsz arcp contract afn float %i.amd, %i.amh
  %i.amj = fadd reassoc nsz arcp contract afn float %i.ame, 6.000000e+00
  %i.amk = select i1 %i.amg, float %i.ami, float %i.amd ; 2 uses
  %i.aml = select i1 %i.amg, float %i.amj, float %i.ame ; 2 uses
  %i.amm = getelementptr i8, ptr %i.alp, i64 4
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !11 ; 2 uses
  %i.amo = fcmp reassoc nsz arcp contract afn olt float %i.amn, %i.yw ; 2 uses
  %i.amp = fmul reassoc nsz arcp contract afn float %i.amn, 4.000000e+00
  %i.amq = fadd reassoc nsz arcp contract afn float %i.amk, %i.amp
  %i.amr = fadd reassoc nsz arcp contract afn float %i.aml, 4.000000e+00
  %i.ams = select i1 %i.amo, float %i.amq, float %i.amk ; 2 uses
  %i.amt = select i1 %i.amo, float %i.amr, float %i.aml ; 2 uses
  %i.amu = getelementptr i8, ptr %i.alp, i64 8
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !11 ; 2 uses
  %i.amw = fcmp reassoc nsz arcp contract afn olt float %i.amv, %i.yw ; 2 uses
  %i.amx = fadd reassoc nsz arcp contract afn float %i.ams, %i.amv
  %i.amy = fadd reassoc nsz arcp contract afn float %i.amt, 1.000000e+00
  %i.amz = select i1 %i.amw, float %i.amx, float %i.ams
  %i.ana = select i1 %i.amw, float %i.amy, float %i.amt
  %i.anb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ana, float 1.000000e+00)
  %i.anc = fdiv reassoc nsz arcp contract afn float %i.amz, %i.anb ; 2 uses
  %i.and = fcmp reassoc nsz arcp contract afn ogt float %i.anc, %i.zp
  br i1 %i.and, label %bb.ae, label %._crit_edge142.thread.i

bb.ae:                                            ; preds = %.preheader132.i
  %i.ane = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.yw, float %i.anc)
  store float %i.ane, ptr %i.zr, align 4, !tbaa !11
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %.3.us.i
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !11
  store float %i.ang, ptr %i.zs, align 4, !tbaa !11
  br label %._crit_edge142.thread.i

._crit_edge142.thread.i:                          ; preds = %bb.ae, %.preheader132.i, %._crit_edge142.i, %.lr.ph141.i, %bb.aa, %bb.z, %bb.y
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count.i
  br i1 %exitcond173.not.i, label %_calc_plane_candidates.exit, label %bb.y

_calc_plane_candidates.exit:                      ; preds = %._crit_edge142.thread.i, %bb.x
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %exitcond712.not = icmp eq i64 %indvars.iv.next710, 3
  br i1 %exitcond712.not, label %.preheader586, label %bb.x

.preheader585:                                    ; preds = %.preheader585.preheader, %._crit_edge625
  %indvars.iv717 = phi i64 [ 1, %.preheader585.preheader ], [ %indvars.iv.next718, %._crit_edge625 ] ; 5 uses
  %i.anh = mul nuw nsw i64 %indvars.iv717, %i.yo
  %indvars.iv717.tr = trunc i64 %indvars.iv717 to i32
  %i.ani = shl i32 %indvars.iv717.tr, 1
  %i.anj = and i32 %i.ani, 14
  %i.ank = trunc i64 %indvars.iv717 to i32
  %i.anl = add i32 %i.ank, 600
  %i.anm = urem i32 %i.anl, 6
  %i.ann = zext nneg i32 %i.anm to i64
  %i.ano = getelementptr inbounds nuw [6 x i8], ptr %9, i64 %i.ann
  %i.anp = trunc nuw nsw i64 %indvars.iv717 to i32 ; 2 uses
  %i.anq = udiv i32 %i.anp, 3
  %i.anr = add nuw nsw i32 %i.anq, 8
  %i.ans = mul nsw i32 %i.anr, %i.de
  %i.ant = add i32 %i.ans, 8
  br label %bb.af

._crit_edge627.split:                             ; preds = %._crit_edge625, %.preheader585.lr.ph, %.preheader586
  %i.anu = load ptr, ptr %i.cr, align 16, !tbaa !386 ; 7 uses
  %i.anv = load ptr, ptr %i.ct, align 8, !tbaa !386 ; 3 uses
  %i.anw = load ptr, ptr %i.cv, align 16, !tbaa !386 ; 52 uses
  %i.anx = icmp ne i32 %i.bb, 0
  %or.cond3 = select i1 %i.anx, i1 %.0402.lcssa, i1 false
  %i.any = fcmp reassoc nsz arcp contract afn ogt float %i.bd, 0.000000e+00
  %spec.select = select i1 %or.cond3, i1 %i.any, i1 false ; 2 uses
  %i.anz = icmp ne i32 %6, 0
  %i.aoa = icmp ne i32 %10, 0
  %i.aob = select i1 %i.anz, i1 %i.aoa, i1 false  ; 2 uses
  %or.cond5 = select i1 %spec.select, i1 true, i1 %i.aob
  br i1 %or.cond5, label %bb.al, label %bb.ar

._crit_edge625:                                   ; preds = %_get_segment_id.exit.thread
  %indvars.iv.next718 = add nuw nsw i64 %indvars.iv717, 1 ; 2 uses
  %exitcond721.not = icmp eq i64 %indvars.iv.next718, %wide.trip.count720
  br i1 %exitcond721.not, label %._crit_edge627.split, label %.preheader585

bb.af:                                            ; preds = %.preheader585, %_get_segment_id.exit.thread
  %indvars.iv713 = phi i64 [ 1, %.preheader585 ], [ %indvars.iv.next714, %_get_segment_id.exit.thread ] ; 4 uses
  %i.aoc = add nuw nsw i64 %i.anh, %indvars.iv713 ; 2 uses
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aoc
  %i.aoe = load float, ptr %i.aod, align 4, !tbaa !11
  %i.aof = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aoe, float 0.000000e+00) ; 2 uses
  %i.aog = trunc i64 %indvars.iv713 to i32        ; 2 uses
  br i1 %.not453, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aoh = add i32 %i.aog, 600
  %i.aoi = urem i32 %i.aoh, 6
  %i.aoj = zext nneg i32 %i.aoi to i64
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.aoj
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !332
  %i.aom = zext i8 %i.aol to i32
  br label %fcol.exit466

bb.ah:                                            ; preds = %bb.af
  %i.aon = and i32 %i.aog, 1
  %.tr.i.i464 = or disjoint i32 %i.aon, %i.anj
  %i.aoo = shl nuw nsw i32 %.tr.i.i464, 1
  %i.aop = lshr i32 %i.i, %i.aoo
  %i.aoq = and i32 %i.aop, 3
  br label %fcol.exit466

fcol.exit466:                                     ; preds = %bb.ag, %bb.ah
  %.0.i465 = phi i32 [ %i.aom, %bb.ag ], [ %i.aoq, %bb.ah ]
  %i.aor = zext nneg i32 %.0.i465 to i64          ; 3 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aor
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !11
  %i.aou = fcmp reassoc nsz arcp contract afn ogt float %i.aof, %i.aot
  br i1 %i.aou, label %bb.ai, label %_get_segment_id.exit.thread

bb.ai:                                            ; preds = %fcol.exit466
  %i.aov = trunc nuw nsw i64 %indvars.iv713 to i32 ; 2 uses
  %i.aow = udiv i32 %i.aov, 3
  %i.aox = add i32 %i.ant, %i.aow                 ; 2 uses
  %i.aoy = sext i32 %i.aox to i64                 ; 2 uses
  %i.aoz = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.aor ; 7 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 84
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !23
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoz, i64 88
  %i.apd = load i32, ptr %i.apc, align 8, !tbaa !27
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoz, i64 76
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !28
  %i.apg = sub nsw i32 %i.apd, %i.apf
  %i.aph = mul nsw i32 %i.apg, %i.apb
  %.not.i467 = icmp ult i32 %i.aox, %i.aph
  br i1 %.not.i467, label %bb.aj, label %_get_segment_id.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.api = load ptr, ptr %i.aoz, align 16, !tbaa !30
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.api, i64 %i.aoy
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !22
  %i.apl = and i32 %i.apk, 262143                 ; 3 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aoz, i64 72
  %i.apn = load i32, ptr %i.apm, align 8, !tbaa !47
  %i.apo = icmp ult i32 %i.apl, %i.apn
  %i.app = icmp samesign ugt i32 %i.apl, 1
  %or.cond.i469 = select i1 %i.apo, i1 %i.app, i1 false
  br i1 %or.cond.i469, label %_get_segment_id.exit, label %_get_segment_id.exit.thread

_get_segment_id.exit:                             ; preds = %bb.aj
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aoz, i64 56
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !37
  %i.aps = zext nneg i32 %i.apl to i64            ; 2 uses
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %i.aps
  %i.apu = load float, ptr %i.apt, align 4, !tbaa !11 ; 2 uses
  %i.apv = fcmp reassoc nsz arcp contract afn une float %i.apu, 0.000000e+00
  br i1 %i.apv, label %bb.ak, label %_get_segment_id.exit.thread

bb.ak:                                            ; preds = %_get_segment_id.exit
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aoz, i64 64
  %i.apx = load ptr, ptr %i.apw, align 16, !tbaa !36
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %i.apx, i64 %i.aps
  %i.apz = load float, ptr %i.apy, align 4, !tbaa !11
  %i.aqa = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %1, ptr noundef nonnull %9, i32 noundef %i.i, i32 noundef %i.anp, i32 noundef %i.aov, ptr noundef nonnull %3, ptr noundef %i.c, i32 noundef 0)
  %i.aqb = fsub reassoc nsz arcp contract afn float %i.apu, %i.apz
  %i.aqc = fadd reassoc nsz arcp contract afn float %i.aqb, %i.aqa ; 3 uses
  %i.aqd = fmul reassoc nsz arcp contract afn float %i.aqc, %i.aqc
  %i.aqe = fmul reassoc nsz arcp contract afn float %i.aqd, %i.aqc
  %i.aqf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aof, float %i.aqe) ; 2 uses
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aor
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !386
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %i.aoy
  store float %i.aqf, ptr %i.aqi, align 4, !tbaa !11
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.aoc
  store float %i.aqf, ptr %i.aqj, align 4, !tbaa !11
  br label %_get_segment_id.exit.thread

_get_segment_id.exit.thread:                      ; preds = %bb.ai, %bb.aj, %bb.ak, %_get_segment_id.exit, %fcol.exit466
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond716.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count
  br i1 %exitcond716.not, label %._crit_edge625, label %bb.af

bb.al:                                            ; preds = %._crit_edge627.split
  call void @dt_segments_combine(ptr noundef nonnull %i.dn, i32 noundef %i.bg)
  %i.aqk = fmul reassoc nsz arcp contract afn float %i.bd, 5.000000e+00
  %i.aql = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aqk, float 1.000000e+00)
  tail call void @dt_iop_image_fill(ptr noundef %i.anu, float noundef %i.aql, i64 noundef %i.by, i64 noundef %i.ce, i64 noundef 1) #33
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.da, float noundef 0.000000e+00, i64 noundef %i.by, i64 noundef %i.ce, i64 noundef 1) #33
  %i.aqm = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !28 ; 9 uses
  %i.aqo = sext i32 %i.aqn to i64                 ; 9 uses
  %i.aqp = sub i64 %i.ce, %i.aqo                  ; 2 uses
  %i.aqq = icmp ugt i64 %i.aqp, %i.aqo
  br i1 %i.aqq, label %.preheader584.lr.ph, label %._crit_edge636.split

.preheader584.lr.ph:                              ; preds = %bb.al
  %i.aqr = sub i64 %i.by, %i.aqo                  ; 2 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %15, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul628 = fmul reassoc nsz arcp contract afn float %i.p, f0x3EAAAAAB ; 2 uses
  %factor.op.fmul630 = fmul reassoc nsz arcp contract afn float %i.r, f0x3EAAAAAB ; 2 uses
  %i.aqs = icmp ugt i64 %i.aqr, %i.aqo
  %i.aqt = load ptr, ptr %i.dn, align 16          ; 2 uses
  br i1 %i.aqs, label %.preheader584.preheader, label %._crit_edge636.split

.preheader584.preheader:                          ; preds = %.preheader584.lr.ph
  %i.aqu = mul <4 x i64> %i.cx, <i64 28, i64 24, i64 20, i64 12>
  %i.aqv = shl i64 %i.cg, 2
  %i.aqw = shl nsw i64 %i.aqo, 1
  %i.aqx = sub i64 %i.bx, %i.aqw
  %i.aqy = add i64 %i.aqx, 16                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.aqy, 8
  %i.aqz = shl i64 %i.cg, 4
  %diff.check = icmp ugt i64 %i.aqz, -32
  %i.ara = add <4 x i64> %i.aqu, splat (i64 -1)
  %i.arb = icmp ult <4 x i64> %i.ara, splat (i64 31)
  %i.arc = add i64 %.idx, -1
  %diff.check949 = icmp ult i64 %i.arc, 31
  %i.ard = add i64 %i.aqv, -1
  %diff.check951 = icmp ult i64 %i.ard, 31
  %i.are = bitcast <4 x i1> %i.arb to i4
  %i.arf = icmp ne i4 %i.are, 0
  %op.rdx = or i1 %i.arf, %diff.check949
  %op.rdx1106 = or i1 %diff.check951, %diff.check
  %op.rdx1107 = or i1 %op.rdx, %op.rdx1106
  %n.vec = and i64 %i.aqy, -8                     ; 3 uses
  %i.arg = add i64 %n.vec, %i.aqo
  %broadcast.splatinsert = insertelement <8 x float> poison, float %factor.op.fmul628, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <8 x float> poison, float %factor.op.fmul630, i64 0
  %broadcast.splat954 = shufflevector <8 x float> %broadcast.splatinsert953, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat956 = shufflevector <8 x float> %broadcast.splatinsert955, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.aqy, %n.vec
  br label %.preheader584

.preheader584:                                    ; preds = %.preheader584.preheader, %._crit_edge634
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %._crit_edge634 ], [ %i.aqo, %.preheader584.preheader ] ; 2 uses
  %i.arh = mul i64 %indvars.iv725, %i.by          ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx1107
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader584
  %invariant.op1168 = add i64 %i.aqo, %i.arh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass1169 = add i64 %index, %invariant.op1168 ; 6 uses
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.reass1169
  %wide.load = load <8 x float>, ptr %i.ari, align 4, !tbaa !11
  %i.arj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.reass1169
  %wide.load957 = load <8 x float>, ptr %i.ark, align 4, !tbaa !11
  %i.arl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load957, %broadcast.splat954
  %i.arm = fadd reassoc nsz arcp contract afn <8 x float> %i.arl, %i.arj
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.reass1169
  %wide.load958 = load <8 x float>, ptr %i.arn, align 4, !tbaa !11
  %i.aro = fmul reassoc nsz arcp contract afn <8 x float> %wide.load958, %broadcast.splat956
  %i.arp = fadd reassoc nsz arcp contract afn <8 x float> %i.arm, %i.aro
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.reass1169
  store <8 x float> %i.arp, ptr %i.arq, align 4, !tbaa !11
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %.reass1169
  %wide.load959 = load <8 x i32>, ptr %i.arr, align 4, !tbaa !22
  %i.ars = icmp eq <8 x i32> %wide.load959, splat (i32 1)
  %i.art = select <8 x i1> %i.ars, <8 x float> splat (float 1.000000e+20), <8 x float> zeroinitializer
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.reass1169
  store <8 x float> %i.art, ptr %i.aru, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.arv = icmp eq i64 %index.next, %n.vec
  br i1 %i.arv, label %middle.block, label %vector.body, !llvm.loop !492

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge634, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader584, %middle.block
  %indvars.iv722.ph = phi i64 [ %i.arg, %middle.block ], [ %i.aqo, %.preheader584 ]
  br label %scalar.ph

._crit_edge636.split:                             ; preds = %._crit_edge634, %.preheader584.lr.ph, %bb.al
  %i.arw = icmp slt i32 %i.aqn, 1
  br i1 %i.arw, label %_masks_extend_border.exit484, label %bb.am

bb.am:                                            ; preds = %._crit_edge636.split
  %i.arx = zext nneg i32 %i.aqn to i64            ; 8 uses
  %i.ary = sub nsw i32 %i.df, %i.aqn              ; 3 uses
  %i.arz = sext i32 %i.ary to i64
  %i.asa = icmp ult i32 %i.aqn, %i.ary
  br i1 %i.asa, label %.lr.ph.i478, label %.preheader.i470

.lr.ph.i478:                                      ; preds = %bb.am
  %i.asb = xor i64 %i.arx, -1
  %invariant.gep.i479 = getelementptr [4 x i8], ptr %i.dc, i64 %i.fy
  %xtraiter = and i64 %i.arx, 3                   ; 3 uses
  %i.asc = icmp ult i32 %i.aqn, 4
  %unroll_iter = and i64 %i.arx, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1125 = icmp ne i64 %xtraiter, 0
  br label %bb.an

.preheader.i470:                                  ; preds = %.epilog-lcssa, %bb.am
  br i1 %.not.i, label %_masks_extend_border.exit484, label %.lr.ph85.i472

.lr.ph85.i472:                                    ; preds = %.preheader.i470
  %i.asd = mul nsw i32 %i.aqn, %i.de
  %i.ase = sext i32 %i.asd to i64
  %i.asf = xor i32 %i.aqn, -1
  %i.asg = add i32 %i.asf, %i.de
  %i.ash = sext i32 %i.asg to i64
  %i.asi = add nsw i32 %i.ary, -1
  %i.asj = mul nsw i32 %i.asi, %i.de
  %i.ask = sext i32 %i.asj to i64
  %xtraiter1129 = and i64 %i.arx, 3               ; 3 uses
  %i.asl = icmp ult i32 %i.aqn, 4
  %unroll_iter1134 = and i64 %i.arx, 2147483644
  %lcmp.mod1131.not = icmp eq i64 %xtraiter1129, 0
  %lcmp.mod1133 = icmp ne i64 %xtraiter1129, 0
  br label %bb.ap

bb.an:                                            ; preds = %.epilog-lcssa, %.lr.ph.i478
  %.07282.i480 = phi i64 [ %i.arx, %.lr.ph.i478 ], [ %i.asw, %.epilog-lcssa ] ; 2 uses
  %i.asm = mul i64 %.07282.i480, %i.fy            ; 2 uses
  %i.asn = getelementptr [4 x i8], ptr %i.dc, i64 %i.asm ; 6 uses
  %i.aso = getelementptr [4 x i8], ptr %i.asn, i64 %i.arx ; 5 uses
  %gep.i481 = getelementptr [4 x i8], ptr %invariant.gep.i479, i64 %i.asm ; 6 uses
  %i.asp = getelementptr [4 x i8], ptr %gep.i481, i64 %i.asb ; 5 uses
  br i1 %i.asc, label %.epil.preheader, label %.new

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.an
  %.07481.i482.epil.init = phi i64 [ 0, %bb.an ], [ %i.atv, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1125)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %.07481.i482.epil = phi i64 [ %.07481.i482.epil.init, %.epil.preheader ], [ %i.asv, %bb.ao ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ao ]
  %i.asq = load float, ptr %i.aso, align 4, !tbaa !11
  %i.asr = getelementptr [4 x i8], ptr %i.asn, i64 %.07481.i482.epil
  store float %i.asq, ptr %i.asr, align 4, !tbaa !11
  %i.ass = load float, ptr %i.asp, align 4, !tbaa !11
  %i.ast = xor i64 %.07481.i482.epil, -1
  %i.asu = getelementptr [4 x i8], ptr %gep.i481, i64 %i.ast
  store float %i.ass, ptr %i.asu, align 4, !tbaa !11
  %i.asv = add nuw nsw i64 %.07481.i482.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ao, !llvm.loop !493

.epilog-lcssa:                                    ; preds = %bb.ao, %.unr-lcssa
  %i.asw = add nuw i64 %.07282.i480, 1            ; 2 uses
  %i.asx = icmp ult i64 %i.asw, %i.arz
  br i1 %i.asx, label %bb.an, label %.preheader.i470

.new:                                             ; preds = %bb.an, %.new
  %.07481.i482 = phi i64 [ %i.atv, %.new ], [ 0, %bb.an ] ; 9 uses
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.an ]
  %i.asy = load float, ptr %i.aso, align 4, !tbaa !11
  %i.asz = getelementptr [4 x i8], ptr %i.asn, i64 %.07481.i482
  store float %i.asy, ptr %i.asz, align 4, !tbaa !11
  %i.ata = load float, ptr %i.asp, align 4, !tbaa !11
  %i.atb = xor i64 %.07481.i482, -1
  %i.atc = getelementptr [4 x i8], ptr %gep.i481, i64 %i.atb
  store float %i.ata, ptr %i.atc, align 4, !tbaa !11
  %i.atd = load float, ptr %i.aso, align 4, !tbaa !11
  %i.ate = getelementptr [4 x i8], ptr %i.asn, i64 %.07481.i482
  %i.atf = getelementptr i8, ptr %i.ate, i64 4
  store float %i.atd, ptr %i.atf, align 4, !tbaa !11
  %i.atg = load float, ptr %i.asp, align 4, !tbaa !11
  %i.ath = xor i64 %.07481.i482, -2
  %i.ati = getelementptr [4 x i8], ptr %gep.i481, i64 %i.ath
  store float %i.atg, ptr %i.ati, align 4, !tbaa !11
  %i.atj = load float, ptr %i.aso, align 4, !tbaa !11
  %i.atk = getelementptr [4 x i8], ptr %i.asn, i64 %.07481.i482
  %i.atl = getelementptr i8, ptr %i.atk, i64 8
  store float %i.atj, ptr %i.atl, align 4, !tbaa !11
  %i.atm = load float, ptr %i.asp, align 4, !tbaa !11
  %i.atn = xor i64 %.07481.i482, -3
  %i.ato = getelementptr [4 x i8], ptr %gep.i481, i64 %i.atn
  store float %i.atm, ptr %i.ato, align 4, !tbaa !11
  %i.atp = load float, ptr %i.aso, align 4, !tbaa !11
  %i.atq = getelementptr [4 x i8], ptr %i.asn, i64 %.07481.i482
  %i.atr = getelementptr i8, ptr %i.atq, i64 12
  store float %i.atp, ptr %i.atr, align 4, !tbaa !11
  %i.ats = load float, ptr %i.asp, align 4, !tbaa !11
  %i.att = xor i64 %.07481.i482, -4
  %i.atu = getelementptr [4 x i8], ptr %gep.i481, i64 %i.att
  store float %i.ats, ptr %i.atu, align 4, !tbaa !11
  %i.atv = add nuw nsw i64 %.07481.i482, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.new

bb.ap:                                            ; preds = %.epilog-lcssa1132, %.lr.ph85.i472
  %.07384.i473 = phi i64 [ 0, %.lr.ph85.i472 ], [ %i.auk, %.epilog-lcssa1132 ] ; 3 uses
  %i.atw = tail call i64 @llvm.umax.i64(i64 %.07384.i473, i64 %i.arx)
  %..i474 = tail call i64 @llvm.umin.i64(i64 %i.atw, i64 %i.ash)
  %i.atx = getelementptr [4 x i8], ptr %i.dc, i64 %..i474 ; 2 uses
  %i.aty = getelementptr [4 x i8], ptr %i.atx, i64 %i.ase
end_hunk_1
begin_hunk_2_@_process_segmentation:bb.a
  %indvars.iv735 = phi i64 [ 2, %.lr.ph642 ], [ %indvars.iv.next736, %_add_poisson_noise.exit ] ; 7 uses
  %i.bzi = getelementptr inbounds nuw [4 x i8], ptr %i.bdc, i64 %indvars.iv735
  %i.bzj = load float, ptr %i.bzi, align 4, !tbaa !11
  %i.bzk = fcmp reassoc nsz arcp contract afn ogt float %i.bzj, 3.000000e+00
  br i1 %i.bzk, label %bb.ea, label %_add_poisson_noise.exit

bb.ea:                                            ; preds = %bb.dz
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %indvars.iv735
  %i.bzm = load i32, ptr %i.bzl, align 4, !tbaa !22
  %..i526 = tail call i32 @llvm.smax.i32(i32 %i.bzm, i32 %i.bdf) ; 2 uses
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv735
  %i.bzo = load i32, ptr %i.bzn, align 4, !tbaa !22
  %i.bzp = add i32 %i.bzo, 1
  %i.bzq = tail call i32 @llvm.smin.i32(i32 %i.bzp, i32 %i.bdk) ; 2 uses
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %i.bdm, i64 %indvars.iv735
  %i.bzs = load i32, ptr %i.bzr, align 4, !tbaa !22
  %i.bzt = tail call i32 @llvm.smax.i32(i32 %i.bzs, i32 %i.bdf) ; 2 uses
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %i.bdo, i64 %indvars.iv735
  %i.bzv = load i32, ptr %i.bzu, align 4, !tbaa !22
  %i.bzw = add i32 %i.bzv, 1
  %i.bzx = tail call i32 @llvm.smin.i32(i32 %i.bzw, i32 %i.bdr) ; 2 uses
  %i.bzy = sext i32 %..i526 to i64                ; 3 uses
  %i.bzz = icmp slt i32 %i.bzt, %i.bzx
  %i.caa = icmp slt i32 %..i526, %i.bzq
  %or.cond657 = select i1 %i.bzz, i1 %i.caa, i1 false
  br i1 %or.cond657, label %.preheader.i530.preheader, label %_add_poisson_noise.exit

.preheader.i530.preheader:                        ; preds = %bb.ea
  %i.cab = sext i32 %i.bzt to i64                 ; 3 uses
  %i.cac = lshr i64 %i.cab, 33
  %i.cad = xor i64 %i.cac, %i.cab
  %i.cae = mul i64 %i.cad, 7109453100751455733    ; 2 uses
  %i.caf = lshr i64 %i.cae, 28
  %i.cag = xor i64 %i.caf, %i.cae
  %i.cah = mul i64 %i.cag, -3808689974395783757
  %i.cai = lshr i64 %i.cah, 32
  %i.caj = trunc nuw i64 %i.cai to i32            ; 2 uses
  %i.cak = xor i32 %i.caj, 635086878              ; 2 uses
  %i.cal = lshr i64 %i.bzy, 33
  %i.cam = xor i64 %i.cal, %i.bzy
  %i.can = mul i64 %i.cam, 7109453100751455733    ; 2 uses
  %i.cao = lshr i64 %i.can, 28
  %i.cap = xor i64 %i.cao, %i.can
  %i.caq = mul i64 %i.cap, -3808689974395783757
  %i.car = lshr i64 %i.caq, 32
  %i.cas = trunc nuw i64 %i.car to i32            ; 3 uses
  %i.cat = shl i32 %i.cas, 9
  %i.cau = xor i32 %i.cak, %i.cat
  %i.cav = xor i32 %i.cas, -1171427716            ; 3 uses
  %i.caw = xor i32 %i.cav, %i.caj                 ; 2 uses
  %i.cax = xor i32 %i.cau, %i.caw                 ; 2 uses
  %i.cay = xor i32 %i.cak, %i.cas                 ; 3 uses
  %i.caz = shl i32 %i.cay, 9
  %i.cba = xor i32 %i.cax, %i.caz
  %i.cbb = tail call noundef i32 @llvm.fshl.i32(i32 %i.cav, i32 %i.cav, i32 11)
  %i.cbc = xor i32 %i.cay, %i.cbb                 ; 3 uses
  %i.cbd = xor i32 %i.cbc, %i.caw                 ; 2 uses
  %i.cbe = xor i32 %i.cba, %i.cbd                 ; 2 uses
  %i.cbf = xor i32 %i.cax, %i.cay                 ; 3 uses
  %i.cbg = xor i32 %i.cbe, %i.cbf                 ; 3 uses
  %i.cbh = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbc, i32 %i.cbc, i32 11)
  %i.cbi = xor i32 %i.cbf, %i.cbh                 ; 3 uses
  %i.cbj = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbi, i32 %i.cbi, i32 11)
  %i.cbk = xor i32 %i.cbg, %i.cbj                 ; 3 uses
  %i.cbl = tail call noundef i32 @llvm.fshl.i32(i32 %i.cbk, i32 %i.cbk, i32 11)
  %i.cbm = shl i32 %i.cbf, 9
  %i.cbn = xor i32 %i.cbe, %i.cbm
  %i.cbo = xor i32 %i.cbi, %i.cbd                 ; 2 uses
  %i.cbp = xor i32 %i.cbn, %i.cbo                 ; 2 uses
  %i.cbq = shl i32 %i.cbg, 9
  %i.cbr = xor i32 %i.cbp, %i.cbq
  %i.cbs = xor i32 %i.cbk, %i.cbo
  %i.cbt = xor i32 %i.cbp, %i.cbg
  br label %.preheader.i530

.preheader.i530:                                  ; preds = %.preheader.i530.preheader, %._crit_edge.i535
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %._crit_edge.i535 ], [ %i.cab, %.preheader.i530.preheader ] ; 2 uses
  %.sroa.0.087.i = phi i32 [ %.sroa.0.2.i, %._crit_edge.i535 ], [ %i.cbs, %.preheader.i530.preheader ]
  %.sroa.13.086.i = phi i32 [ %.sroa.13.2.i, %._crit_edge.i535 ], [ %i.cbt, %.preheader.i530.preheader ]
  %.sroa.24.085.i = phi i32 [ %.sroa.24.2.i, %._crit_edge.i535 ], [ %i.cbr, %.preheader.i530.preheader ]
  %.sroa.35.084.i = phi i32 [ %.sroa.35.2.i, %._crit_edge.i535 ], [ %i.cbl, %.preheader.i530.preheader ]
  %i.cbu = mul nsw i64 %indvars.iv91.i, %i.bds
  br label %bb.eb

._crit_edge.i535:                                 ; preds = %bb.ec
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %lftr.wideiv93.i = trunc i64 %indvars.iv.next92.i to i32
  %exitcond94.not.i = icmp eq i32 %i.bzx, %lftr.wideiv93.i
  br i1 %exitcond94.not.i, label %_add_poisson_noise.exit, label %.preheader.i530

bb.eb:                                            ; preds = %bb.ec, %.preheader.i530
  %indvars.iv.i531 = phi i64 [ %i.bzy, %.preheader.i530 ], [ %indvars.iv.next.i532, %bb.ec ] ; 3 uses
  %.sroa.0.179.i = phi i32 [ %.sroa.0.087.i, %.preheader.i530 ], [ %.sroa.0.2.i, %bb.ec ] ; 4 uses
  %.sroa.13.178.i = phi i32 [ %.sroa.13.086.i, %.preheader.i530 ], [ %.sroa.13.2.i, %bb.ec ] ; 4 uses
  %.sroa.24.177.i = phi i32 [ %.sroa.24.085.i, %.preheader.i530 ], [ %.sroa.24.2.i, %bb.ec ] ; 2 uses
  %.sroa.35.176.i = phi i32 [ %.sroa.35.084.i, %.preheader.i530 ], [ %.sroa.35.2.i, %bb.ec ] ; 3 uses
  %i.cbv = add nsw i64 %indvars.iv.i531, %i.cbu   ; 2 uses
  %i.cbw = getelementptr inbounds nuw [4 x i8], ptr %i.bdu, i64 %i.cbv
  %i.cbx = load i32, ptr %i.cbw, align 4, !tbaa !22
  %i.cby = zext i32 %i.cbx to i64
  %i.cbz = icmp eq i64 %indvars.iv735, %i.cby
  br i1 %i.cbz, label %poisson_noise.exit.i, label %bb.ec

poisson_noise.exit.i:                             ; preds = %bb.eb
  %i.cca = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.cbv ; 2 uses
  %i.ccb = load float, ptr %i.cca, align 4, !tbaa !11 ; 2 uses
  %i.ccc = fmul reassoc nsz arcp contract afn float %i.ccb, %i.bcz
  %i.ccd = shl i32 %.sroa.13.178.i, 9
  %i.cce = xor i32 %.sroa.24.177.i, %.sroa.0.179.i ; 2 uses
  %i.ccf = xor i32 %.sroa.35.176.i, %.sroa.13.178.i ; 3 uses
  %i.ccg = xor i32 %i.cce, %.sroa.13.178.i        ; 3 uses
  %i.cch = xor i32 %i.ccf, %.sroa.0.179.i         ; 3 uses
  %i.cci = xor i32 %i.cce, %i.ccd
  %i.ccj = tail call noundef i32 @llvm.fshl.i32(i32 %i.ccf, i32 %i.ccf, i32 11) ; 2 uses
  %i.cck = add i32 %i.ccj, %i.cch
  %i.ccl = shl i32 %i.ccg, 9
  %i.ccm = xor i32 %i.cci, %i.cch                 ; 2 uses
  %i.ccn = xor i32 %i.ccj, %i.ccg                 ; 3 uses
  %i.cco = xor i32 %i.ccm, %i.ccg
  %i.ccp = xor i32 %i.ccn, %i.cch
  %i.ccq = xor i32 %i.ccm, %i.ccl
  %i.ccr = tail call noundef i32 @llvm.fshl.i32(i32 %i.ccn, i32 %i.ccn, i32 11)
  %i.ccs = lshr i32 %i.cck, 8
  %i.cct = uitofp reassoc nsz arcp contract afn nneg i32 %i.ccs to float
  %i.ccu = and i64 %indvars.iv.i531, 1
  %.not.i.i = icmp eq i64 %i.ccu, 0
  %i.ccv = fmul reassoc nnan nsz arcp contract afn float %i.cct, f0x34C90FDB
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ccv) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %.sink.i.i = select i1 %.not.i.i, float %sin.i.i, float %cos.i.i
  %i.ccw = add i32 %.sroa.35.176.i, %.sroa.0.179.i
  %i.ccx = lshr i32 %i.ccw, 8
  %i.ccy = uitofp reassoc nsz arcp contract afn nneg i32 %i.ccx to float
  %i.ccz = fmul reassoc nnan nsz arcp contract afn float %i.ccy, f0x33800000
  %i.cda = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.ccz, float f0x00800000)
  %i.cdb = tail call fast float @llvm.log.f32(float %i.cda)
  %i.cdc = fmul reassoc nnan nsz arcp contract afn float %i.cdb, -2.000000e+00
  %i.cdd = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cdc)
  %i.cde = fmul reassoc nsz arcp contract afn float %i.cdd, %i.bcz
  %i.cdf = fmul reassoc nsz arcp contract afn float %i.cde, %.sink.i.i
  %i.cdg = fadd reassoc nsz arcp contract afn float %i.ccc, 3.750000e-01
  %i.cdh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cdg, float 0.000000e+00)
  %i.cdi = tail call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.cdh)
  %i.cdj = fmul reassoc nnan nsz arcp contract afn float %i.cdi, 2.000000e+00
  %i.cdk = fadd reassoc nsz arcp contract afn float %i.cdj, %i.cdf ; 2 uses
  %i.cdl = fmul reassoc nsz arcp contract afn float %i.cdk, %i.cdk
  %i.cdm = fsub reassoc nsz arcp contract afn float %i.cdl, %i.bdt
  %i.cdn = fmul reassoc nsz arcp contract afn float %i.cdm, 2.500000e-01
  %i.cdo = fadd reassoc nsz arcp contract afn float %i.ccb, -3.750000e-01
  %i.cdp = fadd reassoc nsz arcp contract afn float %i.cdo, %i.cdn
  store float %i.cdp, ptr %i.cca, align 4, !tbaa !11
  br label %bb.ec

bb.ec:                                            ; preds = %poisson_noise.exit.i, %bb.eb
  %.sroa.35.2.i = phi i32 [ %i.ccr, %poisson_noise.exit.i ], [ %.sroa.35.176.i, %bb.eb ] ; 2 uses
  %.sroa.24.2.i = phi i32 [ %i.ccq, %poisson_noise.exit.i ], [ %.sroa.24.177.i, %bb.eb ] ; 2 uses
  %.sroa.13.2.i = phi i32 [ %i.cco, %poisson_noise.exit.i ], [ %.sroa.13.178.i, %bb.eb ] ; 2 uses
  %.sroa.0.2.i = phi i32 [ %i.ccp, %poisson_noise.exit.i ], [ %.sroa.0.179.i, %bb.eb ] ; 2 uses
  %indvars.iv.next.i532 = add nsw i64 %indvars.iv.i531, 1 ; 2 uses
  %lftr.wideiv.i533 = trunc i64 %indvars.iv.next.i532 to i32
  %exitcond.not.i534 = icmp eq i32 %i.bzq, %lftr.wideiv.i533
  br i1 %exitcond.not.i534, label %._crit_edge.i535, label %bb.eb

_add_poisson_noise.exit:                          ; preds = %._crit_edge.i535, %bb.ea, %bb.dz
  %indvars.iv.next736 = add nuw nsw i64 %indvars.iv735, 1 ; 2 uses
  %exitcond739.not = icmp eq i64 %indvars.iv.next736, %wide.trip.count738
  br i1 %exitcond739.not, label %.loopexit581, label %bb.dz

.loopexit581:                                     ; preds = %_add_poisson_noise.exit, %._crit_edge640, %._crit_edge640.thread
  %i.cdq = sitofp reassoc nsz arcp contract afn i32 %i.bg to float
  %i.cdr = fadd reassoc nsz arcp contract afn float %i.cdq, 2.000000e+00 ; 2 uses
  %i.cds = load i32, ptr %i.bz, align 4, !tbaa !308 ; 2 uses
  %i.cdt = add i32 %i.cds, -1
  %i.cdu = icmp sgt i32 %i.cds, 2
  br i1 %i.cdu, label %.preheader579.lr.ph, label %.loopexit

.preheader579.lr.ph:                              ; preds = %.loopexit581
  %i.cdv = load i32, ptr %i.bt, align 4, !tbaa !310 ; 3 uses
  %i.cdw = icmp sgt i32 %i.cdv, 2
  %i.cdx = sext i32 %i.cdv to i64
  br i1 %i.cdw, label %.preheader579.preheader, label %.loopexit

.preheader579.preheader:                          ; preds = %.preheader579.lr.ph
  %i.cdy = add nsw i32 %i.cdv, -1                 ; 2 uses
  %wide.trip.count753 = zext nneg i32 %i.cdt to i64
  %wide.trip.count743 = zext i32 %i.cdy to i64
  %wide.trip.count748 = zext i32 %i.cdy to i64
  br label %.preheader579

.preheader579:                                    ; preds = %.preheader579.preheader, %._crit_edge645
  %indvars.iv750 = phi i64 [ 1, %.preheader579.preheader ], [ %indvars.iv.next751, %._crit_edge645 ] ; 5 uses
  %i.cdz = mul nuw nsw i64 %indvars.iv750, %i.cdx ; 2 uses
  %indvars.iv750.tr = trunc i64 %indvars.iv750 to i32
  %i.cea = shl i32 %indvars.iv750.tr, 1
  %i.ceb = and i32 %i.cea, 14
  %i.cec = trunc i64 %indvars.iv750 to i32
  %i.ced = add i32 %i.cec, 600
  %i.cee = urem i32 %i.ced, 6
  %i.cef = zext nneg i32 %i.cee to i64
  %i.ceg = getelementptr inbounds nuw [6 x i8], ptr %9, i64 %i.cef
  %i.ceh = trunc nuw nsw i64 %indvars.iv750 to i32
  %i.cei = udiv i32 %i.ceh, 3
  %i.cej = add nuw nsw i32 %i.cei, 8
  %i.cek = mul nsw i32 %i.cej, %i.de
  %i.cel = add i32 %i.cek, 8                      ; 2 uses
  br i1 %.not453, label %fcol.exit538.us, label %fcol.exit538

fcol.exit538.us:                                  ; preds = %.preheader579, %bb.ee
  %indvars.iv745 = phi i64 [ %indvars.iv.next746, %bb.ee ], [ 1, %.preheader579 ] ; 4 uses
  %i.cem = add nuw nsw i64 %i.cdz, %indvars.iv745 ; 2 uses
  %i.cen = trunc i64 %indvars.iv745 to i32
  %i.ceo = add i32 %i.cen, 600
  %i.cep = urem i32 %i.ceo, 6
  %i.ceq = zext nneg i32 %i.cep to i64
  %i.cer = getelementptr inbounds nuw i8, ptr %i.ceg, i64 %i.ceq
  %i.ces = load i8, ptr %i.cer, align 1, !tbaa !332
  %i.cet = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cem
  %i.ceu = load float, ptr %i.cet, align 4, !tbaa !11
  %i.cev = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ceu, float 0.000000e+00)
  %i.cew = zext i8 %i.ces to i64
  %i.cex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cew
  %i.cey = load float, ptr %i.cex, align 4, !tbaa !11
  %i.cez = fcmp reassoc nsz arcp contract afn ogt float %i.cev, %i.cey
  br i1 %i.cez, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %fcol.exit538.us
  %i.cfa = trunc nuw nsw i64 %indvars.iv745 to i32
  %i.cfb = udiv i32 %i.cfa, 3
  %i.cfc = add i32 %i.cel, %i.cfb
  %i.cfd = sext i32 %i.cfc to i64                 ; 2 uses
  %i.cfe = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cfd
  %i.cff = load float, ptr %i.cfe, align 4, !tbaa !11
  %i.cfg = fsub reassoc nsz arcp contract afn float %i.cdr, %i.cff
  %i.cfh = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cfg)
  %i.cfi = fadd reassoc nsz arcp contract afn float %i.cfh, 1.000000e+00
  %i.cfj = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.cfd
  %i.cfk = load float, ptr %i.cfj, align 4, !tbaa !11
  %i.cfl = fmul reassoc nsz arcp contract afn float %i.cfk, %i.bd
  %i.cfm = fdiv reassoc nsz arcp contract afn float %i.cfl, %i.cfi
  %i.cfn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cfm, float 0.000000e+00)
  %i.cfo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cem ; 2 uses
  %i.cfp = load float, ptr %i.cfo, align 4, !tbaa !11
  %i.cfq = fadd reassoc nsz arcp contract afn float %i.cfn, %i.cfp
  store float %i.cfq, ptr %i.cfo, align 4, !tbaa !11
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %fcol.exit538.us
  %indvars.iv.next746 = add nuw nsw i64 %indvars.iv745, 1 ; 2 uses
  %exitcond749.not = icmp eq i64 %indvars.iv.next746, %wide.trip.count748
  br i1 %exitcond749.not, label %._crit_edge645, label %fcol.exit538.us

._crit_edge645:                                   ; preds = %bb.eg, %bb.ee
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv750, 1 ; 2 uses
  %exitcond754.not = icmp eq i64 %indvars.iv.next751, %wide.trip.count753
  br i1 %exitcond754.not, label %.loopexit, label %.preheader579

fcol.exit538:                                     ; preds = %.preheader579, %bb.eg
  %indvars.iv740 = phi i64 [ %indvars.iv.next741, %bb.eg ], [ 1, %.preheader579 ] ; 3 uses
  %i.cfr = add nuw nsw i64 %i.cdz, %indvars.iv740 ; 2 uses
  %i.cfs = trunc nuw nsw i64 %indvars.iv740 to i32 ; 2 uses
  %i.cft = and i32 %i.cfs, 1
  %.tr.i.i536 = or disjoint i32 %i.cft, %i.ceb
  %i.cfu = shl nuw nsw i32 %.tr.i.i536, 1
  %i.cfv = lshr i32 %i.i, %i.cfu
  %i.cfw = and i32 %i.cfv, 3
  %i.cfx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cfr
  %i.cfy = load float, ptr %i.cfx, align 4, !tbaa !11
  %i.cfz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cfy, float 0.000000e+00)
  %i.cga = zext nneg i32 %i.cfw to i64
  %i.cgb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cga
  %i.cgc = load float, ptr %i.cgb, align 4, !tbaa !11
  %i.cgd = fcmp reassoc nsz arcp contract afn ogt float %i.cfz, %i.cgc
  br i1 %i.cgd, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %fcol.exit538
  %i.cge = udiv i32 %i.cfs, 3
  %i.cgf = add i32 %i.cel, %i.cge
  %i.cgg = sext i32 %i.cgf to i64                 ; 2 uses
  %i.cgh = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cgg
  %i.cgi = load float, ptr %i.cgh, align 4, !tbaa !11
  %i.cgj = fsub reassoc nsz arcp contract afn float %i.cdr, %i.cgi
  %i.cgk = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cgj)
  %i.cgl = fadd reassoc nsz arcp contract afn float %i.cgk, 1.000000e+00
  %i.cgm = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.cgg
  %i.cgn = load float, ptr %i.cgm, align 4, !tbaa !11
  %i.cgo = fmul reassoc nsz arcp contract afn float %i.cgn, %i.bd
  %i.cgp = fdiv reassoc nsz arcp contract afn float %i.cgo, %i.cgl
  %i.cgq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cgp, float 0.000000e+00)
  %i.cgr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cfr ; 2 uses
  %i.cgs = load float, ptr %i.cgr, align 4, !tbaa !11
  %i.cgt = fadd reassoc nsz arcp contract afn float %i.cgq, %i.cgs
  store float %i.cgt, ptr %i.cgr, align 4, !tbaa !11
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %fcol.exit538
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %exitcond744.not = icmp eq i64 %indvars.iv.next741, %wide.trip.count743
  br i1 %exitcond744.not, label %._crit_edge645, label %fcol.exit538

.loopexit:                                        ; preds = %._crit_edge645, %.loopexit581, %.preheader579.lr.ph, %bb.as, %bb.ar
  %i.cgu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cgv = load i32, ptr %i.cgu, align 4, !tbaa !308 ; 2 uses
  %i.cgw = icmp sgt i32 %i.cgv, 0
  br i1 %i.cgw, label %.preheader.lr.ph, label %._crit_edge653.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.cgx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cgy = load i32, ptr %i.cgx, align 4, !tbaa !310 ; 3 uses
  %i.cgz = icmp sgt i32 %i.cgy, 0
  %i.cha = sext i32 %i.cgy to i64                 ; 2 uses
  %i.chb = icmp eq i32 %6, 1
  %i.chc = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.chd = load i32, ptr %i.chc, align 4
  %i.che = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.chf = load i32, ptr %i.che, align 8
  %i.chg = getelementptr inbounds nuw i8, ptr %8, i64 364
  %i.chh = load i32, ptr %i.chg, align 4
  %i.chi = sub nsw i32 %i.chf, %i.chh
  %i.chj = mul nsw i32 %i.chi, %i.chd
  %i.chk = load ptr, ptr %i.dn, align 16
  %i.chl = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.chm = load i32, ptr %i.chl, align 8
  br i1 %i.cgz, label %.preheader.lr.ph.split, label %._crit_edge653.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.chn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cho = load i32, ptr %i.chn, align 4, !tbaa !300
  %i.chp = load i32, ptr %4, align 4, !tbaa !299
  %i.chq = shl nuw nsw i64 %i.cha, 2
  %i.chr = zext nneg i32 %i.cgy to i64            ; 2 uses
  %i.chs = shl nuw nsw i64 %i.chr, 2
  %i.cht = sext i32 %i.chp to i64
  %i.chu = sext i32 %i.cho to i64
  %wide.trip.count769 = zext nneg i32 %i.cgv to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge649
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge649 ] ; 4 uses
  %i.chv = mul i64 %i.chq, %indvar
  %scevgep759 = getelementptr i8, ptr %2, i64 %i.chv
  %i.chw = add nsw i64 %indvar, %i.chu            ; 7 uses
  %i.chx = mul nuw nsw i64 %indvar, %i.cha
  %i.chy = icmp sgt i64 %i.chw, -1
  %i.chz = trunc nsw i64 %i.chw to i32            ; 2 uses
  %i.cia = udiv i32 %i.chz, 3
  %i.cib = add nuw nsw i32 %i.cia, 8
  %i.cic = mul nsw i32 %i.cib, %i.de
  %invariant.op = add i32 %i.cic, 8
  %i.cid = icmp ne i64 %i.chw, 0
  %i.cie = shl nuw i32 %i.chz, 1
  %i.cif = and i32 %i.cie, 14
  %i.cig = trunc i64 %i.chw to i32
  %i.cih = add i32 %i.cig, 600
  %i.cii = urem i32 %i.cih, 6
  %i.cij = zext nneg i32 %i.cii to i64
  %i.cik = getelementptr inbounds nuw [6 x i8], ptr %9, i64 %i.cij
  br i1 %i.chy, label %.lr.ph648.split.us, label %._crit_edge649.sink.split

.lr.ph648.split.us:                               ; preds = %.preheader
  %i.cil = load i32, ptr %i.bz, align 4, !tbaa !308 ; 2 uses
  %i.cim = sext i32 %i.cil to i64
  %i.cin = icmp slt i64 %i.chw, %i.cim
  %i.cio = add nsw i32 %i.cil, -1
  %i.cip = sext i32 %i.cio to i64
  %i.ciq = icmp samesign ult i64 %i.chw, %i.cip
  %.fr651 = freeze i1 %i.cin
  br i1 %.fr651, label %.lr.ph648.split.us.split, label %._crit_edge649.sink.split

.lr.ph648.split.us.split:                         ; preds = %.lr.ph648.split.us, %bb.eu
  %indvars.iv763 = phi i64 [ %indvars.iv.next764, %bb.eu ], [ 0, %.lr.ph648.split.us ] ; 3 uses
  %i.cir = add nsw i64 %indvars.iv763, %i.cht     ; 7 uses
  %i.cis = add nuw nsw i64 %i.chx, %indvars.iv763 ; 3 uses
  %i.cit = icmp sgt i64 %i.cir, -1
  br i1 %i.cit, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph648.split.us.split
  %i.ciu = load i32, ptr %i.bt, align 4, !tbaa !310 ; 3 uses
  %i.civ = sext i32 %i.ciu to i64
  %i.ciw = icmp slt i64 %i.cir, %i.civ
  br i1 %i.ciw, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph648.split.us.split
  %i.cix = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cis
  store float 0.000000e+00, ptr %i.cix, align 4, !tbaa !11
  br label %bb.eu

bb.ej:                                            ; preds = %bb.eh
  %i.ciy = trunc nuw nsw i64 %i.cir to i32        ; 2 uses
  %i.ciz = udiv i32 %i.ciy, 3
  %.reass650.us = add i32 %i.ciz, %invariant.op   ; 3 uses
  %i.cja = sext i32 %.reass650.us to i64          ; 4 uses
  br i1 %i.aob, label %bb.ek, label %.thread553.us

.thread553.us:                                    ; preds = %bb.ej
  %i.cjb = zext nneg i32 %i.ciu to i64
  %i.cjc = mul nuw nsw i64 %i.chw, %i.cjb
  %i.cjd = getelementptr [4 x i8], ptr %7, i64 %i.cjc
  %i.cje = getelementptr [4 x i8], ptr %i.cjd, i64 %i.cir
  %i.cjf = load float, ptr %i.cje, align 4, !tbaa !11
  %i.cjg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cis
  store float %i.cjf, ptr %i.cjg, align 4, !tbaa !11
  br label %bb.eu

bb.ek:                                            ; preds = %bb.ej
  %i.cjh = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.cja
  %i.cji = load float, ptr %i.cjh, align 4, !tbaa !11
  %i.cjj = fmul reassoc nsz arcp contract afn float %i.cji, 2.000000e-01
  %i.cjk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cjj, float 2.000000e-01) ; 6 uses
  %i.cjl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cis ; 4 uses
  store float %i.cjk, ptr %i.cjl, align 4, !tbaa !11
  %i.cjm = icmp ne i64 %i.cir, 0
  %or.cond11.us = and i1 %i.cid, %i.cjm
  %or.cond561.us = select i1 %or.cond11.us, i1 %i.ciq, i1 false
  %i.cjn = add nsw i32 %i.ciu, -1
  %i.cjo = sext i32 %i.cjn to i64
  %i.cjp = icmp samesign ult i64 %i.cir, %i.cjo
  %or.cond563.us = select i1 %or.cond561.us, i1 %i.cjp, i1 false
  br i1 %or.cond563.us, label %bb.el, label %bb.eu

bb.el:                                            ; preds = %bb.ek
  br i1 %.not453, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.cjq = and i32 %i.ciy, 1
  %.tr.i.i539.us = or disjoint i32 %i.cif, %i.cjq
  %i.cjr = shl nuw nsw i32 %.tr.i.i539.us, 1
  %i.cjs = lshr i32 %i.i, %i.cjr
  %i.cjt = and i32 %i.cjs, 3
  br label %fcol.exit541.us

bb.en:                                            ; preds = %bb.el
  %i.cju = trunc nuw nsw i64 %i.cir to i32
  %i.cjv = add nuw i32 %i.cju, 600
  %i.cjw = urem i32 %i.cjv, 6
  %i.cjx = zext nneg i32 %i.cjw to i64
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cik, i64 %i.cjx
  %i.cjz = load i8, ptr %i.cjy, align 1, !tbaa !332
  %i.cka = zext i8 %i.cjz to i32
  br label %fcol.exit541.us

fcol.exit541.us:                                  ; preds = %bb.en, %bb.em
  %.0.i540.us = phi i32 [ %i.cka, %bb.en ], [ %i.cjt, %bb.em ]
  %i.ckb = zext nneg i32 %.0.i540.us to i64
  %i.ckc = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.ckb ; 6 uses
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.ckc, i64 84
  %i.cke = load i32, ptr %i.ckd, align 4, !tbaa !23
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.ckc, i64 88
  %i.ckg = load i32, ptr %i.ckf, align 8, !tbaa !27
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.ckc, i64 76
  %i.cki = load i32, ptr %i.ckh, align 4, !tbaa !28
  %i.ckj = sub nsw i32 %i.ckg, %i.cki
  %i.ckk = mul nsw i32 %i.ckj, %i.cke
  %.not.i542.us = icmp ult i32 %.reass650.us, %i.ckk
  br i1 %.not.i542.us, label %_get_segment_id.exit545.us, label %_get_segment_id.exit545.thread.us

_get_segment_id.exit545.us:                       ; preds = %fcol.exit541.us
  %i.ckl = load ptr, ptr %i.ckc, align 16, !tbaa !30
  %i.ckm = getelementptr inbounds nuw [4 x i8], ptr %i.ckl, i64 %i.cja
  %i.ckn = load i32, ptr %i.ckm, align 4, !tbaa !22 ; 2 uses
  %i.cko = and i32 %i.ckn, 262143                 ; 3 uses
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.ckc, i64 72
  %i.ckq = load i32, ptr %i.ckp, align 8, !tbaa !47
  %i.ckr = icmp ult i32 %i.cko, %i.ckq
  %i.cks = icmp samesign ugt i32 %i.cko, 1
  %or.cond.i544.us = select i1 %i.ckr, i1 %i.cks, i1 false ; 3 uses
  %i.ckt = select i1 %or.cond.i544.us, i32 %i.cko, i32 0
  %or.cond13.us = select i1 %i.chb, i1 %or.cond.i544.us, i1 false
  br i1 %or.cond13.us, label %bb.et, label %_get_segment_id.exit545.thread.us

_get_segment_id.exit545.thread.us:                ; preds = %_get_segment_id.exit545.us, %fcol.exit541.us
  %i.cku = phi i1 [ %or.cond.i544.us, %_get_segment_id.exit545.us ], [ false, %fcol.exit541.us ]
  %.0.i543558.us = phi i32 [ %i.ckt, %_get_segment_id.exit545.us ], [ 0, %fcol.exit541.us ]
  switch i32 %6, label %bb.eu [
    i32 2, label %bb.eq
    i32 3, label %bb.eo
  ]

bb.eo:                                            ; preds = %_get_segment_id.exit545.thread.us
  %.not.i546.us = icmp ult i32 %.reass650.us, %i.chj
  br i1 %.not.i546.us, label %_get_segment_id.exit549.us, label %_get_segment_id.exit549.thread.us

_get_segment_id.exit549.us:                       ; preds = %bb.eo
  %i.ckv = getelementptr inbounds nuw [4 x i8], ptr %i.chk, i64 %i.cja
  %i.ckw = load i32, ptr %i.ckv, align 4, !tbaa !22
  %i.ckx = and i32 %i.ckw, 262143                 ; 2 uses
  %i.cky = icmp ult i32 %i.ckx, %i.chm
  %i.ckz = icmp samesign ugt i32 %i.ckx, 1
  %or.cond.i548.us = select i1 %i.cky, i1 %i.ckz, i1 false
  br i1 %or.cond.i548.us, label %bb.ep, label %_get_segment_id.exit549.thread.us

bb.ep:                                            ; preds = %_get_segment_id.exit549.us
  %i.cla = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.cja
  %i.clb = load float, ptr %i.cla, align 4, !tbaa !11
  %i.clc = fmul reassoc nsz arcp contract afn float %i.clb, %i.bd
  %i.cld = fadd reassoc nsz arcp contract afn float %i.clc, %i.cjk
  br label %_get_segment_id.exit549.thread.us

_get_segment_id.exit549.thread.us:                ; preds = %bb.ep, %_get_segment_id.exit549.us, %bb.eo
  %i.cle = phi float [ %i.cld, %bb.ep ], [ %i.cjk, %_get_segment_id.exit549.us ], [ %i.cjk, %bb.eo ]
  store float %i.cle, ptr %i.cjl, align 4, !tbaa !11
  br label %bb.eu

bb.eq:                                            ; preds = %_get_segment_id.exit545.thread.us
  br i1 %i.cku, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  %i.clf = getelementptr inbounds nuw i8, ptr %i.ckc, i64 56
  %i.clg = load ptr, ptr %i.clf, align 8, !tbaa !37
  %i.clh = zext nneg i32 %.0.i543558.us to i64
  %i.cli = getelementptr inbounds nuw [4 x i8], ptr %i.clg, i64 %i.clh
  %i.clj = load float, ptr %i.cli, align 4, !tbaa !11
  %i.clk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.clj)
  %i.cll = fcmp reassoc nsz arcp contract afn uge float %i.clk, f0x3089705F
  br i1 %i.cll, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.clm = fadd reassoc nsz arcp contract afn float %i.cjk, 1.000000e+00
  store float %i.clm, ptr %i.cjl, align 4, !tbaa !11
  br label %bb.eu

bb.et:                                            ; preds = %_get_segment_id.exit545.us
  %i.cln = and i32 %i.ckn, 262144
  %.not456.us = icmp eq i32 %i.cln, 0
  %i.clo = select reassoc nsz arcp contract afn i1 %.not456.us, float 6.000000e-01, float 1.000000e+00
  %i.clp = fadd reassoc nsz arcp contract afn float %i.clo, %i.cjk
  store float %i.clp, ptr %i.cjl, align 4, !tbaa !11
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.er, %bb.eq, %_get_segment_id.exit549.thread.us, %_get_segment_id.exit545.thread.us, %bb.ek, %.thread553.us, %bb.ei
  %indvars.iv.next764 = add nuw nsw i64 %indvars.iv763, 1 ; 2 uses
  %exitcond767.not = icmp eq i64 %indvars.iv.next764, %i.chr
  br i1 %exitcond767.not, label %._crit_edge649, label %.lr.ph648.split.us.split

._crit_edge653.split:                             ; preds = %._crit_edge649, %.preheader.lr.ph, %.loopexit
  %i.clq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !336
  %i.clr = and i32 %i.clq, 16
  %.not454.not = icmp eq i32 %i.clr, 0
  br i1 %.not454.not, label %bb.ew, label %bb.ev

._crit_edge649.sink.split:                        ; preds = %.lr.ph648.split.us, %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep759, i8 0, i64 %i.chs, i1 false), !tbaa !11
  br label %._crit_edge649

._crit_edge649:                                   ; preds = %bb.eu, %._crit_edge649.sink.split
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond770.not = icmp eq i64 %indvar.next, %wide.trip.count769
  br i1 %exitcond770.not, label %._crit_edge653.split, label %.preheader

bb.ev:                                            ; preds = %._crit_edge653.split
  %i.cls = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.clt = getelementptr inbounds nuw i8, ptr %i.cls, i64 644
  %i.clu = load i32, ptr %i.clt, align 4, !tbaa !325
  %i.clv = tail call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.clu) #33
  %i.clw = load i32, ptr %i.bt, align 4, !tbaa !310
  %i.clx = load i32, ptr %i.bz, align 4, !tbaa !308
  %i.cly = mul nsw i32 %i.clx, %i.clw
end_hunk_2
