Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@convert_samples_short:bb.a

..loopexit_crit_edge.us.us.i.us.us.3:             ; preds = %scalar.ph114.3, %middle.block125.3, %.lr.ph42.split.us.us.i.us.us.3
  br i1 %exitcond67.not.i.us.us.3, label %..preheader39_crit_edge.us.i.us.us, label %.lr.ph42.split.us.us.i.us.us.4

.lr.ph42.split.us.us.i.us.us.4:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us.3
  %i.db = load i8, ptr %i.u, align 2
  %i.dc = sext i8 %i.db to i32
  %i.dd = and i32 %i.z, %i.dc
  %.not.us.us.i.us.us.4 = icmp eq i32 %i.dd, 0
  br i1 %.not.us.us.i.us.us.4, label %..loopexit_crit_edge.us.us.i.us.us.4, label %.preheader.us.us.i.us.us.4

.preheader.us.us.i.us.us.4:                       ; preds = %.lr.ph42.split.us.us.i.us.us.4
  %i.de = load ptr, ptr %i.v, align 8
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv73.i.us.us
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.m ; 2 uses
  %min.iters.check115.4 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115.4, label %scalar.ph114.preheader.4, label %vector.ph116.4

vector.ph116.4:                                   ; preds = %.preheader.us.us.i.us.us.4
  %n.vec117.4 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118.4

vector.body118.4:                                 ; preds = %vector.body118.4, %vector.ph116.4
  %index119.4 = phi i64 [ 0, %vector.ph116.4 ], [ %index.next124.4, %vector.body118.4 ] ; 3 uses
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %index119.4 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %wide.load120.4 = load <4 x float>, ptr %i.dh, align 4
  %wide.load121.4 = load <4 x float>, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119.4 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load122.4 = load <4 x float>, ptr %i.dj, align 16
  %wide.load123.4 = load <4 x float>, ptr %i.dk, align 16
  %i.dl = fadd <4 x float> %wide.load120.4, %wide.load122.4
  %i.dm = fadd <4 x float> %wide.load121.4, %wide.load123.4
  store <4 x float> %i.dl, ptr %i.dj, align 16
  store <4 x float> %i.dm, ptr %i.dk, align 16
  %index.next124.4 = add nuw i64 %index119.4, 8   ; 2 uses
  %i.dn = icmp eq i64 %index.next124.4, %n.vec117.4
  br i1 %i.dn, label %middle.block125.4, label %vector.body118.4, !llvm.loop !1033

middle.block125.4:                                ; preds = %vector.body118.4
  %cmp.n126.4 = icmp eq i64 %n.vec117.4, %wide.trip.count.i.us.us
  br i1 %cmp.n126.4, label %..loopexit_crit_edge.us.us.i.us.us.4, label %scalar.ph114.preheader.4

scalar.ph114.preheader.4:                         ; preds = %middle.block125.4, %.preheader.us.us.i.us.us.4
  %indvars.iv60.i.us.us.ph.4 = phi i64 [ 0, %.preheader.us.us.i.us.us.4 ], [ %n.vec117.4, %middle.block125.4 ]
  br label %scalar.ph114.4

scalar.ph114.4:                                   ; preds = %scalar.ph114.4, %scalar.ph114.preheader.4
  %indvars.iv60.i.us.us.4 = phi i64 [ %indvars.iv.next61.i.us.us.4, %scalar.ph114.4 ], [ %indvars.iv60.i.us.us.ph.4, %scalar.ph114.preheader.4 ] ; 3 uses
  %i.do = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv60.i.us.us.4
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.4 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fadd float %i.dp, %i.dr
  store float %i.ds, ptr %i.dq, align 4
  %indvars.iv.next61.i.us.us.4 = add nuw nsw i64 %indvars.iv60.i.us.us.4, 1 ; 2 uses
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next61.i.us.us.4, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.4, label %..loopexit_crit_edge.us.us.i.us.us.4, label %scalar.ph114.4, !llvm.loop !1034

..loopexit_crit_edge.us.us.i.us.us.4:             ; preds = %scalar.ph114.4, %middle.block125.4, %.lr.ph42.split.us.us.i.us.us.4
  br i1 %exitcond67.not.i.us.us.4, label %..preheader39_crit_edge.us.i.us.us, label %.lr.ph42.split.us.us.i.us.us.5

