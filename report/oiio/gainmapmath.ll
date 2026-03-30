begin_hunk_0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr null, ptr %3, align 8, !tbaa !47
  %i.a = load i32, ptr %1, align 8, !tbaa !50     ; 5 uses
  switch i32 %i.a, label %bb.d [
    i32 5, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !51   ; 2 uses
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit441

switch.lookup:                                    ; preds = %bb.b
  %5 = zext nneg i32 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb, i64 %5
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %switch.load, %switch.lookup ] ; 10 uses
  %i.e = icmp eq i32 %i.a, 5                      ; 2 uses
  %or.cond = and i1 %2, %i.e
  br i1 %or.cond, label %bb.e, label %bb.z
end_hunk_0
begin_hunk_1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !53, !noalias !54
  %i.j = load i32, ptr %i.i, align 4, !tbaa !57, !noalias !54
  %i.k = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !54
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !54
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef 0, i32 noundef %7, i32 noundef %i.j, i32 noundef 1, i32 noundef %i.k, i32 noundef %i.l, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit unwind label %bb.f, !noalias !54

bb.f:                                             ; preds = %.noexc
end_hunk_1
begin_hunk_2
  %i.af = add nuw nsw i64 %.0327538, 2            ; 2 uses
  %i.ag = zext i32 %i.ae to i64
  %i.ah = icmp samesign ult i64 %i.af, %i.ag
  br i1 %i.ah, label %.preheader, label %.loopexit, !llvm.loop !58

bb.h:                                             ; preds = %.lr.ph536, %bb.x
  %.0328535 = phi i64 [ 0, %.lr.ph536 ], [ %i.fa, %bb.x ] ; 6 uses
end_hunk_2
begin_hunk_3
  %i.by = fdiv contract float %i.ao, 1.023000e+03
  %.sroa.0630.4.vec.insert653 = insertelement <2 x float> %i.bx, float %i.by, i64 1
  %i.bz = fdiv contract float %i.ar, 1.023000e+03
  %i.ca = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0630.4.vec.insert653, float %i.bz)
          to label %bb.i unwind label %bb.y, !callees !59 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract175 = extractvalue { <2 x float>, float } %i.ca, 0 ; 2 uses
end_hunk_3
begin_hunk_4
  %i.ck = fdiv contract float %i.ay, 1.023000e+03
  %.sroa.27656.16.vec.insert673 = insertelement <2 x float> %i.cj, float %i.ck, i64 1
  %i.cl = fdiv contract float %i.bb, 1.023000e+03
  %i.cm = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.27656.16.vec.insert673, float %i.cl)
          to label %bb.m unwind label %bb.y, !callees !59 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.fca.0.extract175.1 = extractvalue { <2 x float>, float } %i.cm, 0 ; 2 uses
end_hunk_4
begin_hunk_5
  %i.cw = fdiv contract float %i.bi, 1.023000e+03
  %.sroa.45676.28.vec.insert693 = insertelement <2 x float> %i.cv, float %i.cw, i64 1
  %i.cx = fdiv contract float %i.bl, 1.023000e+03
  %i.cy = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.45676.28.vec.insert693, float %i.cx)
          to label %bb.q unwind label %bb.y, !callees !59 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.fca.0.extract175.2 = extractvalue { <2 x float>, float } %i.cy, 0 ; 2 uses
end_hunk_5
begin_hunk_6
  %i.di = fdiv contract float %i.bs, 1.023000e+03
  %.sroa.63696.40.vec.insert713 = insertelement <2 x float> %i.dh, float %i.di, i64 1
  %i.dj = fdiv contract float %i.bv, 1.023000e+03
  %i.dk = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.63696.40.vec.insert713, float %i.dj)
          to label %bb.u unwind label %bb.y, !callees !59 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.fca.0.extract175.3 = extractvalue { <2 x float>, float } %i.dk, 0 ; 2 uses
