inline.NumInlined: 572
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_drm_edid_connector_add_modes:bb.a
  %i.pn = add nsw i32 %i.pl, %.2100155.i.i
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr i8, ptr %i.eu, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1             ; 2 uses
  %i.pr = and i8 %i.pq, 8
  %.not110.i.i = icmp ne i8 %i.pr, 0              ; 2 uses
  %i.ps = add nsw i32 %.2100155.i.i, 1            ; 2 uses
  %i.pt = icmp eq i32 %i.ps, %i.ph
  %or.cond116.i.i = select i1 %.not110.i.i, i1 %i.pt, i1 false
  br i1 %or.cond116.i.i, label %do_hdmi_vsdb_modes.exit.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.pu = zext i8 %i.pq to i32                    ; 2 uses
  %i.pv = lshr i32 %i.pu, 4                       ; 2 uses
  %i.pw = and i32 %i.pu, 15
  switch i32 %i.pw, label %drm_display_mode_from_vic_index.exit.thread.i20.i [
    i32 0, label %.thread.i.i
    i32 6, label %bb.ew
    i32 8, label %bb.ex
  ]

bb.ew:                                            ; preds = %bb.ev
  br label %.thread.i.i

bb.ex:                                            ; preds = %bb.ev
  %i.px = add nsw i32 %i.pm, %.2100155.i.i
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr i8, ptr %i.eu, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1
  %.mask.i.i = and i8 %i.qa, -16
  %.not144.i.i = icmp eq i8 %.mask.i.i, 16
  br i1 %.not144.i.i, label %.thread.i.i, label %drm_display_mode_from_vic_index.exit.thread.i20.i

.thread.i.i:                                      ; preds = %bb.ex, %bb.ew, %bb.ev
  %.093135.i.i = phi i32 [ 131072, %bb.ex ], [ 114688, %bb.ew ], [ 16384, %bb.ev ]
  %i.qb = load ptr, ptr %0, align 8
  %i.qc = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not.i130.i.i = icmp eq ptr %i.qc, null
  br i1 %.not.i130.i.i, label %drm_display_mode_from_vic_index.exit.thread.i20.i, label %bb.ey

bb.ey:                                            ; preds = %.thread.i.i
  %i.qd = load i32, ptr %i.et, align 8
  %.not13.i.i.i = icmp slt i32 %i.pv, %i.qd
  br i1 %.not13.i.i.i, label %bb.ez, label %drm_display_mode_from_vic_index.exit.thread.i20.i

bb.ez:                                            ; preds = %bb.ey
  %i.qe = zext nneg i32 %i.pv to i64
  %i.qf = getelementptr i8, ptr %i.qc, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1             ; 5 uses
  %.not14.i.i21.i = icmp eq i8 %i.qg, 0
  br i1 %.not14.i.i21.i, label %drm_display_mode_from_vic_index.exit.thread.i20.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %or.cond.i.i.i.i22.i = icmp sgt i8 %i.qg, 0
  br i1 %or.cond.i.i.i.i22.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.qh = zext nneg i8 %i.qg to i64
  %i.qi = add nuw nsw i64 %i.qh, 4294967295
  %i.qj = and i64 %i.qi, 4294967295
  %i.qk = getelementptr [120 x i8], ptr @edid_cea_modes_1, i64 %i.qj
  br label %cea_mode_for_vic.exit.i.i.i24.i

bb.fc:                                            ; preds = %bb.fa
  %i.ql = add nsw i8 %i.qg, 63
  %or.cond5.i.i.i.i23.i = icmp ult i8 %i.ql, 27
  br i1 %or.cond5.i.i.i.i23.i, label %bb.fd, label %drm_display_mode_from_vic_index.exit.thread.i20.i

bb.fd:                                            ; preds = %bb.fc
  %i.qm = zext i8 %i.qg to i64
  %i.qn = getelementptr [120 x i8], ptr @edid_cea_modes_193, i64 %i.qm
  %i.qo = getelementptr i8, ptr %i.qn, i64 -23160
  br label %cea_mode_for_vic.exit.i.i.i24.i

cea_mode_for_vic.exit.i.i.i24.i:                  ; preds = %bb.fd, %bb.fb
  %.0.i.i.i.i25.i = phi ptr [ %i.qk, %bb.fb ], [ %i.qo, %bb.fd ] ; 2 uses
  %.not.i.i132.i.i = icmp eq ptr %.0.i.i.i.i25.i, null
  br i1 %.not.i.i132.i.i, label %drm_display_mode_from_vic_index.exit.thread.i20.i, label %drm_display_mode_from_vic_index.exit.i26.i

drm_display_mode_from_vic_index.exit.i26.i:       ; preds = %cea_mode_for_vic.exit.i.i.i24.i
  %i.qp = call ptr @drm_mode_duplicate(ptr noundef %i.qb, ptr noundef nonnull %.0.i.i.i.i25.i) #22 ; 3 uses
  %.not112.i.i = icmp eq ptr %i.qp, null
  br i1 %.not112.i.i, label %drm_display_mode_from_vic_index.exit.thread.i20.i, label %bb.fe

bb.fe:                                            ; preds = %drm_display_mode_from_vic_index.exit.i26.i
  %i.qq = getelementptr i8, ptr %i.qp, i64 24     ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 8
  %i.qs = or i32 %i.qr, %.093135.i.i
  store i32 %i.qs, ptr %i.qq, align 8
  call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %i.qp) #22
  %i.qt = add i32 %.5156.i.i, 1
  br label %drm_display_mode_from_vic_index.exit.thread.i20.i