.lr.ph42.split.us.us.i.us.us.5:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us.4
  %i.dt = load i8, ptr %i.w, align 1
  %i.du = sext i8 %i.dt to i32
  %i.dv = and i32 %i.z, %i.du
  %.not.us.us.i.us.us.5 = icmp eq i32 %i.dv, 0
  br i1 %.not.us.us.i.us.us.5, label %..preheader39_crit_edge.us.i.us.us, label %.preheader.us.us.i.us.us.5

.preheader.us.us.i.us.us.5:                       ; preds = %.lr.ph42.split.us.us.i.us.us.5
  %i.dw = load ptr, ptr %i.x, align 8
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %indvars.iv73.i.us.us
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %i.m ; 2 uses
  %min.iters.check115.5 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115.5, label %scalar.ph114.preheader.5, label %vector.ph116.5

vector.ph116.5:                                   ; preds = %.preheader.us.us.i.us.us.5
  %n.vec117.5 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118.5

vector.body118.5:                                 ; preds = %vector.body118.5, %vector.ph116.5
  %index119.5 = phi i64 [ 0, %vector.ph116.5 ], [ %index.next124.5, %vector.body118.5 ] ; 3 uses
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %index119.5 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %wide.load120.5 = load <4 x float>, ptr %i.dz, align 4
  %wide.load121.5 = load <4 x float>, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119.5 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %wide.load122.5 = load <4 x float>, ptr %i.eb, align 16
  %wide.load123.5 = load <4 x float>, ptr %i.ec, align 16
  %i.ed = fadd <4 x float> %wide.load120.5, %wide.load122.5
  %i.ee = fadd <4 x float> %wide.load121.5, %wide.load123.5
  store <4 x float> %i.ed, ptr %i.eb, align 16
  store <4 x float> %i.ee, ptr %i.ec, align 16
  %index.next124.5 = add nuw i64 %index119.5, 8   ; 2 uses
  %i.ef = icmp eq i64 %index.next124.5, %n.vec117.5
  br i1 %i.ef, label %middle.block125.5, label %vector.body118.5, !llvm.loop !1033

middle.block125.5:                                ; preds = %vector.body118.5
  %cmp.n126.5 = icmp eq i64 %n.vec117.5, %wide.trip.count.i.us.us
  br i1 %cmp.n126.5, label %..preheader39_crit_edge.us.i.us.us, label %scalar.ph114.preheader.5

scalar.ph114.preheader.5:                         ; preds = %middle.block125.5, %.preheader.us.us.i.us.us.5
  %indvars.iv60.i.us.us.ph.5 = phi i64 [ 0, %.preheader.us.us.i.us.us.5 ], [ %n.vec117.5, %middle.block125.5 ]
  br label %scalar.ph114.5

scalar.ph114.5:                                   ; preds = %scalar.ph114.5, %scalar.ph114.preheader.5
  %indvars.iv60.i.us.us.5 = phi i64 [ %indvars.iv.next61.i.us.us.5, %scalar.ph114.5 ], [ %indvars.iv60.i.us.us.ph.5, %scalar.ph114.preheader.5 ] ; 3 uses
  %i.eg = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv60.i.us.us.5
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.5 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = fadd float %i.eh, %i.ej
  store float %i.ek, ptr %i.ei, align 4
  %indvars.iv.next61.i.us.us.5 = add nuw nsw i64 %indvars.iv60.i.us.us.5, 1 ; 2 uses
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next61.i.us.us.5, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.5, label %..preheader39_crit_edge.us.i.us.us, label %scalar.ph114.5, !llvm.loop !1034