end_hunk_6
begin_hunk_7
  %i.fb = load i32, ptr %.phi.trans.insert762, align 8, !tbaa !41 ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = icmp samesign ult i64 %i.fa, %i.fc
  br i1 %i.fd, label %bb.h, label %._crit_edge537.loopexit, !llvm.loop !60

bb.y:                                             ; preds = %bb.t, %bb.p, %bb.l, %bb.h
  %i.fe = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !53, !noalias !61
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !57, !noalias !61
  %i.fk = load i32, ptr %i.fh, align 4, !tbaa !3, !noalias !61
  %i.fl = load i32, ptr %i.fg, align 4, !tbaa !3, !noalias !61
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.ff, i32 noundef 12, i32 noundef %9, i32 noundef %i.fj, i32 noundef 1, i32 noundef %i.fk, i32 noundef %i.fl, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit372 unwind label %bb.ab, !noalias !61

bb.ab:                                            ; preds = %.noexc355
  %i.fm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 72) #40, !noalias !61
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit372: ; preds = %.noexc355
end_hunk_8
begin_hunk_9
  %i.gc = add nuw nsw i64 %.0330533, 1            ; 2 uses
  %i.gd = zext i32 %i.gb to i64
  %i.ge = icmp samesign ult i64 %i.gc, %i.gd
  br i1 %i.ge, label %.preheader517, label %.loopexit, !llvm.loop !64

bb.ad:                                            ; preds = %.lr.ph531, %bb.ae
  %.0331530 = phi i64 [ 0, %.lr.ph531 ], [ %i.ig, %bb.ae ] ; 5 uses
end_hunk_9
begin_hunk_10
  %i.gr = fdiv contract float %i.gl, 1.023000e+03
  %.sroa.0479.4.vec.insert501 = insertelement <2 x float> %i.gq, float %i.gr, i64 1
  %i.gs = fdiv contract float %i.go, 1.023000e+03
  %i.gt = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0479.4.vec.insert501, float %i.gs)
          to label %bb.ae unwind label %bb.af, !callees !59 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %.fca.0.extract134 = extractvalue { <2 x float>, float } %i.gt, 0 ; 2 uses
end_hunk_10
begin_hunk_11
  %i.ih = load i32, ptr %.phi.trans.insert760, align 8, !tbaa !41 ; 2 uses
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp samesign ult i64 %i.ig, %i.ii
  br i1 %i.ij, label %bb.ad, label %._crit_edge532.loopexit, !llvm.loop !65

bb.af:                                            ; preds = %bb.ad
  %i.ik = landingpad { ptr, i32 }
end_hunk_11
begin_hunk_12
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !53, !noalias !66
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !57, !noalias !66
  %i.ir = load i32, ptr %i.io, align 4, !tbaa !3, !noalias !66
  %i.is = load i32, ptr %i.in, align 4, !tbaa !3, !noalias !66
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.im, i32 noundef 1, i32 noundef %11, i32 noundef %i.iq, i32 noundef 1, i32 noundef %i.ir, i32 noundef %i.is, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit393 unwind label %bb.ai, !noalias !66

bb.ai:                                            ; preds = %.noexc376
  %i.it = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef 72) #40, !noalias !66
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit393: ; preds = %.noexc376
end_hunk_12
begin_hunk_13
  %i.jn = add nuw nsw i64 %.0332529, 2            ; 2 uses
  %i.jo = zext i32 %i.jm to i64
  %i.jp = icmp samesign ult i64 %i.jn, %i.jo
  br i1 %i.jp, label %.preheader519, label %.loopexit, !llvm.loop !69

bb.ak:                                            ; preds = %.lr.ph527, %bb.ba
  %.0333526 = phi i64 [ 0, %.lr.ph527 ], [ %i.pc, %bb.ba ] ; 9 uses
