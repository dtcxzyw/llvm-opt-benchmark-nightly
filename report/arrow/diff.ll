inline.NumInlined: 8589
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  store i8 37, ptr %i.ew, align 1, !tbaa !70
  %i.ov = load ptr, ptr %0, align 8, !tbaa !446
  %i.ow = getelementptr i8, ptr %i.ov, i64 -24
  %i.ox = load i64, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds i8, ptr %0, i64 %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !659
  %.not.i998 = icmp eq i64 %i.pa, 0
  br i1 %.not.i998, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %bb.av unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i999 = phi ptr [ %i.pb, %bb.at ], [ %0, %bb.au ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store i8 %.0806, ptr %i.ev, align 1, !tbaa !70
  %i.pd = load ptr, ptr %.0.i999, align 8, !tbaa !446
  %i.pe = getelementptr i8, ptr %i.pd, i64 -24
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = getelementptr inbounds i8, ptr %.0.i999, i64 %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !659
  %.not.i1003 = icmp eq i64 %i.pi, 0
  br i1 %.not.i1003, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i999, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i999, i8 noundef signext %.0806)
          to label %bb.ay unwind label %.loopexit ; 0 uses

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0.i1004 = phi ptr [ %i.pj, %bb.aw ], [ %.0.i999, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.pl = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i8 %i.pl, ptr %i.eu, align 1, !tbaa !70
  %i.pm = load ptr, ptr %.0.i1004, align 8, !tbaa !446
  %i.pn = getelementptr i8, ptr %i.pm, i64 -24
  %i.po = load i64, ptr %i.pn, align 8
  %i.pp = getelementptr inbounds i8, ptr %.0.i1004, i64 %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !659
  %.not.i1008 = icmp eq i64 %i.pr, 0
  br i1 %.not.i1008, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1004, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 unwind label %.loopexit ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1004, i8 noundef signext %i.pl)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.bb:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i8 %i.kz, ptr %i.et, align 1, !tbaa !70
  %i.pu = load ptr, ptr %0, align 8, !tbaa !446
  %i.pv = getelementptr i8, ptr %i.pu, i64 -24
  %i.pw = load i64, ptr %i.pv, align 8
  %i.px = getelementptr inbounds i8, ptr %0, i64 %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !659
  %.not.i1013 = icmp eq i64 %i.pz, 0
  br i1 %.not.i1013, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.et, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 unwind label %.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bb
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.be:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.ck, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qc = icmp eq i8 %.0806, 79
  br i1 %i.qc, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i8 37, ptr %i.es, align 1, !tbaa !70
  %i.qd = load ptr, ptr %0, align 8, !tbaa !446
  %i.qe = getelementptr i8, ptr %i.qd, i64 -24
  %i.qf = load i64, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds i8, ptr %0, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !659
  %.not.i1018 = icmp eq i64 %i.qi, 0
  br i1 %.not.i1018, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.bj unwind label %.loopexit ; 0 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.0.i1019 = phi ptr [ %i.qj, %bb.bh ], [ %0, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store i8 79, ptr %i.er, align 1, !tbaa !70
  %i.ql = load ptr, ptr %.0.i1019, align 8, !tbaa !446
  %i.qm = getelementptr i8, ptr %i.ql, i64 -24
  %i.qn = load i64, ptr %i.qm, align 8
  %i.qo = getelementptr inbounds i8, ptr %.0.i1019, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !659
  %.not.i1023 = icmp eq i64 %i.qq, 0
  br i1 %.not.i1023, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1019, ptr noundef nonnull %i.er, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1019, i8 noundef signext 79)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i1024 = phi ptr [ %i.qr, %bb.bk ], [ %.0.i1019, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.qt = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i8 %i.qt, ptr %i.eq, align 1, !tbaa !70
  %i.qu = load ptr, ptr %.0.i1024, align 8, !tbaa !446
  %i.qv = getelementptr i8, ptr %i.qu, i64 -24
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = getelementptr inbounds i8, ptr %.0.i1024, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !659
  %.not.i1028 = icmp eq i64 %i.qz, 0
  br i1 %.not.i1028, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1024, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 unwind label %.loopexit ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1024, i8 noundef signext %i.qt)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.bp:                                            ; preds = %bb.bf
  %i.rc = load i16, ptr %2, align 8, !tbaa !730   ; 4 uses
  %.not.i1033 = icmp eq i16 %i.rc, -32768
  br i1 %.not.i1033, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rd = load i8, ptr %i.iv, align 2, !tbaa !731 ; 3 uses
  %i.re = add i8 %i.rd, -1
  %spec.select.i.i1034 = icmp ult i8 %i.re, 12
  br i1 %spec.select.i.i1034, label %bb.br, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.rf = load i8, ptr %i.iw, align 1, !tbaa !732 ; 2 uses
  %.not8.i = icmp eq i8 %i.rf, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not.i.i = icmp eq i8 %i.rd, 2
  %i.rg = and i16 %i.rc, 3
  %i.rh = icmp eq i16 %i.rg, 0
  %or.cond.i = and i1 %i.rh, %.not.i.i
  br i1 %or.cond.i, label %bb.bt, label %.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ri = srem i16 %i.rc, 100
  %.not.i.i.i1036 = icmp ne i16 %i.ri, 0
  %i.rj = srem i16 %i.rc, 400
  %i.rk = icmp eq i16 %i.rj, 0
  %or.cond.i.i = or i1 %.not.i.i.i1036, %i.rk
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs
  %i.rl = zext nneg i8 %i.rd to i64
  %20 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.rl
  %i.rm = getelementptr i8, ptr %20, i64 -1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.bt, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.rn, %.thread.i.i ], [ 29, %bb.bt ]
  %.not2837 = icmp ult i8 %.sroa.03.0.i.i, %i.rf
  br i1 %.not2837, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.ro = load ptr, ptr %0, align 8, !tbaa !446
  %i.rp = getelementptr i8, ptr %i.ro, i64 -24
  %i.rq = load i64, ptr %i.rp, align 8
  %i.rr = getelementptr inbounds i8, ptr %0, i64 %i.rq ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !677
  %i.ru = or i32 %i.rt, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rr, i32 noundef %i.ru)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %.pre3470 = load i8, ptr %.0731, align 1, !tbaa !70
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rv = phi i8 [ %.pre3470, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge ], [ %i.kz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ]
  %i.rw = icmp eq i8 %i.rv, 99
  br i1 %i.rw, label %bb.bu, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039

bb.bu:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.rx = load i8, ptr %i.gw, align 8, !tbaa !702, !range !86, !noundef !87
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rz = load ptr, ptr %0, align 8, !tbaa !446
  %i.sa = getelementptr i8, ptr %i.rz, i64 -24
  %i.sb = load i64, ptr %i.sa, align 8
  %i.sc = getelementptr inbounds i8, ptr %0, i64 %i.sb ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !677
  %i.sf = or i32 %i.se, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sc, i32 noundef %i.sf)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge: ; preds = %bb.bv
  %.pre3471 = load i8, ptr %.0731, align 1, !tbaa !70
  %i.sg = icmp eq i8 %.pre3471, 99
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge, %bb.bu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.sh = phi i1 [ %i.sg, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge ], [ true, %bb.bu ], [ false, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.si = load i16, ptr %2, align 8, !tbaa !730
  %i.sj = sext i16 %i.si to i32                   ; 2 uses
  %i.sk = load i8, ptr %i.iv, align 2, !tbaa !731 ; 4 uses
  %i.sl = icmp ult i8 %i.sk, 3
  %.neg.i.i = sext i1 %i.sl to i32
  %i.sm = add nsw i32 %.neg.i.i, %i.sj            ; 4 uses
  %i.sn = zext i8 %i.sk to i32                    ; 2 uses
  %i.so = load i8, ptr %i.iw, align 1, !tbaa !732
  %i.sp = zext i8 %i.so to i32                    ; 2 uses
  %i.sq = add nsw i32 %i.sm, -399
  %i.sr = icmp slt i32 %i.sm, 0
  %i.ss = select i1 %i.sr, i32 %i.sq, i32 %i.sm
  %i.st = sdiv i32 %i.ss, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.st, -400
  %i.su = add nsw i32 %.neg15.i.i, %i.sm          ; 3 uses
  %i.sv = icmp ugt i8 %i.sk, 2
  %.v.i.i = select i1 %i.sv, i32 -3, i32 9
  %i.sw = add nsw i32 %.v.i.i, %i.sn
  %i.sx = mul nsw i32 %i.sw, 153
  %i.sy = add nsw i32 %i.sx, 2
  %i.sz = udiv i32 %i.sy, 5
  %i.ta = lshr i32 %i.su, 2
  %i.tb = udiv i32 %i.su, 100
  br i1 %i.sh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039
  %.sroa.0.0.copyload.i.i1040 = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.tc = trunc i64 %.sroa.0.0.copyload.i.i1040 to i32
  store i32 %i.tc, ptr %6, align 8, !tbaa !733
  %.sroa.0.0.copyload.i = load i64, ptr %i.iq, align 8, !tbaa !408
  %i.td = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.td, ptr %i.ir, align 4, !tbaa !734
  %.sroa.0.0.copyload.i1041 = load i64, ptr %i.io, align 8, !tbaa !408
  %i.te = trunc i64 %.sroa.0.0.copyload.i1041 to i32
  store i32 %i.te, ptr %i.is, align 8, !tbaa !735
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039
  store i32 %i.sp, ptr %i.kl, align 4, !tbaa !736
  %i.tf = add i8 %i.sk, -1
  %spec.select.i.i1044 = icmp ult i8 %i.tf, 12
  br i1 %spec.select.i.i1044, label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tg = load ptr, ptr %0, align 8, !tbaa !446
  %i.th = getelementptr i8, ptr %i.tg, i64 -24
  %i.ti = load i64, ptr %i.th, align 8
  %i.tj = getelementptr inbounds i8, ptr %0, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !677
  %i.tm = or i32 %i.tl, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.tj, i32 noundef %i.tm)
          to label %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge unwind label %bb.ca

._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge: ; preds = %bb.by
  %.sroa.0.0.copyload.i1048.pre = load i16, ptr %2, align 8, !tbaa !634
  %.pre3480 = sext i16 %.sroa.0.0.copyload.i1048.pre to i32
  br label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047

_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047: ; preds = %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge, %bb.bx
  %.pre-phi = phi i32 [ %.pre3480, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge ], [ %i.sj, %bb.bx ]
  %.0.i1045 = phi i32 [ 0, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge ], [ %i.sn, %bb.bx ]
  %i.tn = add nsw i32 %.0.i1045, -1
  store i32 %i.tn, ptr %i.kc, align 8, !tbaa !729
  %i.to = add nsw i32 %.pre-phi, -1900
  store i32 %i.to, ptr %i.ii, align 4, !tbaa !737
  %i.tp = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047
  store i32 %i.tp, ptr %i.iz, align 8, !tbaa !725
  %i.tq = load ptr, ptr %0, align 8, !tbaa !446
  %i.tr = getelementptr i8, ptr %i.tq, i64 -24    ; 2 uses
  %i.ts = load i64, ptr %i.tr, align 8
  %i.tt = getelementptr inbounds i8, ptr %0, i64 %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !677
  %i.tw = and i32 %i.tv, 5
  %.not2838 = icmp eq i32 %i.tw, 0
  br i1 %.not2838, label %bb.cb, label %_ZNSolsEj.exit2148

bb.ca:                                            ; preds = %bb.by, %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.cb:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i1049 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %i.ty = sext i16 %.sroa.0.0.copyload.i1049 to i32 ; 2 uses
  %i.tz = add nsw i32 %i.ty, -1                   ; 2 uses
  %i.ua = add nsw i32 %i.ty, -400
  %i.ub = icmp slt i16 %.sroa.0.0.copyload.i1049, 1
  %i.uc = select i1 %i.ub, i32 %i.ua, i32 %i.tz
  %i.ud = sdiv i32 %i.uc, 400                     ; 2 uses
  %.neg15.i.i1051 = mul nsw i32 %i.ud, -400
  %i.ue = add nsw i32 %.neg15.i.i1051, %i.tz      ; 3 uses
  %i.uf = lshr i32 %i.ue, 2
  %i.ug = udiv i32 %i.ue, 100
  %reass.add2907 = sub nsw i32 %i.su, %i.ue
  %reass.mul2908 = mul nsw i32 %reass.add2907, 365
  %reass.add2910 = sub nsw i32 %i.st, %i.ud
  %reass.mul2911 = mul nsw i32 %reass.add2910, 146097
  %.neg2839 = add nuw nsw i32 %i.sp, -307
  %i.uh = add nsw i32 %.neg2839, %i.sz
  %i.ui = add nsw i32 %i.uh, %i.ta
  %i.uj = add nsw i32 %i.ui, %reass.mul2911
  %i.uk = add nuw nsw i32 %i.tb, %i.uf
  %i.ul = sub nsw i32 %i.uj, %i.uk
  %i.um = add nsw i32 %i.ul, %i.ug
  %i.un = add nsw i32 %i.um, %reass.mul2908
  store i32 %i.un, ptr %i.ja, align 4, !tbaa !738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.23, i64 3, i1 false)
  %i.uo = icmp eq i8 %.0806, 69
  br i1 %i.uo, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 69, ptr %i.ks, align 1, !tbaa !70
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0829 = phi ptr [ %i.kt, %bb.cc ], [ %i.ks, %bb.cb ] ; 2 uses
  %i.up = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.up, ptr %.0829, align 1, !tbaa !70
  %i.uq = load i64, ptr %i.tr, align 8
  %i.ur = getelementptr inbounds i8, ptr %0, i64 %i.uq ; 6 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 232
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !727 ; 2 uses
  %.not.i1054 = icmp eq ptr %i.ut, null
  %i.uu = zext i1 %.not.i1054 to i8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 225 ; 2 uses
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !688, !range !86, !noundef !87
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %._crit_edge.i1060, label %bb.ce

._crit_edge.i1060:                                ; preds = %bb.cd
  %.phi.trans.insert.i1061 = getelementptr inbounds nuw i8, ptr %i.ur, i64 224
  %.pre.i1062 = load i8, ptr %.phi.trans.insert.i1061, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1066

bb.ce:                                            ; preds = %bb.cd
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ur, i64 240
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1055 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i1055, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1056

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt16__throw_bad_castv() #30
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a

bb.ex:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit1160
  %i.adm = load i32, ptr %i.kp, align 4, !tbaa !739
  %i.adn = and i32 %i.adm, 8192
  %.not.i1173 = icmp eq i32 %i.adn, 0
  br i1 %.not.i1173, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ado = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.adp = icmp eq i32 %i.ado, 0
  br i1 %i.adp, label %bb.ez, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174

bb.ez:                                            ; preds = %bb.ey
  %i.adq = load ptr, ptr %9, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 32
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !677
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %bb.fa, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174

bb.fa:                                            ; preds = %bb.ez
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 232
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !727 ; 2 uses
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !446
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 48
  %i.ady = load ptr, ptr %i.adx, align 8
  %i.adz = invoke noundef i32 %i.ady(ptr noundef nonnull align 8 dereferenceable(64) %i.adv)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 unwind label %bb.fb, !inline_history !743 ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aea = landingpad { ptr, i32 }
          catch ptr null
  %i.aeb = extractvalue { ptr, i32 } %i.aea, 0
  call void @__clang_call_terminate(ptr %i.aeb) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.fc:                                            ; preds = %bb.et, %bb.es
  %.pn939 = phi { ptr, i32 } [ %lpad.phi3011, %bb.et ], [ %i.act, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.aix

bb.fd:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145
  store i32 %i.abx, ptr %i.kl, align 4, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff) #26
  store i8 37, ptr %i.ff, align 1, !tbaa !70
  store i8 79, ptr %i.km, align 1, !tbaa !70
  %i.aec = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.aec, ptr %i.kn, align 1, !tbaa !70
  %i.aed = load ptr, ptr %0, align 8, !tbaa !446
  %i.aee = getelementptr i8, ptr %i.aed, i64 -24
  %i.aef = load i64, ptr %i.aee, align 8
  %i.aeg = getelementptr inbounds i8, ptr %0, i64 %i.aef ; 6 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 232
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !727 ; 2 uses
  %.not.i1175 = icmp eq ptr %i.aei, null
  %i.aej = zext i1 %.not.i1175 to i8
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 225 ; 2 uses
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !688, !range !86, !noundef !87
  %i.aem = trunc nuw i8 %i.ael to i1
  br i1 %i.aem, label %._crit_edge.i1181, label %bb.fe

._crit_edge.i1181:                                ; preds = %bb.fd
  %.phi.trans.insert.i1182 = getelementptr inbounds nuw i8, ptr %i.aeg, i64 224
  %.pre.i1183 = load i8, ptr %.phi.trans.insert.i1182, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187

bb.fe:                                            ; preds = %bb.fd
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeg, i64 240
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1176 = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i.i1176, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1184 unwind label %.loopexit.split-lp3003

.noexc1184:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177: ; preds = %bb.fe
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 56
  %i.aeq = load i8, ptr %i.aep, align 8, !tbaa !695
  %.not.i1.i.i1178 = icmp eq i8 %i.aeq, 0
  br i1 %.not.i1.i.i1178, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 89
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aeo)
          to label %.noexc1185 unwind label %.loopexit3002

.noexc1185:                                       ; preds = %bb.fh
  %i.aet = load ptr, ptr %i.aeo, align 8, !tbaa !446
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 48
  %i.aev = load ptr, ptr %i.aeu, align 8
  %i.aew = invoke noundef signext i8 %i.aev(ptr noundef nonnull align 8 dereferenceable(570) %i.aeo, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179 unwind label %.loopexit3002, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179: ; preds = %.noexc1185, %bb.fg
  %.0.i.i.i1180 = phi i8 [ %i.aes, %bb.fg ], [ %i.aew, %.noexc1185 ] ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeg, i64 224
  store i8 %.0.i.i.i1180, ptr %i.aex, align 8, !tbaa !700
  store i8 1, ptr %i.aek, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179, %._crit_edge.i1181
  %i.aey = phi i8 [ %.pre.i1183, %._crit_edge.i1181 ], [ %.0.i.i.i1180, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179 ]
  %i.aez = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.aei, i8 %i.aej, ptr noundef nonnull align 8 dereferenceable(216) %i.aeg, i8 noundef signext %i.aey, ptr noundef nonnull %6, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ko)
          to label %bb.fi unwind label %.loopexit3002 ; 0 uses

bb.fi:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit3002:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187, %bb.fh, %.noexc1185
  %lpad.loopexit3004 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.loopexit.split-lp3003:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp3005 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.split-lp3003, %.loopexit3002
  %lpad.phi3006 = phi { ptr, i32 } [ %lpad.loopexit3004, %.loopexit3002 ], [ %lpad.loopexit.split-lp3005, %.loopexit.split-lp3003 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #26
  br label %bb.aix

bb.fk:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 %i.kz, ptr %i.eg, align 1, !tbaa !70
  %i.afa = load ptr, ptr %0, align 8, !tbaa !446
  %i.afb = getelementptr i8, ptr %i.afa, i64 -24
  %i.afc = load i64, ptr %i.afb, align 8
  %i.afd = getelementptr inbounds i8, ptr %0, i64 %i.afc
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !659
  %.not.i1188 = icmp eq i64 %i.aff, 0
  br i1 %.not.i1188, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 unwind label %.loopexit ; 0 uses

bb.fm:                                            ; preds = %bb.fk
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.fn:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.gx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afi = icmp eq i8 %.0806, 0
  br i1 %i.afi, label %bb.fp, label %bb.go

bb.fp:                                            ; preds = %bb.fo
  %i.afj = load i16, ptr %2, align 8, !tbaa !730  ; 4 uses
  %.not.i1193 = icmp eq i16 %i.afj, -32768
  br i1 %.not.i1193, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afk = load i8, ptr %i.iv, align 2, !tbaa !731 ; 3 uses
  %i.afl = add i8 %i.afk, -1
  %spec.select.i.i1194 = icmp ult i8 %i.afl, 12
  br i1 %spec.select.i.i1194, label %bb.fr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afm = load i8, ptr %i.iw, align 1, !tbaa !732 ; 2 uses
  %.not8.i1196 = icmp eq i8 %i.afm, 0
  br i1 %.not8.i1196, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i.i1197 = icmp eq i8 %i.afk, 2
  %i.afn = and i16 %i.afj, 3
  %i.afo = icmp eq i16 %i.afn, 0
  %or.cond.i1198 = and i1 %i.afo, %.not.i.i1197
  br i1 %or.cond.i1198, label %bb.ft, label %.thread.i.i1199

bb.ft:                                            ; preds = %bb.fs
  %i.afp = srem i16 %i.afj, 100
  %.not.i.i.i1202 = icmp ne i16 %i.afp, 0
  %i.afq = srem i16 %i.afj, 400
  %i.afr = icmp eq i16 %i.afq, 0
  %or.cond.i.i1203 = or i1 %.not.i.i.i1202, %i.afr
  br i1 %or.cond.i.i1203, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204, label %.thread.i.i1199

.thread.i.i1199:                                  ; preds = %bb.ft, %bb.fs
  %i.afs = zext nneg i8 %i.afk to i64
  %21 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.afs
  %i.aft = getelementptr i8, ptr %21, i64 -1
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204: ; preds = %bb.ft, %.thread.i.i1199
  %.sroa.03.0.i.i1201 = phi i8 [ %i.afu, %.thread.i.i1199 ], [ 29, %bb.ft ]
  %.not2835 = icmp ult i8 %.sroa.03.0.i.i1201, %i.afm
  br i1 %.not2835, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread: ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204
  %i.afv = load ptr, ptr %0, align 8, !tbaa !446
  %i.afw = getelementptr i8, ptr %i.afv, i64 -24
  %i.afx = load i64, ptr %i.afw, align 8
  %i.afy = getelementptr inbounds i8, ptr %0, i64 %i.afx ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 32
  %i.aga = load i32, ptr %i.afz, align 8, !tbaa !677
  %i.agb = or i32 %i.aga, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afy, i32 noundef %i.agb)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.agc = load ptr, ptr %0, align 8, !tbaa !446
  %i.agd = getelementptr i8, ptr %i.agc, i64 -24
  %i.age = load i64, ptr %i.agd, align 8
  %i.agf = getelementptr inbounds i8, ptr %0, i64 %i.age
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(264) %i.agf)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208 unwind label %bb.gi

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206
  %i.agg = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.agh = getelementptr i8, ptr %i.agg, i64 -24
  %i.agi = load i64, ptr %i.agh, align 8
  %i.agj = getelementptr inbounds i8, ptr %0, i64 %i.agi ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 225 ; 2 uses
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !688, !range !86, !noundef !87
  %i.agm = trunc nuw i8 %i.agl to i1
  br i1 %i.agm, label %._crit_edge.i.i1214, label %bb.fu

bb.fu:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agj, i64 240
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1209 = icmp eq ptr %i.ago, null
  br i1 %.not.i.i.i.i1209, label %bb.fv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1217 unwind label %.loopexit.split-lp2998

.noexc1217:                                       ; preds = %bb.fv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210: ; preds = %bb.fu
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 56
  %i.agq = load i8, ptr %i.agp, align 8, !tbaa !695
  %.not.i1.i.i.i1211 = icmp eq i8 %i.agq, 0
  br i1 %.not.i1.i.i.i1211, label %bb.fw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ago)
          to label %.noexc1218 unwind label %.loopexit2997

.noexc1218:                                       ; preds = %bb.fw
  %i.agr = load ptr, ptr %i.ago, align 8, !tbaa !446
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 48
  %i.agt = load ptr, ptr %i.ags, align 8
  %i.agu = invoke noundef signext i8 %i.agt(ptr noundef nonnull align 8 dereferenceable(570) %i.ago, i8 noundef signext 32)
          to label %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge unwind label %.loopexit2997, !inline_history !699 ; 0 uses

.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge: ; preds = %.noexc1218
  %.pre3466.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212: ; preds = %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210
  %.pre3466 = phi ptr [ %.pre3466.pre, %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge ], [ %i.agg, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210 ]
  store i8 1, ptr %i.agk, align 1, !tbaa !688
  br label %._crit_edge.i.i1214

._crit_edge.i.i1214:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212
  %i.agv = phi ptr [ %i.agg, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208 ], [ %.pre3466, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212 ]
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agj, i64 224
  store i8 48, ptr %i.agw, align 8, !tbaa !700
  %i.agx = getelementptr i8, ptr %i.agv, i64 -24  ; 2 uses
  %i.agy = load i64, ptr %i.agx, align 8
  %i.agz = getelementptr inbounds i8, ptr %0, i64 %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 24
  store i32 130, ptr %i.aha, align 8, !tbaa !701
  %i.ahb = load i64, ptr %i.agx, align 8
  %i.ahc = getelementptr inbounds i8, ptr %0, i64 %i.ahb
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  store i64 2, ptr %i.ahd, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1221 = load i8, ptr %i.iv, align 2, !tbaa !70
  %i.ahe = zext i8 %.sroa.0.0.copyload.i1221 to i64
  %i.ahf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahe)
          to label %_ZNSolsEj.exit unwind label %bb.gj ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %._crit_edge.i.i1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i8 47, ptr %i.ef, align 1, !tbaa !70
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !446
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 -24
  %i.ahi = load i64, ptr %i.ahh, align 8
  %i.ahj = getelementptr inbounds i8, ptr %i.ahf, i64 %i.ahi
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !659
  %.not.i1223 = icmp eq i64 %i.ahl, 0
  br i1 %.not.i1223, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEj.exit
  %i.ahm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahf, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fy:                                            ; preds = %_ZNSolsEj.exit
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahf, i8 noundef signext 47)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.aho = load ptr, ptr %0, align 8, !tbaa !446
  %i.ahp = getelementptr i8, ptr %i.aho, i64 -24
  %i.ahq = load i64, ptr %i.ahp, align 8
  %i.ahr = getelementptr inbounds i8, ptr %0, i64 %i.ahq
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16
  store i64 2, ptr %i.ahs, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1228 = load i8, ptr %i.iw, align 1, !tbaa !70
  %i.aht = zext i8 %.sroa.0.0.copyload.i1228 to i64
  %i.ahu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aht)
          to label %_ZNSolsEj.exit1230 unwind label %bb.gk ; 4 uses

_ZNSolsEj.exit1230:                               ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store i8 47, ptr %i.ee, align 1, !tbaa !70
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !446
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 -24
  %i.ahx = load i64, ptr %i.ahw, align 8
  %i.ahy = getelementptr inbounds i8, ptr %i.ahu, i64 %i.ahx
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !659
  %.not.i1231 = icmp eq i64 %i.aia, 0
  br i1 %.not.i1231, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSolsEj.exit1230
  %i.aib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gb:                                            ; preds = %_ZNSolsEj.exit1230
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, i8 noundef signext 47)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aid = load ptr, ptr %0, align 8, !tbaa !446
  %i.aie = getelementptr i8, ptr %i.aid, i64 -24
  %i.aif = load i64, ptr %i.aie, align 8
  %i.aig = getelementptr inbounds i8, ptr %0, i64 %i.aif
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  store i64 2, ptr %i.aih, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1236 = load i16, ptr %2, align 8, !tbaa !634
  %i.aii = srem i16 %.sroa.0.0.copyload.i1236, 100
  %.sext = sext i16 %i.aii to i32
  %i.aij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sext)
          to label %bb.gd unwind label %bb.gl     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.aik = load i32, ptr %i.kk, align 4, !tbaa !739
  %i.ail = and i32 %i.aik, 8192
  %.not.i1237 = icmp eq i32 %i.ail, 0
  br i1 %.not.i1237, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aim = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.ain = icmp eq i32 %i.aim, 0
  br i1 %i.ain, label %bb.gf, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238

bb.gf:                                            ; preds = %bb.ge
  %i.aio = load ptr, ptr %10, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 32
  %i.aiq = load i32, ptr %i.aip, align 8, !tbaa !677
  %i.air = icmp eq i32 %i.aiq, 0
  br i1 %i.air, label %bb.gg, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238

bb.gg:                                            ; preds = %bb.gf
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 232
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !727 ; 2 uses
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !446
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 48
  %i.aiw = load ptr, ptr %i.aiv, align 8
  %i.aix = invoke noundef i32 %i.aiw(ptr noundef nonnull align 8 dereferenceable(64) %i.ait)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 unwind label %bb.gh, !inline_history !743 ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aiy = landingpad { ptr, i32 }
          catch ptr null
  %i.aiz = extractvalue { ptr, i32 } %i.aiy, 0
  call void @__clang_call_terminate(ptr %i.aiz) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238: ; preds = %bb.gd, %bb.ge, %bb.gf, %bb.gg
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.gi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit2997:                                    ; preds = %bb.fw, %.noexc1218
  %lpad.loopexit2999 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp2998:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp3000 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %bb.fy, %bb.fx, %._crit_edge.i.i1214
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gk:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gc
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gm:                                            ; preds = %.loopexit2997, %.loopexit.split-lp2998, %bb.gl, %bb.gk, %bb.gj
  %.pn935 = phi { ptr, i32 } [ %i.ajd, %bb.gl ], [ %i.ajc, %bb.gk ], [ %i.ajb, %bb.gj ], [ %lpad.loopexit2999, %.loopexit2997 ], [ %lpad.loopexit.split-lp3000, %.loopexit.split-lp2998 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #26
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.pn935.pn = phi { ptr, i32 } [ %.pn935, %bb.gm ], [ %i.aja, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.aix

bb.go:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i8 37, ptr %i.ed, align 1, !tbaa !70
  %i.aje = load ptr, ptr %0, align 8, !tbaa !446
  %i.ajf = getelementptr i8, ptr %i.aje, i64 -24
  %i.ajg = load i64, ptr %i.ajf, align 8
  %i.ajh = getelementptr inbounds i8, ptr %0, i64 %i.ajg
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !659
  %.not.i1239 = icmp eq i64 %i.ajj, 0
  br i1 %.not.i1239, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.gr unwind label %.loopexit ; 0 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.0.i1240 = phi ptr [ %i.ajk, %bb.gp ], [ %0, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i8 %.0806, ptr %i.ec, align 1, !tbaa !70
  %i.ajm = load ptr, ptr %.0.i1240, align 8, !tbaa !446
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 -24
  %i.ajo = load i64, ptr %i.ajn, align 8
  %i.ajp = getelementptr inbounds i8, ptr %.0.i1240, i64 %i.ajo
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !659
  %.not.i1244 = icmp eq i64 %i.ajr, 0
  br i1 %.not.i1244, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1240, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1240, i8 noundef signext %.0806)
          to label %bb.gu unwind label %.loopexit ; 0 uses

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.0.i1245 = phi ptr [ %i.ajs, %bb.gs ], [ %.0.i1240, %bb.gt ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.aju = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i8 %i.aju, ptr %i.eb, align 1, !tbaa !70
  %i.ajv = load ptr, ptr %.0.i1245, align 8, !tbaa !446
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 -24
  %i.ajx = load i64, ptr %i.ajw, align 8
  %i.ajy = getelementptr inbounds i8, ptr %.0.i1245, i64 %i.ajx
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !659
  %.not.i1249 = icmp eq i64 %i.aka, 0
  br i1 %.not.i1249, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1245, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 unwind label %.loopexit ; 0 uses

bb.gw:                                            ; preds = %bb.gu
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1245, i8 noundef signext %i.aju)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.gx:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i8 68, ptr %i.ea, align 1, !tbaa !70
  %i.akd = load ptr, ptr %0, align 8, !tbaa !446
  %i.ake = getelementptr i8, ptr %i.akd, i64 -24
  %i.akf = load i64, ptr %i.ake, align 8
  %i.akg = getelementptr inbounds i8, ptr %0, i64 %i.akf
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !659
  %.not.i1254 = icmp eq i64 %i.aki, 0
  br i1 %.not.i1254, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 unwind label %.loopexit ; 0 uses

bb.gz:                                            ; preds = %bb.gx
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ha:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.im, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akl = icmp eq i8 %.0806, 0
  br i1 %i.akl, label %bb.hc, label %bb.id

bb.hc:                                            ; preds = %bb.hb
  %i.akm = load i16, ptr %2, align 8, !tbaa !730  ; 4 uses
  %.not.i1259 = icmp eq i16 %i.akm, -32768
  br i1 %.not.i1259, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.akn = load i8, ptr %i.iv, align 2, !tbaa !731 ; 3 uses
  %i.ako = add i8 %i.akn, -1
  %spec.select.i.i1260 = icmp ult i8 %i.ako, 12
  br i1 %spec.select.i.i1260, label %bb.he, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread

bb.he:                                            ; preds = %bb.hd
  %i.akp = load i8, ptr %i.iw, align 1, !tbaa !732 ; 2 uses
  %.not8.i1262 = icmp eq i8 %i.akp, 0
  br i1 %.not8.i1262, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i1263 = icmp eq i8 %i.akn, 2
  %i.akq = and i16 %i.akm, 3
  %i.akr = icmp eq i16 %i.akq, 0
  %or.cond.i1264 = and i1 %i.akr, %.not.i.i1263
  br i1 %or.cond.i1264, label %bb.hg, label %.thread.i.i1265

bb.hg:                                            ; preds = %bb.hf
  %i.aks = srem i16 %i.akm, 100
  %.not.i.i.i1268 = icmp ne i16 %i.aks, 0
  %i.akt = srem i16 %i.akm, 400
  %i.aku = icmp eq i16 %i.akt, 0
  %or.cond.i.i1269 = or i1 %.not.i.i.i1268, %i.aku
  br i1 %or.cond.i.i1269, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270, label %.thread.i.i1265

.thread.i.i1265:                                  ; preds = %bb.hg, %bb.hf
  %i.akv = zext nneg i8 %i.akn to i64
  %22 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.akv
  %i.akw = getelementptr i8, ptr %22, i64 -1
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270: ; preds = %bb.hg, %.thread.i.i1265
  %.sroa.03.0.i.i1267 = phi i8 [ %i.akx, %.thread.i.i1265 ], [ 29, %bb.hg ]
  %.not2834 = icmp ult i8 %.sroa.03.0.i.i1267, %i.akp
  br i1 %.not2834, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread: ; preds = %bb.he, %bb.hd, %bb.hc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270
  %i.aky = load ptr, ptr %0, align 8, !tbaa !446
  %i.akz = getelementptr i8, ptr %i.aky, i64 -24
  %i.ala = load i64, ptr %i.akz, align 8
  %i.alb = getelementptr inbounds i8, ptr %0, i64 %i.ala ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 32
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !677
  %i.ale = or i32 %i.ald, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alb, i32 noundef %i.ale)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.alf = load ptr, ptr %0, align 8, !tbaa !446
  %i.alg = getelementptr i8, ptr %i.alf, i64 -24
  %i.alh = load i64, ptr %i.alg, align 8
  %i.ali = getelementptr inbounds i8, ptr %0, i64 %i.alh
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(264) %i.ali)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274 unwind label %bb.hx

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272
  %i.alj = load ptr, ptr %0, align 8, !tbaa !446
  %i.alk = getelementptr i8, ptr %i.alj, i64 -24
  %i.all = load i64, ptr %i.alk, align 8
  %i.alm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.hh unwind label %.loopexit2992

bb.hh:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274
  %i.aln = getelementptr inbounds i8, ptr %0, i64 %i.all
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %12, ptr noundef nonnull align 8 dereferenceable(264) %i.aln, ptr noundef nonnull align 8 dereferenceable(8) %i.alm)
          to label %bb.hi unwind label %.loopexit2992

bb.hi:                                            ; preds = %bb.hh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  %i.alo = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.alp = getelementptr i8, ptr %i.alo, i64 -24
  %i.alq = load i64, ptr %i.alp, align 8
  %i.alr = getelementptr inbounds i8, ptr %0, i64 %i.alq ; 3 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 225 ; 2 uses
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !688, !range !86, !noundef !87
  %i.alu = trunc nuw i8 %i.alt to i1
  br i1 %i.alu, label %._crit_edge.i.i1280, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 240
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1275 = icmp eq ptr %i.alw, null
  br i1 %.not.i.i.i.i1275, label %bb.hk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1283 unwind label %.loopexit.split-lp2993

.noexc1283:                                       ; preds = %bb.hk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276: ; preds = %bb.hj
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 56
  %i.aly = load i8, ptr %i.alx, align 8, !tbaa !695
  %.not.i1.i.i.i1277 = icmp eq i8 %i.aly, 0
  br i1 %.not.i1.i.i.i1277, label %bb.hl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278

bb.hl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alw)
          to label %.noexc1284 unwind label %.loopexit2992

.noexc1284:                                       ; preds = %bb.hl
  %i.alz = load ptr, ptr %i.alw, align 8, !tbaa !446
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 48
  %i.amb = load ptr, ptr %i.ama, align 8
  %i.amc = invoke noundef signext i8 %i.amb(ptr noundef nonnull align 8 dereferenceable(570) %i.alw, i8 noundef signext 32)
          to label %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge unwind label %.loopexit2992, !inline_history !699 ; 0 uses

.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge: ; preds = %.noexc1284
  %.pre3465.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278: ; preds = %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276
  %.pre3465 = phi ptr [ %.pre3465.pre, %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge ], [ %i.alo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276 ]
  store i8 1, ptr %i.als, align 1, !tbaa !688
  br label %._crit_edge.i.i1280

._crit_edge.i.i1280:                              ; preds = %bb.hi, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278
  %i.amd = phi ptr [ %i.alo, %bb.hi ], [ %.pre3465, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278 ]
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alr, i64 224
  store i8 48, ptr %i.ame, align 8, !tbaa !700
  %i.amf = getelementptr i8, ptr %i.amd, i64 -24  ; 2 uses
  %i.amg = load i64, ptr %i.amf, align 8
  %i.amh = getelementptr inbounds i8, ptr %0, i64 %i.amg
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 24
  store i32 130, ptr %i.ami, align 8, !tbaa !701
  %i.amj = load i64, ptr %i.amf, align 8
  %i.amk = getelementptr inbounds i8, ptr %0, i64 %i.amj
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 16
  store i64 4, ptr %i.aml, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1287 = load i16, ptr %2, align 8, !tbaa !634
  %i.amm = sext i16 %.sroa.0.0.copyload.i1287 to i32
  %i.amn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.amm)
          to label %bb.hm unwind label %bb.hy     ; 4 uses

bb.hm:                                            ; preds = %._crit_edge.i.i1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i8 45, ptr %i.dz, align 1, !tbaa !70
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !446
  %i.amp = getelementptr i8, ptr %i.amo, i64 -24
  %i.amq = load i64, ptr %i.amp, align 8
  %i.amr = getelementptr inbounds i8, ptr %i.amn, i64 %i.amq
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !659
  %.not.i1288 = icmp eq i64 %i.amt, 0
  br i1 %.not.i1288, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.amu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amn, ptr noundef nonnull %i.dz, i64 noundef 1)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.ho:                                            ; preds = %bb.hm
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amn, i8 noundef signext 45)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.amw = load ptr, ptr %0, align 8, !tbaa !446
  %i.amx = getelementptr i8, ptr %i.amw, i64 -24
  %i.amy = load i64, ptr %i.amx, align 8
  %i.amz = getelementptr inbounds i8, ptr %0, i64 %i.amy
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  store i64 2, ptr %i.ana, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1293 = load i8, ptr %i.iv, align 2, !tbaa !70
  %i.anb = zext i8 %.sroa.0.0.copyload.i1293 to i64
  %i.anc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anb)
          to label %_ZNSolsEj.exit1295 unwind label %bb.hz ; 4 uses

_ZNSolsEj.exit1295:                               ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i8 45, ptr %i.dy, align 1, !tbaa !70
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !446
  %i.ane = getelementptr i8, ptr %i.and, i64 -24
  %i.anf = load i64, ptr %i.ane, align 8
  %i.ang = getelementptr inbounds i8, ptr %i.anc, i64 %i.anf
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 16
  %i.ani = load i64, ptr %i.anh, align 8, !tbaa !659
  %.not.i1296 = icmp eq i64 %i.ani, 0
  br i1 %.not.i1296, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNSolsEj.exit1295
  %i.anj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anc, ptr noundef nonnull %i.dy, i64 noundef 1)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %_ZNSolsEj.exit1295
  %i.ank = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.anc, i8 noundef signext 45)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.anl = load ptr, ptr %0, align 8, !tbaa !446
  %i.anm = getelementptr i8, ptr %i.anl, i64 -24
  %i.ann = load i64, ptr %i.anm, align 8
  %i.ano = getelementptr inbounds i8, ptr %0, i64 %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 16
  store i64 2, ptr %i.anp, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1301 = load i8, ptr %i.iw, align 1, !tbaa !70
  %i.anq = zext i8 %.sroa.0.0.copyload.i1301 to i64
  %i.anr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anq)
          to label %_ZNSolsEj.exit1303 unwind label %bb.ia ; 0 uses

_ZNSolsEj.exit1303:                               ; preds = %bb.hs
  %i.ans = load i32, ptr %i.kj, align 4, !tbaa !739
  %i.ant = and i32 %i.ans, 8192
  %.not.i1304 = icmp eq i32 %i.ant, 0
  br i1 %.not.i1304, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305, label %bb.ht

bb.ht:                                            ; preds = %_ZNSolsEj.exit1303
  %i.anu = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.anv = icmp eq i32 %i.anu, 0
  br i1 %i.anv, label %bb.hu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305

bb.hu:                                            ; preds = %bb.ht
  %i.anw = load ptr, ptr %11, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 32
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !677
  %i.anz = icmp eq i32 %i.any, 0
  br i1 %i.anz, label %bb.hv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305

bb.hv:                                            ; preds = %bb.hu
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anw, i64 232
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !727 ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !446
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 48
  %i.aoe = load ptr, ptr %i.aod, align 8
  %i.aof = invoke noundef i32 %i.aoe(ptr noundef nonnull align 8 dereferenceable(64) %i.aob)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 unwind label %bb.hw, !inline_history !743 ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aog = landingpad { ptr, i32 }
          catch ptr null
  %i.aoh = extractvalue { ptr, i32 } %i.aog, 0
  call void @__clang_call_terminate(ptr %i.aoh) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305: ; preds = %_ZNSolsEj.exit1303, %bb.ht, %bb.hu, %bb.hv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.hx:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

.loopexit2992:                                    ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274, %bb.hh, %bb.hl, %.noexc1284
  %lpad.loopexit2994 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp2993:                           ; preds = %bb.hk
  %lpad.loopexit.split-lp2995 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge.i.i1280
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hz:                                            ; preds = %bb.hr, %bb.hq, %bb.hp
  %i.aok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hs
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ib:                                            ; preds = %.loopexit2992, %.loopexit.split-lp2993, %bb.ia, %bb.hz, %bb.hy
  %.pn931 = phi { ptr, i32 } [ %i.aol, %bb.ia ], [ %i.aok, %bb.hz ], [ %i.aoj, %bb.hy ], [ %lpad.loopexit2994, %.loopexit2992 ], [ %lpad.loopexit.split-lp2995, %.loopexit.split-lp2993 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #26
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hx
  %.pn931.pn = phi { ptr, i32 } [ %.pn931, %bb.ib ], [ %i.aoi, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.aix

bb.id:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i8 37, ptr %i.dx, align 1, !tbaa !70
  %i.aom = load ptr, ptr %0, align 8, !tbaa !446
  %i.aon = getelementptr i8, ptr %i.aom, i64 -24
  %i.aoo = load i64, ptr %i.aon, align 8
  %i.aop = getelementptr inbounds i8, ptr %0, i64 %i.aoo
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 16
  %i.aor = load i64, ptr %i.aoq, align 8, !tbaa !659
  %.not.i1306 = icmp eq i64 %i.aor, 0
  br i1 %.not.i1306, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aos = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dx, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit

bb.if:                                            ; preds = %bb.id
  %i.aot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.ig unwind label %.loopexit ; 0 uses

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.0.i1307 = phi ptr [ %i.aos, %bb.ie ], [ %0, %bb.if ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i8 %.0806, ptr %i.dw, align 1, !tbaa !70
  %i.aou = load ptr, ptr %.0.i1307, align 8, !tbaa !446
  %i.aov = getelementptr i8, ptr %i.aou, i64 -24
  %i.aow = load i64, ptr %i.aov, align 8
  %i.aox = getelementptr inbounds i8, ptr %.0.i1307, i64 %i.aow
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !659
  %.not.i1311 = icmp eq i64 %i.aoz, 0
  br i1 %.not.i1311, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.apa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1307, ptr noundef nonnull %i.dw, i64 noundef 1)
          to label %bb.ij unwind label %.loopexit

bb.ii:                                            ; preds = %bb.ig
  %i.apb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1307, i8 noundef signext %.0806)
          to label %bb.ij unwind label %.loopexit ; 0 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.0.i1312 = phi ptr [ %i.apa, %bb.ih ], [ %.0.i1307, %bb.ii ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.apc = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i8 %i.apc, ptr %i.dv, align 1, !tbaa !70
  %i.apd = load ptr, ptr %.0.i1312, align 8, !tbaa !446
  %i.ape = getelementptr i8, ptr %i.apd, i64 -24
  %i.apf = load i64, ptr %i.ape, align 8
  %i.apg = getelementptr inbounds i8, ptr %.0.i1312, i64 %i.apf
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 16
  %i.api = load i64, ptr %i.aph, align 8, !tbaa !659
  %.not.i1316 = icmp eq i64 %i.api, 0
  br i1 %.not.i1316, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1312, ptr noundef nonnull %i.dv, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 unwind label %.loopexit ; 0 uses

bb.il:                                            ; preds = %bb.ij
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1312, i8 noundef signext %i.apc)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.im:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store i8 70, ptr %i.du, align 1, !tbaa !70
  %i.apl = load ptr, ptr %0, align 8, !tbaa !446
  %i.apm = getelementptr i8, ptr %i.apl, i64 -24
  %i.apn = load i64, ptr %i.apm, align 8
  %i.apo = getelementptr inbounds i8, ptr %0, i64 %i.apn
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 16
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !659
  %.not.i1321 = icmp eq i64 %i.apq, 0
  br i1 %.not.i1321, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.apr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.du, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 unwind label %.loopexit ; 0 uses

bb.io:                                            ; preds = %bb.im
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325: ; preds = %bb.io, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ip:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.jv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.apt = icmp eq i8 %.0806, 0
  br i1 %i.apt, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.apu = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i1326 = icmp eq i16 %i.apu, -32768
  br i1 %.not.i1326, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apv = load i8, ptr %i.iv, align 2, !tbaa !731 ; 4 uses
  %i.apw = add i8 %i.apv, -1
  %spec.select.i.i1327 = icmp ult i8 %i.apw, 12
  br i1 %spec.select.i.i1327, label %bb.it, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread

bb.it:                                            ; preds = %bb.is
  %i.apx = load i8, ptr %i.iw, align 1, !tbaa !732 ; 3 uses
  %.not8.i1329 = icmp eq i8 %i.apx, 0
  br i1 %.not8.i1329, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1330 = icmp eq i8 %i.apv, 2
  %i.apy = and i16 %i.apu, 3
  %i.apz = icmp eq i16 %i.apy, 0
  %or.cond.i1331 = and i1 %i.apz, %.not.i.i1330
  br i1 %or.cond.i1331, label %bb.iv, label %.thread.i.i1332

bb.iv:                                            ; preds = %bb.iu
  %i.aqa = srem i16 %i.apu, 100
  %.not.i.i.i1335 = icmp ne i16 %i.aqa, 0
  %i.aqb = srem i16 %i.apu, 400
  %i.aqc = icmp eq i16 %i.aqb, 0
  %or.cond.i.i1336 = or i1 %.not.i.i.i1335, %i.aqc
  br i1 %or.cond.i.i1336, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337, label %.thread.i.i1332

.thread.i.i1332:                                  ; preds = %bb.iv, %bb.iu
  %i.aqd = zext nneg i8 %i.apv to i64
  %23 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aqd
  %i.aqe = getelementptr i8, ptr %23, i64 -1
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337: ; preds = %bb.iv, %.thread.i.i1332
  %.sroa.03.0.i.i1334 = phi i8 [ %i.aqf, %.thread.i.i1332 ], [ 29, %bb.iv ]
  %.not2831 = icmp ult i8 %.sroa.03.0.i.i1334, %i.apx
  br i1 %.not2831, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %.thread.i.i.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread: ; preds = %bb.it, %bb.is, %bb.ir, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337
  %i.aqg = load ptr, ptr %0, align 8, !tbaa !446
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 -24
  %i.aqi = load i64, ptr %i.aqh, align 8
  %i.aqj = getelementptr inbounds i8, ptr %0, i64 %i.aqi ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 32
  %i.aql = load i32, ptr %i.aqk, align 8, !tbaa !677
  %i.aqm = or i32 %i.aql, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aqj, i32 noundef %i.aqm)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread
  %.pre3460 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3461 = load i8, ptr %i.iv, align 2, !tbaa !731
  %.pre3462 = load i8, ptr %i.iw, align 1, !tbaa !732
  %.pre3463 = load i8, ptr %.0731, align 1, !tbaa !70
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337
  %i.aqn = phi i8 [ %.pre3463, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.kz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqo = phi i8 [ %.pre3462, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apx, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqp = phi i8 [ %.pre3461, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ] ; 3 uses
  %i.aqq = phi i16 [ %.pre3460, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apu, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqr = sext i16 %i.aqq to i32
  %i.aqs = icmp ult i8 %i.aqp, 3
  %.neg.i.i1340 = sext i1 %i.aqs to i32
  %i.aqt = add nsw i32 %.neg.i.i1340, %i.aqr      ; 4 uses
  %i.aqu = zext i8 %i.aqp to i32
  %i.aqv = zext i8 %i.aqo to i32
  %i.aqw = add nsw i32 %i.aqt, -399
  %i.aqx = icmp slt i32 %i.aqt, 0
  %i.aqy = select i1 %i.aqx, i32 %i.aqw, i32 %i.aqt
  %i.aqz = sdiv i32 %i.aqy, 400                   ; 2 uses
  %.neg15.i.i1341 = mul nsw i32 %i.aqz, -400
  %i.ara = add nsw i32 %.neg15.i.i1341, %i.aqt    ; 3 uses
  %i.arb = icmp ugt i8 %i.aqp, 2
  %.v.i.i1342 = select i1 %i.arb, i32 -3, i32 9
  %i.arc = add nsw i32 %.v.i.i1342, %i.aqu
  %i.ard = mul nsw i32 %i.arc, 153
  %i.are = add nsw i32 %i.ard, 2
  %i.arf = udiv i32 %i.are, 5
  %i.arg = mul nsw i32 %i.ara, 365
  %i.arh = lshr i32 %i.ara, 2
  %i.ari = udiv i32 %i.ara, 100
  %i.arj = mul nsw i32 %i.aqz, 146097
  %i.ark = add nuw nsw i32 %i.aqv, -719469
  %i.arl = add nsw i32 %i.ark, %i.arf
  %i.arm = add nsw i32 %i.arl, %i.arj
  %i.arn = add nsw i32 %i.arm, %i.arh
  %i.aro = add nsw i32 %i.arn, %i.arg
  %i.arp = sub nsw i32 %i.aro, %i.ari             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.arq = add nsw i32 %i.arp, 719471             ; 2 uses
  %i.arr = icmp sgt i32 %i.arp, -719472
  %i.ars = add nsw i32 %i.arp, 573375
  %i.art = select i1 %i.arr, i32 %i.arq, i32 %i.ars
  %i.aru = sdiv i32 %i.art, 146097                ; 2 uses
  %.neg.i.i1344 = mul nsw i32 %i.aru, -146097
  %i.arv = add nsw i32 %.neg.i.i1344, %i.arq      ; 5 uses
  %i.arw = udiv i32 %i.arv, 1460
  %i.arx = udiv i32 %i.arv, 36524
  %i.ary = udiv i32 %i.arv, 146096
  %.neg2893 = add nsw i32 %i.arx, %i.arv
  %i.arz = add nuw nsw i32 %i.ary, %i.arw
  %i.asa = sub nsw i32 %.neg2893, %i.arz          ; 3 uses
  %i.asb = udiv i32 %i.asa, 365                   ; 2 uses
  %i.asc = mul nsw i32 %i.aru, 400
  %i.asd = add nsw i32 %i.asb, %i.asc
  %i.ase = udiv i32 %i.asa, 1460
  %i.asf = udiv i32 %i.asa, 36500
  %.neg36.i.i = mul i32 %i.asb, -365
  %.neg37.i.i = sub nsw i32 %i.arv, %i.ase
  %.neg25.i.i = add nsw i32 %.neg37.i.i, %i.asf
  %i.asg = add i32 %.neg25.i.i, %.neg36.i.i
  %i.ash = mul i32 %i.asg, 5
  %i.asi = add i32 %i.ash, 2                      ; 2 uses
  %i.asj = udiv i32 %i.asi, 153
  %i.ask = icmp ult i32 %i.asi, 1530
  %.v.i.i1345 = select i1 %i.ask, i32 3, i32 -9
  %i.asl = add nsw i32 %.v.i.i1345, %i.asj
  %i.asm = icmp ult i32 %i.asl, 3
  %i.asn = zext i1 %i.asm to i32
  %i.aso = add nsw i32 %i.asd, %i.asn             ; 2 uses
  %.sroa.02715.0.extract.trunc = trunc i32 %i.aso to i16
  %.sroa.02708.0.extract.trunc = shl i32 %i.aso, 16
  %sext2832 = add i32 %.sroa.02708.0.extract.trunc, -65536
  %i.asp = ashr exact i32 %sext2832, 16           ; 4 uses
  %i.asq = add nsw i32 %i.asp, -399
  %i.asr = icmp slt i32 %i.asp, 0
  %i.ass = select i1 %i.asr, i32 %i.asq, i32 %i.asp
  %i.ast = sdiv i32 %i.ass, 400                   ; 2 uses
  %.neg15.i.i.i.i.i = mul nsw i32 %i.ast, -400
  %i.asu = add nsw i32 %.neg15.i.i.i.i.i, %i.asp  ; 3 uses
  %i.asv = mul nsw i32 %i.asu, 365
  %i.asw = lshr i32 %i.asu, 2
  %i.asx = udiv i32 %i.asu, 100
  %i.asy = mul nsw i32 %i.ast, 146097
  %i.asz = add nsw i32 %i.asy, 275
  %i.ata = add nsw i32 %i.asz, %i.asw
  %i.atb = add nsw i32 %i.ata, %i.asv
  %i.atc = sub nsw i32 %i.atb, %i.asx             ; 3 uses
  %i.atd = icmp sgt i32 %i.atc, 719433
  %.in.i.i.i.i.v = select i1 %i.atd, i32 -719434, i32 -719438
  %.in.i.i.i.i = add nsw i32 %i.atc, %.in.i.i.i.i.v
  %i.ate = urem i32 %.in.i.i.i.i, 7               ; 3 uses
  %i.atf = icmp samesign ult i32 %i.ate, 4
  %.v3240 = select i1 %i.atf, i32 -10, i32 -4
  %i.atg = add nsw i32 %i.ate, %.v3240
  %.fr.i.i.i = freeze i32 %i.atg                  ; 2 uses
  %i.ath = srem i32 %.fr.i.i.i, 7
  %i.ati = sub nsw i32 %i.atc, %i.ate
  %i.atj = add nsw i32 %i.ati, -719430
  %i.atk = add i32 %i.atj, %.fr.i.i.i
  %i.atl = sub i32 %i.atk, %i.ath
  %i.atm = icmp slt i32 %i.arp, %i.atl
  %i.atn = sext i1 %i.atm to i16
  %spec.select = add i16 %.sroa.02715.0.extract.trunc, %i.atn
  store i16 %spec.select, ptr %13, align 2
  %i.ato = icmp eq i8 %i.aqn, 71
  br i1 %i.ato, label %bb.ix, label %bb.iz

bb.iw:                                            ; preds = %bb.iy, %bb.ix
  %i.atp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ix:                                            ; preds = %.thread.i.i.i.i
  %i.atq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %13)
          to label %.noexc1357 unwind label %bb.iw ; 0 uses

.noexc1357:                                       ; preds = %bb.ix
  %i.atr = load i16, ptr %13, align 2, !tbaa !730
  %.not.i1356 = icmp eq i16 %i.atr, -32768
  br i1 %.not.i1356, label %bb.iy, label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit

bb.iy:                                            ; preds = %.noexc1357
  %i.ats = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 20)
          to label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit unwind label %bb.iw ; 0 uses

bb.iz:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.att = load ptr, ptr %0, align 8, !tbaa !446
  %i.atu = getelementptr i8, ptr %i.att, i64 -24
  %i.atv = load i64, ptr %i.atu, align 8
  %i.atw = getelementptr inbounds i8, ptr %0, i64 %i.atv
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(264) %i.atw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360 unwind label %bb.ji

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360: ; preds = %bb.iz
  %i.atx = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.aty = getelementptr i8, ptr %i.atx, i64 -24
  %i.atz = load i64, ptr %i.aty, align 8
  %i.aua = getelementptr inbounds i8, ptr %0, i64 %i.atz ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 225 ; 2 uses
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !688, !range !86, !noundef !87
  %i.aud = trunc nuw i8 %i.auc to i1
  br i1 %i.aud, label %._crit_edge.i.i1366, label %bb.ja

bb.ja:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aua, i64 240
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1361 = icmp eq ptr %i.auf, null
  br i1 %.not.i.i.i.i1361, label %bb.jb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1369 unwind label %.loopexit.split-lp2988

.noexc1369:                                       ; preds = %bb.jb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362: ; preds = %bb.ja
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 56
  %i.auh = load i8, ptr %i.aug, align 8, !tbaa !695
  %.not.i1.i.i.i1363 = icmp eq i8 %i.auh, 0
  br i1 %.not.i1.i.i.i1363, label %bb.jc, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.auf)
          to label %.noexc1370 unwind label %.loopexit2987

.noexc1370:                                       ; preds = %bb.jc
  %i.aui = load ptr, ptr %i.auf, align 8, !tbaa !446
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.auk = load ptr, ptr %i.auj, align 8
  %i.aul = invoke noundef signext i8 %i.auk(ptr noundef nonnull align 8 dereferenceable(570) %i.auf, i8 noundef signext 32)
          to label %.noexc1370._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364_crit_edge unwind label %.loopexit2987, !inline_history !699 ; 0 uses

.noexc1370._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364_crit_edge: ; preds = %.noexc1370
  %.pre3464.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364

end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
bb.ks:                                            ; preds = %bb.kq
  %i.ayt = icmp eq i64 %.sroa.02700.0.copyload, 12
  %i.ayu = add nsw i64 %.sroa.02700.0.copyload, -12
  br i1 %i.ayt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.ks, %bb.kr, %bb.kp
  %storemerge = phi i64 [ %.sroa.02700.0.copyload, %bb.kr ], [ %i.ayu, %bb.ks ], [ %.sroa.02700.0.copyload, %bb.kp ] ; 3 uses
  %i.ayv = icmp slt i64 %storemerge, 10
  br i1 %i.ayv, label %bb.kt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kt:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !70
  %i.ayw = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayx = getelementptr i8, ptr %i.ayw, i64 -24
  %i.ayy = load i64, ptr %i.ayx, align 8
  %i.ayz = getelementptr inbounds i8, ptr %0, i64 %i.ayy
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !659
  %.not.i1420 = icmp eq i64 %i.azb, 0
  br i1 %.not.i1420, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.azc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 unwind label %bb.kw ; 0 uses

bb.kv:                                            ; preds = %bb.kt
  %i.azd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 unwind label %bb.kw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kw:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.kv, %bb.ku
  %i.aze = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.ks, %bb.kr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3537 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 ], [ 12, %bb.kr ], [ 12, %bb.ks ]
  %i.azf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3537)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.kw ; 0 uses

bb.kx:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #26
  store i8 37, ptr %i.fg, align 1, !tbaa !70
  store i8 79, ptr %i.kf, align 1, !tbaa !70
  %i.azg = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.azg, ptr %i.kg, align 1, !tbaa !70
  %i.azh = trunc i64 %.sroa.02700.0.copyload to i32
  store i32 %i.azh, ptr %i.is, align 8, !tbaa !735
  %i.azi = load ptr, ptr %0, align 8, !tbaa !446
  %i.azj = getelementptr i8, ptr %i.azi, i64 -24
  %i.azk = load i64, ptr %i.azj, align 8
  %i.azl = getelementptr inbounds i8, ptr %0, i64 %i.azk ; 6 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 232
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !727 ; 2 uses
  %.not.i1427 = icmp eq ptr %i.azn, null
  %i.azo = zext i1 %.not.i1427 to i8
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azl, i64 225 ; 2 uses
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !688, !range !86, !noundef !87
  %i.azr = trunc nuw i8 %i.azq to i1
  br i1 %i.azr, label %._crit_edge.i1433, label %bb.ky

._crit_edge.i1433:                                ; preds = %bb.kx
  %.phi.trans.insert.i1434 = getelementptr inbounds nuw i8, ptr %i.azl, i64 224
  %.pre.i1435 = load i8, ptr %.phi.trans.insert.i1434, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439

bb.ky:                                            ; preds = %bb.kx
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azl, i64 240
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1428 = icmp eq ptr %i.azt, null
  br i1 %.not.i.i.i1428, label %bb.kz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1436 unwind label %.loopexit.split-lp2983

.noexc1436:                                       ; preds = %bb.kz
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429: ; preds = %bb.ky
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 56
  %i.azv = load i8, ptr %i.azu, align 8, !tbaa !695
  %.not.i1.i.i1430 = icmp eq i8 %i.azv, 0
  br i1 %.not.i1.i.i1430, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azt, i64 89
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431

bb.lb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azt)
          to label %.noexc1437 unwind label %.loopexit2982

.noexc1437:                                       ; preds = %bb.lb
  %i.azy = load ptr, ptr %i.azt, align 8, !tbaa !446
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 48
  %i.baa = load ptr, ptr %i.azz, align 8
  %i.bab = invoke noundef signext i8 %i.baa(ptr noundef nonnull align 8 dereferenceable(570) %i.azt, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431 unwind label %.loopexit2982, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431: ; preds = %.noexc1437, %bb.la
  %.0.i.i.i1432 = phi i8 [ %i.azx, %bb.la ], [ %i.bab, %.noexc1437 ] ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azl, i64 224
  store i8 %.0.i.i.i1432, ptr %i.bac, align 8, !tbaa !700
  store i8 1, ptr %i.azp, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431, %._crit_edge.i1433
  %i.bad = phi i8 [ %.pre.i1435, %._crit_edge.i1433 ], [ %.0.i.i.i1432, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431 ]
  %i.bae = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.azn, i8 %i.azo, ptr noundef nonnull align 8 dereferenceable(216) %i.azl, i8 noundef signext %i.bad, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.kh)
          to label %bb.lc unwind label %.loopexit2982 ; 0 uses

bb.lc:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit2982:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439, %bb.lb, %.noexc1437
  %lpad.loopexit2984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp2983:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp2983, %.loopexit2982
  %lpad.phi2986 = phi { ptr, i32 } [ %lpad.loopexit2984, %.loopexit2982 ], [ %lpad.loopexit.split-lp2985, %.loopexit.split-lp2983 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %bb.aix

bb.le:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.kz, ptr %i.dk, align 1, !tbaa !70
  %i.baf = load ptr, ptr %0, align 8, !tbaa !446
  %i.bag = getelementptr i8, ptr %i.baf, i64 -24
  %i.bah = load i64, ptr %i.bag, align 8
  %i.bai = getelementptr inbounds i8, ptr %0, i64 %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 16
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !659
  %.not.i1440 = icmp eq i64 %i.bak, 0
  br i1 %.not.i1440, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bal = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 unwind label %.loopexit ; 0 uses

bb.lg:                                            ; preds = %bb.le
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.lh:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.mn, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.ban = icmp eq i8 %.0806, 0
  br i1 %i.ban, label %bb.lj, label %bb.me

bb.lj:                                            ; preds = %bb.li
  %i.bao = load i16, ptr %2, align 8, !tbaa !730  ; 9 uses
  %.not.i1445 = icmp eq i16 %i.bao, -32768
  br i1 %.not.i1445, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bap = load i8, ptr %i.iv, align 2, !tbaa !731 ; 8 uses
  %i.baq = add i8 %i.bap, -1
  %spec.select.i.i1446 = icmp ult i8 %i.baq, 12
  br i1 %spec.select.i.i1446, label %bb.ll, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538

bb.ll:                                            ; preds = %bb.lk
  %i.bar = load i8, ptr %i.iw, align 1, !tbaa !732 ; 2 uses
  %.not8.i1448 = icmp eq i8 %i.bar, 0
  br i1 %.not8.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not.i.i1449 = icmp eq i8 %i.bap, 2
  %i.bas = and i16 %i.bao, 3
  %i.bat = icmp eq i16 %i.bas, 0
  %or.cond.i1450 = and i1 %i.bat, %.not.i.i1449
  br i1 %or.cond.i1450, label %bb.ln, label %.thread.i.i1451

bb.ln:                                            ; preds = %bb.lm
  %i.bau = srem i16 %i.bao, 100
  %.not.i.i.i1454 = icmp ne i16 %i.bau, 0
  %i.bav = srem i16 %i.bao, 400
  %i.baw = icmp eq i16 %i.bav, 0
  %or.cond.i.i1455 = or i1 %.not.i.i.i1454, %i.baw
  br i1 %or.cond.i.i1455, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456, label %.thread.i.i1451

.thread.i.i1451:                                  ; preds = %bb.ln, %bb.lm
  %i.bax = zext nneg i8 %i.bap to i64
  %24 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bax
  %i.bay = getelementptr i8, ptr %24, i64 -1
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456: ; preds = %bb.ln, %.thread.i.i1451
  %.sroa.03.0.i.i1453 = phi i8 [ %i.baz, %.thread.i.i1451 ], [ 29, %bb.ln ]
  %.not2826 = icmp ult i8 %.sroa.03.0.i.i1453, %i.bar
  br i1 %.not2826, label %.thread2762, label %.thread2761

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread: ; preds = %bb.ll
  %i.bba = load i8, ptr %i.gw, align 8, !tbaa !702, !range !86, !noundef !87
  %i.bbb = trunc nuw i8 %i.bba to i1
  br i1 %i.bbb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538: ; preds = %bb.lk
  %i.bbc = load i8, ptr %i.gw, align 8, !tbaa !702, !range !86, !noundef !87
  %i.bbd = trunc nuw i8 %i.bbc to i1
  br i1 %i.bbd, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread: ; preds = %bb.lj
  %i.bbe = load i8, ptr %i.gw, align 8, !tbaa !702, !range !86, !noundef !87
  %i.bbf = trunc nuw i8 %i.bbe to i1
  br i1 %i.bbf, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

.thread2762:                                      ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456
  %i.bbg = load i8, ptr %i.gw, align 8, !tbaa !702, !range !86, !noundef !87
  %i.bbh = trunc nuw i8 %i.bbg to i1
  br i1 %i.bbh, label %.thread2761, label %bb.md

.thread2761:                                      ; preds = %.thread2762, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456
  %.pr = load i8, ptr %i.iw, align 1, !tbaa !732  ; 3 uses
  %.not8.i1460 = icmp eq i8 %.pr, 0
  br i1 %.not8.i1460, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.lo

bb.lo:                                            ; preds = %.thread2761
  %.not.i.i1461 = icmp eq i8 %i.bap, 2
  %i.bbi = and i16 %i.bao, 3
  %i.bbj = icmp eq i16 %i.bbi, 0
  %or.cond.i1462 = and i1 %i.bbj, %.not.i.i1461
  br i1 %or.cond.i1462, label %bb.lp, label %.thread.i.i1463

bb.lp:                                            ; preds = %bb.lo
  %i.bbk = srem i16 %i.bao, 100
  %.not.i.i.i1466 = icmp ne i16 %i.bbk, 0
  %i.bbl = srem i16 %i.bao, 400
  %i.bbm = icmp eq i16 %i.bbl, 0
  %or.cond.i.i1467 = or i1 %.not.i.i.i1466, %i.bbm
  br i1 %or.cond.i.i1467, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468, label %.thread.i.i1463

.thread.i.i1463:                                  ; preds = %bb.lp, %bb.lo
  %i.bbn = zext nneg i8 %i.bap to i64
  %25 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbn
  %i.bbo = getelementptr i8, ptr %25, i64 -1
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468: ; preds = %bb.lp, %.thread.i.i1463
  %.sroa.03.0.i.i1465 = phi i8 [ %i.bbp, %.thread.i.i1463 ], [ 29, %bb.lp ]
  %.not2827 = icmp ult i8 %.sroa.03.0.i.i1465, %.pr
  br i1 %.not2827, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.lq

bb.lq:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468
  %i.bbq = sext i16 %i.bao to i32                 ; 3 uses
  %i.bbr = icmp samesign ult i8 %i.bap, 3
  %.neg.i.i1469 = sext i1 %i.bbr to i32
  %i.bbs = add nsw i32 %.neg.i.i1469, %i.bbq      ; 4 uses
  %i.bbt = zext nneg i8 %i.bap to i32
  %i.bbu = zext i8 %.pr to i32
  %i.bbv = add nsw i32 %i.bbs, -399
  %i.bbw = icmp slt i32 %i.bbs, 0
  %i.bbx = select i1 %i.bbw, i32 %i.bbv, i32 %i.bbs
  %i.bby = sdiv i32 %i.bbx, 400                   ; 2 uses
  %.neg15.i.i1470 = mul nsw i32 %i.bby, -400
  %i.bbz = add nsw i32 %.neg15.i.i1470, %i.bbs    ; 3 uses
  %i.bca = icmp samesign ugt i8 %i.bap, 2
  %.v.i.i1471 = select i1 %i.bca, i32 -3, i32 9
  %i.bcb = add nsw i32 %.v.i.i1471, %i.bbt
  %i.bcc = mul nsw i32 %i.bcb, 153
  %i.bcd = add nsw i32 %i.bcc, 2
  %i.bce = udiv i32 %i.bcd, 5
  %i.bcf = lshr i32 %i.bbz, 2
  %i.bcg = udiv i32 %i.bbz, 100
  %i.bch = add nsw i32 %i.bbq, -1                 ; 2 uses
  %i.bci = add nsw i32 %i.bbq, -400
  %i.bcj = icmp slt i16 %i.bao, 1
  %i.bck = select i1 %i.bcj, i32 %i.bci, i32 %i.bch
  %i.bcl = sdiv i32 %i.bck, 400                   ; 2 uses
  %.neg15.i.i1483 = mul nsw i32 %i.bcl, -400
  %i.bcm = add nsw i32 %.neg15.i.i1483, %i.bch    ; 3 uses
  %i.bcn = lshr i32 %i.bcm, 2
  %i.bco = udiv i32 %i.bcm, 100
  %reass.add = sub nsw i32 %i.bbz, %i.bcm
  %reass.mul = mul nsw i32 %reass.add, 365
  %reass.add2888 = sub nsw i32 %i.bby, %i.bcl
  %reass.mul2889 = mul nsw i32 %reass.add2888, 146097
  %reass.sub = sub nsw i32 %i.bco, %i.bcn
  %i.bcp = add nsw i32 %reass.sub, -306
  %.neg2883 = add nsw i32 %i.bcp, %i.bbu
  %.neg2885 = add nsw i32 %.neg2883, %i.bce
  %.neg2886 = add nsw i32 %.neg2885, %reass.mul2889
  %.neg2828 = add nsw i32 %.neg2886, %i.bcf
  %i.bcq = sub nsw i32 %.neg2828, %i.bcg
  %i.bcr = add nsw i32 %i.bcq, %reass.mul
  br label %bb.lr

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread, %.thread2761, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468
  %i.bcs = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.bct = load i64, ptr %i.ju, align 8, !tbaa !408
  %i.bcu = add nsw i64 %i.bct, %i.bcs
  %i.bcv = load i64, ptr %i.iq, align 8, !tbaa !714
  %i.bcw = mul nsw i64 %i.bcv, 60
  %i.bcx = add nsw i64 %i.bcu, %i.bcw
  %i.bcy = load i64, ptr %i.io, align 8, !tbaa !715
  %i.bcz = mul nsw i64 %i.bcy, 3600
  %i.bda = add nsw i64 %i.bcx, %i.bcz
  %i.bdb = load i8, ptr %i.jt, align 8, !tbaa !716, !range !86, !noundef !87
  %i.bdc = shl nuw nsw i8 %i.bdb, 1
  %i.bdd = zext nneg i8 %i.bdc to i64
  %i.bde = sub nsw i64 1, %i.bdd
  %i.bdf = mul nsw i64 %i.bde, %i.bda
  %i.bdg = sdiv i64 %i.bdf, 86400
  %i.bdh = trunc i64 %i.bdg to i32
  br label %bb.lr

bb.lr:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, %bb.lq
  %.sroa.02692.0 = phi i32 [ %i.bcr, %bb.lq ], [ %i.bdh, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.bdi = load ptr, ptr %0, align 8, !tbaa !446
  %i.bdj = getelementptr i8, ptr %i.bdi, i64 -24
  %i.bdk = load i64, ptr %i.bdj, align 8
  %i.bdl = getelementptr inbounds i8, ptr %0, i64 %i.bdk
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(264) %i.bdl)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488 unwind label %bb.ma

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488: ; preds = %bb.lr
  %i.bdm = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.bdn = getelementptr i8, ptr %i.bdm, i64 -24
  %i.bdo = load i64, ptr %i.bdn, align 8
  %i.bdp = getelementptr inbounds i8, ptr %0, i64 %i.bdo ; 3 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 225 ; 2 uses
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !688, !range !86, !noundef !87
  %i.bds = trunc nuw i8 %i.bdr to i1
  br i1 %i.bds, label %._crit_edge.i.i1494, label %bb.ls

bb.ls:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdp, i64 240
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1489 = icmp eq ptr %i.bdu, null
  br i1 %.not.i.i.i.i1489, label %bb.lt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1497 unwind label %.loopexit.split-lp2978

.noexc1497:                                       ; preds = %bb.lt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490: ; preds = %bb.ls
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 56
  %i.bdw = load i8, ptr %i.bdv, align 8, !tbaa !695
  %.not.i1.i.i.i1491 = icmp eq i8 %i.bdw, 0
  br i1 %.not.i1.i.i.i1491, label %bb.lu, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492

bb.lu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdu)
          to label %.noexc1498 unwind label %.loopexit2977

.noexc1498:                                       ; preds = %bb.lu
  %i.bdx = load ptr, ptr %i.bdu, align 8, !tbaa !446
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 48
  %i.bdz = load ptr, ptr %i.bdy, align 8
  %i.bea = invoke noundef signext i8 %i.bdz(ptr noundef nonnull align 8 dereferenceable(570) %i.bdu, i8 noundef signext 32)
          to label %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge unwind label %.loopexit2977, !inline_history !699 ; 0 uses

.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge: ; preds = %.noexc1498
  %.pre3459.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492: ; preds = %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490
  %.pre3459 = phi ptr [ %.pre3459.pre, %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge ], [ %i.bdm, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490 ]
  store i8 1, ptr %i.bdq, align 1, !tbaa !688
  br label %._crit_edge.i.i1494

._crit_edge.i.i1494:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492
  %i.beb = phi ptr [ %i.bdm, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488 ], [ %.pre3459, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492 ]
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdp, i64 224
  store i8 48, ptr %i.bec, align 8, !tbaa !700
  %i.bed = getelementptr i8, ptr %i.beb, i64 -24  ; 2 uses
  %i.bee = load i64, ptr %i.bed, align 8
  %i.bef = getelementptr inbounds i8, ptr %0, i64 %i.bee
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 24
  store i32 130, ptr %i.beg, align 8, !tbaa !701
  %i.beh = load i64, ptr %i.bed, align 8
  %i.bei = getelementptr inbounds i8, ptr %0, i64 %i.beh
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 16
  store i64 3, ptr %i.bej, align 8, !tbaa !659
  %i.bek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.02692.0)
          to label %bb.lv unwind label %.loopexit2977 ; 0 uses

bb.lv:                                            ; preds = %._crit_edge.i.i1494
  %i.bel = load i32, ptr %i.ke, align 4, !tbaa !739
  %i.bem = and i32 %i.bel, 8192
  %.not.i1501 = icmp eq i32 %i.bem, 0
  br i1 %.not.i1501, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.ben = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.beo = icmp eq i32 %i.ben, 0
  br i1 %i.beo, label %bb.lx, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502

bb.lx:                                            ; preds = %bb.lw
  %i.bep = load ptr, ptr %15, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 32
  %i.ber = load i32, ptr %i.beq, align 8, !tbaa !677
  %i.bes = icmp eq i32 %i.ber, 0
  br i1 %i.bes, label %bb.ly, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502

bb.ly:                                            ; preds = %bb.lx
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bep, i64 232
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !727 ; 2 uses
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !446
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 48
  %i.bex = load ptr, ptr %i.bew, align 8
  %i.bey = invoke noundef i32 %i.bex(ptr noundef nonnull align 8 dereferenceable(64) %i.beu)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 unwind label %bb.lz, !inline_history !743 ; 0 uses

bb.lz:                                            ; preds = %bb.ly
  %i.bez = landingpad { ptr, i32 }
          catch ptr null
  %i.bfa = extractvalue { ptr, i32 } %i.bez, 0
  call void @__clang_call_terminate(ptr %i.bfa) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502: ; preds = %bb.lv, %bb.lw, %bb.lx, %bb.ly
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ma:                                            ; preds = %bb.lr
  %i.bfb = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit2977:                                    ; preds = %._crit_edge.i.i1494, %bb.lu, %.noexc1498
  %lpad.loopexit2979 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2978:                           ; preds = %bb.lt
  %lpad.loopexit.split-lp2980 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a

bb.wf:                                            ; preds = %bb.we
  %i.chf = getelementptr inbounds nuw i8, ptr %i.cgy, i64 240
  %i.chg = load ptr, ptr %i.chf, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1896 = icmp eq ptr %i.chg, null
  br i1 %.not.i.i.i1896, label %bb.wg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897

bb.wg:                                            ; preds = %bb.wf
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1904 unwind label %.loopexit.split-lp2948

.noexc1904:                                       ; preds = %bb.wg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897: ; preds = %bb.wf
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chg, i64 56
  %i.chi = load i8, ptr %i.chh, align 8, !tbaa !695
  %.not.i1.i.i1898 = icmp eq i8 %i.chi, 0
  br i1 %.not.i1.i.i1898, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chg, i64 89
  %i.chk = load i8, ptr %i.chj, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899

bb.wi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.chg)
          to label %.noexc1905 unwind label %.loopexit2947

.noexc1905:                                       ; preds = %bb.wi
  %i.chl = load ptr, ptr %i.chg, align 8, !tbaa !446
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chl, i64 48
  %i.chn = load ptr, ptr %i.chm, align 8
  %i.cho = invoke noundef signext i8 %i.chn(ptr noundef nonnull align 8 dereferenceable(570) %i.chg, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899 unwind label %.loopexit2947, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899: ; preds = %.noexc1905, %bb.wh
  %.0.i.i.i1900 = phi i8 [ %i.chk, %bb.wh ], [ %i.cho, %.noexc1905 ] ; 2 uses
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cgy, i64 224
  store i8 %.0.i.i.i1900, ptr %i.chp, align 8, !tbaa !700
  store i8 1, ptr %i.chc, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899, %._crit_edge.i1901
  %i.chq = phi i8 [ %.pre.i1903, %._crit_edge.i1901 ], [ %.0.i.i.i1900, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899 ]
  %i.chr = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.cha, i8 %i.chb, ptr noundef nonnull align 8 dereferenceable(216) %i.cgy, i8 noundef signext %i.chq, ptr noundef nonnull %6, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.jn)
          to label %bb.wj unwind label %.loopexit2947 ; 0 uses

bb.wj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit2947:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907, %bb.wi, %.noexc1905
  %lpad.loopexit2949 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

.loopexit.split-lp2948:                           ; preds = %bb.wg
  %lpad.loopexit.split-lp2950 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wk:                                            ; preds = %.loopexit.split-lp2948, %.loopexit2947
  %lpad.phi2951 = phi { ptr, i32 } [ %lpad.loopexit2949, %.loopexit2947 ], [ %lpad.loopexit.split-lp2950, %.loopexit.split-lp2948 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #26
  br label %bb.aix

bb.wl:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 117, ptr %i.bf, align 1, !tbaa !70
  %i.chs = load ptr, ptr %0, align 8, !tbaa !446
  %i.cht = getelementptr i8, ptr %i.chs, i64 -24
  %i.chu = load i64, ptr %i.cht, align 8
  %i.chv = getelementptr inbounds i8, ptr %0, i64 %i.chu
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chv, i64 16
  %i.chx = load i64, ptr %i.chw, align 8, !tbaa !659
  %.not.i1908 = icmp eq i64 %i.chx, 0
  br i1 %.not.i1908, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.chy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 unwind label %.loopexit ; 0 uses

bb.wn:                                            ; preds = %bb.wl
  %i.chz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 117)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912: ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.wo:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.yc, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cia = icmp eq i8 %.0806, 69
  br i1 %i.cia, label %bb.wq, label %bb.wz

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 37, ptr %i.be, align 1, !tbaa !70
  %i.cib = load ptr, ptr %0, align 8, !tbaa !446
  %i.cic = getelementptr i8, ptr %i.cib, i64 -24
  %i.cid = load i64, ptr %i.cic, align 8
  %i.cie = getelementptr inbounds i8, ptr %0, i64 %i.cid
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cie, i64 16
  %i.cig = load i64, ptr %i.cif, align 8, !tbaa !659
  %.not.i1913 = icmp eq i64 %i.cig, 0
  br i1 %.not.i1913, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %bb.wt unwind label %.loopexit

bb.ws:                                            ; preds = %bb.wq
  %i.cii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.wt unwind label %.loopexit ; 0 uses

bb.wt:                                            ; preds = %bb.wr, %bb.ws
  %.0.i1914 = phi ptr [ %i.cih, %bb.wr ], [ %0, %bb.ws ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 69, ptr %i.bd, align 1, !tbaa !70
  %i.cij = load ptr, ptr %.0.i1914, align 8, !tbaa !446
  %i.cik = getelementptr i8, ptr %i.cij, i64 -24
  %i.cil = load i64, ptr %i.cik, align 8
  %i.cim = getelementptr inbounds i8, ptr %.0.i1914, i64 %i.cil
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 16
  %i.cio = load i64, ptr %i.cin, align 8, !tbaa !659
  %.not.i1918 = icmp eq i64 %i.cio, 0
  br i1 %.not.i1918, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.cip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1914, ptr noundef nonnull %i.bd, i64 noundef 1)
          to label %bb.ww unwind label %.loopexit

bb.wv:                                            ; preds = %bb.wt
  %i.ciq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1914, i8 noundef signext 69)
          to label %bb.ww unwind label %.loopexit ; 0 uses

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.0.i1919 = phi ptr [ %i.cip, %bb.wu ], [ %.0.i1914, %bb.wv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.cir = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i8 %i.cir, ptr %i.bc, align 1, !tbaa !70
  %i.cis = load ptr, ptr %.0.i1919, align 8, !tbaa !446
  %i.cit = getelementptr i8, ptr %i.cis, i64 -24
  %i.ciu = load i64, ptr %i.cit, align 8
  %i.civ = getelementptr inbounds i8, ptr %.0.i1919, i64 %i.ciu
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.civ, i64 16
  %i.cix = load i64, ptr %i.ciw, align 8, !tbaa !659
  %.not.i1923 = icmp eq i64 %i.cix, 0
  br i1 %.not.i1923, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.ciy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1919, ptr noundef nonnull %i.bc, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 unwind label %.loopexit ; 0 uses

bb.wy:                                            ; preds = %bb.ww
  %i.ciz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1919, i8 noundef signext %i.cir)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927: ; preds = %bb.wy, %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.wz:                                            ; preds = %bb.wp
  %i.cja = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i1928 = icmp eq i16 %i.cja, -32768
  br i1 %.not.i1928, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.cjb = load i8, ptr %i.iv, align 2, !tbaa !731 ; 4 uses
  %i.cjc = add i8 %i.cjb, -1
  %spec.select.i.i1929 = icmp ult i8 %i.cjc, 12
  br i1 %spec.select.i.i1929, label %bb.xb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread

bb.xb:                                            ; preds = %bb.xa
  %i.cjd = load i8, ptr %i.iw, align 1, !tbaa !732 ; 3 uses
  %.not8.i1931 = icmp eq i8 %i.cjd, 0
  br i1 %.not8.i1931, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %.not.i.i1932 = icmp eq i8 %i.cjb, 2
  %i.cje = and i16 %i.cja, 3
  %i.cjf = icmp eq i16 %i.cje, 0
  %or.cond.i1933 = and i1 %i.cjf, %.not.i.i1932
  br i1 %or.cond.i1933, label %bb.xd, label %.thread.i.i1934

bb.xd:                                            ; preds = %bb.xc
  %i.cjg = srem i16 %i.cja, 100
  %.not.i.i.i1937 = icmp ne i16 %i.cjg, 0
  %i.cjh = srem i16 %i.cja, 400
  %i.cji = icmp eq i16 %i.cjh, 0
  %or.cond.i.i1938 = or i1 %.not.i.i.i1937, %i.cji
  br i1 %or.cond.i.i1938, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939, label %.thread.i.i1934

.thread.i.i1934:                                  ; preds = %bb.xd, %bb.xc
  %i.cjj = zext nneg i8 %i.cjb to i64
  %26 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cjj
  %i.cjk = getelementptr i8, ptr %26, i64 -1
  %i.cjl = load i8, ptr %i.cjk, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939: ; preds = %bb.xd, %.thread.i.i1934
  %.sroa.03.0.i.i1936 = phi i8 [ %i.cjl, %.thread.i.i1934 ], [ 29, %bb.xd ]
  %.not2820 = icmp ult i8 %.sroa.03.0.i.i1936, %i.cjd
  br i1 %.not2820, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread: ; preds = %bb.xb, %bb.xa, %bb.wz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939
  %i.cjm = load ptr, ptr %0, align 8, !tbaa !446
  %i.cjn = getelementptr i8, ptr %i.cjm, i64 -24
  %i.cjo = load i64, ptr %i.cjn, align 8
  %i.cjp = getelementptr inbounds i8, ptr %0, i64 %i.cjo ; 2 uses
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjp, i64 32
  %i.cjr = load i32, ptr %i.cjq, align 8, !tbaa !677
  %i.cjs = or i32 %i.cjr, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cjp, i32 noundef %i.cjs)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge unwind label %bb.xe

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread
  %.pre3449 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3450 = load i8, ptr %i.iv, align 2, !tbaa !731
  %.pre3451 = load i8, ptr %i.iw, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941

bb.xe:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread
  %i.cjt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939
  %i.cju = phi i8 [ %.pre3451, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cjd, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ]
  %i.cjv = phi i8 [ %.pre3450, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cjb, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ] ; 3 uses
  %i.cjw = phi i16 [ %.pre3449, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cja, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ] ; 2 uses
  %i.cjx = sext i16 %i.cjw to i32                 ; 4 uses
  %i.cjy = icmp ult i8 %i.cjv, 3
  %.neg.i.i1942 = sext i1 %i.cjy to i32
  %i.cjz = add nsw i32 %.neg.i.i1942, %i.cjx      ; 4 uses
  %i.cka = zext i8 %i.cjv to i32
  %i.ckb = zext i8 %i.cju to i32
  %i.ckc = add nsw i32 %i.cjz, -399
  %i.ckd = icmp slt i32 %i.cjz, 0
  %i.cke = select i1 %i.ckd, i32 %i.ckc, i32 %i.cjz
  %i.ckf = sdiv i32 %i.cke, 400                   ; 2 uses
  %.neg15.i.i1943 = mul nsw i32 %i.ckf, -400
  %i.ckg = add nsw i32 %.neg15.i.i1943, %i.cjz    ; 3 uses
  %i.ckh = icmp ugt i8 %i.cjv, 2
  %.v.i.i1944 = select i1 %i.ckh, i32 -3, i32 9
  %i.cki = add nsw i32 %.v.i.i1944, %i.cka
  %i.ckj = mul nsw i32 %i.cki, 153
  %i.ckk = add nsw i32 %i.ckj, 2
  %i.ckl = udiv i32 %i.ckk, 5
  %i.ckm = mul nsw i32 %i.ckg, 365
  %i.ckn = lshr i32 %i.ckg, 2
  %i.cko = udiv i32 %i.ckg, 100
  %i.ckp = mul nsw i32 %i.ckf, 146097
  %i.ckq = add nuw nsw i32 %i.ckb, -719469
  %i.ckr = add nsw i32 %i.ckq, %i.ckl
  %i.cks = add nsw i32 %i.ckr, %i.ckp
  %i.ckt = add nsw i32 %i.cks, %i.ckn
  %i.cku = add nsw i32 %i.ckt, %i.ckm
  %i.ckv = sub nsw i32 %i.cku, %i.cko             ; 3 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %bb.xf
    i8 79, label %bb.xt
  ]

bb.xf:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941
  %i.ckw = add nsw i32 %i.cjx, -1                 ; 2 uses
  %i.ckx = add nsw i32 %i.cjx, -400
  %i.cky = icmp slt i16 %i.cjw, 1
  %i.ckz = select i1 %i.cky, i32 %i.ckx, i32 %i.ckw
  %i.cla = sdiv i32 %i.ckz, 400                   ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %i.cla, -400
  %i.clb = add nsw i32 %.neg15.i.i.i.i, %i.ckw    ; 3 uses
  %i.clc = mul nsw i32 %i.clb, 365
  %i.cld = lshr i32 %i.clb, 2
  %i.cle = udiv i32 %i.clb, 100
  %i.clf = mul nsw i32 %i.cla, 146097
  %i.clg = add nsw i32 %i.clf, -719162
  %i.clh = add nsw i32 %i.clg, %i.cld
  %i.cli = add nsw i32 %i.clh, %i.clc
  %i.clj = sub nsw i32 %i.cli, %i.cle             ; 4 uses
  %i.clk = icmp sgt i32 %i.clj, -5
  %i.cll = add nsw i32 %i.clj, 4
  %.in.i.i.i.i1953 = select i1 %i.clk, i32 %i.cll, i32 %i.clj
  %i.clm = urem i32 %.in.i.i.i.i1953, 7           ; 3 uses
  %i.cln = sub nuw nsw i32 -6, %i.clm
  %.not2825 = icmp eq i32 %i.clm, 0
  %i.clo = select i1 %.not2825, i32 0, i32 %i.cln
  %.fr.i.i.i1954 = freeze i32 %i.clo              ; 2 uses
  %i.clp = srem i32 %.fr.i.i.i1954, 7
  %i.clq = add i32 %i.clm, %.fr.i.i.i1954
  %i.clr = sub i32 %i.clj, %i.clq
  %i.cls = add i32 %i.clr, %i.clp                 ; 2 uses
  %i.clt = icmp slt i32 %i.ckv, %i.cls
  br i1 %i.clt, label %bb.xg, label %bb.xn

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 48, ptr %i.bb, align 1, !tbaa !70
  %i.clu = load ptr, ptr %0, align 8, !tbaa !446
  %i.clv = getelementptr i8, ptr %i.clu, i64 -24
  %i.clw = load i64, ptr %i.clv, align 8
  %i.clx = getelementptr inbounds i8, ptr %0, i64 %i.clw
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 16
  %i.clz = load i64, ptr %i.cly, align 8, !tbaa !659
  %.not.i1957 = icmp eq i64 %i.clz, 0
  br i1 %.not.i1957, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bb, i64 noundef 1)
          to label %bb.xj unwind label %bb.xm

bb.xi:                                            ; preds = %bb.xg
  %i.cmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.xj unwind label %bb.xm     ; 0 uses

bb.xj:                                            ; preds = %bb.xh, %bb.xi
  %.0.i1958 = phi ptr [ %i.cma, %bb.xh ], [ %0, %bb.xi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i8 48, ptr %i.ba, align 1, !tbaa !70
  %i.cmc = load ptr, ptr %.0.i1958, align 8, !tbaa !446
  %i.cmd = getelementptr i8, ptr %i.cmc, i64 -24
  %i.cme = load i64, ptr %i.cmd, align 8
  %i.cmf = getelementptr inbounds i8, ptr %.0.i1958, i64 %i.cme
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.cmf, i64 16
  %i.cmh = load i64, ptr %i.cmg, align 8, !tbaa !659
  %.not.i1962 = icmp eq i64 %i.cmh, 0
  br i1 %.not.i1962, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cmi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1958, ptr noundef nonnull %i.ba, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 unwind label %bb.xm ; 0 uses

bb.xl:                                            ; preds = %bb.xj
  %i.cmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1958, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 unwind label %bb.xm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966: ; preds = %bb.xl, %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.xm:                                            ; preds = %bb.xl, %bb.xk, %bb.xi, %bb.xh
  %i.cmk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xn:                                            ; preds = %bb.xf
  %i.cml = sub nsw i32 %i.ckv, %i.cls             ; 2 uses
  %i.cmm = udiv i32 %i.cml, 7
  %i.cmn = add nuw nsw i32 %i.cmm, 1
  %i.cmo = icmp ult i32 %i.cml, 63
  br i1 %i.cmo, label %bb.xo, label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 48, ptr %i.az, align 1, !tbaa !70
  %i.cmp = load ptr, ptr %0, align 8, !tbaa !446
  %i.cmq = getelementptr i8, ptr %i.cmp, i64 -24
  %i.cmr = load i64, ptr %i.cmq, align 8
  %i.cms = getelementptr inbounds i8, ptr %0, i64 %i.cmr
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cms, i64 16
  %i.cmu = load i64, ptr %i.cmt, align 8, !tbaa !659
  %.not.i1969 = icmp eq i64 %i.cmu, 0
  br i1 %.not.i1969, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cmv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973 unwind label %bb.xr ; 0 uses

bb.xq:                                            ; preds = %bb.xo
  %i.cmw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973 unwind label %bb.xr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973: ; preds = %bb.xq, %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xs
  %i.cmx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973, %bb.xn
  %i.cmy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cmn)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.xr ; 0 uses

bb.xt:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #26
  store i8 37, ptr %i.fn, align 1, !tbaa !70
  store i8 79, ptr %i.ji, align 1, !tbaa !70
  %i.cmz = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.cmz, ptr %i.jj, align 1, !tbaa !70
  %i.cna = add nsw i32 %i.cjx, -1900
  store i32 %i.cna, ptr %i.ii, align 4, !tbaa !737
  %i.cnb = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.xu unwind label %.loopexit2942

end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  %.not.i1990 = icmp eq ptr %i.cnw, null
  %i.cnx = zext i1 %.not.i1990 to i8
  %i.cny = getelementptr inbounds nuw i8, ptr %i.cnu, i64 225 ; 2 uses
  %i.cnz = load i8, ptr %i.cny, align 1, !tbaa !688, !range !86, !noundef !87
  %i.coa = trunc nuw i8 %i.cnz to i1
  br i1 %i.coa, label %._crit_edge.i1996, label %bb.xx

._crit_edge.i1996:                                ; preds = %bb.xw
  %.phi.trans.insert.i1997 = getelementptr inbounds nuw i8, ptr %i.cnu, i64 224
  %.pre.i1998 = load i8, ptr %.phi.trans.insert.i1997, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002

bb.xx:                                            ; preds = %bb.xw
  %i.cob = getelementptr inbounds nuw i8, ptr %i.cnu, i64 240
  %i.coc = load ptr, ptr %i.cob, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1991 = icmp eq ptr %i.coc, null
  br i1 %.not.i.i.i1991, label %bb.xy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992

bb.xy:                                            ; preds = %bb.xx
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1999 unwind label %.loopexit.split-lp2943

.noexc1999:                                       ; preds = %bb.xy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992: ; preds = %bb.xx
  %i.cod = getelementptr inbounds nuw i8, ptr %i.coc, i64 56
  %i.coe = load i8, ptr %i.cod, align 8, !tbaa !695
  %.not.i1.i.i1993 = icmp eq i8 %i.coe, 0
  br i1 %.not.i1.i.i1993, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992
  %i.cof = getelementptr inbounds nuw i8, ptr %i.coc, i64 89
  %i.cog = load i8, ptr %i.cof, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994

bb.ya:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.coc)
          to label %.noexc2000 unwind label %.loopexit2942

.noexc2000:                                       ; preds = %bb.ya
  %i.coh = load ptr, ptr %i.coc, align 8, !tbaa !446
  %i.coi = getelementptr inbounds nuw i8, ptr %i.coh, i64 48
  %i.coj = load ptr, ptr %i.coi, align 8
  %i.cok = invoke noundef signext i8 %i.coj(ptr noundef nonnull align 8 dereferenceable(570) %i.coc, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994 unwind label %.loopexit2942, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994: ; preds = %.noexc2000, %bb.xz
  %.0.i.i.i1995 = phi i8 [ %i.cog, %bb.xz ], [ %i.cok, %.noexc2000 ] ; 2 uses
  %i.col = getelementptr inbounds nuw i8, ptr %i.cnu, i64 224
  store i8 %.0.i.i.i1995, ptr %i.col, align 8, !tbaa !700
  store i8 1, ptr %i.cny, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994, %._crit_edge.i1996
  %i.com = phi i8 [ %.pre.i1998, %._crit_edge.i1996 ], [ %.0.i.i.i1995, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994 ]
  %i.con = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.cnw, i8 %i.cnx, ptr noundef nonnull align 8 dereferenceable(216) %i.cnu, i8 noundef signext %i.com, ptr noundef nonnull %6, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.jk)
          to label %.thread2769 unwind label %.loopexit2942 ; 0 uses

.thread2769:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yb:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #26
  br label %_ZNSolsEj.exit2148

bb.yc:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 85, ptr %i.ay, align 1, !tbaa !70
  %i.coo = load ptr, ptr %0, align 8, !tbaa !446
  %i.cop = getelementptr i8, ptr %i.coo, i64 -24
  %i.coq = load i64, ptr %i.cop, align 8
  %i.cor = getelementptr inbounds i8, ptr %0, i64 %i.coq
  %i.cos = getelementptr inbounds nuw i8, ptr %i.cor, i64 16
  %i.cot = load i64, ptr %i.cos, align 8, !tbaa !659
  %.not.i2003 = icmp eq i64 %i.cot, 0
  br i1 %.not.i2003, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 unwind label %.loopexit ; 0 uses

bb.ye:                                            ; preds = %bb.yc
  %i.cov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 85)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007: ; preds = %bb.ye, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yf:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.zk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.cow = icmp eq i8 %.0806, 69
  br i1 %i.cow, label %bb.yh, label %bb.yq

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 37, ptr %i.ax, align 1, !tbaa !70
  %i.cox = load ptr, ptr %0, align 8, !tbaa !446
  %i.coy = getelementptr i8, ptr %i.cox, i64 -24
  %i.coz = load i64, ptr %i.coy, align 8
  %i.cpa = getelementptr inbounds i8, ptr %0, i64 %i.coz
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cpa, i64 16
  %i.cpc = load i64, ptr %i.cpb, align 8, !tbaa !659
  %.not.i2008 = icmp eq i64 %i.cpc, 0
  br i1 %.not.i2008, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.cpd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ax, i64 noundef 1)
          to label %bb.yk unwind label %.loopexit

bb.yj:                                            ; preds = %bb.yh
  %i.cpe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.yk unwind label %.loopexit ; 0 uses

bb.yk:                                            ; preds = %bb.yi, %bb.yj
  %.0.i2009 = phi ptr [ %i.cpd, %bb.yi ], [ %0, %bb.yj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 69, ptr %i.aw, align 1, !tbaa !70
  %i.cpf = load ptr, ptr %.0.i2009, align 8, !tbaa !446
  %i.cpg = getelementptr i8, ptr %i.cpf, i64 -24
  %i.cph = load i64, ptr %i.cpg, align 8
  %i.cpi = getelementptr inbounds i8, ptr %.0.i2009, i64 %i.cph
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.cpi, i64 16
  %i.cpk = load i64, ptr %i.cpj, align 8, !tbaa !659
  %.not.i2013 = icmp eq i64 %i.cpk, 0
  br i1 %.not.i2013, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cpl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2009, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %bb.yn unwind label %.loopexit

bb.ym:                                            ; preds = %bb.yk
  %i.cpm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2009, i8 noundef signext 69)
          to label %bb.yn unwind label %.loopexit ; 0 uses

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %.0.i2014 = phi ptr [ %i.cpl, %bb.yl ], [ %.0.i2009, %bb.ym ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cpn = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %i.cpn, ptr %i.av, align 1, !tbaa !70
  %i.cpo = load ptr, ptr %.0.i2014, align 8, !tbaa !446
  %i.cpp = getelementptr i8, ptr %i.cpo, i64 -24
  %i.cpq = load i64, ptr %i.cpp, align 8
  %i.cpr = getelementptr inbounds i8, ptr %.0.i2014, i64 %i.cpq
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpr, i64 16
  %i.cpt = load i64, ptr %i.cps, align 8, !tbaa !659
  %.not.i2018 = icmp eq i64 %i.cpt, 0
  br i1 %.not.i2018, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cpu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2014, ptr noundef nonnull %i.av, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 unwind label %.loopexit ; 0 uses

bb.yp:                                            ; preds = %bb.yn
  %i.cpv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2014, i8 noundef signext %i.cpn)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yq:                                            ; preds = %bb.yg
  %i.cpw = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i2023 = icmp eq i16 %i.cpw, -32768
  br i1 %.not.i2023, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cpx = load i8, ptr %i.iv, align 2, !tbaa !731 ; 4 uses
  %i.cpy = add i8 %i.cpx, -1
  %spec.select.i.i2024 = icmp ult i8 %i.cpy, 12
  br i1 %spec.select.i.i2024, label %bb.ys, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread

bb.ys:                                            ; preds = %bb.yr
  %i.cpz = load i8, ptr %i.iw, align 1, !tbaa !732 ; 3 uses
  %.not8.i2026 = icmp eq i8 %i.cpz, 0
  br i1 %.not8.i2026, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %.not.i.i2027 = icmp eq i8 %i.cpx, 2
  %i.cqa = and i16 %i.cpw, 3
  %i.cqb = icmp eq i16 %i.cqa, 0
  %or.cond.i2028 = and i1 %i.cqb, %.not.i.i2027
  br i1 %or.cond.i2028, label %bb.yu, label %.thread.i.i2029

bb.yu:                                            ; preds = %bb.yt
  %i.cqc = srem i16 %i.cpw, 100
  %.not.i.i.i2032 = icmp ne i16 %i.cqc, 0
  %i.cqd = srem i16 %i.cpw, 400
  %i.cqe = icmp eq i16 %i.cqd, 0
  %or.cond.i.i2033 = or i1 %.not.i.i.i2032, %i.cqe
  br i1 %or.cond.i.i2033, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034, label %.thread.i.i2029

.thread.i.i2029:                                  ; preds = %bb.yu, %bb.yt
  %i.cqf = zext nneg i8 %i.cpx to i64
  %27 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cqf
  %i.cqg = getelementptr i8, ptr %27, i64 -1
  %i.cqh = load i8, ptr %i.cqg, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034: ; preds = %bb.yu, %.thread.i.i2029
  %.sroa.03.0.i.i2031 = phi i8 [ %i.cqh, %.thread.i.i2029 ], [ 29, %bb.yu ]
  %.not2812 = icmp ult i8 %.sroa.03.0.i.i2031, %i.cpz
  br i1 %.not2812, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread: ; preds = %bb.ys, %bb.yr, %bb.yq, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034
  %i.cqi = load ptr, ptr %0, align 8, !tbaa !446
  %i.cqj = getelementptr i8, ptr %i.cqi, i64 -24
  %i.cqk = load i64, ptr %i.cqj, align 8
  %i.cql = getelementptr inbounds i8, ptr %0, i64 %i.cqk ; 2 uses
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cql, i64 32
  %i.cqn = load i32, ptr %i.cqm, align 8, !tbaa !677
  %i.cqo = or i32 %i.cqn, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cql, i32 noundef %i.cqo)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread
  %.pre3446 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3447 = load i8, ptr %i.iv, align 2, !tbaa !731
  %.pre3448 = load i8, ptr %i.iw, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034
  %i.cqp = phi i8 [ %.pre3448, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cpz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ]
  %i.cqq = phi i8 [ %.pre3447, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cpx, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ] ; 3 uses
  %i.cqr = phi i16 [ %.pre3446, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cpw, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ]
  %i.cqs = sext i16 %i.cqr to i32                 ; 2 uses
  %i.cqt = icmp ult i8 %i.cqq, 3
  %.neg.i.i2037 = sext i1 %i.cqt to i32
  %i.cqu = add nsw i32 %.neg.i.i2037, %i.cqs      ; 4 uses
  %i.cqv = zext i8 %i.cqq to i32
  %i.cqw = zext i8 %i.cqp to i32
  %i.cqx = add nsw i32 %i.cqu, -399
  %i.cqy = icmp slt i32 %i.cqu, 0
  %i.cqz = select i1 %i.cqy, i32 %i.cqx, i32 %i.cqu
  %i.cra = sdiv i32 %i.cqz, 400                   ; 2 uses
  %.neg15.i.i2038 = mul nsw i32 %i.cra, -400
  %i.crb = add nsw i32 %.neg15.i.i2038, %i.cqu    ; 3 uses
  %i.crc = icmp ugt i8 %i.cqq, 2
  %.v.i.i2039 = select i1 %i.crc, i32 -3, i32 9
  %i.crd = add nsw i32 %.v.i.i2039, %i.cqv
  %i.cre = mul nsw i32 %i.crd, 153
  %i.crf = add nsw i32 %i.cre, 2
  %i.crg = udiv i32 %i.crf, 5
  %i.crh = mul nsw i32 %i.crb, 365
  %i.cri = lshr i32 %i.crb, 2
  %i.crj = udiv i32 %i.crb, 100
  %i.crk = mul nsw i32 %i.cra, 146097
  %i.crl = add nuw nsw i32 %i.cqw, -719469
  %i.crm = add nsw i32 %i.crl, %i.crg
  %i.crn = add nsw i32 %i.crm, %i.crk
  %i.cro = add nsw i32 %i.crn, %i.cri
  %i.crp = add nsw i32 %i.cro, %i.crh
  %i.crq = sub nsw i32 %i.crp, %i.crj             ; 6 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %.thread.i.i.i.i2074
    i8 79, label %bb.zb
  ]

.thread.i.i.i.i2074:                              ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036
  %i.crr = add nsw i32 %i.crq, 719471             ; 2 uses
  %i.crs = icmp sgt i32 %i.crq, -719472
  %i.crt = add nsw i32 %i.crq, 573375
  %i.cru = select i1 %i.crs, i32 %i.crr, i32 %i.crt
  %i.crv = sdiv i32 %i.cru, 146097                ; 2 uses
  %.neg.i.i2041 = mul nsw i32 %i.crv, -146097
  %i.crw = add nsw i32 %.neg.i.i2041, %i.crr      ; 5 uses
  %i.crx = udiv i32 %i.crw, 1460
  %i.cry = udiv i32 %i.crw, 36524
  %i.crz = udiv i32 %i.crw, 146096
  %.neg2860 = add nsw i32 %i.cry, %i.crw
  %i.csa = add nuw nsw i32 %i.crz, %i.crx
  %i.csb = sub nsw i32 %.neg2860, %i.csa          ; 3 uses
  %i.csc = udiv i32 %i.csb, 365                   ; 2 uses
  %i.csd = mul nsw i32 %i.crv, 400
  %i.cse = add nsw i32 %i.csc, %i.csd
  %i.csf = udiv i32 %i.csb, 1460
  %i.csg = udiv i32 %i.csb, 36500
  %.neg36.i.i2043 = mul i32 %i.csc, -365
  %.neg37.i.i2044 = sub nsw i32 %i.crw, %i.csf
  %.neg25.i.i2045 = add nsw i32 %.neg37.i.i2044, %i.csg
  %i.csh = add i32 %.neg25.i.i2045, %.neg36.i.i2043
  %i.csi = mul i32 %i.csh, 5
  %i.csj = add i32 %i.csi, 2                      ; 2 uses
  %i.csk = udiv i32 %i.csj, 153
  %i.csl = icmp ult i32 %i.csj, 1530
  %.v.i.i2046 = select i1 %i.csl, i32 3, i32 -9
  %i.csm = add nsw i32 %.v.i.i2046, %i.csk
  %i.csn = icmp ult i32 %i.csm, 3
  %i.cso = zext i1 %i.csn to i32
  %i.csp = add nsw i32 %i.cse, %i.cso
  %.sroa.02606.0.extract.trunc = shl i32 %i.csp, 16 ; 2 uses
  %sext = add i32 %.sroa.02606.0.extract.trunc, -65536
  %i.csq = ashr exact i32 %sext, 16               ; 4 uses
  %i.csr = add nsw i32 %i.csq, -399
  %i.css = icmp slt i32 %i.csq, 0
  %i.cst = select i1 %i.css, i32 %i.csr, i32 %i.csq
  %i.csu = sdiv i32 %i.cst, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2069 = mul nsw i32 %i.csu, -400
  %i.csv = add nsw i32 %.neg15.i.i.i.i.i2069, %i.csq ; 3 uses
  %i.csw = mul nsw i32 %i.csv, 365
  %i.csx = lshr i32 %i.csv, 2
  %i.csy = udiv i32 %i.csv, 100
  %i.csz = mul nsw i32 %i.csu, 146097
  %i.cta = add nsw i32 %i.csz, 275
  %i.ctb = add nsw i32 %i.cta, %i.csx
  %i.ctc = add nsw i32 %i.ctb, %i.csw
  %i.ctd = sub nsw i32 %i.ctc, %i.csy             ; 3 uses
  %i.cte = icmp sgt i32 %i.ctd, 719433
  %.in.i.i.i.i2071.v = select i1 %i.cte, i32 -719434, i32 -719438
  %.in.i.i.i.i2071 = add nsw i32 %i.ctd, %.in.i.i.i.i2071.v
  %i.ctf = urem i32 %.in.i.i.i.i2071, 7           ; 3 uses
  %i.ctg = icmp samesign ult i32 %i.ctf, 4
  %.v = select i1 %i.ctg, i32 -10, i32 -4
  %i.cth = add nsw i32 %i.ctf, %.v
  %.fr.i.i.i2073 = freeze i32 %i.cth              ; 2 uses
  %i.cti = srem i32 %.fr.i.i.i2073, 7
  %i.ctj = sub nsw i32 %i.ctd, %i.ctf
  %i.ctk = add nsw i32 %i.ctj, -719430
  %i.ctl = add i32 %i.ctk, %.fr.i.i.i2073
  %i.ctm = sub i32 %i.ctl, %i.cti                 ; 2 uses
  %i.ctn = icmp slt i32 %i.crq, %i.ctm
  br i1 %i.ctn, label %.thread.i.i.i.i2101, label %bb.yv

.thread.i.i.i.i2101:                              ; preds = %.thread.i.i.i.i2074
  %sext2817 = add i32 %.sroa.02606.0.extract.trunc, -131072
  %i.cto = ashr exact i32 %sext2817, 16           ; 4 uses
  %i.ctp = add nsw i32 %i.cto, -399
  %i.ctq = icmp slt i32 %i.cto, 0
  %i.ctr = select i1 %i.ctq, i32 %i.ctp, i32 %i.cto
  %i.cts = sdiv i32 %i.ctr, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2096 = mul nsw i32 %i.cts, -400
  %i.ctt = add nsw i32 %.neg15.i.i.i.i.i2096, %i.cto ; 3 uses
  %i.ctu = mul nsw i32 %i.ctt, 365
  %i.ctv = lshr i32 %i.ctt, 2
  %i.ctw = udiv i32 %i.ctt, 100
  %i.ctx = mul nsw i32 %i.cts, 146097
  %i.cty = add nsw i32 %i.ctx, 275
  %i.ctz = add nsw i32 %i.cty, %i.ctv
  %i.cua = add nsw i32 %i.ctz, %i.ctu
  %i.cub = sub nsw i32 %i.cua, %i.ctw             ; 3 uses
  %i.cuc = icmp sgt i32 %i.cub, 719433
  %.in.i.i.i.i2098.v = select i1 %i.cuc, i32 -719434, i32 -719438
  %.in.i.i.i.i2098 = add nsw i32 %i.cub, %.in.i.i.i.i2098.v
  %i.cud = urem i32 %.in.i.i.i.i2098, 7           ; 3 uses
  %i.cue = icmp samesign ult i32 %i.cud, 4
  %.v3238 = select i1 %i.cue, i32 -10, i32 -4
  %i.cuf = add nsw i32 %i.cud, %.v3238
  %.fr.i.i.i2100 = freeze i32 %i.cuf              ; 2 uses
  %i.cug = srem i32 %.fr.i.i.i2100, 7
  %i.cuh = sub nsw i32 %i.cub, %i.cud
  %i.cui = add nsw i32 %i.cuh, -719430
  %i.cuj = add i32 %i.cui, %.fr.i.i.i2100
  %i.cuk = sub i32 %i.cuj, %i.cug
  br label %bb.yv

bb.yv:                                            ; preds = %.thread.i.i.i.i2101, %.thread.i.i.i.i2074
  %.sroa.02610.0 = phi i32 [ %i.cuk, %.thread.i.i.i.i2101 ], [ %i.ctm, %.thread.i.i.i.i2074 ]
  %i.cul = sub nsw i32 %i.crq, %.sroa.02610.0     ; 2 uses
  %i.cum = sdiv i32 %i.cul, 7
  %i.cun = add nsw i32 %i.cum, 1
  %i.cuo = icmp slt i32 %i.cul, 63
  br i1 %i.cuo, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 48, ptr %i.au, align 1, !tbaa !70
  %i.cup = load ptr, ptr %0, align 8, !tbaa !446
  %i.cuq = getelementptr i8, ptr %i.cup, i64 -24
  %i.cur = load i64, ptr %i.cuq, align 8
  %i.cus = getelementptr inbounds i8, ptr %0, i64 %i.cur
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cus, i64 16
  %i.cuu = load i64, ptr %i.cut, align 8, !tbaa !659
  %.not.i2108 = icmp eq i64 %i.cuu, 0
  br i1 %.not.i2108, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cuv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112 unwind label %bb.yz ; 0 uses

bb.yy:                                            ; preds = %bb.yw
  %i.cuw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112 unwind label %bb.yz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112: ; preds = %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.za
  %i.cux = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.za:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112, %bb.yv
  %i.cuy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cun)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.yz ; 0 uses

end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  br label %bb.aix

bb.aaa:                                           ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i8 37, ptr %i.as, align 1, !tbaa !70
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.cxa, i64 16
  %i.cye = load i64, ptr %i.cyd, align 8, !tbaa !659
  %.not.i2162 = icmp eq i64 %i.cye, 0
  br i1 %.not.i2162, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cyf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %bb.aad unwind label %bb.zq

bb.aac:                                           ; preds = %bb.aaa
  %i.cyg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aad unwind label %bb.zq    ; 0 uses

bb.aad:                                           ; preds = %bb.aab, %bb.aac
  %.0.i2163 = phi ptr [ %i.cyf, %bb.aab ], [ %0, %bb.aac ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %.0806, ptr %i.ar, align 1, !tbaa !70
  %i.cyh = load ptr, ptr %.0.i2163, align 8, !tbaa !446
  %i.cyi = getelementptr i8, ptr %i.cyh, i64 -24
  %i.cyj = load i64, ptr %i.cyi, align 8
  %i.cyk = getelementptr inbounds i8, ptr %.0.i2163, i64 %i.cyj
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 16
  %i.cym = load i64, ptr %i.cyl, align 8, !tbaa !659
  %.not.i2167 = icmp eq i64 %i.cym, 0
  br i1 %.not.i2167, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cyn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2163, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %bb.aag unwind label %bb.zq

bb.aaf:                                           ; preds = %bb.aad
  %i.cyo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2163, i8 noundef signext %.0806)
          to label %bb.aag unwind label %bb.zq    ; 0 uses

bb.aag:                                           ; preds = %bb.aae, %bb.aaf
  %.0.i2168 = phi ptr [ %i.cyn, %bb.aae ], [ %.0.i2163, %bb.aaf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cyp = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.cyp, ptr %i.aq, align 1, !tbaa !70
  %i.cyq = load ptr, ptr %.0.i2168, align 8, !tbaa !446
  %i.cyr = getelementptr i8, ptr %i.cyq, i64 -24
  %i.cys = load i64, ptr %i.cyr, align 8
  %i.cyt = getelementptr inbounds i8, ptr %.0.i2168, i64 %i.cys
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cyt, i64 16
  %i.cyv = load i64, ptr %i.cyu, align 8, !tbaa !659
  %.not.i2172 = icmp eq i64 %i.cyv, 0
  br i1 %.not.i2172, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cyw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2168, ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 unwind label %bb.zq ; 0 uses

bb.aai:                                           ; preds = %bb.aag
  %i.cyx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2168, i8 noundef signext %i.cyp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 unwind label %bb.zq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176: ; preds = %bb.aai, %bb.aah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aaj:                                           ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 119, ptr %i.ap, align 1, !tbaa !70
  %i.cyy = load ptr, ptr %0, align 8, !tbaa !446
  %i.cyz = getelementptr i8, ptr %i.cyy, i64 -24
  %i.cza = load i64, ptr %i.cyz, align 8
  %i.czb = getelementptr inbounds i8, ptr %0, i64 %i.cza
  %i.czc = getelementptr inbounds nuw i8, ptr %i.czb, i64 16
  %i.czd = load i64, ptr %i.czc, align 8, !tbaa !659
  %.not.i2177 = icmp eq i64 %i.czd, 0
  br i1 %.not.i2177, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.cze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 unwind label %.loopexit ; 0 uses

bb.aal:                                           ; preds = %bb.aaj
  %i.czf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 119)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181: ; preds = %bb.aal, %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aam:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aca, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.czg = icmp eq i8 %.0806, 69
  br i1 %i.czg, label %bb.aao, label %bb.aax

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 37, ptr %i.ao, align 1, !tbaa !70
  %i.czh = load ptr, ptr %0, align 8, !tbaa !446
  %i.czi = getelementptr i8, ptr %i.czh, i64 -24
  %i.czj = load i64, ptr %i.czi, align 8
  %i.czk = getelementptr inbounds i8, ptr %0, i64 %i.czj
  %i.czl = getelementptr inbounds nuw i8, ptr %i.czk, i64 16
  %i.czm = load i64, ptr %i.czl, align 8, !tbaa !659
  %.not.i2182 = icmp eq i64 %i.czm, 0
  br i1 %.not.i2182, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.czn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %bb.aar unwind label %.loopexit

bb.aaq:                                           ; preds = %bb.aao
  %i.czo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aar unwind label %.loopexit ; 0 uses

bb.aar:                                           ; preds = %bb.aap, %bb.aaq
  %.0.i2183 = phi ptr [ %i.czn, %bb.aap ], [ %0, %bb.aaq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 69, ptr %i.an, align 1, !tbaa !70
  %i.czp = load ptr, ptr %.0.i2183, align 8, !tbaa !446
  %i.czq = getelementptr i8, ptr %i.czp, i64 -24
  %i.czr = load i64, ptr %i.czq, align 8
  %i.czs = getelementptr inbounds i8, ptr %.0.i2183, i64 %i.czr
  %i.czt = getelementptr inbounds nuw i8, ptr %i.czs, i64 16
  %i.czu = load i64, ptr %i.czt, align 8, !tbaa !659
  %.not.i2187 = icmp eq i64 %i.czu, 0
  br i1 %.not.i2187, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.czv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2183, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %bb.aau unwind label %.loopexit

bb.aat:                                           ; preds = %bb.aar
  %i.czw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2183, i8 noundef signext 69)
          to label %bb.aau unwind label %.loopexit ; 0 uses

bb.aau:                                           ; preds = %bb.aas, %bb.aat
  %.0.i2188 = phi ptr [ %i.czv, %bb.aas ], [ %.0.i2183, %bb.aat ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.czx = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %i.czx, ptr %i.am, align 1, !tbaa !70
  %i.czy = load ptr, ptr %.0.i2188, align 8, !tbaa !446
  %i.czz = getelementptr i8, ptr %i.czy, i64 -24
  %i.daa = load i64, ptr %i.czz, align 8
  %i.dab = getelementptr inbounds i8, ptr %.0.i2188, i64 %i.daa
  %i.dac = getelementptr inbounds nuw i8, ptr %i.dab, i64 16
  %i.dad = load i64, ptr %i.dac, align 8, !tbaa !659
  %.not.i2192 = icmp eq i64 %i.dad, 0
  br i1 %.not.i2192, label %bb.aaw, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2188, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 unwind label %.loopexit ; 0 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.daf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2188, i8 noundef signext %i.czx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196: ; preds = %bb.aaw, %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aax:                                           ; preds = %bb.aan
  %i.dag = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i2197 = icmp eq i16 %i.dag, -32768
  br i1 %.not.i2197, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.dah = load i8, ptr %i.iv, align 2, !tbaa !731 ; 4 uses
  %i.dai = add i8 %i.dah, -1
  %spec.select.i.i2198 = icmp ult i8 %i.dai, 12
  br i1 %spec.select.i.i2198, label %bb.aaz, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread

bb.aaz:                                           ; preds = %bb.aay
  %i.daj = load i8, ptr %i.iw, align 1, !tbaa !732 ; 3 uses
  %.not8.i2200 = icmp eq i8 %i.daj, 0
  br i1 %.not8.i2200, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %.not.i.i2201 = icmp eq i8 %i.dah, 2
  %i.dak = and i16 %i.dag, 3
  %i.dal = icmp eq i16 %i.dak, 0
  %or.cond.i2202 = and i1 %i.dal, %.not.i.i2201
  br i1 %or.cond.i2202, label %bb.abb, label %.thread.i.i2203

bb.abb:                                           ; preds = %bb.aba
  %i.dam = srem i16 %i.dag, 100
  %.not.i.i.i2206 = icmp ne i16 %i.dam, 0
  %i.dan = srem i16 %i.dag, 400
  %i.dao = icmp eq i16 %i.dan, 0
  %or.cond.i.i2207 = or i1 %.not.i.i.i2206, %i.dao
  br i1 %or.cond.i.i2207, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208, label %.thread.i.i2203

.thread.i.i2203:                                  ; preds = %bb.abb, %bb.aba
  %i.dap = zext nneg i8 %i.dah to i64
  %28 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.dap
  %i.daq = getelementptr i8, ptr %28, i64 -1
  %i.dar = load i8, ptr %i.daq, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208: ; preds = %bb.abb, %.thread.i.i2203
  %.sroa.03.0.i.i2205 = phi i8 [ %i.dar, %.thread.i.i2203 ], [ 29, %bb.abb ]
  %.not2806 = icmp ult i8 %.sroa.03.0.i.i2205, %i.daj
  br i1 %.not2806, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread: ; preds = %bb.aaz, %bb.aay, %bb.aax, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208
  %i.das = load ptr, ptr %0, align 8, !tbaa !446
  %i.dat = getelementptr i8, ptr %i.das, i64 -24
  %i.dau = load i64, ptr %i.dat, align 8
  %i.dav = getelementptr inbounds i8, ptr %0, i64 %i.dau ; 2 uses
  %i.daw = getelementptr inbounds nuw i8, ptr %i.dav, i64 32
  %i.dax = load i32, ptr %i.daw, align 8, !tbaa !677
  %i.day = or i32 %i.dax, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dav, i32 noundef %i.day)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge unwind label %bb.abc

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread
  %.pre3443 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3444 = load i8, ptr %i.iv, align 2, !tbaa !731
  %.pre3445 = load i8, ptr %i.iw, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210

bb.abc:                                           ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread
  %i.daz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208
  %i.dba = phi i8 [ %.pre3445, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.daj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ]
  %i.dbb = phi i8 [ %.pre3444, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.dah, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ] ; 3 uses
  %i.dbc = phi i16 [ %.pre3443, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.dag, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ] ; 2 uses
  %i.dbd = sext i16 %i.dbc to i32                 ; 4 uses
  %i.dbe = icmp ult i8 %i.dbb, 3
  %.neg.i.i2211 = sext i1 %i.dbe to i32
  %i.dbf = add nsw i32 %.neg.i.i2211, %i.dbd      ; 4 uses
  %i.dbg = zext i8 %i.dbb to i32
  %i.dbh = zext i8 %i.dba to i32
  %i.dbi = add nsw i32 %i.dbf, -399
  %i.dbj = icmp slt i32 %i.dbf, 0
  %i.dbk = select i1 %i.dbj, i32 %i.dbi, i32 %i.dbf
  %i.dbl = sdiv i32 %i.dbk, 400                   ; 2 uses
  %.neg15.i.i2212 = mul nsw i32 %i.dbl, -400
  %i.dbm = add nsw i32 %.neg15.i.i2212, %i.dbf    ; 3 uses
  %i.dbn = icmp ugt i8 %i.dbb, 2
  %.v.i.i2213 = select i1 %i.dbn, i32 -3, i32 9
  %i.dbo = add nsw i32 %.v.i.i2213, %i.dbg
  %i.dbp = mul nsw i32 %i.dbo, 153
  %i.dbq = add nsw i32 %i.dbp, 2
  %i.dbr = udiv i32 %i.dbq, 5
  %i.dbs = mul nsw i32 %i.dbm, 365
  %i.dbt = lshr i32 %i.dbm, 2
  %i.dbu = udiv i32 %i.dbm, 100
  %i.dbv = mul nsw i32 %i.dbl, 146097
  %i.dbw = add nuw nsw i32 %i.dbh, -719469
  %i.dbx = add nsw i32 %i.dbw, %i.dbr
  %i.dby = add nsw i32 %i.dbx, %i.dbv
  %i.dbz = add nsw i32 %i.dby, %i.dbt
  %i.dca = add nsw i32 %i.dbz, %i.dbs
  %i.dcb = sub nsw i32 %i.dca, %i.dbu             ; 3 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %bb.abd
    i8 79, label %bb.abr
  ]

bb.abd:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210
  %i.dcc = add nsw i32 %i.dbd, -1                 ; 2 uses
  %i.dcd = add nsw i32 %i.dbd, -400
  %i.dce = icmp slt i16 %i.dbc, 1
  %i.dcf = select i1 %i.dce, i32 %i.dcd, i32 %i.dcc
  %i.dcg = sdiv i32 %i.dcf, 400                   ; 2 uses
  %.neg15.i.i.i.i2222 = mul nsw i32 %i.dcg, -400
  %i.dch = add nsw i32 %.neg15.i.i.i.i2222, %i.dcc ; 3 uses
  %i.dci = mul nsw i32 %i.dch, 365
  %i.dcj = lshr i32 %i.dch, 2
  %i.dck = udiv i32 %i.dch, 100
  %i.dcl = mul nsw i32 %i.dcg, 146097
  %i.dcm = add nsw i32 %i.dcl, -719162
  %i.dcn = add nsw i32 %i.dcm, %i.dcj
  %i.dco = add nsw i32 %i.dcn, %i.dci
  %i.dcp = sub nsw i32 %i.dco, %i.dck             ; 4 uses
  %i.dcq = icmp sgt i32 %i.dcp, -5
  %i.dcr = add nsw i32 %i.dcp, 4
  %.in.i.i.i.i2225 = select i1 %i.dcq, i32 %i.dcr, i32 %i.dcp
  %i.dcs = urem i32 %.in.i.i.i.i2225, 7           ; 3 uses
  %i.dct = sub nsw i32 1, %i.dcs                  ; 2 uses
  %i.dcu = sub nuw nsw i32 -5, %i.dcs
  %i.dcv = icmp samesign ugt i32 %i.dcs, 1
  %i.dcw = select i1 %i.dcv, i32 %i.dcu, i32 %i.dct
  %.fr.i.i.i2226 = freeze i32 %i.dcw              ; 2 uses
  %i.dcx = srem i32 %.fr.i.i.i2226, 7
  %i.dcy = add nsw i32 %i.dct, %i.dcp
  %i.dcz = sub i32 %i.dcy, %.fr.i.i.i2226
  %i.dda = add i32 %i.dcz, %i.dcx                 ; 2 uses
  %i.ddb = icmp slt i32 %i.dcb, %i.dda
  br i1 %i.ddb, label %bb.abe, label %bb.abl

bb.abe:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 48, ptr %i.al, align 1, !tbaa !70
  %i.ddc = load ptr, ptr %0, align 8, !tbaa !446
  %i.ddd = getelementptr i8, ptr %i.ddc, i64 -24
  %i.dde = load i64, ptr %i.ddd, align 8
  %i.ddf = getelementptr inbounds i8, ptr %0, i64 %i.dde
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.ddf, i64 16
  %i.ddh = load i64, ptr %i.ddg, align 8, !tbaa !659
  %.not.i2231 = icmp eq i64 %i.ddh, 0
  br i1 %.not.i2231, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ddi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %bb.abh unwind label %bb.abk

bb.abg:                                           ; preds = %bb.abe
  %i.ddj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.abh unwind label %bb.abk   ; 0 uses

bb.abh:                                           ; preds = %bb.abf, %bb.abg
  %.0.i2232 = phi ptr [ %i.ddi, %bb.abf ], [ %0, %bb.abg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 48, ptr %i.ak, align 1, !tbaa !70
  %i.ddk = load ptr, ptr %.0.i2232, align 8, !tbaa !446
  %i.ddl = getelementptr i8, ptr %i.ddk, i64 -24
  %i.ddm = load i64, ptr %i.ddl, align 8
  %i.ddn = getelementptr inbounds i8, ptr %.0.i2232, i64 %i.ddm
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.ddn, i64 16
  %i.ddp = load i64, ptr %i.ddo, align 8, !tbaa !659
  %.not.i2236 = icmp eq i64 %i.ddp, 0
  br i1 %.not.i2236, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.ddq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2232, ptr noundef nonnull %i.ak, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 unwind label %bb.abk ; 0 uses

bb.abj:                                           ; preds = %bb.abh
  %i.ddr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2232, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 unwind label %bb.abk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240: ; preds = %bb.abj, %bb.abi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.abk:                                           ; preds = %bb.abj, %bb.abi, %bb.abg, %bb.abf
  %i.dds = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abl:                                           ; preds = %bb.abd
  %i.ddt = sub nsw i32 %i.dcb, %i.dda             ; 2 uses
  %i.ddu = udiv i32 %i.ddt, 7
  %i.ddv = add nuw nsw i32 %i.ddu, 1
  %i.ddw = icmp ult i32 %i.ddt, 63
  br i1 %i.ddw, label %bb.abm, label %bb.abq

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 48, ptr %i.aj, align 1, !tbaa !70
  %i.ddx = load ptr, ptr %0, align 8, !tbaa !446
  %i.ddy = getelementptr i8, ptr %i.ddx, i64 -24
  %i.ddz = load i64, ptr %i.ddy, align 8
  %i.dea = getelementptr inbounds i8, ptr %0, i64 %i.ddz
  %i.deb = getelementptr inbounds nuw i8, ptr %i.dea, i64 16
  %i.dec = load i64, ptr %i.deb, align 8, !tbaa !659
  %.not.i2243 = icmp eq i64 %i.dec, 0
  br i1 %.not.i2243, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.ded = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247 unwind label %bb.abp ; 0 uses

bb.abo:                                           ; preds = %bb.abm
  %i.dee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247 unwind label %bb.abp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247: ; preds = %bb.abo, %bb.abn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn, %bb.abq
  %i.def = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247, %bb.abl
  %i.deg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ddv)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.abp ; 0 uses

bb.abr:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #26
  store i8 37, ptr %i.fq, align 1, !tbaa !70
  store i8 79, ptr %i.ix, align 1, !tbaa !70
  %i.deh = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.deh, ptr %i.iy, align 1, !tbaa !70
  %i.dei = add nsw i32 %i.dbd, -1900
  store i32 %i.dei, ptr %i.ii, align 4, !tbaa !737
  %i.dej = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.abs unwind label %.loopexit2927
end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.0806, ptr %i.d, align 1, !tbaa !70
  %i.dwb = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwc = getelementptr i8, ptr %i.dwb, i64 -24
  %i.dwd = load i64, ptr %i.dwc, align 8
  %i.dwe = getelementptr inbounds i8, ptr %0, i64 %i.dwd
  %i.dwf = getelementptr inbounds nuw i8, ptr %i.dwe, i64 16
  %i.dwg = load i64, ptr %i.dwf, align 8, !tbaa !659
  %.not.i2501 = icmp eq i64 %i.dwg, 0
  br i1 %.not.i2501, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dwh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505 unwind label %.loopexit ; 0 uses

bb.aih:                                           ; preds = %bb.aif
  %i.dwi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505: ; preds = %bb.aih, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aii

bb.aii:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505, %bb.aie
  %i.dwj = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dwj, ptr %i.c, align 1, !tbaa !70
  %i.dwk = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwl = getelementptr i8, ptr %i.dwk, i64 -24
  %i.dwm = load i64, ptr %i.dwl, align 8
  %i.dwn = getelementptr inbounds i8, ptr %0, i64 %i.dwm
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwn, i64 16
  %i.dwp = load i64, ptr %i.dwo, align 8, !tbaa !659
  %.not.i2506 = icmp eq i64 %i.dwp, 0
  br i1 %.not.i2506, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dwq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dwr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dwj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504: ; preds = %bb.agk, %bb.agh, %bb.lc, %bb.ko, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941, %bb.agz, %bb.aga, %.thread2788, %.thread2777, %.thread2769, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145, %bb.fi, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089, %bb.dw, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ 0, %bb.lc ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ci ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dw ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ 0, %bb.fi ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2769 ], [ 0, %.thread2777 ], [ 0, %.thread2788 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.kz, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.ko ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ null, %bb.lc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ci ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dw ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ null, %bb.fi ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2769 ], [ null, %.thread2777 ], [ null, %.thread2788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.ko ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.1795, %bb.lc ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ci ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dw ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ %.0794, %bb.fi ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2769 ], [ %.0794, %.thread2777 ], [ %.0794, %.thread2788 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.ko ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dws = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !745

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !70
  %i.dwt = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwu = getelementptr i8, ptr %i.dwt, i64 -24
  %i.dwv = load i64, ptr %i.dwu, align 8
  %i.dww = getelementptr inbounds i8, ptr %0, i64 %i.dwv
  %i.dwx = getelementptr inbounds nuw i8, ptr %i.dww, i64 16
  %i.dwy = load i64, ptr %i.dwx, align 8, !tbaa !659
  %.not.i2511 = icmp eq i64 %i.dwy, 0
  br i1 %.not.i2511, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dwz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2148, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !70
  %i.dxb = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxc = getelementptr i8, ptr %i.dxb, i64 -24
  %i.dxd = load i64, ptr %i.dxc, align 8
  %i.dxe = getelementptr inbounds i8, ptr %0, i64 %i.dxd
  %i.dxf = getelementptr inbounds nuw i8, ptr %i.dxe, i64 16
  %i.dxg = load i64, ptr %i.dxf, align 8, !tbaa !659
  %.not.i2516 = icmp eq i64 %i.dxg, 0
  br i1 %.not.i2516, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dxi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2148

_ZNSolsEj.exit2148:                               ; preds = %bb.bz, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dxj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dxk = load i32, ptr %i.dxj, align 4, !tbaa !739
  %i.dxl = and i32 %i.dxk, 8192
  %.not.i2521 = icmp eq i32 %i.dxl, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dxm = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dxn = icmp eq i32 %i.dxm, 0
  br i1 %i.dxn, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dxo = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dxo, i64 32
  %i.dxq = load i32, ptr %i.dxp, align 8, !tbaa !677
  %i.dxr = icmp eq i32 %i.dxq, 0
  br i1 %i.dxr, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxo, i64 232
  %i.dxt = load ptr, ptr %i.dxs, align 8, !tbaa !727 ; 2 uses
  %i.dxu = load ptr, ptr %i.dxt, align 8, !tbaa !446
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxu, i64 48
  %i.dxw = load ptr, ptr %i.dxv, align 8
  %i.dxx = invoke noundef i32 %i.dxw(ptr noundef nonnull align 8 dereferenceable(64) %i.dxt)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dxy = landingpad { ptr, i32 }
          catch ptr null
  %i.dxz = extractvalue { ptr, i32 } %i.dxy, 0
  call void @__clang_call_terminate(ptr %i.dxz) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lb, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.drw, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cmx, %bb.xr ], [ %i.tx, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.blu, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.def, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.bxz, %bb.st ], [ %i.bxx, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.dds, %bb.abk ], [ %i.cjt, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.daz, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cux, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.bih, %bb.nh ], [ %i.cgt, %bb.wd ], [ %i.bsm, %bb.qu ], [ %i.cxe, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.djq, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dpn, %bb.afk ], [ %i.brw, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cmk, %bb.xm ], [ %i.aze, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.la, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %2 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.l
  %i.m = getelementptr i8, ptr %2, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.n, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !746
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !746
  %i.t = icmp ult i8 %i.s, 7
  br i1 %i.t, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !446
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !677
  %i.ag = or i32 %i.af, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ai, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.aj = and i16 %i.a, 3
  %i.ak = icmp eq i16 %i.aj, 0
  %or.cond.i14 = and i1 %i.ak, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.al = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.al, 0
  %i.am = srem i16 %i.a, 400
  %i.an = icmp eq i16 %i.am, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.an
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.ao = zext nneg i8 %i.c to i64
  %3 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.ao
  %i.ap = getelementptr i8, ptr %3, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aq, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ai
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ar = sext i16 %i.a to i32
  %i.as = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.as to i32
  %i.at = add nsw i32 %.neg.i.i, %i.ar            ; 4 uses
  %i.au = zext nneg i8 %i.c to i32
  %i.av = zext i8 %i.ai to i32
  %i.aw = add nsw i32 %i.at, -399
  %i.ax = icmp slt i32 %i.at, 0
  %i.ay = select i1 %i.ax, i32 %i.aw, i32 %i.at
  %i.az = sdiv i32 %i.ay, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.az, -400
  %i.ba = add nsw i32 %.neg15.i.i, %i.at          ; 3 uses
  %i.bb = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bb, i32 -3, i32 9
  %i.bc = add nsw i32 %.v.i.i, %i.au
  %i.bd = mul nsw i32 %i.bc, 153
  %i.be = add nsw i32 %i.bd, 2
  %i.bf = udiv i32 %i.be, 5
  %i.bg = mul nsw i32 %i.ba, 365
  %i.bh = lshr i32 %i.ba, 2
  %i.bi = udiv i32 %i.ba, 100
  %i.bj = mul nsw i32 %i.az, 146097
  %i.bk = add nuw nsw i32 %i.av, -719469
  %i.bl = add nsw i32 %i.bk, %i.bf
  %i.bm = add nsw i32 %i.bl, %i.bj
  %i.bn = add nsw i32 %i.bm, %i.bh
  %i.bo = add nsw i32 %i.bn, %i.bg
  %i.bp = sub nsw i32 %i.bo, %i.bi                ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, -5
  %i.br = add nsw i32 %i.bp, 4
  %.in.i.i = select i1 %i.bq, i32 %i.br, i32 %i.bp
  %i.bs = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !746 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 7
  %i.bx = icmp ne i8 %i.bv, %i.bt
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !446
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !677
  %i.ce = or i32 %i.cd, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !70
  %i.ch = zext i8 %i.cg to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %i.ch, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bs, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %i.ci = srem i32 %.fr.i, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %i.ci, %bb.k ]
  ret i32 %.1
}

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !739
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !677
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !727  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !446
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit unwind label %bb.e, !inline_history !743 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #26
  ret void

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !716, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
end_hunk_6
begin_hunk_7_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  store i8 37, ptr %i.ew, align 1, !tbaa !70
  %i.ow = load ptr, ptr %0, align 8, !tbaa !446
  %i.ox = getelementptr i8, ptr %i.ow, i64 -24
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds i8, ptr %0, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !659
  %.not.i998 = icmp eq i64 %i.pb, 0
  br i1 %.not.i998, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %bb.av unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i999 = phi ptr [ %i.pc, %bb.at ], [ %0, %bb.au ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store i8 %.0806, ptr %i.ev, align 1, !tbaa !70
  %i.pe = load ptr, ptr %.0.i999, align 8, !tbaa !446
  %i.pf = getelementptr i8, ptr %i.pe, i64 -24
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %.0.i999, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !659
  %.not.i1003 = icmp eq i64 %i.pj, 0
  br i1 %.not.i1003, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i999, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i999, i8 noundef signext %.0806)
          to label %bb.ay unwind label %.loopexit ; 0 uses

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0.i1004 = phi ptr [ %i.pk, %bb.aw ], [ %.0.i999, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.pm = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i8 %i.pm, ptr %i.eu, align 1, !tbaa !70
  %i.pn = load ptr, ptr %.0.i1004, align 8, !tbaa !446
  %i.po = getelementptr i8, ptr %i.pn, i64 -24
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = getelementptr inbounds i8, ptr %.0.i1004, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !659
  %.not.i1008 = icmp eq i64 %i.ps, 0
  br i1 %.not.i1008, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1004, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 unwind label %.loopexit ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1004, i8 noundef signext %i.pm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.bb:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i8 %i.la, ptr %i.et, align 1, !tbaa !70
  %i.pv = load ptr, ptr %0, align 8, !tbaa !446
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr %0, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !659
  %.not.i1013 = icmp eq i64 %i.qa, 0
  br i1 %.not.i1013, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.et, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 unwind label %.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bb
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.be:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.ck, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qd = icmp eq i8 %.0806, 79
  br i1 %i.qd, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i8 37, ptr %i.es, align 1, !tbaa !70
  %i.qe = load ptr, ptr %0, align 8, !tbaa !446
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %0, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !659
  %.not.i1018 = icmp eq i64 %i.qj, 0
  br i1 %.not.i1018, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.bj unwind label %.loopexit ; 0 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.0.i1019 = phi ptr [ %i.qk, %bb.bh ], [ %0, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store i8 79, ptr %i.er, align 1, !tbaa !70
  %i.qm = load ptr, ptr %.0.i1019, align 8, !tbaa !446
  %i.qn = getelementptr i8, ptr %i.qm, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %.0.i1019, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !659
  %.not.i1023 = icmp eq i64 %i.qr, 0
  br i1 %.not.i1023, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1019, ptr noundef nonnull %i.er, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1019, i8 noundef signext 79)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i1024 = phi ptr [ %i.qs, %bb.bk ], [ %.0.i1019, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.qu = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i8 %i.qu, ptr %i.eq, align 1, !tbaa !70
  %i.qv = load ptr, ptr %.0.i1024, align 8, !tbaa !446
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr %.0.i1024, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !659
  %.not.i1028 = icmp eq i64 %i.ra, 0
  br i1 %.not.i1028, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1024, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 unwind label %.loopexit ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1024, i8 noundef signext %i.qu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.bp:                                            ; preds = %bb.bf
  %i.rd = load i16, ptr %2, align 8, !tbaa !730   ; 4 uses
  %.not.i1033 = icmp eq i16 %i.rd, -32768
  br i1 %.not.i1033, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.re = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.rf = add i8 %i.re, -1
  %spec.select.i.i1034 = icmp ult i8 %i.rf, 12
  br i1 %spec.select.i.i1034, label %bb.br, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.rg = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i = icmp eq i8 %i.rg, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not.i.i = icmp eq i8 %i.re, 2
  %i.rh = and i16 %i.rd, 3
  %i.ri = icmp eq i16 %i.rh, 0
  %or.cond.i = and i1 %i.ri, %.not.i.i
  br i1 %or.cond.i, label %bb.bt, label %.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.rj = srem i16 %i.rd, 100
  %.not.i.i.i1036 = icmp ne i16 %i.rj, 0
  %i.rk = srem i16 %i.rd, 400
  %i.rl = icmp eq i16 %i.rk, 0
  %or.cond.i.i = or i1 %.not.i.i.i1036, %i.rl
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs
  %i.rm = zext nneg i8 %i.re to i64
  %20 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.rm
  %i.rn = getelementptr i8, ptr %20, i64 -1
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.bt, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.ro, %.thread.i.i ], [ 29, %bb.bt ]
  %.not2837 = icmp ult i8 %.sroa.03.0.i.i, %i.rg
  br i1 %.not2837, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rp = load ptr, ptr %0, align 8, !tbaa !446
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds i8, ptr %0, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !677
  %i.rv = or i32 %i.ru, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rs, i32 noundef %i.rv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %.pre3470 = load i8, ptr %.0731, align 1, !tbaa !70
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rw = phi i8 [ %.pre3470, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ]
  %i.rx = icmp eq i8 %i.rw, 99
  br i1 %i.rx, label %bb.bu, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039

bb.bu:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.ry = load i8, ptr %i.gw, align 8, !tbaa !761, !range !86, !noundef !87
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sa = load ptr, ptr %0, align 8, !tbaa !446
  %i.sb = getelementptr i8, ptr %i.sa, i64 -24
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds i8, ptr %0, i64 %i.sc ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !677
  %i.sg = or i32 %i.sf, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sd, i32 noundef %i.sg)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge: ; preds = %bb.bv
  %.pre3471 = load i8, ptr %.0731, align 1, !tbaa !70
  %i.sh = icmp eq i8 %.pre3471, 99
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge, %bb.bu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.si = phi i1 [ %i.sh, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge ], [ true, %bb.bu ], [ false, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.sj = load i16, ptr %2, align 8, !tbaa !730
  %i.sk = sext i16 %i.sj to i32                   ; 2 uses
  %i.sl = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.sm = icmp ult i8 %i.sl, 3
  %.neg.i.i = sext i1 %i.sm to i32
  %i.sn = add nsw i32 %.neg.i.i, %i.sk            ; 4 uses
  %i.so = zext i8 %i.sl to i32                    ; 2 uses
  %i.sp = load i8, ptr %i.ix, align 1, !tbaa !732
  %i.sq = zext i8 %i.sp to i32                    ; 2 uses
  %i.sr = add nsw i32 %i.sn, -399
  %i.ss = icmp slt i32 %i.sn, 0
  %i.st = select i1 %i.ss, i32 %i.sr, i32 %i.sn
  %i.su = sdiv i32 %i.st, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.su, -400
  %i.sv = add nsw i32 %.neg15.i.i, %i.sn          ; 3 uses
  %i.sw = icmp ugt i8 %i.sl, 2
  %.v.i.i = select i1 %i.sw, i32 -3, i32 9
  %i.sx = add nsw i32 %.v.i.i, %i.so
  %i.sy = mul nsw i32 %i.sx, 153
  %i.sz = add nsw i32 %i.sy, 2
  %i.ta = udiv i32 %i.sz, 5
  %i.tb = lshr i32 %i.sv, 2
  %i.tc = udiv i32 %i.sv, 100
  br i1 %i.si, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039
  %.sroa.0.0.copyload.i.i1040 = load i64, ptr %i.iq, align 8, !tbaa !408
  %i.td = trunc i64 %.sroa.0.0.copyload.i.i1040 to i32
  store i32 %i.td, ptr %6, align 8, !tbaa !733
  %.sroa.0.0.copyload.i = load i64, ptr %i.ir, align 8, !tbaa !408
  %i.te = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.te, ptr %i.is, align 4, !tbaa !734
  %.sroa.0.0.copyload.i1041 = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.tf = trunc i64 %.sroa.0.0.copyload.i1041 to i32
  store i32 %i.tf, ptr %i.it, align 8, !tbaa !735
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039
  store i32 %i.sq, ptr %i.km, align 4, !tbaa !736
  %i.tg = add i8 %i.sl, -1
  %spec.select.i.i1044 = icmp ult i8 %i.tg, 12
  br i1 %spec.select.i.i1044, label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.th = load ptr, ptr %0, align 8, !tbaa !446
  %i.ti = getelementptr i8, ptr %i.th, i64 -24
  %i.tj = load i64, ptr %i.ti, align 8
  %i.tk = getelementptr inbounds i8, ptr %0, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !677
  %i.tn = or i32 %i.tm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.tk, i32 noundef %i.tn)
          to label %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge unwind label %bb.ca

._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge: ; preds = %bb.by
  %.sroa.0.0.copyload.i1048.pre = load i16, ptr %2, align 8, !tbaa !634
  %.pre3480 = sext i16 %.sroa.0.0.copyload.i1048.pre to i32
  br label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047

_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047: ; preds = %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge, %bb.bx
  %.pre-phi = phi i32 [ %.pre3480, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge ], [ %i.sk, %bb.bx ]
  %.0.i1045 = phi i32 [ 0, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge ], [ %i.so, %bb.bx ]
  %i.to = add nsw i32 %.0.i1045, -1
  store i32 %i.to, ptr %i.kd, align 8, !tbaa !729
  %i.tp = add nsw i32 %.pre-phi, -1900
  store i32 %i.tp, ptr %i.ij, align 4, !tbaa !737
  %i.tq = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047
  store i32 %i.tq, ptr %i.ja, align 8, !tbaa !725
  %i.tr = load ptr, ptr %0, align 8, !tbaa !446
  %i.ts = getelementptr i8, ptr %i.tr, i64 -24    ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = getelementptr inbounds i8, ptr %0, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !677
  %i.tx = and i32 %i.tw, 5
  %.not2838 = icmp eq i32 %i.tx, 0
  br i1 %.not2838, label %bb.cb, label %_ZNSolsEj.exit2148

bb.ca:                                            ; preds = %bb.by, %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.cb:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i1049 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %i.tz = sext i16 %.sroa.0.0.copyload.i1049 to i32 ; 2 uses
  %i.ua = add nsw i32 %i.tz, -1                   ; 2 uses
  %i.ub = add nsw i32 %i.tz, -400
  %i.uc = icmp slt i16 %.sroa.0.0.copyload.i1049, 1
  %i.ud = select i1 %i.uc, i32 %i.ub, i32 %i.ua
  %i.ue = sdiv i32 %i.ud, 400                     ; 2 uses
  %.neg15.i.i1051 = mul nsw i32 %i.ue, -400
  %i.uf = add nsw i32 %.neg15.i.i1051, %i.ua      ; 3 uses
  %i.ug = lshr i32 %i.uf, 2
  %i.uh = udiv i32 %i.uf, 100
  %reass.add2907 = sub nsw i32 %i.sv, %i.uf
  %reass.mul2908 = mul nsw i32 %reass.add2907, 365
  %reass.add2910 = sub nsw i32 %i.su, %i.ue
  %reass.mul2911 = mul nsw i32 %reass.add2910, 146097
  %.neg2839 = add nuw nsw i32 %i.sq, -307
  %i.ui = add nsw i32 %.neg2839, %i.ta
  %i.uj = add nsw i32 %i.ui, %i.tb
  %i.uk = add nsw i32 %i.uj, %reass.mul2911
  %i.ul = add nuw nsw i32 %i.tc, %i.ug
  %i.um = sub nsw i32 %i.uk, %i.ul
  %i.un = add nsw i32 %i.um, %i.uh
  %i.uo = add nsw i32 %i.un, %reass.mul2908
  store i32 %i.uo, ptr %i.jb, align 4, !tbaa !738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.23, i64 3, i1 false)
  %i.up = icmp eq i8 %.0806, 69
  br i1 %i.up, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 69, ptr %i.kt, align 1, !tbaa !70
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0829 = phi ptr [ %i.ku, %bb.cc ], [ %i.kt, %bb.cb ] ; 2 uses
  %i.uq = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.uq, ptr %.0829, align 1, !tbaa !70
  %i.ur = load i64, ptr %i.ts, align 8
  %i.us = getelementptr inbounds i8, ptr %0, i64 %i.ur ; 6 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 232
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !727 ; 2 uses
  %.not.i1054 = icmp eq ptr %i.uu, null
  %i.uv = zext i1 %.not.i1054 to i8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 225 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !688, !range !86, !noundef !87
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %._crit_edge.i1060, label %bb.ce

._crit_edge.i1060:                                ; preds = %bb.cd
  %.phi.trans.insert.i1061 = getelementptr inbounds nuw i8, ptr %i.us, i64 224
  %.pre.i1062 = load i8, ptr %.phi.trans.insert.i1061, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1066

bb.ce:                                            ; preds = %bb.cd
  %i.uz = getelementptr inbounds nuw i8, ptr %i.us, i64 240
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1055 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i1055, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1056

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt16__throw_bad_castv() #30
end_hunk_7
begin_hunk_8_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.ex:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit1160
  %i.adn = load i32, ptr %i.kq, align 4, !tbaa !739
  %i.ado = and i32 %i.adn, 8192
  %.not.i1173 = icmp eq i32 %i.ado, 0
  br i1 %.not.i1173, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.adp = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %bb.ez, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174

bb.ez:                                            ; preds = %bb.ey
  %i.adr = load ptr, ptr %9, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !677
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.fa, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174

bb.fa:                                            ; preds = %bb.ez
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 232
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !727 ; 2 uses
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !446
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = invoke noundef i32 %i.adz(ptr noundef nonnull align 8 dereferenceable(64) %i.adw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 unwind label %bb.fb, !inline_history !743 ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  call void @__clang_call_terminate(ptr %i.aec) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.fc:                                            ; preds = %bb.et, %bb.es
  %.pn939 = phi { ptr, i32 } [ %lpad.phi3011, %bb.et ], [ %i.acu, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.aix

bb.fd:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145
  store i32 %i.aby, ptr %i.km, align 4, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff) #26
  store i8 37, ptr %i.ff, align 1, !tbaa !70
  store i8 79, ptr %i.kn, align 1, !tbaa !70
  %i.aed = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.aed, ptr %i.ko, align 1, !tbaa !70
  %i.aee = load ptr, ptr %0, align 8, !tbaa !446
  %i.aef = getelementptr i8, ptr %i.aee, i64 -24
  %i.aeg = load i64, ptr %i.aef, align 8
  %i.aeh = getelementptr inbounds i8, ptr %0, i64 %i.aeg ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 232
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !727 ; 2 uses
  %.not.i1175 = icmp eq ptr %i.aej, null
  %i.aek = zext i1 %.not.i1175 to i8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 225 ; 2 uses
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !688, !range !86, !noundef !87
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %._crit_edge.i1181, label %bb.fe

._crit_edge.i1181:                                ; preds = %bb.fd
  %.phi.trans.insert.i1182 = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  %.pre.i1183 = load i8, ptr %.phi.trans.insert.i1182, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187

bb.fe:                                            ; preds = %bb.fd
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 240
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1176 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i1176, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1184 unwind label %.loopexit.split-lp3003

.noexc1184:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177: ; preds = %bb.fe
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 56
  %i.aer = load i8, ptr %i.aeq, align 8, !tbaa !695
  %.not.i1.i.i1178 = icmp eq i8 %i.aer, 0
  br i1 %.not.i1.i.i1178, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 89
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aep)
          to label %.noexc1185 unwind label %.loopexit3002

.noexc1185:                                       ; preds = %bb.fh
  %i.aeu = load ptr, ptr %i.aep, align 8, !tbaa !446
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = invoke noundef signext i8 %i.aew(ptr noundef nonnull align 8 dereferenceable(570) %i.aep, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179 unwind label %.loopexit3002, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179: ; preds = %.noexc1185, %bb.fg
  %.0.i.i.i1180 = phi i8 [ %i.aet, %bb.fg ], [ %i.aex, %.noexc1185 ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  store i8 %.0.i.i.i1180, ptr %i.aey, align 8, !tbaa !700
  store i8 1, ptr %i.ael, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179, %._crit_edge.i1181
  %i.aez = phi i8 [ %.pre.i1183, %._crit_edge.i1181 ], [ %.0.i.i.i1180, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179 ]
  %i.afa = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.aej, i8 %i.aek, ptr noundef nonnull align 8 dereferenceable(216) %i.aeh, i8 noundef signext %i.aez, ptr noundef nonnull %6, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.kp)
          to label %bb.fi unwind label %.loopexit3002 ; 0 uses

bb.fi:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit3002:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187, %bb.fh, %.noexc1185
  %lpad.loopexit3004 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.loopexit.split-lp3003:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp3005 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.split-lp3003, %.loopexit3002
  %lpad.phi3006 = phi { ptr, i32 } [ %lpad.loopexit3004, %.loopexit3002 ], [ %lpad.loopexit.split-lp3005, %.loopexit.split-lp3003 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #26
  br label %bb.aix

bb.fk:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 %i.la, ptr %i.eg, align 1, !tbaa !70
  %i.afb = load ptr, ptr %0, align 8, !tbaa !446
  %i.afc = getelementptr i8, ptr %i.afb, i64 -24
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = getelementptr inbounds i8, ptr %0, i64 %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !659
  %.not.i1188 = icmp eq i64 %i.afg, 0
  br i1 %.not.i1188, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 unwind label %.loopexit ; 0 uses

bb.fm:                                            ; preds = %bb.fk
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.fn:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.gx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afj = icmp eq i8 %.0806, 0
  br i1 %i.afj, label %bb.fp, label %bb.go

bb.fp:                                            ; preds = %bb.fo
  %i.afk = load i16, ptr %2, align 8, !tbaa !730  ; 4 uses
  %.not.i1193 = icmp eq i16 %i.afk, -32768
  br i1 %.not.i1193, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afl = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.afm = add i8 %i.afl, -1
  %spec.select.i.i1194 = icmp ult i8 %i.afm, 12
  br i1 %spec.select.i.i1194, label %bb.fr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afn = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1196 = icmp eq i8 %i.afn, 0
  br i1 %.not8.i1196, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i.i1197 = icmp eq i8 %i.afl, 2
  %i.afo = and i16 %i.afk, 3
  %i.afp = icmp eq i16 %i.afo, 0
  %or.cond.i1198 = and i1 %i.afp, %.not.i.i1197
  br i1 %or.cond.i1198, label %bb.ft, label %.thread.i.i1199

bb.ft:                                            ; preds = %bb.fs
  %i.afq = srem i16 %i.afk, 100
  %.not.i.i.i1202 = icmp ne i16 %i.afq, 0
  %i.afr = srem i16 %i.afk, 400
  %i.afs = icmp eq i16 %i.afr, 0
  %or.cond.i.i1203 = or i1 %.not.i.i.i1202, %i.afs
  br i1 %or.cond.i.i1203, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204, label %.thread.i.i1199

.thread.i.i1199:                                  ; preds = %bb.ft, %bb.fs
  %i.aft = zext nneg i8 %i.afl to i64
  %21 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aft
  %i.afu = getelementptr i8, ptr %21, i64 -1
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204: ; preds = %bb.ft, %.thread.i.i1199
  %.sroa.03.0.i.i1201 = phi i8 [ %i.afv, %.thread.i.i1199 ], [ 29, %bb.ft ]
  %.not2835 = icmp ult i8 %.sroa.03.0.i.i1201, %i.afn
  br i1 %.not2835, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread: ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204
  %i.afw = load ptr, ptr %0, align 8, !tbaa !446
  %i.afx = getelementptr i8, ptr %i.afw, i64 -24
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = getelementptr inbounds i8, ptr %0, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !677
  %i.agc = or i32 %i.agb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afz, i32 noundef %i.agc)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.agd = load ptr, ptr %0, align 8, !tbaa !446
  %i.age = getelementptr i8, ptr %i.agd, i64 -24
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = getelementptr inbounds i8, ptr %0, i64 %i.agf
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(264) %i.agg)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208 unwind label %bb.gi

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206
  %i.agh = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 -24
  %i.agj = load i64, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds i8, ptr %0, i64 %i.agj ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 225 ; 2 uses
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !688, !range !86, !noundef !87
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %._crit_edge.i.i1214, label %bb.fu

bb.fu:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agk, i64 240
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1209 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i.i.i1209, label %bb.fv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1217 unwind label %.loopexit.split-lp2998

.noexc1217:                                       ; preds = %bb.fv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210: ; preds = %bb.fu
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 56
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !695
  %.not.i1.i.i.i1211 = icmp eq i8 %i.agr, 0
  br i1 %.not.i1.i.i.i1211, label %bb.fw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agp)
          to label %.noexc1218 unwind label %.loopexit2997

.noexc1218:                                       ; preds = %bb.fw
  %i.ags = load ptr, ptr %i.agp, align 8, !tbaa !446
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 48
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = invoke noundef signext i8 %i.agu(ptr noundef nonnull align 8 dereferenceable(570) %i.agp, i8 noundef signext 32)
          to label %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge unwind label %.loopexit2997, !inline_history !699 ; 0 uses

.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge: ; preds = %.noexc1218
  %.pre3466.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212: ; preds = %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210
  %.pre3466 = phi ptr [ %.pre3466.pre, %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge ], [ %i.agh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210 ]
  store i8 1, ptr %i.agl, align 1, !tbaa !688
  br label %._crit_edge.i.i1214

._crit_edge.i.i1214:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212
  %i.agw = phi ptr [ %i.agh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208 ], [ %.pre3466, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212 ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agk, i64 224
  store i8 48, ptr %i.agx, align 8, !tbaa !700
  %i.agy = getelementptr i8, ptr %i.agw, i64 -24  ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8
  %i.aha = getelementptr inbounds i8, ptr %0, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i32 130, ptr %i.ahb, align 8, !tbaa !701
  %i.ahc = load i64, ptr %i.agy, align 8
  %i.ahd = getelementptr inbounds i8, ptr %0, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  store i64 2, ptr %i.ahe, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1221 = load i8, ptr %i.iw, align 2, !tbaa !70
  %i.ahf = zext i8 %.sroa.0.0.copyload.i1221 to i64
  %i.ahg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahf)
          to label %_ZNSolsEj.exit unwind label %bb.gj ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %._crit_edge.i.i1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i8 47, ptr %i.ef, align 1, !tbaa !70
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !446
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 -24
  %i.ahj = load i64, ptr %i.ahi, align 8
  %i.ahk = getelementptr inbounds i8, ptr %i.ahg, i64 %i.ahj
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !659
  %.not.i1223 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i1223, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEj.exit
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fy:                                            ; preds = %_ZNSolsEj.exit
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, i8 noundef signext 47)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.ahp = load ptr, ptr %0, align 8, !tbaa !446
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -24
  %i.ahr = load i64, ptr %i.ahq, align 8
  %i.ahs = getelementptr inbounds i8, ptr %0, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  store i64 2, ptr %i.aht, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1228 = load i8, ptr %i.ix, align 1, !tbaa !70
  %i.ahu = zext i8 %.sroa.0.0.copyload.i1228 to i64
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahu)
          to label %_ZNSolsEj.exit1230 unwind label %bb.gk ; 4 uses

_ZNSolsEj.exit1230:                               ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store i8 47, ptr %i.ee, align 1, !tbaa !70
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !446
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 -24
  %i.ahy = load i64, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !659
  %.not.i1231 = icmp eq i64 %i.aib, 0
  br i1 %.not.i1231, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSolsEj.exit1230
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gb:                                            ; preds = %_ZNSolsEj.exit1230
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, i8 noundef signext 47)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aie = load ptr, ptr %0, align 8, !tbaa !446
  %i.aif = getelementptr i8, ptr %i.aie, i64 -24
  %i.aig = load i64, ptr %i.aif, align 8
  %i.aih = getelementptr inbounds i8, ptr %0, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  store i64 2, ptr %i.aii, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1236 = load i16, ptr %2, align 8, !tbaa !634
  %i.aij = srem i16 %.sroa.0.0.copyload.i1236, 100
  %.sext = sext i16 %i.aij to i32
  %i.aik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sext)
          to label %bb.gd unwind label %bb.gl     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.ail = load i32, ptr %i.kl, align 4, !tbaa !739
  %i.aim = and i32 %i.ail, 8192
  %.not.i1237 = icmp eq i32 %i.aim, 0
  br i1 %.not.i1237, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ain = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %bb.gf, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238

bb.gf:                                            ; preds = %bb.ge
  %i.aip = load ptr, ptr %10, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !677
  %i.ais = icmp eq i32 %i.air, 0
  br i1 %i.ais, label %bb.gg, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238

bb.gg:                                            ; preds = %bb.gf
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 232
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !727 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !446
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = invoke noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(64) %i.aiu)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 unwind label %bb.gh, !inline_history !743 ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aiz = landingpad { ptr, i32 }
          catch ptr null
  %i.aja = extractvalue { ptr, i32 } %i.aiz, 0
  call void @__clang_call_terminate(ptr %i.aja) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238: ; preds = %bb.gd, %bb.ge, %bb.gf, %bb.gg
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.gi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit2997:                                    ; preds = %bb.fw, %.noexc1218
  %lpad.loopexit2999 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp2998:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp3000 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %bb.fy, %bb.fx, %._crit_edge.i.i1214
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gk:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gc
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gm:                                            ; preds = %.loopexit2997, %.loopexit.split-lp2998, %bb.gl, %bb.gk, %bb.gj
  %.pn935 = phi { ptr, i32 } [ %i.aje, %bb.gl ], [ %i.ajd, %bb.gk ], [ %i.ajc, %bb.gj ], [ %lpad.loopexit2999, %.loopexit2997 ], [ %lpad.loopexit.split-lp3000, %.loopexit.split-lp2998 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #26
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.pn935.pn = phi { ptr, i32 } [ %.pn935, %bb.gm ], [ %i.ajb, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.aix

bb.go:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i8 37, ptr %i.ed, align 1, !tbaa !70
  %i.ajf = load ptr, ptr %0, align 8, !tbaa !446
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -24
  %i.ajh = load i64, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds i8, ptr %0, i64 %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !659
  %.not.i1239 = icmp eq i64 %i.ajk, 0
  br i1 %.not.i1239, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.gr unwind label %.loopexit ; 0 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.0.i1240 = phi ptr [ %i.ajl, %bb.gp ], [ %0, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i8 %.0806, ptr %i.ec, align 1, !tbaa !70
  %i.ajn = load ptr, ptr %.0.i1240, align 8, !tbaa !446
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -24
  %i.ajp = load i64, ptr %i.ajo, align 8
  %i.ajq = getelementptr inbounds i8, ptr %.0.i1240, i64 %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !659
  %.not.i1244 = icmp eq i64 %i.ajs, 0
  br i1 %.not.i1244, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1240, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.aju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1240, i8 noundef signext %.0806)
          to label %bb.gu unwind label %.loopexit ; 0 uses

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.0.i1245 = phi ptr [ %i.ajt, %bb.gs ], [ %.0.i1240, %bb.gt ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.ajv = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i8 %i.ajv, ptr %i.eb, align 1, !tbaa !70
  %i.ajw = load ptr, ptr %.0.i1245, align 8, !tbaa !446
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 -24
  %i.ajy = load i64, ptr %i.ajx, align 8
  %i.ajz = getelementptr inbounds i8, ptr %.0.i1245, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !659
  %.not.i1249 = icmp eq i64 %i.akb, 0
  br i1 %.not.i1249, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1245, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 unwind label %.loopexit ; 0 uses

bb.gw:                                            ; preds = %bb.gu
  %i.akd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1245, i8 noundef signext %i.ajv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.gx:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i8 68, ptr %i.ea, align 1, !tbaa !70
  %i.ake = load ptr, ptr %0, align 8, !tbaa !446
  %i.akf = getelementptr i8, ptr %i.ake, i64 -24
  %i.akg = load i64, ptr %i.akf, align 8
  %i.akh = getelementptr inbounds i8, ptr %0, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !659
  %.not.i1254 = icmp eq i64 %i.akj, 0
  br i1 %.not.i1254, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 unwind label %.loopexit ; 0 uses

bb.gz:                                            ; preds = %bb.gx
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ha:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.im, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akm = icmp eq i8 %.0806, 0
  br i1 %i.akm, label %bb.hc, label %bb.id

bb.hc:                                            ; preds = %bb.hb
  %i.akn = load i16, ptr %2, align 8, !tbaa !730  ; 4 uses
  %.not.i1259 = icmp eq i16 %i.akn, -32768
  br i1 %.not.i1259, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ako = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.akp = add i8 %i.ako, -1
  %spec.select.i.i1260 = icmp ult i8 %i.akp, 12
  br i1 %spec.select.i.i1260, label %bb.he, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread

bb.he:                                            ; preds = %bb.hd
  %i.akq = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1262 = icmp eq i8 %i.akq, 0
  br i1 %.not8.i1262, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i1263 = icmp eq i8 %i.ako, 2
  %i.akr = and i16 %i.akn, 3
  %i.aks = icmp eq i16 %i.akr, 0
  %or.cond.i1264 = and i1 %i.aks, %.not.i.i1263
  br i1 %or.cond.i1264, label %bb.hg, label %.thread.i.i1265

bb.hg:                                            ; preds = %bb.hf
  %i.akt = srem i16 %i.akn, 100
  %.not.i.i.i1268 = icmp ne i16 %i.akt, 0
  %i.aku = srem i16 %i.akn, 400
  %i.akv = icmp eq i16 %i.aku, 0
  %or.cond.i.i1269 = or i1 %.not.i.i.i1268, %i.akv
  br i1 %or.cond.i.i1269, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270, label %.thread.i.i1265

.thread.i.i1265:                                  ; preds = %bb.hg, %bb.hf
  %i.akw = zext nneg i8 %i.ako to i64
  %22 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.akw
  %i.akx = getelementptr i8, ptr %22, i64 -1
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270: ; preds = %bb.hg, %.thread.i.i1265
  %.sroa.03.0.i.i1267 = phi i8 [ %i.aky, %.thread.i.i1265 ], [ 29, %bb.hg ]
  %.not2834 = icmp ult i8 %.sroa.03.0.i.i1267, %i.akq
  br i1 %.not2834, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread: ; preds = %bb.he, %bb.hd, %bb.hc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270
  %i.akz = load ptr, ptr %0, align 8, !tbaa !446
  %i.ala = getelementptr i8, ptr %i.akz, i64 -24
  %i.alb = load i64, ptr %i.ala, align 8
  %i.alc = getelementptr inbounds i8, ptr %0, i64 %i.alb ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !677
  %i.alf = or i32 %i.ale, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alc, i32 noundef %i.alf)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.alg = load ptr, ptr %0, align 8, !tbaa !446
  %i.alh = getelementptr i8, ptr %i.alg, i64 -24
  %i.ali = load i64, ptr %i.alh, align 8
  %i.alj = getelementptr inbounds i8, ptr %0, i64 %i.ali
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(264) %i.alj)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274 unwind label %bb.hx

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272
  %i.alk = load ptr, ptr %0, align 8, !tbaa !446
  %i.all = getelementptr i8, ptr %i.alk, i64 -24
  %i.alm = load i64, ptr %i.all, align 8
  %i.aln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.hh unwind label %.loopexit2992

bb.hh:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274
  %i.alo = getelementptr inbounds i8, ptr %0, i64 %i.alm
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %12, ptr noundef nonnull align 8 dereferenceable(264) %i.alo, ptr noundef nonnull align 8 dereferenceable(8) %i.aln)
          to label %bb.hi unwind label %.loopexit2992

bb.hi:                                            ; preds = %bb.hh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  %i.alp = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 -24
  %i.alr = load i64, ptr %i.alq, align 8
  %i.als = getelementptr inbounds i8, ptr %0, i64 %i.alr ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 225 ; 2 uses
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !688, !range !86, !noundef !87
  %i.alv = trunc nuw i8 %i.alu to i1
  br i1 %i.alv, label %._crit_edge.i.i1280, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 240
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1275 = icmp eq ptr %i.alx, null
  br i1 %.not.i.i.i.i1275, label %bb.hk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1283 unwind label %.loopexit.split-lp2993

.noexc1283:                                       ; preds = %bb.hk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276: ; preds = %bb.hj
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 56
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !695
  %.not.i1.i.i.i1277 = icmp eq i8 %i.alz, 0
  br i1 %.not.i1.i.i.i1277, label %bb.hl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278

bb.hl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alx)
          to label %.noexc1284 unwind label %.loopexit2992

.noexc1284:                                       ; preds = %bb.hl
  %i.ama = load ptr, ptr %i.alx, align 8, !tbaa !446
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 48
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = invoke noundef signext i8 %i.amc(ptr noundef nonnull align 8 dereferenceable(570) %i.alx, i8 noundef signext 32)
          to label %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge unwind label %.loopexit2992, !inline_history !699 ; 0 uses

.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge: ; preds = %.noexc1284
  %.pre3465.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278: ; preds = %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276
  %.pre3465 = phi ptr [ %.pre3465.pre, %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge ], [ %i.alp, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276 ]
  store i8 1, ptr %i.alt, align 1, !tbaa !688
  br label %._crit_edge.i.i1280

._crit_edge.i.i1280:                              ; preds = %bb.hi, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278
  %i.ame = phi ptr [ %i.alp, %bb.hi ], [ %.pre3465, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278 ]
  %i.amf = getelementptr inbounds nuw i8, ptr %i.als, i64 224
  store i8 48, ptr %i.amf, align 8, !tbaa !700
  %i.amg = getelementptr i8, ptr %i.ame, i64 -24  ; 2 uses
  %i.amh = load i64, ptr %i.amg, align 8
  %i.ami = getelementptr inbounds i8, ptr %0, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 24
  store i32 130, ptr %i.amj, align 8, !tbaa !701
  %i.amk = load i64, ptr %i.amg, align 8
  %i.aml = getelementptr inbounds i8, ptr %0, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  store i64 4, ptr %i.amm, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1287 = load i16, ptr %2, align 8, !tbaa !634
  %i.amn = sext i16 %.sroa.0.0.copyload.i1287 to i32
  %i.amo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.amn)
          to label %bb.hm unwind label %bb.hy     ; 4 uses

bb.hm:                                            ; preds = %._crit_edge.i.i1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i8 45, ptr %i.dz, align 1, !tbaa !70
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !446
  %i.amq = getelementptr i8, ptr %i.amp, i64 -24
  %i.amr = load i64, ptr %i.amq, align 8
  %i.ams = getelementptr inbounds i8, ptr %i.amo, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !659
  %.not.i1288 = icmp eq i64 %i.amu, 0
  br i1 %.not.i1288, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, ptr noundef nonnull %i.dz, i64 noundef 1)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.ho:                                            ; preds = %bb.hm
  %i.amw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, i8 noundef signext 45)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.amx = load ptr, ptr %0, align 8, !tbaa !446
  %i.amy = getelementptr i8, ptr %i.amx, i64 -24
  %i.amz = load i64, ptr %i.amy, align 8
  %i.ana = getelementptr inbounds i8, ptr %0, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  store i64 2, ptr %i.anb, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1293 = load i8, ptr %i.iw, align 2, !tbaa !70
  %i.anc = zext i8 %.sroa.0.0.copyload.i1293 to i64
  %i.and = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anc)
          to label %_ZNSolsEj.exit1295 unwind label %bb.hz ; 4 uses

_ZNSolsEj.exit1295:                               ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i8 45, ptr %i.dy, align 1, !tbaa !70
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !446
  %i.anf = getelementptr i8, ptr %i.ane, i64 -24
  %i.ang = load i64, ptr %i.anf, align 8
  %i.anh = getelementptr inbounds i8, ptr %i.and, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !659
  %.not.i1296 = icmp eq i64 %i.anj, 0
  br i1 %.not.i1296, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNSolsEj.exit1295
  %i.ank = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.and, ptr noundef nonnull %i.dy, i64 noundef 1)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %_ZNSolsEj.exit1295
  %i.anl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.and, i8 noundef signext 45)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.anm = load ptr, ptr %0, align 8, !tbaa !446
  %i.ann = getelementptr i8, ptr %i.anm, i64 -24
  %i.ano = load i64, ptr %i.ann, align 8
  %i.anp = getelementptr inbounds i8, ptr %0, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store i64 2, ptr %i.anq, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1301 = load i8, ptr %i.ix, align 1, !tbaa !70
  %i.anr = zext i8 %.sroa.0.0.copyload.i1301 to i64
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anr)
          to label %_ZNSolsEj.exit1303 unwind label %bb.ia ; 0 uses

_ZNSolsEj.exit1303:                               ; preds = %bb.hs
  %i.ant = load i32, ptr %i.kk, align 4, !tbaa !739
  %i.anu = and i32 %i.ant, 8192
  %.not.i1304 = icmp eq i32 %i.anu, 0
  br i1 %.not.i1304, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305, label %bb.ht

bb.ht:                                            ; preds = %_ZNSolsEj.exit1303
  %i.anv = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.anw = icmp eq i32 %i.anv, 0
  br i1 %i.anw, label %bb.hu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305

bb.hu:                                            ; preds = %bb.ht
  %i.anx = load ptr, ptr %11, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !677
  %i.aoa = icmp eq i32 %i.anz, 0
  br i1 %i.aoa, label %bb.hv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305

bb.hv:                                            ; preds = %bb.hu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 232
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !727 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !446
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 48
  %i.aof = load ptr, ptr %i.aoe, align 8
  %i.aog = invoke noundef i32 %i.aof(ptr noundef nonnull align 8 dereferenceable(64) %i.aoc)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 unwind label %bb.hw, !inline_history !743 ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aoh = landingpad { ptr, i32 }
          catch ptr null
  %i.aoi = extractvalue { ptr, i32 } %i.aoh, 0
  call void @__clang_call_terminate(ptr %i.aoi) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305: ; preds = %_ZNSolsEj.exit1303, %bb.ht, %bb.hu, %bb.hv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.hx:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

.loopexit2992:                                    ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274, %bb.hh, %bb.hl, %.noexc1284
  %lpad.loopexit2994 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp2993:                           ; preds = %bb.hk
  %lpad.loopexit.split-lp2995 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge.i.i1280
  %i.aok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hz:                                            ; preds = %bb.hr, %bb.hq, %bb.hp
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hs
  %i.aom = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ib:                                            ; preds = %.loopexit2992, %.loopexit.split-lp2993, %bb.ia, %bb.hz, %bb.hy
  %.pn931 = phi { ptr, i32 } [ %i.aom, %bb.ia ], [ %i.aol, %bb.hz ], [ %i.aok, %bb.hy ], [ %lpad.loopexit2994, %.loopexit2992 ], [ %lpad.loopexit.split-lp2995, %.loopexit.split-lp2993 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #26
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hx
  %.pn931.pn = phi { ptr, i32 } [ %.pn931, %bb.ib ], [ %i.aoj, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.aix

bb.id:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i8 37, ptr %i.dx, align 1, !tbaa !70
  %i.aon = load ptr, ptr %0, align 8, !tbaa !446
  %i.aoo = getelementptr i8, ptr %i.aon, i64 -24
  %i.aop = load i64, ptr %i.aoo, align 8
  %i.aoq = getelementptr inbounds i8, ptr %0, i64 %i.aop
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !659
  %.not.i1306 = icmp eq i64 %i.aos, 0
  br i1 %.not.i1306, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dx, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit

bb.if:                                            ; preds = %bb.id
  %i.aou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.ig unwind label %.loopexit ; 0 uses

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.0.i1307 = phi ptr [ %i.aot, %bb.ie ], [ %0, %bb.if ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i8 %.0806, ptr %i.dw, align 1, !tbaa !70
  %i.aov = load ptr, ptr %.0.i1307, align 8, !tbaa !446
  %i.aow = getelementptr i8, ptr %i.aov, i64 -24
  %i.aox = load i64, ptr %i.aow, align 8
  %i.aoy = getelementptr inbounds i8, ptr %.0.i1307, i64 %i.aox
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !659
  %.not.i1311 = icmp eq i64 %i.apa, 0
  br i1 %.not.i1311, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.apb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1307, ptr noundef nonnull %i.dw, i64 noundef 1)
          to label %bb.ij unwind label %.loopexit

bb.ii:                                            ; preds = %bb.ig
  %i.apc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1307, i8 noundef signext %.0806)
          to label %bb.ij unwind label %.loopexit ; 0 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.0.i1312 = phi ptr [ %i.apb, %bb.ih ], [ %.0.i1307, %bb.ii ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.apd = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i8 %i.apd, ptr %i.dv, align 1, !tbaa !70
  %i.ape = load ptr, ptr %.0.i1312, align 8, !tbaa !446
  %i.apf = getelementptr i8, ptr %i.ape, i64 -24
  %i.apg = load i64, ptr %i.apf, align 8
  %i.aph = getelementptr inbounds i8, ptr %.0.i1312, i64 %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !659
  %.not.i1316 = icmp eq i64 %i.apj, 0
  br i1 %.not.i1316, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1312, ptr noundef nonnull %i.dv, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 unwind label %.loopexit ; 0 uses

bb.il:                                            ; preds = %bb.ij
  %i.apl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1312, i8 noundef signext %i.apd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.im:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store i8 70, ptr %i.du, align 1, !tbaa !70
  %i.apm = load ptr, ptr %0, align 8, !tbaa !446
  %i.apn = getelementptr i8, ptr %i.apm, i64 -24
  %i.apo = load i64, ptr %i.apn, align 8
  %i.app = getelementptr inbounds i8, ptr %0, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !659
  %.not.i1321 = icmp eq i64 %i.apr, 0
  br i1 %.not.i1321, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.du, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 unwind label %.loopexit ; 0 uses

bb.io:                                            ; preds = %bb.im
  %i.apt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325: ; preds = %bb.io, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ip:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.jv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.apu = icmp eq i8 %.0806, 0
  br i1 %i.apu, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.apv = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i1326 = icmp eq i16 %i.apv, -32768
  br i1 %.not.i1326, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apw = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.apx = add i8 %i.apw, -1
  %spec.select.i.i1327 = icmp ult i8 %i.apx, 12
  br i1 %spec.select.i.i1327, label %bb.it, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread

bb.it:                                            ; preds = %bb.is
  %i.apy = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1329 = icmp eq i8 %i.apy, 0
  br i1 %.not8.i1329, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1330 = icmp eq i8 %i.apw, 2
  %i.apz = and i16 %i.apv, 3
  %i.aqa = icmp eq i16 %i.apz, 0
  %or.cond.i1331 = and i1 %i.aqa, %.not.i.i1330
  br i1 %or.cond.i1331, label %bb.iv, label %.thread.i.i1332

bb.iv:                                            ; preds = %bb.iu
  %i.aqb = srem i16 %i.apv, 100
  %.not.i.i.i1335 = icmp ne i16 %i.aqb, 0
  %i.aqc = srem i16 %i.apv, 400
  %i.aqd = icmp eq i16 %i.aqc, 0
  %or.cond.i.i1336 = or i1 %.not.i.i.i1335, %i.aqd
  br i1 %or.cond.i.i1336, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337, label %.thread.i.i1332

.thread.i.i1332:                                  ; preds = %bb.iv, %bb.iu
  %i.aqe = zext nneg i8 %i.apw to i64
  %23 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aqe
  %i.aqf = getelementptr i8, ptr %23, i64 -1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337: ; preds = %bb.iv, %.thread.i.i1332
  %.sroa.03.0.i.i1334 = phi i8 [ %i.aqg, %.thread.i.i1332 ], [ 29, %bb.iv ]
  %.not2831 = icmp ult i8 %.sroa.03.0.i.i1334, %i.apy
  br i1 %.not2831, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %.thread.i.i.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread: ; preds = %bb.it, %bb.is, %bb.ir, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !446
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -24
  %i.aqj = load i64, ptr %i.aqi, align 8
  %i.aqk = getelementptr inbounds i8, ptr %0, i64 %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !677
  %i.aqn = or i32 %i.aqm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aqk, i32 noundef %i.aqn)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread
  %.pre3460 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3461 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3462 = load i8, ptr %i.ix, align 1, !tbaa !732
  %.pre3463 = load i8, ptr %.0731, align 1, !tbaa !70
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337
  %i.aqo = phi i8 [ %.pre3463, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqp = phi i8 [ %.pre3462, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqq = phi i8 [ %.pre3461, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apw, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ] ; 3 uses
  %i.aqr = phi i16 [ %.pre3460, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqs = sext i16 %i.aqr to i32
  %i.aqt = icmp ult i8 %i.aqq, 3
  %.neg.i.i1340 = sext i1 %i.aqt to i32
  %i.aqu = add nsw i32 %.neg.i.i1340, %i.aqs      ; 4 uses
  %i.aqv = zext i8 %i.aqq to i32
  %i.aqw = zext i8 %i.aqp to i32
  %i.aqx = add nsw i32 %i.aqu, -399
  %i.aqy = icmp slt i32 %i.aqu, 0
  %i.aqz = select i1 %i.aqy, i32 %i.aqx, i32 %i.aqu
  %i.ara = sdiv i32 %i.aqz, 400                   ; 2 uses
  %.neg15.i.i1341 = mul nsw i32 %i.ara, -400
  %i.arb = add nsw i32 %.neg15.i.i1341, %i.aqu    ; 3 uses
  %i.arc = icmp ugt i8 %i.aqq, 2
  %.v.i.i1342 = select i1 %i.arc, i32 -3, i32 9
  %i.ard = add nsw i32 %.v.i.i1342, %i.aqv
  %i.are = mul nsw i32 %i.ard, 153
  %i.arf = add nsw i32 %i.are, 2
  %i.arg = udiv i32 %i.arf, 5
  %i.arh = mul nsw i32 %i.arb, 365
  %i.ari = lshr i32 %i.arb, 2
  %i.arj = udiv i32 %i.arb, 100
  %i.ark = mul nsw i32 %i.ara, 146097
  %i.arl = add nuw nsw i32 %i.aqw, -719469
  %i.arm = add nsw i32 %i.arl, %i.arg
  %i.arn = add nsw i32 %i.arm, %i.ark
  %i.aro = add nsw i32 %i.arn, %i.ari
  %i.arp = add nsw i32 %i.aro, %i.arh
  %i.arq = sub nsw i32 %i.arp, %i.arj             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.arr = add nsw i32 %i.arq, 719471             ; 2 uses
  %i.ars = icmp sgt i32 %i.arq, -719472
  %i.art = add nsw i32 %i.arq, 573375
  %i.aru = select i1 %i.ars, i32 %i.arr, i32 %i.art
  %i.arv = sdiv i32 %i.aru, 146097                ; 2 uses
  %.neg.i.i1344 = mul nsw i32 %i.arv, -146097
  %i.arw = add nsw i32 %.neg.i.i1344, %i.arr      ; 5 uses
  %i.arx = udiv i32 %i.arw, 1460
  %i.ary = udiv i32 %i.arw, 36524
  %i.arz = udiv i32 %i.arw, 146096
  %.neg2893 = add nsw i32 %i.ary, %i.arw
  %i.asa = add nuw nsw i32 %i.arz, %i.arx
  %i.asb = sub nsw i32 %.neg2893, %i.asa          ; 3 uses
  %i.asc = udiv i32 %i.asb, 365                   ; 2 uses
  %i.asd = mul nsw i32 %i.arv, 400
  %i.ase = add nsw i32 %i.asc, %i.asd
  %i.asf = udiv i32 %i.asb, 1460
  %i.asg = udiv i32 %i.asb, 36500
  %.neg36.i.i = mul i32 %i.asc, -365
  %.neg37.i.i = sub nsw i32 %i.arw, %i.asf
  %.neg25.i.i = add nsw i32 %.neg37.i.i, %i.asg
  %i.ash = add i32 %.neg25.i.i, %.neg36.i.i
  %i.asi = mul i32 %i.ash, 5
  %i.asj = add i32 %i.asi, 2                      ; 2 uses
  %i.ask = udiv i32 %i.asj, 153
  %i.asl = icmp ult i32 %i.asj, 1530
  %.v.i.i1345 = select i1 %i.asl, i32 3, i32 -9
  %i.asm = add nsw i32 %.v.i.i1345, %i.ask
  %i.asn = icmp ult i32 %i.asm, 3
  %i.aso = zext i1 %i.asn to i32
  %i.asp = add nsw i32 %i.ase, %i.aso             ; 2 uses
  %.sroa.02715.0.extract.trunc = trunc i32 %i.asp to i16
  %.sroa.02708.0.extract.trunc = shl i32 %i.asp, 16
  %sext2832 = add i32 %.sroa.02708.0.extract.trunc, -65536
  %i.asq = ashr exact i32 %sext2832, 16           ; 4 uses
  %i.asr = add nsw i32 %i.asq, -399
  %i.ass = icmp slt i32 %i.asq, 0
  %i.ast = select i1 %i.ass, i32 %i.asr, i32 %i.asq
  %i.asu = sdiv i32 %i.ast, 400                   ; 2 uses
  %.neg15.i.i.i.i.i = mul nsw i32 %i.asu, -400
  %i.asv = add nsw i32 %.neg15.i.i.i.i.i, %i.asq  ; 3 uses
  %i.asw = mul nsw i32 %i.asv, 365
  %i.asx = lshr i32 %i.asv, 2
  %i.asy = udiv i32 %i.asv, 100
  %i.asz = mul nsw i32 %i.asu, 146097
  %i.ata = add nsw i32 %i.asz, 275
  %i.atb = add nsw i32 %i.ata, %i.asx
  %i.atc = add nsw i32 %i.atb, %i.asw
  %i.atd = sub nsw i32 %i.atc, %i.asy             ; 3 uses
  %i.ate = icmp sgt i32 %i.atd, 719433
  %.in.i.i.i.i.v = select i1 %i.ate, i32 -719434, i32 -719438
  %.in.i.i.i.i = add nsw i32 %i.atd, %.in.i.i.i.i.v
  %i.atf = urem i32 %.in.i.i.i.i, 7               ; 3 uses
  %i.atg = icmp samesign ult i32 %i.atf, 4
  %.v3240 = select i1 %i.atg, i32 -10, i32 -4
  %i.ath = add nsw i32 %i.atf, %.v3240
  %.fr.i.i.i = freeze i32 %i.ath                  ; 2 uses
  %i.ati = srem i32 %.fr.i.i.i, 7
  %i.atj = sub nsw i32 %i.atd, %i.atf
  %i.atk = add nsw i32 %i.atj, -719430
  %i.atl = add i32 %i.atk, %.fr.i.i.i
  %i.atm = sub i32 %i.atl, %i.ati
  %i.atn = icmp slt i32 %i.arq, %i.atm
  %i.ato = sext i1 %i.atn to i16
  %spec.select = add i16 %.sroa.02715.0.extract.trunc, %i.ato
  store i16 %spec.select, ptr %13, align 2
  %i.atp = icmp eq i8 %i.aqo, 71
  br i1 %i.atp, label %bb.ix, label %bb.iz

bb.iw:                                            ; preds = %bb.iy, %bb.ix
  %i.atq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ix:                                            ; preds = %.thread.i.i.i.i
  %i.atr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %13)
          to label %.noexc1357 unwind label %bb.iw ; 0 uses

.noexc1357:                                       ; preds = %bb.ix
  %i.ats = load i16, ptr %13, align 2, !tbaa !730
  %.not.i1356 = icmp eq i16 %i.ats, -32768
  br i1 %.not.i1356, label %bb.iy, label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit

bb.iy:                                            ; preds = %.noexc1357
  %i.att = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 20)
          to label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit unwind label %bb.iw ; 0 uses

bb.iz:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.atu = load ptr, ptr %0, align 8, !tbaa !446
  %i.atv = getelementptr i8, ptr %i.atu, i64 -24
  %i.atw = load i64, ptr %i.atv, align 8
  %i.atx = getelementptr inbounds i8, ptr %0, i64 %i.atw
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(264) %i.atx)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360 unwind label %bb.ji

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360: ; preds = %bb.iz
  %i.aty = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.atz = getelementptr i8, ptr %i.aty, i64 -24
  %i.aua = load i64, ptr %i.atz, align 8
  %i.aub = getelementptr inbounds i8, ptr %0, i64 %i.aua ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 225 ; 2 uses
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !688, !range !86, !noundef !87
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %._crit_edge.i.i1366, label %bb.ja

bb.ja:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 240
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1361 = icmp eq ptr %i.aug, null
  br i1 %.not.i.i.i.i1361, label %bb.jb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1369 unwind label %.loopexit.split-lp2988

.noexc1369:                                       ; preds = %bb.jb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362: ; preds = %bb.ja
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 56
  %i.aui = load i8, ptr %i.auh, align 8, !tbaa !695
  %.not.i1.i.i.i1363 = icmp eq i8 %i.aui, 0
  br i1 %.not.i1.i.i.i1363, label %bb.jc, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aug)
          to label %.noexc1370 unwind label %.loopexit2987

.noexc1370:                                       ; preds = %bb.jc
  %i.auj = load ptr, ptr %i.aug, align 8, !tbaa !446
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = invoke noundef signext i8 %i.aul(ptr noundef nonnull align 8 dereferenceable(570) %i.aug, i8 noundef signext 32)
          to label %.noexc1370._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364_crit_edge unwind label %.loopexit2987, !inline_history !699 ; 0 uses

.noexc1370._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364_crit_edge: ; preds = %.noexc1370
  %.pre3464.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364

end_hunk_8
begin_hunk_9_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.ks:                                            ; preds = %bb.kq
  %i.ayu = icmp eq i64 %.sroa.02700.0.copyload, 12
  %i.ayv = add nsw i64 %.sroa.02700.0.copyload, -12
  br i1 %i.ayu, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.ks, %bb.kr, %bb.kp
  %storemerge = phi i64 [ %.sroa.02700.0.copyload, %bb.kr ], [ %i.ayv, %bb.ks ], [ %.sroa.02700.0.copyload, %bb.kp ] ; 3 uses
  %i.ayw = icmp slt i64 %storemerge, 10
  br i1 %i.ayw, label %bb.kt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kt:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !70
  %i.ayx = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayy = getelementptr i8, ptr %i.ayx, i64 -24
  %i.ayz = load i64, ptr %i.ayy, align 8
  %i.aza = getelementptr inbounds i8, ptr %0, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !659
  %.not.i1420 = icmp eq i64 %i.azc, 0
  br i1 %.not.i1420, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.azd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 unwind label %bb.kw ; 0 uses

bb.kv:                                            ; preds = %bb.kt
  %i.aze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 unwind label %bb.kw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kw:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.kv, %bb.ku
  %i.azf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.ks, %bb.kr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3537 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 ], [ 12, %bb.kr ], [ 12, %bb.ks ]
  %i.azg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3537)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.kw ; 0 uses

bb.kx:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #26
  store i8 37, ptr %i.fg, align 1, !tbaa !70
  store i8 79, ptr %i.kg, align 1, !tbaa !70
  %i.azh = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.azh, ptr %i.kh, align 1, !tbaa !70
  %i.azi = trunc i64 %.sroa.02700.0.copyload to i32
  store i32 %i.azi, ptr %i.it, align 8, !tbaa !735
  %i.azj = load ptr, ptr %0, align 8, !tbaa !446
  %i.azk = getelementptr i8, ptr %i.azj, i64 -24
  %i.azl = load i64, ptr %i.azk, align 8
  %i.azm = getelementptr inbounds i8, ptr %0, i64 %i.azl ; 6 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 232
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !727 ; 2 uses
  %.not.i1427 = icmp eq ptr %i.azo, null
  %i.azp = zext i1 %.not.i1427 to i8
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azm, i64 225 ; 2 uses
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !688, !range !86, !noundef !87
  %i.azs = trunc nuw i8 %i.azr to i1
  br i1 %i.azs, label %._crit_edge.i1433, label %bb.ky

._crit_edge.i1433:                                ; preds = %bb.kx
  %.phi.trans.insert.i1434 = getelementptr inbounds nuw i8, ptr %i.azm, i64 224
  %.pre.i1435 = load i8, ptr %.phi.trans.insert.i1434, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439

bb.ky:                                            ; preds = %bb.kx
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azm, i64 240
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1428 = icmp eq ptr %i.azu, null
  br i1 %.not.i.i.i1428, label %bb.kz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1436 unwind label %.loopexit.split-lp2983

.noexc1436:                                       ; preds = %bb.kz
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429: ; preds = %bb.ky
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 56
  %i.azw = load i8, ptr %i.azv, align 8, !tbaa !695
  %.not.i1.i.i1430 = icmp eq i8 %i.azw, 0
  br i1 %.not.i1.i.i1430, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azu, i64 89
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431

bb.lb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azu)
          to label %.noexc1437 unwind label %.loopexit2982

.noexc1437:                                       ; preds = %bb.lb
  %i.azz = load ptr, ptr %i.azu, align 8, !tbaa !446
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 48
  %i.bab = load ptr, ptr %i.baa, align 8
  %i.bac = invoke noundef signext i8 %i.bab(ptr noundef nonnull align 8 dereferenceable(570) %i.azu, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431 unwind label %.loopexit2982, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431: ; preds = %.noexc1437, %bb.la
  %.0.i.i.i1432 = phi i8 [ %i.azy, %bb.la ], [ %i.bac, %.noexc1437 ] ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azm, i64 224
  store i8 %.0.i.i.i1432, ptr %i.bad, align 8, !tbaa !700
  store i8 1, ptr %i.azq, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431, %._crit_edge.i1433
  %i.bae = phi i8 [ %.pre.i1435, %._crit_edge.i1433 ], [ %.0.i.i.i1432, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431 ]
  %i.baf = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azo, i8 %i.azp, ptr noundef nonnull align 8 dereferenceable(216) %i.azm, i8 noundef signext %i.bae, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lc unwind label %.loopexit2982 ; 0 uses

bb.lc:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit2982:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439, %bb.lb, %.noexc1437
  %lpad.loopexit2984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp2983:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp2983, %.loopexit2982
  %lpad.phi2986 = phi { ptr, i32 } [ %lpad.loopexit2984, %.loopexit2982 ], [ %lpad.loopexit.split-lp2985, %.loopexit.split-lp2983 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %bb.aix

bb.le:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !70
  %i.bag = load ptr, ptr %0, align 8, !tbaa !446
  %i.bah = getelementptr i8, ptr %i.bag, i64 -24
  %i.bai = load i64, ptr %i.bah, align 8
  %i.baj = getelementptr inbounds i8, ptr %0, i64 %i.bai
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 16
  %i.bal = load i64, ptr %i.bak, align 8, !tbaa !659
  %.not.i1440 = icmp eq i64 %i.bal, 0
  br i1 %.not.i1440, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 unwind label %.loopexit ; 0 uses

bb.lg:                                            ; preds = %bb.le
  %i.ban = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.lh:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.mn, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bao = icmp eq i8 %.0806, 0
  br i1 %i.bao, label %bb.lj, label %bb.me

bb.lj:                                            ; preds = %bb.li
  %i.bap = load i16, ptr %2, align 8, !tbaa !730  ; 9 uses
  %.not.i1445 = icmp eq i16 %i.bap, -32768
  br i1 %.not.i1445, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.baq = load i8, ptr %i.iw, align 2, !tbaa !731 ; 8 uses
  %i.bar = add i8 %i.baq, -1
  %spec.select.i.i1446 = icmp ult i8 %i.bar, 12
  br i1 %spec.select.i.i1446, label %bb.ll, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538

bb.ll:                                            ; preds = %bb.lk
  %i.bas = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1448 = icmp eq i8 %i.bas, 0
  br i1 %.not8.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not.i.i1449 = icmp eq i8 %i.baq, 2
  %i.bat = and i16 %i.bap, 3
  %i.bau = icmp eq i16 %i.bat, 0
  %or.cond.i1450 = and i1 %i.bau, %.not.i.i1449
  br i1 %or.cond.i1450, label %bb.ln, label %.thread.i.i1451

bb.ln:                                            ; preds = %bb.lm
  %i.bav = srem i16 %i.bap, 100
  %.not.i.i.i1454 = icmp ne i16 %i.bav, 0
  %i.baw = srem i16 %i.bap, 400
  %i.bax = icmp eq i16 %i.baw, 0
  %or.cond.i.i1455 = or i1 %.not.i.i.i1454, %i.bax
  br i1 %or.cond.i.i1455, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456, label %.thread.i.i1451

.thread.i.i1451:                                  ; preds = %bb.ln, %bb.lm
  %i.bay = zext nneg i8 %i.baq to i64
  %24 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bay
  %i.baz = getelementptr i8, ptr %24, i64 -1
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456: ; preds = %bb.ln, %.thread.i.i1451
  %.sroa.03.0.i.i1453 = phi i8 [ %i.bba, %.thread.i.i1451 ], [ 29, %bb.ln ]
  %.not2826 = icmp ult i8 %.sroa.03.0.i.i1453, %i.bas
  br i1 %.not2826, label %.thread2762, label %.thread2761

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread: ; preds = %bb.ll
  %i.bbb = load i8, ptr %i.gw, align 8, !tbaa !761, !range !86, !noundef !87
  %i.bbc = trunc nuw i8 %i.bbb to i1
  br i1 %i.bbc, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538: ; preds = %bb.lk
  %i.bbd = load i8, ptr %i.gw, align 8, !tbaa !761, !range !86, !noundef !87
  %i.bbe = trunc nuw i8 %i.bbd to i1
  br i1 %i.bbe, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread: ; preds = %bb.lj
  %i.bbf = load i8, ptr %i.gw, align 8, !tbaa !761, !range !86, !noundef !87
  %i.bbg = trunc nuw i8 %i.bbf to i1
  br i1 %i.bbg, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

.thread2762:                                      ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456
  %i.bbh = load i8, ptr %i.gw, align 8, !tbaa !761, !range !86, !noundef !87
  %i.bbi = trunc nuw i8 %i.bbh to i1
  br i1 %i.bbi, label %.thread2761, label %bb.md

.thread2761:                                      ; preds = %.thread2762, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456
  %.pr = load i8, ptr %i.ix, align 1, !tbaa !732  ; 3 uses
  %.not8.i1460 = icmp eq i8 %.pr, 0
  br i1 %.not8.i1460, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.lo

bb.lo:                                            ; preds = %.thread2761
  %.not.i.i1461 = icmp eq i8 %i.baq, 2
  %i.bbj = and i16 %i.bap, 3
  %i.bbk = icmp eq i16 %i.bbj, 0
  %or.cond.i1462 = and i1 %i.bbk, %.not.i.i1461
  br i1 %or.cond.i1462, label %bb.lp, label %.thread.i.i1463

bb.lp:                                            ; preds = %bb.lo
  %i.bbl = srem i16 %i.bap, 100
  %.not.i.i.i1466 = icmp ne i16 %i.bbl, 0
  %i.bbm = srem i16 %i.bap, 400
  %i.bbn = icmp eq i16 %i.bbm, 0
  %or.cond.i.i1467 = or i1 %.not.i.i.i1466, %i.bbn
  br i1 %or.cond.i.i1467, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468, label %.thread.i.i1463

.thread.i.i1463:                                  ; preds = %bb.lp, %bb.lo
  %i.bbo = zext nneg i8 %i.baq to i64
  %25 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbo
  %i.bbp = getelementptr i8, ptr %25, i64 -1
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468: ; preds = %bb.lp, %.thread.i.i1463
  %.sroa.03.0.i.i1465 = phi i8 [ %i.bbq, %.thread.i.i1463 ], [ 29, %bb.lp ]
  %.not2827 = icmp ult i8 %.sroa.03.0.i.i1465, %.pr
  br i1 %.not2827, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.lq

bb.lq:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468
  %i.bbr = sext i16 %i.bap to i32                 ; 3 uses
  %i.bbs = icmp samesign ult i8 %i.baq, 3
  %.neg.i.i1469 = sext i1 %i.bbs to i32
  %i.bbt = add nsw i32 %.neg.i.i1469, %i.bbr      ; 4 uses
  %i.bbu = zext nneg i8 %i.baq to i32
  %i.bbv = zext i8 %.pr to i32
  %i.bbw = add nsw i32 %i.bbt, -399
  %i.bbx = icmp slt i32 %i.bbt, 0
  %i.bby = select i1 %i.bbx, i32 %i.bbw, i32 %i.bbt
  %i.bbz = sdiv i32 %i.bby, 400                   ; 2 uses
  %.neg15.i.i1470 = mul nsw i32 %i.bbz, -400
  %i.bca = add nsw i32 %.neg15.i.i1470, %i.bbt    ; 3 uses
  %i.bcb = icmp samesign ugt i8 %i.baq, 2
  %.v.i.i1471 = select i1 %i.bcb, i32 -3, i32 9
  %i.bcc = add nsw i32 %.v.i.i1471, %i.bbu
  %i.bcd = mul nsw i32 %i.bcc, 153
  %i.bce = add nsw i32 %i.bcd, 2
  %i.bcf = udiv i32 %i.bce, 5
  %i.bcg = lshr i32 %i.bca, 2
  %i.bch = udiv i32 %i.bca, 100
  %i.bci = add nsw i32 %i.bbr, -1                 ; 2 uses
  %i.bcj = add nsw i32 %i.bbr, -400
  %i.bck = icmp slt i16 %i.bap, 1
  %i.bcl = select i1 %i.bck, i32 %i.bcj, i32 %i.bci
  %i.bcm = sdiv i32 %i.bcl, 400                   ; 2 uses
  %.neg15.i.i1483 = mul nsw i32 %i.bcm, -400
  %i.bcn = add nsw i32 %.neg15.i.i1483, %i.bci    ; 3 uses
  %i.bco = lshr i32 %i.bcn, 2
  %i.bcp = udiv i32 %i.bcn, 100
  %reass.add = sub nsw i32 %i.bca, %i.bcn
  %reass.mul = mul nsw i32 %reass.add, 365
  %reass.add2888 = sub nsw i32 %i.bbz, %i.bcm
  %reass.mul2889 = mul nsw i32 %reass.add2888, 146097
  %reass.sub = sub nsw i32 %i.bcp, %i.bco
  %i.bcq = add nsw i32 %reass.sub, -306
  %.neg2883 = add nsw i32 %i.bcq, %i.bbv
  %.neg2885 = add nsw i32 %.neg2883, %i.bcf
  %.neg2886 = add nsw i32 %.neg2885, %reass.mul2889
  %.neg2828 = add nsw i32 %.neg2886, %i.bcg
  %i.bcr = sub nsw i32 %.neg2828, %i.bch
  %i.bcs = add nsw i32 %i.bcr, %reass.mul
  br label %bb.lr

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread, %.thread2761, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468
  %i.bct = load i64, ptr %i.iq, align 8, !tbaa !744
  %i.bcu = mul nsw i64 %i.bct, 1000
  %i.bcv = load i64, ptr %i.jv, align 8, !tbaa !408
  %i.bcw = add nsw i64 %i.bcu, %i.bcv
  %i.bcx = load i64, ptr %i.ir, align 8, !tbaa !714
  %i.bcy = mul nsw i64 %i.bcx, 60000
  %i.bcz = add nsw i64 %i.bcw, %i.bcy
  %i.bda = load i64, ptr %i.ip, align 8, !tbaa !715
  %i.bdb = mul nsw i64 %i.bda, 3600000
  %i.bdc = add nsw i64 %i.bcz, %i.bdb
  %i.bdd = load i8, ptr %i.ju, align 8, !tbaa !766, !range !86, !noundef !87
  %i.bde = shl nuw nsw i8 %i.bdd, 1
  %i.bdf = zext nneg i8 %i.bde to i64
  %i.bdg = sub nsw i64 1, %i.bdf
  %i.bdh = mul nsw i64 %i.bdg, %i.bdc
  %i.bdi = sdiv i64 %i.bdh, 86400000
  %i.bdj = trunc i64 %i.bdi to i32
  br label %bb.lr

bb.lr:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, %bb.lq
  %.sroa.02692.0 = phi i32 [ %i.bcs, %bb.lq ], [ %i.bdj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.bdk = load ptr, ptr %0, align 8, !tbaa !446
  %i.bdl = getelementptr i8, ptr %i.bdk, i64 -24
  %i.bdm = load i64, ptr %i.bdl, align 8
  %i.bdn = getelementptr inbounds i8, ptr %0, i64 %i.bdm
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(264) %i.bdn)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488 unwind label %bb.ma

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488: ; preds = %bb.lr
  %i.bdo = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.bdp = getelementptr i8, ptr %i.bdo, i64 -24
  %i.bdq = load i64, ptr %i.bdp, align 8
  %i.bdr = getelementptr inbounds i8, ptr %0, i64 %i.bdq ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 225 ; 2 uses
  %i.bdt = load i8, ptr %i.bds, align 1, !tbaa !688, !range !86, !noundef !87
  %i.bdu = trunc nuw i8 %i.bdt to i1
  br i1 %i.bdu, label %._crit_edge.i.i1494, label %bb.ls

bb.ls:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdr, i64 240
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1489 = icmp eq ptr %i.bdw, null
  br i1 %.not.i.i.i.i1489, label %bb.lt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1497 unwind label %.loopexit.split-lp2978

.noexc1497:                                       ; preds = %bb.lt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490: ; preds = %bb.ls
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 56
  %i.bdy = load i8, ptr %i.bdx, align 8, !tbaa !695
  %.not.i1.i.i.i1491 = icmp eq i8 %i.bdy, 0
  br i1 %.not.i1.i.i.i1491, label %bb.lu, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492

bb.lu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdw)
          to label %.noexc1498 unwind label %.loopexit2977

.noexc1498:                                       ; preds = %bb.lu
  %i.bdz = load ptr, ptr %i.bdw, align 8, !tbaa !446
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 48
  %i.beb = load ptr, ptr %i.bea, align 8
  %i.bec = invoke noundef signext i8 %i.beb(ptr noundef nonnull align 8 dereferenceable(570) %i.bdw, i8 noundef signext 32)
          to label %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge unwind label %.loopexit2977, !inline_history !699 ; 0 uses

.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge: ; preds = %.noexc1498
  %.pre3459.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492: ; preds = %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490
  %.pre3459 = phi ptr [ %.pre3459.pre, %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge ], [ %i.bdo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490 ]
  store i8 1, ptr %i.bds, align 1, !tbaa !688
  br label %._crit_edge.i.i1494

._crit_edge.i.i1494:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492
  %i.bed = phi ptr [ %i.bdo, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488 ], [ %.pre3459, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492 ]
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdr, i64 224
  store i8 48, ptr %i.bee, align 8, !tbaa !700
  %i.bef = getelementptr i8, ptr %i.bed, i64 -24  ; 2 uses
  %i.beg = load i64, ptr %i.bef, align 8
  %i.beh = getelementptr inbounds i8, ptr %0, i64 %i.beg
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 24
  store i32 130, ptr %i.bei, align 8, !tbaa !701
  %i.bej = load i64, ptr %i.bef, align 8
  %i.bek = getelementptr inbounds i8, ptr %0, i64 %i.bej
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 16
  store i64 3, ptr %i.bel, align 8, !tbaa !659
  %i.bem = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.02692.0)
          to label %bb.lv unwind label %.loopexit2977 ; 0 uses

bb.lv:                                            ; preds = %._crit_edge.i.i1494
  %i.ben = load i32, ptr %i.kf, align 4, !tbaa !739
  %i.beo = and i32 %i.ben, 8192
  %.not.i1501 = icmp eq i32 %i.beo, 0
  br i1 %.not.i1501, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bep = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.beq = icmp eq i32 %i.bep, 0
  br i1 %i.beq, label %bb.lx, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502

bb.lx:                                            ; preds = %bb.lw
  %i.ber = load ptr, ptr %15, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 32
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !677
  %i.beu = icmp eq i32 %i.bet, 0
  br i1 %i.beu, label %bb.ly, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502

bb.ly:                                            ; preds = %bb.lx
  %i.bev = getelementptr inbounds nuw i8, ptr %i.ber, i64 232
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !727 ; 2 uses
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !446
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 48
  %i.bez = load ptr, ptr %i.bey, align 8
  %i.bfa = invoke noundef i32 %i.bez(ptr noundef nonnull align 8 dereferenceable(64) %i.bew)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 unwind label %bb.lz, !inline_history !743 ; 0 uses

bb.lz:                                            ; preds = %bb.ly
  %i.bfb = landingpad { ptr, i32 }
          catch ptr null
  %i.bfc = extractvalue { ptr, i32 } %i.bfb, 0
  call void @__clang_call_terminate(ptr %i.bfc) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502: ; preds = %bb.lv, %bb.lw, %bb.lx, %bb.ly
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ma:                                            ; preds = %bb.lr
  %i.bfd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit2977:                                    ; preds = %._crit_edge.i.i1494, %bb.lu, %.noexc1498
  %lpad.loopexit2979 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2978:                           ; preds = %bb.lt
  %lpad.loopexit.split-lp2980 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb
end_hunk_9
begin_hunk_10_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.wf:                                            ; preds = %bb.we
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chb, i64 240
  %i.chj = load ptr, ptr %i.chi, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1896 = icmp eq ptr %i.chj, null
  br i1 %.not.i.i.i1896, label %bb.wg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897

bb.wg:                                            ; preds = %bb.wf
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1904 unwind label %.loopexit.split-lp2948

.noexc1904:                                       ; preds = %bb.wg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897: ; preds = %bb.wf
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 56
  %i.chl = load i8, ptr %i.chk, align 8, !tbaa !695
  %.not.i1.i.i1898 = icmp eq i8 %i.chl, 0
  br i1 %.not.i1.i.i1898, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chj, i64 89
  %i.chn = load i8, ptr %i.chm, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899

bb.wi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.chj)
          to label %.noexc1905 unwind label %.loopexit2947

.noexc1905:                                       ; preds = %bb.wi
  %i.cho = load ptr, ptr %i.chj, align 8, !tbaa !446
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 48
  %i.chq = load ptr, ptr %i.chp, align 8
  %i.chr = invoke noundef signext i8 %i.chq(ptr noundef nonnull align 8 dereferenceable(570) %i.chj, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899 unwind label %.loopexit2947, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899: ; preds = %.noexc1905, %bb.wh
  %.0.i.i.i1900 = phi i8 [ %i.chn, %bb.wh ], [ %i.chr, %.noexc1905 ] ; 2 uses
  %i.chs = getelementptr inbounds nuw i8, ptr %i.chb, i64 224
  store i8 %.0.i.i.i1900, ptr %i.chs, align 8, !tbaa !700
  store i8 1, ptr %i.chf, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899, %._crit_edge.i1901
  %i.cht = phi i8 [ %.pre.i1903, %._crit_edge.i1901 ], [ %.0.i.i.i1900, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899 ]
  %i.chu = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.chd, i8 %i.che, ptr noundef nonnull align 8 dereferenceable(216) %i.chb, i8 noundef signext %i.cht, ptr noundef nonnull %6, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.jo)
          to label %bb.wj unwind label %.loopexit2947 ; 0 uses

bb.wj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit2947:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907, %bb.wi, %.noexc1905
  %lpad.loopexit2949 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

.loopexit.split-lp2948:                           ; preds = %bb.wg
  %lpad.loopexit.split-lp2950 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wk:                                            ; preds = %.loopexit.split-lp2948, %.loopexit2947
  %lpad.phi2951 = phi { ptr, i32 } [ %lpad.loopexit2949, %.loopexit2947 ], [ %lpad.loopexit.split-lp2950, %.loopexit.split-lp2948 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #26
  br label %bb.aix

bb.wl:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 117, ptr %i.bf, align 1, !tbaa !70
  %i.chv = load ptr, ptr %0, align 8, !tbaa !446
  %i.chw = getelementptr i8, ptr %i.chv, i64 -24
  %i.chx = load i64, ptr %i.chw, align 8
  %i.chy = getelementptr inbounds i8, ptr %0, i64 %i.chx
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chy, i64 16
  %i.cia = load i64, ptr %i.chz, align 8, !tbaa !659
  %.not.i1908 = icmp eq i64 %i.cia, 0
  br i1 %.not.i1908, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 unwind label %.loopexit ; 0 uses

bb.wn:                                            ; preds = %bb.wl
  %i.cic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 117)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912: ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.wo:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.yc, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cid = icmp eq i8 %.0806, 69
  br i1 %i.cid, label %bb.wq, label %bb.wz

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 37, ptr %i.be, align 1, !tbaa !70
  %i.cie = load ptr, ptr %0, align 8, !tbaa !446
  %i.cif = getelementptr i8, ptr %i.cie, i64 -24
  %i.cig = load i64, ptr %i.cif, align 8
  %i.cih = getelementptr inbounds i8, ptr %0, i64 %i.cig
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 16
  %i.cij = load i64, ptr %i.cii, align 8, !tbaa !659
  %.not.i1913 = icmp eq i64 %i.cij, 0
  br i1 %.not.i1913, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %bb.wt unwind label %.loopexit

bb.ws:                                            ; preds = %bb.wq
  %i.cil = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.wt unwind label %.loopexit ; 0 uses

bb.wt:                                            ; preds = %bb.wr, %bb.ws
  %.0.i1914 = phi ptr [ %i.cik, %bb.wr ], [ %0, %bb.ws ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 69, ptr %i.bd, align 1, !tbaa !70
  %i.cim = load ptr, ptr %.0.i1914, align 8, !tbaa !446
  %i.cin = getelementptr i8, ptr %i.cim, i64 -24
  %i.cio = load i64, ptr %i.cin, align 8
  %i.cip = getelementptr inbounds i8, ptr %.0.i1914, i64 %i.cio
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cip, i64 16
  %i.cir = load i64, ptr %i.ciq, align 8, !tbaa !659
  %.not.i1918 = icmp eq i64 %i.cir, 0
  br i1 %.not.i1918, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.cis = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1914, ptr noundef nonnull %i.bd, i64 noundef 1)
          to label %bb.ww unwind label %.loopexit

bb.wv:                                            ; preds = %bb.wt
  %i.cit = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1914, i8 noundef signext 69)
          to label %bb.ww unwind label %.loopexit ; 0 uses

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.0.i1919 = phi ptr [ %i.cis, %bb.wu ], [ %.0.i1914, %bb.wv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.ciu = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i8 %i.ciu, ptr %i.bc, align 1, !tbaa !70
  %i.civ = load ptr, ptr %.0.i1919, align 8, !tbaa !446
  %i.ciw = getelementptr i8, ptr %i.civ, i64 -24
  %i.cix = load i64, ptr %i.ciw, align 8
  %i.ciy = getelementptr inbounds i8, ptr %.0.i1919, i64 %i.cix
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 16
  %i.cja = load i64, ptr %i.ciz, align 8, !tbaa !659
  %.not.i1923 = icmp eq i64 %i.cja, 0
  br i1 %.not.i1923, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cjb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1919, ptr noundef nonnull %i.bc, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 unwind label %.loopexit ; 0 uses

bb.wy:                                            ; preds = %bb.ww
  %i.cjc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1919, i8 noundef signext %i.ciu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927: ; preds = %bb.wy, %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.wz:                                            ; preds = %bb.wp
  %i.cjd = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i1928 = icmp eq i16 %i.cjd, -32768
  br i1 %.not.i1928, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.cje = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.cjf = add i8 %i.cje, -1
  %spec.select.i.i1929 = icmp ult i8 %i.cjf, 12
  br i1 %spec.select.i.i1929, label %bb.xb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread

bb.xb:                                            ; preds = %bb.xa
  %i.cjg = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1931 = icmp eq i8 %i.cjg, 0
  br i1 %.not8.i1931, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %.not.i.i1932 = icmp eq i8 %i.cje, 2
  %i.cjh = and i16 %i.cjd, 3
  %i.cji = icmp eq i16 %i.cjh, 0
  %or.cond.i1933 = and i1 %i.cji, %.not.i.i1932
  br i1 %or.cond.i1933, label %bb.xd, label %.thread.i.i1934

bb.xd:                                            ; preds = %bb.xc
  %i.cjj = srem i16 %i.cjd, 100
  %.not.i.i.i1937 = icmp ne i16 %i.cjj, 0
  %i.cjk = srem i16 %i.cjd, 400
  %i.cjl = icmp eq i16 %i.cjk, 0
  %or.cond.i.i1938 = or i1 %.not.i.i.i1937, %i.cjl
  br i1 %or.cond.i.i1938, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939, label %.thread.i.i1934

.thread.i.i1934:                                  ; preds = %bb.xd, %bb.xc
  %i.cjm = zext nneg i8 %i.cje to i64
  %26 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cjm
  %i.cjn = getelementptr i8, ptr %26, i64 -1
  %i.cjo = load i8, ptr %i.cjn, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939: ; preds = %bb.xd, %.thread.i.i1934
  %.sroa.03.0.i.i1936 = phi i8 [ %i.cjo, %.thread.i.i1934 ], [ 29, %bb.xd ]
  %.not2820 = icmp ult i8 %.sroa.03.0.i.i1936, %i.cjg
  br i1 %.not2820, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread: ; preds = %bb.xb, %bb.xa, %bb.wz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939
  %i.cjp = load ptr, ptr %0, align 8, !tbaa !446
  %i.cjq = getelementptr i8, ptr %i.cjp, i64 -24
  %i.cjr = load i64, ptr %i.cjq, align 8
  %i.cjs = getelementptr inbounds i8, ptr %0, i64 %i.cjr ; 2 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 32
  %i.cju = load i32, ptr %i.cjt, align 8, !tbaa !677
  %i.cjv = or i32 %i.cju, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cjs, i32 noundef %i.cjv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge unwind label %bb.xe

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread
  %.pre3449 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3450 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3451 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941

bb.xe:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread
  %i.cjw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939
  %i.cjx = phi i8 [ %.pre3451, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cjg, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ]
  %i.cjy = phi i8 [ %.pre3450, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cje, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ] ; 3 uses
  %i.cjz = phi i16 [ %.pre3449, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cjd, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ] ; 2 uses
  %i.cka = sext i16 %i.cjz to i32                 ; 4 uses
  %i.ckb = icmp ult i8 %i.cjy, 3
  %.neg.i.i1942 = sext i1 %i.ckb to i32
  %i.ckc = add nsw i32 %.neg.i.i1942, %i.cka      ; 4 uses
  %i.ckd = zext i8 %i.cjy to i32
  %i.cke = zext i8 %i.cjx to i32
  %i.ckf = add nsw i32 %i.ckc, -399
  %i.ckg = icmp slt i32 %i.ckc, 0
  %i.ckh = select i1 %i.ckg, i32 %i.ckf, i32 %i.ckc
  %i.cki = sdiv i32 %i.ckh, 400                   ; 2 uses
  %.neg15.i.i1943 = mul nsw i32 %i.cki, -400
  %i.ckj = add nsw i32 %.neg15.i.i1943, %i.ckc    ; 3 uses
  %i.ckk = icmp ugt i8 %i.cjy, 2
  %.v.i.i1944 = select i1 %i.ckk, i32 -3, i32 9
  %i.ckl = add nsw i32 %.v.i.i1944, %i.ckd
  %i.ckm = mul nsw i32 %i.ckl, 153
  %i.ckn = add nsw i32 %i.ckm, 2
  %i.cko = udiv i32 %i.ckn, 5
  %i.ckp = mul nsw i32 %i.ckj, 365
  %i.ckq = lshr i32 %i.ckj, 2
  %i.ckr = udiv i32 %i.ckj, 100
  %i.cks = mul nsw i32 %i.cki, 146097
  %i.ckt = add nuw nsw i32 %i.cke, -719469
  %i.cku = add nsw i32 %i.ckt, %i.cko
  %i.ckv = add nsw i32 %i.cku, %i.cks
  %i.ckw = add nsw i32 %i.ckv, %i.ckq
  %i.ckx = add nsw i32 %i.ckw, %i.ckp
  %i.cky = sub nsw i32 %i.ckx, %i.ckr             ; 3 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %bb.xf
    i8 79, label %bb.xt
  ]

bb.xf:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941
  %i.ckz = add nsw i32 %i.cka, -1                 ; 2 uses
  %i.cla = add nsw i32 %i.cka, -400
  %i.clb = icmp slt i16 %i.cjz, 1
  %i.clc = select i1 %i.clb, i32 %i.cla, i32 %i.ckz
  %i.cld = sdiv i32 %i.clc, 400                   ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %i.cld, -400
  %i.cle = add nsw i32 %.neg15.i.i.i.i, %i.ckz    ; 3 uses
  %i.clf = mul nsw i32 %i.cle, 365
  %i.clg = lshr i32 %i.cle, 2
  %i.clh = udiv i32 %i.cle, 100
  %i.cli = mul nsw i32 %i.cld, 146097
  %i.clj = add nsw i32 %i.cli, -719162
  %i.clk = add nsw i32 %i.clj, %i.clg
  %i.cll = add nsw i32 %i.clk, %i.clf
  %i.clm = sub nsw i32 %i.cll, %i.clh             ; 4 uses
  %i.cln = icmp sgt i32 %i.clm, -5
  %i.clo = add nsw i32 %i.clm, 4
  %.in.i.i.i.i1953 = select i1 %i.cln, i32 %i.clo, i32 %i.clm
  %i.clp = urem i32 %.in.i.i.i.i1953, 7           ; 3 uses
  %i.clq = sub nuw nsw i32 -6, %i.clp
  %.not2825 = icmp eq i32 %i.clp, 0
  %i.clr = select i1 %.not2825, i32 0, i32 %i.clq
  %.fr.i.i.i1954 = freeze i32 %i.clr              ; 2 uses
  %i.cls = srem i32 %.fr.i.i.i1954, 7
  %i.clt = add i32 %i.clp, %.fr.i.i.i1954
  %i.clu = sub i32 %i.clm, %i.clt
  %i.clv = add i32 %i.clu, %i.cls                 ; 2 uses
  %i.clw = icmp slt i32 %i.cky, %i.clv
  br i1 %i.clw, label %bb.xg, label %bb.xn

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 48, ptr %i.bb, align 1, !tbaa !70
  %i.clx = load ptr, ptr %0, align 8, !tbaa !446
  %i.cly = getelementptr i8, ptr %i.clx, i64 -24
  %i.clz = load i64, ptr %i.cly, align 8
  %i.cma = getelementptr inbounds i8, ptr %0, i64 %i.clz
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 16
  %i.cmc = load i64, ptr %i.cmb, align 8, !tbaa !659
  %.not.i1957 = icmp eq i64 %i.cmc, 0
  br i1 %.not.i1957, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cmd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bb, i64 noundef 1)
          to label %bb.xj unwind label %bb.xm

bb.xi:                                            ; preds = %bb.xg
  %i.cme = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.xj unwind label %bb.xm     ; 0 uses

bb.xj:                                            ; preds = %bb.xh, %bb.xi
  %.0.i1958 = phi ptr [ %i.cmd, %bb.xh ], [ %0, %bb.xi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i8 48, ptr %i.ba, align 1, !tbaa !70
  %i.cmf = load ptr, ptr %.0.i1958, align 8, !tbaa !446
  %i.cmg = getelementptr i8, ptr %i.cmf, i64 -24
  %i.cmh = load i64, ptr %i.cmg, align 8
  %i.cmi = getelementptr inbounds i8, ptr %.0.i1958, i64 %i.cmh
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cmi, i64 16
  %i.cmk = load i64, ptr %i.cmj, align 8, !tbaa !659
  %.not.i1962 = icmp eq i64 %i.cmk, 0
  br i1 %.not.i1962, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1958, ptr noundef nonnull %i.ba, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 unwind label %bb.xm ; 0 uses

bb.xl:                                            ; preds = %bb.xj
  %i.cmm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1958, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 unwind label %bb.xm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966: ; preds = %bb.xl, %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.xm:                                            ; preds = %bb.xl, %bb.xk, %bb.xi, %bb.xh
  %i.cmn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xn:                                            ; preds = %bb.xf
  %i.cmo = sub nsw i32 %i.cky, %i.clv             ; 2 uses
  %i.cmp = udiv i32 %i.cmo, 7
  %i.cmq = add nuw nsw i32 %i.cmp, 1
  %i.cmr = icmp ult i32 %i.cmo, 63
  br i1 %i.cmr, label %bb.xo, label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 48, ptr %i.az, align 1, !tbaa !70
  %i.cms = load ptr, ptr %0, align 8, !tbaa !446
  %i.cmt = getelementptr i8, ptr %i.cms, i64 -24
  %i.cmu = load i64, ptr %i.cmt, align 8
  %i.cmv = getelementptr inbounds i8, ptr %0, i64 %i.cmu
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 16
  %i.cmx = load i64, ptr %i.cmw, align 8, !tbaa !659
  %.not.i1969 = icmp eq i64 %i.cmx, 0
  br i1 %.not.i1969, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cmy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973 unwind label %bb.xr ; 0 uses

bb.xq:                                            ; preds = %bb.xo
  %i.cmz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973 unwind label %bb.xr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973: ; preds = %bb.xq, %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xs
  %i.cna = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973, %bb.xn
  %i.cnb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cmq)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.xr ; 0 uses

bb.xt:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #26
  store i8 37, ptr %i.fn, align 1, !tbaa !70
  store i8 79, ptr %i.jj, align 1, !tbaa !70
  %i.cnc = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.cnc, ptr %i.jk, align 1, !tbaa !70
  %i.cnd = add nsw i32 %i.cka, -1900
  store i32 %i.cnd, ptr %i.ij, align 4, !tbaa !737
  %i.cne = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.xu unwind label %.loopexit2942

end_hunk_10
begin_hunk_11_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %.not.i1990 = icmp eq ptr %i.cnz, null
  %i.coa = zext i1 %.not.i1990 to i8
  %i.cob = getelementptr inbounds nuw i8, ptr %i.cnx, i64 225 ; 2 uses
  %i.coc = load i8, ptr %i.cob, align 1, !tbaa !688, !range !86, !noundef !87
  %i.cod = trunc nuw i8 %i.coc to i1
  br i1 %i.cod, label %._crit_edge.i1996, label %bb.xx

._crit_edge.i1996:                                ; preds = %bb.xw
  %.phi.trans.insert.i1997 = getelementptr inbounds nuw i8, ptr %i.cnx, i64 224
  %.pre.i1998 = load i8, ptr %.phi.trans.insert.i1997, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002

bb.xx:                                            ; preds = %bb.xw
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cnx, i64 240
  %i.cof = load ptr, ptr %i.coe, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1991 = icmp eq ptr %i.cof, null
  br i1 %.not.i.i.i1991, label %bb.xy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992

bb.xy:                                            ; preds = %bb.xx
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1999 unwind label %.loopexit.split-lp2943

.noexc1999:                                       ; preds = %bb.xy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992: ; preds = %bb.xx
  %i.cog = getelementptr inbounds nuw i8, ptr %i.cof, i64 56
  %i.coh = load i8, ptr %i.cog, align 8, !tbaa !695
  %.not.i1.i.i1993 = icmp eq i8 %i.coh, 0
  br i1 %.not.i1.i.i1993, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992
  %i.coi = getelementptr inbounds nuw i8, ptr %i.cof, i64 89
  %i.coj = load i8, ptr %i.coi, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994

bb.ya:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cof)
          to label %.noexc2000 unwind label %.loopexit2942

.noexc2000:                                       ; preds = %bb.ya
  %i.cok = load ptr, ptr %i.cof, align 8, !tbaa !446
  %i.col = getelementptr inbounds nuw i8, ptr %i.cok, i64 48
  %i.com = load ptr, ptr %i.col, align 8
  %i.con = invoke noundef signext i8 %i.com(ptr noundef nonnull align 8 dereferenceable(570) %i.cof, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994 unwind label %.loopexit2942, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994: ; preds = %.noexc2000, %bb.xz
  %.0.i.i.i1995 = phi i8 [ %i.coj, %bb.xz ], [ %i.con, %.noexc2000 ] ; 2 uses
  %i.coo = getelementptr inbounds nuw i8, ptr %i.cnx, i64 224
  store i8 %.0.i.i.i1995, ptr %i.coo, align 8, !tbaa !700
  store i8 1, ptr %i.cob, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994, %._crit_edge.i1996
  %i.cop = phi i8 [ %.pre.i1998, %._crit_edge.i1996 ], [ %.0.i.i.i1995, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994 ]
  %i.coq = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.cnz, i8 %i.coa, ptr noundef nonnull align 8 dereferenceable(216) %i.cnx, i8 noundef signext %i.cop, ptr noundef nonnull %6, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.jl)
          to label %.thread2769 unwind label %.loopexit2942 ; 0 uses

.thread2769:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yb:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #26
  br label %_ZNSolsEj.exit2148

bb.yc:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 85, ptr %i.ay, align 1, !tbaa !70
  %i.cor = load ptr, ptr %0, align 8, !tbaa !446
  %i.cos = getelementptr i8, ptr %i.cor, i64 -24
  %i.cot = load i64, ptr %i.cos, align 8
  %i.cou = getelementptr inbounds i8, ptr %0, i64 %i.cot
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cou, i64 16
  %i.cow = load i64, ptr %i.cov, align 8, !tbaa !659
  %.not.i2003 = icmp eq i64 %i.cow, 0
  br i1 %.not.i2003, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 unwind label %.loopexit ; 0 uses

bb.ye:                                            ; preds = %bb.yc
  %i.coy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 85)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007: ; preds = %bb.ye, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yf:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.zk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.coz = icmp eq i8 %.0806, 69
  br i1 %i.coz, label %bb.yh, label %bb.yq

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 37, ptr %i.ax, align 1, !tbaa !70
  %i.cpa = load ptr, ptr %0, align 8, !tbaa !446
  %i.cpb = getelementptr i8, ptr %i.cpa, i64 -24
  %i.cpc = load i64, ptr %i.cpb, align 8
  %i.cpd = getelementptr inbounds i8, ptr %0, i64 %i.cpc
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cpd, i64 16
  %i.cpf = load i64, ptr %i.cpe, align 8, !tbaa !659
  %.not.i2008 = icmp eq i64 %i.cpf, 0
  br i1 %.not.i2008, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.cpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ax, i64 noundef 1)
          to label %bb.yk unwind label %.loopexit

bb.yj:                                            ; preds = %bb.yh
  %i.cph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.yk unwind label %.loopexit ; 0 uses

bb.yk:                                            ; preds = %bb.yi, %bb.yj
  %.0.i2009 = phi ptr [ %i.cpg, %bb.yi ], [ %0, %bb.yj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 69, ptr %i.aw, align 1, !tbaa !70
  %i.cpi = load ptr, ptr %.0.i2009, align 8, !tbaa !446
  %i.cpj = getelementptr i8, ptr %i.cpi, i64 -24
  %i.cpk = load i64, ptr %i.cpj, align 8
  %i.cpl = getelementptr inbounds i8, ptr %.0.i2009, i64 %i.cpk
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.cpl, i64 16
  %i.cpn = load i64, ptr %i.cpm, align 8, !tbaa !659
  %.not.i2013 = icmp eq i64 %i.cpn, 0
  br i1 %.not.i2013, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cpo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2009, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %bb.yn unwind label %.loopexit

bb.ym:                                            ; preds = %bb.yk
  %i.cpp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2009, i8 noundef signext 69)
          to label %bb.yn unwind label %.loopexit ; 0 uses

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %.0.i2014 = phi ptr [ %i.cpo, %bb.yl ], [ %.0.i2009, %bb.ym ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cpq = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %i.cpq, ptr %i.av, align 1, !tbaa !70
  %i.cpr = load ptr, ptr %.0.i2014, align 8, !tbaa !446
  %i.cps = getelementptr i8, ptr %i.cpr, i64 -24
  %i.cpt = load i64, ptr %i.cps, align 8
  %i.cpu = getelementptr inbounds i8, ptr %.0.i2014, i64 %i.cpt
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpu, i64 16
  %i.cpw = load i64, ptr %i.cpv, align 8, !tbaa !659
  %.not.i2018 = icmp eq i64 %i.cpw, 0
  br i1 %.not.i2018, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cpx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2014, ptr noundef nonnull %i.av, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 unwind label %.loopexit ; 0 uses

bb.yp:                                            ; preds = %bb.yn
  %i.cpy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2014, i8 noundef signext %i.cpq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yq:                                            ; preds = %bb.yg
  %i.cpz = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i2023 = icmp eq i16 %i.cpz, -32768
  br i1 %.not.i2023, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cqa = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.cqb = add i8 %i.cqa, -1
  %spec.select.i.i2024 = icmp ult i8 %i.cqb, 12
  br i1 %spec.select.i.i2024, label %bb.ys, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread

bb.ys:                                            ; preds = %bb.yr
  %i.cqc = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i2026 = icmp eq i8 %i.cqc, 0
  br i1 %.not8.i2026, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %.not.i.i2027 = icmp eq i8 %i.cqa, 2
  %i.cqd = and i16 %i.cpz, 3
  %i.cqe = icmp eq i16 %i.cqd, 0
  %or.cond.i2028 = and i1 %i.cqe, %.not.i.i2027
  br i1 %or.cond.i2028, label %bb.yu, label %.thread.i.i2029

bb.yu:                                            ; preds = %bb.yt
  %i.cqf = srem i16 %i.cpz, 100
  %.not.i.i.i2032 = icmp ne i16 %i.cqf, 0
  %i.cqg = srem i16 %i.cpz, 400
  %i.cqh = icmp eq i16 %i.cqg, 0
  %or.cond.i.i2033 = or i1 %.not.i.i.i2032, %i.cqh
  br i1 %or.cond.i.i2033, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034, label %.thread.i.i2029

.thread.i.i2029:                                  ; preds = %bb.yu, %bb.yt
  %i.cqi = zext nneg i8 %i.cqa to i64
  %27 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cqi
  %i.cqj = getelementptr i8, ptr %27, i64 -1
  %i.cqk = load i8, ptr %i.cqj, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034: ; preds = %bb.yu, %.thread.i.i2029
  %.sroa.03.0.i.i2031 = phi i8 [ %i.cqk, %.thread.i.i2029 ], [ 29, %bb.yu ]
  %.not2812 = icmp ult i8 %.sroa.03.0.i.i2031, %i.cqc
  br i1 %.not2812, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread: ; preds = %bb.ys, %bb.yr, %bb.yq, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034
  %i.cql = load ptr, ptr %0, align 8, !tbaa !446
  %i.cqm = getelementptr i8, ptr %i.cql, i64 -24
  %i.cqn = load i64, ptr %i.cqm, align 8
  %i.cqo = getelementptr inbounds i8, ptr %0, i64 %i.cqn ; 2 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 32
  %i.cqq = load i32, ptr %i.cqp, align 8, !tbaa !677
  %i.cqr = or i32 %i.cqq, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cqo, i32 noundef %i.cqr)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread
  %.pre3446 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3447 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3448 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034
  %i.cqs = phi i8 [ %.pre3448, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cqc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ]
  %i.cqt = phi i8 [ %.pre3447, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cqa, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ] ; 3 uses
  %i.cqu = phi i16 [ %.pre3446, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cpz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ]
  %i.cqv = sext i16 %i.cqu to i32                 ; 2 uses
  %i.cqw = icmp ult i8 %i.cqt, 3
  %.neg.i.i2037 = sext i1 %i.cqw to i32
  %i.cqx = add nsw i32 %.neg.i.i2037, %i.cqv      ; 4 uses
  %i.cqy = zext i8 %i.cqt to i32
  %i.cqz = zext i8 %i.cqs to i32
  %i.cra = add nsw i32 %i.cqx, -399
  %i.crb = icmp slt i32 %i.cqx, 0
  %i.crc = select i1 %i.crb, i32 %i.cra, i32 %i.cqx
  %i.crd = sdiv i32 %i.crc, 400                   ; 2 uses
  %.neg15.i.i2038 = mul nsw i32 %i.crd, -400
  %i.cre = add nsw i32 %.neg15.i.i2038, %i.cqx    ; 3 uses
  %i.crf = icmp ugt i8 %i.cqt, 2
  %.v.i.i2039 = select i1 %i.crf, i32 -3, i32 9
  %i.crg = add nsw i32 %.v.i.i2039, %i.cqy
  %i.crh = mul nsw i32 %i.crg, 153
  %i.cri = add nsw i32 %i.crh, 2
  %i.crj = udiv i32 %i.cri, 5
  %i.crk = mul nsw i32 %i.cre, 365
  %i.crl = lshr i32 %i.cre, 2
  %i.crm = udiv i32 %i.cre, 100
  %i.crn = mul nsw i32 %i.crd, 146097
  %i.cro = add nuw nsw i32 %i.cqz, -719469
  %i.crp = add nsw i32 %i.cro, %i.crj
  %i.crq = add nsw i32 %i.crp, %i.crn
  %i.crr = add nsw i32 %i.crq, %i.crl
  %i.crs = add nsw i32 %i.crr, %i.crk
  %i.crt = sub nsw i32 %i.crs, %i.crm             ; 6 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %.thread.i.i.i.i2074
    i8 79, label %bb.zb
  ]

.thread.i.i.i.i2074:                              ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036
  %i.cru = add nsw i32 %i.crt, 719471             ; 2 uses
  %i.crv = icmp sgt i32 %i.crt, -719472
  %i.crw = add nsw i32 %i.crt, 573375
  %i.crx = select i1 %i.crv, i32 %i.cru, i32 %i.crw
  %i.cry = sdiv i32 %i.crx, 146097                ; 2 uses
  %.neg.i.i2041 = mul nsw i32 %i.cry, -146097
  %i.crz = add nsw i32 %.neg.i.i2041, %i.cru      ; 5 uses
  %i.csa = udiv i32 %i.crz, 1460
  %i.csb = udiv i32 %i.crz, 36524
  %i.csc = udiv i32 %i.crz, 146096
  %.neg2860 = add nsw i32 %i.csb, %i.crz
  %i.csd = add nuw nsw i32 %i.csc, %i.csa
  %i.cse = sub nsw i32 %.neg2860, %i.csd          ; 3 uses
  %i.csf = udiv i32 %i.cse, 365                   ; 2 uses
  %i.csg = mul nsw i32 %i.cry, 400
  %i.csh = add nsw i32 %i.csf, %i.csg
  %i.csi = udiv i32 %i.cse, 1460
  %i.csj = udiv i32 %i.cse, 36500
  %.neg36.i.i2043 = mul i32 %i.csf, -365
  %.neg37.i.i2044 = sub nsw i32 %i.crz, %i.csi
  %.neg25.i.i2045 = add nsw i32 %.neg37.i.i2044, %i.csj
  %i.csk = add i32 %.neg25.i.i2045, %.neg36.i.i2043
  %i.csl = mul i32 %i.csk, 5
  %i.csm = add i32 %i.csl, 2                      ; 2 uses
  %i.csn = udiv i32 %i.csm, 153
  %i.cso = icmp ult i32 %i.csm, 1530
  %.v.i.i2046 = select i1 %i.cso, i32 3, i32 -9
  %i.csp = add nsw i32 %.v.i.i2046, %i.csn
  %i.csq = icmp ult i32 %i.csp, 3
  %i.csr = zext i1 %i.csq to i32
  %i.css = add nsw i32 %i.csh, %i.csr
  %.sroa.02606.0.extract.trunc = shl i32 %i.css, 16 ; 2 uses
  %sext = add i32 %.sroa.02606.0.extract.trunc, -65536
  %i.cst = ashr exact i32 %sext, 16               ; 4 uses
  %i.csu = add nsw i32 %i.cst, -399
  %i.csv = icmp slt i32 %i.cst, 0
  %i.csw = select i1 %i.csv, i32 %i.csu, i32 %i.cst
  %i.csx = sdiv i32 %i.csw, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2069 = mul nsw i32 %i.csx, -400
  %i.csy = add nsw i32 %.neg15.i.i.i.i.i2069, %i.cst ; 3 uses
  %i.csz = mul nsw i32 %i.csy, 365
  %i.cta = lshr i32 %i.csy, 2
  %i.ctb = udiv i32 %i.csy, 100
  %i.ctc = mul nsw i32 %i.csx, 146097
  %i.ctd = add nsw i32 %i.ctc, 275
  %i.cte = add nsw i32 %i.ctd, %i.cta
  %i.ctf = add nsw i32 %i.cte, %i.csz
  %i.ctg = sub nsw i32 %i.ctf, %i.ctb             ; 3 uses
  %i.cth = icmp sgt i32 %i.ctg, 719433
  %.in.i.i.i.i2071.v = select i1 %i.cth, i32 -719434, i32 -719438
  %.in.i.i.i.i2071 = add nsw i32 %i.ctg, %.in.i.i.i.i2071.v
  %i.cti = urem i32 %.in.i.i.i.i2071, 7           ; 3 uses
  %i.ctj = icmp samesign ult i32 %i.cti, 4
  %.v = select i1 %i.ctj, i32 -10, i32 -4
  %i.ctk = add nsw i32 %i.cti, %.v
  %.fr.i.i.i2073 = freeze i32 %i.ctk              ; 2 uses
  %i.ctl = srem i32 %.fr.i.i.i2073, 7
  %i.ctm = sub nsw i32 %i.ctg, %i.cti
  %i.ctn = add nsw i32 %i.ctm, -719430
  %i.cto = add i32 %i.ctn, %.fr.i.i.i2073
  %i.ctp = sub i32 %i.cto, %i.ctl                 ; 2 uses
  %i.ctq = icmp slt i32 %i.crt, %i.ctp
  br i1 %i.ctq, label %.thread.i.i.i.i2101, label %bb.yv

.thread.i.i.i.i2101:                              ; preds = %.thread.i.i.i.i2074
  %sext2817 = add i32 %.sroa.02606.0.extract.trunc, -131072
  %i.ctr = ashr exact i32 %sext2817, 16           ; 4 uses
  %i.cts = add nsw i32 %i.ctr, -399
  %i.ctt = icmp slt i32 %i.ctr, 0
  %i.ctu = select i1 %i.ctt, i32 %i.cts, i32 %i.ctr
  %i.ctv = sdiv i32 %i.ctu, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2096 = mul nsw i32 %i.ctv, -400
  %i.ctw = add nsw i32 %.neg15.i.i.i.i.i2096, %i.ctr ; 3 uses
  %i.ctx = mul nsw i32 %i.ctw, 365
  %i.cty = lshr i32 %i.ctw, 2
  %i.ctz = udiv i32 %i.ctw, 100
  %i.cua = mul nsw i32 %i.ctv, 146097
  %i.cub = add nsw i32 %i.cua, 275
  %i.cuc = add nsw i32 %i.cub, %i.cty
  %i.cud = add nsw i32 %i.cuc, %i.ctx
  %i.cue = sub nsw i32 %i.cud, %i.ctz             ; 3 uses
  %i.cuf = icmp sgt i32 %i.cue, 719433
  %.in.i.i.i.i2098.v = select i1 %i.cuf, i32 -719434, i32 -719438
  %.in.i.i.i.i2098 = add nsw i32 %i.cue, %.in.i.i.i.i2098.v
  %i.cug = urem i32 %.in.i.i.i.i2098, 7           ; 3 uses
  %i.cuh = icmp samesign ult i32 %i.cug, 4
  %.v3238 = select i1 %i.cuh, i32 -10, i32 -4
  %i.cui = add nsw i32 %i.cug, %.v3238
  %.fr.i.i.i2100 = freeze i32 %i.cui              ; 2 uses
  %i.cuj = srem i32 %.fr.i.i.i2100, 7
  %i.cuk = sub nsw i32 %i.cue, %i.cug
  %i.cul = add nsw i32 %i.cuk, -719430
  %i.cum = add i32 %i.cul, %.fr.i.i.i2100
  %i.cun = sub i32 %i.cum, %i.cuj
  br label %bb.yv

bb.yv:                                            ; preds = %.thread.i.i.i.i2101, %.thread.i.i.i.i2074
  %.sroa.02610.0 = phi i32 [ %i.cun, %.thread.i.i.i.i2101 ], [ %i.ctp, %.thread.i.i.i.i2074 ]
  %i.cuo = sub nsw i32 %i.crt, %.sroa.02610.0     ; 2 uses
  %i.cup = sdiv i32 %i.cuo, 7
  %i.cuq = add nsw i32 %i.cup, 1
  %i.cur = icmp slt i32 %i.cuo, 63
  br i1 %i.cur, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 48, ptr %i.au, align 1, !tbaa !70
  %i.cus = load ptr, ptr %0, align 8, !tbaa !446
  %i.cut = getelementptr i8, ptr %i.cus, i64 -24
  %i.cuu = load i64, ptr %i.cut, align 8
  %i.cuv = getelementptr inbounds i8, ptr %0, i64 %i.cuu
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuv, i64 16
  %i.cux = load i64, ptr %i.cuw, align 8, !tbaa !659
  %.not.i2108 = icmp eq i64 %i.cux, 0
  br i1 %.not.i2108, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cuy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112 unwind label %bb.yz ; 0 uses

bb.yy:                                            ; preds = %bb.yw
  %i.cuz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112 unwind label %bb.yz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112: ; preds = %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.za
  %i.cva = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.za:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112, %bb.yv
  %i.cvb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cuq)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.yz ; 0 uses

end_hunk_11
begin_hunk_12_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  br label %bb.aix

bb.aaa:                                           ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i8 37, ptr %i.as, align 1, !tbaa !70
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxd, i64 16
  %i.cyh = load i64, ptr %i.cyg, align 8, !tbaa !659
  %.not.i2162 = icmp eq i64 %i.cyh, 0
  br i1 %.not.i2162, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cyi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %bb.aad unwind label %bb.zq

bb.aac:                                           ; preds = %bb.aaa
  %i.cyj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aad unwind label %bb.zq    ; 0 uses

bb.aad:                                           ; preds = %bb.aab, %bb.aac
  %.0.i2163 = phi ptr [ %i.cyi, %bb.aab ], [ %0, %bb.aac ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %.0806, ptr %i.ar, align 1, !tbaa !70
  %i.cyk = load ptr, ptr %.0.i2163, align 8, !tbaa !446
  %i.cyl = getelementptr i8, ptr %i.cyk, i64 -24
  %i.cym = load i64, ptr %i.cyl, align 8
  %i.cyn = getelementptr inbounds i8, ptr %.0.i2163, i64 %i.cym
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 16
  %i.cyp = load i64, ptr %i.cyo, align 8, !tbaa !659
  %.not.i2167 = icmp eq i64 %i.cyp, 0
  br i1 %.not.i2167, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cyq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2163, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %bb.aag unwind label %bb.zq

bb.aaf:                                           ; preds = %bb.aad
  %i.cyr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2163, i8 noundef signext %.0806)
          to label %bb.aag unwind label %bb.zq    ; 0 uses

bb.aag:                                           ; preds = %bb.aae, %bb.aaf
  %.0.i2168 = phi ptr [ %i.cyq, %bb.aae ], [ %.0.i2163, %bb.aaf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cys = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.cys, ptr %i.aq, align 1, !tbaa !70
  %i.cyt = load ptr, ptr %.0.i2168, align 8, !tbaa !446
  %i.cyu = getelementptr i8, ptr %i.cyt, i64 -24
  %i.cyv = load i64, ptr %i.cyu, align 8
  %i.cyw = getelementptr inbounds i8, ptr %.0.i2168, i64 %i.cyv
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyw, i64 16
  %i.cyy = load i64, ptr %i.cyx, align 8, !tbaa !659
  %.not.i2172 = icmp eq i64 %i.cyy, 0
  br i1 %.not.i2172, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cyz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2168, ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 unwind label %bb.zq ; 0 uses

bb.aai:                                           ; preds = %bb.aag
  %i.cza = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2168, i8 noundef signext %i.cys)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 unwind label %bb.zq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176: ; preds = %bb.aai, %bb.aah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aaj:                                           ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 119, ptr %i.ap, align 1, !tbaa !70
  %i.czb = load ptr, ptr %0, align 8, !tbaa !446
  %i.czc = getelementptr i8, ptr %i.czb, i64 -24
  %i.czd = load i64, ptr %i.czc, align 8
  %i.cze = getelementptr inbounds i8, ptr %0, i64 %i.czd
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cze, i64 16
  %i.czg = load i64, ptr %i.czf, align 8, !tbaa !659
  %.not.i2177 = icmp eq i64 %i.czg, 0
  br i1 %.not.i2177, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.czh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 unwind label %.loopexit ; 0 uses

bb.aal:                                           ; preds = %bb.aaj
  %i.czi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 119)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181: ; preds = %bb.aal, %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aam:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aca, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.czj = icmp eq i8 %.0806, 69
  br i1 %i.czj, label %bb.aao, label %bb.aax

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 37, ptr %i.ao, align 1, !tbaa !70
  %i.czk = load ptr, ptr %0, align 8, !tbaa !446
  %i.czl = getelementptr i8, ptr %i.czk, i64 -24
  %i.czm = load i64, ptr %i.czl, align 8
  %i.czn = getelementptr inbounds i8, ptr %0, i64 %i.czm
  %i.czo = getelementptr inbounds nuw i8, ptr %i.czn, i64 16
  %i.czp = load i64, ptr %i.czo, align 8, !tbaa !659
  %.not.i2182 = icmp eq i64 %i.czp, 0
  br i1 %.not.i2182, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.czq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %bb.aar unwind label %.loopexit

bb.aaq:                                           ; preds = %bb.aao
  %i.czr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aar unwind label %.loopexit ; 0 uses

bb.aar:                                           ; preds = %bb.aap, %bb.aaq
  %.0.i2183 = phi ptr [ %i.czq, %bb.aap ], [ %0, %bb.aaq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 69, ptr %i.an, align 1, !tbaa !70
  %i.czs = load ptr, ptr %.0.i2183, align 8, !tbaa !446
  %i.czt = getelementptr i8, ptr %i.czs, i64 -24
  %i.czu = load i64, ptr %i.czt, align 8
  %i.czv = getelementptr inbounds i8, ptr %.0.i2183, i64 %i.czu
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czv, i64 16
  %i.czx = load i64, ptr %i.czw, align 8, !tbaa !659
  %.not.i2187 = icmp eq i64 %i.czx, 0
  br i1 %.not.i2187, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.czy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2183, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %bb.aau unwind label %.loopexit

bb.aat:                                           ; preds = %bb.aar
  %i.czz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2183, i8 noundef signext 69)
          to label %bb.aau unwind label %.loopexit ; 0 uses

bb.aau:                                           ; preds = %bb.aas, %bb.aat
  %.0.i2188 = phi ptr [ %i.czy, %bb.aas ], [ %.0.i2183, %bb.aat ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.daa = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %i.daa, ptr %i.am, align 1, !tbaa !70
  %i.dab = load ptr, ptr %.0.i2188, align 8, !tbaa !446
  %i.dac = getelementptr i8, ptr %i.dab, i64 -24
  %i.dad = load i64, ptr %i.dac, align 8
  %i.dae = getelementptr inbounds i8, ptr %.0.i2188, i64 %i.dad
  %i.daf = getelementptr inbounds nuw i8, ptr %i.dae, i64 16
  %i.dag = load i64, ptr %i.daf, align 8, !tbaa !659
  %.not.i2192 = icmp eq i64 %i.dag, 0
  br i1 %.not.i2192, label %bb.aaw, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2188, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 unwind label %.loopexit ; 0 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.dai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2188, i8 noundef signext %i.daa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196: ; preds = %bb.aaw, %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aax:                                           ; preds = %bb.aan
  %i.daj = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i2197 = icmp eq i16 %i.daj, -32768
  br i1 %.not.i2197, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.dak = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.dal = add i8 %i.dak, -1
  %spec.select.i.i2198 = icmp ult i8 %i.dal, 12
  br i1 %spec.select.i.i2198, label %bb.aaz, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread

bb.aaz:                                           ; preds = %bb.aay
  %i.dam = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i2200 = icmp eq i8 %i.dam, 0
  br i1 %.not8.i2200, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %.not.i.i2201 = icmp eq i8 %i.dak, 2
  %i.dan = and i16 %i.daj, 3
  %i.dao = icmp eq i16 %i.dan, 0
  %or.cond.i2202 = and i1 %i.dao, %.not.i.i2201
  br i1 %or.cond.i2202, label %bb.abb, label %.thread.i.i2203

bb.abb:                                           ; preds = %bb.aba
  %i.dap = srem i16 %i.daj, 100
  %.not.i.i.i2206 = icmp ne i16 %i.dap, 0
  %i.daq = srem i16 %i.daj, 400
  %i.dar = icmp eq i16 %i.daq, 0
  %or.cond.i.i2207 = or i1 %.not.i.i.i2206, %i.dar
  br i1 %or.cond.i.i2207, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208, label %.thread.i.i2203

.thread.i.i2203:                                  ; preds = %bb.abb, %bb.aba
  %i.das = zext nneg i8 %i.dak to i64
  %28 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.das
  %i.dat = getelementptr i8, ptr %28, i64 -1
  %i.dau = load i8, ptr %i.dat, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208: ; preds = %bb.abb, %.thread.i.i2203
  %.sroa.03.0.i.i2205 = phi i8 [ %i.dau, %.thread.i.i2203 ], [ 29, %bb.abb ]
  %.not2806 = icmp ult i8 %.sroa.03.0.i.i2205, %i.dam
  br i1 %.not2806, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread: ; preds = %bb.aaz, %bb.aay, %bb.aax, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208
  %i.dav = load ptr, ptr %0, align 8, !tbaa !446
  %i.daw = getelementptr i8, ptr %i.dav, i64 -24
  %i.dax = load i64, ptr %i.daw, align 8
  %i.day = getelementptr inbounds i8, ptr %0, i64 %i.dax ; 2 uses
  %i.daz = getelementptr inbounds nuw i8, ptr %i.day, i64 32
  %i.dba = load i32, ptr %i.daz, align 8, !tbaa !677
  %i.dbb = or i32 %i.dba, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.day, i32 noundef %i.dbb)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge unwind label %bb.abc

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread
  %.pre3443 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3444 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3445 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210

bb.abc:                                           ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread
  %i.dbc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208
  %i.dbd = phi i8 [ %.pre3445, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.dam, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ]
  %i.dbe = phi i8 [ %.pre3444, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.dak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ] ; 3 uses
  %i.dbf = phi i16 [ %.pre3443, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.daj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ] ; 2 uses
  %i.dbg = sext i16 %i.dbf to i32                 ; 4 uses
  %i.dbh = icmp ult i8 %i.dbe, 3
  %.neg.i.i2211 = sext i1 %i.dbh to i32
  %i.dbi = add nsw i32 %.neg.i.i2211, %i.dbg      ; 4 uses
  %i.dbj = zext i8 %i.dbe to i32
  %i.dbk = zext i8 %i.dbd to i32
  %i.dbl = add nsw i32 %i.dbi, -399
  %i.dbm = icmp slt i32 %i.dbi, 0
  %i.dbn = select i1 %i.dbm, i32 %i.dbl, i32 %i.dbi
  %i.dbo = sdiv i32 %i.dbn, 400                   ; 2 uses
  %.neg15.i.i2212 = mul nsw i32 %i.dbo, -400
  %i.dbp = add nsw i32 %.neg15.i.i2212, %i.dbi    ; 3 uses
  %i.dbq = icmp ugt i8 %i.dbe, 2
  %.v.i.i2213 = select i1 %i.dbq, i32 -3, i32 9
  %i.dbr = add nsw i32 %.v.i.i2213, %i.dbj
  %i.dbs = mul nsw i32 %i.dbr, 153
  %i.dbt = add nsw i32 %i.dbs, 2
  %i.dbu = udiv i32 %i.dbt, 5
  %i.dbv = mul nsw i32 %i.dbp, 365
  %i.dbw = lshr i32 %i.dbp, 2
  %i.dbx = udiv i32 %i.dbp, 100
  %i.dby = mul nsw i32 %i.dbo, 146097
  %i.dbz = add nuw nsw i32 %i.dbk, -719469
  %i.dca = add nsw i32 %i.dbz, %i.dbu
  %i.dcb = add nsw i32 %i.dca, %i.dby
  %i.dcc = add nsw i32 %i.dcb, %i.dbw
  %i.dcd = add nsw i32 %i.dcc, %i.dbv
  %i.dce = sub nsw i32 %i.dcd, %i.dbx             ; 3 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %bb.abd
    i8 79, label %bb.abr
  ]

bb.abd:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210
  %i.dcf = add nsw i32 %i.dbg, -1                 ; 2 uses
  %i.dcg = add nsw i32 %i.dbg, -400
  %i.dch = icmp slt i16 %i.dbf, 1
  %i.dci = select i1 %i.dch, i32 %i.dcg, i32 %i.dcf
  %i.dcj = sdiv i32 %i.dci, 400                   ; 2 uses
  %.neg15.i.i.i.i2222 = mul nsw i32 %i.dcj, -400
  %i.dck = add nsw i32 %.neg15.i.i.i.i2222, %i.dcf ; 3 uses
  %i.dcl = mul nsw i32 %i.dck, 365
  %i.dcm = lshr i32 %i.dck, 2
  %i.dcn = udiv i32 %i.dck, 100
  %i.dco = mul nsw i32 %i.dcj, 146097
  %i.dcp = add nsw i32 %i.dco, -719162
  %i.dcq = add nsw i32 %i.dcp, %i.dcm
  %i.dcr = add nsw i32 %i.dcq, %i.dcl
  %i.dcs = sub nsw i32 %i.dcr, %i.dcn             ; 4 uses
  %i.dct = icmp sgt i32 %i.dcs, -5
  %i.dcu = add nsw i32 %i.dcs, 4
  %.in.i.i.i.i2225 = select i1 %i.dct, i32 %i.dcu, i32 %i.dcs
  %i.dcv = urem i32 %.in.i.i.i.i2225, 7           ; 3 uses
  %i.dcw = sub nsw i32 1, %i.dcv                  ; 2 uses
  %i.dcx = sub nuw nsw i32 -5, %i.dcv
  %i.dcy = icmp samesign ugt i32 %i.dcv, 1
  %i.dcz = select i1 %i.dcy, i32 %i.dcx, i32 %i.dcw
  %.fr.i.i.i2226 = freeze i32 %i.dcz              ; 2 uses
  %i.dda = srem i32 %.fr.i.i.i2226, 7
  %i.ddb = add nsw i32 %i.dcw, %i.dcs
  %i.ddc = sub i32 %i.ddb, %.fr.i.i.i2226
  %i.ddd = add i32 %i.ddc, %i.dda                 ; 2 uses
  %i.dde = icmp slt i32 %i.dce, %i.ddd
  br i1 %i.dde, label %bb.abe, label %bb.abl

bb.abe:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 48, ptr %i.al, align 1, !tbaa !70
  %i.ddf = load ptr, ptr %0, align 8, !tbaa !446
  %i.ddg = getelementptr i8, ptr %i.ddf, i64 -24
  %i.ddh = load i64, ptr %i.ddg, align 8
  %i.ddi = getelementptr inbounds i8, ptr %0, i64 %i.ddh
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.ddi, i64 16
  %i.ddk = load i64, ptr %i.ddj, align 8, !tbaa !659
  %.not.i2231 = icmp eq i64 %i.ddk, 0
  br i1 %.not.i2231, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ddl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %bb.abh unwind label %bb.abk

bb.abg:                                           ; preds = %bb.abe
  %i.ddm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.abh unwind label %bb.abk   ; 0 uses

bb.abh:                                           ; preds = %bb.abf, %bb.abg
  %.0.i2232 = phi ptr [ %i.ddl, %bb.abf ], [ %0, %bb.abg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 48, ptr %i.ak, align 1, !tbaa !70
  %i.ddn = load ptr, ptr %.0.i2232, align 8, !tbaa !446
  %i.ddo = getelementptr i8, ptr %i.ddn, i64 -24
  %i.ddp = load i64, ptr %i.ddo, align 8
  %i.ddq = getelementptr inbounds i8, ptr %.0.i2232, i64 %i.ddp
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddq, i64 16
  %i.dds = load i64, ptr %i.ddr, align 8, !tbaa !659
  %.not.i2236 = icmp eq i64 %i.dds, 0
  br i1 %.not.i2236, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.ddt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2232, ptr noundef nonnull %i.ak, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 unwind label %bb.abk ; 0 uses

bb.abj:                                           ; preds = %bb.abh
  %i.ddu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2232, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 unwind label %bb.abk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240: ; preds = %bb.abj, %bb.abi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.abk:                                           ; preds = %bb.abj, %bb.abi, %bb.abg, %bb.abf
  %i.ddv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abl:                                           ; preds = %bb.abd
  %i.ddw = sub nsw i32 %i.dce, %i.ddd             ; 2 uses
  %i.ddx = udiv i32 %i.ddw, 7
  %i.ddy = add nuw nsw i32 %i.ddx, 1
  %i.ddz = icmp ult i32 %i.ddw, 63
  br i1 %i.ddz, label %bb.abm, label %bb.abq

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 48, ptr %i.aj, align 1, !tbaa !70
  %i.dea = load ptr, ptr %0, align 8, !tbaa !446
  %i.deb = getelementptr i8, ptr %i.dea, i64 -24
  %i.dec = load i64, ptr %i.deb, align 8
  %i.ded = getelementptr inbounds i8, ptr %0, i64 %i.dec
  %i.dee = getelementptr inbounds nuw i8, ptr %i.ded, i64 16
  %i.def = load i64, ptr %i.dee, align 8, !tbaa !659
  %.not.i2243 = icmp eq i64 %i.def, 0
  br i1 %.not.i2243, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.deg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247 unwind label %bb.abp ; 0 uses

bb.abo:                                           ; preds = %bb.abm
  %i.deh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247 unwind label %bb.abp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247: ; preds = %bb.abo, %bb.abn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn, %bb.abq
  %i.dei = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247, %bb.abl
  %i.dej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ddy)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.abp ; 0 uses

bb.abr:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #26
  store i8 37, ptr %i.fq, align 1, !tbaa !70
  store i8 79, ptr %i.iy, align 1, !tbaa !70
  %i.dek = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dek, ptr %i.iz, align 1, !tbaa !70
  %i.del = add nsw i32 %i.dbg, -1900
  store i32 %i.del, ptr %i.ij, align 4, !tbaa !737
  %i.dem = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.abs unwind label %.loopexit2927
end_hunk_12
begin_hunk_13_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.0806, ptr %i.d, align 1, !tbaa !70
  %i.dwe = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwf = getelementptr i8, ptr %i.dwe, i64 -24
  %i.dwg = load i64, ptr %i.dwf, align 8
  %i.dwh = getelementptr inbounds i8, ptr %0, i64 %i.dwg
  %i.dwi = getelementptr inbounds nuw i8, ptr %i.dwh, i64 16
  %i.dwj = load i64, ptr %i.dwi, align 8, !tbaa !659
  %.not.i2501 = icmp eq i64 %i.dwj, 0
  br i1 %.not.i2501, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dwk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505 unwind label %.loopexit ; 0 uses

bb.aih:                                           ; preds = %bb.aif
  %i.dwl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505: ; preds = %bb.aih, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aii

bb.aii:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505, %bb.aie
  %i.dwm = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dwm, ptr %i.c, align 1, !tbaa !70
  %i.dwn = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwo = getelementptr i8, ptr %i.dwn, i64 -24
  %i.dwp = load i64, ptr %i.dwo, align 8
  %i.dwq = getelementptr inbounds i8, ptr %0, i64 %i.dwp
  %i.dwr = getelementptr inbounds nuw i8, ptr %i.dwq, i64 16
  %i.dws = load i64, ptr %i.dwr, align 8, !tbaa !659
  %.not.i2506 = icmp eq i64 %i.dws, 0
  br i1 %.not.i2506, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dwt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dwu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dwm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504: ; preds = %bb.agk, %bb.agh, %bb.lc, %bb.ko, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941, %bb.agz, %bb.aga, %.thread2788, %.thread2777, %.thread2769, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145, %bb.fi, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089, %bb.dw, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ 0, %bb.lc ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ci ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dw ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ 0, %bb.fi ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2769 ], [ 0, %.thread2777 ], [ 0, %.thread2788 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.ko ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ null, %bb.lc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ci ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dw ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ null, %bb.fi ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2769 ], [ null, %.thread2777 ], [ null, %.thread2788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.ko ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.1795, %bb.lc ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ci ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dw ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ %.0794, %bb.fi ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2769 ], [ %.0794, %.thread2777 ], [ %.0794, %.thread2788 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.ko ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dwv = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !767

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !70
  %i.dww = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwx = getelementptr i8, ptr %i.dww, i64 -24
  %i.dwy = load i64, ptr %i.dwx, align 8
  %i.dwz = getelementptr inbounds i8, ptr %0, i64 %i.dwy
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.dwz, i64 16
  %i.dxb = load i64, ptr %i.dxa, align 8, !tbaa !659
  %.not.i2511 = icmp eq i64 %i.dxb, 0
  br i1 %.not.i2511, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2148, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !70
  %i.dxe = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxf = getelementptr i8, ptr %i.dxe, i64 -24
  %i.dxg = load i64, ptr %i.dxf, align 8
  %i.dxh = getelementptr inbounds i8, ptr %0, i64 %i.dxg
  %i.dxi = getelementptr inbounds nuw i8, ptr %i.dxh, i64 16
  %i.dxj = load i64, ptr %i.dxi, align 8, !tbaa !659
  %.not.i2516 = icmp eq i64 %i.dxj, 0
  br i1 %.not.i2516, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2148

_ZNSolsEj.exit2148:                               ; preds = %bb.bz, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dxm = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dxn = load i32, ptr %i.dxm, align 4, !tbaa !739
  %i.dxo = and i32 %i.dxn, 8192
  %.not.i2521 = icmp eq i32 %i.dxo, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dxp = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dxq = icmp eq i32 %i.dxp, 0
  br i1 %i.dxq, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dxr = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 32
  %i.dxt = load i32, ptr %i.dxs, align 8, !tbaa !677
  %i.dxu = icmp eq i32 %i.dxt, 0
  br i1 %i.dxu, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxr, i64 232
  %i.dxw = load ptr, ptr %i.dxv, align 8, !tbaa !727 ; 2 uses
  %i.dxx = load ptr, ptr %i.dxw, align 8, !tbaa !446
  %i.dxy = getelementptr inbounds nuw i8, ptr %i.dxx, i64 48
  %i.dxz = load ptr, ptr %i.dxy, align 8
  %i.dya = invoke noundef i32 %i.dxz(ptr noundef nonnull align 8 dereferenceable(64) %i.dxw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyb = landingpad { ptr, i32 }
          catch ptr null
  %i.dyc = extractvalue { ptr, i32 } %i.dyb, 0
  call void @__clang_call_terminate(ptr %i.dyc) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.drz, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cna, %bb.xr ], [ %i.ty, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.blw, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dei, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byc, %bb.st ], [ %i.bya, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.ddv, %bb.abk ], [ %i.cjw, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbc, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cva, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.bij, %bb.nh ], [ %i.cgw, %bb.wd ], [ %i.bsp, %bb.qu ], [ %i.cxh, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.djt, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dpq, %bb.afk ], [ %i.bry, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cmn, %bb.xm ], [ %i.azf, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %2 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.l
  %i.m = getelementptr i8, ptr %2, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.n, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !746
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !746
  %i.t = icmp ult i8 %i.s, 7
  br i1 %i.t, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !446
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !677
  %i.ag = or i32 %i.af, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ai, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.aj = and i16 %i.a, 3
  %i.ak = icmp eq i16 %i.aj, 0
  %or.cond.i14 = and i1 %i.ak, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.al = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.al, 0
  %i.am = srem i16 %i.a, 400
  %i.an = icmp eq i16 %i.am, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.an
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.ao = zext nneg i8 %i.c to i64
  %3 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.ao
  %i.ap = getelementptr i8, ptr %3, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aq, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ai
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ar = sext i16 %i.a to i32
  %i.as = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.as to i32
  %i.at = add nsw i32 %.neg.i.i, %i.ar            ; 4 uses
  %i.au = zext nneg i8 %i.c to i32
  %i.av = zext i8 %i.ai to i32
  %i.aw = add nsw i32 %i.at, -399
  %i.ax = icmp slt i32 %i.at, 0
  %i.ay = select i1 %i.ax, i32 %i.aw, i32 %i.at
  %i.az = sdiv i32 %i.ay, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.az, -400
  %i.ba = add nsw i32 %.neg15.i.i, %i.at          ; 3 uses
  %i.bb = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bb, i32 -3, i32 9
  %i.bc = add nsw i32 %.v.i.i, %i.au
  %i.bd = mul nsw i32 %i.bc, 153
  %i.be = add nsw i32 %i.bd, 2
  %i.bf = udiv i32 %i.be, 5
  %i.bg = mul nsw i32 %i.ba, 365
  %i.bh = lshr i32 %i.ba, 2
  %i.bi = udiv i32 %i.ba, 100
  %i.bj = mul nsw i32 %i.az, 146097
  %i.bk = add nuw nsw i32 %i.av, -719469
  %i.bl = add nsw i32 %i.bk, %i.bf
  %i.bm = add nsw i32 %i.bl, %i.bj
  %i.bn = add nsw i32 %i.bm, %i.bh
  %i.bo = add nsw i32 %i.bn, %i.bg
  %i.bp = sub nsw i32 %i.bo, %i.bi                ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, -5
  %i.br = add nsw i32 %i.bp, 4
  %.in.i.i = select i1 %i.bq, i32 %i.br, i32 %i.bp
  %i.bs = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !746 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 7
  %i.bx = icmp ne i8 %i.bv, %i.bt
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !446
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !677
  %i.ce = or i32 %i.cd, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !70
  %i.ch = zext i8 %i.cg to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %i.ch, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bs, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %i.ci = srem i32 %.fr.i, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %i.ci, %bb.k ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !766, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
end_hunk_13
begin_hunk_14_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  store i8 37, ptr %i.ew, align 1, !tbaa !70
  %i.ow = load ptr, ptr %0, align 8, !tbaa !446
  %i.ox = getelementptr i8, ptr %i.ow, i64 -24
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds i8, ptr %0, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !659
  %.not.i998 = icmp eq i64 %i.pb, 0
  br i1 %.not.i998, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %bb.av unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i999 = phi ptr [ %i.pc, %bb.at ], [ %0, %bb.au ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store i8 %.0806, ptr %i.ev, align 1, !tbaa !70
  %i.pe = load ptr, ptr %.0.i999, align 8, !tbaa !446
  %i.pf = getelementptr i8, ptr %i.pe, i64 -24
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %.0.i999, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !659
  %.not.i1003 = icmp eq i64 %i.pj, 0
  br i1 %.not.i1003, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i999, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i999, i8 noundef signext %.0806)
          to label %bb.ay unwind label %.loopexit ; 0 uses

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0.i1004 = phi ptr [ %i.pk, %bb.aw ], [ %.0.i999, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.pm = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i8 %i.pm, ptr %i.eu, align 1, !tbaa !70
  %i.pn = load ptr, ptr %.0.i1004, align 8, !tbaa !446
  %i.po = getelementptr i8, ptr %i.pn, i64 -24
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = getelementptr inbounds i8, ptr %.0.i1004, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !659
  %.not.i1008 = icmp eq i64 %i.ps, 0
  br i1 %.not.i1008, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1004, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 unwind label %.loopexit ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1004, i8 noundef signext %i.pm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.bb:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i8 %i.la, ptr %i.et, align 1, !tbaa !70
  %i.pv = load ptr, ptr %0, align 8, !tbaa !446
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr %0, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !659
  %.not.i1013 = icmp eq i64 %i.qa, 0
  br i1 %.not.i1013, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.et, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 unwind label %.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bb
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.be:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.ck, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qd = icmp eq i8 %.0806, 79
  br i1 %i.qd, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i8 37, ptr %i.es, align 1, !tbaa !70
  %i.qe = load ptr, ptr %0, align 8, !tbaa !446
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %0, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !659
  %.not.i1018 = icmp eq i64 %i.qj, 0
  br i1 %.not.i1018, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.bj unwind label %.loopexit ; 0 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.0.i1019 = phi ptr [ %i.qk, %bb.bh ], [ %0, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store i8 79, ptr %i.er, align 1, !tbaa !70
  %i.qm = load ptr, ptr %.0.i1019, align 8, !tbaa !446
  %i.qn = getelementptr i8, ptr %i.qm, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %.0.i1019, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !659
  %.not.i1023 = icmp eq i64 %i.qr, 0
  br i1 %.not.i1023, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1019, ptr noundef nonnull %i.er, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1019, i8 noundef signext 79)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i1024 = phi ptr [ %i.qs, %bb.bk ], [ %.0.i1019, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.qu = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i8 %i.qu, ptr %i.eq, align 1, !tbaa !70
  %i.qv = load ptr, ptr %.0.i1024, align 8, !tbaa !446
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr %.0.i1024, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !659
  %.not.i1028 = icmp eq i64 %i.ra, 0
  br i1 %.not.i1028, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1024, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 unwind label %.loopexit ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1024, i8 noundef signext %i.qu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.bp:                                            ; preds = %bb.bf
  %i.rd = load i16, ptr %2, align 8, !tbaa !730   ; 4 uses
  %.not.i1033 = icmp eq i16 %i.rd, -32768
  br i1 %.not.i1033, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.re = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.rf = add i8 %i.re, -1
  %spec.select.i.i1034 = icmp ult i8 %i.rf, 12
  br i1 %spec.select.i.i1034, label %bb.br, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.rg = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i = icmp eq i8 %i.rg, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not.i.i = icmp eq i8 %i.re, 2
  %i.rh = and i16 %i.rd, 3
  %i.ri = icmp eq i16 %i.rh, 0
  %or.cond.i = and i1 %i.ri, %.not.i.i
  br i1 %or.cond.i, label %bb.bt, label %.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.rj = srem i16 %i.rd, 100
  %.not.i.i.i1036 = icmp ne i16 %i.rj, 0
  %i.rk = srem i16 %i.rd, 400
  %i.rl = icmp eq i16 %i.rk, 0
  %or.cond.i.i = or i1 %.not.i.i.i1036, %i.rl
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs
  %i.rm = zext nneg i8 %i.re to i64
  %20 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.rm
  %i.rn = getelementptr i8, ptr %20, i64 -1
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.bt, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.ro, %.thread.i.i ], [ 29, %bb.bt ]
  %.not2837 = icmp ult i8 %.sroa.03.0.i.i, %i.rg
  br i1 %.not2837, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rp = load ptr, ptr %0, align 8, !tbaa !446
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds i8, ptr %0, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !677
  %i.rv = or i32 %i.ru, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rs, i32 noundef %i.rv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %.pre3470 = load i8, ptr %.0731, align 1, !tbaa !70
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rw = phi i8 [ %.pre3470, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ]
  %i.rx = icmp eq i8 %i.rw, 99
  br i1 %i.rx, label %bb.bu, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039

bb.bu:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.ry = load i8, ptr %i.gw, align 8, !tbaa !800, !range !86, !noundef !87
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sa = load ptr, ptr %0, align 8, !tbaa !446
  %i.sb = getelementptr i8, ptr %i.sa, i64 -24
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds i8, ptr %0, i64 %i.sc ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !677
  %i.sg = or i32 %i.sf, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sd, i32 noundef %i.sg)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge: ; preds = %bb.bv
  %.pre3471 = load i8, ptr %.0731, align 1, !tbaa !70
  %i.sh = icmp eq i8 %.pre3471, 99
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge, %bb.bu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.si = phi i1 [ %i.sh, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge ], [ true, %bb.bu ], [ false, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.sj = load i16, ptr %2, align 8, !tbaa !730
  %i.sk = sext i16 %i.sj to i32                   ; 2 uses
  %i.sl = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.sm = icmp ult i8 %i.sl, 3
  %.neg.i.i = sext i1 %i.sm to i32
  %i.sn = add nsw i32 %.neg.i.i, %i.sk            ; 4 uses
  %i.so = zext i8 %i.sl to i32                    ; 2 uses
  %i.sp = load i8, ptr %i.ix, align 1, !tbaa !732
  %i.sq = zext i8 %i.sp to i32                    ; 2 uses
  %i.sr = add nsw i32 %i.sn, -399
  %i.ss = icmp slt i32 %i.sn, 0
  %i.st = select i1 %i.ss, i32 %i.sr, i32 %i.sn
  %i.su = sdiv i32 %i.st, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.su, -400
  %i.sv = add nsw i32 %.neg15.i.i, %i.sn          ; 3 uses
  %i.sw = icmp ugt i8 %i.sl, 2
  %.v.i.i = select i1 %i.sw, i32 -3, i32 9
  %i.sx = add nsw i32 %.v.i.i, %i.so
  %i.sy = mul nsw i32 %i.sx, 153
  %i.sz = add nsw i32 %i.sy, 2
  %i.ta = udiv i32 %i.sz, 5
  %i.tb = lshr i32 %i.sv, 2
  %i.tc = udiv i32 %i.sv, 100
  br i1 %i.si, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039
  %.sroa.0.0.copyload.i.i1040 = load i64, ptr %i.iq, align 8, !tbaa !408
  %i.td = trunc i64 %.sroa.0.0.copyload.i.i1040 to i32
  store i32 %i.td, ptr %6, align 8, !tbaa !733
  %.sroa.0.0.copyload.i = load i64, ptr %i.ir, align 8, !tbaa !408
  %i.te = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.te, ptr %i.is, align 4, !tbaa !734
  %.sroa.0.0.copyload.i1041 = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.tf = trunc i64 %.sroa.0.0.copyload.i1041 to i32
  store i32 %i.tf, ptr %i.it, align 8, !tbaa !735
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039
  store i32 %i.sq, ptr %i.km, align 4, !tbaa !736
  %i.tg = add i8 %i.sl, -1
  %spec.select.i.i1044 = icmp ult i8 %i.tg, 12
  br i1 %spec.select.i.i1044, label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.th = load ptr, ptr %0, align 8, !tbaa !446
  %i.ti = getelementptr i8, ptr %i.th, i64 -24
  %i.tj = load i64, ptr %i.ti, align 8
  %i.tk = getelementptr inbounds i8, ptr %0, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !677
  %i.tn = or i32 %i.tm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.tk, i32 noundef %i.tn)
          to label %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge unwind label %bb.ca

._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge: ; preds = %bb.by
  %.sroa.0.0.copyload.i1048.pre = load i16, ptr %2, align 8, !tbaa !634
  %.pre3480 = sext i16 %.sroa.0.0.copyload.i1048.pre to i32
  br label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047

_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047: ; preds = %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge, %bb.bx
  %.pre-phi = phi i32 [ %.pre3480, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge ], [ %i.sk, %bb.bx ]
  %.0.i1045 = phi i32 [ 0, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge ], [ %i.so, %bb.bx ]
  %i.to = add nsw i32 %.0.i1045, -1
  store i32 %i.to, ptr %i.kd, align 8, !tbaa !729
  %i.tp = add nsw i32 %.pre-phi, -1900
  store i32 %i.tp, ptr %i.ij, align 4, !tbaa !737
  %i.tq = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047
  store i32 %i.tq, ptr %i.ja, align 8, !tbaa !725
  %i.tr = load ptr, ptr %0, align 8, !tbaa !446
  %i.ts = getelementptr i8, ptr %i.tr, i64 -24    ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = getelementptr inbounds i8, ptr %0, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !677
  %i.tx = and i32 %i.tw, 5
  %.not2838 = icmp eq i32 %i.tx, 0
  br i1 %.not2838, label %bb.cb, label %_ZNSolsEj.exit2148

bb.ca:                                            ; preds = %bb.by, %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.cb:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i1049 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %i.tz = sext i16 %.sroa.0.0.copyload.i1049 to i32 ; 2 uses
  %i.ua = add nsw i32 %i.tz, -1                   ; 2 uses
  %i.ub = add nsw i32 %i.tz, -400
  %i.uc = icmp slt i16 %.sroa.0.0.copyload.i1049, 1
  %i.ud = select i1 %i.uc, i32 %i.ub, i32 %i.ua
  %i.ue = sdiv i32 %i.ud, 400                     ; 2 uses
  %.neg15.i.i1051 = mul nsw i32 %i.ue, -400
  %i.uf = add nsw i32 %.neg15.i.i1051, %i.ua      ; 3 uses
  %i.ug = lshr i32 %i.uf, 2
  %i.uh = udiv i32 %i.uf, 100
  %reass.add2907 = sub nsw i32 %i.sv, %i.uf
  %reass.mul2908 = mul nsw i32 %reass.add2907, 365
  %reass.add2910 = sub nsw i32 %i.su, %i.ue
  %reass.mul2911 = mul nsw i32 %reass.add2910, 146097
  %.neg2839 = add nuw nsw i32 %i.sq, -307
  %i.ui = add nsw i32 %.neg2839, %i.ta
  %i.uj = add nsw i32 %i.ui, %i.tb
  %i.uk = add nsw i32 %i.uj, %reass.mul2911
  %i.ul = add nuw nsw i32 %i.tc, %i.ug
  %i.um = sub nsw i32 %i.uk, %i.ul
  %i.un = add nsw i32 %i.um, %i.uh
  %i.uo = add nsw i32 %i.un, %reass.mul2908
  store i32 %i.uo, ptr %i.jb, align 4, !tbaa !738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.23, i64 3, i1 false)
  %i.up = icmp eq i8 %.0806, 69
  br i1 %i.up, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 69, ptr %i.kt, align 1, !tbaa !70
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0829 = phi ptr [ %i.ku, %bb.cc ], [ %i.kt, %bb.cb ] ; 2 uses
  %i.uq = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.uq, ptr %.0829, align 1, !tbaa !70
  %i.ur = load i64, ptr %i.ts, align 8
  %i.us = getelementptr inbounds i8, ptr %0, i64 %i.ur ; 6 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 232
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !727 ; 2 uses
  %.not.i1054 = icmp eq ptr %i.uu, null
  %i.uv = zext i1 %.not.i1054 to i8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 225 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !688, !range !86, !noundef !87
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %._crit_edge.i1060, label %bb.ce

._crit_edge.i1060:                                ; preds = %bb.cd
  %.phi.trans.insert.i1061 = getelementptr inbounds nuw i8, ptr %i.us, i64 224
  %.pre.i1062 = load i8, ptr %.phi.trans.insert.i1061, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1066

bb.ce:                                            ; preds = %bb.cd
  %i.uz = getelementptr inbounds nuw i8, ptr %i.us, i64 240
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1055 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i1055, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1056

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt16__throw_bad_castv() #30
end_hunk_14
begin_hunk_15_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.ex:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit1160
  %i.adn = load i32, ptr %i.kq, align 4, !tbaa !739
  %i.ado = and i32 %i.adn, 8192
  %.not.i1173 = icmp eq i32 %i.ado, 0
  br i1 %.not.i1173, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.adp = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %bb.ez, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174

bb.ez:                                            ; preds = %bb.ey
  %i.adr = load ptr, ptr %9, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !677
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.fa, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174

bb.fa:                                            ; preds = %bb.ez
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 232
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !727 ; 2 uses
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !446
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = invoke noundef i32 %i.adz(ptr noundef nonnull align 8 dereferenceable(64) %i.adw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 unwind label %bb.fb, !inline_history !743 ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  call void @__clang_call_terminate(ptr %i.aec) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.fc:                                            ; preds = %bb.et, %bb.es
  %.pn939 = phi { ptr, i32 } [ %lpad.phi3011, %bb.et ], [ %i.acu, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.aix

bb.fd:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145
  store i32 %i.aby, ptr %i.km, align 4, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff) #26
  store i8 37, ptr %i.ff, align 1, !tbaa !70
  store i8 79, ptr %i.kn, align 1, !tbaa !70
  %i.aed = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.aed, ptr %i.ko, align 1, !tbaa !70
  %i.aee = load ptr, ptr %0, align 8, !tbaa !446
  %i.aef = getelementptr i8, ptr %i.aee, i64 -24
  %i.aeg = load i64, ptr %i.aef, align 8
  %i.aeh = getelementptr inbounds i8, ptr %0, i64 %i.aeg ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 232
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !727 ; 2 uses
  %.not.i1175 = icmp eq ptr %i.aej, null
  %i.aek = zext i1 %.not.i1175 to i8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 225 ; 2 uses
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !688, !range !86, !noundef !87
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %._crit_edge.i1181, label %bb.fe

._crit_edge.i1181:                                ; preds = %bb.fd
  %.phi.trans.insert.i1182 = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  %.pre.i1183 = load i8, ptr %.phi.trans.insert.i1182, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187

bb.fe:                                            ; preds = %bb.fd
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 240
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1176 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i1176, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1184 unwind label %.loopexit.split-lp3003

.noexc1184:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177: ; preds = %bb.fe
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 56
  %i.aer = load i8, ptr %i.aeq, align 8, !tbaa !695
  %.not.i1.i.i1178 = icmp eq i8 %i.aer, 0
  br i1 %.not.i1.i.i1178, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 89
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aep)
          to label %.noexc1185 unwind label %.loopexit3002

.noexc1185:                                       ; preds = %bb.fh
  %i.aeu = load ptr, ptr %i.aep, align 8, !tbaa !446
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = invoke noundef signext i8 %i.aew(ptr noundef nonnull align 8 dereferenceable(570) %i.aep, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179 unwind label %.loopexit3002, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179: ; preds = %.noexc1185, %bb.fg
  %.0.i.i.i1180 = phi i8 [ %i.aet, %bb.fg ], [ %i.aex, %.noexc1185 ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  store i8 %.0.i.i.i1180, ptr %i.aey, align 8, !tbaa !700
  store i8 1, ptr %i.ael, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179, %._crit_edge.i1181
  %i.aez = phi i8 [ %.pre.i1183, %._crit_edge.i1181 ], [ %.0.i.i.i1180, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179 ]
  %i.afa = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.aej, i8 %i.aek, ptr noundef nonnull align 8 dereferenceable(216) %i.aeh, i8 noundef signext %i.aez, ptr noundef nonnull %6, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.kp)
          to label %bb.fi unwind label %.loopexit3002 ; 0 uses

bb.fi:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit3002:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187, %bb.fh, %.noexc1185
  %lpad.loopexit3004 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.loopexit.split-lp3003:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp3005 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.split-lp3003, %.loopexit3002
  %lpad.phi3006 = phi { ptr, i32 } [ %lpad.loopexit3004, %.loopexit3002 ], [ %lpad.loopexit.split-lp3005, %.loopexit.split-lp3003 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #26
  br label %bb.aix

bb.fk:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 %i.la, ptr %i.eg, align 1, !tbaa !70
  %i.afb = load ptr, ptr %0, align 8, !tbaa !446
  %i.afc = getelementptr i8, ptr %i.afb, i64 -24
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = getelementptr inbounds i8, ptr %0, i64 %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !659
  %.not.i1188 = icmp eq i64 %i.afg, 0
  br i1 %.not.i1188, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 unwind label %.loopexit ; 0 uses

bb.fm:                                            ; preds = %bb.fk
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.fn:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.gx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afj = icmp eq i8 %.0806, 0
  br i1 %i.afj, label %bb.fp, label %bb.go

bb.fp:                                            ; preds = %bb.fo
  %i.afk = load i16, ptr %2, align 8, !tbaa !730  ; 4 uses
  %.not.i1193 = icmp eq i16 %i.afk, -32768
  br i1 %.not.i1193, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afl = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.afm = add i8 %i.afl, -1
  %spec.select.i.i1194 = icmp ult i8 %i.afm, 12
  br i1 %spec.select.i.i1194, label %bb.fr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afn = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1196 = icmp eq i8 %i.afn, 0
  br i1 %.not8.i1196, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i.i1197 = icmp eq i8 %i.afl, 2
  %i.afo = and i16 %i.afk, 3
  %i.afp = icmp eq i16 %i.afo, 0
  %or.cond.i1198 = and i1 %i.afp, %.not.i.i1197
  br i1 %or.cond.i1198, label %bb.ft, label %.thread.i.i1199

bb.ft:                                            ; preds = %bb.fs
  %i.afq = srem i16 %i.afk, 100
  %.not.i.i.i1202 = icmp ne i16 %i.afq, 0
  %i.afr = srem i16 %i.afk, 400
  %i.afs = icmp eq i16 %i.afr, 0
  %or.cond.i.i1203 = or i1 %.not.i.i.i1202, %i.afs
  br i1 %or.cond.i.i1203, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204, label %.thread.i.i1199

.thread.i.i1199:                                  ; preds = %bb.ft, %bb.fs
  %i.aft = zext nneg i8 %i.afl to i64
  %21 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aft
  %i.afu = getelementptr i8, ptr %21, i64 -1
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204: ; preds = %bb.ft, %.thread.i.i1199
  %.sroa.03.0.i.i1201 = phi i8 [ %i.afv, %.thread.i.i1199 ], [ 29, %bb.ft ]
  %.not2835 = icmp ult i8 %.sroa.03.0.i.i1201, %i.afn
  br i1 %.not2835, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread: ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204
  %i.afw = load ptr, ptr %0, align 8, !tbaa !446
  %i.afx = getelementptr i8, ptr %i.afw, i64 -24
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = getelementptr inbounds i8, ptr %0, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !677
  %i.agc = or i32 %i.agb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afz, i32 noundef %i.agc)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.agd = load ptr, ptr %0, align 8, !tbaa !446
  %i.age = getelementptr i8, ptr %i.agd, i64 -24
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = getelementptr inbounds i8, ptr %0, i64 %i.agf
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(264) %i.agg)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208 unwind label %bb.gi

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206
  %i.agh = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 -24
  %i.agj = load i64, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds i8, ptr %0, i64 %i.agj ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 225 ; 2 uses
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !688, !range !86, !noundef !87
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %._crit_edge.i.i1214, label %bb.fu

bb.fu:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agk, i64 240
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1209 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i.i.i1209, label %bb.fv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1217 unwind label %.loopexit.split-lp2998

.noexc1217:                                       ; preds = %bb.fv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210: ; preds = %bb.fu
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 56
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !695
  %.not.i1.i.i.i1211 = icmp eq i8 %i.agr, 0
  br i1 %.not.i1.i.i.i1211, label %bb.fw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agp)
          to label %.noexc1218 unwind label %.loopexit2997

.noexc1218:                                       ; preds = %bb.fw
  %i.ags = load ptr, ptr %i.agp, align 8, !tbaa !446
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 48
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = invoke noundef signext i8 %i.agu(ptr noundef nonnull align 8 dereferenceable(570) %i.agp, i8 noundef signext 32)
          to label %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge unwind label %.loopexit2997, !inline_history !699 ; 0 uses

.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge: ; preds = %.noexc1218
  %.pre3466.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212: ; preds = %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210
  %.pre3466 = phi ptr [ %.pre3466.pre, %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge ], [ %i.agh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210 ]
  store i8 1, ptr %i.agl, align 1, !tbaa !688
  br label %._crit_edge.i.i1214

._crit_edge.i.i1214:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212
  %i.agw = phi ptr [ %i.agh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208 ], [ %.pre3466, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212 ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agk, i64 224
  store i8 48, ptr %i.agx, align 8, !tbaa !700
  %i.agy = getelementptr i8, ptr %i.agw, i64 -24  ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8
  %i.aha = getelementptr inbounds i8, ptr %0, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i32 130, ptr %i.ahb, align 8, !tbaa !701
  %i.ahc = load i64, ptr %i.agy, align 8
  %i.ahd = getelementptr inbounds i8, ptr %0, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  store i64 2, ptr %i.ahe, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1221 = load i8, ptr %i.iw, align 2, !tbaa !70
  %i.ahf = zext i8 %.sroa.0.0.copyload.i1221 to i64
  %i.ahg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahf)
          to label %_ZNSolsEj.exit unwind label %bb.gj ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %._crit_edge.i.i1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i8 47, ptr %i.ef, align 1, !tbaa !70
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !446
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 -24
  %i.ahj = load i64, ptr %i.ahi, align 8
  %i.ahk = getelementptr inbounds i8, ptr %i.ahg, i64 %i.ahj
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !659
  %.not.i1223 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i1223, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEj.exit
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fy:                                            ; preds = %_ZNSolsEj.exit
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, i8 noundef signext 47)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.ahp = load ptr, ptr %0, align 8, !tbaa !446
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -24
  %i.ahr = load i64, ptr %i.ahq, align 8
  %i.ahs = getelementptr inbounds i8, ptr %0, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  store i64 2, ptr %i.aht, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1228 = load i8, ptr %i.ix, align 1, !tbaa !70
  %i.ahu = zext i8 %.sroa.0.0.copyload.i1228 to i64
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahu)
          to label %_ZNSolsEj.exit1230 unwind label %bb.gk ; 4 uses

_ZNSolsEj.exit1230:                               ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store i8 47, ptr %i.ee, align 1, !tbaa !70
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !446
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 -24
  %i.ahy = load i64, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !659
  %.not.i1231 = icmp eq i64 %i.aib, 0
  br i1 %.not.i1231, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSolsEj.exit1230
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gb:                                            ; preds = %_ZNSolsEj.exit1230
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, i8 noundef signext 47)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aie = load ptr, ptr %0, align 8, !tbaa !446
  %i.aif = getelementptr i8, ptr %i.aie, i64 -24
  %i.aig = load i64, ptr %i.aif, align 8
  %i.aih = getelementptr inbounds i8, ptr %0, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  store i64 2, ptr %i.aii, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1236 = load i16, ptr %2, align 8, !tbaa !634
  %i.aij = srem i16 %.sroa.0.0.copyload.i1236, 100
  %.sext = sext i16 %i.aij to i32
  %i.aik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sext)
          to label %bb.gd unwind label %bb.gl     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.ail = load i32, ptr %i.kl, align 4, !tbaa !739
  %i.aim = and i32 %i.ail, 8192
  %.not.i1237 = icmp eq i32 %i.aim, 0
  br i1 %.not.i1237, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ain = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %bb.gf, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238

bb.gf:                                            ; preds = %bb.ge
  %i.aip = load ptr, ptr %10, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !677
  %i.ais = icmp eq i32 %i.air, 0
  br i1 %i.ais, label %bb.gg, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238

bb.gg:                                            ; preds = %bb.gf
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 232
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !727 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !446
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = invoke noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(64) %i.aiu)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 unwind label %bb.gh, !inline_history !743 ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aiz = landingpad { ptr, i32 }
          catch ptr null
  %i.aja = extractvalue { ptr, i32 } %i.aiz, 0
  call void @__clang_call_terminate(ptr %i.aja) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238: ; preds = %bb.gd, %bb.ge, %bb.gf, %bb.gg
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.gi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit2997:                                    ; preds = %bb.fw, %.noexc1218
  %lpad.loopexit2999 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp2998:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp3000 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %bb.fy, %bb.fx, %._crit_edge.i.i1214
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gk:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gc
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gm:                                            ; preds = %.loopexit2997, %.loopexit.split-lp2998, %bb.gl, %bb.gk, %bb.gj
  %.pn935 = phi { ptr, i32 } [ %i.aje, %bb.gl ], [ %i.ajd, %bb.gk ], [ %i.ajc, %bb.gj ], [ %lpad.loopexit2999, %.loopexit2997 ], [ %lpad.loopexit.split-lp3000, %.loopexit.split-lp2998 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #26
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.pn935.pn = phi { ptr, i32 } [ %.pn935, %bb.gm ], [ %i.ajb, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.aix

bb.go:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i8 37, ptr %i.ed, align 1, !tbaa !70
  %i.ajf = load ptr, ptr %0, align 8, !tbaa !446
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -24
  %i.ajh = load i64, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds i8, ptr %0, i64 %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !659
  %.not.i1239 = icmp eq i64 %i.ajk, 0
  br i1 %.not.i1239, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.gr unwind label %.loopexit ; 0 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.0.i1240 = phi ptr [ %i.ajl, %bb.gp ], [ %0, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i8 %.0806, ptr %i.ec, align 1, !tbaa !70
  %i.ajn = load ptr, ptr %.0.i1240, align 8, !tbaa !446
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -24
  %i.ajp = load i64, ptr %i.ajo, align 8
  %i.ajq = getelementptr inbounds i8, ptr %.0.i1240, i64 %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !659
  %.not.i1244 = icmp eq i64 %i.ajs, 0
  br i1 %.not.i1244, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1240, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.aju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1240, i8 noundef signext %.0806)
          to label %bb.gu unwind label %.loopexit ; 0 uses

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.0.i1245 = phi ptr [ %i.ajt, %bb.gs ], [ %.0.i1240, %bb.gt ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.ajv = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i8 %i.ajv, ptr %i.eb, align 1, !tbaa !70
  %i.ajw = load ptr, ptr %.0.i1245, align 8, !tbaa !446
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 -24
  %i.ajy = load i64, ptr %i.ajx, align 8
  %i.ajz = getelementptr inbounds i8, ptr %.0.i1245, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !659
  %.not.i1249 = icmp eq i64 %i.akb, 0
  br i1 %.not.i1249, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1245, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 unwind label %.loopexit ; 0 uses

bb.gw:                                            ; preds = %bb.gu
  %i.akd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1245, i8 noundef signext %i.ajv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.gx:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i8 68, ptr %i.ea, align 1, !tbaa !70
  %i.ake = load ptr, ptr %0, align 8, !tbaa !446
  %i.akf = getelementptr i8, ptr %i.ake, i64 -24
  %i.akg = load i64, ptr %i.akf, align 8
  %i.akh = getelementptr inbounds i8, ptr %0, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !659
  %.not.i1254 = icmp eq i64 %i.akj, 0
  br i1 %.not.i1254, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 unwind label %.loopexit ; 0 uses

bb.gz:                                            ; preds = %bb.gx
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ha:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.im, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akm = icmp eq i8 %.0806, 0
  br i1 %i.akm, label %bb.hc, label %bb.id

bb.hc:                                            ; preds = %bb.hb
  %i.akn = load i16, ptr %2, align 8, !tbaa !730  ; 4 uses
  %.not.i1259 = icmp eq i16 %i.akn, -32768
  br i1 %.not.i1259, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ako = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.akp = add i8 %i.ako, -1
  %spec.select.i.i1260 = icmp ult i8 %i.akp, 12
  br i1 %spec.select.i.i1260, label %bb.he, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread

bb.he:                                            ; preds = %bb.hd
  %i.akq = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1262 = icmp eq i8 %i.akq, 0
  br i1 %.not8.i1262, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i1263 = icmp eq i8 %i.ako, 2
  %i.akr = and i16 %i.akn, 3
  %i.aks = icmp eq i16 %i.akr, 0
  %or.cond.i1264 = and i1 %i.aks, %.not.i.i1263
  br i1 %or.cond.i1264, label %bb.hg, label %.thread.i.i1265

bb.hg:                                            ; preds = %bb.hf
  %i.akt = srem i16 %i.akn, 100
  %.not.i.i.i1268 = icmp ne i16 %i.akt, 0
  %i.aku = srem i16 %i.akn, 400
  %i.akv = icmp eq i16 %i.aku, 0
  %or.cond.i.i1269 = or i1 %.not.i.i.i1268, %i.akv
  br i1 %or.cond.i.i1269, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270, label %.thread.i.i1265

.thread.i.i1265:                                  ; preds = %bb.hg, %bb.hf
  %i.akw = zext nneg i8 %i.ako to i64
  %22 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.akw
  %i.akx = getelementptr i8, ptr %22, i64 -1
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270: ; preds = %bb.hg, %.thread.i.i1265
  %.sroa.03.0.i.i1267 = phi i8 [ %i.aky, %.thread.i.i1265 ], [ 29, %bb.hg ]
  %.not2834 = icmp ult i8 %.sroa.03.0.i.i1267, %i.akq
  br i1 %.not2834, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread: ; preds = %bb.he, %bb.hd, %bb.hc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270
  %i.akz = load ptr, ptr %0, align 8, !tbaa !446
  %i.ala = getelementptr i8, ptr %i.akz, i64 -24
  %i.alb = load i64, ptr %i.ala, align 8
  %i.alc = getelementptr inbounds i8, ptr %0, i64 %i.alb ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !677
  %i.alf = or i32 %i.ale, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alc, i32 noundef %i.alf)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.alg = load ptr, ptr %0, align 8, !tbaa !446
  %i.alh = getelementptr i8, ptr %i.alg, i64 -24
  %i.ali = load i64, ptr %i.alh, align 8
  %i.alj = getelementptr inbounds i8, ptr %0, i64 %i.ali
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(264) %i.alj)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274 unwind label %bb.hx

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272
  %i.alk = load ptr, ptr %0, align 8, !tbaa !446
  %i.all = getelementptr i8, ptr %i.alk, i64 -24
  %i.alm = load i64, ptr %i.all, align 8
  %i.aln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.hh unwind label %.loopexit2992

bb.hh:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274
  %i.alo = getelementptr inbounds i8, ptr %0, i64 %i.alm
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %12, ptr noundef nonnull align 8 dereferenceable(264) %i.alo, ptr noundef nonnull align 8 dereferenceable(8) %i.aln)
          to label %bb.hi unwind label %.loopexit2992

bb.hi:                                            ; preds = %bb.hh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  %i.alp = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 -24
  %i.alr = load i64, ptr %i.alq, align 8
  %i.als = getelementptr inbounds i8, ptr %0, i64 %i.alr ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 225 ; 2 uses
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !688, !range !86, !noundef !87
  %i.alv = trunc nuw i8 %i.alu to i1
  br i1 %i.alv, label %._crit_edge.i.i1280, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 240
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1275 = icmp eq ptr %i.alx, null
  br i1 %.not.i.i.i.i1275, label %bb.hk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1283 unwind label %.loopexit.split-lp2993

.noexc1283:                                       ; preds = %bb.hk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276: ; preds = %bb.hj
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 56
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !695
  %.not.i1.i.i.i1277 = icmp eq i8 %i.alz, 0
  br i1 %.not.i1.i.i.i1277, label %bb.hl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278

bb.hl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alx)
          to label %.noexc1284 unwind label %.loopexit2992

.noexc1284:                                       ; preds = %bb.hl
  %i.ama = load ptr, ptr %i.alx, align 8, !tbaa !446
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 48
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = invoke noundef signext i8 %i.amc(ptr noundef nonnull align 8 dereferenceable(570) %i.alx, i8 noundef signext 32)
          to label %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge unwind label %.loopexit2992, !inline_history !699 ; 0 uses

.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge: ; preds = %.noexc1284
  %.pre3465.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278: ; preds = %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276
  %.pre3465 = phi ptr [ %.pre3465.pre, %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge ], [ %i.alp, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276 ]
  store i8 1, ptr %i.alt, align 1, !tbaa !688
  br label %._crit_edge.i.i1280

._crit_edge.i.i1280:                              ; preds = %bb.hi, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278
  %i.ame = phi ptr [ %i.alp, %bb.hi ], [ %.pre3465, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278 ]
  %i.amf = getelementptr inbounds nuw i8, ptr %i.als, i64 224
  store i8 48, ptr %i.amf, align 8, !tbaa !700
  %i.amg = getelementptr i8, ptr %i.ame, i64 -24  ; 2 uses
  %i.amh = load i64, ptr %i.amg, align 8
  %i.ami = getelementptr inbounds i8, ptr %0, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 24
  store i32 130, ptr %i.amj, align 8, !tbaa !701
  %i.amk = load i64, ptr %i.amg, align 8
  %i.aml = getelementptr inbounds i8, ptr %0, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  store i64 4, ptr %i.amm, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1287 = load i16, ptr %2, align 8, !tbaa !634
  %i.amn = sext i16 %.sroa.0.0.copyload.i1287 to i32
  %i.amo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.amn)
          to label %bb.hm unwind label %bb.hy     ; 4 uses

bb.hm:                                            ; preds = %._crit_edge.i.i1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i8 45, ptr %i.dz, align 1, !tbaa !70
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !446
  %i.amq = getelementptr i8, ptr %i.amp, i64 -24
  %i.amr = load i64, ptr %i.amq, align 8
  %i.ams = getelementptr inbounds i8, ptr %i.amo, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !659
  %.not.i1288 = icmp eq i64 %i.amu, 0
  br i1 %.not.i1288, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, ptr noundef nonnull %i.dz, i64 noundef 1)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.ho:                                            ; preds = %bb.hm
  %i.amw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, i8 noundef signext 45)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.amx = load ptr, ptr %0, align 8, !tbaa !446
  %i.amy = getelementptr i8, ptr %i.amx, i64 -24
  %i.amz = load i64, ptr %i.amy, align 8
  %i.ana = getelementptr inbounds i8, ptr %0, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  store i64 2, ptr %i.anb, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1293 = load i8, ptr %i.iw, align 2, !tbaa !70
  %i.anc = zext i8 %.sroa.0.0.copyload.i1293 to i64
  %i.and = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anc)
          to label %_ZNSolsEj.exit1295 unwind label %bb.hz ; 4 uses

_ZNSolsEj.exit1295:                               ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i8 45, ptr %i.dy, align 1, !tbaa !70
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !446
  %i.anf = getelementptr i8, ptr %i.ane, i64 -24
  %i.ang = load i64, ptr %i.anf, align 8
  %i.anh = getelementptr inbounds i8, ptr %i.and, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !659
  %.not.i1296 = icmp eq i64 %i.anj, 0
  br i1 %.not.i1296, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNSolsEj.exit1295
  %i.ank = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.and, ptr noundef nonnull %i.dy, i64 noundef 1)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %_ZNSolsEj.exit1295
  %i.anl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.and, i8 noundef signext 45)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.anm = load ptr, ptr %0, align 8, !tbaa !446
  %i.ann = getelementptr i8, ptr %i.anm, i64 -24
  %i.ano = load i64, ptr %i.ann, align 8
  %i.anp = getelementptr inbounds i8, ptr %0, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store i64 2, ptr %i.anq, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1301 = load i8, ptr %i.ix, align 1, !tbaa !70
  %i.anr = zext i8 %.sroa.0.0.copyload.i1301 to i64
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anr)
          to label %_ZNSolsEj.exit1303 unwind label %bb.ia ; 0 uses

_ZNSolsEj.exit1303:                               ; preds = %bb.hs
  %i.ant = load i32, ptr %i.kk, align 4, !tbaa !739
  %i.anu = and i32 %i.ant, 8192
  %.not.i1304 = icmp eq i32 %i.anu, 0
  br i1 %.not.i1304, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305, label %bb.ht

bb.ht:                                            ; preds = %_ZNSolsEj.exit1303
  %i.anv = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.anw = icmp eq i32 %i.anv, 0
  br i1 %i.anw, label %bb.hu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305

bb.hu:                                            ; preds = %bb.ht
  %i.anx = load ptr, ptr %11, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !677
  %i.aoa = icmp eq i32 %i.anz, 0
  br i1 %i.aoa, label %bb.hv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305

bb.hv:                                            ; preds = %bb.hu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 232
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !727 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !446
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 48
  %i.aof = load ptr, ptr %i.aoe, align 8
  %i.aog = invoke noundef i32 %i.aof(ptr noundef nonnull align 8 dereferenceable(64) %i.aoc)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 unwind label %bb.hw, !inline_history !743 ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aoh = landingpad { ptr, i32 }
          catch ptr null
  %i.aoi = extractvalue { ptr, i32 } %i.aoh, 0
  call void @__clang_call_terminate(ptr %i.aoi) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305: ; preds = %_ZNSolsEj.exit1303, %bb.ht, %bb.hu, %bb.hv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.hx:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

.loopexit2992:                                    ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274, %bb.hh, %bb.hl, %.noexc1284
  %lpad.loopexit2994 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp2993:                           ; preds = %bb.hk
  %lpad.loopexit.split-lp2995 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge.i.i1280
  %i.aok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hz:                                            ; preds = %bb.hr, %bb.hq, %bb.hp
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hs
  %i.aom = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ib:                                            ; preds = %.loopexit2992, %.loopexit.split-lp2993, %bb.ia, %bb.hz, %bb.hy
  %.pn931 = phi { ptr, i32 } [ %i.aom, %bb.ia ], [ %i.aol, %bb.hz ], [ %i.aok, %bb.hy ], [ %lpad.loopexit2994, %.loopexit2992 ], [ %lpad.loopexit.split-lp2995, %.loopexit.split-lp2993 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #26
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hx
  %.pn931.pn = phi { ptr, i32 } [ %.pn931, %bb.ib ], [ %i.aoj, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.aix

bb.id:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i8 37, ptr %i.dx, align 1, !tbaa !70
  %i.aon = load ptr, ptr %0, align 8, !tbaa !446
  %i.aoo = getelementptr i8, ptr %i.aon, i64 -24
  %i.aop = load i64, ptr %i.aoo, align 8
  %i.aoq = getelementptr inbounds i8, ptr %0, i64 %i.aop
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !659
  %.not.i1306 = icmp eq i64 %i.aos, 0
  br i1 %.not.i1306, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dx, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit

bb.if:                                            ; preds = %bb.id
  %i.aou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.ig unwind label %.loopexit ; 0 uses

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.0.i1307 = phi ptr [ %i.aot, %bb.ie ], [ %0, %bb.if ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i8 %.0806, ptr %i.dw, align 1, !tbaa !70
  %i.aov = load ptr, ptr %.0.i1307, align 8, !tbaa !446
  %i.aow = getelementptr i8, ptr %i.aov, i64 -24
  %i.aox = load i64, ptr %i.aow, align 8
  %i.aoy = getelementptr inbounds i8, ptr %.0.i1307, i64 %i.aox
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !659
  %.not.i1311 = icmp eq i64 %i.apa, 0
  br i1 %.not.i1311, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.apb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1307, ptr noundef nonnull %i.dw, i64 noundef 1)
          to label %bb.ij unwind label %.loopexit

bb.ii:                                            ; preds = %bb.ig
  %i.apc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1307, i8 noundef signext %.0806)
          to label %bb.ij unwind label %.loopexit ; 0 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.0.i1312 = phi ptr [ %i.apb, %bb.ih ], [ %.0.i1307, %bb.ii ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.apd = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i8 %i.apd, ptr %i.dv, align 1, !tbaa !70
  %i.ape = load ptr, ptr %.0.i1312, align 8, !tbaa !446
  %i.apf = getelementptr i8, ptr %i.ape, i64 -24
  %i.apg = load i64, ptr %i.apf, align 8
  %i.aph = getelementptr inbounds i8, ptr %.0.i1312, i64 %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !659
  %.not.i1316 = icmp eq i64 %i.apj, 0
  br i1 %.not.i1316, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1312, ptr noundef nonnull %i.dv, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 unwind label %.loopexit ; 0 uses

bb.il:                                            ; preds = %bb.ij
  %i.apl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1312, i8 noundef signext %i.apd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.im:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store i8 70, ptr %i.du, align 1, !tbaa !70
  %i.apm = load ptr, ptr %0, align 8, !tbaa !446
  %i.apn = getelementptr i8, ptr %i.apm, i64 -24
  %i.apo = load i64, ptr %i.apn, align 8
  %i.app = getelementptr inbounds i8, ptr %0, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !659
  %.not.i1321 = icmp eq i64 %i.apr, 0
  br i1 %.not.i1321, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.du, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 unwind label %.loopexit ; 0 uses

bb.io:                                            ; preds = %bb.im
  %i.apt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325: ; preds = %bb.io, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ip:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.jv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.apu = icmp eq i8 %.0806, 0
  br i1 %i.apu, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.apv = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i1326 = icmp eq i16 %i.apv, -32768
  br i1 %.not.i1326, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apw = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.apx = add i8 %i.apw, -1
  %spec.select.i.i1327 = icmp ult i8 %i.apx, 12
  br i1 %spec.select.i.i1327, label %bb.it, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread

bb.it:                                            ; preds = %bb.is
  %i.apy = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1329 = icmp eq i8 %i.apy, 0
  br i1 %.not8.i1329, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1330 = icmp eq i8 %i.apw, 2
  %i.apz = and i16 %i.apv, 3
  %i.aqa = icmp eq i16 %i.apz, 0
  %or.cond.i1331 = and i1 %i.aqa, %.not.i.i1330
  br i1 %or.cond.i1331, label %bb.iv, label %.thread.i.i1332

bb.iv:                                            ; preds = %bb.iu
  %i.aqb = srem i16 %i.apv, 100
  %.not.i.i.i1335 = icmp ne i16 %i.aqb, 0
  %i.aqc = srem i16 %i.apv, 400
  %i.aqd = icmp eq i16 %i.aqc, 0
  %or.cond.i.i1336 = or i1 %.not.i.i.i1335, %i.aqd
  br i1 %or.cond.i.i1336, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337, label %.thread.i.i1332

.thread.i.i1332:                                  ; preds = %bb.iv, %bb.iu
  %i.aqe = zext nneg i8 %i.apw to i64
  %23 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aqe
  %i.aqf = getelementptr i8, ptr %23, i64 -1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337: ; preds = %bb.iv, %.thread.i.i1332
  %.sroa.03.0.i.i1334 = phi i8 [ %i.aqg, %.thread.i.i1332 ], [ 29, %bb.iv ]
  %.not2831 = icmp ult i8 %.sroa.03.0.i.i1334, %i.apy
  br i1 %.not2831, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %.thread.i.i.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread: ; preds = %bb.it, %bb.is, %bb.ir, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !446
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -24
  %i.aqj = load i64, ptr %i.aqi, align 8
  %i.aqk = getelementptr inbounds i8, ptr %0, i64 %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !677
  %i.aqn = or i32 %i.aqm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aqk, i32 noundef %i.aqn)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread
  %.pre3460 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3461 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3462 = load i8, ptr %i.ix, align 1, !tbaa !732
  %.pre3463 = load i8, ptr %.0731, align 1, !tbaa !70
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337
  %i.aqo = phi i8 [ %.pre3463, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqp = phi i8 [ %.pre3462, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqq = phi i8 [ %.pre3461, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apw, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ] ; 3 uses
  %i.aqr = phi i16 [ %.pre3460, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqs = sext i16 %i.aqr to i32
  %i.aqt = icmp ult i8 %i.aqq, 3
  %.neg.i.i1340 = sext i1 %i.aqt to i32
  %i.aqu = add nsw i32 %.neg.i.i1340, %i.aqs      ; 4 uses
  %i.aqv = zext i8 %i.aqq to i32
  %i.aqw = zext i8 %i.aqp to i32
  %i.aqx = add nsw i32 %i.aqu, -399
  %i.aqy = icmp slt i32 %i.aqu, 0
  %i.aqz = select i1 %i.aqy, i32 %i.aqx, i32 %i.aqu
  %i.ara = sdiv i32 %i.aqz, 400                   ; 2 uses
  %.neg15.i.i1341 = mul nsw i32 %i.ara, -400
  %i.arb = add nsw i32 %.neg15.i.i1341, %i.aqu    ; 3 uses
  %i.arc = icmp ugt i8 %i.aqq, 2
  %.v.i.i1342 = select i1 %i.arc, i32 -3, i32 9
  %i.ard = add nsw i32 %.v.i.i1342, %i.aqv
  %i.are = mul nsw i32 %i.ard, 153
  %i.arf = add nsw i32 %i.are, 2
  %i.arg = udiv i32 %i.arf, 5
  %i.arh = mul nsw i32 %i.arb, 365
  %i.ari = lshr i32 %i.arb, 2
  %i.arj = udiv i32 %i.arb, 100
  %i.ark = mul nsw i32 %i.ara, 146097
  %i.arl = add nuw nsw i32 %i.aqw, -719469
  %i.arm = add nsw i32 %i.arl, %i.arg
  %i.arn = add nsw i32 %i.arm, %i.ark
  %i.aro = add nsw i32 %i.arn, %i.ari
  %i.arp = add nsw i32 %i.aro, %i.arh
  %i.arq = sub nsw i32 %i.arp, %i.arj             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.arr = add nsw i32 %i.arq, 719471             ; 2 uses
  %i.ars = icmp sgt i32 %i.arq, -719472
  %i.art = add nsw i32 %i.arq, 573375
  %i.aru = select i1 %i.ars, i32 %i.arr, i32 %i.art
  %i.arv = sdiv i32 %i.aru, 146097                ; 2 uses
  %.neg.i.i1344 = mul nsw i32 %i.arv, -146097
  %i.arw = add nsw i32 %.neg.i.i1344, %i.arr      ; 5 uses
  %i.arx = udiv i32 %i.arw, 1460
  %i.ary = udiv i32 %i.arw, 36524
  %i.arz = udiv i32 %i.arw, 146096
  %.neg2893 = add nsw i32 %i.ary, %i.arw
  %i.asa = add nuw nsw i32 %i.arz, %i.arx
  %i.asb = sub nsw i32 %.neg2893, %i.asa          ; 3 uses
  %i.asc = udiv i32 %i.asb, 365                   ; 2 uses
  %i.asd = mul nsw i32 %i.arv, 400
  %i.ase = add nsw i32 %i.asc, %i.asd
  %i.asf = udiv i32 %i.asb, 1460
  %i.asg = udiv i32 %i.asb, 36500
  %.neg36.i.i = mul i32 %i.asc, -365
  %.neg37.i.i = sub nsw i32 %i.arw, %i.asf
  %.neg25.i.i = add nsw i32 %.neg37.i.i, %i.asg
  %i.ash = add i32 %.neg25.i.i, %.neg36.i.i
  %i.asi = mul i32 %i.ash, 5
  %i.asj = add i32 %i.asi, 2                      ; 2 uses
  %i.ask = udiv i32 %i.asj, 153
  %i.asl = icmp ult i32 %i.asj, 1530
  %.v.i.i1345 = select i1 %i.asl, i32 3, i32 -9
  %i.asm = add nsw i32 %.v.i.i1345, %i.ask
  %i.asn = icmp ult i32 %i.asm, 3
  %i.aso = zext i1 %i.asn to i32
  %i.asp = add nsw i32 %i.ase, %i.aso             ; 2 uses
  %.sroa.02715.0.extract.trunc = trunc i32 %i.asp to i16
  %.sroa.02708.0.extract.trunc = shl i32 %i.asp, 16
  %sext2832 = add i32 %.sroa.02708.0.extract.trunc, -65536
  %i.asq = ashr exact i32 %sext2832, 16           ; 4 uses
  %i.asr = add nsw i32 %i.asq, -399
  %i.ass = icmp slt i32 %i.asq, 0
  %i.ast = select i1 %i.ass, i32 %i.asr, i32 %i.asq
  %i.asu = sdiv i32 %i.ast, 400                   ; 2 uses
  %.neg15.i.i.i.i.i = mul nsw i32 %i.asu, -400
  %i.asv = add nsw i32 %.neg15.i.i.i.i.i, %i.asq  ; 3 uses
  %i.asw = mul nsw i32 %i.asv, 365
  %i.asx = lshr i32 %i.asv, 2
  %i.asy = udiv i32 %i.asv, 100
  %i.asz = mul nsw i32 %i.asu, 146097
  %i.ata = add nsw i32 %i.asz, 275
  %i.atb = add nsw i32 %i.ata, %i.asx
  %i.atc = add nsw i32 %i.atb, %i.asw
  %i.atd = sub nsw i32 %i.atc, %i.asy             ; 3 uses
  %i.ate = icmp sgt i32 %i.atd, 719433
  %.in.i.i.i.i.v = select i1 %i.ate, i32 -719434, i32 -719438
  %.in.i.i.i.i = add nsw i32 %i.atd, %.in.i.i.i.i.v
  %i.atf = urem i32 %.in.i.i.i.i, 7               ; 3 uses
  %i.atg = icmp samesign ult i32 %i.atf, 4
  %.v3240 = select i1 %i.atg, i32 -10, i32 -4
  %i.ath = add nsw i32 %i.atf, %.v3240
  %.fr.i.i.i = freeze i32 %i.ath                  ; 2 uses
  %i.ati = srem i32 %.fr.i.i.i, 7
  %i.atj = sub nsw i32 %i.atd, %i.atf
  %i.atk = add nsw i32 %i.atj, -719430
  %i.atl = add i32 %i.atk, %.fr.i.i.i
  %i.atm = sub i32 %i.atl, %i.ati
  %i.atn = icmp slt i32 %i.arq, %i.atm
  %i.ato = sext i1 %i.atn to i16
  %spec.select = add i16 %.sroa.02715.0.extract.trunc, %i.ato
  store i16 %spec.select, ptr %13, align 2
  %i.atp = icmp eq i8 %i.aqo, 71
  br i1 %i.atp, label %bb.ix, label %bb.iz

bb.iw:                                            ; preds = %bb.iy, %bb.ix
  %i.atq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ix:                                            ; preds = %.thread.i.i.i.i
  %i.atr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %13)
          to label %.noexc1357 unwind label %bb.iw ; 0 uses

.noexc1357:                                       ; preds = %bb.ix
  %i.ats = load i16, ptr %13, align 2, !tbaa !730
  %.not.i1356 = icmp eq i16 %i.ats, -32768
  br i1 %.not.i1356, label %bb.iy, label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit

bb.iy:                                            ; preds = %.noexc1357
  %i.att = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 20)
          to label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit unwind label %bb.iw ; 0 uses

bb.iz:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.atu = load ptr, ptr %0, align 8, !tbaa !446
  %i.atv = getelementptr i8, ptr %i.atu, i64 -24
  %i.atw = load i64, ptr %i.atv, align 8
  %i.atx = getelementptr inbounds i8, ptr %0, i64 %i.atw
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(264) %i.atx)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360 unwind label %bb.ji

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360: ; preds = %bb.iz
  %i.aty = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.atz = getelementptr i8, ptr %i.aty, i64 -24
  %i.aua = load i64, ptr %i.atz, align 8
  %i.aub = getelementptr inbounds i8, ptr %0, i64 %i.aua ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 225 ; 2 uses
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !688, !range !86, !noundef !87
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %._crit_edge.i.i1366, label %bb.ja

bb.ja:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 240
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1361 = icmp eq ptr %i.aug, null
  br i1 %.not.i.i.i.i1361, label %bb.jb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1369 unwind label %.loopexit.split-lp2988

.noexc1369:                                       ; preds = %bb.jb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362: ; preds = %bb.ja
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 56
  %i.aui = load i8, ptr %i.auh, align 8, !tbaa !695
  %.not.i1.i.i.i1363 = icmp eq i8 %i.aui, 0
  br i1 %.not.i1.i.i.i1363, label %bb.jc, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aug)
          to label %.noexc1370 unwind label %.loopexit2987

.noexc1370:                                       ; preds = %bb.jc
  %i.auj = load ptr, ptr %i.aug, align 8, !tbaa !446
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = invoke noundef signext i8 %i.aul(ptr noundef nonnull align 8 dereferenceable(570) %i.aug, i8 noundef signext 32)
          to label %.noexc1370._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364_crit_edge unwind label %.loopexit2987, !inline_history !699 ; 0 uses

.noexc1370._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364_crit_edge: ; preds = %.noexc1370
  %.pre3464.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364

end_hunk_15
begin_hunk_16_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.ks:                                            ; preds = %bb.kq
  %i.ayu = icmp eq i64 %.sroa.02700.0.copyload, 12
  %i.ayv = add nsw i64 %.sroa.02700.0.copyload, -12
  br i1 %i.ayu, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.ks, %bb.kr, %bb.kp
  %storemerge = phi i64 [ %.sroa.02700.0.copyload, %bb.kr ], [ %i.ayv, %bb.ks ], [ %.sroa.02700.0.copyload, %bb.kp ] ; 3 uses
  %i.ayw = icmp slt i64 %storemerge, 10
  br i1 %i.ayw, label %bb.kt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kt:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !70
  %i.ayx = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayy = getelementptr i8, ptr %i.ayx, i64 -24
  %i.ayz = load i64, ptr %i.ayy, align 8
  %i.aza = getelementptr inbounds i8, ptr %0, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !659
  %.not.i1420 = icmp eq i64 %i.azc, 0
  br i1 %.not.i1420, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.azd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 unwind label %bb.kw ; 0 uses

bb.kv:                                            ; preds = %bb.kt
  %i.aze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 unwind label %bb.kw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kw:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.kv, %bb.ku
  %i.azf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.ks, %bb.kr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3537 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 ], [ 12, %bb.kr ], [ 12, %bb.ks ]
  %i.azg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3537)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.kw ; 0 uses

bb.kx:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #26
  store i8 37, ptr %i.fg, align 1, !tbaa !70
  store i8 79, ptr %i.kg, align 1, !tbaa !70
  %i.azh = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.azh, ptr %i.kh, align 1, !tbaa !70
  %i.azi = trunc i64 %.sroa.02700.0.copyload to i32
  store i32 %i.azi, ptr %i.it, align 8, !tbaa !735
  %i.azj = load ptr, ptr %0, align 8, !tbaa !446
  %i.azk = getelementptr i8, ptr %i.azj, i64 -24
  %i.azl = load i64, ptr %i.azk, align 8
  %i.azm = getelementptr inbounds i8, ptr %0, i64 %i.azl ; 6 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 232
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !727 ; 2 uses
  %.not.i1427 = icmp eq ptr %i.azo, null
  %i.azp = zext i1 %.not.i1427 to i8
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azm, i64 225 ; 2 uses
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !688, !range !86, !noundef !87
  %i.azs = trunc nuw i8 %i.azr to i1
  br i1 %i.azs, label %._crit_edge.i1433, label %bb.ky

._crit_edge.i1433:                                ; preds = %bb.kx
  %.phi.trans.insert.i1434 = getelementptr inbounds nuw i8, ptr %i.azm, i64 224
  %.pre.i1435 = load i8, ptr %.phi.trans.insert.i1434, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439

bb.ky:                                            ; preds = %bb.kx
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azm, i64 240
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1428 = icmp eq ptr %i.azu, null
  br i1 %.not.i.i.i1428, label %bb.kz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1436 unwind label %.loopexit.split-lp2983

.noexc1436:                                       ; preds = %bb.kz
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429: ; preds = %bb.ky
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 56
  %i.azw = load i8, ptr %i.azv, align 8, !tbaa !695
  %.not.i1.i.i1430 = icmp eq i8 %i.azw, 0
  br i1 %.not.i1.i.i1430, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azu, i64 89
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431

bb.lb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azu)
          to label %.noexc1437 unwind label %.loopexit2982

.noexc1437:                                       ; preds = %bb.lb
  %i.azz = load ptr, ptr %i.azu, align 8, !tbaa !446
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 48
  %i.bab = load ptr, ptr %i.baa, align 8
  %i.bac = invoke noundef signext i8 %i.bab(ptr noundef nonnull align 8 dereferenceable(570) %i.azu, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431 unwind label %.loopexit2982, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431: ; preds = %.noexc1437, %bb.la
  %.0.i.i.i1432 = phi i8 [ %i.azy, %bb.la ], [ %i.bac, %.noexc1437 ] ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azm, i64 224
  store i8 %.0.i.i.i1432, ptr %i.bad, align 8, !tbaa !700
  store i8 1, ptr %i.azq, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431, %._crit_edge.i1433
  %i.bae = phi i8 [ %.pre.i1435, %._crit_edge.i1433 ], [ %.0.i.i.i1432, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431 ]
  %i.baf = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azo, i8 %i.azp, ptr noundef nonnull align 8 dereferenceable(216) %i.azm, i8 noundef signext %i.bae, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lc unwind label %.loopexit2982 ; 0 uses

bb.lc:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit2982:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439, %bb.lb, %.noexc1437
  %lpad.loopexit2984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp2983:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp2983, %.loopexit2982
  %lpad.phi2986 = phi { ptr, i32 } [ %lpad.loopexit2984, %.loopexit2982 ], [ %lpad.loopexit.split-lp2985, %.loopexit.split-lp2983 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %bb.aix

bb.le:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !70
  %i.bag = load ptr, ptr %0, align 8, !tbaa !446
  %i.bah = getelementptr i8, ptr %i.bag, i64 -24
  %i.bai = load i64, ptr %i.bah, align 8
  %i.baj = getelementptr inbounds i8, ptr %0, i64 %i.bai
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 16
  %i.bal = load i64, ptr %i.bak, align 8, !tbaa !659
  %.not.i1440 = icmp eq i64 %i.bal, 0
  br i1 %.not.i1440, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 unwind label %.loopexit ; 0 uses

bb.lg:                                            ; preds = %bb.le
  %i.ban = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.lh:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.mn, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bao = icmp eq i8 %.0806, 0
  br i1 %i.bao, label %bb.lj, label %bb.me

bb.lj:                                            ; preds = %bb.li
  %i.bap = load i16, ptr %2, align 8, !tbaa !730  ; 9 uses
  %.not.i1445 = icmp eq i16 %i.bap, -32768
  br i1 %.not.i1445, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.baq = load i8, ptr %i.iw, align 2, !tbaa !731 ; 8 uses
  %i.bar = add i8 %i.baq, -1
  %spec.select.i.i1446 = icmp ult i8 %i.bar, 12
  br i1 %spec.select.i.i1446, label %bb.ll, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538

bb.ll:                                            ; preds = %bb.lk
  %i.bas = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1448 = icmp eq i8 %i.bas, 0
  br i1 %.not8.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not.i.i1449 = icmp eq i8 %i.baq, 2
  %i.bat = and i16 %i.bap, 3
  %i.bau = icmp eq i16 %i.bat, 0
  %or.cond.i1450 = and i1 %i.bau, %.not.i.i1449
  br i1 %or.cond.i1450, label %bb.ln, label %.thread.i.i1451

bb.ln:                                            ; preds = %bb.lm
  %i.bav = srem i16 %i.bap, 100
  %.not.i.i.i1454 = icmp ne i16 %i.bav, 0
  %i.baw = srem i16 %i.bap, 400
  %i.bax = icmp eq i16 %i.baw, 0
  %or.cond.i.i1455 = or i1 %.not.i.i.i1454, %i.bax
  br i1 %or.cond.i.i1455, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456, label %.thread.i.i1451

.thread.i.i1451:                                  ; preds = %bb.ln, %bb.lm
  %i.bay = zext nneg i8 %i.baq to i64
  %24 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bay
  %i.baz = getelementptr i8, ptr %24, i64 -1
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456: ; preds = %bb.ln, %.thread.i.i1451
  %.sroa.03.0.i.i1453 = phi i8 [ %i.bba, %.thread.i.i1451 ], [ 29, %bb.ln ]
  %.not2826 = icmp ult i8 %.sroa.03.0.i.i1453, %i.bas
  br i1 %.not2826, label %.thread2762, label %.thread2761

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread: ; preds = %bb.ll
  %i.bbb = load i8, ptr %i.gw, align 8, !tbaa !800, !range !86, !noundef !87
  %i.bbc = trunc nuw i8 %i.bbb to i1
  br i1 %i.bbc, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538: ; preds = %bb.lk
  %i.bbd = load i8, ptr %i.gw, align 8, !tbaa !800, !range !86, !noundef !87
  %i.bbe = trunc nuw i8 %i.bbd to i1
  br i1 %i.bbe, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread: ; preds = %bb.lj
  %i.bbf = load i8, ptr %i.gw, align 8, !tbaa !800, !range !86, !noundef !87
  %i.bbg = trunc nuw i8 %i.bbf to i1
  br i1 %i.bbg, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

.thread2762:                                      ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456
  %i.bbh = load i8, ptr %i.gw, align 8, !tbaa !800, !range !86, !noundef !87
  %i.bbi = trunc nuw i8 %i.bbh to i1
  br i1 %i.bbi, label %.thread2761, label %bb.md

.thread2761:                                      ; preds = %.thread2762, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456
  %.pr = load i8, ptr %i.ix, align 1, !tbaa !732  ; 3 uses
  %.not8.i1460 = icmp eq i8 %.pr, 0
  br i1 %.not8.i1460, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.lo

bb.lo:                                            ; preds = %.thread2761
  %.not.i.i1461 = icmp eq i8 %i.baq, 2
  %i.bbj = and i16 %i.bap, 3
  %i.bbk = icmp eq i16 %i.bbj, 0
  %or.cond.i1462 = and i1 %i.bbk, %.not.i.i1461
  br i1 %or.cond.i1462, label %bb.lp, label %.thread.i.i1463

bb.lp:                                            ; preds = %bb.lo
  %i.bbl = srem i16 %i.bap, 100
  %.not.i.i.i1466 = icmp ne i16 %i.bbl, 0
  %i.bbm = srem i16 %i.bap, 400
  %i.bbn = icmp eq i16 %i.bbm, 0
  %or.cond.i.i1467 = or i1 %.not.i.i.i1466, %i.bbn
  br i1 %or.cond.i.i1467, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468, label %.thread.i.i1463

.thread.i.i1463:                                  ; preds = %bb.lp, %bb.lo
  %i.bbo = zext nneg i8 %i.baq to i64
  %25 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbo
  %i.bbp = getelementptr i8, ptr %25, i64 -1
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468: ; preds = %bb.lp, %.thread.i.i1463
  %.sroa.03.0.i.i1465 = phi i8 [ %i.bbq, %.thread.i.i1463 ], [ 29, %bb.lp ]
  %.not2827 = icmp ult i8 %.sroa.03.0.i.i1465, %.pr
  br i1 %.not2827, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.lq

bb.lq:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468
  %i.bbr = sext i16 %i.bap to i32                 ; 3 uses
  %i.bbs = icmp samesign ult i8 %i.baq, 3
  %.neg.i.i1469 = sext i1 %i.bbs to i32
  %i.bbt = add nsw i32 %.neg.i.i1469, %i.bbr      ; 4 uses
  %i.bbu = zext nneg i8 %i.baq to i32
  %i.bbv = zext i8 %.pr to i32
  %i.bbw = add nsw i32 %i.bbt, -399
  %i.bbx = icmp slt i32 %i.bbt, 0
  %i.bby = select i1 %i.bbx, i32 %i.bbw, i32 %i.bbt
  %i.bbz = sdiv i32 %i.bby, 400                   ; 2 uses
  %.neg15.i.i1470 = mul nsw i32 %i.bbz, -400
  %i.bca = add nsw i32 %.neg15.i.i1470, %i.bbt    ; 3 uses
  %i.bcb = icmp samesign ugt i8 %i.baq, 2
  %.v.i.i1471 = select i1 %i.bcb, i32 -3, i32 9
  %i.bcc = add nsw i32 %.v.i.i1471, %i.bbu
  %i.bcd = mul nsw i32 %i.bcc, 153
  %i.bce = add nsw i32 %i.bcd, 2
  %i.bcf = udiv i32 %i.bce, 5
  %i.bcg = lshr i32 %i.bca, 2
  %i.bch = udiv i32 %i.bca, 100
  %i.bci = add nsw i32 %i.bbr, -1                 ; 2 uses
  %i.bcj = add nsw i32 %i.bbr, -400
  %i.bck = icmp slt i16 %i.bap, 1
  %i.bcl = select i1 %i.bck, i32 %i.bcj, i32 %i.bci
  %i.bcm = sdiv i32 %i.bcl, 400                   ; 2 uses
  %.neg15.i.i1483 = mul nsw i32 %i.bcm, -400
  %i.bcn = add nsw i32 %.neg15.i.i1483, %i.bci    ; 3 uses
  %i.bco = lshr i32 %i.bcn, 2
  %i.bcp = udiv i32 %i.bcn, 100
  %reass.add = sub nsw i32 %i.bca, %i.bcn
  %reass.mul = mul nsw i32 %reass.add, 365
  %reass.add2888 = sub nsw i32 %i.bbz, %i.bcm
  %reass.mul2889 = mul nsw i32 %reass.add2888, 146097
  %reass.sub = sub nsw i32 %i.bcp, %i.bco
  %i.bcq = add nsw i32 %reass.sub, -306
  %.neg2883 = add nsw i32 %i.bcq, %i.bbv
  %.neg2885 = add nsw i32 %.neg2883, %i.bcf
  %.neg2886 = add nsw i32 %.neg2885, %reass.mul2889
  %.neg2828 = add nsw i32 %.neg2886, %i.bcg
  %i.bcr = sub nsw i32 %.neg2828, %i.bch
  %i.bcs = add nsw i32 %i.bcr, %reass.mul
  br label %bb.lr

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread, %.thread2761, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468
  %i.bct = load i64, ptr %i.iq, align 8, !tbaa !744
  %i.bcu = mul nsw i64 %i.bct, 1000000000
  %i.bcv = load i64, ptr %i.jv, align 8, !tbaa !408
  %i.bcw = add nsw i64 %i.bcu, %i.bcv
  %i.bcx = load i64, ptr %i.ir, align 8, !tbaa !714
  %i.bcy = mul nsw i64 %i.bcx, 60000000000
  %i.bcz = add nsw i64 %i.bcw, %i.bcy
  %i.bda = load i64, ptr %i.ip, align 8, !tbaa !715
  %i.bdb = mul nsw i64 %i.bda, 3600000000000
  %i.bdc = add nsw i64 %i.bcz, %i.bdb
  %i.bdd = load i8, ptr %i.ju, align 8, !tbaa !805, !range !86, !noundef !87
  %i.bde = shl nuw nsw i8 %i.bdd, 1
  %i.bdf = zext nneg i8 %i.bde to i64
  %i.bdg = sub nsw i64 1, %i.bdf
  %i.bdh = mul nsw i64 %i.bdg, %i.bdc
  %i.bdi = sdiv i64 %i.bdh, 86400000000000
  %i.bdj = trunc nsw i64 %i.bdi to i32
  br label %bb.lr

bb.lr:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, %bb.lq
  %.sroa.02692.0 = phi i32 [ %i.bcs, %bb.lq ], [ %i.bdj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.bdk = load ptr, ptr %0, align 8, !tbaa !446
  %i.bdl = getelementptr i8, ptr %i.bdk, i64 -24
  %i.bdm = load i64, ptr %i.bdl, align 8
  %i.bdn = getelementptr inbounds i8, ptr %0, i64 %i.bdm
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(264) %i.bdn)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488 unwind label %bb.ma

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488: ; preds = %bb.lr
  %i.bdo = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.bdp = getelementptr i8, ptr %i.bdo, i64 -24
  %i.bdq = load i64, ptr %i.bdp, align 8
  %i.bdr = getelementptr inbounds i8, ptr %0, i64 %i.bdq ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 225 ; 2 uses
  %i.bdt = load i8, ptr %i.bds, align 1, !tbaa !688, !range !86, !noundef !87
  %i.bdu = trunc nuw i8 %i.bdt to i1
  br i1 %i.bdu, label %._crit_edge.i.i1494, label %bb.ls

bb.ls:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdr, i64 240
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1489 = icmp eq ptr %i.bdw, null
  br i1 %.not.i.i.i.i1489, label %bb.lt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1497 unwind label %.loopexit.split-lp2978

.noexc1497:                                       ; preds = %bb.lt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490: ; preds = %bb.ls
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 56
  %i.bdy = load i8, ptr %i.bdx, align 8, !tbaa !695
  %.not.i1.i.i.i1491 = icmp eq i8 %i.bdy, 0
  br i1 %.not.i1.i.i.i1491, label %bb.lu, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492

bb.lu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdw)
          to label %.noexc1498 unwind label %.loopexit2977

.noexc1498:                                       ; preds = %bb.lu
  %i.bdz = load ptr, ptr %i.bdw, align 8, !tbaa !446
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 48
  %i.beb = load ptr, ptr %i.bea, align 8
  %i.bec = invoke noundef signext i8 %i.beb(ptr noundef nonnull align 8 dereferenceable(570) %i.bdw, i8 noundef signext 32)
          to label %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge unwind label %.loopexit2977, !inline_history !699 ; 0 uses

.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge: ; preds = %.noexc1498
  %.pre3459.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492: ; preds = %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490
  %.pre3459 = phi ptr [ %.pre3459.pre, %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge ], [ %i.bdo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490 ]
  store i8 1, ptr %i.bds, align 1, !tbaa !688
  br label %._crit_edge.i.i1494

._crit_edge.i.i1494:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492
  %i.bed = phi ptr [ %i.bdo, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488 ], [ %.pre3459, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492 ]
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdr, i64 224
  store i8 48, ptr %i.bee, align 8, !tbaa !700
  %i.bef = getelementptr i8, ptr %i.bed, i64 -24  ; 2 uses
  %i.beg = load i64, ptr %i.bef, align 8
  %i.beh = getelementptr inbounds i8, ptr %0, i64 %i.beg
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 24
  store i32 130, ptr %i.bei, align 8, !tbaa !701
  %i.bej = load i64, ptr %i.bef, align 8
  %i.bek = getelementptr inbounds i8, ptr %0, i64 %i.bej
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 16
  store i64 3, ptr %i.bel, align 8, !tbaa !659
  %i.bem = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.02692.0)
          to label %bb.lv unwind label %.loopexit2977 ; 0 uses

bb.lv:                                            ; preds = %._crit_edge.i.i1494
  %i.ben = load i32, ptr %i.kf, align 4, !tbaa !739
  %i.beo = and i32 %i.ben, 8192
  %.not.i1501 = icmp eq i32 %i.beo, 0
  br i1 %.not.i1501, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bep = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.beq = icmp eq i32 %i.bep, 0
  br i1 %i.beq, label %bb.lx, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502

bb.lx:                                            ; preds = %bb.lw
  %i.ber = load ptr, ptr %15, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 32
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !677
  %i.beu = icmp eq i32 %i.bet, 0
  br i1 %i.beu, label %bb.ly, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502

bb.ly:                                            ; preds = %bb.lx
  %i.bev = getelementptr inbounds nuw i8, ptr %i.ber, i64 232
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !727 ; 2 uses
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !446
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 48
  %i.bez = load ptr, ptr %i.bey, align 8
  %i.bfa = invoke noundef i32 %i.bez(ptr noundef nonnull align 8 dereferenceable(64) %i.bew)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 unwind label %bb.lz, !inline_history !743 ; 0 uses

bb.lz:                                            ; preds = %bb.ly
  %i.bfb = landingpad { ptr, i32 }
          catch ptr null
  %i.bfc = extractvalue { ptr, i32 } %i.bfb, 0
  call void @__clang_call_terminate(ptr %i.bfc) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502: ; preds = %bb.lv, %bb.lw, %bb.lx, %bb.ly
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ma:                                            ; preds = %bb.lr
  %i.bfd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit2977:                                    ; preds = %._crit_edge.i.i1494, %bb.lu, %.noexc1498
  %lpad.loopexit2979 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2978:                           ; preds = %bb.lt
  %lpad.loopexit.split-lp2980 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb
end_hunk_16
begin_hunk_17_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.wf:                                            ; preds = %bb.we
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chb, i64 240
  %i.chj = load ptr, ptr %i.chi, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1896 = icmp eq ptr %i.chj, null
  br i1 %.not.i.i.i1896, label %bb.wg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897

bb.wg:                                            ; preds = %bb.wf
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1904 unwind label %.loopexit.split-lp2948

.noexc1904:                                       ; preds = %bb.wg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897: ; preds = %bb.wf
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 56
  %i.chl = load i8, ptr %i.chk, align 8, !tbaa !695
  %.not.i1.i.i1898 = icmp eq i8 %i.chl, 0
  br i1 %.not.i1.i.i1898, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chj, i64 89
  %i.chn = load i8, ptr %i.chm, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899

bb.wi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.chj)
          to label %.noexc1905 unwind label %.loopexit2947

.noexc1905:                                       ; preds = %bb.wi
  %i.cho = load ptr, ptr %i.chj, align 8, !tbaa !446
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 48
  %i.chq = load ptr, ptr %i.chp, align 8
  %i.chr = invoke noundef signext i8 %i.chq(ptr noundef nonnull align 8 dereferenceable(570) %i.chj, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899 unwind label %.loopexit2947, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899: ; preds = %.noexc1905, %bb.wh
  %.0.i.i.i1900 = phi i8 [ %i.chn, %bb.wh ], [ %i.chr, %.noexc1905 ] ; 2 uses
  %i.chs = getelementptr inbounds nuw i8, ptr %i.chb, i64 224
  store i8 %.0.i.i.i1900, ptr %i.chs, align 8, !tbaa !700
  store i8 1, ptr %i.chf, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899, %._crit_edge.i1901
  %i.cht = phi i8 [ %.pre.i1903, %._crit_edge.i1901 ], [ %.0.i.i.i1900, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899 ]
  %i.chu = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.chd, i8 %i.che, ptr noundef nonnull align 8 dereferenceable(216) %i.chb, i8 noundef signext %i.cht, ptr noundef nonnull %6, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.jo)
          to label %bb.wj unwind label %.loopexit2947 ; 0 uses

bb.wj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit2947:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907, %bb.wi, %.noexc1905
  %lpad.loopexit2949 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

.loopexit.split-lp2948:                           ; preds = %bb.wg
  %lpad.loopexit.split-lp2950 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wk:                                            ; preds = %.loopexit.split-lp2948, %.loopexit2947
  %lpad.phi2951 = phi { ptr, i32 } [ %lpad.loopexit2949, %.loopexit2947 ], [ %lpad.loopexit.split-lp2950, %.loopexit.split-lp2948 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #26
  br label %bb.aix

bb.wl:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 117, ptr %i.bf, align 1, !tbaa !70
  %i.chv = load ptr, ptr %0, align 8, !tbaa !446
  %i.chw = getelementptr i8, ptr %i.chv, i64 -24
  %i.chx = load i64, ptr %i.chw, align 8
  %i.chy = getelementptr inbounds i8, ptr %0, i64 %i.chx
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chy, i64 16
  %i.cia = load i64, ptr %i.chz, align 8, !tbaa !659
  %.not.i1908 = icmp eq i64 %i.cia, 0
  br i1 %.not.i1908, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 unwind label %.loopexit ; 0 uses

bb.wn:                                            ; preds = %bb.wl
  %i.cic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 117)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912: ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.wo:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.yc, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cid = icmp eq i8 %.0806, 69
  br i1 %i.cid, label %bb.wq, label %bb.wz

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 37, ptr %i.be, align 1, !tbaa !70
  %i.cie = load ptr, ptr %0, align 8, !tbaa !446
  %i.cif = getelementptr i8, ptr %i.cie, i64 -24
  %i.cig = load i64, ptr %i.cif, align 8
  %i.cih = getelementptr inbounds i8, ptr %0, i64 %i.cig
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 16
  %i.cij = load i64, ptr %i.cii, align 8, !tbaa !659
  %.not.i1913 = icmp eq i64 %i.cij, 0
  br i1 %.not.i1913, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %bb.wt unwind label %.loopexit

bb.ws:                                            ; preds = %bb.wq
  %i.cil = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.wt unwind label %.loopexit ; 0 uses

bb.wt:                                            ; preds = %bb.wr, %bb.ws
  %.0.i1914 = phi ptr [ %i.cik, %bb.wr ], [ %0, %bb.ws ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 69, ptr %i.bd, align 1, !tbaa !70
  %i.cim = load ptr, ptr %.0.i1914, align 8, !tbaa !446
  %i.cin = getelementptr i8, ptr %i.cim, i64 -24
  %i.cio = load i64, ptr %i.cin, align 8
  %i.cip = getelementptr inbounds i8, ptr %.0.i1914, i64 %i.cio
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cip, i64 16
  %i.cir = load i64, ptr %i.ciq, align 8, !tbaa !659
  %.not.i1918 = icmp eq i64 %i.cir, 0
  br i1 %.not.i1918, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.cis = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1914, ptr noundef nonnull %i.bd, i64 noundef 1)
          to label %bb.ww unwind label %.loopexit

bb.wv:                                            ; preds = %bb.wt
  %i.cit = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1914, i8 noundef signext 69)
          to label %bb.ww unwind label %.loopexit ; 0 uses

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.0.i1919 = phi ptr [ %i.cis, %bb.wu ], [ %.0.i1914, %bb.wv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.ciu = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i8 %i.ciu, ptr %i.bc, align 1, !tbaa !70
  %i.civ = load ptr, ptr %.0.i1919, align 8, !tbaa !446
  %i.ciw = getelementptr i8, ptr %i.civ, i64 -24
  %i.cix = load i64, ptr %i.ciw, align 8
  %i.ciy = getelementptr inbounds i8, ptr %.0.i1919, i64 %i.cix
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 16
  %i.cja = load i64, ptr %i.ciz, align 8, !tbaa !659
  %.not.i1923 = icmp eq i64 %i.cja, 0
  br i1 %.not.i1923, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cjb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1919, ptr noundef nonnull %i.bc, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 unwind label %.loopexit ; 0 uses

bb.wy:                                            ; preds = %bb.ww
  %i.cjc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1919, i8 noundef signext %i.ciu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927: ; preds = %bb.wy, %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.wz:                                            ; preds = %bb.wp
  %i.cjd = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i1928 = icmp eq i16 %i.cjd, -32768
  br i1 %.not.i1928, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.cje = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.cjf = add i8 %i.cje, -1
  %spec.select.i.i1929 = icmp ult i8 %i.cjf, 12
  br i1 %spec.select.i.i1929, label %bb.xb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread

bb.xb:                                            ; preds = %bb.xa
  %i.cjg = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1931 = icmp eq i8 %i.cjg, 0
  br i1 %.not8.i1931, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %.not.i.i1932 = icmp eq i8 %i.cje, 2
  %i.cjh = and i16 %i.cjd, 3
  %i.cji = icmp eq i16 %i.cjh, 0
  %or.cond.i1933 = and i1 %i.cji, %.not.i.i1932
  br i1 %or.cond.i1933, label %bb.xd, label %.thread.i.i1934

bb.xd:                                            ; preds = %bb.xc
  %i.cjj = srem i16 %i.cjd, 100
  %.not.i.i.i1937 = icmp ne i16 %i.cjj, 0
  %i.cjk = srem i16 %i.cjd, 400
  %i.cjl = icmp eq i16 %i.cjk, 0
  %or.cond.i.i1938 = or i1 %.not.i.i.i1937, %i.cjl
  br i1 %or.cond.i.i1938, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939, label %.thread.i.i1934

.thread.i.i1934:                                  ; preds = %bb.xd, %bb.xc
  %i.cjm = zext nneg i8 %i.cje to i64
  %26 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cjm
  %i.cjn = getelementptr i8, ptr %26, i64 -1
  %i.cjo = load i8, ptr %i.cjn, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939: ; preds = %bb.xd, %.thread.i.i1934
  %.sroa.03.0.i.i1936 = phi i8 [ %i.cjo, %.thread.i.i1934 ], [ 29, %bb.xd ]
  %.not2820 = icmp ult i8 %.sroa.03.0.i.i1936, %i.cjg
  br i1 %.not2820, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread: ; preds = %bb.xb, %bb.xa, %bb.wz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939
  %i.cjp = load ptr, ptr %0, align 8, !tbaa !446
  %i.cjq = getelementptr i8, ptr %i.cjp, i64 -24
  %i.cjr = load i64, ptr %i.cjq, align 8
  %i.cjs = getelementptr inbounds i8, ptr %0, i64 %i.cjr ; 2 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 32
  %i.cju = load i32, ptr %i.cjt, align 8, !tbaa !677
  %i.cjv = or i32 %i.cju, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cjs, i32 noundef %i.cjv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge unwind label %bb.xe

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread
  %.pre3449 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3450 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3451 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941

bb.xe:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread
  %i.cjw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939
  %i.cjx = phi i8 [ %.pre3451, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cjg, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ]
  %i.cjy = phi i8 [ %.pre3450, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cje, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ] ; 3 uses
  %i.cjz = phi i16 [ %.pre3449, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cjd, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ] ; 2 uses
  %i.cka = sext i16 %i.cjz to i32                 ; 4 uses
  %i.ckb = icmp ult i8 %i.cjy, 3
  %.neg.i.i1942 = sext i1 %i.ckb to i32
  %i.ckc = add nsw i32 %.neg.i.i1942, %i.cka      ; 4 uses
  %i.ckd = zext i8 %i.cjy to i32
  %i.cke = zext i8 %i.cjx to i32
  %i.ckf = add nsw i32 %i.ckc, -399
  %i.ckg = icmp slt i32 %i.ckc, 0
  %i.ckh = select i1 %i.ckg, i32 %i.ckf, i32 %i.ckc
  %i.cki = sdiv i32 %i.ckh, 400                   ; 2 uses
  %.neg15.i.i1943 = mul nsw i32 %i.cki, -400
  %i.ckj = add nsw i32 %.neg15.i.i1943, %i.ckc    ; 3 uses
  %i.ckk = icmp ugt i8 %i.cjy, 2
  %.v.i.i1944 = select i1 %i.ckk, i32 -3, i32 9
  %i.ckl = add nsw i32 %.v.i.i1944, %i.ckd
  %i.ckm = mul nsw i32 %i.ckl, 153
  %i.ckn = add nsw i32 %i.ckm, 2
  %i.cko = udiv i32 %i.ckn, 5
  %i.ckp = mul nsw i32 %i.ckj, 365
  %i.ckq = lshr i32 %i.ckj, 2
  %i.ckr = udiv i32 %i.ckj, 100
  %i.cks = mul nsw i32 %i.cki, 146097
  %i.ckt = add nuw nsw i32 %i.cke, -719469
  %i.cku = add nsw i32 %i.ckt, %i.cko
  %i.ckv = add nsw i32 %i.cku, %i.cks
  %i.ckw = add nsw i32 %i.ckv, %i.ckq
  %i.ckx = add nsw i32 %i.ckw, %i.ckp
  %i.cky = sub nsw i32 %i.ckx, %i.ckr             ; 3 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %bb.xf
    i8 79, label %bb.xt
  ]

bb.xf:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941
  %i.ckz = add nsw i32 %i.cka, -1                 ; 2 uses
  %i.cla = add nsw i32 %i.cka, -400
  %i.clb = icmp slt i16 %i.cjz, 1
  %i.clc = select i1 %i.clb, i32 %i.cla, i32 %i.ckz
  %i.cld = sdiv i32 %i.clc, 400                   ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %i.cld, -400
  %i.cle = add nsw i32 %.neg15.i.i.i.i, %i.ckz    ; 3 uses
  %i.clf = mul nsw i32 %i.cle, 365
  %i.clg = lshr i32 %i.cle, 2
  %i.clh = udiv i32 %i.cle, 100
  %i.cli = mul nsw i32 %i.cld, 146097
  %i.clj = add nsw i32 %i.cli, -719162
  %i.clk = add nsw i32 %i.clj, %i.clg
  %i.cll = add nsw i32 %i.clk, %i.clf
  %i.clm = sub nsw i32 %i.cll, %i.clh             ; 4 uses
  %i.cln = icmp sgt i32 %i.clm, -5
  %i.clo = add nsw i32 %i.clm, 4
  %.in.i.i.i.i1953 = select i1 %i.cln, i32 %i.clo, i32 %i.clm
  %i.clp = urem i32 %.in.i.i.i.i1953, 7           ; 3 uses
  %i.clq = sub nuw nsw i32 -6, %i.clp
  %.not2825 = icmp eq i32 %i.clp, 0
  %i.clr = select i1 %.not2825, i32 0, i32 %i.clq
  %.fr.i.i.i1954 = freeze i32 %i.clr              ; 2 uses
  %i.cls = srem i32 %.fr.i.i.i1954, 7
  %i.clt = add i32 %i.clp, %.fr.i.i.i1954
  %i.clu = sub i32 %i.clm, %i.clt
  %i.clv = add i32 %i.clu, %i.cls                 ; 2 uses
  %i.clw = icmp slt i32 %i.cky, %i.clv
  br i1 %i.clw, label %bb.xg, label %bb.xn

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 48, ptr %i.bb, align 1, !tbaa !70
  %i.clx = load ptr, ptr %0, align 8, !tbaa !446
  %i.cly = getelementptr i8, ptr %i.clx, i64 -24
  %i.clz = load i64, ptr %i.cly, align 8
  %i.cma = getelementptr inbounds i8, ptr %0, i64 %i.clz
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 16
  %i.cmc = load i64, ptr %i.cmb, align 8, !tbaa !659
  %.not.i1957 = icmp eq i64 %i.cmc, 0
  br i1 %.not.i1957, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cmd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bb, i64 noundef 1)
          to label %bb.xj unwind label %bb.xm

bb.xi:                                            ; preds = %bb.xg
  %i.cme = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.xj unwind label %bb.xm     ; 0 uses

bb.xj:                                            ; preds = %bb.xh, %bb.xi
  %.0.i1958 = phi ptr [ %i.cmd, %bb.xh ], [ %0, %bb.xi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i8 48, ptr %i.ba, align 1, !tbaa !70
  %i.cmf = load ptr, ptr %.0.i1958, align 8, !tbaa !446
  %i.cmg = getelementptr i8, ptr %i.cmf, i64 -24
  %i.cmh = load i64, ptr %i.cmg, align 8
  %i.cmi = getelementptr inbounds i8, ptr %.0.i1958, i64 %i.cmh
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cmi, i64 16
  %i.cmk = load i64, ptr %i.cmj, align 8, !tbaa !659
  %.not.i1962 = icmp eq i64 %i.cmk, 0
  br i1 %.not.i1962, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1958, ptr noundef nonnull %i.ba, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 unwind label %bb.xm ; 0 uses

bb.xl:                                            ; preds = %bb.xj
  %i.cmm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1958, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 unwind label %bb.xm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966: ; preds = %bb.xl, %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.xm:                                            ; preds = %bb.xl, %bb.xk, %bb.xi, %bb.xh
  %i.cmn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xn:                                            ; preds = %bb.xf
  %i.cmo = sub nsw i32 %i.cky, %i.clv             ; 2 uses
  %i.cmp = udiv i32 %i.cmo, 7
  %i.cmq = add nuw nsw i32 %i.cmp, 1
  %i.cmr = icmp ult i32 %i.cmo, 63
  br i1 %i.cmr, label %bb.xo, label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 48, ptr %i.az, align 1, !tbaa !70
  %i.cms = load ptr, ptr %0, align 8, !tbaa !446
  %i.cmt = getelementptr i8, ptr %i.cms, i64 -24
  %i.cmu = load i64, ptr %i.cmt, align 8
  %i.cmv = getelementptr inbounds i8, ptr %0, i64 %i.cmu
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 16
  %i.cmx = load i64, ptr %i.cmw, align 8, !tbaa !659
  %.not.i1969 = icmp eq i64 %i.cmx, 0
  br i1 %.not.i1969, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cmy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973 unwind label %bb.xr ; 0 uses

bb.xq:                                            ; preds = %bb.xo
  %i.cmz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973 unwind label %bb.xr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973: ; preds = %bb.xq, %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xs
  %i.cna = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973, %bb.xn
  %i.cnb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cmq)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.xr ; 0 uses

bb.xt:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #26
  store i8 37, ptr %i.fn, align 1, !tbaa !70
  store i8 79, ptr %i.jj, align 1, !tbaa !70
  %i.cnc = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.cnc, ptr %i.jk, align 1, !tbaa !70
  %i.cnd = add nsw i32 %i.cka, -1900
  store i32 %i.cnd, ptr %i.ij, align 4, !tbaa !737
  %i.cne = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.xu unwind label %.loopexit2942

end_hunk_17
begin_hunk_18_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %.not.i1990 = icmp eq ptr %i.cnz, null
  %i.coa = zext i1 %.not.i1990 to i8
  %i.cob = getelementptr inbounds nuw i8, ptr %i.cnx, i64 225 ; 2 uses
  %i.coc = load i8, ptr %i.cob, align 1, !tbaa !688, !range !86, !noundef !87
  %i.cod = trunc nuw i8 %i.coc to i1
  br i1 %i.cod, label %._crit_edge.i1996, label %bb.xx

._crit_edge.i1996:                                ; preds = %bb.xw
  %.phi.trans.insert.i1997 = getelementptr inbounds nuw i8, ptr %i.cnx, i64 224
  %.pre.i1998 = load i8, ptr %.phi.trans.insert.i1997, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002

bb.xx:                                            ; preds = %bb.xw
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cnx, i64 240
  %i.cof = load ptr, ptr %i.coe, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1991 = icmp eq ptr %i.cof, null
  br i1 %.not.i.i.i1991, label %bb.xy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992

bb.xy:                                            ; preds = %bb.xx
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1999 unwind label %.loopexit.split-lp2943

.noexc1999:                                       ; preds = %bb.xy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992: ; preds = %bb.xx
  %i.cog = getelementptr inbounds nuw i8, ptr %i.cof, i64 56
  %i.coh = load i8, ptr %i.cog, align 8, !tbaa !695
  %.not.i1.i.i1993 = icmp eq i8 %i.coh, 0
  br i1 %.not.i1.i.i1993, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992
  %i.coi = getelementptr inbounds nuw i8, ptr %i.cof, i64 89
  %i.coj = load i8, ptr %i.coi, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994

bb.ya:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cof)
          to label %.noexc2000 unwind label %.loopexit2942

.noexc2000:                                       ; preds = %bb.ya
  %i.cok = load ptr, ptr %i.cof, align 8, !tbaa !446
  %i.col = getelementptr inbounds nuw i8, ptr %i.cok, i64 48
  %i.com = load ptr, ptr %i.col, align 8
  %i.con = invoke noundef signext i8 %i.com(ptr noundef nonnull align 8 dereferenceable(570) %i.cof, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994 unwind label %.loopexit2942, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994: ; preds = %.noexc2000, %bb.xz
  %.0.i.i.i1995 = phi i8 [ %i.coj, %bb.xz ], [ %i.con, %.noexc2000 ] ; 2 uses
  %i.coo = getelementptr inbounds nuw i8, ptr %i.cnx, i64 224
  store i8 %.0.i.i.i1995, ptr %i.coo, align 8, !tbaa !700
  store i8 1, ptr %i.cob, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994, %._crit_edge.i1996
  %i.cop = phi i8 [ %.pre.i1998, %._crit_edge.i1996 ], [ %.0.i.i.i1995, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994 ]
  %i.coq = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.cnz, i8 %i.coa, ptr noundef nonnull align 8 dereferenceable(216) %i.cnx, i8 noundef signext %i.cop, ptr noundef nonnull %6, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.jl)
          to label %.thread2769 unwind label %.loopexit2942 ; 0 uses

.thread2769:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yb:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #26
  br label %_ZNSolsEj.exit2148

bb.yc:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 85, ptr %i.ay, align 1, !tbaa !70
  %i.cor = load ptr, ptr %0, align 8, !tbaa !446
  %i.cos = getelementptr i8, ptr %i.cor, i64 -24
  %i.cot = load i64, ptr %i.cos, align 8
  %i.cou = getelementptr inbounds i8, ptr %0, i64 %i.cot
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cou, i64 16
  %i.cow = load i64, ptr %i.cov, align 8, !tbaa !659
  %.not.i2003 = icmp eq i64 %i.cow, 0
  br i1 %.not.i2003, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 unwind label %.loopexit ; 0 uses

bb.ye:                                            ; preds = %bb.yc
  %i.coy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 85)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007: ; preds = %bb.ye, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yf:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.zk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.coz = icmp eq i8 %.0806, 69
  br i1 %i.coz, label %bb.yh, label %bb.yq

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 37, ptr %i.ax, align 1, !tbaa !70
  %i.cpa = load ptr, ptr %0, align 8, !tbaa !446
  %i.cpb = getelementptr i8, ptr %i.cpa, i64 -24
  %i.cpc = load i64, ptr %i.cpb, align 8
  %i.cpd = getelementptr inbounds i8, ptr %0, i64 %i.cpc
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cpd, i64 16
  %i.cpf = load i64, ptr %i.cpe, align 8, !tbaa !659
  %.not.i2008 = icmp eq i64 %i.cpf, 0
  br i1 %.not.i2008, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.cpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ax, i64 noundef 1)
          to label %bb.yk unwind label %.loopexit

bb.yj:                                            ; preds = %bb.yh
  %i.cph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.yk unwind label %.loopexit ; 0 uses

bb.yk:                                            ; preds = %bb.yi, %bb.yj
  %.0.i2009 = phi ptr [ %i.cpg, %bb.yi ], [ %0, %bb.yj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 69, ptr %i.aw, align 1, !tbaa !70
  %i.cpi = load ptr, ptr %.0.i2009, align 8, !tbaa !446
  %i.cpj = getelementptr i8, ptr %i.cpi, i64 -24
  %i.cpk = load i64, ptr %i.cpj, align 8
  %i.cpl = getelementptr inbounds i8, ptr %.0.i2009, i64 %i.cpk
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.cpl, i64 16
  %i.cpn = load i64, ptr %i.cpm, align 8, !tbaa !659
  %.not.i2013 = icmp eq i64 %i.cpn, 0
  br i1 %.not.i2013, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cpo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2009, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %bb.yn unwind label %.loopexit

bb.ym:                                            ; preds = %bb.yk
  %i.cpp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2009, i8 noundef signext 69)
          to label %bb.yn unwind label %.loopexit ; 0 uses

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %.0.i2014 = phi ptr [ %i.cpo, %bb.yl ], [ %.0.i2009, %bb.ym ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cpq = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %i.cpq, ptr %i.av, align 1, !tbaa !70
  %i.cpr = load ptr, ptr %.0.i2014, align 8, !tbaa !446
  %i.cps = getelementptr i8, ptr %i.cpr, i64 -24
  %i.cpt = load i64, ptr %i.cps, align 8
  %i.cpu = getelementptr inbounds i8, ptr %.0.i2014, i64 %i.cpt
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpu, i64 16
  %i.cpw = load i64, ptr %i.cpv, align 8, !tbaa !659
  %.not.i2018 = icmp eq i64 %i.cpw, 0
  br i1 %.not.i2018, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cpx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2014, ptr noundef nonnull %i.av, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 unwind label %.loopexit ; 0 uses

bb.yp:                                            ; preds = %bb.yn
  %i.cpy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2014, i8 noundef signext %i.cpq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yq:                                            ; preds = %bb.yg
  %i.cpz = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i2023 = icmp eq i16 %i.cpz, -32768
  br i1 %.not.i2023, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cqa = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.cqb = add i8 %i.cqa, -1
  %spec.select.i.i2024 = icmp ult i8 %i.cqb, 12
  br i1 %spec.select.i.i2024, label %bb.ys, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread

bb.ys:                                            ; preds = %bb.yr
  %i.cqc = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i2026 = icmp eq i8 %i.cqc, 0
  br i1 %.not8.i2026, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %.not.i.i2027 = icmp eq i8 %i.cqa, 2
  %i.cqd = and i16 %i.cpz, 3
  %i.cqe = icmp eq i16 %i.cqd, 0
  %or.cond.i2028 = and i1 %i.cqe, %.not.i.i2027
  br i1 %or.cond.i2028, label %bb.yu, label %.thread.i.i2029

bb.yu:                                            ; preds = %bb.yt
  %i.cqf = srem i16 %i.cpz, 100
  %.not.i.i.i2032 = icmp ne i16 %i.cqf, 0
  %i.cqg = srem i16 %i.cpz, 400
  %i.cqh = icmp eq i16 %i.cqg, 0
  %or.cond.i.i2033 = or i1 %.not.i.i.i2032, %i.cqh
  br i1 %or.cond.i.i2033, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034, label %.thread.i.i2029

.thread.i.i2029:                                  ; preds = %bb.yu, %bb.yt
  %i.cqi = zext nneg i8 %i.cqa to i64
  %27 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cqi
  %i.cqj = getelementptr i8, ptr %27, i64 -1
  %i.cqk = load i8, ptr %i.cqj, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034: ; preds = %bb.yu, %.thread.i.i2029
  %.sroa.03.0.i.i2031 = phi i8 [ %i.cqk, %.thread.i.i2029 ], [ 29, %bb.yu ]
  %.not2812 = icmp ult i8 %.sroa.03.0.i.i2031, %i.cqc
  br i1 %.not2812, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread: ; preds = %bb.ys, %bb.yr, %bb.yq, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034
  %i.cql = load ptr, ptr %0, align 8, !tbaa !446
  %i.cqm = getelementptr i8, ptr %i.cql, i64 -24
  %i.cqn = load i64, ptr %i.cqm, align 8
  %i.cqo = getelementptr inbounds i8, ptr %0, i64 %i.cqn ; 2 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 32
  %i.cqq = load i32, ptr %i.cqp, align 8, !tbaa !677
  %i.cqr = or i32 %i.cqq, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cqo, i32 noundef %i.cqr)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread
  %.pre3446 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3447 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3448 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034
  %i.cqs = phi i8 [ %.pre3448, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cqc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ]
  %i.cqt = phi i8 [ %.pre3447, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cqa, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ] ; 3 uses
  %i.cqu = phi i16 [ %.pre3446, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cpz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ]
  %i.cqv = sext i16 %i.cqu to i32                 ; 2 uses
  %i.cqw = icmp ult i8 %i.cqt, 3
  %.neg.i.i2037 = sext i1 %i.cqw to i32
  %i.cqx = add nsw i32 %.neg.i.i2037, %i.cqv      ; 4 uses
  %i.cqy = zext i8 %i.cqt to i32
  %i.cqz = zext i8 %i.cqs to i32
  %i.cra = add nsw i32 %i.cqx, -399
  %i.crb = icmp slt i32 %i.cqx, 0
  %i.crc = select i1 %i.crb, i32 %i.cra, i32 %i.cqx
  %i.crd = sdiv i32 %i.crc, 400                   ; 2 uses
  %.neg15.i.i2038 = mul nsw i32 %i.crd, -400
  %i.cre = add nsw i32 %.neg15.i.i2038, %i.cqx    ; 3 uses
  %i.crf = icmp ugt i8 %i.cqt, 2
  %.v.i.i2039 = select i1 %i.crf, i32 -3, i32 9
  %i.crg = add nsw i32 %.v.i.i2039, %i.cqy
  %i.crh = mul nsw i32 %i.crg, 153
  %i.cri = add nsw i32 %i.crh, 2
  %i.crj = udiv i32 %i.cri, 5
  %i.crk = mul nsw i32 %i.cre, 365
  %i.crl = lshr i32 %i.cre, 2
  %i.crm = udiv i32 %i.cre, 100
  %i.crn = mul nsw i32 %i.crd, 146097
  %i.cro = add nuw nsw i32 %i.cqz, -719469
  %i.crp = add nsw i32 %i.cro, %i.crj
  %i.crq = add nsw i32 %i.crp, %i.crn
  %i.crr = add nsw i32 %i.crq, %i.crl
  %i.crs = add nsw i32 %i.crr, %i.crk
  %i.crt = sub nsw i32 %i.crs, %i.crm             ; 6 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %.thread.i.i.i.i2074
    i8 79, label %bb.zb
  ]

.thread.i.i.i.i2074:                              ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036
  %i.cru = add nsw i32 %i.crt, 719471             ; 2 uses
  %i.crv = icmp sgt i32 %i.crt, -719472
  %i.crw = add nsw i32 %i.crt, 573375
  %i.crx = select i1 %i.crv, i32 %i.cru, i32 %i.crw
  %i.cry = sdiv i32 %i.crx, 146097                ; 2 uses
  %.neg.i.i2041 = mul nsw i32 %i.cry, -146097
  %i.crz = add nsw i32 %.neg.i.i2041, %i.cru      ; 5 uses
  %i.csa = udiv i32 %i.crz, 1460
  %i.csb = udiv i32 %i.crz, 36524
  %i.csc = udiv i32 %i.crz, 146096
  %.neg2860 = add nsw i32 %i.csb, %i.crz
  %i.csd = add nuw nsw i32 %i.csc, %i.csa
  %i.cse = sub nsw i32 %.neg2860, %i.csd          ; 3 uses
  %i.csf = udiv i32 %i.cse, 365                   ; 2 uses
  %i.csg = mul nsw i32 %i.cry, 400
  %i.csh = add nsw i32 %i.csf, %i.csg
  %i.csi = udiv i32 %i.cse, 1460
  %i.csj = udiv i32 %i.cse, 36500
  %.neg36.i.i2043 = mul i32 %i.csf, -365
  %.neg37.i.i2044 = sub nsw i32 %i.crz, %i.csi
  %.neg25.i.i2045 = add nsw i32 %.neg37.i.i2044, %i.csj
  %i.csk = add i32 %.neg25.i.i2045, %.neg36.i.i2043
  %i.csl = mul i32 %i.csk, 5
  %i.csm = add i32 %i.csl, 2                      ; 2 uses
  %i.csn = udiv i32 %i.csm, 153
  %i.cso = icmp ult i32 %i.csm, 1530
  %.v.i.i2046 = select i1 %i.cso, i32 3, i32 -9
  %i.csp = add nsw i32 %.v.i.i2046, %i.csn
  %i.csq = icmp ult i32 %i.csp, 3
  %i.csr = zext i1 %i.csq to i32
  %i.css = add nsw i32 %i.csh, %i.csr
  %.sroa.02606.0.extract.trunc = shl i32 %i.css, 16 ; 2 uses
  %sext = add i32 %.sroa.02606.0.extract.trunc, -65536
  %i.cst = ashr exact i32 %sext, 16               ; 4 uses
  %i.csu = add nsw i32 %i.cst, -399
  %i.csv = icmp slt i32 %i.cst, 0
  %i.csw = select i1 %i.csv, i32 %i.csu, i32 %i.cst
  %i.csx = sdiv i32 %i.csw, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2069 = mul nsw i32 %i.csx, -400
  %i.csy = add nsw i32 %.neg15.i.i.i.i.i2069, %i.cst ; 3 uses
  %i.csz = mul nsw i32 %i.csy, 365
  %i.cta = lshr i32 %i.csy, 2
  %i.ctb = udiv i32 %i.csy, 100
  %i.ctc = mul nsw i32 %i.csx, 146097
  %i.ctd = add nsw i32 %i.ctc, 275
  %i.cte = add nsw i32 %i.ctd, %i.cta
  %i.ctf = add nsw i32 %i.cte, %i.csz
  %i.ctg = sub nsw i32 %i.ctf, %i.ctb             ; 3 uses
  %i.cth = icmp sgt i32 %i.ctg, 719433
  %.in.i.i.i.i2071.v = select i1 %i.cth, i32 -719434, i32 -719438
  %.in.i.i.i.i2071 = add nsw i32 %i.ctg, %.in.i.i.i.i2071.v
  %i.cti = urem i32 %.in.i.i.i.i2071, 7           ; 3 uses
  %i.ctj = icmp samesign ult i32 %i.cti, 4
  %.v = select i1 %i.ctj, i32 -10, i32 -4
  %i.ctk = add nsw i32 %i.cti, %.v
  %.fr.i.i.i2073 = freeze i32 %i.ctk              ; 2 uses
  %i.ctl = srem i32 %.fr.i.i.i2073, 7
  %i.ctm = sub nsw i32 %i.ctg, %i.cti
  %i.ctn = add nsw i32 %i.ctm, -719430
  %i.cto = add i32 %i.ctn, %.fr.i.i.i2073
  %i.ctp = sub i32 %i.cto, %i.ctl                 ; 2 uses
  %i.ctq = icmp slt i32 %i.crt, %i.ctp
  br i1 %i.ctq, label %.thread.i.i.i.i2101, label %bb.yv

.thread.i.i.i.i2101:                              ; preds = %.thread.i.i.i.i2074
  %sext2817 = add i32 %.sroa.02606.0.extract.trunc, -131072
  %i.ctr = ashr exact i32 %sext2817, 16           ; 4 uses
  %i.cts = add nsw i32 %i.ctr, -399
  %i.ctt = icmp slt i32 %i.ctr, 0
  %i.ctu = select i1 %i.ctt, i32 %i.cts, i32 %i.ctr
  %i.ctv = sdiv i32 %i.ctu, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2096 = mul nsw i32 %i.ctv, -400
  %i.ctw = add nsw i32 %.neg15.i.i.i.i.i2096, %i.ctr ; 3 uses
  %i.ctx = mul nsw i32 %i.ctw, 365
  %i.cty = lshr i32 %i.ctw, 2
  %i.ctz = udiv i32 %i.ctw, 100
  %i.cua = mul nsw i32 %i.ctv, 146097
  %i.cub = add nsw i32 %i.cua, 275
  %i.cuc = add nsw i32 %i.cub, %i.cty
  %i.cud = add nsw i32 %i.cuc, %i.ctx
  %i.cue = sub nsw i32 %i.cud, %i.ctz             ; 3 uses
  %i.cuf = icmp sgt i32 %i.cue, 719433
  %.in.i.i.i.i2098.v = select i1 %i.cuf, i32 -719434, i32 -719438
  %.in.i.i.i.i2098 = add nsw i32 %i.cue, %.in.i.i.i.i2098.v
  %i.cug = urem i32 %.in.i.i.i.i2098, 7           ; 3 uses
  %i.cuh = icmp samesign ult i32 %i.cug, 4
  %.v3238 = select i1 %i.cuh, i32 -10, i32 -4
  %i.cui = add nsw i32 %i.cug, %.v3238
  %.fr.i.i.i2100 = freeze i32 %i.cui              ; 2 uses
  %i.cuj = srem i32 %.fr.i.i.i2100, 7
  %i.cuk = sub nsw i32 %i.cue, %i.cug
  %i.cul = add nsw i32 %i.cuk, -719430
  %i.cum = add i32 %i.cul, %.fr.i.i.i2100
  %i.cun = sub i32 %i.cum, %i.cuj
  br label %bb.yv

bb.yv:                                            ; preds = %.thread.i.i.i.i2101, %.thread.i.i.i.i2074
  %.sroa.02610.0 = phi i32 [ %i.cun, %.thread.i.i.i.i2101 ], [ %i.ctp, %.thread.i.i.i.i2074 ]
  %i.cuo = sub nsw i32 %i.crt, %.sroa.02610.0     ; 2 uses
  %i.cup = sdiv i32 %i.cuo, 7
  %i.cuq = add nsw i32 %i.cup, 1
  %i.cur = icmp slt i32 %i.cuo, 63
  br i1 %i.cur, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 48, ptr %i.au, align 1, !tbaa !70
  %i.cus = load ptr, ptr %0, align 8, !tbaa !446
  %i.cut = getelementptr i8, ptr %i.cus, i64 -24
  %i.cuu = load i64, ptr %i.cut, align 8
  %i.cuv = getelementptr inbounds i8, ptr %0, i64 %i.cuu
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuv, i64 16
  %i.cux = load i64, ptr %i.cuw, align 8, !tbaa !659
  %.not.i2108 = icmp eq i64 %i.cux, 0
  br i1 %.not.i2108, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cuy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112 unwind label %bb.yz ; 0 uses

bb.yy:                                            ; preds = %bb.yw
  %i.cuz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112 unwind label %bb.yz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112: ; preds = %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.za
  %i.cva = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.za:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112, %bb.yv
  %i.cvb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cuq)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.yz ; 0 uses

end_hunk_18
begin_hunk_19_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  br label %bb.aix

bb.aaa:                                           ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i8 37, ptr %i.as, align 1, !tbaa !70
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxd, i64 16
  %i.cyh = load i64, ptr %i.cyg, align 8, !tbaa !659
  %.not.i2162 = icmp eq i64 %i.cyh, 0
  br i1 %.not.i2162, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cyi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %bb.aad unwind label %bb.zq

bb.aac:                                           ; preds = %bb.aaa
  %i.cyj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aad unwind label %bb.zq    ; 0 uses

bb.aad:                                           ; preds = %bb.aab, %bb.aac
  %.0.i2163 = phi ptr [ %i.cyi, %bb.aab ], [ %0, %bb.aac ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %.0806, ptr %i.ar, align 1, !tbaa !70
  %i.cyk = load ptr, ptr %.0.i2163, align 8, !tbaa !446
  %i.cyl = getelementptr i8, ptr %i.cyk, i64 -24
  %i.cym = load i64, ptr %i.cyl, align 8
  %i.cyn = getelementptr inbounds i8, ptr %.0.i2163, i64 %i.cym
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 16
  %i.cyp = load i64, ptr %i.cyo, align 8, !tbaa !659
  %.not.i2167 = icmp eq i64 %i.cyp, 0
  br i1 %.not.i2167, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cyq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2163, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %bb.aag unwind label %bb.zq

bb.aaf:                                           ; preds = %bb.aad
  %i.cyr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2163, i8 noundef signext %.0806)
          to label %bb.aag unwind label %bb.zq    ; 0 uses

bb.aag:                                           ; preds = %bb.aae, %bb.aaf
  %.0.i2168 = phi ptr [ %i.cyq, %bb.aae ], [ %.0.i2163, %bb.aaf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cys = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.cys, ptr %i.aq, align 1, !tbaa !70
  %i.cyt = load ptr, ptr %.0.i2168, align 8, !tbaa !446
  %i.cyu = getelementptr i8, ptr %i.cyt, i64 -24
  %i.cyv = load i64, ptr %i.cyu, align 8
  %i.cyw = getelementptr inbounds i8, ptr %.0.i2168, i64 %i.cyv
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyw, i64 16
  %i.cyy = load i64, ptr %i.cyx, align 8, !tbaa !659
  %.not.i2172 = icmp eq i64 %i.cyy, 0
  br i1 %.not.i2172, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cyz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2168, ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 unwind label %bb.zq ; 0 uses

bb.aai:                                           ; preds = %bb.aag
  %i.cza = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2168, i8 noundef signext %i.cys)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 unwind label %bb.zq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176: ; preds = %bb.aai, %bb.aah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aaj:                                           ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 119, ptr %i.ap, align 1, !tbaa !70
  %i.czb = load ptr, ptr %0, align 8, !tbaa !446
  %i.czc = getelementptr i8, ptr %i.czb, i64 -24
  %i.czd = load i64, ptr %i.czc, align 8
  %i.cze = getelementptr inbounds i8, ptr %0, i64 %i.czd
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cze, i64 16
  %i.czg = load i64, ptr %i.czf, align 8, !tbaa !659
  %.not.i2177 = icmp eq i64 %i.czg, 0
  br i1 %.not.i2177, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.czh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 unwind label %.loopexit ; 0 uses

bb.aal:                                           ; preds = %bb.aaj
  %i.czi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 119)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181: ; preds = %bb.aal, %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aam:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aca, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.czj = icmp eq i8 %.0806, 69
  br i1 %i.czj, label %bb.aao, label %bb.aax

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 37, ptr %i.ao, align 1, !tbaa !70
  %i.czk = load ptr, ptr %0, align 8, !tbaa !446
  %i.czl = getelementptr i8, ptr %i.czk, i64 -24
  %i.czm = load i64, ptr %i.czl, align 8
  %i.czn = getelementptr inbounds i8, ptr %0, i64 %i.czm
  %i.czo = getelementptr inbounds nuw i8, ptr %i.czn, i64 16
  %i.czp = load i64, ptr %i.czo, align 8, !tbaa !659
  %.not.i2182 = icmp eq i64 %i.czp, 0
  br i1 %.not.i2182, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.czq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %bb.aar unwind label %.loopexit

bb.aaq:                                           ; preds = %bb.aao
  %i.czr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aar unwind label %.loopexit ; 0 uses

bb.aar:                                           ; preds = %bb.aap, %bb.aaq
  %.0.i2183 = phi ptr [ %i.czq, %bb.aap ], [ %0, %bb.aaq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 69, ptr %i.an, align 1, !tbaa !70
  %i.czs = load ptr, ptr %.0.i2183, align 8, !tbaa !446
  %i.czt = getelementptr i8, ptr %i.czs, i64 -24
  %i.czu = load i64, ptr %i.czt, align 8
  %i.czv = getelementptr inbounds i8, ptr %.0.i2183, i64 %i.czu
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czv, i64 16
  %i.czx = load i64, ptr %i.czw, align 8, !tbaa !659
  %.not.i2187 = icmp eq i64 %i.czx, 0
  br i1 %.not.i2187, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.czy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2183, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %bb.aau unwind label %.loopexit

bb.aat:                                           ; preds = %bb.aar
  %i.czz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2183, i8 noundef signext 69)
          to label %bb.aau unwind label %.loopexit ; 0 uses

bb.aau:                                           ; preds = %bb.aas, %bb.aat
  %.0.i2188 = phi ptr [ %i.czy, %bb.aas ], [ %.0.i2183, %bb.aat ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.daa = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %i.daa, ptr %i.am, align 1, !tbaa !70
  %i.dab = load ptr, ptr %.0.i2188, align 8, !tbaa !446
  %i.dac = getelementptr i8, ptr %i.dab, i64 -24
  %i.dad = load i64, ptr %i.dac, align 8
  %i.dae = getelementptr inbounds i8, ptr %.0.i2188, i64 %i.dad
  %i.daf = getelementptr inbounds nuw i8, ptr %i.dae, i64 16
  %i.dag = load i64, ptr %i.daf, align 8, !tbaa !659
  %.not.i2192 = icmp eq i64 %i.dag, 0
  br i1 %.not.i2192, label %bb.aaw, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2188, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 unwind label %.loopexit ; 0 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.dai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2188, i8 noundef signext %i.daa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196: ; preds = %bb.aaw, %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aax:                                           ; preds = %bb.aan
  %i.daj = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i2197 = icmp eq i16 %i.daj, -32768
  br i1 %.not.i2197, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.dak = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.dal = add i8 %i.dak, -1
  %spec.select.i.i2198 = icmp ult i8 %i.dal, 12
  br i1 %spec.select.i.i2198, label %bb.aaz, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread

bb.aaz:                                           ; preds = %bb.aay
  %i.dam = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i2200 = icmp eq i8 %i.dam, 0
  br i1 %.not8.i2200, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %.not.i.i2201 = icmp eq i8 %i.dak, 2
  %i.dan = and i16 %i.daj, 3
  %i.dao = icmp eq i16 %i.dan, 0
  %or.cond.i2202 = and i1 %i.dao, %.not.i.i2201
  br i1 %or.cond.i2202, label %bb.abb, label %.thread.i.i2203

bb.abb:                                           ; preds = %bb.aba
  %i.dap = srem i16 %i.daj, 100
  %.not.i.i.i2206 = icmp ne i16 %i.dap, 0
  %i.daq = srem i16 %i.daj, 400
  %i.dar = icmp eq i16 %i.daq, 0
  %or.cond.i.i2207 = or i1 %.not.i.i.i2206, %i.dar
  br i1 %or.cond.i.i2207, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208, label %.thread.i.i2203

.thread.i.i2203:                                  ; preds = %bb.abb, %bb.aba
  %i.das = zext nneg i8 %i.dak to i64
  %28 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.das
  %i.dat = getelementptr i8, ptr %28, i64 -1
  %i.dau = load i8, ptr %i.dat, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208: ; preds = %bb.abb, %.thread.i.i2203
  %.sroa.03.0.i.i2205 = phi i8 [ %i.dau, %.thread.i.i2203 ], [ 29, %bb.abb ]
  %.not2806 = icmp ult i8 %.sroa.03.0.i.i2205, %i.dam
  br i1 %.not2806, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread: ; preds = %bb.aaz, %bb.aay, %bb.aax, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208
  %i.dav = load ptr, ptr %0, align 8, !tbaa !446
  %i.daw = getelementptr i8, ptr %i.dav, i64 -24
  %i.dax = load i64, ptr %i.daw, align 8
  %i.day = getelementptr inbounds i8, ptr %0, i64 %i.dax ; 2 uses
  %i.daz = getelementptr inbounds nuw i8, ptr %i.day, i64 32
  %i.dba = load i32, ptr %i.daz, align 8, !tbaa !677
  %i.dbb = or i32 %i.dba, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.day, i32 noundef %i.dbb)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge unwind label %bb.abc

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread
  %.pre3443 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3444 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3445 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210

bb.abc:                                           ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread
  %i.dbc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208
  %i.dbd = phi i8 [ %.pre3445, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.dam, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ]
  %i.dbe = phi i8 [ %.pre3444, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.dak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ] ; 3 uses
  %i.dbf = phi i16 [ %.pre3443, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.daj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ] ; 2 uses
  %i.dbg = sext i16 %i.dbf to i32                 ; 4 uses
  %i.dbh = icmp ult i8 %i.dbe, 3
  %.neg.i.i2211 = sext i1 %i.dbh to i32
  %i.dbi = add nsw i32 %.neg.i.i2211, %i.dbg      ; 4 uses
  %i.dbj = zext i8 %i.dbe to i32
  %i.dbk = zext i8 %i.dbd to i32
  %i.dbl = add nsw i32 %i.dbi, -399
  %i.dbm = icmp slt i32 %i.dbi, 0
  %i.dbn = select i1 %i.dbm, i32 %i.dbl, i32 %i.dbi
  %i.dbo = sdiv i32 %i.dbn, 400                   ; 2 uses
  %.neg15.i.i2212 = mul nsw i32 %i.dbo, -400
  %i.dbp = add nsw i32 %.neg15.i.i2212, %i.dbi    ; 3 uses
  %i.dbq = icmp ugt i8 %i.dbe, 2
  %.v.i.i2213 = select i1 %i.dbq, i32 -3, i32 9
  %i.dbr = add nsw i32 %.v.i.i2213, %i.dbj
  %i.dbs = mul nsw i32 %i.dbr, 153
  %i.dbt = add nsw i32 %i.dbs, 2
  %i.dbu = udiv i32 %i.dbt, 5
  %i.dbv = mul nsw i32 %i.dbp, 365
  %i.dbw = lshr i32 %i.dbp, 2
  %i.dbx = udiv i32 %i.dbp, 100
  %i.dby = mul nsw i32 %i.dbo, 146097
  %i.dbz = add nuw nsw i32 %i.dbk, -719469
  %i.dca = add nsw i32 %i.dbz, %i.dbu
  %i.dcb = add nsw i32 %i.dca, %i.dby
  %i.dcc = add nsw i32 %i.dcb, %i.dbw
  %i.dcd = add nsw i32 %i.dcc, %i.dbv
  %i.dce = sub nsw i32 %i.dcd, %i.dbx             ; 3 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %bb.abd
    i8 79, label %bb.abr
  ]

bb.abd:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210
  %i.dcf = add nsw i32 %i.dbg, -1                 ; 2 uses
  %i.dcg = add nsw i32 %i.dbg, -400
  %i.dch = icmp slt i16 %i.dbf, 1
  %i.dci = select i1 %i.dch, i32 %i.dcg, i32 %i.dcf
  %i.dcj = sdiv i32 %i.dci, 400                   ; 2 uses
  %.neg15.i.i.i.i2222 = mul nsw i32 %i.dcj, -400
  %i.dck = add nsw i32 %.neg15.i.i.i.i2222, %i.dcf ; 3 uses
  %i.dcl = mul nsw i32 %i.dck, 365
  %i.dcm = lshr i32 %i.dck, 2
  %i.dcn = udiv i32 %i.dck, 100
  %i.dco = mul nsw i32 %i.dcj, 146097
  %i.dcp = add nsw i32 %i.dco, -719162
  %i.dcq = add nsw i32 %i.dcp, %i.dcm
  %i.dcr = add nsw i32 %i.dcq, %i.dcl
  %i.dcs = sub nsw i32 %i.dcr, %i.dcn             ; 4 uses
  %i.dct = icmp sgt i32 %i.dcs, -5
  %i.dcu = add nsw i32 %i.dcs, 4
  %.in.i.i.i.i2225 = select i1 %i.dct, i32 %i.dcu, i32 %i.dcs
  %i.dcv = urem i32 %.in.i.i.i.i2225, 7           ; 3 uses
  %i.dcw = sub nsw i32 1, %i.dcv                  ; 2 uses
  %i.dcx = sub nuw nsw i32 -5, %i.dcv
  %i.dcy = icmp samesign ugt i32 %i.dcv, 1
  %i.dcz = select i1 %i.dcy, i32 %i.dcx, i32 %i.dcw
  %.fr.i.i.i2226 = freeze i32 %i.dcz              ; 2 uses
  %i.dda = srem i32 %.fr.i.i.i2226, 7
  %i.ddb = add nsw i32 %i.dcw, %i.dcs
  %i.ddc = sub i32 %i.ddb, %.fr.i.i.i2226
  %i.ddd = add i32 %i.ddc, %i.dda                 ; 2 uses
  %i.dde = icmp slt i32 %i.dce, %i.ddd
  br i1 %i.dde, label %bb.abe, label %bb.abl

bb.abe:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 48, ptr %i.al, align 1, !tbaa !70
  %i.ddf = load ptr, ptr %0, align 8, !tbaa !446
  %i.ddg = getelementptr i8, ptr %i.ddf, i64 -24
  %i.ddh = load i64, ptr %i.ddg, align 8
  %i.ddi = getelementptr inbounds i8, ptr %0, i64 %i.ddh
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.ddi, i64 16
  %i.ddk = load i64, ptr %i.ddj, align 8, !tbaa !659
  %.not.i2231 = icmp eq i64 %i.ddk, 0
  br i1 %.not.i2231, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ddl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %bb.abh unwind label %bb.abk

bb.abg:                                           ; preds = %bb.abe
  %i.ddm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.abh unwind label %bb.abk   ; 0 uses

bb.abh:                                           ; preds = %bb.abf, %bb.abg
  %.0.i2232 = phi ptr [ %i.ddl, %bb.abf ], [ %0, %bb.abg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 48, ptr %i.ak, align 1, !tbaa !70
  %i.ddn = load ptr, ptr %.0.i2232, align 8, !tbaa !446
  %i.ddo = getelementptr i8, ptr %i.ddn, i64 -24
  %i.ddp = load i64, ptr %i.ddo, align 8
  %i.ddq = getelementptr inbounds i8, ptr %.0.i2232, i64 %i.ddp
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddq, i64 16
  %i.dds = load i64, ptr %i.ddr, align 8, !tbaa !659
  %.not.i2236 = icmp eq i64 %i.dds, 0
  br i1 %.not.i2236, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.ddt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2232, ptr noundef nonnull %i.ak, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 unwind label %bb.abk ; 0 uses

bb.abj:                                           ; preds = %bb.abh
  %i.ddu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2232, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 unwind label %bb.abk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240: ; preds = %bb.abj, %bb.abi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.abk:                                           ; preds = %bb.abj, %bb.abi, %bb.abg, %bb.abf
  %i.ddv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abl:                                           ; preds = %bb.abd
  %i.ddw = sub nsw i32 %i.dce, %i.ddd             ; 2 uses
  %i.ddx = udiv i32 %i.ddw, 7
  %i.ddy = add nuw nsw i32 %i.ddx, 1
  %i.ddz = icmp ult i32 %i.ddw, 63
  br i1 %i.ddz, label %bb.abm, label %bb.abq

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 48, ptr %i.aj, align 1, !tbaa !70
  %i.dea = load ptr, ptr %0, align 8, !tbaa !446
  %i.deb = getelementptr i8, ptr %i.dea, i64 -24
  %i.dec = load i64, ptr %i.deb, align 8
  %i.ded = getelementptr inbounds i8, ptr %0, i64 %i.dec
  %i.dee = getelementptr inbounds nuw i8, ptr %i.ded, i64 16
  %i.def = load i64, ptr %i.dee, align 8, !tbaa !659
  %.not.i2243 = icmp eq i64 %i.def, 0
  br i1 %.not.i2243, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.deg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247 unwind label %bb.abp ; 0 uses

bb.abo:                                           ; preds = %bb.abm
  %i.deh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247 unwind label %bb.abp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247: ; preds = %bb.abo, %bb.abn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn, %bb.abq
  %i.dei = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247, %bb.abl
  %i.dej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ddy)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.abp ; 0 uses

bb.abr:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #26
  store i8 37, ptr %i.fq, align 1, !tbaa !70
  store i8 79, ptr %i.iy, align 1, !tbaa !70
  %i.dek = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dek, ptr %i.iz, align 1, !tbaa !70
  %i.del = add nsw i32 %i.dbg, -1900
  store i32 %i.del, ptr %i.ij, align 4, !tbaa !737
  %i.dem = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.abs unwind label %.loopexit2927
end_hunk_19
begin_hunk_20_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.0806, ptr %i.d, align 1, !tbaa !70
  %i.dwe = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwf = getelementptr i8, ptr %i.dwe, i64 -24
  %i.dwg = load i64, ptr %i.dwf, align 8
  %i.dwh = getelementptr inbounds i8, ptr %0, i64 %i.dwg
  %i.dwi = getelementptr inbounds nuw i8, ptr %i.dwh, i64 16
  %i.dwj = load i64, ptr %i.dwi, align 8, !tbaa !659
  %.not.i2501 = icmp eq i64 %i.dwj, 0
  br i1 %.not.i2501, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dwk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505 unwind label %.loopexit ; 0 uses

bb.aih:                                           ; preds = %bb.aif
  %i.dwl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505: ; preds = %bb.aih, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aii

bb.aii:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505, %bb.aie
  %i.dwm = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dwm, ptr %i.c, align 1, !tbaa !70
  %i.dwn = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwo = getelementptr i8, ptr %i.dwn, i64 -24
  %i.dwp = load i64, ptr %i.dwo, align 8
  %i.dwq = getelementptr inbounds i8, ptr %0, i64 %i.dwp
  %i.dwr = getelementptr inbounds nuw i8, ptr %i.dwq, i64 16
  %i.dws = load i64, ptr %i.dwr, align 8, !tbaa !659
  %.not.i2506 = icmp eq i64 %i.dws, 0
  br i1 %.not.i2506, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dwt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dwu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dwm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504: ; preds = %bb.agk, %bb.agh, %bb.lc, %bb.ko, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941, %bb.agz, %bb.aga, %.thread2788, %.thread2777, %.thread2769, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145, %bb.fi, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089, %bb.dw, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ 0, %bb.lc ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ci ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dw ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ 0, %bb.fi ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2769 ], [ 0, %.thread2777 ], [ 0, %.thread2788 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.ko ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ null, %bb.lc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ci ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dw ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ null, %bb.fi ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2769 ], [ null, %.thread2777 ], [ null, %.thread2788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.ko ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.1795, %bb.lc ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ci ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dw ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ %.0794, %bb.fi ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2769 ], [ %.0794, %.thread2777 ], [ %.0794, %.thread2788 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.ko ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dwv = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !806

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !70
  %i.dww = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwx = getelementptr i8, ptr %i.dww, i64 -24
  %i.dwy = load i64, ptr %i.dwx, align 8
  %i.dwz = getelementptr inbounds i8, ptr %0, i64 %i.dwy
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.dwz, i64 16
  %i.dxb = load i64, ptr %i.dxa, align 8, !tbaa !659
  %.not.i2511 = icmp eq i64 %i.dxb, 0
  br i1 %.not.i2511, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2148, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !70
  %i.dxe = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxf = getelementptr i8, ptr %i.dxe, i64 -24
  %i.dxg = load i64, ptr %i.dxf, align 8
  %i.dxh = getelementptr inbounds i8, ptr %0, i64 %i.dxg
  %i.dxi = getelementptr inbounds nuw i8, ptr %i.dxh, i64 16
  %i.dxj = load i64, ptr %i.dxi, align 8, !tbaa !659
  %.not.i2516 = icmp eq i64 %i.dxj, 0
  br i1 %.not.i2516, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2148

_ZNSolsEj.exit2148:                               ; preds = %bb.bz, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dxm = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dxn = load i32, ptr %i.dxm, align 4, !tbaa !739
  %i.dxo = and i32 %i.dxn, 8192
  %.not.i2521 = icmp eq i32 %i.dxo, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dxp = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dxq = icmp eq i32 %i.dxp, 0
  br i1 %i.dxq, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dxr = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 32
  %i.dxt = load i32, ptr %i.dxs, align 8, !tbaa !677
  %i.dxu = icmp eq i32 %i.dxt, 0
  br i1 %i.dxu, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxr, i64 232
  %i.dxw = load ptr, ptr %i.dxv, align 8, !tbaa !727 ; 2 uses
  %i.dxx = load ptr, ptr %i.dxw, align 8, !tbaa !446
  %i.dxy = getelementptr inbounds nuw i8, ptr %i.dxx, i64 48
  %i.dxz = load ptr, ptr %i.dxy, align 8
  %i.dya = invoke noundef i32 %i.dxz(ptr noundef nonnull align 8 dereferenceable(64) %i.dxw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyb = landingpad { ptr, i32 }
          catch ptr null
  %i.dyc = extractvalue { ptr, i32 } %i.dyb, 0
  call void @__clang_call_terminate(ptr %i.dyc) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.drz, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cna, %bb.xr ], [ %i.ty, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.blw, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dei, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byc, %bb.st ], [ %i.bya, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.ddv, %bb.abk ], [ %i.cjw, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbc, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cva, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.bij, %bb.nh ], [ %i.cgw, %bb.wd ], [ %i.bsp, %bb.qu ], [ %i.cxh, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.djt, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dpq, %bb.afk ], [ %i.bry, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cmn, %bb.xm ], [ %i.azf, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %2 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.l
  %i.m = getelementptr i8, ptr %2, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.n, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !746
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !746
  %i.t = icmp ult i8 %i.s, 7
  br i1 %i.t, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !446
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !677
  %i.ag = or i32 %i.af, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ai, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.aj = and i16 %i.a, 3
  %i.ak = icmp eq i16 %i.aj, 0
  %or.cond.i14 = and i1 %i.ak, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.al = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.al, 0
  %i.am = srem i16 %i.a, 400
  %i.an = icmp eq i16 %i.am, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.an
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.ao = zext nneg i8 %i.c to i64
  %3 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.ao
  %i.ap = getelementptr i8, ptr %3, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aq, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ai
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ar = sext i16 %i.a to i32
  %i.as = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.as to i32
  %i.at = add nsw i32 %.neg.i.i, %i.ar            ; 4 uses
  %i.au = zext nneg i8 %i.c to i32
  %i.av = zext i8 %i.ai to i32
  %i.aw = add nsw i32 %i.at, -399
  %i.ax = icmp slt i32 %i.at, 0
  %i.ay = select i1 %i.ax, i32 %i.aw, i32 %i.at
  %i.az = sdiv i32 %i.ay, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.az, -400
  %i.ba = add nsw i32 %.neg15.i.i, %i.at          ; 3 uses
  %i.bb = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bb, i32 -3, i32 9
  %i.bc = add nsw i32 %.v.i.i, %i.au
  %i.bd = mul nsw i32 %i.bc, 153
  %i.be = add nsw i32 %i.bd, 2
  %i.bf = udiv i32 %i.be, 5
  %i.bg = mul nsw i32 %i.ba, 365
  %i.bh = lshr i32 %i.ba, 2
  %i.bi = udiv i32 %i.ba, 100
  %i.bj = mul nsw i32 %i.az, 146097
  %i.bk = add nuw nsw i32 %i.av, -719469
  %i.bl = add nsw i32 %i.bk, %i.bf
  %i.bm = add nsw i32 %i.bl, %i.bj
  %i.bn = add nsw i32 %i.bm, %i.bh
  %i.bo = add nsw i32 %i.bn, %i.bg
  %i.bp = sub nsw i32 %i.bo, %i.bi                ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, -5
  %i.br = add nsw i32 %i.bp, 4
  %.in.i.i = select i1 %i.bq, i32 %i.br, i32 %i.bp
  %i.bs = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !746 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 7
  %i.bx = icmp ne i8 %i.bv, %i.bt
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !446
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !677
  %i.ce = or i32 %i.cd, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !70
  %i.ch = zext i8 %i.cg to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %i.ch, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bs, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %i.ci = srem i32 %.fr.i, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %i.ci, %bb.k ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !805, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
end_hunk_20
begin_hunk_21_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  store i8 37, ptr %i.ew, align 1, !tbaa !70
  %i.ow = load ptr, ptr %0, align 8, !tbaa !446
  %i.ox = getelementptr i8, ptr %i.ow, i64 -24
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds i8, ptr %0, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !659
  %.not.i998 = icmp eq i64 %i.pb, 0
  br i1 %.not.i998, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %bb.av unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i999 = phi ptr [ %i.pc, %bb.at ], [ %0, %bb.au ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store i8 %.0806, ptr %i.ev, align 1, !tbaa !70
  %i.pe = load ptr, ptr %.0.i999, align 8, !tbaa !446
  %i.pf = getelementptr i8, ptr %i.pe, i64 -24
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %.0.i999, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !659
  %.not.i1003 = icmp eq i64 %i.pj, 0
  br i1 %.not.i1003, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i999, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i999, i8 noundef signext %.0806)
          to label %bb.ay unwind label %.loopexit ; 0 uses

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0.i1004 = phi ptr [ %i.pk, %bb.aw ], [ %.0.i999, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.pm = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i8 %i.pm, ptr %i.eu, align 1, !tbaa !70
  %i.pn = load ptr, ptr %.0.i1004, align 8, !tbaa !446
  %i.po = getelementptr i8, ptr %i.pn, i64 -24
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = getelementptr inbounds i8, ptr %.0.i1004, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !659
  %.not.i1008 = icmp eq i64 %i.ps, 0
  br i1 %.not.i1008, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1004, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 unwind label %.loopexit ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1004, i8 noundef signext %i.pm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.bb:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i8 %i.la, ptr %i.et, align 1, !tbaa !70
  %i.pv = load ptr, ptr %0, align 8, !tbaa !446
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr %0, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !659
  %.not.i1013 = icmp eq i64 %i.qa, 0
  br i1 %.not.i1013, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.et, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 unwind label %.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bb
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.be:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.ck, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qd = icmp eq i8 %.0806, 79
  br i1 %i.qd, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i8 37, ptr %i.es, align 1, !tbaa !70
  %i.qe = load ptr, ptr %0, align 8, !tbaa !446
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %0, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !659
  %.not.i1018 = icmp eq i64 %i.qj, 0
  br i1 %.not.i1018, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.bj unwind label %.loopexit ; 0 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.0.i1019 = phi ptr [ %i.qk, %bb.bh ], [ %0, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store i8 79, ptr %i.er, align 1, !tbaa !70
  %i.qm = load ptr, ptr %.0.i1019, align 8, !tbaa !446
  %i.qn = getelementptr i8, ptr %i.qm, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %.0.i1019, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !659
  %.not.i1023 = icmp eq i64 %i.qr, 0
  br i1 %.not.i1023, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1019, ptr noundef nonnull %i.er, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1019, i8 noundef signext 79)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i1024 = phi ptr [ %i.qs, %bb.bk ], [ %.0.i1019, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.qu = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i8 %i.qu, ptr %i.eq, align 1, !tbaa !70
  %i.qv = load ptr, ptr %.0.i1024, align 8, !tbaa !446
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr %.0.i1024, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !659
  %.not.i1028 = icmp eq i64 %i.ra, 0
  br i1 %.not.i1028, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1024, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 unwind label %.loopexit ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1024, i8 noundef signext %i.qu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.bp:                                            ; preds = %bb.bf
  %i.rd = load i16, ptr %2, align 8, !tbaa !730   ; 4 uses
  %.not.i1033 = icmp eq i16 %i.rd, -32768
  br i1 %.not.i1033, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.re = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.rf = add i8 %i.re, -1
  %spec.select.i.i1034 = icmp ult i8 %i.rf, 12
  br i1 %spec.select.i.i1034, label %bb.br, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.rg = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i = icmp eq i8 %i.rg, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not.i.i = icmp eq i8 %i.re, 2
  %i.rh = and i16 %i.rd, 3
  %i.ri = icmp eq i16 %i.rh, 0
  %or.cond.i = and i1 %i.ri, %.not.i.i
  br i1 %or.cond.i, label %bb.bt, label %.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.rj = srem i16 %i.rd, 100
  %.not.i.i.i1036 = icmp ne i16 %i.rj, 0
  %i.rk = srem i16 %i.rd, 400
  %i.rl = icmp eq i16 %i.rk, 0
  %or.cond.i.i = or i1 %.not.i.i.i1036, %i.rl
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs
  %i.rm = zext nneg i8 %i.re to i64
  %20 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.rm
  %i.rn = getelementptr i8, ptr %20, i64 -1
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.bt, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.ro, %.thread.i.i ], [ 29, %bb.bt ]
  %.not2837 = icmp ult i8 %.sroa.03.0.i.i, %i.rg
  br i1 %.not2837, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rp = load ptr, ptr %0, align 8, !tbaa !446
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds i8, ptr %0, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !677
  %i.rv = or i32 %i.ru, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rs, i32 noundef %i.rv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %.pre3470 = load i8, ptr %.0731, align 1, !tbaa !70
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rw = phi i8 [ %.pre3470, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ]
  %i.rx = icmp eq i8 %i.rw, 99
  br i1 %i.rx, label %bb.bu, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039

bb.bu:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.ry = load i8, ptr %i.gw, align 8, !tbaa !808, !range !86, !noundef !87
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sa = load ptr, ptr %0, align 8, !tbaa !446
  %i.sb = getelementptr i8, ptr %i.sa, i64 -24
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds i8, ptr %0, i64 %i.sc ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !677
  %i.sg = or i32 %i.sf, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sd, i32 noundef %i.sg)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge: ; preds = %bb.bv
  %.pre3471 = load i8, ptr %.0731, align 1, !tbaa !70
  %i.sh = icmp eq i8 %.pre3471, 99
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge, %bb.bu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.si = phi i1 [ %i.sh, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039_crit_edge ], [ true, %bb.bu ], [ false, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.sj = load i16, ptr %2, align 8, !tbaa !730
  %i.sk = sext i16 %i.sj to i32                   ; 2 uses
  %i.sl = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.sm = icmp ult i8 %i.sl, 3
  %.neg.i.i = sext i1 %i.sm to i32
  %i.sn = add nsw i32 %.neg.i.i, %i.sk            ; 4 uses
  %i.so = zext i8 %i.sl to i32                    ; 2 uses
  %i.sp = load i8, ptr %i.ix, align 1, !tbaa !732
  %i.sq = zext i8 %i.sp to i32                    ; 2 uses
  %i.sr = add nsw i32 %i.sn, -399
  %i.ss = icmp slt i32 %i.sn, 0
  %i.st = select i1 %i.ss, i32 %i.sr, i32 %i.sn
  %i.su = sdiv i32 %i.st, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.su, -400
  %i.sv = add nsw i32 %.neg15.i.i, %i.sn          ; 3 uses
  %i.sw = icmp ugt i8 %i.sl, 2
  %.v.i.i = select i1 %i.sw, i32 -3, i32 9
  %i.sx = add nsw i32 %.v.i.i, %i.so
  %i.sy = mul nsw i32 %i.sx, 153
  %i.sz = add nsw i32 %i.sy, 2
  %i.ta = udiv i32 %i.sz, 5
  %i.tb = lshr i32 %i.sv, 2
  %i.tc = udiv i32 %i.sv, 100
  br i1 %i.si, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039
  %.sroa.0.0.copyload.i.i1040 = load i64, ptr %i.iq, align 8, !tbaa !408
  %i.td = trunc i64 %.sroa.0.0.copyload.i.i1040 to i32
  store i32 %i.td, ptr %6, align 8, !tbaa !733
  %.sroa.0.0.copyload.i = load i64, ptr %i.ir, align 8, !tbaa !408
  %i.te = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.te, ptr %i.is, align 4, !tbaa !734
  %.sroa.0.0.copyload.i1041 = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.tf = trunc i64 %.sroa.0.0.copyload.i1041 to i32
  store i32 %i.tf, ptr %i.it, align 8, !tbaa !735
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1039
  store i32 %i.sq, ptr %i.km, align 4, !tbaa !736
  %i.tg = add i8 %i.sl, -1
  %spec.select.i.i1044 = icmp ult i8 %i.tg, 12
  br i1 %spec.select.i.i1044, label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.th = load ptr, ptr %0, align 8, !tbaa !446
  %i.ti = getelementptr i8, ptr %i.th, i64 -24
  %i.tj = load i64, ptr %i.ti, align 8
  %i.tk = getelementptr inbounds i8, ptr %0, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !677
  %i.tn = or i32 %i.tm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.tk, i32 noundef %i.tn)
          to label %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge unwind label %bb.ca

._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge: ; preds = %bb.by
  %.sroa.0.0.copyload.i1048.pre = load i16, ptr %2, align 8, !tbaa !634
  %.pre3480 = sext i16 %.sroa.0.0.copyload.i1048.pre to i32
  br label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047

_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047: ; preds = %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge, %bb.bx
  %.pre-phi = phi i32 [ %.pre3480, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge ], [ %i.sk, %bb.bx ]
  %.0.i1045 = phi i32 [ 0, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047_crit_edge ], [ %i.so, %bb.bx ]
  %i.to = add nsw i32 %.0.i1045, -1
  store i32 %i.to, ptr %i.kd, align 8, !tbaa !729
  %i.tp = add nsw i32 %.pre-phi, -1900
  store i32 %i.tp, ptr %i.ij, align 4, !tbaa !737
  %i.tq = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047
  store i32 %i.tq, ptr %i.ja, align 8, !tbaa !725
  %i.tr = load ptr, ptr %0, align 8, !tbaa !446
  %i.ts = getelementptr i8, ptr %i.tr, i64 -24    ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = getelementptr inbounds i8, ptr %0, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !677
  %i.tx = and i32 %i.tw, 5
  %.not2838 = icmp eq i32 %i.tx, 0
  br i1 %.not2838, label %bb.cb, label %_ZNSolsEj.exit2148

bb.ca:                                            ; preds = %bb.by, %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1047
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.cb:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i1049 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %i.tz = sext i16 %.sroa.0.0.copyload.i1049 to i32 ; 2 uses
  %i.ua = add nsw i32 %i.tz, -1                   ; 2 uses
  %i.ub = add nsw i32 %i.tz, -400
  %i.uc = icmp slt i16 %.sroa.0.0.copyload.i1049, 1
  %i.ud = select i1 %i.uc, i32 %i.ub, i32 %i.ua
  %i.ue = sdiv i32 %i.ud, 400                     ; 2 uses
  %.neg15.i.i1051 = mul nsw i32 %i.ue, -400
  %i.uf = add nsw i32 %.neg15.i.i1051, %i.ua      ; 3 uses
  %i.ug = lshr i32 %i.uf, 2
  %i.uh = udiv i32 %i.uf, 100
  %reass.add2907 = sub nsw i32 %i.sv, %i.uf
  %reass.mul2908 = mul nsw i32 %reass.add2907, 365
  %reass.add2910 = sub nsw i32 %i.su, %i.ue
  %reass.mul2911 = mul nsw i32 %reass.add2910, 146097
  %.neg2839 = add nuw nsw i32 %i.sq, -307
  %i.ui = add nsw i32 %.neg2839, %i.ta
  %i.uj = add nsw i32 %i.ui, %i.tb
  %i.uk = add nsw i32 %i.uj, %reass.mul2911
  %i.ul = add nuw nsw i32 %i.tc, %i.ug
  %i.um = sub nsw i32 %i.uk, %i.ul
  %i.un = add nsw i32 %i.um, %i.uh
  %i.uo = add nsw i32 %i.un, %reass.mul2908
  store i32 %i.uo, ptr %i.jb, align 4, !tbaa !738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.23, i64 3, i1 false)
  %i.up = icmp eq i8 %.0806, 69
  br i1 %i.up, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 69, ptr %i.kt, align 1, !tbaa !70
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0829 = phi ptr [ %i.ku, %bb.cc ], [ %i.kt, %bb.cb ] ; 2 uses
  %i.uq = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.uq, ptr %.0829, align 1, !tbaa !70
  %i.ur = load i64, ptr %i.ts, align 8
  %i.us = getelementptr inbounds i8, ptr %0, i64 %i.ur ; 6 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 232
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !727 ; 2 uses
  %.not.i1054 = icmp eq ptr %i.uu, null
  %i.uv = zext i1 %.not.i1054 to i8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 225 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !688, !range !86, !noundef !87
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %._crit_edge.i1060, label %bb.ce

._crit_edge.i1060:                                ; preds = %bb.cd
  %.phi.trans.insert.i1061 = getelementptr inbounds nuw i8, ptr %i.us, i64 224
  %.pre.i1062 = load i8, ptr %.phi.trans.insert.i1061, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1066

bb.ce:                                            ; preds = %bb.cd
  %i.uz = getelementptr inbounds nuw i8, ptr %i.us, i64 240
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1055 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i1055, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1056

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt16__throw_bad_castv() #30
end_hunk_21
begin_hunk_22_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.ex:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit1160
  %i.adn = load i32, ptr %i.kq, align 4, !tbaa !739
  %i.ado = and i32 %i.adn, 8192
  %.not.i1173 = icmp eq i32 %i.ado, 0
  br i1 %.not.i1173, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.adp = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %bb.ez, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174

bb.ez:                                            ; preds = %bb.ey
  %i.adr = load ptr, ptr %9, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !677
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.fa, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174

bb.fa:                                            ; preds = %bb.ez
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 232
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !727 ; 2 uses
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !446
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = invoke noundef i32 %i.adz(ptr noundef nonnull align 8 dereferenceable(64) %i.adw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 unwind label %bb.fb, !inline_history !743 ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  call void @__clang_call_terminate(ptr %i.aec) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.fc:                                            ; preds = %bb.et, %bb.es
  %.pn939 = phi { ptr, i32 } [ %lpad.phi3011, %bb.et ], [ %i.acu, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.aix

bb.fd:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145
  store i32 %i.aby, ptr %i.km, align 4, !tbaa !736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff) #26
  store i8 37, ptr %i.ff, align 1, !tbaa !70
  store i8 79, ptr %i.kn, align 1, !tbaa !70
  %i.aed = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.aed, ptr %i.ko, align 1, !tbaa !70
  %i.aee = load ptr, ptr %0, align 8, !tbaa !446
  %i.aef = getelementptr i8, ptr %i.aee, i64 -24
  %i.aeg = load i64, ptr %i.aef, align 8
  %i.aeh = getelementptr inbounds i8, ptr %0, i64 %i.aeg ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 232
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !727 ; 2 uses
  %.not.i1175 = icmp eq ptr %i.aej, null
  %i.aek = zext i1 %.not.i1175 to i8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 225 ; 2 uses
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !688, !range !86, !noundef !87
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %._crit_edge.i1181, label %bb.fe

._crit_edge.i1181:                                ; preds = %bb.fd
  %.phi.trans.insert.i1182 = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  %.pre.i1183 = load i8, ptr %.phi.trans.insert.i1182, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187

bb.fe:                                            ; preds = %bb.fd
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 240
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1176 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i1176, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1184 unwind label %.loopexit.split-lp3003

.noexc1184:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177: ; preds = %bb.fe
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 56
  %i.aer = load i8, ptr %i.aeq, align 8, !tbaa !695
  %.not.i1.i.i1178 = icmp eq i8 %i.aer, 0
  br i1 %.not.i1.i.i1178, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 89
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1177
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aep)
          to label %.noexc1185 unwind label %.loopexit3002

.noexc1185:                                       ; preds = %bb.fh
  %i.aeu = load ptr, ptr %i.aep, align 8, !tbaa !446
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = invoke noundef signext i8 %i.aew(ptr noundef nonnull align 8 dereferenceable(570) %i.aep, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179 unwind label %.loopexit3002, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179: ; preds = %.noexc1185, %bb.fg
  %.0.i.i.i1180 = phi i8 [ %i.aet, %bb.fg ], [ %i.aex, %.noexc1185 ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  store i8 %.0.i.i.i1180, ptr %i.aey, align 8, !tbaa !700
  store i8 1, ptr %i.ael, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179, %._crit_edge.i1181
  %i.aez = phi i8 [ %.pre.i1183, %._crit_edge.i1181 ], [ %.0.i.i.i1180, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1179 ]
  %i.afa = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.aej, i8 %i.aek, ptr noundef nonnull align 8 dereferenceable(216) %i.aeh, i8 noundef signext %i.aez, ptr noundef nonnull %6, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.kp)
          to label %bb.fi unwind label %.loopexit3002 ; 0 uses

bb.fi:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit3002:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1187, %bb.fh, %.noexc1185
  %lpad.loopexit3004 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.loopexit.split-lp3003:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp3005 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.split-lp3003, %.loopexit3002
  %lpad.phi3006 = phi { ptr, i32 } [ %lpad.loopexit3004, %.loopexit3002 ], [ %lpad.loopexit.split-lp3005, %.loopexit.split-lp3003 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #26
  br label %bb.aix

bb.fk:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 %i.la, ptr %i.eg, align 1, !tbaa !70
  %i.afb = load ptr, ptr %0, align 8, !tbaa !446
  %i.afc = getelementptr i8, ptr %i.afb, i64 -24
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = getelementptr inbounds i8, ptr %0, i64 %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !659
  %.not.i1188 = icmp eq i64 %i.afg, 0
  br i1 %.not.i1188, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 unwind label %.loopexit ; 0 uses

bb.fm:                                            ; preds = %bb.fk
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.fn:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.gx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afj = icmp eq i8 %.0806, 0
  br i1 %i.afj, label %bb.fp, label %bb.go

bb.fp:                                            ; preds = %bb.fo
  %i.afk = load i16, ptr %2, align 8, !tbaa !730  ; 4 uses
  %.not.i1193 = icmp eq i16 %i.afk, -32768
  br i1 %.not.i1193, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afl = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.afm = add i8 %i.afl, -1
  %spec.select.i.i1194 = icmp ult i8 %i.afm, 12
  br i1 %spec.select.i.i1194, label %bb.fr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afn = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1196 = icmp eq i8 %i.afn, 0
  br i1 %.not8.i1196, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i.i1197 = icmp eq i8 %i.afl, 2
  %i.afo = and i16 %i.afk, 3
  %i.afp = icmp eq i16 %i.afo, 0
  %or.cond.i1198 = and i1 %i.afp, %.not.i.i1197
  br i1 %or.cond.i1198, label %bb.ft, label %.thread.i.i1199

bb.ft:                                            ; preds = %bb.fs
  %i.afq = srem i16 %i.afk, 100
  %.not.i.i.i1202 = icmp ne i16 %i.afq, 0
  %i.afr = srem i16 %i.afk, 400
  %i.afs = icmp eq i16 %i.afr, 0
  %or.cond.i.i1203 = or i1 %.not.i.i.i1202, %i.afs
  br i1 %or.cond.i.i1203, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204, label %.thread.i.i1199

.thread.i.i1199:                                  ; preds = %bb.ft, %bb.fs
  %i.aft = zext nneg i8 %i.afl to i64
  %21 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aft
  %i.afu = getelementptr i8, ptr %21, i64 -1
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204: ; preds = %bb.ft, %.thread.i.i1199
  %.sroa.03.0.i.i1201 = phi i8 [ %i.afv, %.thread.i.i1199 ], [ 29, %bb.ft ]
  %.not2835 = icmp ult i8 %.sroa.03.0.i.i1201, %i.afn
  br i1 %.not2835, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread: ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204
  %i.afw = load ptr, ptr %0, align 8, !tbaa !446
  %i.afx = getelementptr i8, ptr %i.afw, i64 -24
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = getelementptr inbounds i8, ptr %0, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !677
  %i.agc = or i32 %i.agb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afz, i32 noundef %i.agc)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1204
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.agd = load ptr, ptr %0, align 8, !tbaa !446
  %i.age = getelementptr i8, ptr %i.agd, i64 -24
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = getelementptr inbounds i8, ptr %0, i64 %i.agf
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(264) %i.agg)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208 unwind label %bb.gi

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206
  %i.agh = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 -24
  %i.agj = load i64, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds i8, ptr %0, i64 %i.agj ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 225 ; 2 uses
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !688, !range !86, !noundef !87
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %._crit_edge.i.i1214, label %bb.fu

bb.fu:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agk, i64 240
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1209 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i.i.i1209, label %bb.fv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1217 unwind label %.loopexit.split-lp2998

.noexc1217:                                       ; preds = %bb.fv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210: ; preds = %bb.fu
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 56
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !695
  %.not.i1.i.i.i1211 = icmp eq i8 %i.agr, 0
  br i1 %.not.i1.i.i.i1211, label %bb.fw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agp)
          to label %.noexc1218 unwind label %.loopexit2997

.noexc1218:                                       ; preds = %bb.fw
  %i.ags = load ptr, ptr %i.agp, align 8, !tbaa !446
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 48
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = invoke noundef signext i8 %i.agu(ptr noundef nonnull align 8 dereferenceable(570) %i.agp, i8 noundef signext 32)
          to label %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge unwind label %.loopexit2997, !inline_history !699 ; 0 uses

.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge: ; preds = %.noexc1218
  %.pre3466.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212: ; preds = %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210
  %.pre3466 = phi ptr [ %.pre3466.pre, %.noexc1218._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212_crit_edge ], [ %i.agh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1210 ]
  store i8 1, ptr %i.agl, align 1, !tbaa !688
  br label %._crit_edge.i.i1214

._crit_edge.i.i1214:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212
  %i.agw = phi ptr [ %i.agh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1208 ], [ %.pre3466, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1212 ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agk, i64 224
  store i8 48, ptr %i.agx, align 8, !tbaa !700
  %i.agy = getelementptr i8, ptr %i.agw, i64 -24  ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8
  %i.aha = getelementptr inbounds i8, ptr %0, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i32 130, ptr %i.ahb, align 8, !tbaa !701
  %i.ahc = load i64, ptr %i.agy, align 8
  %i.ahd = getelementptr inbounds i8, ptr %0, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  store i64 2, ptr %i.ahe, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1221 = load i8, ptr %i.iw, align 2, !tbaa !70
  %i.ahf = zext i8 %.sroa.0.0.copyload.i1221 to i64
  %i.ahg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahf)
          to label %_ZNSolsEj.exit unwind label %bb.gj ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %._crit_edge.i.i1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i8 47, ptr %i.ef, align 1, !tbaa !70
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !446
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 -24
  %i.ahj = load i64, ptr %i.ahi, align 8
  %i.ahk = getelementptr inbounds i8, ptr %i.ahg, i64 %i.ahj
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !659
  %.not.i1223 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i1223, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEj.exit
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fy:                                            ; preds = %_ZNSolsEj.exit
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, i8 noundef signext 47)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.ahp = load ptr, ptr %0, align 8, !tbaa !446
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -24
  %i.ahr = load i64, ptr %i.ahq, align 8
  %i.ahs = getelementptr inbounds i8, ptr %0, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  store i64 2, ptr %i.aht, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1228 = load i8, ptr %i.ix, align 1, !tbaa !70
  %i.ahu = zext i8 %.sroa.0.0.copyload.i1228 to i64
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahu)
          to label %_ZNSolsEj.exit1230 unwind label %bb.gk ; 4 uses

_ZNSolsEj.exit1230:                               ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store i8 47, ptr %i.ee, align 1, !tbaa !70
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !446
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 -24
  %i.ahy = load i64, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !659
  %.not.i1231 = icmp eq i64 %i.aib, 0
  br i1 %.not.i1231, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSolsEj.exit1230
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gb:                                            ; preds = %_ZNSolsEj.exit1230
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, i8 noundef signext 47)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aie = load ptr, ptr %0, align 8, !tbaa !446
  %i.aif = getelementptr i8, ptr %i.aie, i64 -24
  %i.aig = load i64, ptr %i.aif, align 8
  %i.aih = getelementptr inbounds i8, ptr %0, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  store i64 2, ptr %i.aii, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1236 = load i16, ptr %2, align 8, !tbaa !634
  %i.aij = srem i16 %.sroa.0.0.copyload.i1236, 100
  %.sext = sext i16 %i.aij to i32
  %i.aik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sext)
          to label %bb.gd unwind label %bb.gl     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.ail = load i32, ptr %i.kl, align 4, !tbaa !739
  %i.aim = and i32 %i.ail, 8192
  %.not.i1237 = icmp eq i32 %i.aim, 0
  br i1 %.not.i1237, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ain = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %bb.gf, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238

bb.gf:                                            ; preds = %bb.ge
  %i.aip = load ptr, ptr %10, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !677
  %i.ais = icmp eq i32 %i.air, 0
  br i1 %i.ais, label %bb.gg, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238

bb.gg:                                            ; preds = %bb.gf
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 232
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !727 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !446
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = invoke noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(64) %i.aiu)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 unwind label %bb.gh, !inline_history !743 ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aiz = landingpad { ptr, i32 }
          catch ptr null
  %i.aja = extractvalue { ptr, i32 } %i.aiz, 0
  call void @__clang_call_terminate(ptr %i.aja) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238: ; preds = %bb.gd, %bb.ge, %bb.gf, %bb.gg
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.gi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1206
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit2997:                                    ; preds = %bb.fw, %.noexc1218
  %lpad.loopexit2999 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp2998:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp3000 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %bb.fy, %bb.fx, %._crit_edge.i.i1214
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gk:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gc
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gm:                                            ; preds = %.loopexit2997, %.loopexit.split-lp2998, %bb.gl, %bb.gk, %bb.gj
  %.pn935 = phi { ptr, i32 } [ %i.aje, %bb.gl ], [ %i.ajd, %bb.gk ], [ %i.ajc, %bb.gj ], [ %lpad.loopexit2999, %.loopexit2997 ], [ %lpad.loopexit.split-lp3000, %.loopexit.split-lp2998 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #26
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.pn935.pn = phi { ptr, i32 } [ %.pn935, %bb.gm ], [ %i.ajb, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.aix

bb.go:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i8 37, ptr %i.ed, align 1, !tbaa !70
  %i.ajf = load ptr, ptr %0, align 8, !tbaa !446
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -24
  %i.ajh = load i64, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds i8, ptr %0, i64 %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !659
  %.not.i1239 = icmp eq i64 %i.ajk, 0
  br i1 %.not.i1239, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.gr unwind label %.loopexit ; 0 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.0.i1240 = phi ptr [ %i.ajl, %bb.gp ], [ %0, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i8 %.0806, ptr %i.ec, align 1, !tbaa !70
  %i.ajn = load ptr, ptr %.0.i1240, align 8, !tbaa !446
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -24
  %i.ajp = load i64, ptr %i.ajo, align 8
  %i.ajq = getelementptr inbounds i8, ptr %.0.i1240, i64 %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !659
  %.not.i1244 = icmp eq i64 %i.ajs, 0
  br i1 %.not.i1244, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1240, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.aju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1240, i8 noundef signext %.0806)
          to label %bb.gu unwind label %.loopexit ; 0 uses

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.0.i1245 = phi ptr [ %i.ajt, %bb.gs ], [ %.0.i1240, %bb.gt ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.ajv = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i8 %i.ajv, ptr %i.eb, align 1, !tbaa !70
  %i.ajw = load ptr, ptr %.0.i1245, align 8, !tbaa !446
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 -24
  %i.ajy = load i64, ptr %i.ajx, align 8
  %i.ajz = getelementptr inbounds i8, ptr %.0.i1245, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !659
  %.not.i1249 = icmp eq i64 %i.akb, 0
  br i1 %.not.i1249, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1245, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 unwind label %.loopexit ; 0 uses

bb.gw:                                            ; preds = %bb.gu
  %i.akd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1245, i8 noundef signext %i.ajv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.gx:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i8 68, ptr %i.ea, align 1, !tbaa !70
  %i.ake = load ptr, ptr %0, align 8, !tbaa !446
  %i.akf = getelementptr i8, ptr %i.ake, i64 -24
  %i.akg = load i64, ptr %i.akf, align 8
  %i.akh = getelementptr inbounds i8, ptr %0, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !659
  %.not.i1254 = icmp eq i64 %i.akj, 0
  br i1 %.not.i1254, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 unwind label %.loopexit ; 0 uses

bb.gz:                                            ; preds = %bb.gx
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ha:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.im, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akm = icmp eq i8 %.0806, 0
  br i1 %i.akm, label %bb.hc, label %bb.id

bb.hc:                                            ; preds = %bb.hb
  %i.akn = load i16, ptr %2, align 8, !tbaa !730  ; 4 uses
  %.not.i1259 = icmp eq i16 %i.akn, -32768
  br i1 %.not.i1259, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ako = load i8, ptr %i.iw, align 2, !tbaa !731 ; 3 uses
  %i.akp = add i8 %i.ako, -1
  %spec.select.i.i1260 = icmp ult i8 %i.akp, 12
  br i1 %spec.select.i.i1260, label %bb.he, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread

bb.he:                                            ; preds = %bb.hd
  %i.akq = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1262 = icmp eq i8 %i.akq, 0
  br i1 %.not8.i1262, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i1263 = icmp eq i8 %i.ako, 2
  %i.akr = and i16 %i.akn, 3
  %i.aks = icmp eq i16 %i.akr, 0
  %or.cond.i1264 = and i1 %i.aks, %.not.i.i1263
  br i1 %or.cond.i1264, label %bb.hg, label %.thread.i.i1265

bb.hg:                                            ; preds = %bb.hf
  %i.akt = srem i16 %i.akn, 100
  %.not.i.i.i1268 = icmp ne i16 %i.akt, 0
  %i.aku = srem i16 %i.akn, 400
  %i.akv = icmp eq i16 %i.aku, 0
  %or.cond.i.i1269 = or i1 %.not.i.i.i1268, %i.akv
  br i1 %or.cond.i.i1269, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270, label %.thread.i.i1265

.thread.i.i1265:                                  ; preds = %bb.hg, %bb.hf
  %i.akw = zext nneg i8 %i.ako to i64
  %22 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.akw
  %i.akx = getelementptr i8, ptr %22, i64 -1
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270: ; preds = %bb.hg, %.thread.i.i1265
  %.sroa.03.0.i.i1267 = phi i8 [ %i.aky, %.thread.i.i1265 ], [ 29, %bb.hg ]
  %.not2834 = icmp ult i8 %.sroa.03.0.i.i1267, %i.akq
  br i1 %.not2834, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread: ; preds = %bb.he, %bb.hd, %bb.hc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270
  %i.akz = load ptr, ptr %0, align 8, !tbaa !446
  %i.ala = getelementptr i8, ptr %i.akz, i64 -24
  %i.alb = load i64, ptr %i.ala, align 8
  %i.alc = getelementptr inbounds i8, ptr %0, i64 %i.alb ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !677
  %i.alf = or i32 %i.ale, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alc, i32 noundef %i.alf)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1270
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.alg = load ptr, ptr %0, align 8, !tbaa !446
  %i.alh = getelementptr i8, ptr %i.alg, i64 -24
  %i.ali = load i64, ptr %i.alh, align 8
  %i.alj = getelementptr inbounds i8, ptr %0, i64 %i.ali
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(264) %i.alj)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274 unwind label %bb.hx

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272
  %i.alk = load ptr, ptr %0, align 8, !tbaa !446
  %i.all = getelementptr i8, ptr %i.alk, i64 -24
  %i.alm = load i64, ptr %i.all, align 8
  %i.aln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.hh unwind label %.loopexit2992

bb.hh:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274
  %i.alo = getelementptr inbounds i8, ptr %0, i64 %i.alm
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %12, ptr noundef nonnull align 8 dereferenceable(264) %i.alo, ptr noundef nonnull align 8 dereferenceable(8) %i.aln)
          to label %bb.hi unwind label %.loopexit2992

bb.hi:                                            ; preds = %bb.hh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  %i.alp = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 -24
  %i.alr = load i64, ptr %i.alq, align 8
  %i.als = getelementptr inbounds i8, ptr %0, i64 %i.alr ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 225 ; 2 uses
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !688, !range !86, !noundef !87
  %i.alv = trunc nuw i8 %i.alu to i1
  br i1 %i.alv, label %._crit_edge.i.i1280, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 240
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1275 = icmp eq ptr %i.alx, null
  br i1 %.not.i.i.i.i1275, label %bb.hk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1283 unwind label %.loopexit.split-lp2993

.noexc1283:                                       ; preds = %bb.hk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276: ; preds = %bb.hj
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 56
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !695
  %.not.i1.i.i.i1277 = icmp eq i8 %i.alz, 0
  br i1 %.not.i1.i.i.i1277, label %bb.hl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278

bb.hl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alx)
          to label %.noexc1284 unwind label %.loopexit2992

.noexc1284:                                       ; preds = %bb.hl
  %i.ama = load ptr, ptr %i.alx, align 8, !tbaa !446
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 48
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = invoke noundef signext i8 %i.amc(ptr noundef nonnull align 8 dereferenceable(570) %i.alx, i8 noundef signext 32)
          to label %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge unwind label %.loopexit2992, !inline_history !699 ; 0 uses

.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge: ; preds = %.noexc1284
  %.pre3465.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278: ; preds = %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276
  %.pre3465 = phi ptr [ %.pre3465.pre, %.noexc1284._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278_crit_edge ], [ %i.alp, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1276 ]
  store i8 1, ptr %i.alt, align 1, !tbaa !688
  br label %._crit_edge.i.i1280

._crit_edge.i.i1280:                              ; preds = %bb.hi, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278
  %i.ame = phi ptr [ %i.alp, %bb.hi ], [ %.pre3465, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1278 ]
  %i.amf = getelementptr inbounds nuw i8, ptr %i.als, i64 224
  store i8 48, ptr %i.amf, align 8, !tbaa !700
  %i.amg = getelementptr i8, ptr %i.ame, i64 -24  ; 2 uses
  %i.amh = load i64, ptr %i.amg, align 8
  %i.ami = getelementptr inbounds i8, ptr %0, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 24
  store i32 130, ptr %i.amj, align 8, !tbaa !701
  %i.amk = load i64, ptr %i.amg, align 8
  %i.aml = getelementptr inbounds i8, ptr %0, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  store i64 4, ptr %i.amm, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1287 = load i16, ptr %2, align 8, !tbaa !634
  %i.amn = sext i16 %.sroa.0.0.copyload.i1287 to i32
  %i.amo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.amn)
          to label %bb.hm unwind label %bb.hy     ; 4 uses

bb.hm:                                            ; preds = %._crit_edge.i.i1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i8 45, ptr %i.dz, align 1, !tbaa !70
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !446
  %i.amq = getelementptr i8, ptr %i.amp, i64 -24
  %i.amr = load i64, ptr %i.amq, align 8
  %i.ams = getelementptr inbounds i8, ptr %i.amo, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !659
  %.not.i1288 = icmp eq i64 %i.amu, 0
  br i1 %.not.i1288, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, ptr noundef nonnull %i.dz, i64 noundef 1)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.ho:                                            ; preds = %bb.hm
  %i.amw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, i8 noundef signext 45)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.amx = load ptr, ptr %0, align 8, !tbaa !446
  %i.amy = getelementptr i8, ptr %i.amx, i64 -24
  %i.amz = load i64, ptr %i.amy, align 8
  %i.ana = getelementptr inbounds i8, ptr %0, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  store i64 2, ptr %i.anb, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1293 = load i8, ptr %i.iw, align 2, !tbaa !70
  %i.anc = zext i8 %.sroa.0.0.copyload.i1293 to i64
  %i.and = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anc)
          to label %_ZNSolsEj.exit1295 unwind label %bb.hz ; 4 uses

_ZNSolsEj.exit1295:                               ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i8 45, ptr %i.dy, align 1, !tbaa !70
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !446
  %i.anf = getelementptr i8, ptr %i.ane, i64 -24
  %i.ang = load i64, ptr %i.anf, align 8
  %i.anh = getelementptr inbounds i8, ptr %i.and, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !659
  %.not.i1296 = icmp eq i64 %i.anj, 0
  br i1 %.not.i1296, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNSolsEj.exit1295
  %i.ank = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.and, ptr noundef nonnull %i.dy, i64 noundef 1)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %_ZNSolsEj.exit1295
  %i.anl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.and, i8 noundef signext 45)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.anm = load ptr, ptr %0, align 8, !tbaa !446
  %i.ann = getelementptr i8, ptr %i.anm, i64 -24
  %i.ano = load i64, ptr %i.ann, align 8
  %i.anp = getelementptr inbounds i8, ptr %0, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store i64 2, ptr %i.anq, align 8, !tbaa !659
  %.sroa.0.0.copyload.i1301 = load i8, ptr %i.ix, align 1, !tbaa !70
  %i.anr = zext i8 %.sroa.0.0.copyload.i1301 to i64
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anr)
          to label %_ZNSolsEj.exit1303 unwind label %bb.ia ; 0 uses

_ZNSolsEj.exit1303:                               ; preds = %bb.hs
  %i.ant = load i32, ptr %i.kk, align 4, !tbaa !739
  %i.anu = and i32 %i.ant, 8192
  %.not.i1304 = icmp eq i32 %i.anu, 0
  br i1 %.not.i1304, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305, label %bb.ht

bb.ht:                                            ; preds = %_ZNSolsEj.exit1303
  %i.anv = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.anw = icmp eq i32 %i.anv, 0
  br i1 %i.anw, label %bb.hu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305

bb.hu:                                            ; preds = %bb.ht
  %i.anx = load ptr, ptr %11, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !677
  %i.aoa = icmp eq i32 %i.anz, 0
  br i1 %i.aoa, label %bb.hv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305

bb.hv:                                            ; preds = %bb.hu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 232
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !727 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !446
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 48
  %i.aof = load ptr, ptr %i.aoe, align 8
  %i.aog = invoke noundef i32 %i.aof(ptr noundef nonnull align 8 dereferenceable(64) %i.aoc)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 unwind label %bb.hw, !inline_history !743 ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aoh = landingpad { ptr, i32 }
          catch ptr null
  %i.aoi = extractvalue { ptr, i32 } %i.aoh, 0
  call void @__clang_call_terminate(ptr %i.aoi) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305: ; preds = %_ZNSolsEj.exit1303, %bb.ht, %bb.hu, %bb.hv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.hx:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1272
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

.loopexit2992:                                    ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1274, %bb.hh, %bb.hl, %.noexc1284
  %lpad.loopexit2994 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp2993:                           ; preds = %bb.hk
  %lpad.loopexit.split-lp2995 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge.i.i1280
  %i.aok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hz:                                            ; preds = %bb.hr, %bb.hq, %bb.hp
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hs
  %i.aom = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ib:                                            ; preds = %.loopexit2992, %.loopexit.split-lp2993, %bb.ia, %bb.hz, %bb.hy
  %.pn931 = phi { ptr, i32 } [ %i.aom, %bb.ia ], [ %i.aol, %bb.hz ], [ %i.aok, %bb.hy ], [ %lpad.loopexit2994, %.loopexit2992 ], [ %lpad.loopexit.split-lp2995, %.loopexit.split-lp2993 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #26
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hx
  %.pn931.pn = phi { ptr, i32 } [ %.pn931, %bb.ib ], [ %i.aoj, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.aix

bb.id:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i8 37, ptr %i.dx, align 1, !tbaa !70
  %i.aon = load ptr, ptr %0, align 8, !tbaa !446
  %i.aoo = getelementptr i8, ptr %i.aon, i64 -24
  %i.aop = load i64, ptr %i.aoo, align 8
  %i.aoq = getelementptr inbounds i8, ptr %0, i64 %i.aop
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !659
  %.not.i1306 = icmp eq i64 %i.aos, 0
  br i1 %.not.i1306, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dx, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit

bb.if:                                            ; preds = %bb.id
  %i.aou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.ig unwind label %.loopexit ; 0 uses

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.0.i1307 = phi ptr [ %i.aot, %bb.ie ], [ %0, %bb.if ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i8 %.0806, ptr %i.dw, align 1, !tbaa !70
  %i.aov = load ptr, ptr %.0.i1307, align 8, !tbaa !446
  %i.aow = getelementptr i8, ptr %i.aov, i64 -24
  %i.aox = load i64, ptr %i.aow, align 8
  %i.aoy = getelementptr inbounds i8, ptr %.0.i1307, i64 %i.aox
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !659
  %.not.i1311 = icmp eq i64 %i.apa, 0
  br i1 %.not.i1311, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.apb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1307, ptr noundef nonnull %i.dw, i64 noundef 1)
          to label %bb.ij unwind label %.loopexit

bb.ii:                                            ; preds = %bb.ig
  %i.apc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1307, i8 noundef signext %.0806)
          to label %bb.ij unwind label %.loopexit ; 0 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.0.i1312 = phi ptr [ %i.apb, %bb.ih ], [ %.0.i1307, %bb.ii ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.apd = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i8 %i.apd, ptr %i.dv, align 1, !tbaa !70
  %i.ape = load ptr, ptr %.0.i1312, align 8, !tbaa !446
  %i.apf = getelementptr i8, ptr %i.ape, i64 -24
  %i.apg = load i64, ptr %i.apf, align 8
  %i.aph = getelementptr inbounds i8, ptr %.0.i1312, i64 %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !659
  %.not.i1316 = icmp eq i64 %i.apj, 0
  br i1 %.not.i1316, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1312, ptr noundef nonnull %i.dv, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 unwind label %.loopexit ; 0 uses

bb.il:                                            ; preds = %bb.ij
  %i.apl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1312, i8 noundef signext %i.apd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.im:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store i8 70, ptr %i.du, align 1, !tbaa !70
  %i.apm = load ptr, ptr %0, align 8, !tbaa !446
  %i.apn = getelementptr i8, ptr %i.apm, i64 -24
  %i.apo = load i64, ptr %i.apn, align 8
  %i.app = getelementptr inbounds i8, ptr %0, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !659
  %.not.i1321 = icmp eq i64 %i.apr, 0
  br i1 %.not.i1321, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.du, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 unwind label %.loopexit ; 0 uses

bb.io:                                            ; preds = %bb.im
  %i.apt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325: ; preds = %bb.io, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ip:                                            ; preds = %bb.h, %bb.h
  br i1 %.not951, label %bb.jv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.apu = icmp eq i8 %.0806, 0
  br i1 %i.apu, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.apv = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i1326 = icmp eq i16 %i.apv, -32768
  br i1 %.not.i1326, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apw = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.apx = add i8 %i.apw, -1
  %spec.select.i.i1327 = icmp ult i8 %i.apx, 12
  br i1 %spec.select.i.i1327, label %bb.it, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread

bb.it:                                            ; preds = %bb.is
  %i.apy = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1329 = icmp eq i8 %i.apy, 0
  br i1 %.not8.i1329, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1330 = icmp eq i8 %i.apw, 2
  %i.apz = and i16 %i.apv, 3
  %i.aqa = icmp eq i16 %i.apz, 0
  %or.cond.i1331 = and i1 %i.aqa, %.not.i.i1330
  br i1 %or.cond.i1331, label %bb.iv, label %.thread.i.i1332

bb.iv:                                            ; preds = %bb.iu
  %i.aqb = srem i16 %i.apv, 100
  %.not.i.i.i1335 = icmp ne i16 %i.aqb, 0
  %i.aqc = srem i16 %i.apv, 400
  %i.aqd = icmp eq i16 %i.aqc, 0
  %or.cond.i.i1336 = or i1 %.not.i.i.i1335, %i.aqd
  br i1 %or.cond.i.i1336, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337, label %.thread.i.i1332

.thread.i.i1332:                                  ; preds = %bb.iv, %bb.iu
  %i.aqe = zext nneg i8 %i.apw to i64
  %23 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aqe
  %i.aqf = getelementptr i8, ptr %23, i64 -1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337: ; preds = %bb.iv, %.thread.i.i1332
  %.sroa.03.0.i.i1334 = phi i8 [ %i.aqg, %.thread.i.i1332 ], [ 29, %bb.iv ]
  %.not2831 = icmp ult i8 %.sroa.03.0.i.i1334, %i.apy
  br i1 %.not2831, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread, label %.thread.i.i.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread: ; preds = %bb.it, %bb.is, %bb.ir, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !446
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -24
  %i.aqj = load i64, ptr %i.aqi, align 8
  %i.aqk = getelementptr inbounds i8, ptr %0, i64 %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !677
  %i.aqn = or i32 %i.aqm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aqk, i32 noundef %i.aqn)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread
  %.pre3460 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3461 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3462 = load i8, ptr %i.ix, align 1, !tbaa !732
  %.pre3463 = load i8, ptr %.0731, align 1, !tbaa !70
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337
  %i.aqo = phi i8 [ %.pre3463, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqp = phi i8 [ %.pre3462, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqq = phi i8 [ %.pre3461, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apw, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ] ; 3 uses
  %i.aqr = phi i16 [ %.pre3460, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337.thread..thread.i.i.i.i_crit_edge ], [ %i.apv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1337 ]
  %i.aqs = sext i16 %i.aqr to i32
  %i.aqt = icmp ult i8 %i.aqq, 3
  %.neg.i.i1340 = sext i1 %i.aqt to i32
  %i.aqu = add nsw i32 %.neg.i.i1340, %i.aqs      ; 4 uses
  %i.aqv = zext i8 %i.aqq to i32
  %i.aqw = zext i8 %i.aqp to i32
  %i.aqx = add nsw i32 %i.aqu, -399
  %i.aqy = icmp slt i32 %i.aqu, 0
  %i.aqz = select i1 %i.aqy, i32 %i.aqx, i32 %i.aqu
  %i.ara = sdiv i32 %i.aqz, 400                   ; 2 uses
  %.neg15.i.i1341 = mul nsw i32 %i.ara, -400
  %i.arb = add nsw i32 %.neg15.i.i1341, %i.aqu    ; 3 uses
  %i.arc = icmp ugt i8 %i.aqq, 2
  %.v.i.i1342 = select i1 %i.arc, i32 -3, i32 9
  %i.ard = add nsw i32 %.v.i.i1342, %i.aqv
  %i.are = mul nsw i32 %i.ard, 153
  %i.arf = add nsw i32 %i.are, 2
  %i.arg = udiv i32 %i.arf, 5
  %i.arh = mul nsw i32 %i.arb, 365
  %i.ari = lshr i32 %i.arb, 2
  %i.arj = udiv i32 %i.arb, 100
  %i.ark = mul nsw i32 %i.ara, 146097
  %i.arl = add nuw nsw i32 %i.aqw, -719469
  %i.arm = add nsw i32 %i.arl, %i.arg
  %i.arn = add nsw i32 %i.arm, %i.ark
  %i.aro = add nsw i32 %i.arn, %i.ari
  %i.arp = add nsw i32 %i.aro, %i.arh
  %i.arq = sub nsw i32 %i.arp, %i.arj             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.arr = add nsw i32 %i.arq, 719471             ; 2 uses
  %i.ars = icmp sgt i32 %i.arq, -719472
  %i.art = add nsw i32 %i.arq, 573375
  %i.aru = select i1 %i.ars, i32 %i.arr, i32 %i.art
  %i.arv = sdiv i32 %i.aru, 146097                ; 2 uses
  %.neg.i.i1344 = mul nsw i32 %i.arv, -146097
  %i.arw = add nsw i32 %.neg.i.i1344, %i.arr      ; 5 uses
  %i.arx = udiv i32 %i.arw, 1460
  %i.ary = udiv i32 %i.arw, 36524
  %i.arz = udiv i32 %i.arw, 146096
  %.neg2893 = add nsw i32 %i.ary, %i.arw
  %i.asa = add nuw nsw i32 %i.arz, %i.arx
  %i.asb = sub nsw i32 %.neg2893, %i.asa          ; 3 uses
  %i.asc = udiv i32 %i.asb, 365                   ; 2 uses
  %i.asd = mul nsw i32 %i.arv, 400
  %i.ase = add nsw i32 %i.asc, %i.asd
  %i.asf = udiv i32 %i.asb, 1460
  %i.asg = udiv i32 %i.asb, 36500
  %.neg36.i.i = mul i32 %i.asc, -365
  %.neg37.i.i = sub nsw i32 %i.arw, %i.asf
  %.neg25.i.i = add nsw i32 %.neg37.i.i, %i.asg
  %i.ash = add i32 %.neg25.i.i, %.neg36.i.i
  %i.asi = mul i32 %i.ash, 5
  %i.asj = add i32 %i.asi, 2                      ; 2 uses
  %i.ask = udiv i32 %i.asj, 153
  %i.asl = icmp ult i32 %i.asj, 1530
  %.v.i.i1345 = select i1 %i.asl, i32 3, i32 -9
  %i.asm = add nsw i32 %.v.i.i1345, %i.ask
  %i.asn = icmp ult i32 %i.asm, 3
  %i.aso = zext i1 %i.asn to i32
  %i.asp = add nsw i32 %i.ase, %i.aso             ; 2 uses
  %.sroa.02715.0.extract.trunc = trunc i32 %i.asp to i16
  %.sroa.02708.0.extract.trunc = shl i32 %i.asp, 16
  %sext2832 = add i32 %.sroa.02708.0.extract.trunc, -65536
  %i.asq = ashr exact i32 %sext2832, 16           ; 4 uses
  %i.asr = add nsw i32 %i.asq, -399
  %i.ass = icmp slt i32 %i.asq, 0
  %i.ast = select i1 %i.ass, i32 %i.asr, i32 %i.asq
  %i.asu = sdiv i32 %i.ast, 400                   ; 2 uses
  %.neg15.i.i.i.i.i = mul nsw i32 %i.asu, -400
  %i.asv = add nsw i32 %.neg15.i.i.i.i.i, %i.asq  ; 3 uses
  %i.asw = mul nsw i32 %i.asv, 365
  %i.asx = lshr i32 %i.asv, 2
  %i.asy = udiv i32 %i.asv, 100
  %i.asz = mul nsw i32 %i.asu, 146097
  %i.ata = add nsw i32 %i.asz, 275
  %i.atb = add nsw i32 %i.ata, %i.asx
  %i.atc = add nsw i32 %i.atb, %i.asw
  %i.atd = sub nsw i32 %i.atc, %i.asy             ; 3 uses
  %i.ate = icmp sgt i32 %i.atd, 719433
  %.in.i.i.i.i.v = select i1 %i.ate, i32 -719434, i32 -719438
  %.in.i.i.i.i = add nsw i32 %i.atd, %.in.i.i.i.i.v
  %i.atf = urem i32 %.in.i.i.i.i, 7               ; 3 uses
  %i.atg = icmp samesign ult i32 %i.atf, 4
  %.v3240 = select i1 %i.atg, i32 -10, i32 -4
  %i.ath = add nsw i32 %i.atf, %.v3240
  %.fr.i.i.i = freeze i32 %i.ath                  ; 2 uses
  %i.ati = srem i32 %.fr.i.i.i, 7
  %i.atj = sub nsw i32 %i.atd, %i.atf
  %i.atk = add nsw i32 %i.atj, -719430
  %i.atl = add i32 %i.atk, %.fr.i.i.i
  %i.atm = sub i32 %i.atl, %i.ati
  %i.atn = icmp slt i32 %i.arq, %i.atm
  %i.ato = sext i1 %i.atn to i16
  %spec.select = add i16 %.sroa.02715.0.extract.trunc, %i.ato
  store i16 %spec.select, ptr %13, align 2
  %i.atp = icmp eq i8 %i.aqo, 71
  br i1 %i.atp, label %bb.ix, label %bb.iz

bb.iw:                                            ; preds = %bb.iy, %bb.ix
  %i.atq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ix:                                            ; preds = %.thread.i.i.i.i
  %i.atr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %13)
          to label %.noexc1357 unwind label %bb.iw ; 0 uses

.noexc1357:                                       ; preds = %bb.ix
  %i.ats = load i16, ptr %13, align 2, !tbaa !730
  %.not.i1356 = icmp eq i16 %i.ats, -32768
  br i1 %.not.i1356, label %bb.iy, label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit

bb.iy:                                            ; preds = %.noexc1357
  %i.att = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 20)
          to label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit unwind label %bb.iw ; 0 uses

bb.iz:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.atu = load ptr, ptr %0, align 8, !tbaa !446
  %i.atv = getelementptr i8, ptr %i.atu, i64 -24
  %i.atw = load i64, ptr %i.atv, align 8
  %i.atx = getelementptr inbounds i8, ptr %0, i64 %i.atw
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(264) %i.atx)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360 unwind label %bb.ji

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360: ; preds = %bb.iz
  %i.aty = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.atz = getelementptr i8, ptr %i.aty, i64 -24
  %i.aua = load i64, ptr %i.atz, align 8
  %i.aub = getelementptr inbounds i8, ptr %0, i64 %i.aua ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 225 ; 2 uses
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !688, !range !86, !noundef !87
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %._crit_edge.i.i1366, label %bb.ja

bb.ja:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1360
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 240
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1361 = icmp eq ptr %i.aug, null
  br i1 %.not.i.i.i.i1361, label %bb.jb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1369 unwind label %.loopexit.split-lp2988

.noexc1369:                                       ; preds = %bb.jb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362: ; preds = %bb.ja
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 56
  %i.aui = load i8, ptr %i.auh, align 8, !tbaa !695
  %.not.i1.i.i.i1363 = icmp eq i8 %i.aui, 0
  br i1 %.not.i1.i.i.i1363, label %bb.jc, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1362
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aug)
          to label %.noexc1370 unwind label %.loopexit2987

.noexc1370:                                       ; preds = %bb.jc
  %i.auj = load ptr, ptr %i.aug, align 8, !tbaa !446
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = invoke noundef signext i8 %i.aul(ptr noundef nonnull align 8 dereferenceable(570) %i.aug, i8 noundef signext 32)
          to label %.noexc1370._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364_crit_edge unwind label %.loopexit2987, !inline_history !699 ; 0 uses

.noexc1370._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364_crit_edge: ; preds = %.noexc1370
  %.pre3464.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1364

end_hunk_22
begin_hunk_23_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.ks:                                            ; preds = %bb.kq
  %i.ayu = icmp eq i64 %.sroa.02700.0.copyload, 12
  %i.ayv = add nsw i64 %.sroa.02700.0.copyload, -12
  br i1 %i.ayu, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.ks, %bb.kr, %bb.kp
  %storemerge = phi i64 [ %.sroa.02700.0.copyload, %bb.kr ], [ %i.ayv, %bb.ks ], [ %.sroa.02700.0.copyload, %bb.kp ] ; 3 uses
  %i.ayw = icmp slt i64 %storemerge, 10
  br i1 %i.ayw, label %bb.kt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kt:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !70
  %i.ayx = load ptr, ptr %0, align 8, !tbaa !446
  %i.ayy = getelementptr i8, ptr %i.ayx, i64 -24
  %i.ayz = load i64, ptr %i.ayy, align 8
  %i.aza = getelementptr inbounds i8, ptr %0, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !659
  %.not.i1420 = icmp eq i64 %i.azc, 0
  br i1 %.not.i1420, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.azd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 unwind label %bb.kw ; 0 uses

bb.kv:                                            ; preds = %bb.kt
  %i.aze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 unwind label %bb.kw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kw:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.kv, %bb.ku
  %i.azf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.ks, %bb.kr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge3537 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1424 ], [ 12, %bb.kr ], [ 12, %bb.ks ]
  %i.azg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge3537)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.kw ; 0 uses

bb.kx:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #26
  store i8 37, ptr %i.fg, align 1, !tbaa !70
  store i8 79, ptr %i.kg, align 1, !tbaa !70
  %i.azh = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.azh, ptr %i.kh, align 1, !tbaa !70
  %i.azi = trunc i64 %.sroa.02700.0.copyload to i32
  store i32 %i.azi, ptr %i.it, align 8, !tbaa !735
  %i.azj = load ptr, ptr %0, align 8, !tbaa !446
  %i.azk = getelementptr i8, ptr %i.azj, i64 -24
  %i.azl = load i64, ptr %i.azk, align 8
  %i.azm = getelementptr inbounds i8, ptr %0, i64 %i.azl ; 6 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 232
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !727 ; 2 uses
  %.not.i1427 = icmp eq ptr %i.azo, null
  %i.azp = zext i1 %.not.i1427 to i8
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azm, i64 225 ; 2 uses
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !688, !range !86, !noundef !87
  %i.azs = trunc nuw i8 %i.azr to i1
  br i1 %i.azs, label %._crit_edge.i1433, label %bb.ky

._crit_edge.i1433:                                ; preds = %bb.kx
  %.phi.trans.insert.i1434 = getelementptr inbounds nuw i8, ptr %i.azm, i64 224
  %.pre.i1435 = load i8, ptr %.phi.trans.insert.i1434, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439

bb.ky:                                            ; preds = %bb.kx
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azm, i64 240
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1428 = icmp eq ptr %i.azu, null
  br i1 %.not.i.i.i1428, label %bb.kz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1436 unwind label %.loopexit.split-lp2983

.noexc1436:                                       ; preds = %bb.kz
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429: ; preds = %bb.ky
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 56
  %i.azw = load i8, ptr %i.azv, align 8, !tbaa !695
  %.not.i1.i.i1430 = icmp eq i8 %i.azw, 0
  br i1 %.not.i1.i.i1430, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azu, i64 89
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431

bb.lb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1429
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azu)
          to label %.noexc1437 unwind label %.loopexit2982

.noexc1437:                                       ; preds = %bb.lb
  %i.azz = load ptr, ptr %i.azu, align 8, !tbaa !446
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 48
  %i.bab = load ptr, ptr %i.baa, align 8
  %i.bac = invoke noundef signext i8 %i.bab(ptr noundef nonnull align 8 dereferenceable(570) %i.azu, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431 unwind label %.loopexit2982, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431: ; preds = %.noexc1437, %bb.la
  %.0.i.i.i1432 = phi i8 [ %i.azy, %bb.la ], [ %i.bac, %.noexc1437 ] ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azm, i64 224
  store i8 %.0.i.i.i1432, ptr %i.bad, align 8, !tbaa !700
  store i8 1, ptr %i.azq, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431, %._crit_edge.i1433
  %i.bae = phi i8 [ %.pre.i1435, %._crit_edge.i1433 ], [ %.0.i.i.i1432, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1431 ]
  %i.baf = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azo, i8 %i.azp, ptr noundef nonnull align 8 dereferenceable(216) %i.azm, i8 noundef signext %i.bae, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lc unwind label %.loopexit2982 ; 0 uses

bb.lc:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit2982:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1439, %bb.lb, %.noexc1437
  %lpad.loopexit2984 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp2983:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp2983, %.loopexit2982
  %lpad.phi2986 = phi { ptr, i32 } [ %lpad.loopexit2984, %.loopexit2982 ], [ %lpad.loopexit.split-lp2985, %.loopexit.split-lp2983 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #26
  br label %bb.aix

bb.le:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !70
  %i.bag = load ptr, ptr %0, align 8, !tbaa !446
  %i.bah = getelementptr i8, ptr %i.bag, i64 -24
  %i.bai = load i64, ptr %i.bah, align 8
  %i.baj = getelementptr inbounds i8, ptr %0, i64 %i.bai
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 16
  %i.bal = load i64, ptr %i.bak, align 8, !tbaa !659
  %.not.i1440 = icmp eq i64 %i.bal, 0
  br i1 %.not.i1440, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 unwind label %.loopexit ; 0 uses

bb.lg:                                            ; preds = %bb.le
  %i.ban = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.lh:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.mn, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bao = icmp eq i8 %.0806, 0
  br i1 %i.bao, label %bb.lj, label %bb.me

bb.lj:                                            ; preds = %bb.li
  %i.bap = load i16, ptr %2, align 8, !tbaa !730  ; 9 uses
  %.not.i1445 = icmp eq i16 %i.bap, -32768
  br i1 %.not.i1445, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.baq = load i8, ptr %i.iw, align 2, !tbaa !731 ; 8 uses
  %i.bar = add i8 %i.baq, -1
  %spec.select.i.i1446 = icmp ult i8 %i.bar, 12
  br i1 %spec.select.i.i1446, label %bb.ll, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538

bb.ll:                                            ; preds = %bb.lk
  %i.bas = load i8, ptr %i.ix, align 1, !tbaa !732 ; 2 uses
  %.not8.i1448 = icmp eq i8 %i.bas, 0
  br i1 %.not8.i1448, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not.i.i1449 = icmp eq i8 %i.baq, 2
  %i.bat = and i16 %i.bap, 3
  %i.bau = icmp eq i16 %i.bat, 0
  %or.cond.i1450 = and i1 %i.bau, %.not.i.i1449
  br i1 %or.cond.i1450, label %bb.ln, label %.thread.i.i1451

bb.ln:                                            ; preds = %bb.lm
  %i.bav = srem i16 %i.bap, 100
  %.not.i.i.i1454 = icmp ne i16 %i.bav, 0
  %i.baw = srem i16 %i.bap, 400
  %i.bax = icmp eq i16 %i.baw, 0
  %or.cond.i.i1455 = or i1 %.not.i.i.i1454, %i.bax
  br i1 %or.cond.i.i1455, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456, label %.thread.i.i1451

.thread.i.i1451:                                  ; preds = %bb.ln, %bb.lm
  %i.bay = zext nneg i8 %i.baq to i64
  %24 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bay
  %i.baz = getelementptr i8, ptr %24, i64 -1
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456: ; preds = %bb.ln, %.thread.i.i1451
  %.sroa.03.0.i.i1453 = phi i8 [ %i.bba, %.thread.i.i1451 ], [ 29, %bb.ln ]
  %.not2826 = icmp ult i8 %.sroa.03.0.i.i1453, %i.bas
  br i1 %.not2826, label %.thread2762, label %.thread2761

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread: ; preds = %bb.ll
  %i.bbb = load i8, ptr %i.gw, align 8, !tbaa !808, !range !86, !noundef !87
  %i.bbc = trunc nuw i8 %i.bbb to i1
  br i1 %i.bbc, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538: ; preds = %bb.lk
  %i.bbd = load i8, ptr %i.gw, align 8, !tbaa !808, !range !86, !noundef !87
  %i.bbe = trunc nuw i8 %i.bbd to i1
  br i1 %i.bbe, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread: ; preds = %bb.lj
  %i.bbf = load i8, ptr %i.gw, align 8, !tbaa !808, !range !86, !noundef !87
  %i.bbg = trunc nuw i8 %i.bbf to i1
  br i1 %i.bbg, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.md

.thread2762:                                      ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456
  %i.bbh = load i8, ptr %i.gw, align 8, !tbaa !808, !range !86, !noundef !87
  %i.bbi = trunc nuw i8 %i.bbh to i1
  br i1 %i.bbi, label %.thread2761, label %bb.md

.thread2761:                                      ; preds = %.thread2762, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456
  %.pr = load i8, ptr %i.ix, align 1, !tbaa !732  ; 3 uses
  %.not8.i1460 = icmp eq i8 %.pr, 0
  br i1 %.not8.i1460, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.lo

bb.lo:                                            ; preds = %.thread2761
  %.not.i.i1461 = icmp eq i8 %i.baq, 2
  %i.bbj = and i16 %i.bap, 3
  %i.bbk = icmp eq i16 %i.bbj, 0
  %or.cond.i1462 = and i1 %i.bbk, %.not.i.i1461
  br i1 %or.cond.i1462, label %bb.lp, label %.thread.i.i1463

bb.lp:                                            ; preds = %bb.lo
  %i.bbl = srem i16 %i.bap, 100
  %.not.i.i.i1466 = icmp ne i16 %i.bbl, 0
  %i.bbm = srem i16 %i.bap, 400
  %i.bbn = icmp eq i16 %i.bbm, 0
  %or.cond.i.i1467 = or i1 %.not.i.i.i1466, %i.bbn
  br i1 %or.cond.i.i1467, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468, label %.thread.i.i1463

.thread.i.i1463:                                  ; preds = %bb.lp, %bb.lo
  %i.bbo = zext nneg i8 %i.baq to i64
  %25 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbo
  %i.bbp = getelementptr i8, ptr %25, i64 -1
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468: ; preds = %bb.lp, %.thread.i.i1463
  %.sroa.03.0.i.i1465 = phi i8 [ %i.bbq, %.thread.i.i1463 ], [ 29, %bb.lp ]
  %.not2827 = icmp ult i8 %.sroa.03.0.i.i1465, %.pr
  br i1 %.not2827, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, label %bb.lq

bb.lq:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468
  %i.bbr = sext i16 %i.bap to i32                 ; 3 uses
  %i.bbs = icmp samesign ult i8 %i.baq, 3
  %.neg.i.i1469 = sext i1 %i.bbs to i32
  %i.bbt = add nsw i32 %.neg.i.i1469, %i.bbr      ; 4 uses
  %i.bbu = zext nneg i8 %i.baq to i32
  %i.bbv = zext i8 %.pr to i32
  %i.bbw = add nsw i32 %i.bbt, -399
  %i.bbx = icmp slt i32 %i.bbt, 0
  %i.bby = select i1 %i.bbx, i32 %i.bbw, i32 %i.bbt
  %i.bbz = sdiv i32 %i.bby, 400                   ; 2 uses
  %.neg15.i.i1470 = mul nsw i32 %i.bbz, -400
  %i.bca = add nsw i32 %.neg15.i.i1470, %i.bbt    ; 3 uses
  %i.bcb = icmp samesign ugt i8 %i.baq, 2
  %.v.i.i1471 = select i1 %i.bcb, i32 -3, i32 9
  %i.bcc = add nsw i32 %.v.i.i1471, %i.bbu
  %i.bcd = mul nsw i32 %i.bcc, 153
  %i.bce = add nsw i32 %i.bcd, 2
  %i.bcf = udiv i32 %i.bce, 5
  %i.bcg = lshr i32 %i.bca, 2
  %i.bch = udiv i32 %i.bca, 100
  %i.bci = add nsw i32 %i.bbr, -1                 ; 2 uses
  %i.bcj = add nsw i32 %i.bbr, -400
  %i.bck = icmp slt i16 %i.bap, 1
  %i.bcl = select i1 %i.bck, i32 %i.bcj, i32 %i.bci
  %i.bcm = sdiv i32 %i.bcl, 400                   ; 2 uses
  %.neg15.i.i1483 = mul nsw i32 %i.bcm, -400
  %i.bcn = add nsw i32 %.neg15.i.i1483, %i.bci    ; 3 uses
  %i.bco = lshr i32 %i.bcn, 2
  %i.bcp = udiv i32 %i.bcn, 100
  %reass.add = sub nsw i32 %i.bca, %i.bcn
  %reass.mul = mul nsw i32 %reass.add, 365
  %reass.add2888 = sub nsw i32 %i.bbz, %i.bcm
  %reass.mul2889 = mul nsw i32 %reass.add2888, 146097
  %reass.sub = sub nsw i32 %i.bcp, %i.bco
  %i.bcq = add nsw i32 %reass.sub, -306
  %.neg2883 = add nsw i32 %i.bcq, %i.bbv
  %.neg2885 = add nsw i32 %.neg2883, %i.bcf
  %.neg2886 = add nsw i32 %.neg2885, %reass.mul2889
  %.neg2828 = add nsw i32 %.neg2886, %i.bcg
  %i.bcr = sub nsw i32 %.neg2828, %i.bch
  %i.bcs = add nsw i32 %i.bcr, %reass.mul
  br label %bb.lr

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread3538, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1456.thread.thread, %.thread2761, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468
  %i.bct = load i64, ptr %i.iq, align 8, !tbaa !744
  %i.bcu = mul nsw i64 %i.bct, 1000000
  %i.bcv = load i64, ptr %i.jv, align 8, !tbaa !408
  %i.bcw = add nsw i64 %i.bcu, %i.bcv
  %i.bcx = load i64, ptr %i.ir, align 8, !tbaa !714
  %i.bcy = mul nsw i64 %i.bcx, 60000000
  %i.bcz = add nsw i64 %i.bcw, %i.bcy
  %i.bda = load i64, ptr %i.ip, align 8, !tbaa !715
  %i.bdb = mul nsw i64 %i.bda, 3600000000
  %i.bdc = add nsw i64 %i.bcz, %i.bdb
  %i.bdd = load i8, ptr %i.ju, align 8, !tbaa !813, !range !86, !noundef !87
  %i.bde = shl nuw nsw i8 %i.bdd, 1
  %i.bdf = zext nneg i8 %i.bde to i64
  %i.bdg = sub nsw i64 1, %i.bdf
  %i.bdh = mul nsw i64 %i.bdg, %i.bdc
  %i.bdi = sdiv i64 %i.bdh, 86400000000
  %i.bdj = trunc nsw i64 %i.bdi to i32
  br label %bb.lr

bb.lr:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread, %bb.lq
  %.sroa.02692.0 = phi i32 [ %i.bcs, %bb.lq ], [ %i.bdj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1468.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.bdk = load ptr, ptr %0, align 8, !tbaa !446
  %i.bdl = getelementptr i8, ptr %i.bdk, i64 -24
  %i.bdm = load i64, ptr %i.bdl, align 8
  %i.bdn = getelementptr inbounds i8, ptr %0, i64 %i.bdm
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(264) %i.bdn)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488 unwind label %bb.ma

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488: ; preds = %bb.lr
  %i.bdo = load ptr, ptr %0, align 8, !tbaa !446  ; 3 uses
  %i.bdp = getelementptr i8, ptr %i.bdo, i64 -24
  %i.bdq = load i64, ptr %i.bdp, align 8
  %i.bdr = getelementptr inbounds i8, ptr %0, i64 %i.bdq ; 3 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 225 ; 2 uses
  %i.bdt = load i8, ptr %i.bds, align 1, !tbaa !688, !range !86, !noundef !87
  %i.bdu = trunc nuw i8 %i.bdt to i1
  br i1 %i.bdu, label %._crit_edge.i.i1494, label %bb.ls

bb.ls:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdr, i64 240
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !694 ; 5 uses
  %.not.i.i.i.i1489 = icmp eq ptr %i.bdw, null
  br i1 %.not.i.i.i.i1489, label %bb.lt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1497 unwind label %.loopexit.split-lp2978

.noexc1497:                                       ; preds = %bb.lt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490: ; preds = %bb.ls
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 56
  %i.bdy = load i8, ptr %i.bdx, align 8, !tbaa !695
  %.not.i1.i.i.i1491 = icmp eq i8 %i.bdy, 0
  br i1 %.not.i1.i.i.i1491, label %bb.lu, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492

bb.lu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdw)
          to label %.noexc1498 unwind label %.loopexit2977

.noexc1498:                                       ; preds = %bb.lu
  %i.bdz = load ptr, ptr %i.bdw, align 8, !tbaa !446
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 48
  %i.beb = load ptr, ptr %i.bea, align 8
  %i.bec = invoke noundef signext i8 %i.beb(ptr noundef nonnull align 8 dereferenceable(570) %i.bdw, i8 noundef signext 32)
          to label %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge unwind label %.loopexit2977, !inline_history !699 ; 0 uses

.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge: ; preds = %.noexc1498
  %.pre3459.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492: ; preds = %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490
  %.pre3459 = phi ptr [ %.pre3459.pre, %.noexc1498._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492_crit_edge ], [ %i.bdo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1490 ]
  store i8 1, ptr %i.bds, align 1, !tbaa !688
  br label %._crit_edge.i.i1494

._crit_edge.i.i1494:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492
  %i.bed = phi ptr [ %i.bdo, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1488 ], [ %.pre3459, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1492 ]
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdr, i64 224
  store i8 48, ptr %i.bee, align 8, !tbaa !700
  %i.bef = getelementptr i8, ptr %i.bed, i64 -24  ; 2 uses
  %i.beg = load i64, ptr %i.bef, align 8
  %i.beh = getelementptr inbounds i8, ptr %0, i64 %i.beg
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 24
  store i32 130, ptr %i.bei, align 8, !tbaa !701
  %i.bej = load i64, ptr %i.bef, align 8
  %i.bek = getelementptr inbounds i8, ptr %0, i64 %i.bej
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 16
  store i64 3, ptr %i.bel, align 8, !tbaa !659
  %i.bem = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.02692.0)
          to label %bb.lv unwind label %.loopexit2977 ; 0 uses

bb.lv:                                            ; preds = %._crit_edge.i.i1494
  %i.ben = load i32, ptr %i.kf, align 4, !tbaa !739
  %i.beo = and i32 %i.ben, 8192
  %.not.i1501 = icmp eq i32 %i.beo, 0
  br i1 %.not.i1501, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bep = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.beq = icmp eq i32 %i.bep, 0
  br i1 %i.beq, label %bb.lx, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502

bb.lx:                                            ; preds = %bb.lw
  %i.ber = load ptr, ptr %15, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 32
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !677
  %i.beu = icmp eq i32 %i.bet, 0
  br i1 %i.beu, label %bb.ly, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502

bb.ly:                                            ; preds = %bb.lx
  %i.bev = getelementptr inbounds nuw i8, ptr %i.ber, i64 232
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !727 ; 2 uses
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !446
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 48
  %i.bez = load ptr, ptr %i.bey, align 8
  %i.bfa = invoke noundef i32 %i.bez(ptr noundef nonnull align 8 dereferenceable(64) %i.bew)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 unwind label %bb.lz, !inline_history !743 ; 0 uses

bb.lz:                                            ; preds = %bb.ly
  %i.bfb = landingpad { ptr, i32 }
          catch ptr null
  %i.bfc = extractvalue { ptr, i32 } %i.bfb, 0
  call void @__clang_call_terminate(ptr %i.bfc) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502: ; preds = %bb.lv, %bb.lw, %bb.lx, %bb.ly
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.ma:                                            ; preds = %bb.lr
  %i.bfd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit2977:                                    ; preds = %._crit_edge.i.i1494, %bb.lu, %.noexc1498
  %lpad.loopexit2979 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2978:                           ; preds = %bb.lt
  %lpad.loopexit.split-lp2980 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb
end_hunk_23
begin_hunk_24_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.wf:                                            ; preds = %bb.we
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chb, i64 240
  %i.chj = load ptr, ptr %i.chi, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1896 = icmp eq ptr %i.chj, null
  br i1 %.not.i.i.i1896, label %bb.wg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897

bb.wg:                                            ; preds = %bb.wf
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1904 unwind label %.loopexit.split-lp2948

.noexc1904:                                       ; preds = %bb.wg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897: ; preds = %bb.wf
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 56
  %i.chl = load i8, ptr %i.chk, align 8, !tbaa !695
  %.not.i1.i.i1898 = icmp eq i8 %i.chl, 0
  br i1 %.not.i1.i.i1898, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chj, i64 89
  %i.chn = load i8, ptr %i.chm, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899

bb.wi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1897
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.chj)
          to label %.noexc1905 unwind label %.loopexit2947

.noexc1905:                                       ; preds = %bb.wi
  %i.cho = load ptr, ptr %i.chj, align 8, !tbaa !446
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 48
  %i.chq = load ptr, ptr %i.chp, align 8
  %i.chr = invoke noundef signext i8 %i.chq(ptr noundef nonnull align 8 dereferenceable(570) %i.chj, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899 unwind label %.loopexit2947, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899: ; preds = %.noexc1905, %bb.wh
  %.0.i.i.i1900 = phi i8 [ %i.chn, %bb.wh ], [ %i.chr, %.noexc1905 ] ; 2 uses
  %i.chs = getelementptr inbounds nuw i8, ptr %i.chb, i64 224
  store i8 %.0.i.i.i1900, ptr %i.chs, align 8, !tbaa !700
  store i8 1, ptr %i.chf, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899, %._crit_edge.i1901
  %i.cht = phi i8 [ %.pre.i1903, %._crit_edge.i1901 ], [ %.0.i.i.i1900, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1899 ]
  %i.chu = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.chd, i8 %i.che, ptr noundef nonnull align 8 dereferenceable(216) %i.chb, i8 noundef signext %i.cht, ptr noundef nonnull %6, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.jo)
          to label %bb.wj unwind label %.loopexit2947 ; 0 uses

bb.wj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

.loopexit2947:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1907, %bb.wi, %.noexc1905
  %lpad.loopexit2949 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

.loopexit.split-lp2948:                           ; preds = %bb.wg
  %lpad.loopexit.split-lp2950 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wk:                                            ; preds = %.loopexit.split-lp2948, %.loopexit2947
  %lpad.phi2951 = phi { ptr, i32 } [ %lpad.loopexit2949, %.loopexit2947 ], [ %lpad.loopexit.split-lp2950, %.loopexit.split-lp2948 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #26
  br label %bb.aix

bb.wl:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 117, ptr %i.bf, align 1, !tbaa !70
  %i.chv = load ptr, ptr %0, align 8, !tbaa !446
  %i.chw = getelementptr i8, ptr %i.chv, i64 -24
  %i.chx = load i64, ptr %i.chw, align 8
  %i.chy = getelementptr inbounds i8, ptr %0, i64 %i.chx
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chy, i64 16
  %i.cia = load i64, ptr %i.chz, align 8, !tbaa !659
  %.not.i1908 = icmp eq i64 %i.cia, 0
  br i1 %.not.i1908, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 unwind label %.loopexit ; 0 uses

bb.wn:                                            ; preds = %bb.wl
  %i.cic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 117)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912: ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.wo:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.yc, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cid = icmp eq i8 %.0806, 69
  br i1 %i.cid, label %bb.wq, label %bb.wz

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 37, ptr %i.be, align 1, !tbaa !70
  %i.cie = load ptr, ptr %0, align 8, !tbaa !446
  %i.cif = getelementptr i8, ptr %i.cie, i64 -24
  %i.cig = load i64, ptr %i.cif, align 8
  %i.cih = getelementptr inbounds i8, ptr %0, i64 %i.cig
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 16
  %i.cij = load i64, ptr %i.cii, align 8, !tbaa !659
  %.not.i1913 = icmp eq i64 %i.cij, 0
  br i1 %.not.i1913, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %bb.wt unwind label %.loopexit

bb.ws:                                            ; preds = %bb.wq
  %i.cil = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.wt unwind label %.loopexit ; 0 uses

bb.wt:                                            ; preds = %bb.wr, %bb.ws
  %.0.i1914 = phi ptr [ %i.cik, %bb.wr ], [ %0, %bb.ws ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 69, ptr %i.bd, align 1, !tbaa !70
  %i.cim = load ptr, ptr %.0.i1914, align 8, !tbaa !446
  %i.cin = getelementptr i8, ptr %i.cim, i64 -24
  %i.cio = load i64, ptr %i.cin, align 8
  %i.cip = getelementptr inbounds i8, ptr %.0.i1914, i64 %i.cio
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cip, i64 16
  %i.cir = load i64, ptr %i.ciq, align 8, !tbaa !659
  %.not.i1918 = icmp eq i64 %i.cir, 0
  br i1 %.not.i1918, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.cis = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1914, ptr noundef nonnull %i.bd, i64 noundef 1)
          to label %bb.ww unwind label %.loopexit

bb.wv:                                            ; preds = %bb.wt
  %i.cit = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1914, i8 noundef signext 69)
          to label %bb.ww unwind label %.loopexit ; 0 uses

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.0.i1919 = phi ptr [ %i.cis, %bb.wu ], [ %.0.i1914, %bb.wv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.ciu = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i8 %i.ciu, ptr %i.bc, align 1, !tbaa !70
  %i.civ = load ptr, ptr %.0.i1919, align 8, !tbaa !446
  %i.ciw = getelementptr i8, ptr %i.civ, i64 -24
  %i.cix = load i64, ptr %i.ciw, align 8
  %i.ciy = getelementptr inbounds i8, ptr %.0.i1919, i64 %i.cix
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciy, i64 16
  %i.cja = load i64, ptr %i.ciz, align 8, !tbaa !659
  %.not.i1923 = icmp eq i64 %i.cja, 0
  br i1 %.not.i1923, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cjb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1919, ptr noundef nonnull %i.bc, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 unwind label %.loopexit ; 0 uses

bb.wy:                                            ; preds = %bb.ww
  %i.cjc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1919, i8 noundef signext %i.ciu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927: ; preds = %bb.wy, %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.wz:                                            ; preds = %bb.wp
  %i.cjd = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i1928 = icmp eq i16 %i.cjd, -32768
  br i1 %.not.i1928, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.cje = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.cjf = add i8 %i.cje, -1
  %spec.select.i.i1929 = icmp ult i8 %i.cjf, 12
  br i1 %spec.select.i.i1929, label %bb.xb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread

bb.xb:                                            ; preds = %bb.xa
  %i.cjg = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i1931 = icmp eq i8 %i.cjg, 0
  br i1 %.not8.i1931, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %.not.i.i1932 = icmp eq i8 %i.cje, 2
  %i.cjh = and i16 %i.cjd, 3
  %i.cji = icmp eq i16 %i.cjh, 0
  %or.cond.i1933 = and i1 %i.cji, %.not.i.i1932
  br i1 %or.cond.i1933, label %bb.xd, label %.thread.i.i1934

bb.xd:                                            ; preds = %bb.xc
  %i.cjj = srem i16 %i.cjd, 100
  %.not.i.i.i1937 = icmp ne i16 %i.cjj, 0
  %i.cjk = srem i16 %i.cjd, 400
  %i.cjl = icmp eq i16 %i.cjk, 0
  %or.cond.i.i1938 = or i1 %.not.i.i.i1937, %i.cjl
  br i1 %or.cond.i.i1938, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939, label %.thread.i.i1934

.thread.i.i1934:                                  ; preds = %bb.xd, %bb.xc
  %i.cjm = zext nneg i8 %i.cje to i64
  %26 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cjm
  %i.cjn = getelementptr i8, ptr %26, i64 -1
  %i.cjo = load i8, ptr %i.cjn, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939: ; preds = %bb.xd, %.thread.i.i1934
  %.sroa.03.0.i.i1936 = phi i8 [ %i.cjo, %.thread.i.i1934 ], [ 29, %bb.xd ]
  %.not2820 = icmp ult i8 %.sroa.03.0.i.i1936, %i.cjg
  br i1 %.not2820, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread: ; preds = %bb.xb, %bb.xa, %bb.wz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939
  %i.cjp = load ptr, ptr %0, align 8, !tbaa !446
  %i.cjq = getelementptr i8, ptr %i.cjp, i64 -24
  %i.cjr = load i64, ptr %i.cjq, align 8
  %i.cjs = getelementptr inbounds i8, ptr %0, i64 %i.cjr ; 2 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 32
  %i.cju = load i32, ptr %i.cjt, align 8, !tbaa !677
  %i.cjv = or i32 %i.cju, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cjs, i32 noundef %i.cjv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge unwind label %bb.xe

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread
  %.pre3449 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3450 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3451 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941

bb.xe:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread
  %i.cjw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939
  %i.cjx = phi i8 [ %.pre3451, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cjg, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ]
  %i.cjy = phi i8 [ %.pre3450, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cje, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ] ; 3 uses
  %i.cjz = phi i16 [ %.pre3449, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941_crit_edge ], [ %i.cjd, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1939 ] ; 2 uses
  %i.cka = sext i16 %i.cjz to i32                 ; 4 uses
  %i.ckb = icmp ult i8 %i.cjy, 3
  %.neg.i.i1942 = sext i1 %i.ckb to i32
  %i.ckc = add nsw i32 %.neg.i.i1942, %i.cka      ; 4 uses
  %i.ckd = zext i8 %i.cjy to i32
  %i.cke = zext i8 %i.cjx to i32
  %i.ckf = add nsw i32 %i.ckc, -399
  %i.ckg = icmp slt i32 %i.ckc, 0
  %i.ckh = select i1 %i.ckg, i32 %i.ckf, i32 %i.ckc
  %i.cki = sdiv i32 %i.ckh, 400                   ; 2 uses
  %.neg15.i.i1943 = mul nsw i32 %i.cki, -400
  %i.ckj = add nsw i32 %.neg15.i.i1943, %i.ckc    ; 3 uses
  %i.ckk = icmp ugt i8 %i.cjy, 2
  %.v.i.i1944 = select i1 %i.ckk, i32 -3, i32 9
  %i.ckl = add nsw i32 %.v.i.i1944, %i.ckd
  %i.ckm = mul nsw i32 %i.ckl, 153
  %i.ckn = add nsw i32 %i.ckm, 2
  %i.cko = udiv i32 %i.ckn, 5
  %i.ckp = mul nsw i32 %i.ckj, 365
  %i.ckq = lshr i32 %i.ckj, 2
  %i.ckr = udiv i32 %i.ckj, 100
  %i.cks = mul nsw i32 %i.cki, 146097
  %i.ckt = add nuw nsw i32 %i.cke, -719469
  %i.cku = add nsw i32 %i.ckt, %i.cko
  %i.ckv = add nsw i32 %i.cku, %i.cks
  %i.ckw = add nsw i32 %i.ckv, %i.ckq
  %i.ckx = add nsw i32 %i.ckw, %i.ckp
  %i.cky = sub nsw i32 %i.ckx, %i.ckr             ; 3 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %bb.xf
    i8 79, label %bb.xt
  ]

bb.xf:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941
  %i.ckz = add nsw i32 %i.cka, -1                 ; 2 uses
  %i.cla = add nsw i32 %i.cka, -400
  %i.clb = icmp slt i16 %i.cjz, 1
  %i.clc = select i1 %i.clb, i32 %i.cla, i32 %i.ckz
  %i.cld = sdiv i32 %i.clc, 400                   ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %i.cld, -400
  %i.cle = add nsw i32 %.neg15.i.i.i.i, %i.ckz    ; 3 uses
  %i.clf = mul nsw i32 %i.cle, 365
  %i.clg = lshr i32 %i.cle, 2
  %i.clh = udiv i32 %i.cle, 100
  %i.cli = mul nsw i32 %i.cld, 146097
  %i.clj = add nsw i32 %i.cli, -719162
  %i.clk = add nsw i32 %i.clj, %i.clg
  %i.cll = add nsw i32 %i.clk, %i.clf
  %i.clm = sub nsw i32 %i.cll, %i.clh             ; 4 uses
  %i.cln = icmp sgt i32 %i.clm, -5
  %i.clo = add nsw i32 %i.clm, 4
  %.in.i.i.i.i1953 = select i1 %i.cln, i32 %i.clo, i32 %i.clm
  %i.clp = urem i32 %.in.i.i.i.i1953, 7           ; 3 uses
  %i.clq = sub nuw nsw i32 -6, %i.clp
  %.not2825 = icmp eq i32 %i.clp, 0
  %i.clr = select i1 %.not2825, i32 0, i32 %i.clq
  %.fr.i.i.i1954 = freeze i32 %i.clr              ; 2 uses
  %i.cls = srem i32 %.fr.i.i.i1954, 7
  %i.clt = add i32 %i.clp, %.fr.i.i.i1954
  %i.clu = sub i32 %i.clm, %i.clt
  %i.clv = add i32 %i.clu, %i.cls                 ; 2 uses
  %i.clw = icmp slt i32 %i.cky, %i.clv
  br i1 %i.clw, label %bb.xg, label %bb.xn

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 48, ptr %i.bb, align 1, !tbaa !70
  %i.clx = load ptr, ptr %0, align 8, !tbaa !446
  %i.cly = getelementptr i8, ptr %i.clx, i64 -24
  %i.clz = load i64, ptr %i.cly, align 8
  %i.cma = getelementptr inbounds i8, ptr %0, i64 %i.clz
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 16
  %i.cmc = load i64, ptr %i.cmb, align 8, !tbaa !659
  %.not.i1957 = icmp eq i64 %i.cmc, 0
  br i1 %.not.i1957, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cmd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bb, i64 noundef 1)
          to label %bb.xj unwind label %bb.xm

bb.xi:                                            ; preds = %bb.xg
  %i.cme = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.xj unwind label %bb.xm     ; 0 uses

bb.xj:                                            ; preds = %bb.xh, %bb.xi
  %.0.i1958 = phi ptr [ %i.cmd, %bb.xh ], [ %0, %bb.xi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i8 48, ptr %i.ba, align 1, !tbaa !70
  %i.cmf = load ptr, ptr %.0.i1958, align 8, !tbaa !446
  %i.cmg = getelementptr i8, ptr %i.cmf, i64 -24
  %i.cmh = load i64, ptr %i.cmg, align 8
  %i.cmi = getelementptr inbounds i8, ptr %.0.i1958, i64 %i.cmh
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cmi, i64 16
  %i.cmk = load i64, ptr %i.cmj, align 8, !tbaa !659
  %.not.i1962 = icmp eq i64 %i.cmk, 0
  br i1 %.not.i1962, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1958, ptr noundef nonnull %i.ba, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 unwind label %bb.xm ; 0 uses

bb.xl:                                            ; preds = %bb.xj
  %i.cmm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1958, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 unwind label %bb.xm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966: ; preds = %bb.xl, %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.xm:                                            ; preds = %bb.xl, %bb.xk, %bb.xi, %bb.xh
  %i.cmn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xn:                                            ; preds = %bb.xf
  %i.cmo = sub nsw i32 %i.cky, %i.clv             ; 2 uses
  %i.cmp = udiv i32 %i.cmo, 7
  %i.cmq = add nuw nsw i32 %i.cmp, 1
  %i.cmr = icmp ult i32 %i.cmo, 63
  br i1 %i.cmr, label %bb.xo, label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 48, ptr %i.az, align 1, !tbaa !70
  %i.cms = load ptr, ptr %0, align 8, !tbaa !446
  %i.cmt = getelementptr i8, ptr %i.cms, i64 -24
  %i.cmu = load i64, ptr %i.cmt, align 8
  %i.cmv = getelementptr inbounds i8, ptr %0, i64 %i.cmu
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 16
  %i.cmx = load i64, ptr %i.cmw, align 8, !tbaa !659
  %.not.i1969 = icmp eq i64 %i.cmx, 0
  br i1 %.not.i1969, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cmy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973 unwind label %bb.xr ; 0 uses

bb.xq:                                            ; preds = %bb.xo
  %i.cmz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973 unwind label %bb.xr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973: ; preds = %bb.xq, %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xs
  %i.cna = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1973, %bb.xn
  %i.cnb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cmq)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.xr ; 0 uses

bb.xt:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #26
  store i8 37, ptr %i.fn, align 1, !tbaa !70
  store i8 79, ptr %i.jj, align 1, !tbaa !70
  %i.cnc = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.cnc, ptr %i.jk, align 1, !tbaa !70
  %i.cnd = add nsw i32 %i.cka, -1900
  store i32 %i.cnd, ptr %i.ij, align 4, !tbaa !737
  %i.cne = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.xu unwind label %.loopexit2942

end_hunk_24
begin_hunk_25_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %.not.i1990 = icmp eq ptr %i.cnz, null
  %i.coa = zext i1 %.not.i1990 to i8
  %i.cob = getelementptr inbounds nuw i8, ptr %i.cnx, i64 225 ; 2 uses
  %i.coc = load i8, ptr %i.cob, align 1, !tbaa !688, !range !86, !noundef !87
  %i.cod = trunc nuw i8 %i.coc to i1
  br i1 %i.cod, label %._crit_edge.i1996, label %bb.xx

._crit_edge.i1996:                                ; preds = %bb.xw
  %.phi.trans.insert.i1997 = getelementptr inbounds nuw i8, ptr %i.cnx, i64 224
  %.pre.i1998 = load i8, ptr %.phi.trans.insert.i1997, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002

bb.xx:                                            ; preds = %bb.xw
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cnx, i64 240
  %i.cof = load ptr, ptr %i.coe, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i1991 = icmp eq ptr %i.cof, null
  br i1 %.not.i.i.i1991, label %bb.xy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992

bb.xy:                                            ; preds = %bb.xx
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc1999 unwind label %.loopexit.split-lp2943

.noexc1999:                                       ; preds = %bb.xy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992: ; preds = %bb.xx
  %i.cog = getelementptr inbounds nuw i8, ptr %i.cof, i64 56
  %i.coh = load i8, ptr %i.cog, align 8, !tbaa !695
  %.not.i1.i.i1993 = icmp eq i8 %i.coh, 0
  br i1 %.not.i1.i.i1993, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992
  %i.coi = getelementptr inbounds nuw i8, ptr %i.cof, i64 89
  %i.coj = load i8, ptr %i.coi, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994

bb.ya:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1992
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cof)
          to label %.noexc2000 unwind label %.loopexit2942

.noexc2000:                                       ; preds = %bb.ya
  %i.cok = load ptr, ptr %i.cof, align 8, !tbaa !446
  %i.col = getelementptr inbounds nuw i8, ptr %i.cok, i64 48
  %i.com = load ptr, ptr %i.col, align 8
  %i.con = invoke noundef signext i8 %i.com(ptr noundef nonnull align 8 dereferenceable(570) %i.cof, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994 unwind label %.loopexit2942, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994: ; preds = %.noexc2000, %bb.xz
  %.0.i.i.i1995 = phi i8 [ %i.coj, %bb.xz ], [ %i.con, %.noexc2000 ] ; 2 uses
  %i.coo = getelementptr inbounds nuw i8, ptr %i.cnx, i64 224
  store i8 %.0.i.i.i1995, ptr %i.coo, align 8, !tbaa !700
  store i8 1, ptr %i.cob, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994, %._crit_edge.i1996
  %i.cop = phi i8 [ %.pre.i1998, %._crit_edge.i1996 ], [ %.0.i.i.i1995, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1994 ]
  %i.coq = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.cnz, i8 %i.coa, ptr noundef nonnull align 8 dereferenceable(216) %i.cnx, i8 noundef signext %i.cop, ptr noundef nonnull %6, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.jl)
          to label %.thread2769 unwind label %.loopexit2942 ; 0 uses

.thread2769:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yb:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #26
  br label %_ZNSolsEj.exit2148

bb.yc:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 85, ptr %i.ay, align 1, !tbaa !70
  %i.cor = load ptr, ptr %0, align 8, !tbaa !446
  %i.cos = getelementptr i8, ptr %i.cor, i64 -24
  %i.cot = load i64, ptr %i.cos, align 8
  %i.cou = getelementptr inbounds i8, ptr %0, i64 %i.cot
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cou, i64 16
  %i.cow = load i64, ptr %i.cov, align 8, !tbaa !659
  %.not.i2003 = icmp eq i64 %i.cow, 0
  br i1 %.not.i2003, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 unwind label %.loopexit ; 0 uses

bb.ye:                                            ; preds = %bb.yc
  %i.coy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 85)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007: ; preds = %bb.ye, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yf:                                            ; preds = %bb.h
  br i1 %.not951, label %bb.zk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.coz = icmp eq i8 %.0806, 69
  br i1 %i.coz, label %bb.yh, label %bb.yq

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 37, ptr %i.ax, align 1, !tbaa !70
  %i.cpa = load ptr, ptr %0, align 8, !tbaa !446
  %i.cpb = getelementptr i8, ptr %i.cpa, i64 -24
  %i.cpc = load i64, ptr %i.cpb, align 8
  %i.cpd = getelementptr inbounds i8, ptr %0, i64 %i.cpc
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cpd, i64 16
  %i.cpf = load i64, ptr %i.cpe, align 8, !tbaa !659
  %.not.i2008 = icmp eq i64 %i.cpf, 0
  br i1 %.not.i2008, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.cpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ax, i64 noundef 1)
          to label %bb.yk unwind label %.loopexit

bb.yj:                                            ; preds = %bb.yh
  %i.cph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.yk unwind label %.loopexit ; 0 uses

bb.yk:                                            ; preds = %bb.yi, %bb.yj
  %.0.i2009 = phi ptr [ %i.cpg, %bb.yi ], [ %0, %bb.yj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 69, ptr %i.aw, align 1, !tbaa !70
  %i.cpi = load ptr, ptr %.0.i2009, align 8, !tbaa !446
  %i.cpj = getelementptr i8, ptr %i.cpi, i64 -24
  %i.cpk = load i64, ptr %i.cpj, align 8
  %i.cpl = getelementptr inbounds i8, ptr %.0.i2009, i64 %i.cpk
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.cpl, i64 16
  %i.cpn = load i64, ptr %i.cpm, align 8, !tbaa !659
  %.not.i2013 = icmp eq i64 %i.cpn, 0
  br i1 %.not.i2013, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cpo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2009, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %bb.yn unwind label %.loopexit

bb.ym:                                            ; preds = %bb.yk
  %i.cpp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2009, i8 noundef signext 69)
          to label %bb.yn unwind label %.loopexit ; 0 uses

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %.0.i2014 = phi ptr [ %i.cpo, %bb.yl ], [ %.0.i2009, %bb.ym ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cpq = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %i.cpq, ptr %i.av, align 1, !tbaa !70
  %i.cpr = load ptr, ptr %.0.i2014, align 8, !tbaa !446
  %i.cps = getelementptr i8, ptr %i.cpr, i64 -24
  %i.cpt = load i64, ptr %i.cps, align 8
  %i.cpu = getelementptr inbounds i8, ptr %.0.i2014, i64 %i.cpt
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpu, i64 16
  %i.cpw = load i64, ptr %i.cpv, align 8, !tbaa !659
  %.not.i2018 = icmp eq i64 %i.cpw, 0
  br i1 %.not.i2018, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cpx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2014, ptr noundef nonnull %i.av, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 unwind label %.loopexit ; 0 uses

bb.yp:                                            ; preds = %bb.yn
  %i.cpy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2014, i8 noundef signext %i.cpq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.yq:                                            ; preds = %bb.yg
  %i.cpz = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i2023 = icmp eq i16 %i.cpz, -32768
  br i1 %.not.i2023, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cqa = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.cqb = add i8 %i.cqa, -1
  %spec.select.i.i2024 = icmp ult i8 %i.cqb, 12
  br i1 %spec.select.i.i2024, label %bb.ys, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread

bb.ys:                                            ; preds = %bb.yr
  %i.cqc = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i2026 = icmp eq i8 %i.cqc, 0
  br i1 %.not8.i2026, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %.not.i.i2027 = icmp eq i8 %i.cqa, 2
  %i.cqd = and i16 %i.cpz, 3
  %i.cqe = icmp eq i16 %i.cqd, 0
  %or.cond.i2028 = and i1 %i.cqe, %.not.i.i2027
  br i1 %or.cond.i2028, label %bb.yu, label %.thread.i.i2029

bb.yu:                                            ; preds = %bb.yt
  %i.cqf = srem i16 %i.cpz, 100
  %.not.i.i.i2032 = icmp ne i16 %i.cqf, 0
  %i.cqg = srem i16 %i.cpz, 400
  %i.cqh = icmp eq i16 %i.cqg, 0
  %or.cond.i.i2033 = or i1 %.not.i.i.i2032, %i.cqh
  br i1 %or.cond.i.i2033, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034, label %.thread.i.i2029

.thread.i.i2029:                                  ; preds = %bb.yu, %bb.yt
  %i.cqi = zext nneg i8 %i.cqa to i64
  %27 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cqi
  %i.cqj = getelementptr i8, ptr %27, i64 -1
  %i.cqk = load i8, ptr %i.cqj, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034: ; preds = %bb.yu, %.thread.i.i2029
  %.sroa.03.0.i.i2031 = phi i8 [ %i.cqk, %.thread.i.i2029 ], [ 29, %bb.yu ]
  %.not2812 = icmp ult i8 %.sroa.03.0.i.i2031, %i.cqc
  br i1 %.not2812, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread: ; preds = %bb.ys, %bb.yr, %bb.yq, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034
  %i.cql = load ptr, ptr %0, align 8, !tbaa !446
  %i.cqm = getelementptr i8, ptr %i.cql, i64 -24
  %i.cqn = load i64, ptr %i.cqm, align 8
  %i.cqo = getelementptr inbounds i8, ptr %0, i64 %i.cqn ; 2 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 32
  %i.cqq = load i32, ptr %i.cqp, align 8, !tbaa !677
  %i.cqr = or i32 %i.cqq, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cqo, i32 noundef %i.cqr)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread
  %.pre3446 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3447 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3448 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034
  %i.cqs = phi i8 [ %.pre3448, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cqc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ]
  %i.cqt = phi i8 [ %.pre3447, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cqa, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ] ; 3 uses
  %i.cqu = phi i16 [ %.pre3446, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036_crit_edge ], [ %i.cpz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2034 ]
  %i.cqv = sext i16 %i.cqu to i32                 ; 2 uses
  %i.cqw = icmp ult i8 %i.cqt, 3
  %.neg.i.i2037 = sext i1 %i.cqw to i32
  %i.cqx = add nsw i32 %.neg.i.i2037, %i.cqv      ; 4 uses
  %i.cqy = zext i8 %i.cqt to i32
  %i.cqz = zext i8 %i.cqs to i32
  %i.cra = add nsw i32 %i.cqx, -399
  %i.crb = icmp slt i32 %i.cqx, 0
  %i.crc = select i1 %i.crb, i32 %i.cra, i32 %i.cqx
  %i.crd = sdiv i32 %i.crc, 400                   ; 2 uses
  %.neg15.i.i2038 = mul nsw i32 %i.crd, -400
  %i.cre = add nsw i32 %.neg15.i.i2038, %i.cqx    ; 3 uses
  %i.crf = icmp ugt i8 %i.cqt, 2
  %.v.i.i2039 = select i1 %i.crf, i32 -3, i32 9
  %i.crg = add nsw i32 %.v.i.i2039, %i.cqy
  %i.crh = mul nsw i32 %i.crg, 153
  %i.cri = add nsw i32 %i.crh, 2
  %i.crj = udiv i32 %i.cri, 5
  %i.crk = mul nsw i32 %i.cre, 365
  %i.crl = lshr i32 %i.cre, 2
  %i.crm = udiv i32 %i.cre, 100
  %i.crn = mul nsw i32 %i.crd, 146097
  %i.cro = add nuw nsw i32 %i.cqz, -719469
  %i.crp = add nsw i32 %i.cro, %i.crj
  %i.crq = add nsw i32 %i.crp, %i.crn
  %i.crr = add nsw i32 %i.crq, %i.crl
  %i.crs = add nsw i32 %i.crr, %i.crk
  %i.crt = sub nsw i32 %i.crs, %i.crm             ; 6 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %.thread.i.i.i.i2074
    i8 79, label %bb.zb
  ]

.thread.i.i.i.i2074:                              ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036
  %i.cru = add nsw i32 %i.crt, 719471             ; 2 uses
  %i.crv = icmp sgt i32 %i.crt, -719472
  %i.crw = add nsw i32 %i.crt, 573375
  %i.crx = select i1 %i.crv, i32 %i.cru, i32 %i.crw
  %i.cry = sdiv i32 %i.crx, 146097                ; 2 uses
  %.neg.i.i2041 = mul nsw i32 %i.cry, -146097
  %i.crz = add nsw i32 %.neg.i.i2041, %i.cru      ; 5 uses
  %i.csa = udiv i32 %i.crz, 1460
  %i.csb = udiv i32 %i.crz, 36524
  %i.csc = udiv i32 %i.crz, 146096
  %.neg2860 = add nsw i32 %i.csb, %i.crz
  %i.csd = add nuw nsw i32 %i.csc, %i.csa
  %i.cse = sub nsw i32 %.neg2860, %i.csd          ; 3 uses
  %i.csf = udiv i32 %i.cse, 365                   ; 2 uses
  %i.csg = mul nsw i32 %i.cry, 400
  %i.csh = add nsw i32 %i.csf, %i.csg
  %i.csi = udiv i32 %i.cse, 1460
  %i.csj = udiv i32 %i.cse, 36500
  %.neg36.i.i2043 = mul i32 %i.csf, -365
  %.neg37.i.i2044 = sub nsw i32 %i.crz, %i.csi
  %.neg25.i.i2045 = add nsw i32 %.neg37.i.i2044, %i.csj
  %i.csk = add i32 %.neg25.i.i2045, %.neg36.i.i2043
  %i.csl = mul i32 %i.csk, 5
  %i.csm = add i32 %i.csl, 2                      ; 2 uses
  %i.csn = udiv i32 %i.csm, 153
  %i.cso = icmp ult i32 %i.csm, 1530
  %.v.i.i2046 = select i1 %i.cso, i32 3, i32 -9
  %i.csp = add nsw i32 %.v.i.i2046, %i.csn
  %i.csq = icmp ult i32 %i.csp, 3
  %i.csr = zext i1 %i.csq to i32
  %i.css = add nsw i32 %i.csh, %i.csr
  %.sroa.02606.0.extract.trunc = shl i32 %i.css, 16 ; 2 uses
  %sext = add i32 %.sroa.02606.0.extract.trunc, -65536
  %i.cst = ashr exact i32 %sext, 16               ; 4 uses
  %i.csu = add nsw i32 %i.cst, -399
  %i.csv = icmp slt i32 %i.cst, 0
  %i.csw = select i1 %i.csv, i32 %i.csu, i32 %i.cst
  %i.csx = sdiv i32 %i.csw, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2069 = mul nsw i32 %i.csx, -400
  %i.csy = add nsw i32 %.neg15.i.i.i.i.i2069, %i.cst ; 3 uses
  %i.csz = mul nsw i32 %i.csy, 365
  %i.cta = lshr i32 %i.csy, 2
  %i.ctb = udiv i32 %i.csy, 100
  %i.ctc = mul nsw i32 %i.csx, 146097
  %i.ctd = add nsw i32 %i.ctc, 275
  %i.cte = add nsw i32 %i.ctd, %i.cta
  %i.ctf = add nsw i32 %i.cte, %i.csz
  %i.ctg = sub nsw i32 %i.ctf, %i.ctb             ; 3 uses
  %i.cth = icmp sgt i32 %i.ctg, 719433
  %.in.i.i.i.i2071.v = select i1 %i.cth, i32 -719434, i32 -719438
  %.in.i.i.i.i2071 = add nsw i32 %i.ctg, %.in.i.i.i.i2071.v
  %i.cti = urem i32 %.in.i.i.i.i2071, 7           ; 3 uses
  %i.ctj = icmp samesign ult i32 %i.cti, 4
  %.v = select i1 %i.ctj, i32 -10, i32 -4
  %i.ctk = add nsw i32 %i.cti, %.v
  %.fr.i.i.i2073 = freeze i32 %i.ctk              ; 2 uses
  %i.ctl = srem i32 %.fr.i.i.i2073, 7
  %i.ctm = sub nsw i32 %i.ctg, %i.cti
  %i.ctn = add nsw i32 %i.ctm, -719430
  %i.cto = add i32 %i.ctn, %.fr.i.i.i2073
  %i.ctp = sub i32 %i.cto, %i.ctl                 ; 2 uses
  %i.ctq = icmp slt i32 %i.crt, %i.ctp
  br i1 %i.ctq, label %.thread.i.i.i.i2101, label %bb.yv

.thread.i.i.i.i2101:                              ; preds = %.thread.i.i.i.i2074
  %sext2817 = add i32 %.sroa.02606.0.extract.trunc, -131072
  %i.ctr = ashr exact i32 %sext2817, 16           ; 4 uses
  %i.cts = add nsw i32 %i.ctr, -399
  %i.ctt = icmp slt i32 %i.ctr, 0
  %i.ctu = select i1 %i.ctt, i32 %i.cts, i32 %i.ctr
  %i.ctv = sdiv i32 %i.ctu, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2096 = mul nsw i32 %i.ctv, -400
  %i.ctw = add nsw i32 %.neg15.i.i.i.i.i2096, %i.ctr ; 3 uses
  %i.ctx = mul nsw i32 %i.ctw, 365
  %i.cty = lshr i32 %i.ctw, 2
  %i.ctz = udiv i32 %i.ctw, 100
  %i.cua = mul nsw i32 %i.ctv, 146097
  %i.cub = add nsw i32 %i.cua, 275
  %i.cuc = add nsw i32 %i.cub, %i.cty
  %i.cud = add nsw i32 %i.cuc, %i.ctx
  %i.cue = sub nsw i32 %i.cud, %i.ctz             ; 3 uses
  %i.cuf = icmp sgt i32 %i.cue, 719433
  %.in.i.i.i.i2098.v = select i1 %i.cuf, i32 -719434, i32 -719438
  %.in.i.i.i.i2098 = add nsw i32 %i.cue, %.in.i.i.i.i2098.v
  %i.cug = urem i32 %.in.i.i.i.i2098, 7           ; 3 uses
  %i.cuh = icmp samesign ult i32 %i.cug, 4
  %.v3238 = select i1 %i.cuh, i32 -10, i32 -4
  %i.cui = add nsw i32 %i.cug, %.v3238
  %.fr.i.i.i2100 = freeze i32 %i.cui              ; 2 uses
  %i.cuj = srem i32 %.fr.i.i.i2100, 7
  %i.cuk = sub nsw i32 %i.cue, %i.cug
  %i.cul = add nsw i32 %i.cuk, -719430
  %i.cum = add i32 %i.cul, %.fr.i.i.i2100
  %i.cun = sub i32 %i.cum, %i.cuj
  br label %bb.yv

bb.yv:                                            ; preds = %.thread.i.i.i.i2101, %.thread.i.i.i.i2074
  %.sroa.02610.0 = phi i32 [ %i.cun, %.thread.i.i.i.i2101 ], [ %i.ctp, %.thread.i.i.i.i2074 ]
  %i.cuo = sub nsw i32 %i.crt, %.sroa.02610.0     ; 2 uses
  %i.cup = sdiv i32 %i.cuo, 7
  %i.cuq = add nsw i32 %i.cup, 1
  %i.cur = icmp slt i32 %i.cuo, 63
  br i1 %i.cur, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 48, ptr %i.au, align 1, !tbaa !70
  %i.cus = load ptr, ptr %0, align 8, !tbaa !446
  %i.cut = getelementptr i8, ptr %i.cus, i64 -24
  %i.cuu = load i64, ptr %i.cut, align 8
  %i.cuv = getelementptr inbounds i8, ptr %0, i64 %i.cuu
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuv, i64 16
  %i.cux = load i64, ptr %i.cuw, align 8, !tbaa !659
  %.not.i2108 = icmp eq i64 %i.cux, 0
  br i1 %.not.i2108, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cuy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112 unwind label %bb.yz ; 0 uses

bb.yy:                                            ; preds = %bb.yw
  %i.cuz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112 unwind label %bb.yz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112: ; preds = %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.za
  %i.cva = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.za:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2112, %bb.yv
  %i.cvb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cuq)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.yz ; 0 uses

end_hunk_25
begin_hunk_26_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  br label %bb.aix

bb.aaa:                                           ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i8 37, ptr %i.as, align 1, !tbaa !70
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxd, i64 16
  %i.cyh = load i64, ptr %i.cyg, align 8, !tbaa !659
  %.not.i2162 = icmp eq i64 %i.cyh, 0
  br i1 %.not.i2162, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cyi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %bb.aad unwind label %bb.zq

bb.aac:                                           ; preds = %bb.aaa
  %i.cyj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aad unwind label %bb.zq    ; 0 uses

bb.aad:                                           ; preds = %bb.aab, %bb.aac
  %.0.i2163 = phi ptr [ %i.cyi, %bb.aab ], [ %0, %bb.aac ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %.0806, ptr %i.ar, align 1, !tbaa !70
  %i.cyk = load ptr, ptr %.0.i2163, align 8, !tbaa !446
  %i.cyl = getelementptr i8, ptr %i.cyk, i64 -24
  %i.cym = load i64, ptr %i.cyl, align 8
  %i.cyn = getelementptr inbounds i8, ptr %.0.i2163, i64 %i.cym
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 16
  %i.cyp = load i64, ptr %i.cyo, align 8, !tbaa !659
  %.not.i2167 = icmp eq i64 %i.cyp, 0
  br i1 %.not.i2167, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cyq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2163, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %bb.aag unwind label %bb.zq

bb.aaf:                                           ; preds = %bb.aad
  %i.cyr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2163, i8 noundef signext %.0806)
          to label %bb.aag unwind label %bb.zq    ; 0 uses

bb.aag:                                           ; preds = %bb.aae, %bb.aaf
  %.0.i2168 = phi ptr [ %i.cyq, %bb.aae ], [ %.0.i2163, %bb.aaf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cys = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.cys, ptr %i.aq, align 1, !tbaa !70
  %i.cyt = load ptr, ptr %.0.i2168, align 8, !tbaa !446
  %i.cyu = getelementptr i8, ptr %i.cyt, i64 -24
  %i.cyv = load i64, ptr %i.cyu, align 8
  %i.cyw = getelementptr inbounds i8, ptr %.0.i2168, i64 %i.cyv
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyw, i64 16
  %i.cyy = load i64, ptr %i.cyx, align 8, !tbaa !659
  %.not.i2172 = icmp eq i64 %i.cyy, 0
  br i1 %.not.i2172, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cyz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2168, ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 unwind label %bb.zq ; 0 uses

bb.aai:                                           ; preds = %bb.aag
  %i.cza = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2168, i8 noundef signext %i.cys)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 unwind label %bb.zq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176: ; preds = %bb.aai, %bb.aah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aaj:                                           ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 119, ptr %i.ap, align 1, !tbaa !70
  %i.czb = load ptr, ptr %0, align 8, !tbaa !446
  %i.czc = getelementptr i8, ptr %i.czb, i64 -24
  %i.czd = load i64, ptr %i.czc, align 8
  %i.cze = getelementptr inbounds i8, ptr %0, i64 %i.czd
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cze, i64 16
  %i.czg = load i64, ptr %i.czf, align 8, !tbaa !659
  %.not.i2177 = icmp eq i64 %i.czg, 0
  br i1 %.not.i2177, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.czh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 unwind label %.loopexit ; 0 uses

bb.aal:                                           ; preds = %bb.aaj
  %i.czi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 119)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181: ; preds = %bb.aal, %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aam:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aca, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.czj = icmp eq i8 %.0806, 69
  br i1 %i.czj, label %bb.aao, label %bb.aax

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 37, ptr %i.ao, align 1, !tbaa !70
  %i.czk = load ptr, ptr %0, align 8, !tbaa !446
  %i.czl = getelementptr i8, ptr %i.czk, i64 -24
  %i.czm = load i64, ptr %i.czl, align 8
  %i.czn = getelementptr inbounds i8, ptr %0, i64 %i.czm
  %i.czo = getelementptr inbounds nuw i8, ptr %i.czn, i64 16
  %i.czp = load i64, ptr %i.czo, align 8, !tbaa !659
  %.not.i2182 = icmp eq i64 %i.czp, 0
  br i1 %.not.i2182, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.czq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %bb.aar unwind label %.loopexit

bb.aaq:                                           ; preds = %bb.aao
  %i.czr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aar unwind label %.loopexit ; 0 uses

bb.aar:                                           ; preds = %bb.aap, %bb.aaq
  %.0.i2183 = phi ptr [ %i.czq, %bb.aap ], [ %0, %bb.aaq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 69, ptr %i.an, align 1, !tbaa !70
  %i.czs = load ptr, ptr %.0.i2183, align 8, !tbaa !446
  %i.czt = getelementptr i8, ptr %i.czs, i64 -24
  %i.czu = load i64, ptr %i.czt, align 8
  %i.czv = getelementptr inbounds i8, ptr %.0.i2183, i64 %i.czu
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czv, i64 16
  %i.czx = load i64, ptr %i.czw, align 8, !tbaa !659
  %.not.i2187 = icmp eq i64 %i.czx, 0
  br i1 %.not.i2187, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.czy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2183, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %bb.aau unwind label %.loopexit

bb.aat:                                           ; preds = %bb.aar
  %i.czz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2183, i8 noundef signext 69)
          to label %bb.aau unwind label %.loopexit ; 0 uses

bb.aau:                                           ; preds = %bb.aas, %bb.aat
  %.0.i2188 = phi ptr [ %i.czy, %bb.aas ], [ %.0.i2183, %bb.aat ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.daa = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %i.daa, ptr %i.am, align 1, !tbaa !70
  %i.dab = load ptr, ptr %.0.i2188, align 8, !tbaa !446
  %i.dac = getelementptr i8, ptr %i.dab, i64 -24
  %i.dad = load i64, ptr %i.dac, align 8
  %i.dae = getelementptr inbounds i8, ptr %.0.i2188, i64 %i.dad
  %i.daf = getelementptr inbounds nuw i8, ptr %i.dae, i64 16
  %i.dag = load i64, ptr %i.daf, align 8, !tbaa !659
  %.not.i2192 = icmp eq i64 %i.dag, 0
  br i1 %.not.i2192, label %bb.aaw, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2188, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 unwind label %.loopexit ; 0 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.dai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2188, i8 noundef signext %i.daa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196: ; preds = %bb.aaw, %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.aax:                                           ; preds = %bb.aan
  %i.daj = load i16, ptr %2, align 8, !tbaa !730  ; 5 uses
  %.not.i2197 = icmp eq i16 %i.daj, -32768
  br i1 %.not.i2197, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.dak = load i8, ptr %i.iw, align 2, !tbaa !731 ; 4 uses
  %i.dal = add i8 %i.dak, -1
  %spec.select.i.i2198 = icmp ult i8 %i.dal, 12
  br i1 %spec.select.i.i2198, label %bb.aaz, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread

bb.aaz:                                           ; preds = %bb.aay
  %i.dam = load i8, ptr %i.ix, align 1, !tbaa !732 ; 3 uses
  %.not8.i2200 = icmp eq i8 %i.dam, 0
  br i1 %.not8.i2200, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %.not.i.i2201 = icmp eq i8 %i.dak, 2
  %i.dan = and i16 %i.daj, 3
  %i.dao = icmp eq i16 %i.dan, 0
  %or.cond.i2202 = and i1 %i.dao, %.not.i.i2201
  br i1 %or.cond.i2202, label %bb.abb, label %.thread.i.i2203

bb.abb:                                           ; preds = %bb.aba
  %i.dap = srem i16 %i.daj, 100
  %.not.i.i.i2206 = icmp ne i16 %i.dap, 0
  %i.daq = srem i16 %i.daj, 400
  %i.dar = icmp eq i16 %i.daq, 0
  %or.cond.i.i2207 = or i1 %.not.i.i.i2206, %i.dar
  br i1 %or.cond.i.i2207, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208, label %.thread.i.i2203

.thread.i.i2203:                                  ; preds = %bb.abb, %bb.aba
  %i.das = zext nneg i8 %i.dak to i64
  %28 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.das
  %i.dat = getelementptr i8, ptr %28, i64 -1
  %i.dau = load i8, ptr %i.dat, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208: ; preds = %bb.abb, %.thread.i.i2203
  %.sroa.03.0.i.i2205 = phi i8 [ %i.dau, %.thread.i.i2203 ], [ 29, %bb.abb ]
  %.not2806 = icmp ult i8 %.sroa.03.0.i.i2205, %i.dam
  br i1 %.not2806, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread: ; preds = %bb.aaz, %bb.aay, %bb.aax, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208
  %i.dav = load ptr, ptr %0, align 8, !tbaa !446
  %i.daw = getelementptr i8, ptr %i.dav, i64 -24
  %i.dax = load i64, ptr %i.daw, align 8
  %i.day = getelementptr inbounds i8, ptr %0, i64 %i.dax ; 2 uses
  %i.daz = getelementptr inbounds nuw i8, ptr %i.day, i64 32
  %i.dba = load i32, ptr %i.daz, align 8, !tbaa !677
  %i.dbb = or i32 %i.dba, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.day, i32 noundef %i.dbb)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge unwind label %bb.abc

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread
  %.pre3443 = load i16, ptr %2, align 8, !tbaa !730
  %.pre3444 = load i8, ptr %i.iw, align 2, !tbaa !731
  %.pre3445 = load i8, ptr %i.ix, align 1, !tbaa !732
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210

bb.abc:                                           ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread
  %i.dbc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208
  %i.dbd = phi i8 [ %.pre3445, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.dam, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ]
  %i.dbe = phi i8 [ %.pre3444, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.dak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ] ; 3 uses
  %i.dbf = phi i16 [ %.pre3443, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210_crit_edge ], [ %i.daj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2208 ] ; 2 uses
  %i.dbg = sext i16 %i.dbf to i32                 ; 4 uses
  %i.dbh = icmp ult i8 %i.dbe, 3
  %.neg.i.i2211 = sext i1 %i.dbh to i32
  %i.dbi = add nsw i32 %.neg.i.i2211, %i.dbg      ; 4 uses
  %i.dbj = zext i8 %i.dbe to i32
  %i.dbk = zext i8 %i.dbd to i32
  %i.dbl = add nsw i32 %i.dbi, -399
  %i.dbm = icmp slt i32 %i.dbi, 0
  %i.dbn = select i1 %i.dbm, i32 %i.dbl, i32 %i.dbi
  %i.dbo = sdiv i32 %i.dbn, 400                   ; 2 uses
  %.neg15.i.i2212 = mul nsw i32 %i.dbo, -400
  %i.dbp = add nsw i32 %.neg15.i.i2212, %i.dbi    ; 3 uses
  %i.dbq = icmp ugt i8 %i.dbe, 2
  %.v.i.i2213 = select i1 %i.dbq, i32 -3, i32 9
  %i.dbr = add nsw i32 %.v.i.i2213, %i.dbj
  %i.dbs = mul nsw i32 %i.dbr, 153
  %i.dbt = add nsw i32 %i.dbs, 2
  %i.dbu = udiv i32 %i.dbt, 5
  %i.dbv = mul nsw i32 %i.dbp, 365
  %i.dbw = lshr i32 %i.dbp, 2
  %i.dbx = udiv i32 %i.dbp, 100
  %i.dby = mul nsw i32 %i.dbo, 146097
  %i.dbz = add nuw nsw i32 %i.dbk, -719469
  %i.dca = add nsw i32 %i.dbz, %i.dbu
  %i.dcb = add nsw i32 %i.dca, %i.dby
  %i.dcc = add nsw i32 %i.dcb, %i.dbw
  %i.dcd = add nsw i32 %i.dcc, %i.dbv
  %i.dce = sub nsw i32 %i.dcd, %i.dbx             ; 3 uses
  switch i8 %.0806, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 [
    i8 0, label %bb.abd
    i8 79, label %bb.abr
  ]

bb.abd:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210
  %i.dcf = add nsw i32 %i.dbg, -1                 ; 2 uses
  %i.dcg = add nsw i32 %i.dbg, -400
  %i.dch = icmp slt i16 %i.dbf, 1
  %i.dci = select i1 %i.dch, i32 %i.dcg, i32 %i.dcf
  %i.dcj = sdiv i32 %i.dci, 400                   ; 2 uses
  %.neg15.i.i.i.i2222 = mul nsw i32 %i.dcj, -400
  %i.dck = add nsw i32 %.neg15.i.i.i.i2222, %i.dcf ; 3 uses
  %i.dcl = mul nsw i32 %i.dck, 365
  %i.dcm = lshr i32 %i.dck, 2
  %i.dcn = udiv i32 %i.dck, 100
  %i.dco = mul nsw i32 %i.dcj, 146097
  %i.dcp = add nsw i32 %i.dco, -719162
  %i.dcq = add nsw i32 %i.dcp, %i.dcm
  %i.dcr = add nsw i32 %i.dcq, %i.dcl
  %i.dcs = sub nsw i32 %i.dcr, %i.dcn             ; 4 uses
  %i.dct = icmp sgt i32 %i.dcs, -5
  %i.dcu = add nsw i32 %i.dcs, 4
  %.in.i.i.i.i2225 = select i1 %i.dct, i32 %i.dcu, i32 %i.dcs
  %i.dcv = urem i32 %.in.i.i.i.i2225, 7           ; 3 uses
  %i.dcw = sub nsw i32 1, %i.dcv                  ; 2 uses
  %i.dcx = sub nuw nsw i32 -5, %i.dcv
  %i.dcy = icmp samesign ugt i32 %i.dcv, 1
  %i.dcz = select i1 %i.dcy, i32 %i.dcx, i32 %i.dcw
  %.fr.i.i.i2226 = freeze i32 %i.dcz              ; 2 uses
  %i.dda = srem i32 %.fr.i.i.i2226, 7
  %i.ddb = add nsw i32 %i.dcw, %i.dcs
  %i.ddc = sub i32 %i.ddb, %.fr.i.i.i2226
  %i.ddd = add i32 %i.ddc, %i.dda                 ; 2 uses
  %i.dde = icmp slt i32 %i.dce, %i.ddd
  br i1 %i.dde, label %bb.abe, label %bb.abl

bb.abe:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 48, ptr %i.al, align 1, !tbaa !70
  %i.ddf = load ptr, ptr %0, align 8, !tbaa !446
  %i.ddg = getelementptr i8, ptr %i.ddf, i64 -24
  %i.ddh = load i64, ptr %i.ddg, align 8
  %i.ddi = getelementptr inbounds i8, ptr %0, i64 %i.ddh
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.ddi, i64 16
  %i.ddk = load i64, ptr %i.ddj, align 8, !tbaa !659
  %.not.i2231 = icmp eq i64 %i.ddk, 0
  br i1 %.not.i2231, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ddl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %bb.abh unwind label %bb.abk

bb.abg:                                           ; preds = %bb.abe
  %i.ddm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.abh unwind label %bb.abk   ; 0 uses

bb.abh:                                           ; preds = %bb.abf, %bb.abg
  %.0.i2232 = phi ptr [ %i.ddl, %bb.abf ], [ %0, %bb.abg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 48, ptr %i.ak, align 1, !tbaa !70
  %i.ddn = load ptr, ptr %.0.i2232, align 8, !tbaa !446
  %i.ddo = getelementptr i8, ptr %i.ddn, i64 -24
  %i.ddp = load i64, ptr %i.ddo, align 8
  %i.ddq = getelementptr inbounds i8, ptr %.0.i2232, i64 %i.ddp
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddq, i64 16
  %i.dds = load i64, ptr %i.ddr, align 8, !tbaa !659
  %.not.i2236 = icmp eq i64 %i.dds, 0
  br i1 %.not.i2236, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.ddt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2232, ptr noundef nonnull %i.ak, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 unwind label %bb.abk ; 0 uses

bb.abj:                                           ; preds = %bb.abh
  %i.ddu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2232, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 unwind label %bb.abk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240: ; preds = %bb.abj, %bb.abi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

bb.abk:                                           ; preds = %bb.abj, %bb.abi, %bb.abg, %bb.abf
  %i.ddv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abl:                                           ; preds = %bb.abd
  %i.ddw = sub nsw i32 %i.dce, %i.ddd             ; 2 uses
  %i.ddx = udiv i32 %i.ddw, 7
  %i.ddy = add nuw nsw i32 %i.ddx, 1
  %i.ddz = icmp ult i32 %i.ddw, 63
  br i1 %i.ddz, label %bb.abm, label %bb.abq

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 48, ptr %i.aj, align 1, !tbaa !70
  %i.dea = load ptr, ptr %0, align 8, !tbaa !446
  %i.deb = getelementptr i8, ptr %i.dea, i64 -24
  %i.dec = load i64, ptr %i.deb, align 8
  %i.ded = getelementptr inbounds i8, ptr %0, i64 %i.dec
  %i.dee = getelementptr inbounds nuw i8, ptr %i.ded, i64 16
  %i.def = load i64, ptr %i.dee, align 8, !tbaa !659
  %.not.i2243 = icmp eq i64 %i.def, 0
  br i1 %.not.i2243, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.deg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247 unwind label %bb.abp ; 0 uses

bb.abo:                                           ; preds = %bb.abm
  %i.deh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247 unwind label %bb.abp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247: ; preds = %bb.abo, %bb.abn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn, %bb.abq
  %i.dei = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2247, %bb.abl
  %i.dej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ddy)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504 unwind label %bb.abp ; 0 uses

bb.abr:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #26
  store i8 37, ptr %i.fq, align 1, !tbaa !70
  store i8 79, ptr %i.iy, align 1, !tbaa !70
  %i.dek = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dek, ptr %i.iz, align 1, !tbaa !70
  %i.del = add nsw i32 %i.dbg, -1900
  store i32 %i.del, ptr %i.ij, align 4, !tbaa !737
  %i.dem = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.abs unwind label %.loopexit2927
end_hunk_26
begin_hunk_27_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.0806, ptr %i.d, align 1, !tbaa !70
  %i.dwe = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwf = getelementptr i8, ptr %i.dwe, i64 -24
  %i.dwg = load i64, ptr %i.dwf, align 8
  %i.dwh = getelementptr inbounds i8, ptr %0, i64 %i.dwg
  %i.dwi = getelementptr inbounds nuw i8, ptr %i.dwh, i64 16
  %i.dwj = load i64, ptr %i.dwi, align 8, !tbaa !659
  %.not.i2501 = icmp eq i64 %i.dwj, 0
  br i1 %.not.i2501, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dwk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505 unwind label %.loopexit ; 0 uses

bb.aih:                                           ; preds = %bb.aif
  %i.dwl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505: ; preds = %bb.aih, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aii

bb.aii:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2505, %bb.aie
  %i.dwm = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dwm, ptr %i.c, align 1, !tbaa !70
  %i.dwn = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwo = getelementptr i8, ptr %i.dwn, i64 -24
  %i.dwp = load i64, ptr %i.dwo, align 8
  %i.dwq = getelementptr inbounds i8, ptr %0, i64 %i.dwp
  %i.dwr = getelementptr inbounds nuw i8, ptr %i.dwq, i64 16
  %i.dws = load i64, ptr %i.dwr, align 8, !tbaa !659
  %.not.i2506 = icmp eq i64 %i.dws, 0
  br i1 %.not.i2506, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dwt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dwu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dwm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1504: ; preds = %bb.agk, %bb.agh, %bb.lc, %bb.ko, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941, %bb.agz, %bb.aga, %.thread2788, %.thread2777, %.thread2769, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145, %bb.fi, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089, %bb.dw, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14820 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ 0, %bb.abq ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ 0, %bb.pz ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ 0, %bb.oo ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ 0, %bb.rp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ 0, %bb.za ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ 0, %bb.acw ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ 0, %bb.adp ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ 0, %bb.zy ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ 0, %bb.aez ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ 0, %bb.lc ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ %.0806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ci ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dw ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ 0, %bb.fi ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0806, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2769 ], [ 0, %.thread2777 ], [ 0, %.thread2788 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.ko ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3805 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ null, %bb.lc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ci ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dw ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ null, %bb.fi ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0731, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2769 ], [ null, %.thread2777 ], [ null, %.thread2788 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0802, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.ko ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7801 = phi i8 [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2510 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2495 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit982 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit977 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1017 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1012 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1071 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1032 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1127 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1086 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1192 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1142 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1258 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1253 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1325 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1320 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1394 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1389 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1444 ], [ %.0794, %bb.abq ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1524 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1519 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1569 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1539 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1619 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1584 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1644 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1639 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1680 ], [ %.0794, %bb.pz ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1705 ], [ %.3797, %bb.oo ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1743 ], [ %.0794, %bb.rp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1788 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1783 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1830 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1803 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1855 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1850 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1877 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1872 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1912 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1892 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2007 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1927 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2146 ], [ %.0794, %bb.za ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2181 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2022 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2281 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2196 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2319 ], [ %.0794, %bb.acw ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2346 ], [ %.0794, %bb.adp ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2391 ], [ %.0794, %bb.zy ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2428 ], [ %.0794, %bb.aez ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2455 ], [ %.1795, %bb.lc ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2450 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2475 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2470 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2480 ], [ %.0794, %bb.t ], [ %.0794, %bb.aq ], [ %.0794, %bb.ci ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0794, %bb.dw ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1089 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1174 ], [ %.0794, %bb.fi ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1145 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1238 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1305 ], [ %.0794, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1409 ], [ %.0794, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1502 ], [ %.0794, %bb.ahm ], [ %.0794, %bb.md ], [ %.0794, %bb.no ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1543 ], [ %.3797, %bb.oj ], [ %.0794, %bb.ni ], [ %.3797, %bb.ov ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1624 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1675 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1700 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1738 ], [ %.0794, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ %.5799, %bb.tw ], [ %.0794, %bb.ss ], [ %.5799, %bb.ud ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1835 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1857 ], [ %.5799, %bb.tx ], [ %.0794, %bb.wj ], [ %.0794, %bb.wb ], [ %.0794, %.thread2769 ], [ %.0794, %.thread2777 ], [ %.0794, %.thread2788 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ %.0794, %bb.adj ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2361 ], [ %.0794, %bb.aga ], [ %.0794, %bb.qt ], [ %.0794, %bb.wc ], [ %.0794, %bb.agz ], [ %.0794, %bb.xs ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1941 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1966 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2036 ], [ %.0794, %bb.zs ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2176 ], [ %.0794, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2210 ], [ %.0794, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2240 ], [ %.1795, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1795, %bb.ko ], [ %.0794, %bb.agh ], [ %.0794, %bb.agk ]
  %i.dwv = getelementptr inbounds nuw i8, ptr %.0731, i64 1
  br label %bb.h, !llvm.loop !814

bb.ail:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !70
  %i.dww = load ptr, ptr %0, align 8, !tbaa !446
  %i.dwx = getelementptr i8, ptr %i.dww, i64 -24
  %i.dwy = load i64, ptr %i.dwx, align 8
  %i.dwz = getelementptr inbounds i8, ptr %0, i64 %i.dwy
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.dwz, i64 16
  %i.dxb = load i64, ptr %i.dxa, align 8, !tbaa !659
  %.not.i2511 = icmp eq i64 %i.dxb, 0
  br i1 %.not.i2511, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dxc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2515, %bb.ail
  %.not851 = icmp eq i8 %.0806, 0
  br i1 %.not851, label %_ZNSolsEj.exit2148, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0806, ptr %i.a, align 1, !tbaa !70
  %i.dxe = load ptr, ptr %0, align 8, !tbaa !446
  %i.dxf = getelementptr i8, ptr %i.dxe, i64 -24
  %i.dxg = load i64, ptr %i.dxf, align 8
  %i.dxh = getelementptr inbounds i8, ptr %0, i64 %i.dxg
  %i.dxi = getelementptr inbounds nuw i8, ptr %i.dxh, i64 16
  %i.dxj = load i64, ptr %i.dxi, align 8, !tbaa !659
  %.not.i2516 = icmp eq i64 %i.dxj, 0
  br i1 %.not.i2516, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dxl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0806)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2148

_ZNSolsEj.exit2148:                               ; preds = %bb.bz, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2520, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dxm = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dxn = load i32, ptr %i.dxm, align 4, !tbaa !739
  %i.dxo = and i32 %i.dxn, 8192
  %.not.i2521 = icmp eq i32 %i.dxo, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dxp = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dxq = icmp eq i32 %i.dxp, 0
  br i1 %i.dxq, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dxr = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 32
  %i.dxt = load i32, ptr %i.dxs, align 8, !tbaa !677
  %i.dxu = icmp eq i32 %i.dxt, 0
  br i1 %i.dxu, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxr, i64 232
  %i.dxw = load ptr, ptr %i.dxv, align 8, !tbaa !727 ; 2 uses
  %i.dxx = load ptr, ptr %i.dxw, align 8, !tbaa !446
  %i.dxy = getelementptr inbounds nuw i8, ptr %i.dxx, i64 48
  %i.dxz = load ptr, ptr %i.dxy, align 8
  %i.dya = invoke noundef i32 %i.dxz(ptr noundef nonnull align 8 dereferenceable(64) %i.dxw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyb = landingpad { ptr, i32 }
          catch ptr null
  %i.dyc = extractvalue { ptr, i32 } %i.dyb, 0
  call void @__clang_call_terminate(ptr %i.dyc) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.drz, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cna, %bb.xr ], [ %i.ty, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.blw, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dei, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byc, %bb.st ], [ %i.bya, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.ddv, %bb.abk ], [ %i.cjw, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbc, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cva, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.bij, %bb.nh ], [ %i.cgw, %bb.wd ], [ %i.bsp, %bb.qu ], [ %i.cxh, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.djt, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dpq, %bb.afk ], [ %i.bry, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cmn, %bb.xm ], [ %i.azf, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %2 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.l
  %i.m = getelementptr i8, ptr %2, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.n, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !746
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !746
  %i.t = icmp ult i8 %i.s, 7
  br i1 %i.t, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !446
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !677
  %i.ag = or i32 %i.af, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ai, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.aj = and i16 %i.a, 3
  %i.ak = icmp eq i16 %i.aj, 0
  %or.cond.i14 = and i1 %i.ak, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.al = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.al, 0
  %i.am = srem i16 %i.a, 400
  %i.an = icmp eq i16 %i.am, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.an
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.ao = zext nneg i8 %i.c to i64
  %3 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.ao
  %i.ap = getelementptr i8, ptr %3, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aq, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ai
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ar = sext i16 %i.a to i32
  %i.as = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.as to i32
  %i.at = add nsw i32 %.neg.i.i, %i.ar            ; 4 uses
  %i.au = zext nneg i8 %i.c to i32
  %i.av = zext i8 %i.ai to i32
  %i.aw = add nsw i32 %i.at, -399
  %i.ax = icmp slt i32 %i.at, 0
  %i.ay = select i1 %i.ax, i32 %i.aw, i32 %i.at
  %i.az = sdiv i32 %i.ay, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.az, -400
  %i.ba = add nsw i32 %.neg15.i.i, %i.at          ; 3 uses
  %i.bb = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bb, i32 -3, i32 9
  %i.bc = add nsw i32 %.v.i.i, %i.au
  %i.bd = mul nsw i32 %i.bc, 153
  %i.be = add nsw i32 %i.bd, 2
  %i.bf = udiv i32 %i.be, 5
  %i.bg = mul nsw i32 %i.ba, 365
  %i.bh = lshr i32 %i.ba, 2
  %i.bi = udiv i32 %i.ba, 100
  %i.bj = mul nsw i32 %i.az, 146097
  %i.bk = add nuw nsw i32 %i.av, -719469
  %i.bl = add nsw i32 %i.bk, %i.bf
  %i.bm = add nsw i32 %i.bl, %i.bj
  %i.bn = add nsw i32 %i.bm, %i.bh
  %i.bo = add nsw i32 %i.bn, %i.bg
  %i.bp = sub nsw i32 %i.bo, %i.bi                ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, -5
  %i.br = add nsw i32 %i.bp, 4
  %.in.i.i = select i1 %i.bq, i32 %i.br, i32 %i.bp
  %i.bs = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !746 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 7
  %i.bx = icmp ne i8 %i.bv, %i.bt
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !446
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !677
  %i.ce = or i32 %i.cd, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !70
  %i.ch = zext i8 %i.cg to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %i.ch, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bs, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %i.ci = srem i32 %.fr.i, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %i.ci, %bb.k ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !813, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
end_hunk_27