..preheader39_crit_edge.us.i.us.us:               ; preds = %.lr.ph42.split.us.us.i.us.us.5, %middle.block125.5, %scalar.ph114.5, %..loopexit_crit_edge.us.us.i.us.us.4, %..loopexit_crit_edge.us.us.i.us.us.3, %..loopexit_crit_edge.us.us.i.us.us.2, %..loopexit_crit_edge.us.us.i.us.us.1, %..loopexit_crit_edge.us.us.i.us.us
  %invariant.gep78.i.us.us = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv73.i.us.us ; 2 uses
  %min.iters.check103 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check103, label %.lr.ph.us.i.us.us.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %..preheader39_crit_edge.us.i.us.us
  %n.vec105 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next110, %vector.body106 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index107 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load108 = load <4 x float>, ptr %i.el, align 16
  %wide.load109 = load <4 x float>, ptr %i.em, align 16
  %i.en = fadd <4 x float> %wide.load108, splat (float 3.840000e+02)
  %i.eo = fadd <4 x float> %wide.load109, splat (float 3.840000e+02)
  %i.ep = bitcast <4 x float> %i.en to <4 x i32>
  %i.eq = bitcast <4 x float> %i.eo to <4 x i32>
  %i.er = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ep, <4 x i32> splat (i32 1136623616))
  %i.es = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eq, <4 x i32> splat (i32 1136623616))
  %i.et = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.er, <4 x i32> splat (i32 1136689151))
  %i.eu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.es, <4 x i32> splat (i32 1136689151))
  %i.ev = trunc <4 x i32> %i.et to <4 x i16>
  %i.ew = trunc <4 x i32> %i.eu to <4 x i16>
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep78.i.us.us, i64 %index107 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store <4 x i16> %i.ev, ptr %i.ex, align 2
  store <4 x i16> %i.ew, ptr %i.ey, align 2
  %index.next110 = add nuw i64 %index107, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.ez, label %middle.block111, label %vector.body106, !llvm.loop !1035

middle.block111:                                  ; preds = %vector.body106
  %cmp.n112 = icmp eq i64 %n.vec105, %wide.trip.count.i.us.us
  br i1 %cmp.n112, label %._crit_edge.us.i.us.us, label %.lr.ph.us.i.us.us.preheader

.lr.ph.us.i.us.us.preheader:                      ; preds = %..preheader39_crit_edge.us.i.us.us, %middle.block111
  %indvars.iv68.i.us.us.ph = phi i64 [ 0, %..preheader39_crit_edge.us.i.us.us ], [ %n.vec105, %middle.block111 ]
  br label %.lr.ph.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.lr.ph.us.i.us.us.preheader, %.lr.ph.us.i.us.us
  %indvars.iv68.i.us.us = phi i64 [ %indvars.iv.next69.i.us.us, %.lr.ph.us.i.us.us ], [ %indvars.iv68.i.us.us.ph, %.lr.ph.us.i.us.us.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv68.i.us.us
  %i.fb = load float, ptr %i.fa, align 4
  %i.fc = fadd float %i.fb, 3.840000e+02
  %i.fd = bitcast float %i.fc to i32
  %i.fe = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 1136623616)
  %i.ff = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 1136689151)
  %i.fg = trunc i32 %i.ff to i16
  %gep79.i.us.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep78.i.us.us, i64 %indvars.iv68.i.us.us
  store i16 %i.fg, ptr %gep79.i.us.us, align 2
  %indvars.iv.next69.i.us.us = add nuw nsw i64 %indvars.iv68.i.us.us, 1 ; 2 uses
  %exitcond72.not.i.us.us = icmp eq i64 %indvars.iv.next69.i.us.us, %wide.trip.count.i.us.us
  br i1 %exitcond72.not.i.us.us, label %._crit_edge.us.i.us.us, label %.lr.ph.us.i.us.us, !llvm.loop !1036

._crit_edge.us.i.us.us:                           ; preds = %.lr.ph.us.i.us.us, %middle.block111, %.lr.ph42.us.i.us.us
  %indvars.iv.next74.i.us.us = add nuw nsw i64 %indvars.iv73.i.us.us, 32 ; 2 uses
  %i.fh = icmp samesign ult i64 %indvars.iv.next74.i.us.us, %i.l
  br i1 %i.fh, label %.lr.ph42.us.i.us.us, label %compute_samples.exit.loopexit.us.us

compute_samples.exit.loopexit.us.us:              ; preds = %._crit_edge.us.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %i.f
  br i1 %exitcond80.not, label %.loopexit, label %.lr.ph47.i.us.us

.lr.ph47.i.us:                                    ; preds = %.lr.ph55.split.us
  %i.fi = load ptr, ptr %1, align 8
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.fi, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader39.i.us