end_hunk_13
begin_hunk_14
  %i.lh = fdiv contract float %i.jw, 2.550000e+02
  %.sroa.0.4.vec.insert574 = insertelement <2 x float> %i.lg, float %i.lh, i64 1
  %i.li = fdiv contract float %i.jz, 2.550000e+02
  %i.lj = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0.4.vec.insert574, float %i.li)
          to label %bb.al unwind label %bb.bb, !callees !59 ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %.fca.0.extract37 = extractvalue { <2 x float>, float } %i.lj, 0 ; 2 uses
end_hunk_14
begin_hunk_15
  %i.ls = fdiv contract float %i.kh, 2.550000e+02
  %.sroa.27.16.vec.insert592 = insertelement <2 x float> %i.lr, float %i.ls, i64 1
  %i.lt = fdiv contract float %i.kk, 2.550000e+02
  %i.lu = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.27.16.vec.insert592, float %i.lt)
          to label %bb.ap unwind label %bb.bb, !callees !59 ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %.fca.0.extract37.1 = extractvalue { <2 x float>, float } %i.lu, 0 ; 2 uses
end_hunk_15
begin_hunk_16
  %i.md = fdiv contract float %i.kr, 2.550000e+02
  %.sroa.45.28.vec.insert610 = insertelement <2 x float> %i.mc, float %i.md, i64 1
  %i.me = fdiv contract float %i.ku, 2.550000e+02
  %i.mf = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.45.28.vec.insert610, float %i.me)
          to label %bb.at unwind label %bb.bb, !callees !59 ; 2 uses

bb.at:                                            ; preds = %bb.as
  %.fca.0.extract37.2 = extractvalue { <2 x float>, float } %i.mf, 0 ; 2 uses
end_hunk_16
begin_hunk_17
  %i.mo = fdiv contract float %i.lb, 2.550000e+02
  %.sroa.63.40.vec.insert628 = insertelement <2 x float> %i.mn, float %i.mo, i64 1
  %i.mp = fdiv contract float %i.le, 2.550000e+02
  %i.mq = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.63.40.vec.insert628, float %i.mp)
          to label %bb.ax unwind label %bb.bb, !callees !59 ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %.fca.0.extract37.3 = extractvalue { <2 x float>, float } %i.mq, 0 ; 2 uses
end_hunk_17
begin_hunk_18
  %i.pd = load i32, ptr %.phi.trans.insert758, align 8, !tbaa !41 ; 2 uses
  %i.pe = zext i32 %i.pd to i64
  %i.pf = icmp samesign ult i64 %i.pc, %i.pe
  br i1 %i.pf, label %bb.ak, label %._crit_edge528.loopexit, !llvm.loop !70

bb.bb:                                            ; preds = %bb.aw, %bb.as, %bb.ao, %bb.ak
  %i.pg = landingpad { ptr, i32 }
end_hunk_18
begin_hunk_19
  br label %.body

bb.bc:                                            ; preds = %bb.ag
  br i1 %i.il, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.ph = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #39
end_hunk_19
begin_hunk_20
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !53, !noalias !71
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !57, !noalias !71
  %i.pm = load i32, ptr %i.pj, align 4, !tbaa !3, !noalias !71
  %i.pn = load i32, ptr %i.pi, align 4, !tbaa !3, !noalias !71
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.ph, i32 noundef 6, i32 noundef %13, i32 noundef %i.pl, i32 noundef 1, i32 noundef %i.pm, i32 noundef %i.pn, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit414 unwind label %bb.be, !noalias !71

bb.be:                                            ; preds = %.noexc397
  %i.po = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef 72) #40, !noalias !71
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit414: ; preds = %.noexc397
end_hunk_20
begin_hunk_21
  %i.qe = add nuw nsw i64 %.0336524, 1            ; 2 uses
  %i.qf = zext i32 %i.qd to i64
  %i.qg = icmp samesign ult i64 %i.qe, %i.qf
  br i1 %i.qg, label %.preheader521, label %.loopexit, !llvm.loop !74