drm_display_mode_from_vic_index.exit.thread.i20.i: ; preds = %bb.fe, %drm_display_mode_from_vic_index.exit.i26.i, %cea_mode_for_vic.exit.i.i.i24.i, %bb.fc, %bb.ez, %bb.ey, %.thread.i.i, %bb.ex, %bb.ev
  %.6.i.i = phi i32 [ %i.qt, %bb.fe ], [ %.5156.i.i, %drm_display_mode_from_vic_index.exit.i26.i ], [ %.5156.i.i, %bb.ex ], [ %.5156.i.i, %bb.ev ], [ %.5156.i.i, %.thread.i.i ], [ %.5156.i.i, %bb.ez ], [ %.5156.i.i, %bb.ey ], [ %.5156.i.i, %cea_mode_for_vic.exit.i.i.i24.i ], [ %.5156.i.i, %bb.fc ] ; 2 uses
  %spec.select120.i.i = select i1 %.not110.i.i, i32 %i.ps, i32 %.2100155.i.i
  %i.qu = add i32 %spec.select120.i.i, 1          ; 2 uses
  %i.qv = icmp slt i32 %i.qu, %i.ph
  br i1 %i.qv, label %bb.eu, label %do_hdmi_vsdb_modes.exit.i, !llvm.loop !117

do_hdmi_vsdb_modes.exit.i:                        ; preds = %drm_display_mode_from_vic_index.exit.thread.i20.i, %bb.eu, %.loopexit145.i.i, %.critedge.i.i, %bb.ce, %bb.cd, %bb.cc
  %.8.i.i = phi i32 [ 0, %bb.cc ], [ 0, %bb.ce ], [ %.1.lcssa.i.i, %.critedge.i.i ], [ 0, %bb.cd ], [ %.4.i.i, %.loopexit145.i.i ], [ %.6.i.i, %drm_display_mode_from_vic_index.exit.thread.i20.i ], [ %.5156.i.i, %bb.eu ]
  %i.qw = add i32 %.8.i.i, %.041.i
  br label %cea_db_is_y420vdb.exit.thread.i

bb.ff:                                            ; preds = %bb.cb
  %i.qx = icmp ult i8 %.val.i.i.i, -32
  %.not.i.i29.i = icmp eq i8 %i.ew, 0
  %or.cond.i.i30.i = or i1 %i.qx, %.not.i.i29.i
  br i1 %or.cond.i.i30.i, label %cea_db_is_y420vdb.exit.thread.i, label %cea_db_is_y420vdb.exit.i

cea_db_is_y420vdb.exit.i:                         ; preds = %bb.ff
  %i.qy = getelementptr i8, ptr %i.eu, i64 1
  %i.qz = load i8, ptr %i.qy, align 1
  %i.ra = icmp eq i8 %i.qz, 14
  br i1 %i.ra, label %bb.fg, label %cea_db_is_y420vdb.exit.thread.i

bb.fg:                                            ; preds = %cea_db_is_y420vdb.exit.i
  %i.rb = getelementptr i8, ptr %i.eu, i64 2
  %i.rc = add nsw i8 %i.ew, -1                    ; 2 uses
  %i.rd = load ptr, ptr %0, align 8
  %.not32.i.i = icmp eq i8 %i.rc, 0
  br i1 %.not32.i.i, label %do_y420vdb_modes.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.fg
  %wide.trip.count.i31.i = zext nneg i8 %i.rc to i64
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %drm_valid_cea_vic.exit.thread.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i33.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i34.i, %drm_valid_cea_vic.exit.thread.i.i ] ; 2 uses
  %.01529.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.ph.i.i, %drm_valid_cea_vic.exit.thread.i.i ] ; 5 uses
  %i.re = getelementptr i8, ptr %i.rb, i64 %indvars.iv.i33.i
  %i.rf = load i8, ptr %i.re, align 1             ; 2 uses
  %i.rg = and i8 %i.rf, 127                       ; 2 uses
  %i.rh = add nsw i8 %i.rg, -1
  %or.cond12.i.i.i = icmp ult i8 %i.rh, 64
  %.0.i17.i.i = select i1 %or.cond12.i.i.i, i8 %i.rg, i8 %i.rf ; 4 uses
  %or.cond.i.i.i.i = icmp sgt i8 %.0.i17.i.i, 0
  br i1 %or.cond.i.i.i.i, label %drm_valid_cea_vic.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph.i32.i
  %i.ri = add nsw i8 %.0.i17.i.i, 63
  %or.cond5.i.i.i.i = icmp ult i8 %i.ri, 27
  br i1 %or.cond5.i.i.i.i, label %drm_valid_cea_vic.exit.thread19.i.i, label %drm_valid_cea_vic.exit.thread.i.i

drm_valid_cea_vic.exit.i.i:                       ; preds = %.lr.ph.i32.i
  %i.rj = zext nneg i8 %.0.i17.i.i to i64
  %i.rk = add nuw nsw i64 %i.rj, 4294967295
  %i.rl = and i64 %i.rk, 4294967295
  %i.rm = getelementptr [120 x i8], ptr @edid_cea_modes_1, i64 %i.rl ; 2 uses
  %.not28.i.i = icmp eq ptr %i.rm, null
  br i1 %.not28.i.i, label %drm_valid_cea_vic.exit.thread.i.i, label %cea_mode_for_vic.exit.i.i

drm_valid_cea_vic.exit.thread19.i.i:              ; preds = %bb.fh
  %i.rn = zext i8 %.0.i17.i.i to i64
  %i.ro = getelementptr [120 x i8], ptr @edid_cea_modes_193, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 -23160 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.rp, null
  br i1 %.not27.i.i, label %drm_valid_cea_vic.exit.thread.i.i, label %cea_mode_for_vic.exit.i.i