.preheader39.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph47.i.us
  %indvars.iv67 = phi i32 [ %indvars.iv.next68, %._crit_edge.i.us ], [ 0, %.lr.ph47.i.us ] ; 2 uses
  %indvars.iv57.i.us = phi i64 [ %indvars.iv.next58.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph47.i.us ] ; 3 uses
  %.03245.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 32, %.lr.ph47.i.us ] ; 2 uses
  %indvars70 = trunc i64 %indvars.iv57.i.us to i32 ; 2 uses
  %i.fk = add nsw i32 %.03245.i.us, %indvars70    ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, %6
  %i.fm = sub i32 %6, %indvars70
  %spec.select.i.us = select i1 %i.fl, i32 %i.fm, i32 %.03245.i.us ; 2 uses
  %i.fn = icmp sgt i32 %spec.select.i.us, 0
  br i1 %i.fn, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %.preheader39.i.us
  %invariant.gep.i.us = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv57.i.us ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.fk)
  %i.fo = add i32 %smin, %indvars.iv67            ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 3 uses
  %min.iters.check91 = icmp ult i32 %i.fo, 8
  br i1 %min.iters.check91, label %.lr.ph.i.us.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph.preheader.i.us
  %n.vec93 = and i64 %i.fp, 4294967288            ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next98, %vector.body94 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index95 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load96 = load <4 x float>, ptr %i.fq, align 16
  %wide.load97 = load <4 x float>, ptr %i.fr, align 16
  %i.fs = fadd <4 x float> %wide.load96, splat (float 3.840000e+02)
  %i.ft = fadd <4 x float> %wide.load97, splat (float 3.840000e+02)
  %i.fu = bitcast <4 x float> %i.fs to <4 x i32>
  %i.fv = bitcast <4 x float> %i.ft to <4 x i32>
  %i.fw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fu, <4 x i32> splat (i32 1136623616))
  %i.fx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fv, <4 x i32> splat (i32 1136623616))
  %i.fy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fw, <4 x i32> splat (i32 1136689151))
  %i.fz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fx, <4 x i32> splat (i32 1136689151))
  %i.ga = trunc <4 x i32> %i.fy to <4 x i16>
  %i.gb = trunc <4 x i32> %i.fz to <4 x i16>
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us, i64 %index95 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store <4 x i16> %i.ga, ptr %i.gc, align 2
  store <4 x i16> %i.gb, ptr %i.gd, align 2
  %index.next98 = add nuw i64 %index95, 8         ; 2 uses
  %i.ge = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.ge, label %middle.block99, label %vector.body94, !llvm.loop !1037

middle.block99:                                   ; preds = %vector.body94
  %cmp.n100 = icmp eq i64 %n.vec93, %i.fp
  br i1 %cmp.n100, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.preheader.i.us, %middle.block99
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %n.vec93, %middle.block99 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ %indvars.iv.i.us.ph, %.lr.ph.i.us.preheader ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.gg = load float, ptr %i.gf, align 4
  %i.gh = fadd float %i.gg, 3.840000e+02
  %i.gi = bitcast float %i.gh to i32
  %i.gj = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 1136623616)
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 1136689151)
  %i.gl = trunc i32 %i.gk to i16
  %gep.i.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  store i16 %i.gl, ptr %gep.i.us, align 2
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next.i.us, %i.fp
  br i1 %exitcond69.not, label %._crit_edge.i.us, label %.lr.ph.i.us, !llvm.loop !1038

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us, %middle.block99, %.preheader39.i.us
  %indvars.iv.next58.i.us = add nuw nsw i64 %indvars.iv57.i.us, 32 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next58.i.us, %i.l
  %indvars.iv.next68 = add i32 %indvars.iv67, -32
  br i1 %i.gm, label %.preheader39.i.us, label %compute_samples.exit.loopexit48.us

compute_samples.exit.loopexit48.us:               ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %exitcond75.not = icmp eq i32 %0, 1
  br i1 %exitcond75.not, label %.loopexit, label %.lr.ph47.i.us.1

.lr.ph47.i.us.1:                                  ; preds = %compute_samples.exit.loopexit48.us
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.go, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader39.i.us.1