bb.bg:                                            ; preds = %.lr.ph, %bb.bh
  %.0335523 = phi i64 [ 0, %.lr.ph ], [ %i.si, %bb.bh ] ; 5 uses
end_hunk_21
begin_hunk_22
  %i.qt = fdiv contract float %i.qn, 2.550000e+02
  %.sroa.0443.4.vec.insert465 = insertelement <2 x float> %i.qs, float %i.qt, i64 1
  %i.qu = fdiv contract float %i.qq, 2.550000e+02
  %i.qv = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0443.4.vec.insert465, float %i.qu)
          to label %bb.bh unwind label %bb.bi, !callees !59 ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.qv, 0 ; 2 uses
end_hunk_22
begin_hunk_23
  %i.sj = load i32, ptr %.phi.trans.insert756, align 8, !tbaa !41 ; 2 uses
  %i.sk = zext i32 %i.sj to i64
  %i.sl = icmp samesign ult i64 %i.si, %i.sk
  br i1 %i.sl, label %bb.bg, label %._crit_edge.loopexit, !llvm.loop !75

bb.bi:                                            ; preds = %bb.bg
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bj:                                            ; preds = %bb.bc
  %switch = icmp ult i32 %i.a, 2
  br i1 %switch, label %bb.bk, label %.loopexit

end_hunk_23
begin_hunk_24
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !53, !noalias !76
  %i.su = load i32, ptr %i.sr, align 4, !tbaa !57, !noalias !76
  %i.sv = load i32, ptr %i.sq, align 4, !tbaa !79, !noalias !76
  %i.sw = load i32, ptr %i.sp, align 4, !tbaa !3, !noalias !76
  %i.sx = load i32, ptr %i.so, align 4, !tbaa !3, !noalias !76
end_hunk_24
begin_hunk_25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge528, %._crit_edge532, %._crit_edge537, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit414, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit393, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit372, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit, %bb.bj, %.critedge
  %14 = phi i64 [ %i.iu, %._crit_edge528 ], [ %i.fn, %._crit_edge532 ], [ %i.n, %._crit_edge537 ], [ %i.tb, %.critedge ], [ %i.pp, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit414 ], [ %i.iu, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit393 ], [ %i.fn, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit372 ], [ %i.n, %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit ], [ 0, %bb.bj ], [ %i.pp, %._crit_edge ]
  store i64 %14, ptr %0, align 8, !tbaa !52
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit441

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit434
end_hunk_25
begin_hunk_26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #39, !noalias !95 ; 6 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !98, !noalias !95
  %i.h = load i32, ptr %i.a, align 4, !tbaa !53, !noalias !95
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57, !noalias !95
  %i.j = load i32, ptr %i.c, align 4, !tbaa !79, !noalias !95
  %i.k = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !95
  %i.l = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !95
end_hunk_26
begin_hunk_27
!50 = !{!31, !32, i64 0}
!51 = !{!31, !33, i64 4}
!52 = !{!49, !49, i64 0}
!53 = !{!33, !33, i64 0}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transfer16uhdr_color_rangeRjS8_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!56 = distinct !{!56, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transfer16uhdr_color_rangeRjS8_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!57 = !{!34, !34, i64 0}
!58 = distinct !{!58, !14}
!59 = !{ptr @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE, ptr @_ZN8ultrahdr12srgbRgbToYuvENS_5ColorE, ptr @_ZN8ultrahdr14bt2100RgbToYuvENS_5ColorE}
!60 = distinct !{!60, !14}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transfer16uhdr_color_rangeRjS8_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!63 = distinct !{!63, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transfer16uhdr_color_rangeRjS8_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transfer16uhdr_color_rangeRjS8_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!68 = distinct !{!68, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transfer16uhdr_color_rangeRjS8_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transfer16uhdr_color_rangeRjS8_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!73 = distinct !{!73, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transfer16uhdr_color_rangeRjS8_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRjSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!78 = distinct !{!78, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRjSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
end_hunk_27