cea_mode_for_vic.exit.i.i:                        ; preds = %drm_valid_cea_vic.exit.thread19.i.i, %drm_valid_cea_vic.exit.i.i
  %.0.i.i36.i = phi ptr [ %i.rm, %drm_valid_cea_vic.exit.i.i ], [ %i.rp, %drm_valid_cea_vic.exit.thread19.i.i ]
  %i.rq = call ptr @drm_mode_duplicate(ptr noundef %i.rd, ptr noundef nonnull %.0.i.i36.i) #22 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.rq, null
  br i1 %.not.i37.i, label %do_y420vdb_modes.exit.i, label %bb.fi

bb.fi:                                            ; preds = %cea_mode_for_vic.exit.i.i
  call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %i.rq) #22
  %i.rr = add i32 %.01529.i.i, 1
  br label %drm_valid_cea_vic.exit.thread.i.i

drm_valid_cea_vic.exit.thread.i.i:                ; preds = %bb.fi, %drm_valid_cea_vic.exit.thread19.i.i, %drm_valid_cea_vic.exit.i.i, %bb.fh
  %.1.ph.i.i = phi i32 [ %.01529.i.i, %drm_valid_cea_vic.exit.thread19.i.i ], [ %i.rr, %bb.fi ], [ %.01529.i.i, %drm_valid_cea_vic.exit.i.i ], [ %.01529.i.i, %bb.fh ] ; 2 uses
  %indvars.iv.next.i34.i = add nuw nsw i64 %indvars.iv.i33.i, 1 ; 2 uses
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i34.i, %wide.trip.count.i31.i
  br i1 %exitcond.not.i35.i, label %do_y420vdb_modes.exit.i, label %.lr.ph.i32.i, !llvm.loop !118

do_y420vdb_modes.exit.i:                          ; preds = %drm_valid_cea_vic.exit.thread.i.i, %cea_mode_for_vic.exit.i.i, %bb.fg
  %.015.lcssa.i.i = phi i32 [ 0, %bb.fg ], [ %.01529.i.i, %cea_mode_for_vic.exit.i.i ], [ %.1.ph.i.i, %drm_valid_cea_vic.exit.thread.i.i ]
  %i.rs = add i32 %.015.lcssa.i.i, %.041.i
  br label %cea_db_is_y420vdb.exit.thread.i

cea_db_is_y420vdb.exit.thread.i:                  ; preds = %do_y420vdb_modes.exit.i, %cea_db_is_y420vdb.exit.i, %bb.ff, %do_hdmi_vsdb_modes.exit.i, %cea_db_is_hdmi_vsdb.exit.i
  %.1.i37 = phi i32 [ %i.qw, %do_hdmi_vsdb_modes.exit.i ], [ %i.rs, %do_y420vdb_modes.exit.i ], [ %.041.i, %cea_db_is_y420vdb.exit.i ], [ %.041.i, %bb.ff ], [ %.041.i, %cea_db_is_hdmi_vsdb.exit.i ] ; 2 uses
  %i.rt = call fastcc ptr @__cea_db_iter_next(ptr noundef nonnull %7) #21, !srcloc !113 ; 2 uses
  %.not.i38 = icmp eq ptr %i.rt, null
  br i1 %.not.i38, label %add_cea_modes.exit, label %bb.cb, !llvm.loop !119

add_cea_modes.exit:                               ; preds = %cea_db_is_y420vdb.exit.thread.i, %add_cta_vdb_modes.exit.i
  %.0.lcssa.i = phi i32 [ %.013.i.i, %add_cta_vdb_modes.exit.i ], [ %.1.i37, %cea_db_is_y420vdb.exit.thread.i ]
  call void @displayid_iter_end(ptr noundef nonnull %i.em) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ru = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %5, ptr %5, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %5, ptr %i.rv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !17
  %.val.i.i.i39 = load i64, ptr %1, align 8       ; 2 uses
  %.val9.i.i.i = load ptr, ptr %i.c, align 8      ; 13 uses
  %i.rw = getelementptr i8, ptr %.val9.i.i.i, i64 126
  %.val.i.i.i.i.i = load i8, ptr %i.rw, align 1   ; 5 uses
  %.not.i.i.i.i.i40 = icmp ult i64 %.val.i.i.i39, 256
  %i.rx = trunc i64 %.val.i.i.i39 to i32          ; 5 uses
  %i.ry = sdiv i32 %i.rx, 128                     ; 4 uses
  %i.rz = getelementptr i8, ptr %.val9.i.i.i, i64 128
  %i.sa = getelementptr i8, ptr %.val9.i.i.i, i64 129
  %i.sb = getelementptr i8, ptr %.val9.i.i.i, i64 130
  %i.sc = getelementptr i8, ptr %.val9.i.i.i, i64 132
  %i.sd = getelementptr i8, ptr %.val9.i.i.i, i64 133
  %i.se = getelementptr i8, ptr %.val9.i.i.i, i64 134
  br i1 %.not.i.i.i.i.i40, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %add_cea_modes.exit
  %.1.in.i.i.i.us.i.i = zext i8 %.val.i.i.i.i.i to i32
  %.1.i.i.i.us.i.i = add nuw nsw i32 %.1.in.i.i.i.us.i.i, 1
  %12 = call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i.us.i.i, i32 %i.ry)
  %wide.trip.count119.i = zext nneg i32 %12 to i64
  %exitcond120.not.i206 = icmp ult i32 %i.rx, 128
  br i1 %exitcond120.not.i206, label %__drm_edid_iter_next.exit.thread.i.i, label %__drm_edid_iter_next.exit.us.i.i