.preheader39.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph47.i.us.1
  %indvars.iv67.1 = phi i32 [ %indvars.iv.next68.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph47.i.us.1 ] ; 2 uses
  %indvars.iv57.i.us.1 = phi i64 [ %indvars.iv.next58.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph47.i.us.1 ] ; 3 uses
  %.03245.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 32, %.lr.ph47.i.us.1 ] ; 2 uses
  %indvars70.1 = trunc i64 %indvars.iv57.i.us.1 to i32 ; 2 uses
  %i.gq = add nsw i32 %.03245.i.us.1, %indvars70.1 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, %6
  %i.gs = sub i32 %6, %indvars70.1
  %spec.select.i.us.1 = select i1 %i.gr, i32 %i.gs, i32 %.03245.i.us.1 ; 2 uses
  %i.gt = icmp sgt i32 %spec.select.i.us.1, 0
  br i1 %i.gt, label %.lr.ph.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph.preheader.i.us.1:                          ; preds = %.preheader39.i.us.1
  %invariant.gep.i.us.1 = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %indvars.iv57.i.us.1 ; 2 uses
  %smin.1 = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.gq)
  %i.gu = add i32 %smin.1, %indvars.iv67.1        ; 2 uses
  %i.gv = zext i32 %i.gu to i64                   ; 3 uses
  %min.iters.check91.1 = icmp ult i32 %i.gu, 8
  br i1 %min.iters.check91.1, label %.lr.ph.i.us.preheader.1, label %vector.ph92.1

vector.ph92.1:                                    ; preds = %.lr.ph.preheader.i.us.1
  %n.vec93.1 = and i64 %i.gv, 4294967288          ; 3 uses
  br label %vector.body94.1

vector.body94.1:                                  ; preds = %vector.body94.1, %vector.ph92.1
  %index95.1 = phi i64 [ 0, %vector.ph92.1 ], [ %index.next98.1, %vector.body94.1 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index95.1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load96.1 = load <4 x float>, ptr %i.gw, align 16
  %wide.load97.1 = load <4 x float>, ptr %i.gx, align 16
  %i.gy = fadd <4 x float> %wide.load96.1, splat (float 3.840000e+02)
  %i.gz = fadd <4 x float> %wide.load97.1, splat (float 3.840000e+02)
  %i.ha = bitcast <4 x float> %i.gy to <4 x i32>
  %i.hb = bitcast <4 x float> %i.gz to <4 x i32>
  %i.hc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ha, <4 x i32> splat (i32 1136623616))
  %i.hd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hb, <4 x i32> splat (i32 1136623616))
  %i.he = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hc, <4 x i32> splat (i32 1136689151))
  %i.hf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hd, <4 x i32> splat (i32 1136689151))
  %i.hg = trunc <4 x i32> %i.he to <4 x i16>
  %i.hh = trunc <4 x i32> %i.hf to <4 x i16>
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.1, i64 %index95.1 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store <4 x i16> %i.hg, ptr %i.hi, align 2
  store <4 x i16> %i.hh, ptr %i.hj, align 2
  %index.next98.1 = add nuw i64 %index95.1, 8     ; 2 uses
  %i.hk = icmp eq i64 %index.next98.1, %n.vec93.1
  br i1 %i.hk, label %middle.block99.1, label %vector.body94.1, !llvm.loop !1037

middle.block99.1:                                 ; preds = %vector.body94.1
  %cmp.n100.1 = icmp eq i64 %n.vec93.1, %i.gv
  br i1 %cmp.n100.1, label %._crit_edge.i.us.1, label %.lr.ph.i.us.preheader.1

.lr.ph.i.us.preheader.1:                          ; preds = %middle.block99.1, %.lr.ph.preheader.i.us.1
  %indvars.iv.i.us.ph.1 = phi i64 [ 0, %.lr.ph.preheader.i.us.1 ], [ %n.vec93.1, %middle.block99.1 ]
  br label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %.lr.ph.i.us.1, %.lr.ph.i.us.preheader.1
  %indvars.iv.i.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph.i.us.1 ], [ %indvars.iv.i.us.ph.1, %.lr.ph.i.us.preheader.1 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.1
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = fadd float %i.hm, 3.840000e+02
  %i.ho = bitcast float %i.hn to i32
  %i.hp = tail call i32 @llvm.smax.i32(i32 %i.ho, i32 1136623616)
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 1136689151)
  %i.hr = trunc i32 %i.hq to i16
  %gep.i.us.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.1, i64 %indvars.iv.i.us.1
  store i16 %i.hr, ptr %gep.i.us.1, align 2
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us.1, 1 ; 2 uses
  %exitcond69.not.1 = icmp eq i64 %indvars.iv.next.i.us.1, %i.gv
  br i1 %exitcond69.not.1, label %._crit_edge.i.us.1, label %.lr.ph.i.us.1, !llvm.loop !1038

