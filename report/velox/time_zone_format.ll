Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/time_zone_format?download=true
inline.NumInlined: 499
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  %.lhs.trunc.i = add nsw i16 %i.sd, %i.sc
  %i.se = urem i16 %.lhs.trunc.i, 7
  %.zext.i = zext nneg i16 %i.se to i64
  %i.sf = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %.zext.i
  %i.sg = getelementptr i8, ptr %i.sf, i64 24
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !28
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ev, %bb.eu
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ev ], [ 0, %bb.eu ] ; 4 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.i.i
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !28
  %i.sk = icmp eq i32 %i.sh, %i.sj
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %i.sk, label %.preheader.i.i, label %bb.ev, !llvm.loop !0

.preheader.i.i:                                   ; preds = %bb.ev, %.preheader.i.i
  %indvars.iv17.i.i = phi i64 [ %indvars.iv.next18.i.i, %.preheader.i.i ], [ %indvars.iv.i.i, %bb.ev ]
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 1 ; 3 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i.i
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !28
  %i.sn = icmp eq i32 %.0203.ph.lcssa, %i.sm
  br i1 %i.sn, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i, label %.preheader.i.i, !llvm.loop !1

_ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i: ; preds = %.preheader.i.i
  %i.so = sub nuw nsw i64 %indvars.iv.next18.i.i, %indvars.iv.i.i
  %i.sp = and i64 %i.so, 4294967295
  %i.sq = sub nsw i64 0, %i.sp
  %i.sr = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.rw, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.sq, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #19 ; 2 uses
  %.sroa.3.0.in.in.i = extractvalue { i64, i64 } %i.sr, 1 ; 2 uses
  %i.ss = extractvalue { i64, i64 } %i.sr, 0
  %.sroa.22.8.extract.trunc.i.i.i = trunc i64 %.sroa.3.0.in.in.i to i8
  %.sroa.3.0.in.i = shl i64 %.sroa.3.0.in.in.i, 48
  %i.st = ashr i64 %.sroa.3.0.in.i, 56
  %i.su = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ss, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i, i64 noundef %i.st, i64 noundef -1, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #19 ; 2 uses
  %.sroa.3.0.in.in.i.i = extractvalue { i64, i64 } %i.su, 1 ; 4 uses
  %i.sv = extractvalue { i64, i64 } %i.su, 0      ; 2 uses
  %i.sw = load i32, ptr %i.o, align 8, !tbaa !29
  %i.sx = srem i64 %i.sv, 400
  %i.sy = add nsw i64 %i.sx, 2400
  %.sroa.4.8.extract.trunc.i23.i = trunc i64 %.sroa.3.0.in.in.i.i to i8 ; 2 uses
  %i.sz = icmp slt i8 %.sroa.4.8.extract.trunc.i23.i, 3
  %.neg.i.i24.i = sext i1 %i.sz to i64
  %i.ta = add nsw i64 %i.sy, %.neg.i.i24.i        ; 3 uses
  %i.tb = lshr i64 %i.ta, 2
  %.lhs.trunc.i.i25.i = trunc nuw nsw i64 %i.ta to i16 ; 2 uses
  %i.tc = udiv i16 %.lhs.trunc.i.i25.i, 100
  %.zext.i.i26.i = zext nneg i16 %i.tc to i64
  %i.td = udiv i16 %.lhs.trunc.i.i25.i, 400
  %.zext10.i.i27.i = zext nneg i16 %i.td to i64
  %sext.i28.i = shl i64 %.sroa.3.0.in.in.i.i, 56
  %i.te = ashr exact i64 %sext.i28.i, 54
  %i.tf = getelementptr inbounds i8, ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !21
  %.sroa.4.9.extract.shift15.i29.i = lshr i64 %.sroa.3.0.in.in.i.i, 8
  %.sroa.4.9.extract.trunc.i30.i = trunc i64 %.sroa.4.9.extract.shift15.i29.i to i8
  %i.th = sext i8 %.sroa.4.9.extract.trunc.i30.i to i32
  %i.ti = add nsw i32 %i.tg, %i.th
  %i.tj = sext i32 %i.ti to i64
  %i.tk = add nuw nsw i64 %i.tb, %i.ta
  %i.tl = add nsw i64 %i.tk, %i.tj
  %i.tm = sub nsw i64 %i.tl, %.zext.i.i26.i
  %i.tn = add nsw i64 %i.tm, %.zext10.i.i27.i
  %i.to = srem i64 %i.tn, 7
  %i.tp = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %i.to
  %i.tq = getelementptr i8, ptr %i.tp, i64 24
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !28
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %_ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i, %bb.ew ], [ 0, %_ZN4absl12lts_2024011613time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i ] ; 4 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_forw, i64 %indvars.iv.i31.i
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !28
  %i.tu = icmp eq i32 %i.tr, %i.tt
  %indvars.iv.next.i32.i = add nuw nsw i64 %indvars.iv.i31.i, 1
  br i1 %i.tu, label %.preheader.i33.preheader.i, label %bb.ew, !llvm.loop !66