drm_edid_block_count.exit.i.us.i.i:               ; preds = %bb.fj
  %13 = add nuw nsw i64 %.sroa.6.0.us.i.i207, 1   ; 2 uses
  %exitcond120.not.i = icmp eq i64 %13, %wide.trip.count119.i
  br i1 %exitcond120.not.i, label %__drm_edid_iter_next.exit.thread.i.i, label %__drm_edid_iter_next.exit.us.i.i, !llvm.loop !120

__drm_edid_iter_next.exit.us.i.i:                 ; preds = %.split.us.i.i, %drm_edid_block_count.exit.i.us.i.i
  %.sroa.6.0.us.i.i207 = phi i64 [ %13, %drm_edid_block_count.exit.i.us.i.i ], [ 0, %.split.us.i.i ] ; 2 uses
  %14 = shl nuw nsw i64 %.sroa.6.0.us.i.i207, 7
  %15 = getelementptr i8, ptr %.val9.i.i.i, i64 %14 ; 2 uses
  %.not.us.i.i = icmp eq ptr %15, null
  br i1 %.not.us.i.i, label %__drm_edid_iter_next.exit.thread.i.i, label %bb.fj

bb.fj:                                            ; preds = %__drm_edid_iter_next.exit.us.i.i
  %i.sf = load i8, ptr %15, align 1
  %i.sg = icmp eq i8 %i.sf, 2
  br i1 %i.sg, label %drm_edid_has_cta_extension.exit.thread.i, label %drm_edid_block_count.exit.i.us.i.i, !llvm.loop !120

.split.i.i:                                       ; preds = %add_cea_modes.exit
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.split.split.us.i.i, label %.split.split.i.i

.split.split.us.i.i:                              ; preds = %.split.i.i
  %i.sh = icmp slt i32 %i.rx, 128
  %.not.us23.i.i = icmp eq ptr %.val9.i.i.i, null
  %or.cond.a = or i1 %i.sh, %.not.us23.i.i
  br i1 %or.cond.a, label %__drm_edid_iter_next.exit.thread.i.i, label %bb.fk

bb.fk:                                            ; preds = %.split.split.us.i.i
  %i.si = load i8, ptr %.val9.i.i.i, align 1
  %i.sj = icmp eq i8 %i.si, 2
  br i1 %i.sj, label %drm_edid_has_cta_extension.exit.thread.i, label %__drm_edid_iter_next.exit.thread.i.i, !llvm.loop !120

.split.split.i.i:                                 ; preds = %.split.i.i
  %.val8.i.i.i.i.i.i.i = load i8, ptr %i.rz, align 1
  %.not7.i.i.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i.i.i.i, 2
  br i1 %.not7.i.i.i.i.i.i.i, label %.split.split.split.us.i.i, label %.split.split.split.i.i

.split.split.split.us.i.i:                        ; preds = %.split.split.i.i
  %.val9.i.i.i.i.i.us.i.i = load i8, ptr %i.sa, align 1
  %i.sk = icmp ult i8 %.val9.i.i.i.i.i.us.i.i, 3
  br i1 %i.sk, label %.split.split.split.us.split.us.i.i, label %.split.split.split.us.split.i.i

.split.split.split.us.split.us.i.i:               ; preds = %.split.split.split.us.i.i
  %.1.in.i.i.i.us31.us.i.i = zext i8 %.val.i.i.i.i.i to i32
  %.1.i.i.i.us32.us.i.i = add nuw nsw i32 %.1.in.i.i.i.us31.us.i.i, 1
  %i.sl = call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i.us32.us.i.i, i32 %i.ry)
  %smax112.i = call i32 @llvm.smax.i32(i32 %i.sl, i32 0)
  %wide.trip.count113.i = zext nneg i32 %smax112.i to i64
  %exitcond114.not.i202 = icmp slt i32 %i.rx, 128
  br i1 %exitcond114.not.i202, label %__drm_edid_iter_next.exit.thread.i.i, label %__drm_edid_iter_next.exit.us33.us.i.i

drm_edid_block_count.exit.i.us29.us.i.i:          ; preds = %bb.fl
  %i.sm = add nuw nsw i64 %.sroa.6.0.us27.us.i.i203, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %i.sm, %wide.trip.count113.i
  br i1 %exitcond114.not.i, label %__drm_edid_iter_next.exit.thread.i.i, label %__drm_edid_iter_next.exit.us33.us.i.i, !llvm.loop !120

__drm_edid_iter_next.exit.us33.us.i.i:            ; preds = %.split.split.split.us.split.us.i.i, %drm_edid_block_count.exit.i.us29.us.i.i
  %.sroa.6.0.us27.us.i.i203 = phi i64 [ %i.sm, %drm_edid_block_count.exit.i.us29.us.i.i ], [ 0, %.split.split.split.us.split.us.i.i ] ; 2 uses
  %i.sn = shl nuw nsw i64 %.sroa.6.0.us27.us.i.i203, 7
  %i.so = getelementptr i8, ptr %.val9.i.i.i, i64 %i.sn ; 2 uses
  %.not.us35.us.i.i = icmp eq ptr %i.so, null
  br i1 %.not.us35.us.i.i, label %__drm_edid_iter_next.exit.thread.i.i, label %bb.fl

bb.fl:                                            ; preds = %__drm_edid_iter_next.exit.us33.us.i.i
  %i.sp = load i8, ptr %i.so, align 1
  %i.sq = icmp eq i8 %i.sp, 2
  br i1 %i.sq, label %drm_edid_has_cta_extension.exit.thread.i, label %drm_edid_block_count.exit.i.us29.us.i.i, !llvm.loop !120