._crit_edge.i.us.1:                               ; preds = %.lr.ph.i.us.1, %middle.block99.1, %.preheader39.i.us.1
  %indvars.iv.next58.i.us.1 = add nuw nsw i64 %indvars.iv57.i.us.1, 32 ; 2 uses
  %i.hs = icmp samesign ult i64 %indvars.iv.next58.i.us.1, %i.l
  %indvars.iv.next68.1 = add i32 %indvars.iv67.1, -32
  br i1 %i.hs, label %.preheader39.i.us.1, label %compute_samples.exit.loopexit48.us.1

compute_samples.exit.loopexit48.us.1:             ; preds = %._crit_edge.i.us.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.ht = tail call i32 @llvm.smin.i32(i32 %0, i32 %3) ; 4 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph, label %.preheader49

.lr.ph:                                           ; preds = %bb.b
  %i.hv = sext i32 %2 to i64                      ; 2 uses
  %i.hw = sext i32 %5 to i64                      ; 2 uses
  %i.hx = icmp sgt i32 %6, 0
  %wide.trip.count.i43 = zext i32 %6 to i64       ; 7 uses
  br i1 %i.hx, label %.lr.ph.preheader.i42.us.preheader, label %.preheader49

.lr.ph.preheader.i42.us.preheader:                ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.ht to i64
  %i.hy = add nsw i64 %i.hv, %wide.trip.count.i43
  %i.hz = shl nsw i64 %i.hy, 1
  %i.ia = add nsw i64 %i.hw, %wide.trip.count.i43
  %i.ib = shl nsw i64 %i.ia, 2
  %min.iters.check = icmp ult i32 %6, 8
  %n.vec = and i64 %wide.trip.count.i43, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i43
  %xtraiter = and i64 %wide.trip.count.i43, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ic = add nsw i64 %wide.trip.count.i43, -1
  br label %.lr.ph.preheader.i42.us

.lr.ph.preheader.i42.us:                          ; preds = %.lr.ph.preheader.i42.us.preheader, %copy_samples.exit.loopexit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i42.us.preheader ], [ %indvars.iv.next, %copy_samples.exit.loopexit.us ] ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ie = load ptr, ptr %i.id, align 8            ; 2 uses
  %i.if = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.hv ; 5 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.hw ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i44.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i42.us
  %scevgep = getelementptr i8, ptr %i.ie, i64 %i.hz
  %scevgep88 = getelementptr i8, ptr %i.ih, i64 %i.ib
  %bound0 = icmp ult ptr %i.if, %scevgep88
  %bound1 = icmp ult ptr %i.ii, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i44.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load = load <4 x float>, ptr %i.ij, align 4, !alias.scope !1039
  %wide.load89 = load <4 x float>, ptr %i.ik, align 4, !alias.scope !1039
  %i.il = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.im = fadd <4 x float> %wide.load89, splat (float 3.840000e+02)
  %i.in = bitcast <4 x float> %i.il to <4 x i32>
  %i.io = bitcast <4 x float> %i.im to <4 x i32>
  %i.ip = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.in, <4 x i32> splat (i32 1136623616))
  %i.iq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.io, <4 x i32> splat (i32 1136623616))
  %i.ir = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ip, <4 x i32> splat (i32 1136689151))
  %i.is = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iq, <4 x i32> splat (i32 1136689151))
  %i.it = trunc <4 x i32> %i.ir to <4 x i16>
  %i.iu = trunc <4 x i32> %i.is to <4 x i16>
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store <4 x i16> %i.it, ptr %i.iv, align 2, !alias.scope !1042, !noalias !1039
  store <4 x i16> %i.iu, ptr %i.iw, align 2, !alias.scope !1042, !noalias !1039
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ix = icmp eq i64 %index.next, %n.vec
  br i1 %i.ix, label %middle.block, label %vector.body, !llvm.loop !1044

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us.preheader