.preheader.i33.preheader.i:                       ; preds = %bb.ew
  %switch.tableidx.i.i = add i32 %i.sw, -1
  %switch.tableidx..i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %switch.tableidx.i.i, i32 6)
  br label %.preheader.i33.i

.preheader.i33.i:                                 ; preds = %.preheader.i33.i, %.preheader.i33.preheader.i
  %indvars.iv17.i34.i = phi i64 [ %indvars.iv.next18.i35.i, %.preheader.i33.i ], [ %indvars.iv.i31.i, %.preheader.i33.preheader.i ]
  %indvars.iv.next18.i35.i = add nuw nsw i64 %indvars.iv17.i34.i, 1 ; 3 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_forw, i64 %indvars.iv.next18.i35.i
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !28
  %i.tx = icmp eq i32 %switch.tableidx..i.i, %i.tw
  br i1 %i.tx, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i, label %.preheader.i33.i, !llvm.loop !67

_ZN4absl12lts_2024011613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i: ; preds = %.preheader.i33.i
  %i.ty = sub nuw nsw i64 %indvars.iv.next18.i35.i, %indvars.iv.i31.i
  %i.tz = and i64 %i.ty, 4294967295
  %.sroa.3.0.in.i.i = shl i64 %.sroa.3.0.in.in.i.i, 48
  %i.ua = ashr i64 %.sroa.3.0.in.i.i, 56
  %i.ub = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.sv, i8 noundef signext %.sroa.4.8.extract.trunc.i23.i, i64 noundef %i.ua, i64 noundef %i.tz, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #19 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i64 } %i.ub, 1 ; 2 uses
  %i.uc = extractvalue { i64, i64 } %i.ub, 0
  %i.ud = mul nsw i32 %.0.ph.lcssa, 7
  %i.ue = sext i32 %i.ud to i64
  %.sroa.22.8.extract.trunc.i.i36.i = trunc i64 %.fca.1.extract.i.i.i.i to i8
  %.sroa.2.8.insert.insert.i.i.i.i.i = shl i64 %.fca.1.extract.i.i.i.i, 48
  %i.uf = ashr i64 %.sroa.2.8.insert.insert.i.i.i.i.i, 56
  %i.ug = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.uc, i8 noundef signext %.sroa.22.8.extract.trunc.i.i36.i, i64 noundef %i.uf, i64 noundef %i.ue, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #19 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %i.ug, 1 ; 2 uses
  %i.uh = extractvalue { i64, i64 } %i.ug, 0      ; 2 uses
  %i.ui = sub nsw i64 %i.uh, %i.rw                ; 4 uses
  %.not.i649 = icmp eq i64 %i.uh, %i.rw
  br i1 %.not.i649, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i
  %i.uj = icmp sgt i64 %i.ui, 0
  br i1 %i.uj, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.uk = sub nuw nsw i64 9223372036854775807, %i.ui
  %i.ul = icmp sgt i64 %i.rv, %i.uk
  br i1 %i.ul, label %bb.fb, label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.um = sub nsw i64 -9223372036854775808, %i.ui
  %i.un = icmp slt i64 %i.rv, %i.um
  br i1 %i.un, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.uo = add nsw i64 %i.ui, %i.rv
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i, %bb.fa
  %i.up = phi i64 [ %i.rv, %_ZN4absl12lts_2024011613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i ], [ %i.uo, %bb.fa ]
  %.sroa.5.8.extract.trunc.i = trunc i64 %.fca.1.extract.i.i.i to i8
  %i.uq = sext i8 %.sroa.5.8.extract.trunc.i to i32 ; 2 uses
  %i.ur = add nsw i32 %i.uq, -1
  store i32 %i.ur, ptr %i.k, align 8, !tbaa !24
  %.sroa.2.8.insert.insert.i.i.i43.i = lshr i64 %.fca.1.extract.i.i.i, 8
  %.sroa.5.9.extract.trunc.i = trunc i64 %.sroa.2.8.insert.insert.i.i.i43.i to i8
  %i.us = sext i8 %.sroa.5.9.extract.trunc.i to i32 ; 2 uses
  store i32 %i.us, ptr %i.l, align 4, !tbaa !72
  %.pre962 = load i32, ptr %6, align 8, !tbaa !71
  br label %bb.fd