.split.split.split.us.split.i.i:                  ; preds = %.split.split.split.us.i.i
  %.val10.i.i.i.i.i.us.i.i = load i8, ptr %i.sb, align 1
  %i.sr = icmp slt i8 %.val10.i.i.i.i.i.us.i.i, 7
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fp, %.split.split.split.us.split.i.i
  %.sroa.6.0.us27.i.i = phi i64 [ 0, %.split.split.split.us.split.i.i ], [ %i.tc, %bb.fp ] ; 3 uses
  %.sroa.6.8.extract.trunc.us28.i.i = trunc i64 %.sroa.6.0.us27.i.i to i32
  br i1 %i.sr, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.val.i.i.i.i.i.i.i.us.i.i = load i8, ptr %i.sc, align 1 ; 2 uses
  %i.ss = icmp ult i8 %.val.i.i.i.i.i.i.i.us.i.i, -32
  %i.st = and i8 %.val.i.i.i.i.i.i.i.us.i.i, 31   ; 2 uses
  %.not.i.i.i.i.i.i.i.us.i.i = icmp eq i8 %i.st, 0
  %or.cond.i.i.i.i.i.i.i.us.i.i = or i1 %i.ss, %.not.i.i.i.i.i.i.i.us.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.us.i.i, label %bb.fo, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.us.i.i

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.us.i.i: ; preds = %bb.fn
  %i.su = load i8, ptr %i.sd, align 1
  %i.sv = icmp eq i8 %i.su, 120
  %i.sw = icmp samesign ugt i8 %i.st, 1
  %spec.select.i.i.i.i.i.i.us.i.i = select i1 %i.sv, i1 %i.sw, i1 false
  br i1 %spec.select.i.i.i.i.i.i.us.i.i, label %edid_hfeeodb_extension_block_count.exit.i.i.i.i.us.i.i, label %bb.fo

edid_hfeeodb_extension_block_count.exit.i.i.i.i.us.i.i: ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.us.i.i
  %i.sx = load i8, ptr %i.se, align 1
  %.fr.i.i.i.i.us.i.i = freeze i8 %i.sx           ; 2 uses
  %.not.i.i.i.i.us.i.i = icmp eq i8 %.fr.i.i.i.i.us.i.i, 0
  br i1 %.not.i.i.i.i.us.i.i, label %bb.fo, label %drm_edid_block_count.exit.i.us29.i.i

bb.fo:                                            ; preds = %edid_hfeeodb_extension_block_count.exit.i.i.i.i.us.i.i, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.us.i.i, %bb.fn, %bb.fm
  br label %drm_edid_block_count.exit.i.us29.i.i

drm_edid_block_count.exit.i.us29.i.i:             ; preds = %bb.fo, %edid_hfeeodb_extension_block_count.exit.i.i.i.i.us.i.i
  %.1.in.in.i.i.i.us30.i.i = phi i8 [ %.fr.i.i.i.i.us.i.i, %edid_hfeeodb_extension_block_count.exit.i.i.i.i.us.i.i ], [ %.val.i.i.i.i.i, %bb.fo ]
  %.1.in.i.i.i.us31.i.i = zext i8 %.1.in.in.i.i.i.us30.i.i to i32
  %.1.i.i.i.us32.i.i = add nuw nsw i32 %.1.in.i.i.i.us31.i.i, 1
  %i.sy = call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i.us32.i.i, i32 %i.ry)
  %i.sz = icmp sgt i32 %i.sy, %.sroa.6.8.extract.trunc.us28.i.i
  br i1 %i.sz, label %__drm_edid_iter_next.exit.us33.i.i, label %__drm_edid_iter_next.exit.thread.i.i

__drm_edid_iter_next.exit.us33.i.i:               ; preds = %drm_edid_block_count.exit.i.us29.i.i
  %sext.us34.i.i = shl i64 %.sroa.6.0.us27.i.i, 32
  %i.ta = ashr exact i64 %sext.us34.i.i, 25
  %i.tb = getelementptr i8, ptr %.val9.i.i.i, i64 %i.ta ; 2 uses
  %.not.us35.i.i = icmp eq ptr %i.tb, null
  br i1 %.not.us35.i.i, label %__drm_edid_iter_next.exit.thread.i.i, label %bb.fp

bb.fp:                                            ; preds = %__drm_edid_iter_next.exit.us33.i.i
  %i.tc = add i64 %.sroa.6.0.us27.i.i, 1
  %i.td = load i8, ptr %i.tb, align 1
  %i.te = icmp eq i8 %i.td, 2
  br i1 %i.te, label %drm_edid_has_cta_extension.exit.thread.i, label %bb.fm, !llvm.loop !120