.lr.ph.i44.us.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i42.us, %middle.block
  %indvars.iv.i45.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i42.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i44.us.prol.loopexit, label %.lr.ph.i44.us.prol

.lr.ph.i44.us.prol:                               ; preds = %.lr.ph.i44.us.preheader
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i45.us.ph
  %i.iz = load float, ptr %i.iy, align 4
  %i.ja = fadd float %i.iz, 3.840000e+02
  %i.jb = bitcast float %i.ja to i32
  %i.jc = tail call i32 @llvm.smax.i32(i32 %i.jb, i32 1136623616)
  %i.jd = tail call i32 @llvm.umin.i32(i32 %i.jc, i32 1136689151)
  %i.je = trunc i32 %i.jd to i16
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv.i45.us.ph
  store i16 %i.je, ptr %i.jf, align 2
  %indvars.iv.next.i46.us.prol = or disjoint i64 %indvars.iv.i45.us.ph, 1
  br label %.lr.ph.i44.us.prol.loopexit

.lr.ph.i44.us.prol.loopexit:                      ; preds = %.lr.ph.i44.us.prol, %.lr.ph.i44.us.preheader
  %indvars.iv.i45.us.unr = phi i64 [ %indvars.iv.i45.us.ph, %.lr.ph.i44.us.preheader ], [ %indvars.iv.next.i46.us.prol, %.lr.ph.i44.us.prol ]
  %i.jg = icmp eq i64 %indvars.iv.i45.us.ph, %i.ic
  br i1 %i.jg, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us

.lr.ph.i44.us:                                    ; preds = %.lr.ph.i44.us.prol.loopexit, %.lr.ph.i44.us
  %indvars.iv.i45.us = phi i64 [ %indvars.iv.next.i46.us.1, %.lr.ph.i44.us ], [ %indvars.iv.i45.us.unr, %.lr.ph.i44.us.prol.loopexit ] ; 4 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i45.us
  %i.ji = load float, ptr %i.jh, align 4
  %i.jj = fadd float %i.ji, 3.840000e+02
  %i.jk = bitcast float %i.jj to i32
  %i.jl = tail call i32 @llvm.smax.i32(i32 %i.jk, i32 1136623616)
  %i.jm = tail call i32 @llvm.umin.i32(i32 %i.jl, i32 1136689151)
  %i.jn = trunc i32 %i.jm to i16
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv.i45.us
  store i16 %i.jn, ptr %i.jo, align 2
  %indvars.iv.next.i46.us = add nuw nsw i64 %indvars.iv.i45.us, 1 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i46.us
  %i.jq = load float, ptr %i.jp, align 4
  %i.jr = fadd float %i.jq, 3.840000e+02
  %i.js = bitcast float %i.jr to i32
  %i.jt = tail call i32 @llvm.smax.i32(i32 %i.js, i32 1136623616)
  %i.ju = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 1136689151)
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv.next.i46.us
  store i16 %i.jv, ptr %i.jw, align 2
  %indvars.iv.next.i46.us.1 = add nuw nsw i64 %indvars.iv.i45.us, 2 ; 2 uses
  %exitcond.not.i47.us.1 = icmp eq i64 %indvars.iv.next.i46.us.1, %wide.trip.count.i43
  br i1 %exitcond.not.i47.us.1, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us, !llvm.loop !1045

copy_samples.exit.loopexit.us:                    ; preds = %.lr.ph.i44.us.prol.loopexit, %.lr.ph.i44.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader49, label %.lr.ph.preheader.i42.us

.preheader49:                                     ; preds = %copy_samples.exit.loopexit.us, %.lr.ph, %bb.b
  %.1.lcssa = phi i32 [ 0, %bb.b ], [ %i.ht, %.lr.ph ], [ %i.ht, %copy_samples.exit.loopexit.us ] ; 4 uses
  %i.jx = icmp slt i32 %.1.lcssa, %0
  br i1 %i.jx, label %.lr.ph53, label %.loopexit
end_hunk_0