bb.fb:                                            ; preds = %bb.ez, %bb.ey
  %.not262 = icmp eq ptr %5, null
  br i1 %.not262, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ut = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !16
  %i.uv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.uu, ptr noundef nonnull @.str.13, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651 unwind label %bb.eq ; 0 uses

bb.fd:                                            ; preds = %._crit_edge958, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit
  %i.uw = phi i32 [ %i.rq, %._crit_edge958 ], [ %.pre962, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit ]
  %i.ux = phi i32 [ %.pre961, %._crit_edge958 ], [ %i.us, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit ]
  %i.uy = phi i64 [ %.pre960, %._crit_edge958 ], [ %i.up, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit ]
  %i.uz = phi i32 [ %i.ru, %._crit_edge958 ], [ %i.uq, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FromWeekEiNS3_7weekdayEPlP2tm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.va = sext i32 %i.uz to i64
  %i.vb = sext i32 %i.ux to i64
  %i.vc = load i32, ptr %i.m, align 8, !tbaa !68
  %i.vd = sext i32 %i.vc to i64
  %i.ve = load i32, ptr %i.n, align 4, !tbaa !73
  %i.vf = sext i32 %i.ve to i64
  %i.vg = sext i32 %i.uw to i64
  %i.vh = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.uy, i64 noundef %i.va, i64 noundef %i.vb, i64 noundef %i.vd, i64 noundef %i.vf, i64 noundef %i.vg) #19 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.vh, 0
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.vh, 1 ; 3 uses
  store i64 %.fca.0.extract.i, ptr %13, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.fca.1.extract.i to i40
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.vi = trunc i64 %.fca.1.extract.i to i8
  %i.vj = sext i8 %i.vi to i32
  %.not263 = icmp eq i32 %i.uz, %i.vj
  br i1 %.not263, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.vk = lshr i64 %.fca.1.extract.i, 8
  %i.vl = trunc i64 %i.vk to i8
  %i.vm = sext i8 %i.vl to i32
  %i.vn = load i32, ptr %i.l, align 4, !tbaa !72
  %.not264 = icmp eq i32 %i.vn, %i.vm
  br i1 %.not264, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.not272 = icmp eq ptr %5, null
  br i1 %.not272, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.vo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !16
  %i.vq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.vp, ptr noundef nonnull @.str.13, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653 unwind label %bb.fh ; 0 uses

bb.fh:                                            ; preds = %bb.fg, %bb.fn
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.fi:                                            ; preds = %bb.fe
  %i.vs = load i32, ptr %i.b, align 4, !tbaa !21  ; 5 uses
  %i.vt = icmp slt i32 %i.vs, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  br i1 %i.vt, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.vu = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail10civil_timeINS3_10second_tagEE3maxEv() ; 2 uses
  %i.vv = extractvalue { i64, i64 } %i.vu, 0
  %i.vw = extractvalue { i64, i64 } %i.vu, 1
  %i.vx = sext i32 %i.vs to i64
  %i.vy = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl(i64 %i.vv, i64 %i.vw, i64 noundef %i.vx) #19 ; 2 uses
  %i.vz = extractvalue { i64, i64 } %i.vy, 0
  store i64 %i.vz, ptr %14, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wb = extractvalue { i64, i64 } %i.vy, 1
  store i64 %i.wb, ptr %i.wa, align 8
  %i.wc = call noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14) #19
  br i1 %i.wc, label %.critedge11, label %.critedge13

bb.fk:                                            ; preds = %bb.fi
  %.not716 = icmp eq i32 %i.vs, 0
  br i1 %.not716, label %.critedge13, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.wd = zext nneg i32 %i.vs to i64
  %21 = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl(i64 -9223372036854775808, i64 257, i64 noundef %i.wd) #19 ; 2 uses
  %i.we = extractvalue { i64, i64 } %21, 0
  store i64 %i.we, ptr %15, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = extractvalue { i64, i64 } %21, 1
  store i64 %22, ptr %i.wf, align 8
  %i.wg = call noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br i1 %i.wg, label %bb.fm, label %bb.fo

.critedge11:                                      ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.fm

bb.fm:                                            ; preds = %.critedge11, %bb.fl
  %.not271 = icmp eq ptr %5, null
  br i1 %.not271, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.wh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653 unwind label %bb.fh ; 0 uses

.critedge13:                                      ; preds = %bb.fj, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.fo