.split.split.split.i.i:                           ; preds = %.split.split.i.i
  %.1.in.i.i.i.i.i = zext i8 %.val.i.i.i.i.i to i32
  %.1.i.i.i.i.i = add nuw nsw i32 %.1.in.i.i.i.i.i, 1
  %i.tf = call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i.i.i, i32 %i.ry)
  %smax.i = call i32 @llvm.smax.i32(i32 %i.tf, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %exitcond.not.i200 = icmp slt i32 %i.rx, 128
  br i1 %exitcond.not.i200, label %__drm_edid_iter_next.exit.thread.i.i, label %__drm_edid_iter_next.exit.i.i

drm_edid_block_count.exit.i.i.i:                  ; preds = %bb.fq
  %i.tg = add nuw nsw i64 %.sroa.6.0.i.i201, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.tg, %wide.trip.count.i
  br i1 %exitcond.not.i, label %__drm_edid_iter_next.exit.thread.i.i, label %__drm_edid_iter_next.exit.i.i, !llvm.loop !120

__drm_edid_iter_next.exit.i.i:                    ; preds = %.split.split.split.i.i, %drm_edid_block_count.exit.i.i.i
  %.sroa.6.0.i.i201 = phi i64 [ %i.tg, %drm_edid_block_count.exit.i.i.i ], [ 0, %.split.split.split.i.i ] ; 2 uses
  %i.th = shl nuw nsw i64 %.sroa.6.0.i.i201, 7
  %i.ti = getelementptr i8, ptr %.val9.i.i.i, i64 %i.th ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i41, label %__drm_edid_iter_next.exit.thread.i.i, label %bb.fq

bb.fq:                                            ; preds = %__drm_edid_iter_next.exit.i.i
  %i.tj = load i8, ptr %i.ti, align 1
  %i.tk = icmp eq i8 %i.tj, 2
  br i1 %i.tk, label %drm_edid_has_cta_extension.exit.thread.i, label %drm_edid_block_count.exit.i.i.i, !llvm.loop !120

__drm_edid_iter_next.exit.thread.i.i:             ; preds = %drm_edid_block_count.exit.i.i.i, %__drm_edid_iter_next.exit.i.i, %__drm_edid_iter_next.exit.us33.i.i, %drm_edid_block_count.exit.i.us29.i.i, %drm_edid_block_count.exit.i.us29.us.i.i, %__drm_edid_iter_next.exit.us33.us.i.i, %drm_edid_block_count.exit.i.us.i.i, %__drm_edid_iter_next.exit.us.i.i, %.split.split.split.i.i, %.split.split.split.us.split.us.i.i, %.split.split.us.i.i, %bb.fk, %.split.us.i.i
  call void @displayid_iter_edid_begin(ptr noundef nonnull %1, ptr noundef nonnull %4) #22
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fs, %__drm_edid_iter_next.exit.thread.i.i
  %i.tl = call ptr @__displayid_iter_next(ptr noundef nonnull %4) #22 ; 2 uses
  %.not9.not.not.not.i.not.i = icmp eq ptr %i.tl, null
  br i1 %.not9.not.not.not.i.not.i, label %drm_edid_has_cta_extension.exit.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.tm = load i8, ptr %i.tl, align 1
  %i.tn = icmp eq i8 %i.tm, -127
  br i1 %i.tn, label %drm_edid_has_cta_extension.exit.thread73.i, label %bb.fr, !llvm.loop !121

drm_edid_has_cta_extension.exit.thread73.i:       ; preds = %bb.fs
  call void @displayid_iter_end(ptr noundef nonnull %4) #22
  br label %drm_edid_has_cta_extension.exit.thread.i

drm_edid_has_cta_extension.exit.i:                ; preds = %bb.fr
  call void @displayid_iter_end(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %add_alternate_cea_modes.exit

drm_edid_has_cta_extension.exit.thread.i:         ; preds = %bb.fq, %bb.fp, %bb.fl, %bb.fj, %bb.fk, %drm_edid_has_cta_extension.exit.thread73.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.to = getelementptr i8, ptr %0, i64 176       ; 3 uses
  %.pn93.i = load ptr, ptr %i.to, align 8         ; 2 uses
  %.not95.i = icmp eq ptr %.pn93.i, %i.to
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %drm_edid_has_cta_extension.exit.thread.i, %cea_mode_alternate_clock.exit.thread.i
  %.pn96.i = phi ptr [ %.pn.i, %cea_mode_alternate_clock.exit.thread.i ], [ %.pn93.i, %drm_edid_has_cta_extension.exit.thread.i ] ; 3 uses
  %.05397.i = getelementptr i8, ptr %.pn96.i, i64 -64 ; 4 uses
  %i.tp = call zeroext i8 @drm_match_cea_mode(ptr noundef %.05397.i) #21 ; 4 uses
  %or.cond.i.i.i43 = icmp sgt i8 %i.tp, 0
  br i1 %or.cond.i.i.i43, label %drm_valid_cea_vic.exit.i, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph.i42
  %i.tq = add nsw i8 %i.tp, 63
  %or.cond5.i.i.i = icmp ult i8 %i.tq, 27
  br i1 %or.cond5.i.i.i, label %drm_valid_cea_vic.exit.thread75.i, label %drm_valid_cea_vic.exit.thread.i

drm_valid_cea_vic.exit.i:                         ; preds = %.lr.ph.i42
  %i.tr = zext nneg i8 %i.tp to i64
  %i.ts = add nuw nsw i64 %i.tr, 4294967295
  %i.tt = and i64 %i.ts, 4294967295
  %i.tu = getelementptr [120 x i8], ptr @edid_cea_modes_1, i64 %i.tt ; 2 uses
  %.not84.i = icmp eq ptr %i.tu, null
  br i1 %.not84.i, label %drm_valid_cea_vic.exit.thread.i, label %cea_mode_for_vic.exit.i

drm_valid_cea_vic.exit.thread75.i:                ; preds = %bb.ft
  %i.tv = zext i8 %i.tp to i64
  %i.tw = getelementptr [120 x i8], ptr @edid_cea_modes_193, i64 %i.tv
  %i.tx = getelementptr i8, ptr %i.tw, i64 -23160 ; 2 uses
  %.not83.i = icmp eq ptr %i.tx, null
  br i1 %.not83.i, label %drm_valid_cea_vic.exit.thread.i, label %cea_mode_for_vic.exit.i

cea_mode_for_vic.exit.i:                          ; preds = %drm_valid_cea_vic.exit.thread75.i, %drm_valid_cea_vic.exit.i
  %.0.i.i = phi ptr [ %i.tu, %drm_valid_cea_vic.exit.i ], [ %i.tx, %drm_valid_cea_vic.exit.thread75.i ] ; 5 uses
  %i.ty = load i32, ptr %.0.i.i, align 8          ; 4 uses
  %i.tz = call i32 @drm_mode_vrefresh(ptr noundef nonnull %.0.i.i) #22
  %i.ua = srem i32 %i.tz, 6
  %.not.i69.i = icmp eq i32 %i.ua, 0
  br i1 %.not.i69.i, label %bb.fu, label %cea_mode_alternate_clock.exit.thread.i

bb.fu:                                            ; preds = %cea_mode_for_vic.exit.i
  %i.ub = getelementptr i8, ptr %.0.i.i, i64 14
  %i.uc = load i16, ptr %i.ub, align 2
  switch i16 %i.uc, label %bb.fw [
    i16 240, label %bb.fv
    i16 480, label %bb.fv
  ]

bb.fv:                                            ; preds = %bb.fu, %bb.fu
  %i.ud = mul i32 %i.ty, 1001
  %i.ue = add i32 %i.ud, 500
  %i.uf = udiv i32 %i.ue, 1000
  br label %cea_mode_alternate_clock.exit.thread138.i

bb.fw:                                            ; preds = %bb.fu
  %i.ug = mul i32 %i.ty, 1000
  %i.uh = add i32 %i.ug, 500
  %i.ui = udiv i32 %i.uh, 1001
  br label %cea_mode_alternate_clock.exit.thread138.i

drm_valid_cea_vic.exit.thread.i:                  ; preds = %drm_valid_cea_vic.exit.thread75.i, %drm_valid_cea_vic.exit.i, %bb.ft
  %i.uj = call fastcc zeroext i8 @drm_match_hdmi_mode(ptr noundef %.05397.i) #21, !srcloc !122 ; 2 uses
  %.not137.i = icmp eq i8 %i.uj, 0
  br i1 %.not137.i, label %cea_mode_alternate_clock.exit.thread.i, label %bb.fx

bb.fx:                                            ; preds = %drm_valid_cea_vic.exit.thread.i
  %i.uk = zext nneg i8 %i.uj to i64
  %i.ul = getelementptr [120 x i8], ptr @edid_4k_modes, i64 %i.uk ; 5 uses
  %i.um = load i32, ptr %i.ul, align 8            ; 4 uses
  %i.un = call i32 @drm_mode_vrefresh(ptr noundef %i.ul) #22
  %i.uo = srem i32 %i.un, 6
  %.not.i.i.i44 = icmp eq i32 %i.uo, 0
  br i1 %.not.i.i.i44, label %bb.fy, label %cea_mode_alternate_clock.exit.i

bb.fy:                                            ; preds = %bb.fx
  %i.up = getelementptr i8, ptr %i.ul, i64 14
  %i.uq = load i16, ptr %i.up, align 2
  switch i16 %i.uq, label %bb.ga [
    i16 240, label %bb.fz
    i16 480, label %bb.fz
  ]

bb.fz:                                            ; preds = %bb.fy, %bb.fy
  %i.ur = mul i32 %i.um, 1001
  %i.us = add i32 %i.ur, 500
  %i.ut = udiv i32 %i.us, 1000
  br label %cea_mode_alternate_clock.exit.i

bb.ga:                                            ; preds = %bb.fy
  %i.uu = mul i32 %i.um, 1000
  %i.uv = add i32 %i.uu, 500
  %i.uw = udiv i32 %i.uv, 1001
  br label %cea_mode_alternate_clock.exit.i

cea_mode_alternate_clock.exit.i:                  ; preds = %bb.ga, %bb.fz, %bb.fx
  %.057.i = phi i32 [ %i.uw, %bb.ga ], [ %i.ut, %bb.fz ], [ %i.um, %bb.fx ]
  %.not64.i = icmp eq ptr %i.ul, null
  br i1 %.not64.i, label %cea_mode_alternate_clock.exit.thread.i, label %cea_mode_alternate_clock.exit.thread138.i

cea_mode_alternate_clock.exit.thread138.i:        ; preds = %cea_mode_alternate_clock.exit.i, %bb.fw, %bb.fv
  %.056143.i = phi ptr [ %i.ul, %cea_mode_alternate_clock.exit.i ], [ %.0.i.i, %bb.fw ], [ %.0.i.i, %bb.fv ]
  %.057142.i = phi i32 [ %.057.i, %cea_mode_alternate_clock.exit.i ], [ %i.ui, %bb.fw ], [ %i.uf, %bb.fv ] ; 3 uses
  %i.ux = phi i32 [ %i.um, %cea_mode_alternate_clock.exit.i ], [ %i.ty, %bb.fw ], [ %i.ty, %bb.fv ] ; 4 uses
  %i.uy = icmp eq i32 %i.ux, %.057142.i
  br i1 %i.uy, label %cea_mode_alternate_clock.exit.thread.i, label %bb.gb

bb.gb:                                            ; preds = %cea_mode_alternate_clock.exit.thread138.i
  %i.uz = load i32, ptr %.05397.i, align 8        ; 2 uses
  %.not65.i = icmp eq i32 %i.uz, %i.ux
  %.not66.i = icmp eq i32 %i.uz, %.057142.i
  %or.cond.i = or i1 %.not65.i, %.not66.i
  br i1 %or.cond.i, label %bb.gc, label %cea_mode_alternate_clock.exit.thread.i

bb.gc:                                            ; preds = %bb.gb
  %i.va = call ptr @drm_mode_duplicate(ptr noundef %i.ru, ptr noundef nonnull %.056143.i) #22 ; 5 uses
  %.not67.i = icmp eq ptr %i.va, null
  br i1 %.not67.i, label %cea_mode_alternate_clock.exit.thread.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.vb = getelementptr i8, ptr %.pn96.i, i64 -40
  %i.vc = load i32, ptr %i.vb, align 8
  %i.vd = and i32 %i.vc, 507904
  %i.ve = getelementptr i8, ptr %i.va, i64 24     ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 8
  %i.vg = or i32 %i.vf, %i.vd
  store i32 %i.vg, ptr %i.ve, align 8
  %i.vh = load i32, ptr %.05397.i, align 8
  %.not68.i = icmp eq i32 %i.vh, %i.ux
  %.057..i = select i1 %.not68.i, i32 %.057142.i, i32 %i.ux
  store i32 %.057..i, ptr %i.va, align 8
  %i.vi = getelementptr i8, ptr %i.va, i64 64     ; 3 uses
  %i.vj = load ptr, ptr %i.rv, align 8            ; 2 uses
  store ptr %i.vi, ptr %i.rv, align 8
  store ptr %5, ptr %i.vi, align 8
  %i.vk = getelementptr i8, ptr %i.va, i64 72
  store ptr %i.vj, ptr %i.vk, align 8
  store volatile ptr %i.vi, ptr %i.vj, align 8
  br label %cea_mode_alternate_clock.exit.thread.i

cea_mode_alternate_clock.exit.thread.i:           ; preds = %bb.gd, %bb.gc, %bb.gb, %cea_mode_alternate_clock.exit.thread138.i, %cea_mode_alternate_clock.exit.i, %drm_valid_cea_vic.exit.thread.i, %cea_mode_for_vic.exit.i
  %.pn.i = load ptr, ptr %.pn96.i, align 8        ; 2 uses
  %.not.i45 = icmp eq ptr %.pn.i, %i.to
  br i1 %.not.i45, label %._crit_edge.i, label %.lr.ph.i42, !llvm.loop !123

._crit_edge.i:                                    ; preds = %cea_mode_alternate_clock.exit.thread.i, %drm_edid_has_cta_extension.exit.thread.i
  %i.vl = load ptr, ptr %5, align 8               ; 2 uses
  %.not8299.i = icmp eq ptr %i.vl, %5
  br i1 %.not8299.i, label %add_alternate_cea_modes.exit, label %.lr.ph103.i

.lr.ph103.i:                                      ; preds = %._crit_edge.i, %.lr.ph103.i
  %.pn61.in101.i = phi ptr [ %.pn61.i, %.lr.ph103.i ], [ %i.vl, %._crit_edge.i ] ; 4 uses
  %.055100.i = phi i32 [ %i.vp, %.lr.ph103.i ], [ 0, %._crit_edge.i ]
  %.pn61.i = load ptr, ptr %.pn61.in101.i, align 8 ; 4 uses
  %.1.i46 = getelementptr i8, ptr %.pn61.in101.i, i64 -64
  %i.vm = getelementptr i8, ptr %.pn61.in101.i, i64 8 ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8            ; 2 uses
  %i.vo = getelementptr i8, ptr %.pn61.i, i64 8
  store ptr %i.vn, ptr %i.vo, align 8
  store volatile ptr %.pn61.i, ptr %i.vn, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.pn61.in101.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.vm, align 8
  call void @drm_mode_probed_add(ptr noundef %0, ptr noundef %.1.i46) #22
  %i.vp = add i32 %.055100.i, 1                   ; 2 uses
  %.not82.i = icmp eq ptr %.pn61.i, %5
  br i1 %.not82.i, label %add_alternate_cea_modes.exit, label %.lr.ph103.i, !llvm.loop !124

add_alternate_cea_modes.exit:                     ; preds = %.lr.ph103.i, %drm_edid_has_cta_extension.exit.i, %._crit_edge.i
  %.0.i = phi i32 [ 0, %drm_edid_has_cta_extension.exit.i ], [ 0, %._crit_edge.i ], [ %i.vp, %.lr.ph103.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !17
  call void @displayid_iter_edid_begin(ptr noundef nonnull %1, ptr noundef nonnull %3) #22
  %i.vq = call ptr @__displayid_iter_next(ptr noundef nonnull %3) #22 ; 2 uses
  %.not23.i = icmp eq ptr %i.vq, null
  br i1 %.not23.i, label %add_displayid_detailed_modes.exit, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %add_alternate_cea_modes.exit, %bb.gp
  %i.vr = phi ptr [ %i.zp, %bb.gp ], [ %i.vq, %add_alternate_cea_modes.exit ] ; 6 uses
  %.024.i = phi i32 [ %.1.i48, %bb.gp ], [ 0, %add_alternate_cea_modes.exit ] ; 3 uses
  %i.vs = load i8, ptr %i.vr, align 1             ; 2 uses
  switch i8 %i.vs, label %bb.gp [
    i8 3, label %bb.ge
    i8 34, label %bb.ge
    i8 36, label %bb.gh
    i8 42, label %bb.gh
  ]

bb.ge:                                            ; preds = %.lr.ph.i47, %.lr.ph.i47
  %i.vt = icmp eq i8 %i.vs, 34
  %i.vu = getelementptr i8, ptr %i.vr, i64 2
  %i.vv = load i8, ptr %i.vu, align 1             ; 3 uses
  %i.vw = urem i8 %i.vv, 20
  %i.vx = udiv i8 %i.vv, 20
  %.not.i.i55 = icmp ne i8 %i.vw, 0
  %.not25.i.i = icmp ult i8 %i.vv, 20
  %or.cond.i.i56 = or i1 %.not25.i.i, %.not.i.i55
  br i1 %or.cond.i.i56, label %add_displayid_detailed_1_modes.exit.i, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %bb.ge
end_hunk_0