bb.fo:                                            ; preds = %.critedge13, %bb.fl
  %i.wi = sext i32 %i.vs to i64
  %.sroa.0.0.copyload.i = load i64, ptr %13, align 8, !tbaa !33
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.wj = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEEl(i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i64 noundef %i.wi) #19 ; 2 uses
  %i.wk = extractvalue { i64, i64 } %i.wj, 0
  %i.wl = extractvalue { i64, i64 } %i.wj, 1
  store i64 %i.wk, ptr %13, align 8, !tbaa !33
  store i64 %i.wl, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNK4absl12lts_2024011613time_internal4cctz9time_zone6lookupERKNS2_6detail10civil_timeINS4_10second_tagEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::civil_lookup") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.fp unwind label %bb.fu

bb.fp:                                            ; preds = %bb.fo
  %i.wm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  switch i64 %i.wn, label %bb.gh [
    i64 9223372036854775807, label %bb.fq
    i64 -9223372036854775808, label %bb.fz
  ]

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store i64 9223372036854775807, ptr %18, align 8
  invoke void @_ZNK4absl12lts_2024011613time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::absolute_lookup") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.fr unwind label %bb.fv

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.wo = call noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %17) #19
  br i1 %i.wo, label %bb.fs, label %.thread705

bb.fs:                                            ; preds = %bb.fr
  %.not265 = icmp eq ptr %5, null
  br i1 %.not265, label %bb.fx, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.wp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13)
          to label %bb.fx unwind label %bb.fw     ; 0 uses

bb.fu:                                            ; preds = %bb.fo
  %i.wq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.gi

bb.fv:                                            ; preds = %bb.fq
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.fy

bb.fw:                                            ; preds = %bb.ft
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653

bb.fy:                                            ; preds = %bb.fw, %bb.fv
  %.pn = phi { ptr, i32 } [ %i.ws, %bb.fw ], [ %i.wr, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.gi

.thread705:                                       ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.gh

bb.fz:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store i64 -9223372036854775808, ptr %20, align 8
  invoke void @_ZNK4absl12lts_2024011613time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::absolute_lookup") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ga unwind label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.wt = call noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %19) #19
  br i1 %i.wt, label %bb.gb, label %.critedge315

bb.gb:                                            ; preds = %bb.ga
  %.not267 = icmp eq ptr %5, null
  br i1 %.not267, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.wu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13)
          to label %bb.gf unwind label %bb.ge     ; 0 uses

bb.gd:                                            ; preds = %bb.fz
  %i.wv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.gg

bb.ge:                                            ; preds = %bb.gc
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653

bb.gg:                                            ; preds = %bb.ge, %bb.gd
  %.pn268 = phi { ptr, i32 } [ %i.ww, %bb.ge ], [ %i.wv, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.gi

.critedge315:                                     ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.gh

bb.gh:                                            ; preds = %bb.fp, %.thread705, %.critedge315
  store i64 %i.wn, ptr %3, align 8, !tbaa !33
  %i.wx = load i64, ptr %7, align 8, !tbaa !33
  store i64 %i.wx, ptr %4, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653: ; preds = %bb.gh, %bb.fx, %bb.gf, %bb.fg, %bb.fm, %bb.fn, %bb.ff
  %.4 = phi i1 [ false, %bb.fg ], [ false, %bb.ff ], [ false, %bb.fm ], [ false, %bb.fn ], [ true, %bb.gh ], [ false, %bb.gf ], [ false, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651

bb.gi:                                            ; preds = %bb.fu, %bb.fy, %bb.gg, %bb.fh
  %.pn273 = phi { ptr, i32 } [ %i.vr, %bb.fh ], [ %.pn268, %bb.gg ], [ %i.wq, %bb.fu ], [ %.pn, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.gj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651: ; preds = %bb.fc, %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653
  %.5 = phi i1 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653 ], [ false, %bb.fb ], [ false, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.gj:                                            ; preds = %bb.gi, %bb.eq
  %.pn273.pn = phi { ptr, i32 } [ %.pn273, %bb.gi ], [ %i.rp, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke, %bb.eh, %.thread1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651, %bb.ej
  %.6 = phi i1 [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651 ], [ false, %.thread1113 ], [ true, %bb.ej ], [ false, %bb.eh ], [ false, %.invoke ]
  %i.wy = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.p
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.xa = load i64, ptr %i.p, align 8, !tbaa !17
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.6

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645, %bb.gj
  %.pn297.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn, %bb.gj ], [ %.pn297.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645 ], [ %lpad.loopexit.split-lp1357, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.xc = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.xd = icmp eq ptr %i.xc, %i.p
  br i1 %i.xd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659: ; preds = %.loopexit.split-lp
  %i.xe = load i64, ptr %i.p, align 8, !tbaa !17
  %i.xf = add i64 %i.xe, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
end_hunk_0
