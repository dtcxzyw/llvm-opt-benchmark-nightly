inline.NumInlined: 14762
inline.NumDeleted: 2666
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  store i8 37, ptr %i.ew, align 1, !tbaa !27
  %i.ov = load ptr, ptr %0, align 8, !tbaa !16
  %i.ow = getelementptr i8, ptr %i.ov, i64 -24
  %i.ox = load i64, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds i8, ptr %0, i64 %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !4999
  %.not.i974 = icmp eq i64 %i.pa, 0
  br i1 %.not.i974, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %bb.av unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i975 = phi ptr [ %i.pb, %bb.at ], [ %0, %bb.au ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store i8 %.0782, ptr %i.ev, align 1, !tbaa !27
  %i.pd = load ptr, ptr %.0.i975, align 8, !tbaa !16
  %i.pe = getelementptr i8, ptr %i.pd, i64 -24
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = getelementptr inbounds i8, ptr %.0.i975, i64 %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !4999
  %.not.i979 = icmp eq i64 %i.pi, 0
  br i1 %.not.i979, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i975, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i975, i8 noundef signext %.0782)
          to label %bb.ay unwind label %.loopexit ; 0 uses

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0.i980 = phi ptr [ %i.pj, %bb.aw ], [ %.0.i975, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.pl = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i8 %i.pl, ptr %i.eu, align 1, !tbaa !27
  %i.pm = load ptr, ptr %.0.i980, align 8, !tbaa !16
  %i.pn = getelementptr i8, ptr %i.pm, i64 -24
  %i.po = load i64, ptr %i.pn, align 8
  %i.pp = getelementptr inbounds i8, ptr %.0.i980, i64 %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !4999
  %.not.i984 = icmp eq i64 %i.pr, 0
  br i1 %.not.i984, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i980, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit988 unwind label %.loopexit ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i980, i8 noundef signext %i.pl)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit988 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit988: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.bb:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i8 %i.kz, ptr %i.et, align 1, !tbaa !27
  %i.pu = load ptr, ptr %0, align 8, !tbaa !16
  %i.pv = getelementptr i8, ptr %i.pu, i64 -24
  %i.pw = load i64, ptr %i.pv, align 8
  %i.px = getelementptr inbounds i8, ptr %0, i64 %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !4999
  %.not.i989 = icmp eq i64 %i.pz, 0
  br i1 %.not.i989, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.et, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit993 unwind label %.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bb
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit993 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit993: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.be:                                            ; preds = %bb.h, %bb.h
  br i1 %.not927, label %bb.ck, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qc = icmp eq i8 %.0782, 79
  br i1 %i.qc, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i8 37, ptr %i.es, align 1, !tbaa !27
  %i.qd = load ptr, ptr %0, align 8, !tbaa !16
  %i.qe = getelementptr i8, ptr %i.qd, i64 -24
  %i.qf = load i64, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds i8, ptr %0, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !4999
  %.not.i994 = icmp eq i64 %i.qi, 0
  br i1 %.not.i994, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.bj unwind label %.loopexit ; 0 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.0.i995 = phi ptr [ %i.qj, %bb.bh ], [ %0, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store i8 79, ptr %i.er, align 1, !tbaa !27
  %i.ql = load ptr, ptr %.0.i995, align 8, !tbaa !16
  %i.qm = getelementptr i8, ptr %i.ql, i64 -24
  %i.qn = load i64, ptr %i.qm, align 8
  %i.qo = getelementptr inbounds i8, ptr %.0.i995, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !4999
  %.not.i999 = icmp eq i64 %i.qq, 0
  br i1 %.not.i999, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i995, ptr noundef nonnull %i.er, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i995, i8 noundef signext 79)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i1000 = phi ptr [ %i.qr, %bb.bk ], [ %.0.i995, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.qt = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i8 %i.qt, ptr %i.eq, align 1, !tbaa !27
  %i.qu = load ptr, ptr %.0.i1000, align 8, !tbaa !16
  %i.qv = getelementptr i8, ptr %i.qu, i64 -24
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = getelementptr inbounds i8, ptr %.0.i1000, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !4999
  %.not.i1004 = icmp eq i64 %i.qz, 0
  br i1 %.not.i1004, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1000, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1008 unwind label %.loopexit ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1000, i8 noundef signext %i.qt)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1008 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1008: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.bp:                                            ; preds = %bb.bf
  %i.rc = load i16, ptr %2, align 8, !tbaa !5026  ; 4 uses
  %.not.i1009 = icmp eq i16 %i.rc, -32768
  br i1 %.not.i1009, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rd = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 3 uses
  %i.re = add i8 %i.rd, -1
  %spec.select.i.i1010 = icmp ult i8 %i.re, 12
  br i1 %spec.select.i.i1010, label %bb.br, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.rf = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 2 uses
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
  %.not.i.i.i1012 = icmp ne i16 %i.ri, 0
  %i.rj = srem i16 %i.rc, 400
  %i.rk = icmp eq i16 %i.rj, 0
  %or.cond.i.i = or i1 %.not.i.i.i1012, %i.rk
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs
  %i.rl = zext nneg i8 %i.rd to i64
  %20 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.rl
  %i.rm = getelementptr i8, ptr %20, i64 -1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.bt, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.rn, %.thread.i.i ], [ 29, %bb.bt ]
  %.not2818 = icmp ult i8 %.sroa.03.0.i.i, %i.rf
  br i1 %.not2818, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.ro = load ptr, ptr %0, align 8, !tbaa !16
  %i.rp = getelementptr i8, ptr %i.ro, i64 -24
  %i.rq = load i64, ptr %i.rp, align 8
  %i.rr = getelementptr inbounds i8, ptr %0, i64 %i.rq ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !4447
  %i.ru = or i32 %i.rt, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rr, i32 noundef %i.ru)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %.pre3452 = load i8, ptr %.0707, align 1, !tbaa !27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rv = phi i8 [ %.pre3452, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge ], [ %i.kz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ]
  %i.rw = icmp eq i8 %i.rv, 99
  br i1 %i.rw, label %bb.bu, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015

bb.bu:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.rx = load i8, ptr %i.gw, align 8, !tbaa !5000, !range !659, !noundef !660
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rz = load ptr, ptr %0, align 8, !tbaa !16
  %i.sa = getelementptr i8, ptr %i.rz, i64 -24
  %i.sb = load i64, ptr %i.sa, align 8
  %i.sc = getelementptr inbounds i8, ptr %0, i64 %i.sb ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 32
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !4447
  %i.sf = or i32 %i.se, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sc, i32 noundef %i.sf)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015_crit_edge: ; preds = %bb.bv
  %.pre3453 = load i8, ptr %.0707, align 1, !tbaa !27
  %i.sg = icmp eq i8 %.pre3453, 99
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015_crit_edge, %bb.bu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.sh = phi i1 [ %i.sg, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015_crit_edge ], [ true, %bb.bu ], [ false, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.si = load i16, ptr %2, align 8, !tbaa !5026
  %i.sj = sext i16 %i.si to i32                   ; 2 uses
  %i.sk = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 4 uses
  %i.sl = icmp ult i8 %i.sk, 3
  %.neg.i.i = sext i1 %i.sl to i32
  %i.sm = add nsw i32 %.neg.i.i, %i.sj            ; 4 uses
  %i.sn = zext i8 %i.sk to i32                    ; 2 uses
  %i.so = load i8, ptr %i.iw, align 1, !tbaa !5028
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

bb.bw:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015
  %.sroa.0.0.copyload.i.i1016 = load i64, ptr %i.ip, align 8, !tbaa !611
  %i.tc = trunc i64 %.sroa.0.0.copyload.i.i1016 to i32
  store i32 %i.tc, ptr %6, align 8, !tbaa !5029
  %.sroa.0.0.copyload.i = load i64, ptr %i.iq, align 8, !tbaa !611
  %i.td = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.td, ptr %i.ir, align 4, !tbaa !5030
  %.sroa.0.0.copyload.i1017 = load i64, ptr %i.io, align 8, !tbaa !611
  %i.te = trunc i64 %.sroa.0.0.copyload.i1017 to i32
  store i32 %i.te, ptr %i.is, align 8, !tbaa !5031
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1015
  store i32 %i.sp, ptr %i.kl, align 4, !tbaa !5032
  %i.tf = add i8 %i.sk, -1
  %spec.select.i.i1020 = icmp ult i8 %i.tf, 12
  br i1 %spec.select.i.i1020, label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tg = load ptr, ptr %0, align 8, !tbaa !16
  %i.th = getelementptr i8, ptr %i.tg, i64 -24
  %i.ti = load i64, ptr %i.th, align 8
  %i.tj = getelementptr inbounds i8, ptr %0, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !4447
  %i.tm = or i32 %i.tl, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.tj, i32 noundef %i.tm)
          to label %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023_crit_edge unwind label %bb.ca

._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023_crit_edge: ; preds = %bb.by
  %.sroa.0.0.copyload.i1024.pre = load i16, ptr %2, align 8, !tbaa !2388
  %.pre3462 = sext i16 %.sroa.0.0.copyload.i1024.pre to i32
  br label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023

_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023: ; preds = %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023_crit_edge, %bb.bx
  %.pre-phi = phi i32 [ %.pre3462, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023_crit_edge ], [ %i.sj, %bb.bx ]
  %.0.i1021 = phi i32 [ 0, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023_crit_edge ], [ %i.sn, %bb.bx ]
  %i.tn = add nsw i32 %.0.i1021, -1
  store i32 %i.tn, ptr %i.kc, align 8, !tbaa !5025
  %i.to = add nsw i32 %.pre-phi, -1900
  store i32 %i.to, ptr %i.ii, align 4, !tbaa !5033
  %i.tp = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023
  store i32 %i.tp, ptr %i.iz, align 8, !tbaa !5021
  %i.tq = load ptr, ptr %0, align 8, !tbaa !16
  %i.tr = getelementptr i8, ptr %i.tq, i64 -24    ; 2 uses
  %i.ts = load i64, ptr %i.tr, align 8
  %i.tt = getelementptr inbounds i8, ptr %0, i64 %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !4447
  %i.tw = and i32 %i.tv, 5
  %.not2819 = icmp eq i32 %i.tw, 0
  br i1 %.not2819, label %bb.cb, label %_ZNSolsEj.exit2125

bb.ca:                                            ; preds = %bb.by, %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1023
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.cb:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i1025 = load i16, ptr %2, align 8, !tbaa !2388 ; 2 uses
  %i.ty = sext i16 %.sroa.0.0.copyload.i1025 to i32 ; 2 uses
  %i.tz = add nsw i32 %i.ty, -1                   ; 2 uses
  %i.ua = add nsw i32 %i.ty, -400
  %i.ub = icmp slt i16 %.sroa.0.0.copyload.i1025, 1
  %i.uc = select i1 %i.ub, i32 %i.ua, i32 %i.tz
  %i.ud = sdiv i32 %i.uc, 400                     ; 2 uses
  %.neg15.i.i1027 = mul nsw i32 %i.ud, -400
  %i.ue = add nsw i32 %.neg15.i.i1027, %i.tz      ; 3 uses
  %i.uf = lshr i32 %i.ue, 2
  %i.ug = udiv i32 %i.ue, 100
  %reass.add2888 = sub nsw i32 %i.su, %i.ue
  %reass.mul2889 = mul nsw i32 %reass.add2888, 365
  %reass.add2891 = sub nsw i32 %i.st, %i.ud
  %reass.mul2892 = mul nsw i32 %reass.add2891, 146097
  %.neg2820 = add nuw nsw i32 %i.sp, -307
  %i.uh = add nsw i32 %.neg2820, %i.sz
  %i.ui = add nsw i32 %i.uh, %i.ta
  %i.uj = add nsw i32 %i.ui, %reass.mul2892
  %i.uk = add nuw nsw i32 %i.tb, %i.uf
  %i.ul = sub nsw i32 %i.uj, %i.uk
  %i.um = add nsw i32 %i.ul, %i.ug
  %i.un = add nsw i32 %i.um, %reass.mul2889
  store i32 %i.un, ptr %i.ja, align 4, !tbaa !5034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.51, i64 3, i1 false)
  %i.uo = icmp eq i8 %.0782, 69
  br i1 %i.uo, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 69, ptr %i.ks, align 1, !tbaa !27
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0805 = phi ptr [ %i.kt, %bb.cc ], [ %i.ks, %bb.cb ] ; 2 uses
  %i.up = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.up, ptr %.0805, align 1, !tbaa !27
  %i.uq = load i64, ptr %i.tr, align 8
  %i.ur = getelementptr inbounds i8, ptr %0, i64 %i.uq ; 6 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 232
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !5023 ; 2 uses
  %.not.i1030 = icmp eq ptr %i.ut, null
  %i.uu = zext i1 %.not.i1030 to i8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 225 ; 2 uses
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %._crit_edge.i1036, label %bb.ce

._crit_edge.i1036:                                ; preds = %bb.cd
  %.phi.trans.insert.i1037 = getelementptr inbounds nuw i8, ptr %i.ur, i64 224
  %.pre.i1038 = load i8, ptr %.phi.trans.insert.i1037, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1042

bb.ce:                                            ; preds = %bb.cd
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ur, i64 240
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1031 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i1031, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1032

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt16__throw_bad_castv() #31
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a

bb.ex:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit1136
  %i.adm = load i32, ptr %i.kp, align 4, !tbaa !5035
  %i.adn = and i32 %i.adm, 8192
  %.not.i1149 = icmp eq i32 %i.adn, 0
  br i1 %.not.i1149, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ado = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.adp = icmp eq i32 %i.ado, 0
  br i1 %i.adp, label %bb.ez, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150

bb.ez:                                            ; preds = %bb.ey
  %i.adq = load ptr, ptr %9, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 32
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !4447
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %bb.fa, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150

bb.fa:                                            ; preds = %bb.ez
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 232
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !5023 ; 2 uses
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !16
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 48
  %i.ady = load ptr, ptr %i.adx, align 8
  %i.adz = invoke noundef i32 %i.ady(ptr noundef nonnull align 8 dereferenceable(64) %i.adv)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150 unwind label %bb.fb, !inline_history !5039 ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aea = landingpad { ptr, i32 }
          catch ptr null
  %i.aeb = extractvalue { ptr, i32 } %i.aea, 0
  call void @__clang_call_terminate(ptr %i.aeb) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.fc:                                            ; preds = %bb.et, %bb.es
  %.pn915 = phi { ptr, i32 } [ %lpad.phi2992, %bb.et ], [ %i.act, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.aix

bb.fd:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1121
  store i32 %i.abx, ptr %i.kl, align 4, !tbaa !5032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff) #27
  store i8 37, ptr %i.ff, align 1, !tbaa !27
  store i8 79, ptr %i.km, align 1, !tbaa !27
  %i.aec = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.aec, ptr %i.kn, align 1, !tbaa !27
  %i.aed = load ptr, ptr %0, align 8, !tbaa !16
  %i.aee = getelementptr i8, ptr %i.aed, i64 -24
  %i.aef = load i64, ptr %i.aee, align 8
  %i.aeg = getelementptr inbounds i8, ptr %0, i64 %i.aef ; 6 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 232
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !5023 ; 2 uses
  %.not.i1151 = icmp eq ptr %i.aei, null
  %i.aej = zext i1 %.not.i1151 to i8
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 225 ; 2 uses
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.aem = trunc nuw i8 %i.ael to i1
  br i1 %i.aem, label %._crit_edge.i1157, label %bb.fe

._crit_edge.i1157:                                ; preds = %bb.fd
  %.phi.trans.insert.i1158 = getelementptr inbounds nuw i8, ptr %i.aeg, i64 224
  %.pre.i1159 = load i8, ptr %.phi.trans.insert.i1158, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1163

bb.fe:                                            ; preds = %bb.fd
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeg, i64 240
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1152 = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i.i1152, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1153

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1160 unwind label %.loopexit.split-lp2984

.noexc1160:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1153: ; preds = %bb.fe
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 56
  %i.aeq = load i8, ptr %i.aep, align 8, !tbaa !4991
  %.not.i1.i.i1154 = icmp eq i8 %i.aeq, 0
  br i1 %.not.i1.i.i1154, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1153
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 89
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1155

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1153
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aeo)
          to label %.noexc1161 unwind label %.loopexit2983

.noexc1161:                                       ; preds = %bb.fh
  %i.aet = load ptr, ptr %i.aeo, align 8, !tbaa !16
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 48
  %i.aev = load ptr, ptr %i.aeu, align 8
  %i.aew = invoke noundef signext i8 %i.aev(ptr noundef nonnull align 8 dereferenceable(570) %i.aeo, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1155 unwind label %.loopexit2983, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1155: ; preds = %.noexc1161, %bb.fg
  %.0.i.i.i1156 = phi i8 [ %i.aes, %bb.fg ], [ %i.aew, %.noexc1161 ] ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeg, i64 224
  store i8 %.0.i.i.i1156, ptr %i.aex, align 8, !tbaa !4997
  store i8 1, ptr %i.aek, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1163

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1163: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1155, %._crit_edge.i1157
  %i.aey = phi i8 [ %.pre.i1159, %._crit_edge.i1157 ], [ %.0.i.i.i1156, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1155 ]
  %i.aez = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.aei, i8 %i.aej, ptr noundef nonnull align 8 dereferenceable(216) %i.aeg, i8 noundef signext %i.aey, ptr noundef nonnull %6, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ko)
          to label %bb.fi unwind label %.loopexit2983 ; 0 uses

bb.fi:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

.loopexit2983:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1163, %bb.fh, %.noexc1161
  %lpad.loopexit2985 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.loopexit.split-lp2984:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp2986 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.split-lp2984, %.loopexit2983
  %lpad.phi2987 = phi { ptr, i32 } [ %lpad.loopexit2985, %.loopexit2983 ], [ %lpad.loopexit.split-lp2986, %.loopexit.split-lp2984 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #27
  br label %bb.aix

bb.fk:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 %i.kz, ptr %i.eg, align 1, !tbaa !27
  %i.afa = load ptr, ptr %0, align 8, !tbaa !16
  %i.afb = getelementptr i8, ptr %i.afa, i64 -24
  %i.afc = load i64, ptr %i.afb, align 8
  %i.afd = getelementptr inbounds i8, ptr %0, i64 %i.afc
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !4999
  %.not.i1164 = icmp eq i64 %i.aff, 0
  br i1 %.not.i1164, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1168 unwind label %.loopexit ; 0 uses

bb.fm:                                            ; preds = %bb.fk
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1168 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1168: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.fn:                                            ; preds = %bb.h
  br i1 %.not927, label %bb.gx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afi = icmp eq i8 %.0782, 0
  br i1 %i.afi, label %bb.fp, label %bb.go

bb.fp:                                            ; preds = %bb.fo
  %i.afj = load i16, ptr %2, align 8, !tbaa !5026 ; 4 uses
  %.not.i1169 = icmp eq i16 %i.afj, -32768
  br i1 %.not.i1169, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afk = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 3 uses
  %i.afl = add i8 %i.afk, -1
  %spec.select.i.i1170 = icmp ult i8 %i.afl, 12
  br i1 %spec.select.i.i1170, label %bb.fr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afm = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1172 = icmp eq i8 %i.afm, 0
  br i1 %.not8.i1172, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i.i1173 = icmp eq i8 %i.afk, 2
  %i.afn = and i16 %i.afj, 3
  %i.afo = icmp eq i16 %i.afn, 0
  %or.cond.i1174 = and i1 %i.afo, %.not.i.i1173
  br i1 %or.cond.i1174, label %bb.ft, label %.thread.i.i1175

bb.ft:                                            ; preds = %bb.fs
  %i.afp = srem i16 %i.afj, 100
  %.not.i.i.i1178 = icmp ne i16 %i.afp, 0
  %i.afq = srem i16 %i.afj, 400
  %i.afr = icmp eq i16 %i.afq, 0
  %or.cond.i.i1179 = or i1 %.not.i.i.i1178, %i.afr
  br i1 %or.cond.i.i1179, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180, label %.thread.i.i1175

.thread.i.i1175:                                  ; preds = %bb.ft, %bb.fs
  %i.afs = zext nneg i8 %i.afk to i64
  %21 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.afs
  %i.aft = getelementptr i8, ptr %21, i64 -1
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180: ; preds = %bb.ft, %.thread.i.i1175
  %.sroa.03.0.i.i1177 = phi i8 [ %i.afu, %.thread.i.i1175 ], [ 29, %bb.ft ]
  %.not2816 = icmp ult i8 %.sroa.03.0.i.i1177, %i.afm
  br i1 %.not2816, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1182

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180.thread: ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180
  %i.afv = load ptr, ptr %0, align 8, !tbaa !16
  %i.afw = getelementptr i8, ptr %i.afv, i64 -24
  %i.afx = load i64, ptr %i.afw, align 8
  %i.afy = getelementptr inbounds i8, ptr %0, i64 %i.afx ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 32
  %i.aga = load i32, ptr %i.afz, align 8, !tbaa !4447
  %i.agb = or i32 %i.aga, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afy, i32 noundef %i.agb)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1182 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1182: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1180
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.agc = load ptr, ptr %0, align 8, !tbaa !16
  %i.agd = getelementptr i8, ptr %i.agc, i64 -24
  %i.age = load i64, ptr %i.agd, align 8
  %i.agf = getelementptr inbounds i8, ptr %0, i64 %i.age
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(264) %i.agf)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1184 unwind label %bb.gi

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1184: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1182
  %i.agg = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.agh = getelementptr i8, ptr %i.agg, i64 -24
  %i.agi = load i64, ptr %i.agh, align 8
  %i.agj = getelementptr inbounds i8, ptr %0, i64 %i.agi ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 225 ; 2 uses
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.agm = trunc nuw i8 %i.agl to i1
  br i1 %i.agm, label %._crit_edge.i.i1190, label %bb.fu

bb.fu:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1184
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agj, i64 240
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1185 = icmp eq ptr %i.ago, null
  br i1 %.not.i.i.i.i1185, label %bb.fv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1186

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1193 unwind label %.loopexit.split-lp2979

.noexc1193:                                       ; preds = %bb.fv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1186: ; preds = %bb.fu
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 56
  %i.agq = load i8, ptr %i.agp, align 8, !tbaa !4991
  %.not.i1.i.i.i1187 = icmp eq i8 %i.agq, 0
  br i1 %.not.i1.i.i.i1187, label %bb.fw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1186
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ago)
          to label %.noexc1194 unwind label %.loopexit2978

.noexc1194:                                       ; preds = %bb.fw
  %i.agr = load ptr, ptr %i.ago, align 8, !tbaa !16
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 48
  %i.agt = load ptr, ptr %i.ags, align 8
  %i.agu = invoke noundef signext i8 %i.agt(ptr noundef nonnull align 8 dereferenceable(570) %i.ago, i8 noundef signext 32)
          to label %.noexc1194._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188_crit_edge unwind label %.loopexit2978, !inline_history !4996 ; 0 uses

.noexc1194._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188_crit_edge: ; preds = %.noexc1194
  %.pre3448.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188: ; preds = %.noexc1194._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1186
  %.pre3448 = phi ptr [ %.pre3448.pre, %.noexc1194._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188_crit_edge ], [ %i.agg, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1186 ]
  store i8 1, ptr %i.agk, align 1, !tbaa !4984
  br label %._crit_edge.i.i1190

._crit_edge.i.i1190:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1184, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188
  %i.agv = phi ptr [ %i.agg, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1184 ], [ %.pre3448, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1188 ]
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agj, i64 224
  store i8 48, ptr %i.agw, align 8, !tbaa !4997
  %i.agx = getelementptr i8, ptr %i.agv, i64 -24  ; 2 uses
  %i.agy = load i64, ptr %i.agx, align 8
  %i.agz = getelementptr inbounds i8, ptr %0, i64 %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 24
  store i32 130, ptr %i.aha, align 8, !tbaa !4998
  %i.ahb = load i64, ptr %i.agx, align 8
  %i.ahc = getelementptr inbounds i8, ptr %0, i64 %i.ahb
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  store i64 2, ptr %i.ahd, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1197 = load i8, ptr %i.iv, align 2, !tbaa !27
  %i.ahe = zext i8 %.sroa.0.0.copyload.i1197 to i64
  %i.ahf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahe)
          to label %_ZNSolsEj.exit unwind label %bb.gj ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %._crit_edge.i.i1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i8 47, ptr %i.ef, align 1, !tbaa !27
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !16
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 -24
  %i.ahi = load i64, ptr %i.ahh, align 8
  %i.ahj = getelementptr inbounds i8, ptr %i.ahf, i64 %i.ahi
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !4999
  %.not.i1199 = icmp eq i64 %i.ahl, 0
  br i1 %.not.i1199, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEj.exit
  %i.ahm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahf, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fy:                                            ; preds = %_ZNSolsEj.exit
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahf, i8 noundef signext 47)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.aho = load ptr, ptr %0, align 8, !tbaa !16
  %i.ahp = getelementptr i8, ptr %i.aho, i64 -24
  %i.ahq = load i64, ptr %i.ahp, align 8
  %i.ahr = getelementptr inbounds i8, ptr %0, i64 %i.ahq
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16
  store i64 2, ptr %i.ahs, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1204 = load i8, ptr %i.iw, align 1, !tbaa !27
  %i.aht = zext i8 %.sroa.0.0.copyload.i1204 to i64
  %i.ahu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aht)
          to label %_ZNSolsEj.exit1206 unwind label %bb.gk ; 4 uses

_ZNSolsEj.exit1206:                               ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store i8 47, ptr %i.ee, align 1, !tbaa !27
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !16
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 -24
  %i.ahx = load i64, ptr %i.ahw, align 8
  %i.ahy = getelementptr inbounds i8, ptr %i.ahu, i64 %i.ahx
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !4999
  %.not.i1207 = icmp eq i64 %i.aia, 0
  br i1 %.not.i1207, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSolsEj.exit1206
  %i.aib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gb:                                            ; preds = %_ZNSolsEj.exit1206
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, i8 noundef signext 47)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aid = load ptr, ptr %0, align 8, !tbaa !16
  %i.aie = getelementptr i8, ptr %i.aid, i64 -24
  %i.aif = load i64, ptr %i.aie, align 8
  %i.aig = getelementptr inbounds i8, ptr %0, i64 %i.aif
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  store i64 2, ptr %i.aih, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1212 = load i16, ptr %2, align 8, !tbaa !2388
  %i.aii = srem i16 %.sroa.0.0.copyload.i1212, 100
  %.sext = sext i16 %i.aii to i32
  %i.aij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sext)
          to label %bb.gd unwind label %bb.gl     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.aik = load i32, ptr %i.kk, align 4, !tbaa !5035
  %i.ail = and i32 %i.aik, 8192
  %.not.i1213 = icmp eq i32 %i.ail, 0
  br i1 %.not.i1213, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aim = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.ain = icmp eq i32 %i.aim, 0
  br i1 %i.ain, label %bb.gf, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214

bb.gf:                                            ; preds = %bb.ge
  %i.aio = load ptr, ptr %10, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 32
  %i.aiq = load i32, ptr %i.aip, align 8, !tbaa !4447
  %i.air = icmp eq i32 %i.aiq, 0
  br i1 %i.air, label %bb.gg, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214

bb.gg:                                            ; preds = %bb.gf
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 232
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !5023 ; 2 uses
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !16
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 48
  %i.aiw = load ptr, ptr %i.aiv, align 8
  %i.aix = invoke noundef i32 %i.aiw(ptr noundef nonnull align 8 dereferenceable(64) %i.ait)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214 unwind label %bb.gh, !inline_history !5039 ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aiy = landingpad { ptr, i32 }
          catch ptr null
  %i.aiz = extractvalue { ptr, i32 } %i.aiy, 0
  call void @__clang_call_terminate(ptr %i.aiz) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214: ; preds = %bb.gd, %bb.ge, %bb.gf, %bb.gg
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.gi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1182
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit2978:                                    ; preds = %bb.fw, %.noexc1194
  %lpad.loopexit2980 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp2979:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp2981 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %bb.fy, %bb.fx, %._crit_edge.i.i1190
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

bb.gm:                                            ; preds = %.loopexit2978, %.loopexit.split-lp2979, %bb.gl, %bb.gk, %bb.gj
  %.pn911 = phi { ptr, i32 } [ %i.ajd, %bb.gl ], [ %i.ajc, %bb.gk ], [ %i.ajb, %bb.gj ], [ %lpad.loopexit2980, %.loopexit2978 ], [ %lpad.loopexit.split-lp2981, %.loopexit.split-lp2979 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.pn911.pn = phi { ptr, i32 } [ %.pn911, %bb.gm ], [ %i.aja, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.aix

bb.go:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i8 37, ptr %i.ed, align 1, !tbaa !27
  %i.aje = load ptr, ptr %0, align 8, !tbaa !16
  %i.ajf = getelementptr i8, ptr %i.aje, i64 -24
  %i.ajg = load i64, ptr %i.ajf, align 8
  %i.ajh = getelementptr inbounds i8, ptr %0, i64 %i.ajg
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !4999
  %.not.i1215 = icmp eq i64 %i.ajj, 0
  br i1 %.not.i1215, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.gr unwind label %.loopexit ; 0 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.0.i1216 = phi ptr [ %i.ajk, %bb.gp ], [ %0, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i8 %.0782, ptr %i.ec, align 1, !tbaa !27
  %i.ajm = load ptr, ptr %.0.i1216, align 8, !tbaa !16
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 -24
  %i.ajo = load i64, ptr %i.ajn, align 8
  %i.ajp = getelementptr inbounds i8, ptr %.0.i1216, i64 %i.ajo
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !4999
  %.not.i1220 = icmp eq i64 %i.ajr, 0
  br i1 %.not.i1220, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1216, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1216, i8 noundef signext %.0782)
          to label %bb.gu unwind label %.loopexit ; 0 uses

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.0.i1221 = phi ptr [ %i.ajs, %bb.gs ], [ %.0.i1216, %bb.gt ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.aju = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i8 %i.aju, ptr %i.eb, align 1, !tbaa !27
  %i.ajv = load ptr, ptr %.0.i1221, align 8, !tbaa !16
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 -24
  %i.ajx = load i64, ptr %i.ajw, align 8
  %i.ajy = getelementptr inbounds i8, ptr %.0.i1221, i64 %i.ajx
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !4999
  %.not.i1225 = icmp eq i64 %i.aka, 0
  br i1 %.not.i1225, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1221, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1229 unwind label %.loopexit ; 0 uses

bb.gw:                                            ; preds = %bb.gu
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1221, i8 noundef signext %i.aju)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1229 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1229: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.gx:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i8 68, ptr %i.ea, align 1, !tbaa !27
  %i.akd = load ptr, ptr %0, align 8, !tbaa !16
  %i.ake = getelementptr i8, ptr %i.akd, i64 -24
  %i.akf = load i64, ptr %i.ake, align 8
  %i.akg = getelementptr inbounds i8, ptr %0, i64 %i.akf
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !4999
  %.not.i1230 = icmp eq i64 %i.aki, 0
  br i1 %.not.i1230, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1234 unwind label %.loopexit ; 0 uses

bb.gz:                                            ; preds = %bb.gx
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1234 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1234: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.ha:                                            ; preds = %bb.h
  br i1 %.not927, label %bb.im, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akl = icmp eq i8 %.0782, 0
  br i1 %i.akl, label %bb.hc, label %bb.id

bb.hc:                                            ; preds = %bb.hb
  %i.akm = load i16, ptr %2, align 8, !tbaa !5026 ; 4 uses
  %.not.i1235 = icmp eq i16 %i.akm, -32768
  br i1 %.not.i1235, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.akn = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 3 uses
  %i.ako = add i8 %i.akn, -1
  %spec.select.i.i1236 = icmp ult i8 %i.ako, 12
  br i1 %spec.select.i.i1236, label %bb.he, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246.thread

bb.he:                                            ; preds = %bb.hd
  %i.akp = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1238 = icmp eq i8 %i.akp, 0
  br i1 %.not8.i1238, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i1239 = icmp eq i8 %i.akn, 2
  %i.akq = and i16 %i.akm, 3
  %i.akr = icmp eq i16 %i.akq, 0
  %or.cond.i1240 = and i1 %i.akr, %.not.i.i1239
  br i1 %or.cond.i1240, label %bb.hg, label %.thread.i.i1241

bb.hg:                                            ; preds = %bb.hf
  %i.aks = srem i16 %i.akm, 100
  %.not.i.i.i1244 = icmp ne i16 %i.aks, 0
  %i.akt = srem i16 %i.akm, 400
  %i.aku = icmp eq i16 %i.akt, 0
  %or.cond.i.i1245 = or i1 %.not.i.i.i1244, %i.aku
  br i1 %or.cond.i.i1245, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246, label %.thread.i.i1241

.thread.i.i1241:                                  ; preds = %bb.hg, %bb.hf
  %i.akv = zext nneg i8 %i.akn to i64
  %22 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.akv
  %i.akw = getelementptr i8, ptr %22, i64 -1
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246: ; preds = %bb.hg, %.thread.i.i1241
  %.sroa.03.0.i.i1243 = phi i8 [ %i.akx, %.thread.i.i1241 ], [ 29, %bb.hg ]
  %.not2815 = icmp ult i8 %.sroa.03.0.i.i1243, %i.akp
  br i1 %.not2815, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1248

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246.thread: ; preds = %bb.he, %bb.hd, %bb.hc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246
  %i.aky = load ptr, ptr %0, align 8, !tbaa !16
  %i.akz = getelementptr i8, ptr %i.aky, i64 -24
  %i.ala = load i64, ptr %i.akz, align 8
  %i.alb = getelementptr inbounds i8, ptr %0, i64 %i.ala ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 32
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !4447
  %i.ale = or i32 %i.ald, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alb, i32 noundef %i.ale)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1248 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1248: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1246
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.alf = load ptr, ptr %0, align 8, !tbaa !16
  %i.alg = getelementptr i8, ptr %i.alf, i64 -24
  %i.alh = load i64, ptr %i.alg, align 8
  %i.ali = getelementptr inbounds i8, ptr %0, i64 %i.alh
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(264) %i.ali)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1250 unwind label %bb.hx

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1250: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1248
  %i.alj = load ptr, ptr %0, align 8, !tbaa !16
  %i.alk = getelementptr i8, ptr %i.alj, i64 -24
  %i.all = load i64, ptr %i.alk, align 8
  %i.alm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.hh unwind label %.loopexit2973

bb.hh:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1250
  %i.aln = getelementptr inbounds i8, ptr %0, i64 %i.all
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %12, ptr noundef nonnull align 8 dereferenceable(264) %i.aln, ptr noundef nonnull align 8 dereferenceable(8) %i.alm)
          to label %bb.hi unwind label %.loopexit2973

bb.hi:                                            ; preds = %bb.hh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #27
  %i.alo = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.alp = getelementptr i8, ptr %i.alo, i64 -24
  %i.alq = load i64, ptr %i.alp, align 8
  %i.alr = getelementptr inbounds i8, ptr %0, i64 %i.alq ; 3 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 225 ; 2 uses
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.alu = trunc nuw i8 %i.alt to i1
  br i1 %i.alu, label %._crit_edge.i.i1256, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 240
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1251 = icmp eq ptr %i.alw, null
  br i1 %.not.i.i.i.i1251, label %bb.hk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1252

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1259 unwind label %.loopexit.split-lp2974

.noexc1259:                                       ; preds = %bb.hk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1252: ; preds = %bb.hj
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 56
  %i.aly = load i8, ptr %i.alx, align 8, !tbaa !4991
  %.not.i1.i.i.i1253 = icmp eq i8 %i.aly, 0
  br i1 %.not.i1.i.i.i1253, label %bb.hl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254

bb.hl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1252
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alw)
          to label %.noexc1260 unwind label %.loopexit2973

.noexc1260:                                       ; preds = %bb.hl
  %i.alz = load ptr, ptr %i.alw, align 8, !tbaa !16
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 48
  %i.amb = load ptr, ptr %i.ama, align 8
  %i.amc = invoke noundef signext i8 %i.amb(ptr noundef nonnull align 8 dereferenceable(570) %i.alw, i8 noundef signext 32)
          to label %.noexc1260._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254_crit_edge unwind label %.loopexit2973, !inline_history !4996 ; 0 uses

.noexc1260._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254_crit_edge: ; preds = %.noexc1260
  %.pre3447.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254: ; preds = %.noexc1260._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1252
  %.pre3447 = phi ptr [ %.pre3447.pre, %.noexc1260._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254_crit_edge ], [ %i.alo, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1252 ]
  store i8 1, ptr %i.als, align 1, !tbaa !4984
  br label %._crit_edge.i.i1256

._crit_edge.i.i1256:                              ; preds = %bb.hi, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254
  %i.amd = phi ptr [ %i.alo, %bb.hi ], [ %.pre3447, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1254 ]
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alr, i64 224
  store i8 48, ptr %i.ame, align 8, !tbaa !4997
  %i.amf = getelementptr i8, ptr %i.amd, i64 -24  ; 2 uses
  %i.amg = load i64, ptr %i.amf, align 8
  %i.amh = getelementptr inbounds i8, ptr %0, i64 %i.amg
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 24
  store i32 130, ptr %i.ami, align 8, !tbaa !4998
  %i.amj = load i64, ptr %i.amf, align 8
  %i.amk = getelementptr inbounds i8, ptr %0, i64 %i.amj
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 16
  store i64 4, ptr %i.aml, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1263 = load i16, ptr %2, align 8, !tbaa !2388
  %i.amm = sext i16 %.sroa.0.0.copyload.i1263 to i32
  %i.amn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.amm)
          to label %bb.hm unwind label %bb.hy     ; 4 uses

bb.hm:                                            ; preds = %._crit_edge.i.i1256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i8 45, ptr %i.dz, align 1, !tbaa !27
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !16
  %i.amp = getelementptr i8, ptr %i.amo, i64 -24
  %i.amq = load i64, ptr %i.amp, align 8
  %i.amr = getelementptr inbounds i8, ptr %i.amn, i64 %i.amq
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !4999
  %.not.i1264 = icmp eq i64 %i.amt, 0
  br i1 %.not.i1264, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.amu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amn, ptr noundef nonnull %i.dz, i64 noundef 1)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.ho:                                            ; preds = %bb.hm
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amn, i8 noundef signext 45)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.amw = load ptr, ptr %0, align 8, !tbaa !16
  %i.amx = getelementptr i8, ptr %i.amw, i64 -24
  %i.amy = load i64, ptr %i.amx, align 8
  %i.amz = getelementptr inbounds i8, ptr %0, i64 %i.amy
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  store i64 2, ptr %i.ana, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1269 = load i8, ptr %i.iv, align 2, !tbaa !27
  %i.anb = zext i8 %.sroa.0.0.copyload.i1269 to i64
  %i.anc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anb)
          to label %_ZNSolsEj.exit1271 unwind label %bb.hz ; 4 uses

_ZNSolsEj.exit1271:                               ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i8 45, ptr %i.dy, align 1, !tbaa !27
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !16
  %i.ane = getelementptr i8, ptr %i.and, i64 -24
  %i.anf = load i64, ptr %i.ane, align 8
  %i.ang = getelementptr inbounds i8, ptr %i.anc, i64 %i.anf
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 16
  %i.ani = load i64, ptr %i.anh, align 8, !tbaa !4999
  %.not.i1272 = icmp eq i64 %i.ani, 0
  br i1 %.not.i1272, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNSolsEj.exit1271
  %i.anj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anc, ptr noundef nonnull %i.dy, i64 noundef 1)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %_ZNSolsEj.exit1271
  %i.ank = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.anc, i8 noundef signext 45)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.anl = load ptr, ptr %0, align 8, !tbaa !16
  %i.anm = getelementptr i8, ptr %i.anl, i64 -24
  %i.ann = load i64, ptr %i.anm, align 8
  %i.ano = getelementptr inbounds i8, ptr %0, i64 %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 16
  store i64 2, ptr %i.anp, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1277 = load i8, ptr %i.iw, align 1, !tbaa !27
  %i.anq = zext i8 %.sroa.0.0.copyload.i1277 to i64
  %i.anr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anq)
          to label %_ZNSolsEj.exit1279 unwind label %bb.ia ; 0 uses

_ZNSolsEj.exit1279:                               ; preds = %bb.hs
  %i.ans = load i32, ptr %i.kj, align 4, !tbaa !5035
  %i.ant = and i32 %i.ans, 8192
  %.not.i1280 = icmp eq i32 %i.ant, 0
  br i1 %.not.i1280, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281, label %bb.ht

bb.ht:                                            ; preds = %_ZNSolsEj.exit1279
  %i.anu = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.anv = icmp eq i32 %i.anu, 0
  br i1 %i.anv, label %bb.hu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281

bb.hu:                                            ; preds = %bb.ht
  %i.anw = load ptr, ptr %11, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 32
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !4447
  %i.anz = icmp eq i32 %i.any, 0
  br i1 %i.anz, label %bb.hv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281

bb.hv:                                            ; preds = %bb.hu
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anw, i64 232
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !5023 ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !16
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 48
  %i.aoe = load ptr, ptr %i.aod, align 8
  %i.aof = invoke noundef i32 %i.aoe(ptr noundef nonnull align 8 dereferenceable(64) %i.aob)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281 unwind label %bb.hw, !inline_history !5039 ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aog = landingpad { ptr, i32 }
          catch ptr null
  %i.aoh = extractvalue { ptr, i32 } %i.aog, 0
  call void @__clang_call_terminate(ptr %i.aoh) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281: ; preds = %_ZNSolsEj.exit1279, %bb.ht, %bb.hu, %bb.hv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.hx:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1248
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

.loopexit2973:                                    ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1250, %bb.hh, %bb.hl, %.noexc1260
  %lpad.loopexit2975 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp2974:                           ; preds = %bb.hk
  %lpad.loopexit.split-lp2976 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge.i.i1256
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

bb.ib:                                            ; preds = %.loopexit2973, %.loopexit.split-lp2974, %bb.ia, %bb.hz, %bb.hy
  %.pn907 = phi { ptr, i32 } [ %i.aol, %bb.ia ], [ %i.aok, %bb.hz ], [ %i.aoj, %bb.hy ], [ %lpad.loopexit2975, %.loopexit2973 ], [ %lpad.loopexit.split-lp2976, %.loopexit.split-lp2974 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hx
  %.pn907.pn = phi { ptr, i32 } [ %.pn907, %bb.ib ], [ %i.aoi, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.aix

bb.id:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i8 37, ptr %i.dx, align 1, !tbaa !27
  %i.aom = load ptr, ptr %0, align 8, !tbaa !16
  %i.aon = getelementptr i8, ptr %i.aom, i64 -24
  %i.aoo = load i64, ptr %i.aon, align 8
  %i.aop = getelementptr inbounds i8, ptr %0, i64 %i.aoo
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 16
  %i.aor = load i64, ptr %i.aoq, align 8, !tbaa !4999
  %.not.i1282 = icmp eq i64 %i.aor, 0
  br i1 %.not.i1282, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aos = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dx, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit

bb.if:                                            ; preds = %bb.id
  %i.aot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.ig unwind label %.loopexit ; 0 uses

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.0.i1283 = phi ptr [ %i.aos, %bb.ie ], [ %0, %bb.if ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i8 %.0782, ptr %i.dw, align 1, !tbaa !27
  %i.aou = load ptr, ptr %.0.i1283, align 8, !tbaa !16
  %i.aov = getelementptr i8, ptr %i.aou, i64 -24
  %i.aow = load i64, ptr %i.aov, align 8
  %i.aox = getelementptr inbounds i8, ptr %.0.i1283, i64 %i.aow
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !4999
  %.not.i1287 = icmp eq i64 %i.aoz, 0
  br i1 %.not.i1287, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.apa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1283, ptr noundef nonnull %i.dw, i64 noundef 1)
          to label %bb.ij unwind label %.loopexit

bb.ii:                                            ; preds = %bb.ig
  %i.apb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1283, i8 noundef signext %.0782)
          to label %bb.ij unwind label %.loopexit ; 0 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.0.i1288 = phi ptr [ %i.apa, %bb.ih ], [ %.0.i1283, %bb.ii ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.apc = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i8 %i.apc, ptr %i.dv, align 1, !tbaa !27
  %i.apd = load ptr, ptr %.0.i1288, align 8, !tbaa !16
  %i.ape = getelementptr i8, ptr %i.apd, i64 -24
  %i.apf = load i64, ptr %i.ape, align 8
  %i.apg = getelementptr inbounds i8, ptr %.0.i1288, i64 %i.apf
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 16
  %i.api = load i64, ptr %i.aph, align 8, !tbaa !4999
  %.not.i1292 = icmp eq i64 %i.api, 0
  br i1 %.not.i1292, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1288, ptr noundef nonnull %i.dv, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1296 unwind label %.loopexit ; 0 uses

bb.il:                                            ; preds = %bb.ij
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1288, i8 noundef signext %i.apc)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1296 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1296: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.im:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store i8 70, ptr %i.du, align 1, !tbaa !27
  %i.apl = load ptr, ptr %0, align 8, !tbaa !16
  %i.apm = getelementptr i8, ptr %i.apl, i64 -24
  %i.apn = load i64, ptr %i.apm, align 8
  %i.apo = getelementptr inbounds i8, ptr %0, i64 %i.apn
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 16
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !4999
  %.not.i1297 = icmp eq i64 %i.apq, 0
  br i1 %.not.i1297, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.apr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.du, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1301 unwind label %.loopexit ; 0 uses

bb.io:                                            ; preds = %bb.im
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1301 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1301: ; preds = %bb.io, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.ip:                                            ; preds = %bb.h, %bb.h
  br i1 %.not927, label %bb.jv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.apt = icmp eq i8 %.0782, 0
  br i1 %i.apt, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.apu = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i1302 = icmp eq i16 %i.apu, -32768
  br i1 %.not.i1302, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apv = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 4 uses
  %i.apw = add i8 %i.apv, -1
  %spec.select.i.i1303 = icmp ult i8 %i.apw, 12
  br i1 %spec.select.i.i1303, label %bb.it, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread

bb.it:                                            ; preds = %bb.is
  %i.apx = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1305 = icmp eq i8 %i.apx, 0
  br i1 %.not8.i1305, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1306 = icmp eq i8 %i.apv, 2
  %i.apy = and i16 %i.apu, 3
  %i.apz = icmp eq i16 %i.apy, 0
  %or.cond.i1307 = and i1 %i.apz, %.not.i.i1306
  br i1 %or.cond.i1307, label %bb.iv, label %.thread.i.i1308

bb.iv:                                            ; preds = %bb.iu
  %i.aqa = srem i16 %i.apu, 100
  %.not.i.i.i1311 = icmp ne i16 %i.aqa, 0
  %i.aqb = srem i16 %i.apu, 400
  %i.aqc = icmp eq i16 %i.aqb, 0
  %or.cond.i.i1312 = or i1 %.not.i.i.i1311, %i.aqc
  br i1 %or.cond.i.i1312, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313, label %.thread.i.i1308

.thread.i.i1308:                                  ; preds = %bb.iv, %bb.iu
  %i.aqd = zext nneg i8 %i.apv to i64
  %23 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aqd
  %i.aqe = getelementptr i8, ptr %23, i64 -1
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313: ; preds = %bb.iv, %.thread.i.i1308
  %.sroa.03.0.i.i1310 = phi i8 [ %i.aqf, %.thread.i.i1308 ], [ 29, %bb.iv ]
  %.not2812 = icmp ult i8 %.sroa.03.0.i.i1310, %i.apx
  br i1 %.not2812, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread, label %.thread.i.i.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread: ; preds = %bb.it, %bb.is, %bb.ir, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313
  %i.aqg = load ptr, ptr %0, align 8, !tbaa !16
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 -24
  %i.aqi = load i64, ptr %i.aqh, align 8
  %i.aqj = getelementptr inbounds i8, ptr %0, i64 %i.aqi ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 32
  %i.aql = load i32, ptr %i.aqk, align 8, !tbaa !4447
  %i.aqm = or i32 %i.aql, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aqj, i32 noundef %i.aqm)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread..thread.i.i.i.i_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread..thread.i.i.i.i_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread
  %.pre3442 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3443 = load i8, ptr %i.iv, align 2, !tbaa !5027
  %.pre3444 = load i8, ptr %i.iw, align 1, !tbaa !5028
  %.pre3445 = load i8, ptr %.0707, align 1, !tbaa !27
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread..thread.i.i.i.i_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313
  %i.aqn = phi i8 [ %.pre3445, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread..thread.i.i.i.i_crit_edge ], [ %i.kz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313 ]
  %i.aqo = phi i8 [ %.pre3444, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread..thread.i.i.i.i_crit_edge ], [ %i.apx, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313 ]
  %i.aqp = phi i8 [ %.pre3443, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread..thread.i.i.i.i_crit_edge ], [ %i.apv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313 ] ; 3 uses
  %i.aqq = phi i16 [ %.pre3442, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313.thread..thread.i.i.i.i_crit_edge ], [ %i.apu, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1313 ]
  %i.aqr = sext i16 %i.aqq to i32
  %i.aqs = icmp ult i8 %i.aqp, 3
  %.neg.i.i1316 = sext i1 %i.aqs to i32
  %i.aqt = add nsw i32 %.neg.i.i1316, %i.aqr      ; 4 uses
  %i.aqu = zext i8 %i.aqp to i32
  %i.aqv = zext i8 %i.aqo to i32
  %i.aqw = add nsw i32 %i.aqt, -399
  %i.aqx = icmp slt i32 %i.aqt, 0
  %i.aqy = select i1 %i.aqx, i32 %i.aqw, i32 %i.aqt
  %i.aqz = sdiv i32 %i.aqy, 400                   ; 2 uses
  %.neg15.i.i1317 = mul nsw i32 %i.aqz, -400
  %i.ara = add nsw i32 %.neg15.i.i1317, %i.aqt    ; 3 uses
  %i.arb = icmp ugt i8 %i.aqp, 2
  %.v.i.i1318 = select i1 %i.arb, i32 -3, i32 9
  %i.arc = add nsw i32 %.v.i.i1318, %i.aqu
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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.arq = add nsw i32 %i.arp, 719471             ; 2 uses
  %i.arr = icmp sgt i32 %i.arp, -719472
  %i.ars = add nsw i32 %i.arp, 573375
  %i.art = select i1 %i.arr, i32 %i.arq, i32 %i.ars
  %i.aru = sdiv i32 %i.art, 146097                ; 2 uses
  %.neg.i.i1320 = mul nsw i32 %i.aru, -146097
  %i.arv = add nsw i32 %.neg.i.i1320, %i.arq      ; 5 uses
  %i.arw = udiv i32 %i.arv, 1460
  %i.arx = udiv i32 %i.arv, 36524
  %i.ary = udiv i32 %i.arv, 146096
  %.neg2874 = add nsw i32 %i.arx, %i.arv
  %i.arz = add nuw nsw i32 %i.ary, %i.arw
  %i.asa = sub nsw i32 %.neg2874, %i.arz          ; 3 uses
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
  %.v.i.i1321 = select i1 %i.ask, i32 3, i32 -9
  %i.asl = add nsw i32 %.v.i.i1321, %i.asj
  %i.asm = icmp ult i32 %i.asl, 3
  %i.asn = zext i1 %i.asm to i32
  %i.aso = add nsw i32 %i.asd, %i.asn             ; 2 uses
  %.sroa.02692.0.extract.trunc = trunc i32 %i.aso to i16
  %.sroa.02685.0.extract.trunc = shl i32 %i.aso, 16
  %sext2813 = add i32 %.sroa.02685.0.extract.trunc, -65536
  %i.asp = ashr exact i32 %sext2813, 16           ; 4 uses
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
  %.v3222 = select i1 %i.atf, i32 -10, i32 -4
  %i.atg = add nsw i32 %i.ate, %.v3222
  %.fr.i.i.i = freeze i32 %i.atg                  ; 2 uses
  %i.ath = srem i32 %.fr.i.i.i, 7
  %i.ati = sub nsw i32 %i.atc, %i.ate
  %i.atj = add nsw i32 %i.ati, -719430
  %i.atk = add i32 %i.atj, %.fr.i.i.i
  %i.atl = sub i32 %i.atk, %i.ath
  %i.atm = icmp slt i32 %i.arp, %i.atl
  %i.atn = sext i1 %i.atm to i16
  %spec.select = add i16 %.sroa.02692.0.extract.trunc, %i.atn
  store i16 %spec.select, ptr %13, align 2
  %i.ato = icmp eq i8 %i.aqn, 71
  br i1 %i.ato, label %bb.ix, label %bb.iz

bb.iw:                                            ; preds = %bb.iy, %bb.ix
  %i.atp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ix:                                            ; preds = %.thread.i.i.i.i
  %i.atq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %13)
          to label %.noexc1333 unwind label %bb.iw ; 0 uses

.noexc1333:                                       ; preds = %bb.ix
  %i.atr = load i16, ptr %13, align 2, !tbaa !5026
  %.not.i1332 = icmp eq i16 %i.atr, -32768
  br i1 %.not.i1332, label %bb.iy, label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit

bb.iy:                                            ; preds = %.noexc1333
  %i.ats = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.45, i64 noundef 20)
          to label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit unwind label %bb.iw ; 0 uses

bb.iz:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.att = load ptr, ptr %0, align 8, !tbaa !16
  %i.atu = getelementptr i8, ptr %i.att, i64 -24
  %i.atv = load i64, ptr %i.atu, align 8
  %i.atw = getelementptr inbounds i8, ptr %0, i64 %i.atv
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(264) %i.atw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1336 unwind label %bb.ji

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1336: ; preds = %bb.iz
  %i.atx = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.aty = getelementptr i8, ptr %i.atx, i64 -24
  %i.atz = load i64, ptr %i.aty, align 8
  %i.aua = getelementptr inbounds i8, ptr %0, i64 %i.atz ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 225 ; 2 uses
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.aud = trunc nuw i8 %i.auc to i1
  br i1 %i.aud, label %._crit_edge.i.i1342, label %bb.ja

bb.ja:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1336
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aua, i64 240
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1337 = icmp eq ptr %i.auf, null
  br i1 %.not.i.i.i.i1337, label %bb.jb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1338

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1345 unwind label %.loopexit.split-lp2969

.noexc1345:                                       ; preds = %bb.jb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1338: ; preds = %bb.ja
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 56
  %i.auh = load i8, ptr %i.aug, align 8, !tbaa !4991
  %.not.i1.i.i.i1339 = icmp eq i8 %i.auh, 0
  br i1 %.not.i1.i.i.i1339, label %bb.jc, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1340

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1338
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.auf)
          to label %.noexc1346 unwind label %.loopexit2968

.noexc1346:                                       ; preds = %bb.jc
  %i.aui = load ptr, ptr %i.auf, align 8, !tbaa !16
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %i.auk = load ptr, ptr %i.auj, align 8
  %i.aul = invoke noundef signext i8 %i.auk(ptr noundef nonnull align 8 dereferenceable(570) %i.auf, i8 noundef signext 32)
          to label %.noexc1346._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1340_crit_edge unwind label %.loopexit2968, !inline_history !4996 ; 0 uses

.noexc1346._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1340_crit_edge: ; preds = %.noexc1346
  %.pre3446.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1340

end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
bb.ks:                                            ; preds = %bb.kq
  %.not.i1394 = icmp eq i64 %.sroa.02677.0.copyload, 12
  %i.ayt = add nsw i64 %.sroa.02677.0.copyload, -12
  br i1 %.not.i1394, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.ks, %bb.kp
  %storemerge = phi i64 [ %i.ayt, %bb.ks ], [ %.sroa.02677.0.copyload, %bb.kr ], [ %.sroa.02677.0.copyload, %bb.kp ] ; 3 uses
  %i.ayu = icmp slt i64 %storemerge, 10
  br i1 %i.ayu, label %bb.kt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kt:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !27
  %i.ayv = load ptr, ptr %0, align 8, !tbaa !16
  %i.ayw = getelementptr i8, ptr %i.ayv, i64 -24
  %i.ayx = load i64, ptr %i.ayw, align 8
  %i.ayy = getelementptr inbounds i8, ptr %0, i64 %i.ayx
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 16
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !4999
  %.not.i1397 = icmp eq i64 %i.aza, 0
  br i1 %.not.i1397, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.azb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1401 unwind label %bb.kw ; 0 uses

bb.kv:                                            ; preds = %bb.kt
  %i.azc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1401 unwind label %bb.kw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1401: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kw:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.kv, %bb.ku
  %i.azd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.ks, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1401, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge2739 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1401 ], [ 12, %bb.ks ], [ 12, %bb.kr ]
  %i.aze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge2739)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481 unwind label %bb.kw ; 0 uses

bb.kx:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #27
  store i8 37, ptr %i.fg, align 1, !tbaa !27
  store i8 79, ptr %i.kf, align 1, !tbaa !27
  %i.azf = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.azf, ptr %i.kg, align 1, !tbaa !27
  %i.azg = trunc i64 %.sroa.02677.0.copyload to i32
  store i32 %i.azg, ptr %i.is, align 8, !tbaa !5031
  %i.azh = load ptr, ptr %0, align 8, !tbaa !16
  %i.azi = getelementptr i8, ptr %i.azh, i64 -24
  %i.azj = load i64, ptr %i.azi, align 8
  %i.azk = getelementptr inbounds i8, ptr %0, i64 %i.azj ; 6 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 232
  %i.azm = load ptr, ptr %i.azl, align 8, !tbaa !5023 ; 2 uses
  %.not.i1404 = icmp eq ptr %i.azm, null
  %i.azn = zext i1 %.not.i1404 to i8
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azk, i64 225 ; 2 uses
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.azq = trunc nuw i8 %i.azp to i1
  br i1 %i.azq, label %._crit_edge.i1410, label %bb.ky

._crit_edge.i1410:                                ; preds = %bb.kx
  %.phi.trans.insert.i1411 = getelementptr inbounds nuw i8, ptr %i.azk, i64 224
  %.pre.i1412 = load i8, ptr %.phi.trans.insert.i1411, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1416

bb.ky:                                            ; preds = %bb.kx
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azk, i64 240
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1405 = icmp eq ptr %i.azs, null
  br i1 %.not.i.i.i1405, label %bb.kz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1406

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1413 unwind label %.loopexit.split-lp2964

.noexc1413:                                       ; preds = %bb.kz
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1406: ; preds = %bb.ky
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 56
  %i.azu = load i8, ptr %i.azt, align 8, !tbaa !4991
  %.not.i1.i.i1407 = icmp eq i8 %i.azu, 0
  br i1 %.not.i1.i.i1407, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1406
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azs, i64 89
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1408

bb.lb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1406
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azs)
          to label %.noexc1414 unwind label %.loopexit2963

.noexc1414:                                       ; preds = %bb.lb
  %i.azx = load ptr, ptr %i.azs, align 8, !tbaa !16
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 48
  %i.azz = load ptr, ptr %i.azy, align 8
  %i.baa = invoke noundef signext i8 %i.azz(ptr noundef nonnull align 8 dereferenceable(570) %i.azs, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1408 unwind label %.loopexit2963, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1408: ; preds = %.noexc1414, %bb.la
  %.0.i.i.i1409 = phi i8 [ %i.azw, %bb.la ], [ %i.baa, %.noexc1414 ] ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azk, i64 224
  store i8 %.0.i.i.i1409, ptr %i.bab, align 8, !tbaa !4997
  store i8 1, ptr %i.azo, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1416

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1416: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1408, %._crit_edge.i1410
  %i.bac = phi i8 [ %.pre.i1412, %._crit_edge.i1410 ], [ %.0.i.i.i1409, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1408 ]
  %i.bad = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.azm, i8 %i.azn, ptr noundef nonnull align 8 dereferenceable(216) %i.azk, i8 noundef signext %i.bac, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.kh)
          to label %bb.lc unwind label %.loopexit2963 ; 0 uses

bb.lc:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

.loopexit2963:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1416, %bb.lb, %.noexc1414
  %lpad.loopexit2965 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp2964:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp2966 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp2964, %.loopexit2963
  %lpad.phi2967 = phi { ptr, i32 } [ %lpad.loopexit2965, %.loopexit2963 ], [ %lpad.loopexit.split-lp2966, %.loopexit.split-lp2964 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #27
  br label %bb.aix

bb.le:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.kz, ptr %i.dk, align 1, !tbaa !27
  %i.bae = load ptr, ptr %0, align 8, !tbaa !16
  %i.baf = getelementptr i8, ptr %i.bae, i64 -24
  %i.bag = load i64, ptr %i.baf, align 8
  %i.bah = getelementptr inbounds i8, ptr %0, i64 %i.bag
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 16
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !4999
  %.not.i1417 = icmp eq i64 %i.baj, 0
  br i1 %.not.i1417, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 unwind label %.loopexit ; 0 uses

bb.lg:                                            ; preds = %bb.le
  %i.bal = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.kz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.lh:                                            ; preds = %bb.h
  br i1 %.not927, label %bb.mn, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bam = icmp eq i8 %.0782, 0
  br i1 %i.bam, label %bb.lj, label %bb.me

bb.lj:                                            ; preds = %bb.li
  %i.ban = load i16, ptr %2, align 8, !tbaa !5026 ; 9 uses
  %.not.i1422 = icmp eq i16 %i.ban, -32768
  br i1 %.not.i1422, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bao = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 8 uses
  %i.bap = add i8 %i.bao, -1
  %spec.select.i.i1423 = icmp ult i8 %i.bap, 12
  br i1 %spec.select.i.i1423, label %bb.ll, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread.thread3517

bb.ll:                                            ; preds = %bb.lk
  %i.baq = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1425 = icmp eq i8 %i.baq, 0
  br i1 %.not8.i1425, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not.i.i1426 = icmp eq i8 %i.bao, 2
  %i.bar = and i16 %i.ban, 3
  %i.bas = icmp eq i16 %i.bar, 0
  %or.cond.i1427 = and i1 %i.bas, %.not.i.i1426
  br i1 %or.cond.i1427, label %bb.ln, label %.thread.i.i1428

bb.ln:                                            ; preds = %bb.lm
  %i.bat = srem i16 %i.ban, 100
  %.not.i.i.i1431 = icmp ne i16 %i.bat, 0
  %i.bau = srem i16 %i.ban, 400
  %i.bav = icmp eq i16 %i.bau, 0
  %or.cond.i.i1432 = or i1 %.not.i.i.i1431, %i.bav
  br i1 %or.cond.i.i1432, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433, label %.thread.i.i1428

.thread.i.i1428:                                  ; preds = %bb.ln, %bb.lm
  %i.baw = zext nneg i8 %i.bao to i64
  %24 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.baw
  %i.bax = getelementptr i8, ptr %24, i64 -1
  %i.bay = load i8, ptr %i.bax, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433: ; preds = %bb.ln, %.thread.i.i1428
  %.sroa.03.0.i.i1430 = phi i8 [ %i.bay, %.thread.i.i1428 ], [ 29, %bb.ln ]
  %.not2807 = icmp ult i8 %.sroa.03.0.i.i1430, %i.baq
  br i1 %.not2807, label %.thread2742, label %.thread2741

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread: ; preds = %bb.ll
  %i.baz = load i8, ptr %i.gw, align 8, !tbaa !5000, !range !659, !noundef !660
  %i.bba = trunc nuw i8 %i.baz to i1
  br i1 %i.bba, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread.thread3517: ; preds = %bb.lk
  %i.bbb = load i8, ptr %i.gw, align 8, !tbaa !5000, !range !659, !noundef !660
  %i.bbc = trunc nuw i8 %i.bbb to i1
  br i1 %i.bbc, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread.thread: ; preds = %bb.lj
  %i.bbd = load i8, ptr %i.gw, align 8, !tbaa !5000, !range !659, !noundef !660
  %i.bbe = trunc nuw i8 %i.bbd to i1
  br i1 %i.bbe, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445.thread, label %bb.md

.thread2742:                                      ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433
  %i.bbf = load i8, ptr %i.gw, align 8, !tbaa !5000, !range !659, !noundef !660
  %i.bbg = trunc nuw i8 %i.bbf to i1
  br i1 %i.bbg, label %.thread2741, label %bb.md

.thread2741:                                      ; preds = %.thread2742, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433
  %.pr = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1437 = icmp eq i8 %.pr, 0
  br i1 %.not8.i1437, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445.thread, label %bb.lo

bb.lo:                                            ; preds = %.thread2741
  %.not.i.i1438 = icmp eq i8 %i.bao, 2
  %i.bbh = and i16 %i.ban, 3
  %i.bbi = icmp eq i16 %i.bbh, 0
  %or.cond.i1439 = and i1 %i.bbi, %.not.i.i1438
  br i1 %or.cond.i1439, label %bb.lp, label %.thread.i.i1440

bb.lp:                                            ; preds = %bb.lo
  %i.bbj = srem i16 %i.ban, 100
  %.not.i.i.i1443 = icmp ne i16 %i.bbj, 0
  %i.bbk = srem i16 %i.ban, 400
  %i.bbl = icmp eq i16 %i.bbk, 0
  %or.cond.i.i1444 = or i1 %.not.i.i.i1443, %i.bbl
  br i1 %or.cond.i.i1444, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445, label %.thread.i.i1440

.thread.i.i1440:                                  ; preds = %bb.lp, %bb.lo
  %i.bbm = zext nneg i8 %i.bao to i64
  %25 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbm
  %i.bbn = getelementptr i8, ptr %25, i64 -1
  %i.bbo = load i8, ptr %i.bbn, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445: ; preds = %bb.lp, %.thread.i.i1440
  %.sroa.03.0.i.i1442 = phi i8 [ %i.bbo, %.thread.i.i1440 ], [ 29, %bb.lp ]
  %.not2808 = icmp ult i8 %.sroa.03.0.i.i1442, %.pr
  br i1 %.not2808, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445.thread, label %bb.lq

bb.lq:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445
  %i.bbp = sext i16 %i.ban to i32                 ; 3 uses
  %i.bbq = icmp samesign ult i8 %i.bao, 3
  %.neg.i.i1446 = sext i1 %i.bbq to i32
  %i.bbr = add nsw i32 %.neg.i.i1446, %i.bbp      ; 4 uses
  %i.bbs = zext nneg i8 %i.bao to i32
  %i.bbt = zext i8 %.pr to i32
  %i.bbu = add nsw i32 %i.bbr, -399
  %i.bbv = icmp slt i32 %i.bbr, 0
  %i.bbw = select i1 %i.bbv, i32 %i.bbu, i32 %i.bbr
  %i.bbx = sdiv i32 %i.bbw, 400                   ; 2 uses
  %.neg15.i.i1447 = mul nsw i32 %i.bbx, -400
  %i.bby = add nsw i32 %.neg15.i.i1447, %i.bbr    ; 3 uses
  %i.bbz = icmp samesign ugt i8 %i.bao, 2
  %.v.i.i1448 = select i1 %i.bbz, i32 -3, i32 9
  %i.bca = add nsw i32 %.v.i.i1448, %i.bbs
  %i.bcb = mul nsw i32 %i.bca, 153
  %i.bcc = add nsw i32 %i.bcb, 2
  %i.bcd = udiv i32 %i.bcc, 5
  %i.bce = lshr i32 %i.bby, 2
  %i.bcf = udiv i32 %i.bby, 100
  %i.bcg = add nsw i32 %i.bbp, -1                 ; 2 uses
  %i.bch = add nsw i32 %i.bbp, -400
  %i.bci = icmp slt i16 %i.ban, 1
  %i.bcj = select i1 %i.bci, i32 %i.bch, i32 %i.bcg
  %i.bck = sdiv i32 %i.bcj, 400                   ; 2 uses
  %.neg15.i.i1460 = mul nsw i32 %i.bck, -400
  %i.bcl = add nsw i32 %.neg15.i.i1460, %i.bcg    ; 3 uses
  %i.bcm = lshr i32 %i.bcl, 2
  %i.bcn = udiv i32 %i.bcl, 100
  %reass.add = sub nsw i32 %i.bby, %i.bcl
  %reass.mul = mul nsw i32 %reass.add, 365
  %reass.add2869 = sub nsw i32 %i.bbx, %i.bck
  %reass.mul2870 = mul nsw i32 %reass.add2869, 146097
  %reass.sub = sub nsw i32 %i.bcn, %i.bcm
  %i.bco = add nsw i32 %reass.sub, -306
  %.neg2864 = add nsw i32 %i.bco, %i.bbt
  %.neg2866 = add nsw i32 %.neg2864, %i.bcd
  %.neg2867 = add nsw i32 %.neg2866, %reass.mul2870
  %.neg2809 = add nsw i32 %.neg2867, %i.bce
  %i.bcp = sub nsw i32 %.neg2809, %i.bcf
  %i.bcq = add nsw i32 %i.bcp, %reass.mul
  br label %bb.lr

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread.thread3517, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1433.thread.thread, %.thread2741, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445
  %i.bcr = load i64, ptr %i.ip, align 8, !tbaa !611
  %i.bcs = load i64, ptr %i.ju, align 8, !tbaa !611
  %i.bct = add nsw i64 %i.bcs, %i.bcr
  %i.bcu = load i64, ptr %i.iq, align 8, !tbaa !5012
  %i.bcv = mul nsw i64 %i.bcu, 60
  %i.bcw = add nsw i64 %i.bct, %i.bcv
  %i.bcx = load i64, ptr %i.io, align 8, !tbaa !5013
  %i.bcy = mul nsw i64 %i.bcx, 3600
  %i.bcz = add nsw i64 %i.bcw, %i.bcy
  %i.bda = load i8, ptr %i.jt, align 8, !tbaa !5014, !range !659, !noundef !660
  %i.bdb = shl nuw nsw i8 %i.bda, 1
  %i.bdc = zext nneg i8 %i.bdb to i64
  %i.bdd = sub nsw i64 1, %i.bdc
  %i.bde = mul nsw i64 %i.bdd, %i.bcz
  %i.bdf = sdiv i64 %i.bde, 86400
  %i.bdg = trunc i64 %i.bdf to i32
  br label %bb.lr

bb.lr:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445.thread, %bb.lq
  %.sroa.02669.0 = phi i32 [ %i.bcq, %bb.lq ], [ %i.bdg, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1445.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.bdh = load ptr, ptr %0, align 8, !tbaa !16
  %i.bdi = getelementptr i8, ptr %i.bdh, i64 -24
  %i.bdj = load i64, ptr %i.bdi, align 8
  %i.bdk = getelementptr inbounds i8, ptr %0, i64 %i.bdj
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(264) %i.bdk)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1465 unwind label %bb.ma

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1465: ; preds = %bb.lr
  %i.bdl = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.bdm = getelementptr i8, ptr %i.bdl, i64 -24
  %i.bdn = load i64, ptr %i.bdm, align 8
  %i.bdo = getelementptr inbounds i8, ptr %0, i64 %i.bdn ; 3 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 225 ; 2 uses
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.bdr = trunc nuw i8 %i.bdq to i1
  br i1 %i.bdr, label %._crit_edge.i.i1471, label %bb.ls

bb.ls:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1465
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdo, i64 240
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1466 = icmp eq ptr %i.bdt, null
  br i1 %.not.i.i.i.i1466, label %bb.lt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1467

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1474 unwind label %.loopexit.split-lp2959

.noexc1474:                                       ; preds = %bb.lt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1467: ; preds = %bb.ls
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 56
  %i.bdv = load i8, ptr %i.bdu, align 8, !tbaa !4991
  %.not.i1.i.i.i1468 = icmp eq i8 %i.bdv, 0
  br i1 %.not.i1.i.i.i1468, label %bb.lu, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469

bb.lu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1467
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdt)
          to label %.noexc1475 unwind label %.loopexit2958

.noexc1475:                                       ; preds = %bb.lu
  %i.bdw = load ptr, ptr %i.bdt, align 8, !tbaa !16
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 48
  %i.bdy = load ptr, ptr %i.bdx, align 8
  %i.bdz = invoke noundef signext i8 %i.bdy(ptr noundef nonnull align 8 dereferenceable(570) %i.bdt, i8 noundef signext 32)
          to label %.noexc1475._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469_crit_edge unwind label %.loopexit2958, !inline_history !4996 ; 0 uses

.noexc1475._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469_crit_edge: ; preds = %.noexc1475
  %.pre3441.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469: ; preds = %.noexc1475._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1467
  %.pre3441 = phi ptr [ %.pre3441.pre, %.noexc1475._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469_crit_edge ], [ %i.bdl, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1467 ]
  store i8 1, ptr %i.bdp, align 1, !tbaa !4984
  br label %._crit_edge.i.i1471

._crit_edge.i.i1471:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1465, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469
  %i.bea = phi ptr [ %i.bdl, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1465 ], [ %.pre3441, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1469 ]
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdo, i64 224
  store i8 48, ptr %i.beb, align 8, !tbaa !4997
  %i.bec = getelementptr i8, ptr %i.bea, i64 -24  ; 2 uses
  %i.bed = load i64, ptr %i.bec, align 8
  %i.bee = getelementptr inbounds i8, ptr %0, i64 %i.bed
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 24
  store i32 130, ptr %i.bef, align 8, !tbaa !4998
  %i.beg = load i64, ptr %i.bec, align 8
  %i.beh = getelementptr inbounds i8, ptr %0, i64 %i.beg
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 16
  store i64 3, ptr %i.bei, align 8, !tbaa !4999
  %i.bej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.02669.0)
          to label %bb.lv unwind label %.loopexit2958 ; 0 uses

bb.lv:                                            ; preds = %._crit_edge.i.i1471
  %i.bek = load i32, ptr %i.ke, align 4, !tbaa !5035
  %i.bel = and i32 %i.bek, 8192
  %.not.i1478 = icmp eq i32 %i.bel, 0
  br i1 %.not.i1478, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bem = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.ben = icmp eq i32 %i.bem, 0
  br i1 %i.ben, label %bb.lx, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479

bb.lx:                                            ; preds = %bb.lw
  %i.beo = load ptr, ptr %15, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 32
  %i.beq = load i32, ptr %i.bep, align 8, !tbaa !4447
  %i.ber = icmp eq i32 %i.beq, 0
  br i1 %i.ber, label %bb.ly, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479

bb.ly:                                            ; preds = %bb.lx
  %i.bes = getelementptr inbounds nuw i8, ptr %i.beo, i64 232
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !5023 ; 2 uses
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !16
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 48
  %i.bew = load ptr, ptr %i.bev, align 8
  %i.bex = invoke noundef i32 %i.bew(ptr noundef nonnull align 8 dereferenceable(64) %i.bet)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479 unwind label %bb.lz, !inline_history !5039 ; 0 uses

bb.lz:                                            ; preds = %bb.ly
  %i.bey = landingpad { ptr, i32 }
          catch ptr null
  %i.bez = extractvalue { ptr, i32 } %i.bey, 0
  call void @__clang_call_terminate(ptr %i.bez) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479: ; preds = %bb.lv, %bb.lw, %bb.lx, %bb.ly
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.ma:                                            ; preds = %bb.lr
  %i.bfa = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit2958:                                    ; preds = %._crit_edge.i.i1471, %bb.lu, %.noexc1475
  %lpad.loopexit2960 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2959:                           ; preds = %bb.lt
  %lpad.loopexit.split-lp2961 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a

bb.wf:                                            ; preds = %bb.we
  %i.che = getelementptr inbounds nuw i8, ptr %i.cgx, i64 240
  %i.chf = load ptr, ptr %i.che, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1873 = icmp eq ptr %i.chf, null
  br i1 %.not.i.i.i1873, label %bb.wg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1874

bb.wg:                                            ; preds = %bb.wf
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1881 unwind label %.loopexit.split-lp2929

.noexc1881:                                       ; preds = %bb.wg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1874: ; preds = %bb.wf
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chf, i64 56
  %i.chh = load i8, ptr %i.chg, align 8, !tbaa !4991
  %.not.i1.i.i1875 = icmp eq i8 %i.chh, 0
  br i1 %.not.i1.i.i1875, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1874
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chf, i64 89
  %i.chj = load i8, ptr %i.chi, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1876

bb.wi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1874
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.chf)
          to label %.noexc1882 unwind label %.loopexit2928

.noexc1882:                                       ; preds = %bb.wi
  %i.chk = load ptr, ptr %i.chf, align 8, !tbaa !16
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chk, i64 48
  %i.chm = load ptr, ptr %i.chl, align 8
  %i.chn = invoke noundef signext i8 %i.chm(ptr noundef nonnull align 8 dereferenceable(570) %i.chf, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1876 unwind label %.loopexit2928, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1876: ; preds = %.noexc1882, %bb.wh
  %.0.i.i.i1877 = phi i8 [ %i.chj, %bb.wh ], [ %i.chn, %.noexc1882 ] ; 2 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %i.cgx, i64 224
  store i8 %.0.i.i.i1877, ptr %i.cho, align 8, !tbaa !4997
  store i8 1, ptr %i.chb, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1884

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1884: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1876, %._crit_edge.i1878
  %i.chp = phi i8 [ %.pre.i1880, %._crit_edge.i1878 ], [ %.0.i.i.i1877, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1876 ]
  %i.chq = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.cgz, i8 %i.cha, ptr noundef nonnull align 8 dereferenceable(216) %i.cgx, i8 noundef signext %i.chp, ptr noundef nonnull %6, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.jn)
          to label %bb.wj unwind label %.loopexit2928 ; 0 uses

bb.wj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

.loopexit2928:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1884, %bb.wi, %.noexc1882
  %lpad.loopexit2930 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

.loopexit.split-lp2929:                           ; preds = %bb.wg
  %lpad.loopexit.split-lp2931 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wk:                                            ; preds = %.loopexit.split-lp2929, %.loopexit2928
  %lpad.phi2932 = phi { ptr, i32 } [ %lpad.loopexit2930, %.loopexit2928 ], [ %lpad.loopexit.split-lp2931, %.loopexit.split-lp2929 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #27
  br label %bb.aix

bb.wl:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 117, ptr %i.bf, align 1, !tbaa !27
  %i.chr = load ptr, ptr %0, align 8, !tbaa !16
  %i.chs = getelementptr i8, ptr %i.chr, i64 -24
  %i.cht = load i64, ptr %i.chs, align 8
  %i.chu = getelementptr inbounds i8, ptr %0, i64 %i.cht
  %i.chv = getelementptr inbounds nuw i8, ptr %i.chu, i64 16
  %i.chw = load i64, ptr %i.chv, align 8, !tbaa !4999
  %.not.i1885 = icmp eq i64 %i.chw, 0
  br i1 %.not.i1885, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.chx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1889 unwind label %.loopexit ; 0 uses

bb.wn:                                            ; preds = %bb.wl
  %i.chy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 117)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1889 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1889: ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.wo:                                            ; preds = %bb.h
  br i1 %.not927, label %bb.yc, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.chz = icmp eq i8 %.0782, 69
  br i1 %i.chz, label %bb.wq, label %bb.wz

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 37, ptr %i.be, align 1, !tbaa !27
  %i.cia = load ptr, ptr %0, align 8, !tbaa !16
  %i.cib = getelementptr i8, ptr %i.cia, i64 -24
  %i.cic = load i64, ptr %i.cib, align 8
  %i.cid = getelementptr inbounds i8, ptr %0, i64 %i.cic
  %i.cie = getelementptr inbounds nuw i8, ptr %i.cid, i64 16
  %i.cif = load i64, ptr %i.cie, align 8, !tbaa !4999
  %.not.i1890 = icmp eq i64 %i.cif, 0
  br i1 %.not.i1890, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %bb.wt unwind label %.loopexit

bb.ws:                                            ; preds = %bb.wq
  %i.cih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.wt unwind label %.loopexit ; 0 uses

bb.wt:                                            ; preds = %bb.wr, %bb.ws
  %.0.i1891 = phi ptr [ %i.cig, %bb.wr ], [ %0, %bb.ws ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 69, ptr %i.bd, align 1, !tbaa !27
  %i.cii = load ptr, ptr %.0.i1891, align 8, !tbaa !16
  %i.cij = getelementptr i8, ptr %i.cii, i64 -24
  %i.cik = load i64, ptr %i.cij, align 8
  %i.cil = getelementptr inbounds i8, ptr %.0.i1891, i64 %i.cik
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cil, i64 16
  %i.cin = load i64, ptr %i.cim, align 8, !tbaa !4999
  %.not.i1895 = icmp eq i64 %i.cin, 0
  br i1 %.not.i1895, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.cio = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1891, ptr noundef nonnull %i.bd, i64 noundef 1)
          to label %bb.ww unwind label %.loopexit

bb.wv:                                            ; preds = %bb.wt
  %i.cip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1891, i8 noundef signext 69)
          to label %bb.ww unwind label %.loopexit ; 0 uses

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.0.i1896 = phi ptr [ %i.cio, %bb.wu ], [ %.0.i1891, %bb.wv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.ciq = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i8 %i.ciq, ptr %i.bc, align 1, !tbaa !27
  %i.cir = load ptr, ptr %.0.i1896, align 8, !tbaa !16
  %i.cis = getelementptr i8, ptr %i.cir, i64 -24
  %i.cit = load i64, ptr %i.cis, align 8
  %i.ciu = getelementptr inbounds i8, ptr %.0.i1896, i64 %i.cit
  %i.civ = getelementptr inbounds nuw i8, ptr %i.ciu, i64 16
  %i.ciw = load i64, ptr %i.civ, align 8, !tbaa !4999
  %.not.i1900 = icmp eq i64 %i.ciw, 0
  br i1 %.not.i1900, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1896, ptr noundef nonnull %i.bc, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1904 unwind label %.loopexit ; 0 uses

bb.wy:                                            ; preds = %bb.ww
  %i.ciy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1896, i8 noundef signext %i.ciq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1904 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1904: ; preds = %bb.wy, %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.wz:                                            ; preds = %bb.wp
  %i.ciz = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i1905 = icmp eq i16 %i.ciz, -32768
  br i1 %.not.i1905, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.cja = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 4 uses
  %i.cjb = add i8 %i.cja, -1
  %spec.select.i.i1906 = icmp ult i8 %i.cjb, 12
  br i1 %spec.select.i.i1906, label %bb.xb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread

bb.xb:                                            ; preds = %bb.xa
  %i.cjc = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1908 = icmp eq i8 %i.cjc, 0
  br i1 %.not8.i1908, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %.not.i.i1909 = icmp eq i8 %i.cja, 2
  %i.cjd = and i16 %i.ciz, 3
  %i.cje = icmp eq i16 %i.cjd, 0
  %or.cond.i1910 = and i1 %i.cje, %.not.i.i1909
  br i1 %or.cond.i1910, label %bb.xd, label %.thread.i.i1911

bb.xd:                                            ; preds = %bb.xc
  %i.cjf = srem i16 %i.ciz, 100
  %.not.i.i.i1914 = icmp ne i16 %i.cjf, 0
  %i.cjg = srem i16 %i.ciz, 400
  %i.cjh = icmp eq i16 %i.cjg, 0
  %or.cond.i.i1915 = or i1 %.not.i.i.i1914, %i.cjh
  br i1 %or.cond.i.i1915, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916, label %.thread.i.i1911

.thread.i.i1911:                                  ; preds = %bb.xd, %bb.xc
  %i.cji = zext nneg i8 %i.cja to i64
  %26 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cji
  %i.cjj = getelementptr i8, ptr %26, i64 -1
  %i.cjk = load i8, ptr %i.cjj, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916: ; preds = %bb.xd, %.thread.i.i1911
  %.sroa.03.0.i.i1913 = phi i8 [ %i.cjk, %.thread.i.i1911 ], [ 29, %bb.xd ]
  %.not2801 = icmp ult i8 %.sroa.03.0.i.i1913, %i.cjc
  br i1 %.not2801, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread: ; preds = %bb.xb, %bb.xa, %bb.wz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916
  %i.cjl = load ptr, ptr %0, align 8, !tbaa !16
  %i.cjm = getelementptr i8, ptr %i.cjl, i64 -24
  %i.cjn = load i64, ptr %i.cjm, align 8
  %i.cjo = getelementptr inbounds i8, ptr %0, i64 %i.cjn ; 2 uses
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 32
  %i.cjq = load i32, ptr %i.cjp, align 8, !tbaa !4447
  %i.cjr = or i32 %i.cjq, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cjo, i32 noundef %i.cjr)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918_crit_edge unwind label %bb.xe

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread
  %.pre3431 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3432 = load i8, ptr %i.iv, align 2, !tbaa !5027
  %.pre3433 = load i8, ptr %i.iw, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918

bb.xe:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread
  %i.cjs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916
  %i.cjt = phi i8 [ %.pre3433, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918_crit_edge ], [ %i.cjc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916 ]
  %i.cju = phi i8 [ %.pre3432, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918_crit_edge ], [ %i.cja, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916 ] ; 3 uses
  %i.cjv = phi i16 [ %.pre3431, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918_crit_edge ], [ %i.ciz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1916 ] ; 2 uses
  %i.cjw = sext i16 %i.cjv to i32                 ; 4 uses
  %i.cjx = icmp ult i8 %i.cju, 3
  %.neg.i.i1919 = sext i1 %i.cjx to i32
  %i.cjy = add nsw i32 %.neg.i.i1919, %i.cjw      ; 4 uses
  %i.cjz = zext i8 %i.cju to i32
  %i.cka = zext i8 %i.cjt to i32
  %i.ckb = add nsw i32 %i.cjy, -399
  %i.ckc = icmp slt i32 %i.cjy, 0
  %i.ckd = select i1 %i.ckc, i32 %i.ckb, i32 %i.cjy
  %i.cke = sdiv i32 %i.ckd, 400                   ; 2 uses
  %.neg15.i.i1920 = mul nsw i32 %i.cke, -400
  %i.ckf = add nsw i32 %.neg15.i.i1920, %i.cjy    ; 3 uses
  %i.ckg = icmp ugt i8 %i.cju, 2
  %.v.i.i1921 = select i1 %i.ckg, i32 -3, i32 9
  %i.ckh = add nsw i32 %.v.i.i1921, %i.cjz
  %i.cki = mul nsw i32 %i.ckh, 153
  %i.ckj = add nsw i32 %i.cki, 2
  %i.ckk = udiv i32 %i.ckj, 5
  %i.ckl = mul nsw i32 %i.ckf, 365
  %i.ckm = lshr i32 %i.ckf, 2
  %i.ckn = udiv i32 %i.ckf, 100
  %i.cko = mul nsw i32 %i.cke, 146097
  %i.ckp = add nuw nsw i32 %i.cka, -719469
  %i.ckq = add nsw i32 %i.ckp, %i.ckk
  %i.ckr = add nsw i32 %i.ckq, %i.cko
  %i.cks = add nsw i32 %i.ckr, %i.ckm
  %i.ckt = add nsw i32 %i.cks, %i.ckl
  %i.cku = sub nsw i32 %i.ckt, %i.ckn             ; 3 uses
  switch i8 %.0782, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481 [
    i8 0, label %bb.xf
    i8 79, label %bb.xt
  ]

bb.xf:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918
  %i.ckv = add nsw i32 %i.cjw, -1                 ; 2 uses
  %i.ckw = add nsw i32 %i.cjw, -400
  %i.ckx = icmp slt i16 %i.cjv, 1
  %i.cky = select i1 %i.ckx, i32 %i.ckw, i32 %i.ckv
  %i.ckz = sdiv i32 %i.cky, 400                   ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %i.ckz, -400
  %i.cla = add nsw i32 %.neg15.i.i.i.i, %i.ckv    ; 3 uses
  %i.clb = mul nsw i32 %i.cla, 365
  %i.clc = lshr i32 %i.cla, 2
  %i.cld = udiv i32 %i.cla, 100
  %i.cle = mul nsw i32 %i.ckz, 146097
  %i.clf = add nsw i32 %i.cle, -719162
  %i.clg = add nsw i32 %i.clf, %i.clc
  %i.clh = add nsw i32 %i.clg, %i.clb
  %i.cli = sub nsw i32 %i.clh, %i.cld             ; 4 uses
  %i.clj = icmp sgt i32 %i.cli, -5
  %i.clk = add nsw i32 %i.cli, 4
  %.in.i.i.i.i1930 = select i1 %i.clj, i32 %i.clk, i32 %i.cli
  %i.cll = urem i32 %.in.i.i.i.i1930, 7           ; 3 uses
  %i.clm = sub nuw nsw i32 -6, %i.cll
  %.not2806 = icmp eq i32 %i.cll, 0
  %i.cln = select i1 %.not2806, i32 0, i32 %i.clm
  %.fr.i.i.i1931 = freeze i32 %i.cln              ; 2 uses
  %i.clo = srem i32 %.fr.i.i.i1931, 7
  %i.clp = add i32 %i.cll, %.fr.i.i.i1931
  %i.clq = sub i32 %i.cli, %i.clp
  %i.clr = add i32 %i.clq, %i.clo                 ; 2 uses
  %i.cls = icmp slt i32 %i.cku, %i.clr
  br i1 %i.cls, label %bb.xg, label %bb.xn

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 48, ptr %i.bb, align 1, !tbaa !27
  %i.clt = load ptr, ptr %0, align 8, !tbaa !16
  %i.clu = getelementptr i8, ptr %i.clt, i64 -24
  %i.clv = load i64, ptr %i.clu, align 8
  %i.clw = getelementptr inbounds i8, ptr %0, i64 %i.clv
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clw, i64 16
  %i.cly = load i64, ptr %i.clx, align 8, !tbaa !4999
  %.not.i1934 = icmp eq i64 %i.cly, 0
  br i1 %.not.i1934, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.clz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bb, i64 noundef 1)
          to label %bb.xj unwind label %bb.xm

bb.xi:                                            ; preds = %bb.xg
  %i.cma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.xj unwind label %bb.xm     ; 0 uses

bb.xj:                                            ; preds = %bb.xh, %bb.xi
  %.0.i1935 = phi ptr [ %i.clz, %bb.xh ], [ %0, %bb.xi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i8 48, ptr %i.ba, align 1, !tbaa !27
  %i.cmb = load ptr, ptr %.0.i1935, align 8, !tbaa !16
  %i.cmc = getelementptr i8, ptr %i.cmb, i64 -24
  %i.cmd = load i64, ptr %i.cmc, align 8
  %i.cme = getelementptr inbounds i8, ptr %.0.i1935, i64 %i.cmd
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.cme, i64 16
  %i.cmg = load i64, ptr %i.cmf, align 8, !tbaa !4999
  %.not.i1939 = icmp eq i64 %i.cmg, 0
  br i1 %.not.i1939, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cmh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1935, ptr noundef nonnull %i.ba, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1943 unwind label %bb.xm ; 0 uses

bb.xl:                                            ; preds = %bb.xj
  %i.cmi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1935, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1943 unwind label %bb.xm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1943: ; preds = %bb.xl, %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.xm:                                            ; preds = %bb.xl, %bb.xk, %bb.xi, %bb.xh
  %i.cmj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xn:                                            ; preds = %bb.xf
  %i.cmk = sub nsw i32 %i.cku, %i.clr             ; 2 uses
  %i.cml = udiv i32 %i.cmk, 7
  %i.cmm = add nuw nsw i32 %i.cml, 1
  %i.cmn = icmp ult i32 %i.cmk, 63
  br i1 %i.cmn, label %bb.xo, label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 48, ptr %i.az, align 1, !tbaa !27
  %i.cmo = load ptr, ptr %0, align 8, !tbaa !16
  %i.cmp = getelementptr i8, ptr %i.cmo, i64 -24
  %i.cmq = load i64, ptr %i.cmp, align 8
  %i.cmr = getelementptr inbounds i8, ptr %0, i64 %i.cmq
  %i.cms = getelementptr inbounds nuw i8, ptr %i.cmr, i64 16
  %i.cmt = load i64, ptr %i.cms, align 8, !tbaa !4999
  %.not.i1946 = icmp eq i64 %i.cmt, 0
  br i1 %.not.i1946, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cmu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1950 unwind label %bb.xr ; 0 uses

bb.xq:                                            ; preds = %bb.xo
  %i.cmv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1950 unwind label %bb.xr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1950: ; preds = %bb.xq, %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xs
  %i.cmw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1950, %bb.xn
  %i.cmx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cmm)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481 unwind label %bb.xr ; 0 uses

bb.xt:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #27
  store i8 37, ptr %i.fn, align 1, !tbaa !27
  store i8 79, ptr %i.ji, align 1, !tbaa !27
  %i.cmy = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.cmy, ptr %i.jj, align 1, !tbaa !27
  %i.cmz = add nsw i32 %i.cjw, -1900
  store i32 %i.cmz, ptr %i.ii, align 4, !tbaa !5033
  %i.cna = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.xu unwind label %.loopexit2923

end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  %.not.i1967 = icmp eq ptr %i.cnv, null
  %i.cnw = zext i1 %.not.i1967 to i8
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cnt, i64 225 ; 2 uses
  %i.cny = load i8, ptr %i.cnx, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.cnz = trunc nuw i8 %i.cny to i1
  br i1 %i.cnz, label %._crit_edge.i1973, label %bb.xx

._crit_edge.i1973:                                ; preds = %bb.xw
  %.phi.trans.insert.i1974 = getelementptr inbounds nuw i8, ptr %i.cnt, i64 224
  %.pre.i1975 = load i8, ptr %.phi.trans.insert.i1974, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1979

bb.xx:                                            ; preds = %bb.xw
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnt, i64 240
  %i.cob = load ptr, ptr %i.coa, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1968 = icmp eq ptr %i.cob, null
  br i1 %.not.i.i.i1968, label %bb.xy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1969

bb.xy:                                            ; preds = %bb.xx
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1976 unwind label %.loopexit.split-lp2924

.noexc1976:                                       ; preds = %bb.xy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1969: ; preds = %bb.xx
  %i.coc = getelementptr inbounds nuw i8, ptr %i.cob, i64 56
  %i.cod = load i8, ptr %i.coc, align 8, !tbaa !4991
  %.not.i1.i.i1970 = icmp eq i8 %i.cod, 0
  br i1 %.not.i1.i.i1970, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1969
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cob, i64 89
  %i.cof = load i8, ptr %i.coe, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1971

bb.ya:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1969
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cob)
          to label %.noexc1977 unwind label %.loopexit2923

.noexc1977:                                       ; preds = %bb.ya
  %i.cog = load ptr, ptr %i.cob, align 8, !tbaa !16
  %i.coh = getelementptr inbounds nuw i8, ptr %i.cog, i64 48
  %i.coi = load ptr, ptr %i.coh, align 8
  %i.coj = invoke noundef signext i8 %i.coi(ptr noundef nonnull align 8 dereferenceable(570) %i.cob, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1971 unwind label %.loopexit2923, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1971: ; preds = %.noexc1977, %bb.xz
  %.0.i.i.i1972 = phi i8 [ %i.cof, %bb.xz ], [ %i.coj, %.noexc1977 ] ; 2 uses
  %i.cok = getelementptr inbounds nuw i8, ptr %i.cnt, i64 224
  store i8 %.0.i.i.i1972, ptr %i.cok, align 8, !tbaa !4997
  store i8 1, ptr %i.cnx, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1979

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1979: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1971, %._crit_edge.i1973
  %i.col = phi i8 [ %.pre.i1975, %._crit_edge.i1973 ], [ %.0.i.i.i1972, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1971 ]
  %i.com = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.cnv, i8 %i.cnw, ptr noundef nonnull align 8 dereferenceable(216) %i.cnt, i8 noundef signext %i.col, ptr noundef nonnull %6, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.jk)
          to label %.thread2749 unwind label %.loopexit2923 ; 0 uses

.thread2749:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.yb:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #27
  br label %_ZNSolsEj.exit2125

bb.yc:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 85, ptr %i.ay, align 1, !tbaa !27
  %i.con = load ptr, ptr %0, align 8, !tbaa !16
  %i.coo = getelementptr i8, ptr %i.con, i64 -24
  %i.cop = load i64, ptr %i.coo, align 8
  %i.coq = getelementptr inbounds i8, ptr %0, i64 %i.cop
  %i.cor = getelementptr inbounds nuw i8, ptr %i.coq, i64 16
  %i.cos = load i64, ptr %i.cor, align 8, !tbaa !4999
  %.not.i1980 = icmp eq i64 %i.cos, 0
  br i1 %.not.i1980, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1984 unwind label %.loopexit ; 0 uses

bb.ye:                                            ; preds = %bb.yc
  %i.cou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 85)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1984 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1984: ; preds = %bb.ye, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.yf:                                            ; preds = %bb.h
  br i1 %.not927, label %bb.zk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.cov = icmp eq i8 %.0782, 69
  br i1 %i.cov, label %bb.yh, label %bb.yq

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 37, ptr %i.ax, align 1, !tbaa !27
  %i.cow = load ptr, ptr %0, align 8, !tbaa !16
  %i.cox = getelementptr i8, ptr %i.cow, i64 -24
  %i.coy = load i64, ptr %i.cox, align 8
  %i.coz = getelementptr inbounds i8, ptr %0, i64 %i.coy
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 16
  %i.cpb = load i64, ptr %i.cpa, align 8, !tbaa !4999
  %.not.i1985 = icmp eq i64 %i.cpb, 0
  br i1 %.not.i1985, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.cpc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ax, i64 noundef 1)
          to label %bb.yk unwind label %.loopexit

bb.yj:                                            ; preds = %bb.yh
  %i.cpd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.yk unwind label %.loopexit ; 0 uses

bb.yk:                                            ; preds = %bb.yi, %bb.yj
  %.0.i1986 = phi ptr [ %i.cpc, %bb.yi ], [ %0, %bb.yj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 69, ptr %i.aw, align 1, !tbaa !27
  %i.cpe = load ptr, ptr %.0.i1986, align 8, !tbaa !16
  %i.cpf = getelementptr i8, ptr %i.cpe, i64 -24
  %i.cpg = load i64, ptr %i.cpf, align 8
  %i.cph = getelementptr inbounds i8, ptr %.0.i1986, i64 %i.cpg
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.cph, i64 16
  %i.cpj = load i64, ptr %i.cpi, align 8, !tbaa !4999
  %.not.i1990 = icmp eq i64 %i.cpj, 0
  br i1 %.not.i1990, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cpk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1986, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %bb.yn unwind label %.loopexit

bb.ym:                                            ; preds = %bb.yk
  %i.cpl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1986, i8 noundef signext 69)
          to label %bb.yn unwind label %.loopexit ; 0 uses

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %.0.i1991 = phi ptr [ %i.cpk, %bb.yl ], [ %.0.i1986, %bb.ym ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cpm = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %i.cpm, ptr %i.av, align 1, !tbaa !27
  %i.cpn = load ptr, ptr %.0.i1991, align 8, !tbaa !16
  %i.cpo = getelementptr i8, ptr %i.cpn, i64 -24
  %i.cpp = load i64, ptr %i.cpo, align 8
  %i.cpq = getelementptr inbounds i8, ptr %.0.i1991, i64 %i.cpp
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cpq, i64 16
  %i.cps = load i64, ptr %i.cpr, align 8, !tbaa !4999
  %.not.i1995 = icmp eq i64 %i.cps, 0
  br i1 %.not.i1995, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cpt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1991, ptr noundef nonnull %i.av, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1999 unwind label %.loopexit ; 0 uses

bb.yp:                                            ; preds = %bb.yn
  %i.cpu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1991, i8 noundef signext %i.cpm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1999 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1999: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.yq:                                            ; preds = %bb.yg
  %i.cpv = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i2000 = icmp eq i16 %i.cpv, -32768
  br i1 %.not.i2000, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cpw = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 4 uses
  %i.cpx = add i8 %i.cpw, -1
  %spec.select.i.i2001 = icmp ult i8 %i.cpx, 12
  br i1 %spec.select.i.i2001, label %bb.ys, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread

bb.ys:                                            ; preds = %bb.yr
  %i.cpy = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 3 uses
  %.not8.i2003 = icmp eq i8 %i.cpy, 0
  br i1 %.not8.i2003, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %.not.i.i2004 = icmp eq i8 %i.cpw, 2
  %i.cpz = and i16 %i.cpv, 3
  %i.cqa = icmp eq i16 %i.cpz, 0
  %or.cond.i2005 = and i1 %i.cqa, %.not.i.i2004
  br i1 %or.cond.i2005, label %bb.yu, label %.thread.i.i2006

bb.yu:                                            ; preds = %bb.yt
  %i.cqb = srem i16 %i.cpv, 100
  %.not.i.i.i2009 = icmp ne i16 %i.cqb, 0
  %i.cqc = srem i16 %i.cpv, 400
  %i.cqd = icmp eq i16 %i.cqc, 0
  %or.cond.i.i2010 = or i1 %.not.i.i.i2009, %i.cqd
  br i1 %or.cond.i.i2010, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011, label %.thread.i.i2006

.thread.i.i2006:                                  ; preds = %bb.yu, %bb.yt
  %i.cqe = zext nneg i8 %i.cpw to i64
  %27 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cqe
  %i.cqf = getelementptr i8, ptr %27, i64 -1
  %i.cqg = load i8, ptr %i.cqf, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011: ; preds = %bb.yu, %.thread.i.i2006
  %.sroa.03.0.i.i2008 = phi i8 [ %i.cqg, %.thread.i.i2006 ], [ 29, %bb.yu ]
  %.not2793 = icmp ult i8 %.sroa.03.0.i.i2008, %i.cpy
  br i1 %.not2793, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread: ; preds = %bb.ys, %bb.yr, %bb.yq, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011
  %i.cqh = load ptr, ptr %0, align 8, !tbaa !16
  %i.cqi = getelementptr i8, ptr %i.cqh, i64 -24
  %i.cqj = load i64, ptr %i.cqi, align 8
  %i.cqk = getelementptr inbounds i8, ptr %0, i64 %i.cqj ; 2 uses
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cqk, i64 32
  %i.cqm = load i32, ptr %i.cql, align 8, !tbaa !4447
  %i.cqn = or i32 %i.cqm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cqk, i32 noundef %i.cqn)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread
  %.pre3428 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3429 = load i8, ptr %i.iv, align 2, !tbaa !5027
  %.pre3430 = load i8, ptr %i.iw, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011
  %i.cqo = phi i8 [ %.pre3430, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013_crit_edge ], [ %i.cpy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011 ]
  %i.cqp = phi i8 [ %.pre3429, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013_crit_edge ], [ %i.cpw, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011 ] ; 3 uses
  %i.cqq = phi i16 [ %.pre3428, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013_crit_edge ], [ %i.cpv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2011 ]
  %i.cqr = sext i16 %i.cqq to i32                 ; 2 uses
  %i.cqs = icmp ult i8 %i.cqp, 3
  %.neg.i.i2014 = sext i1 %i.cqs to i32
  %i.cqt = add nsw i32 %.neg.i.i2014, %i.cqr      ; 4 uses
  %i.cqu = zext i8 %i.cqp to i32
  %i.cqv = zext i8 %i.cqo to i32
  %i.cqw = add nsw i32 %i.cqt, -399
  %i.cqx = icmp slt i32 %i.cqt, 0
  %i.cqy = select i1 %i.cqx, i32 %i.cqw, i32 %i.cqt
  %i.cqz = sdiv i32 %i.cqy, 400                   ; 2 uses
  %.neg15.i.i2015 = mul nsw i32 %i.cqz, -400
  %i.cra = add nsw i32 %.neg15.i.i2015, %i.cqt    ; 3 uses
  %i.crb = icmp ugt i8 %i.cqp, 2
  %.v.i.i2016 = select i1 %i.crb, i32 -3, i32 9
  %i.crc = add nsw i32 %.v.i.i2016, %i.cqu
  %i.crd = mul nsw i32 %i.crc, 153
  %i.cre = add nsw i32 %i.crd, 2
  %i.crf = udiv i32 %i.cre, 5
  %i.crg = mul nsw i32 %i.cra, 365
  %i.crh = lshr i32 %i.cra, 2
  %i.cri = udiv i32 %i.cra, 100
  %i.crj = mul nsw i32 %i.cqz, 146097
  %i.crk = add nuw nsw i32 %i.cqv, -719469
  %i.crl = add nsw i32 %i.crk, %i.crf
  %i.crm = add nsw i32 %i.crl, %i.crj
  %i.crn = add nsw i32 %i.crm, %i.crh
  %i.cro = add nsw i32 %i.crn, %i.crg
  %i.crp = sub nsw i32 %i.cro, %i.cri             ; 6 uses
  switch i8 %.0782, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481 [
    i8 0, label %.thread.i.i.i.i2051
    i8 79, label %bb.zb
  ]

.thread.i.i.i.i2051:                              ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013
  %i.crq = add nsw i32 %i.crp, 719471             ; 2 uses
  %i.crr = icmp sgt i32 %i.crp, -719472
  %i.crs = add nsw i32 %i.crp, 573375
  %i.crt = select i1 %i.crr, i32 %i.crq, i32 %i.crs
  %i.cru = sdiv i32 %i.crt, 146097                ; 2 uses
  %.neg.i.i2018 = mul nsw i32 %i.cru, -146097
  %i.crv = add nsw i32 %.neg.i.i2018, %i.crq      ; 5 uses
  %i.crw = udiv i32 %i.crv, 1460
  %i.crx = udiv i32 %i.crv, 36524
  %i.cry = udiv i32 %i.crv, 146096
  %.neg2841 = add nsw i32 %i.crx, %i.crv
  %i.crz = add nuw nsw i32 %i.cry, %i.crw
  %i.csa = sub nsw i32 %.neg2841, %i.crz          ; 3 uses
  %i.csb = udiv i32 %i.csa, 365                   ; 2 uses
  %i.csc = mul nsw i32 %i.cru, 400
  %i.csd = add nsw i32 %i.csb, %i.csc
  %i.cse = udiv i32 %i.csa, 1460
  %i.csf = udiv i32 %i.csa, 36500
  %.neg36.i.i2020 = mul i32 %i.csb, -365
  %.neg37.i.i2021 = sub nsw i32 %i.crv, %i.cse
  %.neg25.i.i2022 = add nsw i32 %.neg37.i.i2021, %i.csf
  %i.csg = add i32 %.neg25.i.i2022, %.neg36.i.i2020
  %i.csh = mul i32 %i.csg, 5
  %i.csi = add i32 %i.csh, 2                      ; 2 uses
  %i.csj = udiv i32 %i.csi, 153
  %i.csk = icmp ult i32 %i.csi, 1530
  %.v.i.i2023 = select i1 %i.csk, i32 3, i32 -9
  %i.csl = add nsw i32 %.v.i.i2023, %i.csj
  %i.csm = icmp ult i32 %i.csl, 3
  %i.csn = zext i1 %i.csm to i32
  %i.cso = add nsw i32 %i.csd, %i.csn
  %.sroa.02583.0.extract.trunc = shl i32 %i.cso, 16 ; 2 uses
  %sext = add i32 %.sroa.02583.0.extract.trunc, -65536
  %i.csp = ashr exact i32 %sext, 16               ; 4 uses
  %i.csq = add nsw i32 %i.csp, -399
  %i.csr = icmp slt i32 %i.csp, 0
  %i.css = select i1 %i.csr, i32 %i.csq, i32 %i.csp
  %i.cst = sdiv i32 %i.css, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2046 = mul nsw i32 %i.cst, -400
  %i.csu = add nsw i32 %.neg15.i.i.i.i.i2046, %i.csp ; 3 uses
  %i.csv = mul nsw i32 %i.csu, 365
  %i.csw = lshr i32 %i.csu, 2
  %i.csx = udiv i32 %i.csu, 100
  %i.csy = mul nsw i32 %i.cst, 146097
  %i.csz = add nsw i32 %i.csy, 275
  %i.cta = add nsw i32 %i.csz, %i.csw
  %i.ctb = add nsw i32 %i.cta, %i.csv
  %i.ctc = sub nsw i32 %i.ctb, %i.csx             ; 3 uses
  %i.ctd = icmp sgt i32 %i.ctc, 719433
  %.in.i.i.i.i2048.v = select i1 %i.ctd, i32 -719434, i32 -719438
  %.in.i.i.i.i2048 = add nsw i32 %i.ctc, %.in.i.i.i.i2048.v
  %i.cte = urem i32 %.in.i.i.i.i2048, 7           ; 3 uses
  %i.ctf = icmp samesign ult i32 %i.cte, 4
  %.v = select i1 %i.ctf, i32 -10, i32 -4
  %i.ctg = add nsw i32 %i.cte, %.v
  %.fr.i.i.i2050 = freeze i32 %i.ctg              ; 2 uses
  %i.cth = srem i32 %.fr.i.i.i2050, 7
  %i.cti = sub nsw i32 %i.ctc, %i.cte
  %i.ctj = add nsw i32 %i.cti, -719430
  %i.ctk = add i32 %i.ctj, %.fr.i.i.i2050
  %i.ctl = sub i32 %i.ctk, %i.cth                 ; 2 uses
  %i.ctm = icmp slt i32 %i.crp, %i.ctl
  br i1 %i.ctm, label %.thread.i.i.i.i2078, label %bb.yv

.thread.i.i.i.i2078:                              ; preds = %.thread.i.i.i.i2051
  %sext2798 = add i32 %.sroa.02583.0.extract.trunc, -131072
  %i.ctn = ashr exact i32 %sext2798, 16           ; 4 uses
  %i.cto = add nsw i32 %i.ctn, -399
  %i.ctp = icmp slt i32 %i.ctn, 0
  %i.ctq = select i1 %i.ctp, i32 %i.cto, i32 %i.ctn
  %i.ctr = sdiv i32 %i.ctq, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2073 = mul nsw i32 %i.ctr, -400
  %i.cts = add nsw i32 %.neg15.i.i.i.i.i2073, %i.ctn ; 3 uses
  %i.ctt = mul nsw i32 %i.cts, 365
  %i.ctu = lshr i32 %i.cts, 2
  %i.ctv = udiv i32 %i.cts, 100
  %i.ctw = mul nsw i32 %i.ctr, 146097
  %i.ctx = add nsw i32 %i.ctw, 275
  %i.cty = add nsw i32 %i.ctx, %i.ctu
  %i.ctz = add nsw i32 %i.cty, %i.ctt
  %i.cua = sub nsw i32 %i.ctz, %i.ctv             ; 3 uses
  %i.cub = icmp sgt i32 %i.cua, 719433
  %.in.i.i.i.i2075.v = select i1 %i.cub, i32 -719434, i32 -719438
  %.in.i.i.i.i2075 = add nsw i32 %i.cua, %.in.i.i.i.i2075.v
  %i.cuc = urem i32 %.in.i.i.i.i2075, 7           ; 3 uses
  %i.cud = icmp samesign ult i32 %i.cuc, 4
  %.v3220 = select i1 %i.cud, i32 -10, i32 -4
  %i.cue = add nsw i32 %i.cuc, %.v3220
  %.fr.i.i.i2077 = freeze i32 %i.cue              ; 2 uses
  %i.cuf = srem i32 %.fr.i.i.i2077, 7
  %i.cug = sub nsw i32 %i.cua, %i.cuc
  %i.cuh = add nsw i32 %i.cug, -719430
  %i.cui = add i32 %i.cuh, %.fr.i.i.i2077
  %i.cuj = sub i32 %i.cui, %i.cuf
  br label %bb.yv

bb.yv:                                            ; preds = %.thread.i.i.i.i2078, %.thread.i.i.i.i2051
  %.sroa.02587.0 = phi i32 [ %i.cuj, %.thread.i.i.i.i2078 ], [ %i.ctl, %.thread.i.i.i.i2051 ]
  %i.cuk = sub nsw i32 %i.crp, %.sroa.02587.0     ; 2 uses
  %i.cul = sdiv i32 %i.cuk, 7
  %i.cum = add nsw i32 %i.cul, 1
  %i.cun = icmp slt i32 %i.cuk, 63
  br i1 %i.cun, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 48, ptr %i.au, align 1, !tbaa !27
  %i.cuo = load ptr, ptr %0, align 8, !tbaa !16
  %i.cup = getelementptr i8, ptr %i.cuo, i64 -24
  %i.cuq = load i64, ptr %i.cup, align 8
  %i.cur = getelementptr inbounds i8, ptr %0, i64 %i.cuq
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cur, i64 16
  %i.cut = load i64, ptr %i.cus, align 8, !tbaa !4999
  %.not.i2085 = icmp eq i64 %i.cut, 0
  br i1 %.not.i2085, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cuu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2089 unwind label %bb.yz ; 0 uses

bb.yy:                                            ; preds = %bb.yw
  %i.cuv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2089 unwind label %bb.yz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2089: ; preds = %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.za
  %i.cuw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.za:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2089, %bb.yv
  %i.cux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cum)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481 unwind label %bb.yz ; 0 uses

end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  br label %bb.aix

bb.aaa:                                           ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i8 37, ptr %i.as, align 1, !tbaa !27
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cwz, i64 16
  %i.cyd = load i64, ptr %i.cyc, align 8, !tbaa !4999
  %.not.i2139 = icmp eq i64 %i.cyd, 0
  br i1 %.not.i2139, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %bb.aad unwind label %bb.zq

bb.aac:                                           ; preds = %bb.aaa
  %i.cyf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aad unwind label %bb.zq    ; 0 uses

bb.aad:                                           ; preds = %bb.aab, %bb.aac
  %.0.i2140 = phi ptr [ %i.cye, %bb.aab ], [ %0, %bb.aac ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %.0782, ptr %i.ar, align 1, !tbaa !27
  %i.cyg = load ptr, ptr %.0.i2140, align 8, !tbaa !16
  %i.cyh = getelementptr i8, ptr %i.cyg, i64 -24
  %i.cyi = load i64, ptr %i.cyh, align 8
  %i.cyj = getelementptr inbounds i8, ptr %.0.i2140, i64 %i.cyi
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cyj, i64 16
  %i.cyl = load i64, ptr %i.cyk, align 8, !tbaa !4999
  %.not.i2144 = icmp eq i64 %i.cyl, 0
  br i1 %.not.i2144, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cym = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2140, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %bb.aag unwind label %bb.zq

bb.aaf:                                           ; preds = %bb.aad
  %i.cyn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2140, i8 noundef signext %.0782)
          to label %bb.aag unwind label %bb.zq    ; 0 uses

bb.aag:                                           ; preds = %bb.aae, %bb.aaf
  %.0.i2145 = phi ptr [ %i.cym, %bb.aae ], [ %.0.i2140, %bb.aaf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cyo = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.cyo, ptr %i.aq, align 1, !tbaa !27
  %i.cyp = load ptr, ptr %.0.i2145, align 8, !tbaa !16
  %i.cyq = getelementptr i8, ptr %i.cyp, i64 -24
  %i.cyr = load i64, ptr %i.cyq, align 8
  %i.cys = getelementptr inbounds i8, ptr %.0.i2145, i64 %i.cyr
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cys, i64 16
  %i.cyu = load i64, ptr %i.cyt, align 8, !tbaa !4999
  %.not.i2149 = icmp eq i64 %i.cyu, 0
  br i1 %.not.i2149, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cyv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2145, ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2153 unwind label %bb.zq ; 0 uses

bb.aai:                                           ; preds = %bb.aag
  %i.cyw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2145, i8 noundef signext %i.cyo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2153 unwind label %bb.zq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2153: ; preds = %bb.aai, %bb.aah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.aaj:                                           ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 119, ptr %i.ap, align 1, !tbaa !27
  %i.cyx = load ptr, ptr %0, align 8, !tbaa !16
  %i.cyy = getelementptr i8, ptr %i.cyx, i64 -24
  %i.cyz = load i64, ptr %i.cyy, align 8
  %i.cza = getelementptr inbounds i8, ptr %0, i64 %i.cyz
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cza, i64 16
  %i.czc = load i64, ptr %i.czb, align 8, !tbaa !4999
  %.not.i2154 = icmp eq i64 %i.czc, 0
  br i1 %.not.i2154, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.czd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2158 unwind label %.loopexit ; 0 uses

bb.aal:                                           ; preds = %bb.aaj
  %i.cze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 119)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2158 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2158: ; preds = %bb.aal, %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.aam:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.aca, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.czf = icmp eq i8 %.0782, 69
  br i1 %i.czf, label %bb.aao, label %bb.aax

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 37, ptr %i.ao, align 1, !tbaa !27
  %i.czg = load ptr, ptr %0, align 8, !tbaa !16
  %i.czh = getelementptr i8, ptr %i.czg, i64 -24
  %i.czi = load i64, ptr %i.czh, align 8
  %i.czj = getelementptr inbounds i8, ptr %0, i64 %i.czi
  %i.czk = getelementptr inbounds nuw i8, ptr %i.czj, i64 16
  %i.czl = load i64, ptr %i.czk, align 8, !tbaa !4999
  %.not.i2159 = icmp eq i64 %i.czl, 0
  br i1 %.not.i2159, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.czm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %bb.aar unwind label %.loopexit

bb.aaq:                                           ; preds = %bb.aao
  %i.czn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aar unwind label %.loopexit ; 0 uses

bb.aar:                                           ; preds = %bb.aap, %bb.aaq
  %.0.i2160 = phi ptr [ %i.czm, %bb.aap ], [ %0, %bb.aaq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 69, ptr %i.an, align 1, !tbaa !27
  %i.czo = load ptr, ptr %.0.i2160, align 8, !tbaa !16
  %i.czp = getelementptr i8, ptr %i.czo, i64 -24
  %i.czq = load i64, ptr %i.czp, align 8
  %i.czr = getelementptr inbounds i8, ptr %.0.i2160, i64 %i.czq
  %i.czs = getelementptr inbounds nuw i8, ptr %i.czr, i64 16
  %i.czt = load i64, ptr %i.czs, align 8, !tbaa !4999
  %.not.i2164 = icmp eq i64 %i.czt, 0
  br i1 %.not.i2164, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.czu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2160, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %bb.aau unwind label %.loopexit

bb.aat:                                           ; preds = %bb.aar
  %i.czv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2160, i8 noundef signext 69)
          to label %bb.aau unwind label %.loopexit ; 0 uses

bb.aau:                                           ; preds = %bb.aas, %bb.aat
  %.0.i2165 = phi ptr [ %i.czu, %bb.aas ], [ %.0.i2160, %bb.aat ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.czw = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %i.czw, ptr %i.am, align 1, !tbaa !27
  %i.czx = load ptr, ptr %.0.i2165, align 8, !tbaa !16
  %i.czy = getelementptr i8, ptr %i.czx, i64 -24
  %i.czz = load i64, ptr %i.czy, align 8
  %i.daa = getelementptr inbounds i8, ptr %.0.i2165, i64 %i.czz
  %i.dab = getelementptr inbounds nuw i8, ptr %i.daa, i64 16
  %i.dac = load i64, ptr %i.dab, align 8, !tbaa !4999
  %.not.i2169 = icmp eq i64 %i.dac, 0
  br i1 %.not.i2169, label %bb.aaw, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2165, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2173 unwind label %.loopexit ; 0 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.dae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2165, i8 noundef signext %i.czw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2173 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2173: ; preds = %bb.aaw, %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.aax:                                           ; preds = %bb.aan
  %i.daf = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i2174 = icmp eq i16 %i.daf, -32768
  br i1 %.not.i2174, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.dag = load i8, ptr %i.iv, align 2, !tbaa !5027 ; 4 uses
  %i.dah = add i8 %i.dag, -1
  %spec.select.i.i2175 = icmp ult i8 %i.dah, 12
  br i1 %spec.select.i.i2175, label %bb.aaz, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread

bb.aaz:                                           ; preds = %bb.aay
  %i.dai = load i8, ptr %i.iw, align 1, !tbaa !5028 ; 3 uses
  %.not8.i2177 = icmp eq i8 %i.dai, 0
  br i1 %.not8.i2177, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %.not.i.i2178 = icmp eq i8 %i.dag, 2
  %i.daj = and i16 %i.daf, 3
  %i.dak = icmp eq i16 %i.daj, 0
  %or.cond.i2179 = and i1 %i.dak, %.not.i.i2178
  br i1 %or.cond.i2179, label %bb.abb, label %.thread.i.i2180

bb.abb:                                           ; preds = %bb.aba
  %i.dal = srem i16 %i.daf, 100
  %.not.i.i.i2183 = icmp ne i16 %i.dal, 0
  %i.dam = srem i16 %i.daf, 400
  %i.dan = icmp eq i16 %i.dam, 0
  %or.cond.i.i2184 = or i1 %.not.i.i.i2183, %i.dan
  br i1 %or.cond.i.i2184, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185, label %.thread.i.i2180

.thread.i.i2180:                                  ; preds = %bb.abb, %bb.aba
  %i.dao = zext nneg i8 %i.dag to i64
  %28 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.dao
  %i.dap = getelementptr i8, ptr %28, i64 -1
  %i.daq = load i8, ptr %i.dap, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185: ; preds = %bb.abb, %.thread.i.i2180
  %.sroa.03.0.i.i2182 = phi i8 [ %i.daq, %.thread.i.i2180 ], [ 29, %bb.abb ]
  %.not2787 = icmp ult i8 %.sroa.03.0.i.i2182, %i.dai
  br i1 %.not2787, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread: ; preds = %bb.aaz, %bb.aay, %bb.aax, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185
  %i.dar = load ptr, ptr %0, align 8, !tbaa !16
  %i.das = getelementptr i8, ptr %i.dar, i64 -24
  %i.dat = load i64, ptr %i.das, align 8
  %i.dau = getelementptr inbounds i8, ptr %0, i64 %i.dat ; 2 uses
  %i.dav = getelementptr inbounds nuw i8, ptr %i.dau, i64 32
  %i.daw = load i32, ptr %i.dav, align 8, !tbaa !4447
  %i.dax = or i32 %i.daw, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dau, i32 noundef %i.dax)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187_crit_edge unwind label %bb.abc

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread
  %.pre3425 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3426 = load i8, ptr %i.iv, align 2, !tbaa !5027
  %.pre3427 = load i8, ptr %i.iw, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187

bb.abc:                                           ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread
  %i.day = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185
  %i.daz = phi i8 [ %.pre3427, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187_crit_edge ], [ %i.dai, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185 ]
  %i.dba = phi i8 [ %.pre3426, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187_crit_edge ], [ %i.dag, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185 ] ; 3 uses
  %i.dbb = phi i16 [ %.pre3425, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187_crit_edge ], [ %i.daf, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2185 ] ; 2 uses
  %i.dbc = sext i16 %i.dbb to i32                 ; 4 uses
  %i.dbd = icmp ult i8 %i.dba, 3
  %.neg.i.i2188 = sext i1 %i.dbd to i32
  %i.dbe = add nsw i32 %.neg.i.i2188, %i.dbc      ; 4 uses
  %i.dbf = zext i8 %i.dba to i32
  %i.dbg = zext i8 %i.daz to i32
  %i.dbh = add nsw i32 %i.dbe, -399
  %i.dbi = icmp slt i32 %i.dbe, 0
  %i.dbj = select i1 %i.dbi, i32 %i.dbh, i32 %i.dbe
  %i.dbk = sdiv i32 %i.dbj, 400                   ; 2 uses
  %.neg15.i.i2189 = mul nsw i32 %i.dbk, -400
  %i.dbl = add nsw i32 %.neg15.i.i2189, %i.dbe    ; 3 uses
  %i.dbm = icmp ugt i8 %i.dba, 2
  %.v.i.i2190 = select i1 %i.dbm, i32 -3, i32 9
  %i.dbn = add nsw i32 %.v.i.i2190, %i.dbf
  %i.dbo = mul nsw i32 %i.dbn, 153
  %i.dbp = add nsw i32 %i.dbo, 2
  %i.dbq = udiv i32 %i.dbp, 5
  %i.dbr = mul nsw i32 %i.dbl, 365
  %i.dbs = lshr i32 %i.dbl, 2
  %i.dbt = udiv i32 %i.dbl, 100
  %i.dbu = mul nsw i32 %i.dbk, 146097
  %i.dbv = add nuw nsw i32 %i.dbg, -719469
  %i.dbw = add nsw i32 %i.dbv, %i.dbq
  %i.dbx = add nsw i32 %i.dbw, %i.dbu
  %i.dby = add nsw i32 %i.dbx, %i.dbs
  %i.dbz = add nsw i32 %i.dby, %i.dbr
  %i.dca = sub nsw i32 %i.dbz, %i.dbt             ; 3 uses
  switch i8 %.0782, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481 [
    i8 0, label %bb.abd
    i8 79, label %bb.abr
  ]

bb.abd:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187
  %i.dcb = add nsw i32 %i.dbc, -1                 ; 2 uses
  %i.dcc = add nsw i32 %i.dbc, -400
  %i.dcd = icmp slt i16 %i.dbb, 1
  %i.dce = select i1 %i.dcd, i32 %i.dcc, i32 %i.dcb
  %i.dcf = sdiv i32 %i.dce, 400                   ; 2 uses
  %.neg15.i.i.i.i2199 = mul nsw i32 %i.dcf, -400
  %i.dcg = add nsw i32 %.neg15.i.i.i.i2199, %i.dcb ; 3 uses
  %i.dch = mul nsw i32 %i.dcg, 365
  %i.dci = lshr i32 %i.dcg, 2
  %i.dcj = udiv i32 %i.dcg, 100
  %i.dck = mul nsw i32 %i.dcf, 146097
  %i.dcl = add nsw i32 %i.dck, -719162
  %i.dcm = add nsw i32 %i.dcl, %i.dci
  %i.dcn = add nsw i32 %i.dcm, %i.dch
  %i.dco = sub nsw i32 %i.dcn, %i.dcj             ; 4 uses
  %i.dcp = icmp sgt i32 %i.dco, -5
  %i.dcq = add nsw i32 %i.dco, 4
  %.in.i.i.i.i2202 = select i1 %i.dcp, i32 %i.dcq, i32 %i.dco
  %i.dcr = urem i32 %.in.i.i.i.i2202, 7           ; 3 uses
  %i.dcs = sub nsw i32 1, %i.dcr                  ; 2 uses
  %i.dct = sub nuw nsw i32 -5, %i.dcr
  %i.dcu = icmp samesign ugt i32 %i.dcr, 1
  %i.dcv = select i1 %i.dcu, i32 %i.dct, i32 %i.dcs
  %.fr.i.i.i2203 = freeze i32 %i.dcv              ; 2 uses
  %i.dcw = srem i32 %.fr.i.i.i2203, 7
  %i.dcx = add nsw i32 %i.dcs, %i.dco
  %i.dcy = sub i32 %i.dcx, %.fr.i.i.i2203
  %i.dcz = add i32 %i.dcy, %i.dcw                 ; 2 uses
  %i.dda = icmp slt i32 %i.dca, %i.dcz
  br i1 %i.dda, label %bb.abe, label %bb.abl

bb.abe:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 48, ptr %i.al, align 1, !tbaa !27
  %i.ddb = load ptr, ptr %0, align 8, !tbaa !16
  %i.ddc = getelementptr i8, ptr %i.ddb, i64 -24
  %i.ddd = load i64, ptr %i.ddc, align 8
  %i.dde = getelementptr inbounds i8, ptr %0, i64 %i.ddd
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dde, i64 16
  %i.ddg = load i64, ptr %i.ddf, align 8, !tbaa !4999
  %.not.i2208 = icmp eq i64 %i.ddg, 0
  br i1 %.not.i2208, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ddh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %bb.abh unwind label %bb.abk

bb.abg:                                           ; preds = %bb.abe
  %i.ddi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.abh unwind label %bb.abk   ; 0 uses

bb.abh:                                           ; preds = %bb.abf, %bb.abg
  %.0.i2209 = phi ptr [ %i.ddh, %bb.abf ], [ %0, %bb.abg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 48, ptr %i.ak, align 1, !tbaa !27
  %i.ddj = load ptr, ptr %.0.i2209, align 8, !tbaa !16
  %i.ddk = getelementptr i8, ptr %i.ddj, i64 -24
  %i.ddl = load i64, ptr %i.ddk, align 8
  %i.ddm = getelementptr inbounds i8, ptr %.0.i2209, i64 %i.ddl
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.ddm, i64 16
  %i.ddo = load i64, ptr %i.ddn, align 8, !tbaa !4999
  %.not.i2213 = icmp eq i64 %i.ddo, 0
  br i1 %.not.i2213, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.ddp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2209, ptr noundef nonnull %i.ak, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2217 unwind label %bb.abk ; 0 uses

bb.abj:                                           ; preds = %bb.abh
  %i.ddq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2209, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2217 unwind label %bb.abk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2217: ; preds = %bb.abj, %bb.abi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

bb.abk:                                           ; preds = %bb.abj, %bb.abi, %bb.abg, %bb.abf
  %i.ddr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abl:                                           ; preds = %bb.abd
  %i.dds = sub nsw i32 %i.dca, %i.dcz             ; 2 uses
  %i.ddt = udiv i32 %i.dds, 7
  %i.ddu = add nuw nsw i32 %i.ddt, 1
  %i.ddv = icmp ult i32 %i.dds, 63
  br i1 %i.ddv, label %bb.abm, label %bb.abq

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 48, ptr %i.aj, align 1, !tbaa !27
  %i.ddw = load ptr, ptr %0, align 8, !tbaa !16
  %i.ddx = getelementptr i8, ptr %i.ddw, i64 -24
  %i.ddy = load i64, ptr %i.ddx, align 8
  %i.ddz = getelementptr inbounds i8, ptr %0, i64 %i.ddy
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddz, i64 16
  %i.deb = load i64, ptr %i.dea, align 8, !tbaa !4999
  %.not.i2220 = icmp eq i64 %i.deb, 0
  br i1 %.not.i2220, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.dec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2224 unwind label %bb.abp ; 0 uses

bb.abo:                                           ; preds = %bb.abm
  %i.ded = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2224 unwind label %bb.abp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2224: ; preds = %bb.abo, %bb.abn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn, %bb.abq
  %i.dee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2224, %bb.abl
  %i.def = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ddu)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481 unwind label %bb.abp ; 0 uses

bb.abr:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #27
  store i8 37, ptr %i.fq, align 1, !tbaa !27
  store i8 79, ptr %i.ix, align 1, !tbaa !27
  %i.deg = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.deg, ptr %i.iy, align 1, !tbaa !27
  %i.deh = add nsw i32 %i.dbc, -1900
  store i32 %i.deh, ptr %i.ii, align 4, !tbaa !5033
  %i.dei = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.abs unwind label %.loopexit2908
end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.0782, ptr %i.d, align 1, !tbaa !27
  %i.dvy = load ptr, ptr %0, align 8, !tbaa !16
  %i.dvz = getelementptr i8, ptr %i.dvy, i64 -24
  %i.dwa = load i64, ptr %i.dvz, align 8
  %i.dwb = getelementptr inbounds i8, ptr %0, i64 %i.dwa
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dwb, i64 16
  %i.dwd = load i64, ptr %i.dwc, align 8, !tbaa !4999
  %.not.i2478 = icmp eq i64 %i.dwd, 0
  br i1 %.not.i2478, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dwe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2482 unwind label %.loopexit ; 0 uses

bb.aih:                                           ; preds = %bb.aif
  %i.dwf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0782)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2482 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2482: ; preds = %bb.aih, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aii

bb.aii:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2482, %bb.aie
  %i.dwg = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dwg, ptr %i.c, align 1, !tbaa !27
  %i.dwh = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwi = getelementptr i8, ptr %i.dwh, i64 -24
  %i.dwj = load i64, ptr %i.dwi, align 8
  %i.dwk = getelementptr inbounds i8, ptr %0, i64 %i.dwj
  %i.dwl = getelementptr inbounds nuw i8, ptr %i.dwk, i64 16
  %i.dwm = load i64, ptr %i.dwl, align 8, !tbaa !4999
  %.not.i2483 = icmp eq i64 %i.dwm, 0
  br i1 %.not.i2483, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dwn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2487 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dwo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dwg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2487 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2487: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1481: ; preds = %bb.agk, %bb.agh, %bb.lc, %bb.ko, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2217, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2153, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1943, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918, %bb.agz, %bb.aga, %.thread2768, %.thread2757, %.thread2749, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2487, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2472, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2457, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2452, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2447, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2432, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2427, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2405, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2368, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2338, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2323, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2273, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2258, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2173, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2158, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2123, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1999, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1984, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1904, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1889, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1869, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1854, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1849, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1832, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1827, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1812, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1807, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1780, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1765, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1760, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1720, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1715, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1682, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1677, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1657, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1652, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1621, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1616, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1601, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1596, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1561, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1546, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1516, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1501, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1496, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1385, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1370, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1365, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1301, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1296, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1234, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1229, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1168, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1118, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1103, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1062, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1047, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1008, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit993, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit988, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit958, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit953, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1834, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1520, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1121, %bb.fi, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1065, %bb.dw, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14796 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2487 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2472 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit958 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit953 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit993 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit988 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1047 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1008 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1103 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1062 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1168 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1118 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1234 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1229 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1301 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1296 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1370 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1365 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 ], [ 0, %bb.abq ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1501 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1496 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1546 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1516 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1596 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1561 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1621 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1616 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1657 ], [ 0, %bb.pz ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1682 ], [ 0, %bb.oo ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1720 ], [ 0, %bb.rp ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1765 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1760 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1807 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1780 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1832 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1827 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1854 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1849 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1889 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1869 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1984 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1904 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2123 ], [ 0, %bb.za ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2158 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1999 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2258 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2173 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ 0, %bb.acw ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2323 ], [ 0, %bb.adp ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2368 ], [ 0, %bb.zy ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2405 ], [ 0, %bb.aez ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2432 ], [ 0, %bb.lc ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2427 ], [ %.0782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2452 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2447 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2457 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ci ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dw ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1065 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150 ], [ 0, %bb.fi ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1121 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1385 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479 ], [ %.0782, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1520 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1601 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1652 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1677 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1715 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1812 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1834 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2749 ], [ 0, %.thread2757 ], [ 0, %.thread2768 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2273 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2338 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.kz, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1943 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2153 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2217 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.ko ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3781 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2487 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2472 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit958 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit953 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit993 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit988 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1047 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1008 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1103 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1062 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1168 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1118 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1234 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1229 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1301 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1296 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1370 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1365 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1501 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1496 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1546 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1516 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1596 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1561 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1621 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1616 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1657 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1682 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1720 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1765 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1760 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1807 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1780 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1832 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1827 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1854 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1849 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1889 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1869 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1984 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1904 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2123 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2158 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1999 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2258 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2173 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2323 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2368 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2405 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2432 ], [ null, %bb.lc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2427 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2452 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2447 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2457 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ci ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dw ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1065 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150 ], [ null, %bb.fi ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1121 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1385 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479 ], [ %.0707, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1520 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1601 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1652 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1677 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1715 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1812 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1834 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2749 ], [ null, %.thread2757 ], [ null, %.thread2768 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2273 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2338 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0778, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1943 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2153 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2217 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.ko ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7777 = phi i8 [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2487 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2472 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit958 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit953 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit993 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit988 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1047 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1008 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1103 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1062 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1168 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1118 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1234 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1229 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1301 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1296 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1370 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1365 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1421 ], [ %.0770, %bb.abq ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1501 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1496 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1546 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1516 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1596 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1561 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1621 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1616 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1657 ], [ %.0770, %bb.pz ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1682 ], [ %.3773, %bb.oo ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1720 ], [ %.0770, %bb.rp ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1765 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1760 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1807 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1780 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1832 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1827 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1854 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1849 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1889 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1869 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1984 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1904 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2123 ], [ %.0770, %bb.za ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2158 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1999 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2258 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2173 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2296 ], [ %.0770, %bb.acw ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2323 ], [ %.0770, %bb.adp ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2368 ], [ %.0770, %bb.zy ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2405 ], [ %.0770, %bb.aez ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2432 ], [ %.1771, %bb.lc ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2427 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2452 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2447 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2457 ], [ %.0770, %bb.t ], [ %.0770, %bb.aq ], [ %.0770, %bb.ci ], [ %.0770, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0770, %bb.dw ], [ %.0770, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1065 ], [ %.0770, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1150 ], [ %.0770, %bb.fi ], [ %.0770, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1121 ], [ %.0770, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1214 ], [ %.0770, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1281 ], [ %.0770, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1385 ], [ %.0770, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1479 ], [ %.0770, %bb.ahm ], [ %.0770, %bb.md ], [ %.0770, %bb.no ], [ %.0770, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1520 ], [ %.3773, %bb.oj ], [ %.0770, %bb.ni ], [ %.3773, %bb.ov ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1601 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1652 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1677 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1715 ], [ %.0770, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm2EEE.exit ], [ %.5775, %bb.tw ], [ %.0770, %bb.ss ], [ %.5775, %bb.ud ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1812 ], [ %.0770, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1834 ], [ %.5775, %bb.tx ], [ %.0770, %bb.wj ], [ %.0770, %bb.wb ], [ %.0770, %.thread2749 ], [ %.0770, %.thread2757 ], [ %.0770, %.thread2768 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2273 ], [ %.0770, %bb.adj ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2338 ], [ %.0770, %bb.aga ], [ %.0770, %bb.qt ], [ %.0770, %bb.wc ], [ %.0770, %bb.agz ], [ %.0770, %bb.xs ], [ %.0770, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1918 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1943 ], [ %.0770, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2013 ], [ %.0770, %bb.zs ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2153 ], [ %.0770, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2187 ], [ %.0770, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2217 ], [ %.1771, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1771, %bb.ko ], [ %.0770, %bb.agh ], [ %.0770, %bb.agk ]
  %i.dwp = getelementptr inbounds nuw i8, ptr %.0707, i64 1
  br label %bb.h, !llvm.loop !5041

bb.ail:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !27
  %i.dwq = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwr = getelementptr i8, ptr %i.dwq, i64 -24
  %i.dws = load i64, ptr %i.dwr, align 8
  %i.dwt = getelementptr inbounds i8, ptr %0, i64 %i.dws
  %i.dwu = getelementptr inbounds nuw i8, ptr %i.dwt, i64 16
  %i.dwv = load i64, ptr %i.dwu, align 8, !tbaa !4999
  %.not.i2488 = icmp eq i64 %i.dwv, 0
  br i1 %.not.i2488, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2492 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dwx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2492 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2492: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2492, %bb.ail
  %.not827 = icmp eq i8 %.0782, 0
  br i1 %.not827, label %_ZNSolsEj.exit2125, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0782, ptr %i.a, align 1, !tbaa !27
  %i.dwy = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwz = getelementptr i8, ptr %i.dwy, i64 -24
  %i.dxa = load i64, ptr %i.dwz, align 8
  %i.dxb = getelementptr inbounds i8, ptr %0, i64 %i.dxa
  %i.dxc = getelementptr inbounds nuw i8, ptr %i.dxb, i64 16
  %i.dxd = load i64, ptr %i.dxc, align 8, !tbaa !4999
  %.not.i2493 = icmp eq i64 %i.dxd, 0
  br i1 %.not.i2493, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2497 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dxf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0782)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2497 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2497: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2125

_ZNSolsEj.exit2125:                               ; preds = %bb.bz, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2497, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.dxg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dxh = load i32, ptr %i.dxg, align 4, !tbaa !5035
  %i.dxi = and i32 %i.dxh, 8192
  %.not.i2498 = icmp eq i32 %i.dxi, 0
  br i1 %.not.i2498, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2499, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2125
  %i.dxj = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.dxk = icmp eq i32 %i.dxj, 0
  br i1 %i.dxk, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2499

bb.aiu:                                           ; preds = %bb.ait
  %i.dxl = load ptr, ptr %5, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.dxm = getelementptr inbounds nuw i8, ptr %i.dxl, i64 32
  %i.dxn = load i32, ptr %i.dxm, align 8, !tbaa !4447
  %i.dxo = icmp eq i32 %i.dxn, 0
  br i1 %i.dxo, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2499

bb.aiv:                                           ; preds = %bb.aiu
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dxl, i64 232
  %i.dxq = load ptr, ptr %i.dxp, align 8, !tbaa !5023 ; 2 uses
  %i.dxr = load ptr, ptr %i.dxq, align 8, !tbaa !16
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxr, i64 48
  %i.dxt = load ptr, ptr %i.dxs, align 8
  %i.dxu = invoke noundef i32 %i.dxt(ptr noundef nonnull align 8 dereferenceable(64) %i.dxq)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2499 unwind label %bb.aiw, !inline_history !5039 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dxv = landingpad { ptr, i32 }
          catch ptr null
  %i.dxw = extractvalue { ptr, i32 } %i.dxv, 0
  call void @__clang_call_terminate(ptr %i.dxw) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2499: ; preds = %_ZNSolsEj.exit2125, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn929.pn = phi { ptr, i32 } [ %i.lb, %bb.j ], [ %lpad.phi2967, %bb.ld ], [ %lpad.phi3017, %bb.u ], [ %lpad.phi3012, %bb.ar ], [ %lpad.phi2902, %bb.adq ], [ %i.drt, %bb.agl ], [ %lpad.phi2997, %bb.dx ], [ %.pn911.pn, %bb.gn ], [ %.pn907.pn, %bb.ic ], [ %.pn903.pn, %bb.jl ], [ %i.cmw, %bb.xr ], [ %i.tx, %bb.ca ], [ %lpad.phi2987, %bb.fj ], [ %i.blt, %bb.op ], [ %lpad.phi2952, %bb.ow ], [ %lpad.phi2947, %bb.qa ], [ %i.dee, %bb.abp ], [ %lpad.phi2942, %bb.rq ], [ %i.bxy, %bb.st ], [ %i.bxw, %bb.sr ], [ %lpad.phi2937, %bb.ue ], [ %lpad.phi2957, %bb.np ], [ %lpad.phi2932, %bb.wk ], [ %i.ddr, %bb.abk ], [ %i.cjs, %bb.xe ], [ %lpad.phi2917, %bb.zz ], [ %lpad.phi2907, %bb.acx ], [ %i.day, %bb.abc ], [ %.pn837.pn, %bb.afa ], [ %i.cuw, %bb.yz ], [ %.pn919, %bb.dq ], [ %.pn915, %bb.fc ], [ %i.big, %bb.nh ], [ %i.cgs, %bb.wd ], [ %i.bsl, %bb.qu ], [ %i.cxd, %bb.zq ], [ %lpad.phi2912, %bb.abt ], [ %i.djp, %bb.adi ], [ %lpad.phi3007, %bb.cj ], [ %lpad.phi2922, %bb.zd ], [ %.pn894, %bb.mc ], [ %i.dpm, %bb.afk ], [ %i.brv, %bb.qs ], [ %lpad.phi2927, %bb.xv ], [ %i.cmj, %bb.xm ], [ %i.azd, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn929.pn.pn = phi { ptr, i32 } [ %.pn929.pn, %bb.aix ], [ %i.la, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn929.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !5026   ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !5027  ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !5028  ; 2 uses
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.n, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !5042
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !5042
  %i.t = icmp ult i8 %i.s, 7
  br i1 %i.t, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !5042
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !5042
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4447
  %i.ag = or i32 %i.af, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !5028 ; 3 uses
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
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
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
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !5042 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 7
  %i.bx = icmp ne i8 %i.bv, %i.bt
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !16
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !4447
  %i.ce = or i32 %i.cd, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !27
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

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !5035
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !4447
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !5023 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit unwind label %bb.e, !inline_history !5039 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #27
  ret void

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #30
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !5014, !range !659, !noundef !660
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !27
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !4999
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
  %i.q = load i64, ptr %1, align 8, !tbaa !611    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !27
  %i.s = load ptr, ptr %0, align 8, !tbaa !16
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !4999
  %.not.i12 = icmp eq i64 %i.x, 0
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !5013
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !27
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
end_hunk_6
begin_hunk_7_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  store i8 37, ptr %i.ew, align 1, !tbaa !27
  %i.ow = load ptr, ptr %0, align 8, !tbaa !16
  %i.ox = getelementptr i8, ptr %i.ow, i64 -24
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds i8, ptr %0, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !4999
  %.not.i976 = icmp eq i64 %i.pb, 0
  br i1 %.not.i976, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %bb.av unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i977 = phi ptr [ %i.pc, %bb.at ], [ %0, %bb.au ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store i8 %.0783, ptr %i.ev, align 1, !tbaa !27
  %i.pe = load ptr, ptr %.0.i977, align 8, !tbaa !16
  %i.pf = getelementptr i8, ptr %i.pe, i64 -24
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %.0.i977, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !4999
  %.not.i981 = icmp eq i64 %i.pj, 0
  br i1 %.not.i981, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i977, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i977, i8 noundef signext %.0783)
          to label %bb.ay unwind label %.loopexit ; 0 uses

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0.i982 = phi ptr [ %i.pk, %bb.aw ], [ %.0.i977, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.pm = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i8 %i.pm, ptr %i.eu, align 1, !tbaa !27
  %i.pn = load ptr, ptr %.0.i982, align 8, !tbaa !16
  %i.po = getelementptr i8, ptr %i.pn, i64 -24
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = getelementptr inbounds i8, ptr %.0.i982, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !4999
  %.not.i986 = icmp eq i64 %i.ps, 0
  br i1 %.not.i986, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i982, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 unwind label %.loopexit ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i982, i8 noundef signext %i.pm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.bb:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i8 %i.la, ptr %i.et, align 1, !tbaa !27
  %i.pv = load ptr, ptr %0, align 8, !tbaa !16
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr %0, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !4999
  %.not.i991 = icmp eq i64 %i.qa, 0
  br i1 %.not.i991, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.et, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 unwind label %.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bb
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.be:                                            ; preds = %bb.h, %bb.h
  br i1 %.not928, label %bb.ck, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qd = icmp eq i8 %.0783, 79
  br i1 %i.qd, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i8 37, ptr %i.es, align 1, !tbaa !27
  %i.qe = load ptr, ptr %0, align 8, !tbaa !16
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %0, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !4999
  %.not.i996 = icmp eq i64 %i.qj, 0
  br i1 %.not.i996, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.bj unwind label %.loopexit ; 0 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.0.i997 = phi ptr [ %i.qk, %bb.bh ], [ %0, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store i8 79, ptr %i.er, align 1, !tbaa !27
  %i.qm = load ptr, ptr %.0.i997, align 8, !tbaa !16
  %i.qn = getelementptr i8, ptr %i.qm, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %.0.i997, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !4999
  %.not.i1001 = icmp eq i64 %i.qr, 0
  br i1 %.not.i1001, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i997, ptr noundef nonnull %i.er, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i997, i8 noundef signext 79)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i1002 = phi ptr [ %i.qs, %bb.bk ], [ %.0.i997, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.qu = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i8 %i.qu, ptr %i.eq, align 1, !tbaa !27
  %i.qv = load ptr, ptr %.0.i1002, align 8, !tbaa !16
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr %.0.i1002, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !4999
  %.not.i1006 = icmp eq i64 %i.ra, 0
  br i1 %.not.i1006, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1002, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 unwind label %.loopexit ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1002, i8 noundef signext %i.qu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.bp:                                            ; preds = %bb.bf
  %i.rd = load i16, ptr %2, align 8, !tbaa !5026  ; 4 uses
  %.not.i1011 = icmp eq i16 %i.rd, -32768
  br i1 %.not.i1011, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.re = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.rf = add i8 %i.re, -1
  %spec.select.i.i1012 = icmp ult i8 %i.rf, 12
  br i1 %spec.select.i.i1012, label %bb.br, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.rg = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
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
  %.not.i.i.i1014 = icmp ne i16 %i.rj, 0
  %i.rk = srem i16 %i.rd, 400
  %i.rl = icmp eq i16 %i.rk, 0
  %or.cond.i.i = or i1 %.not.i.i.i1014, %i.rl
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs
  %i.rm = zext nneg i8 %i.re to i64
  %20 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.rm
  %i.rn = getelementptr i8, ptr %20, i64 -1
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.bt, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.ro, %.thread.i.i ], [ 29, %bb.bt ]
  %.not2820 = icmp ult i8 %.sroa.03.0.i.i, %i.rg
  br i1 %.not2820, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rp = load ptr, ptr %0, align 8, !tbaa !16
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds i8, ptr %0, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !4447
  %i.rv = or i32 %i.ru, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rs, i32 noundef %i.rv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %.pre3454 = load i8, ptr %.0707, align 1, !tbaa !27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rw = phi i8 [ %.pre3454, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ]
  %i.rx = icmp eq i8 %i.rw, 99
  br i1 %i.rx, label %bb.bu, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017

bb.bu:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.ry = load i8, ptr %i.gw, align 8, !tbaa !5059, !range !659, !noundef !660
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sa = load ptr, ptr %0, align 8, !tbaa !16
  %i.sb = getelementptr i8, ptr %i.sa, i64 -24
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds i8, ptr %0, i64 %i.sc ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !4447
  %i.sg = or i32 %i.sf, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sd, i32 noundef %i.sg)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge: ; preds = %bb.bv
  %.pre3455 = load i8, ptr %.0707, align 1, !tbaa !27
  %i.sh = icmp eq i8 %.pre3455, 99
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge, %bb.bu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.si = phi i1 [ %i.sh, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge ], [ true, %bb.bu ], [ false, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.sj = load i16, ptr %2, align 8, !tbaa !5026
  %i.sk = sext i16 %i.sj to i32                   ; 2 uses
  %i.sl = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.sm = icmp ult i8 %i.sl, 3
  %.neg.i.i = sext i1 %i.sm to i32
  %i.sn = add nsw i32 %.neg.i.i, %i.sk            ; 4 uses
  %i.so = zext i8 %i.sl to i32                    ; 2 uses
  %i.sp = load i8, ptr %i.ix, align 1, !tbaa !5028
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

bb.bw:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017
  %.sroa.0.0.copyload.i.i1018 = load i64, ptr %i.iq, align 8, !tbaa !611
  %i.td = trunc i64 %.sroa.0.0.copyload.i.i1018 to i32
  store i32 %i.td, ptr %6, align 8, !tbaa !5029
  %.sroa.0.0.copyload.i = load i64, ptr %i.ir, align 8, !tbaa !611
  %i.te = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.te, ptr %i.is, align 4, !tbaa !5030
  %.sroa.0.0.copyload.i1019 = load i64, ptr %i.ip, align 8, !tbaa !611
  %i.tf = trunc i64 %.sroa.0.0.copyload.i1019 to i32
  store i32 %i.tf, ptr %i.it, align 8, !tbaa !5031
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017
  store i32 %i.sq, ptr %i.km, align 4, !tbaa !5032
  %i.tg = add i8 %i.sl, -1
  %spec.select.i.i1022 = icmp ult i8 %i.tg, 12
  br i1 %spec.select.i.i1022, label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.th = load ptr, ptr %0, align 8, !tbaa !16
  %i.ti = getelementptr i8, ptr %i.th, i64 -24
  %i.tj = load i64, ptr %i.ti, align 8
  %i.tk = getelementptr inbounds i8, ptr %0, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !4447
  %i.tn = or i32 %i.tm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.tk, i32 noundef %i.tn)
          to label %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge unwind label %bb.ca

._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge: ; preds = %bb.by
  %.sroa.0.0.copyload.i1026.pre = load i16, ptr %2, align 8, !tbaa !2388
  %.pre3464 = sext i16 %.sroa.0.0.copyload.i1026.pre to i32
  br label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025

_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025: ; preds = %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge, %bb.bx
  %.pre-phi = phi i32 [ %.pre3464, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge ], [ %i.sk, %bb.bx ]
  %.0.i1023 = phi i32 [ 0, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge ], [ %i.so, %bb.bx ]
  %i.to = add nsw i32 %.0.i1023, -1
  store i32 %i.to, ptr %i.kd, align 8, !tbaa !5025
  %i.tp = add nsw i32 %.pre-phi, -1900
  store i32 %i.tp, ptr %i.ij, align 4, !tbaa !5033
  %i.tq = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025
  store i32 %i.tq, ptr %i.ja, align 8, !tbaa !5021
  %i.tr = load ptr, ptr %0, align 8, !tbaa !16
  %i.ts = getelementptr i8, ptr %i.tr, i64 -24    ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = getelementptr inbounds i8, ptr %0, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !4447
  %i.tx = and i32 %i.tw, 5
  %.not2821 = icmp eq i32 %i.tx, 0
  br i1 %.not2821, label %bb.cb, label %_ZNSolsEj.exit2127

bb.ca:                                            ; preds = %bb.by, %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.cb:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i1027 = load i16, ptr %2, align 8, !tbaa !2388 ; 2 uses
  %i.tz = sext i16 %.sroa.0.0.copyload.i1027 to i32 ; 2 uses
  %i.ua = add nsw i32 %i.tz, -1                   ; 2 uses
  %i.ub = add nsw i32 %i.tz, -400
  %i.uc = icmp slt i16 %.sroa.0.0.copyload.i1027, 1
  %i.ud = select i1 %i.uc, i32 %i.ub, i32 %i.ua
  %i.ue = sdiv i32 %i.ud, 400                     ; 2 uses
  %.neg15.i.i1029 = mul nsw i32 %i.ue, -400
  %i.uf = add nsw i32 %.neg15.i.i1029, %i.ua      ; 3 uses
  %i.ug = lshr i32 %i.uf, 2
  %i.uh = udiv i32 %i.uf, 100
  %reass.add2890 = sub nsw i32 %i.sv, %i.uf
  %reass.mul2891 = mul nsw i32 %reass.add2890, 365
  %reass.add2893 = sub nsw i32 %i.su, %i.ue
  %reass.mul2894 = mul nsw i32 %reass.add2893, 146097
  %.neg2822 = add nuw nsw i32 %i.sq, -307
  %i.ui = add nsw i32 %.neg2822, %i.ta
  %i.uj = add nsw i32 %i.ui, %i.tb
  %i.uk = add nsw i32 %i.uj, %reass.mul2894
  %i.ul = add nuw nsw i32 %i.tc, %i.ug
  %i.um = sub nsw i32 %i.uk, %i.ul
  %i.un = add nsw i32 %i.um, %i.uh
  %i.uo = add nsw i32 %i.un, %reass.mul2891
  store i32 %i.uo, ptr %i.jb, align 4, !tbaa !5034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.51, i64 3, i1 false)
  %i.up = icmp eq i8 %.0783, 69
  br i1 %i.up, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 69, ptr %i.kt, align 1, !tbaa !27
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0806 = phi ptr [ %i.ku, %bb.cc ], [ %i.kt, %bb.cb ] ; 2 uses
  %i.uq = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.uq, ptr %.0806, align 1, !tbaa !27
  %i.ur = load i64, ptr %i.ts, align 8
  %i.us = getelementptr inbounds i8, ptr %0, i64 %i.ur ; 6 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 232
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !5023 ; 2 uses
  %.not.i1032 = icmp eq ptr %i.uu, null
  %i.uv = zext i1 %.not.i1032 to i8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 225 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %._crit_edge.i1038, label %bb.ce

._crit_edge.i1038:                                ; preds = %bb.cd
  %.phi.trans.insert.i1039 = getelementptr inbounds nuw i8, ptr %i.us, i64 224
  %.pre.i1040 = load i8, ptr %.phi.trans.insert.i1039, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1044

bb.ce:                                            ; preds = %bb.cd
  %i.uz = getelementptr inbounds nuw i8, ptr %i.us, i64 240
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1033 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i1033, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1034

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt16__throw_bad_castv() #31
end_hunk_7
begin_hunk_8_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.ex:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit1138
  %i.adn = load i32, ptr %i.kq, align 4, !tbaa !5035
  %i.ado = and i32 %i.adn, 8192
  %.not.i1151 = icmp eq i32 %i.ado, 0
  br i1 %.not.i1151, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.adp = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %bb.ez, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152

bb.ez:                                            ; preds = %bb.ey
  %i.adr = load ptr, ptr %9, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !4447
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.fa, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152

bb.fa:                                            ; preds = %bb.ez
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 232
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !5023 ; 2 uses
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !16
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = invoke noundef i32 %i.adz(ptr noundef nonnull align 8 dereferenceable(64) %i.adw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 unwind label %bb.fb, !inline_history !5039 ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  call void @__clang_call_terminate(ptr %i.aec) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.fc:                                            ; preds = %bb.et, %bb.es
  %.pn916 = phi { ptr, i32 } [ %lpad.phi2994, %bb.et ], [ %i.acu, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.aix

bb.fd:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123
  store i32 %i.aby, ptr %i.km, align 4, !tbaa !5032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff) #27
  store i8 37, ptr %i.ff, align 1, !tbaa !27
  store i8 79, ptr %i.kn, align 1, !tbaa !27
  %i.aed = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.aed, ptr %i.ko, align 1, !tbaa !27
  %i.aee = load ptr, ptr %0, align 8, !tbaa !16
  %i.aef = getelementptr i8, ptr %i.aee, i64 -24
  %i.aeg = load i64, ptr %i.aef, align 8
  %i.aeh = getelementptr inbounds i8, ptr %0, i64 %i.aeg ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 232
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !5023 ; 2 uses
  %.not.i1153 = icmp eq ptr %i.aej, null
  %i.aek = zext i1 %.not.i1153 to i8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 225 ; 2 uses
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %._crit_edge.i1159, label %bb.fe

._crit_edge.i1159:                                ; preds = %bb.fd
  %.phi.trans.insert.i1160 = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  %.pre.i1161 = load i8, ptr %.phi.trans.insert.i1160, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165

bb.fe:                                            ; preds = %bb.fd
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 240
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1154 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i1154, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1162 unwind label %.loopexit.split-lp2986

.noexc1162:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155: ; preds = %bb.fe
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 56
  %i.aer = load i8, ptr %i.aeq, align 8, !tbaa !4991
  %.not.i1.i.i1156 = icmp eq i8 %i.aer, 0
  br i1 %.not.i1.i.i1156, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 89
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aep)
          to label %.noexc1163 unwind label %.loopexit2985

.noexc1163:                                       ; preds = %bb.fh
  %i.aeu = load ptr, ptr %i.aep, align 8, !tbaa !16
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = invoke noundef signext i8 %i.aew(ptr noundef nonnull align 8 dereferenceable(570) %i.aep, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157 unwind label %.loopexit2985, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157: ; preds = %.noexc1163, %bb.fg
  %.0.i.i.i1158 = phi i8 [ %i.aet, %bb.fg ], [ %i.aex, %.noexc1163 ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  store i8 %.0.i.i.i1158, ptr %i.aey, align 8, !tbaa !4997
  store i8 1, ptr %i.ael, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157, %._crit_edge.i1159
  %i.aez = phi i8 [ %.pre.i1161, %._crit_edge.i1159 ], [ %.0.i.i.i1158, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157 ]
  %i.afa = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.aej, i8 %i.aek, ptr noundef nonnull align 8 dereferenceable(216) %i.aeh, i8 noundef signext %i.aez, ptr noundef nonnull %6, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.kp)
          to label %bb.fi unwind label %.loopexit2985 ; 0 uses

bb.fi:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2985:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165, %bb.fh, %.noexc1163
  %lpad.loopexit2987 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.loopexit.split-lp2986:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp2988 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.split-lp2986, %.loopexit2985
  %lpad.phi2989 = phi { ptr, i32 } [ %lpad.loopexit2987, %.loopexit2985 ], [ %lpad.loopexit.split-lp2988, %.loopexit.split-lp2986 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #27
  br label %bb.aix

bb.fk:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 %i.la, ptr %i.eg, align 1, !tbaa !27
  %i.afb = load ptr, ptr %0, align 8, !tbaa !16
  %i.afc = getelementptr i8, ptr %i.afb, i64 -24
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = getelementptr inbounds i8, ptr %0, i64 %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !4999
  %.not.i1166 = icmp eq i64 %i.afg, 0
  br i1 %.not.i1166, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 unwind label %.loopexit ; 0 uses

bb.fm:                                            ; preds = %bb.fk
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.fn:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.gx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afj = icmp eq i8 %.0783, 0
  br i1 %i.afj, label %bb.fp, label %bb.go

bb.fp:                                            ; preds = %bb.fo
  %i.afk = load i16, ptr %2, align 8, !tbaa !5026 ; 4 uses
  %.not.i1171 = icmp eq i16 %i.afk, -32768
  br i1 %.not.i1171, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afl = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.afm = add i8 %i.afl, -1
  %spec.select.i.i1172 = icmp ult i8 %i.afm, 12
  br i1 %spec.select.i.i1172, label %bb.fr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afn = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1174 = icmp eq i8 %i.afn, 0
  br i1 %.not8.i1174, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i.i1175 = icmp eq i8 %i.afl, 2
  %i.afo = and i16 %i.afk, 3
  %i.afp = icmp eq i16 %i.afo, 0
  %or.cond.i1176 = and i1 %i.afp, %.not.i.i1175
  br i1 %or.cond.i1176, label %bb.ft, label %.thread.i.i1177

bb.ft:                                            ; preds = %bb.fs
  %i.afq = srem i16 %i.afk, 100
  %.not.i.i.i1180 = icmp ne i16 %i.afq, 0
  %i.afr = srem i16 %i.afk, 400
  %i.afs = icmp eq i16 %i.afr, 0
  %or.cond.i.i1181 = or i1 %.not.i.i.i1180, %i.afs
  br i1 %or.cond.i.i1181, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182, label %.thread.i.i1177

.thread.i.i1177:                                  ; preds = %bb.ft, %bb.fs
  %i.aft = zext nneg i8 %i.afl to i64
  %21 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aft
  %i.afu = getelementptr i8, ptr %21, i64 -1
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182: ; preds = %bb.ft, %.thread.i.i1177
  %.sroa.03.0.i.i1179 = phi i8 [ %i.afv, %.thread.i.i1177 ], [ 29, %bb.ft ]
  %.not2818 = icmp ult i8 %.sroa.03.0.i.i1179, %i.afn
  br i1 %.not2818, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread: ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182
  %i.afw = load ptr, ptr %0, align 8, !tbaa !16
  %i.afx = getelementptr i8, ptr %i.afw, i64 -24
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = getelementptr inbounds i8, ptr %0, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !4447
  %i.agc = or i32 %i.agb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afz, i32 noundef %i.agc)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.agd = load ptr, ptr %0, align 8, !tbaa !16
  %i.age = getelementptr i8, ptr %i.agd, i64 -24
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = getelementptr inbounds i8, ptr %0, i64 %i.agf
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(264) %i.agg)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186 unwind label %bb.gi

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184
  %i.agh = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 -24
  %i.agj = load i64, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds i8, ptr %0, i64 %i.agj ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 225 ; 2 uses
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %._crit_edge.i.i1192, label %bb.fu

bb.fu:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agk, i64 240
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1187 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i.i.i1187, label %bb.fv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1195 unwind label %.loopexit.split-lp2981

.noexc1195:                                       ; preds = %bb.fv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188: ; preds = %bb.fu
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 56
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !4991
  %.not.i1.i.i.i1189 = icmp eq i8 %i.agr, 0
  br i1 %.not.i1.i.i.i1189, label %bb.fw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agp)
          to label %.noexc1196 unwind label %.loopexit2980

.noexc1196:                                       ; preds = %bb.fw
  %i.ags = load ptr, ptr %i.agp, align 8, !tbaa !16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 48
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = invoke noundef signext i8 %i.agu(ptr noundef nonnull align 8 dereferenceable(570) %i.agp, i8 noundef signext 32)
          to label %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge unwind label %.loopexit2980, !inline_history !4996 ; 0 uses

.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge: ; preds = %.noexc1196
  %.pre3450.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190: ; preds = %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188
  %.pre3450 = phi ptr [ %.pre3450.pre, %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge ], [ %i.agh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188 ]
  store i8 1, ptr %i.agl, align 1, !tbaa !4984
  br label %._crit_edge.i.i1192

._crit_edge.i.i1192:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190
  %i.agw = phi ptr [ %i.agh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186 ], [ %.pre3450, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190 ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agk, i64 224
  store i8 48, ptr %i.agx, align 8, !tbaa !4997
  %i.agy = getelementptr i8, ptr %i.agw, i64 -24  ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8
  %i.aha = getelementptr inbounds i8, ptr %0, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i32 130, ptr %i.ahb, align 8, !tbaa !4998
  %i.ahc = load i64, ptr %i.agy, align 8
  %i.ahd = getelementptr inbounds i8, ptr %0, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  store i64 2, ptr %i.ahe, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1199 = load i8, ptr %i.iw, align 2, !tbaa !27
  %i.ahf = zext i8 %.sroa.0.0.copyload.i1199 to i64
  %i.ahg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahf)
          to label %_ZNSolsEj.exit unwind label %bb.gj ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %._crit_edge.i.i1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i8 47, ptr %i.ef, align 1, !tbaa !27
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !16
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 -24
  %i.ahj = load i64, ptr %i.ahi, align 8
  %i.ahk = getelementptr inbounds i8, ptr %i.ahg, i64 %i.ahj
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !4999
  %.not.i1201 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i1201, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEj.exit
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fy:                                            ; preds = %_ZNSolsEj.exit
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, i8 noundef signext 47)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.ahp = load ptr, ptr %0, align 8, !tbaa !16
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -24
  %i.ahr = load i64, ptr %i.ahq, align 8
  %i.ahs = getelementptr inbounds i8, ptr %0, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  store i64 2, ptr %i.aht, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1206 = load i8, ptr %i.ix, align 1, !tbaa !27
  %i.ahu = zext i8 %.sroa.0.0.copyload.i1206 to i64
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahu)
          to label %_ZNSolsEj.exit1208 unwind label %bb.gk ; 4 uses

_ZNSolsEj.exit1208:                               ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store i8 47, ptr %i.ee, align 1, !tbaa !27
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !16
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 -24
  %i.ahy = load i64, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !4999
  %.not.i1209 = icmp eq i64 %i.aib, 0
  br i1 %.not.i1209, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSolsEj.exit1208
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gb:                                            ; preds = %_ZNSolsEj.exit1208
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, i8 noundef signext 47)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aie = load ptr, ptr %0, align 8, !tbaa !16
  %i.aif = getelementptr i8, ptr %i.aie, i64 -24
  %i.aig = load i64, ptr %i.aif, align 8
  %i.aih = getelementptr inbounds i8, ptr %0, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  store i64 2, ptr %i.aii, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1214 = load i16, ptr %2, align 8, !tbaa !2388
  %i.aij = srem i16 %.sroa.0.0.copyload.i1214, 100
  %.sext = sext i16 %i.aij to i32
  %i.aik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sext)
          to label %bb.gd unwind label %bb.gl     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.ail = load i32, ptr %i.kl, align 4, !tbaa !5035
  %i.aim = and i32 %i.ail, 8192
  %.not.i1215 = icmp eq i32 %i.aim, 0
  br i1 %.not.i1215, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ain = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %bb.gf, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216

bb.gf:                                            ; preds = %bb.ge
  %i.aip = load ptr, ptr %10, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !4447
  %i.ais = icmp eq i32 %i.air, 0
  br i1 %i.ais, label %bb.gg, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216

bb.gg:                                            ; preds = %bb.gf
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 232
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !5023 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !16
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = invoke noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(64) %i.aiu)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 unwind label %bb.gh, !inline_history !5039 ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aiz = landingpad { ptr, i32 }
          catch ptr null
  %i.aja = extractvalue { ptr, i32 } %i.aiz, 0
  call void @__clang_call_terminate(ptr %i.aja) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216: ; preds = %bb.gd, %bb.ge, %bb.gf, %bb.gg
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.gi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit2980:                                    ; preds = %bb.fw, %.noexc1196
  %lpad.loopexit2982 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp2981:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp2983 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %bb.fy, %bb.fx, %._crit_edge.i.i1192
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

bb.gm:                                            ; preds = %.loopexit2980, %.loopexit.split-lp2981, %bb.gl, %bb.gk, %bb.gj
  %.pn912 = phi { ptr, i32 } [ %i.aje, %bb.gl ], [ %i.ajd, %bb.gk ], [ %i.ajc, %bb.gj ], [ %lpad.loopexit2982, %.loopexit2980 ], [ %lpad.loopexit.split-lp2983, %.loopexit.split-lp2981 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.pn912.pn = phi { ptr, i32 } [ %.pn912, %bb.gm ], [ %i.ajb, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.aix

bb.go:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i8 37, ptr %i.ed, align 1, !tbaa !27
  %i.ajf = load ptr, ptr %0, align 8, !tbaa !16
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -24
  %i.ajh = load i64, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds i8, ptr %0, i64 %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !4999
  %.not.i1217 = icmp eq i64 %i.ajk, 0
  br i1 %.not.i1217, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.gr unwind label %.loopexit ; 0 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.0.i1218 = phi ptr [ %i.ajl, %bb.gp ], [ %0, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i8 %.0783, ptr %i.ec, align 1, !tbaa !27
  %i.ajn = load ptr, ptr %.0.i1218, align 8, !tbaa !16
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -24
  %i.ajp = load i64, ptr %i.ajo, align 8
  %i.ajq = getelementptr inbounds i8, ptr %.0.i1218, i64 %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !4999
  %.not.i1222 = icmp eq i64 %i.ajs, 0
  br i1 %.not.i1222, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1218, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.aju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1218, i8 noundef signext %.0783)
          to label %bb.gu unwind label %.loopexit ; 0 uses

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.0.i1223 = phi ptr [ %i.ajt, %bb.gs ], [ %.0.i1218, %bb.gt ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.ajv = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i8 %i.ajv, ptr %i.eb, align 1, !tbaa !27
  %i.ajw = load ptr, ptr %.0.i1223, align 8, !tbaa !16
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 -24
  %i.ajy = load i64, ptr %i.ajx, align 8
  %i.ajz = getelementptr inbounds i8, ptr %.0.i1223, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !4999
  %.not.i1227 = icmp eq i64 %i.akb, 0
  br i1 %.not.i1227, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1223, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 unwind label %.loopexit ; 0 uses

bb.gw:                                            ; preds = %bb.gu
  %i.akd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1223, i8 noundef signext %i.ajv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.gx:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i8 68, ptr %i.ea, align 1, !tbaa !27
  %i.ake = load ptr, ptr %0, align 8, !tbaa !16
  %i.akf = getelementptr i8, ptr %i.ake, i64 -24
  %i.akg = load i64, ptr %i.akf, align 8
  %i.akh = getelementptr inbounds i8, ptr %0, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !4999
  %.not.i1232 = icmp eq i64 %i.akj, 0
  br i1 %.not.i1232, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 unwind label %.loopexit ; 0 uses

bb.gz:                                            ; preds = %bb.gx
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ha:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.im, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akm = icmp eq i8 %.0783, 0
  br i1 %i.akm, label %bb.hc, label %bb.id

bb.hc:                                            ; preds = %bb.hb
  %i.akn = load i16, ptr %2, align 8, !tbaa !5026 ; 4 uses
  %.not.i1237 = icmp eq i16 %i.akn, -32768
  br i1 %.not.i1237, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ako = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.akp = add i8 %i.ako, -1
  %spec.select.i.i1238 = icmp ult i8 %i.akp, 12
  br i1 %spec.select.i.i1238, label %bb.he, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread

bb.he:                                            ; preds = %bb.hd
  %i.akq = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1240 = icmp eq i8 %i.akq, 0
  br i1 %.not8.i1240, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i1241 = icmp eq i8 %i.ako, 2
  %i.akr = and i16 %i.akn, 3
  %i.aks = icmp eq i16 %i.akr, 0
  %or.cond.i1242 = and i1 %i.aks, %.not.i.i1241
  br i1 %or.cond.i1242, label %bb.hg, label %.thread.i.i1243

bb.hg:                                            ; preds = %bb.hf
  %i.akt = srem i16 %i.akn, 100
  %.not.i.i.i1246 = icmp ne i16 %i.akt, 0
  %i.aku = srem i16 %i.akn, 400
  %i.akv = icmp eq i16 %i.aku, 0
  %or.cond.i.i1247 = or i1 %.not.i.i.i1246, %i.akv
  br i1 %or.cond.i.i1247, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248, label %.thread.i.i1243

.thread.i.i1243:                                  ; preds = %bb.hg, %bb.hf
  %i.akw = zext nneg i8 %i.ako to i64
  %22 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.akw
  %i.akx = getelementptr i8, ptr %22, i64 -1
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248: ; preds = %bb.hg, %.thread.i.i1243
  %.sroa.03.0.i.i1245 = phi i8 [ %i.aky, %.thread.i.i1243 ], [ 29, %bb.hg ]
  %.not2817 = icmp ult i8 %.sroa.03.0.i.i1245, %i.akq
  br i1 %.not2817, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread: ; preds = %bb.he, %bb.hd, %bb.hc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248
  %i.akz = load ptr, ptr %0, align 8, !tbaa !16
  %i.ala = getelementptr i8, ptr %i.akz, i64 -24
  %i.alb = load i64, ptr %i.ala, align 8
  %i.alc = getelementptr inbounds i8, ptr %0, i64 %i.alb ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !4447
  %i.alf = or i32 %i.ale, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alc, i32 noundef %i.alf)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.alg = load ptr, ptr %0, align 8, !tbaa !16
  %i.alh = getelementptr i8, ptr %i.alg, i64 -24
  %i.ali = load i64, ptr %i.alh, align 8
  %i.alj = getelementptr inbounds i8, ptr %0, i64 %i.ali
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(264) %i.alj)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252 unwind label %bb.hx

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250
  %i.alk = load ptr, ptr %0, align 8, !tbaa !16
  %i.all = getelementptr i8, ptr %i.alk, i64 -24
  %i.alm = load i64, ptr %i.all, align 8
  %i.aln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.hh unwind label %.loopexit2975

bb.hh:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252
  %i.alo = getelementptr inbounds i8, ptr %0, i64 %i.alm
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %12, ptr noundef nonnull align 8 dereferenceable(264) %i.alo, ptr noundef nonnull align 8 dereferenceable(8) %i.aln)
          to label %bb.hi unwind label %.loopexit2975

bb.hi:                                            ; preds = %bb.hh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #27
  %i.alp = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 -24
  %i.alr = load i64, ptr %i.alq, align 8
  %i.als = getelementptr inbounds i8, ptr %0, i64 %i.alr ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 225 ; 2 uses
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.alv = trunc nuw i8 %i.alu to i1
  br i1 %i.alv, label %._crit_edge.i.i1258, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 240
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1253 = icmp eq ptr %i.alx, null
  br i1 %.not.i.i.i.i1253, label %bb.hk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1261 unwind label %.loopexit.split-lp2976

.noexc1261:                                       ; preds = %bb.hk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254: ; preds = %bb.hj
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 56
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !4991
  %.not.i1.i.i.i1255 = icmp eq i8 %i.alz, 0
  br i1 %.not.i1.i.i.i1255, label %bb.hl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256

bb.hl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alx)
          to label %.noexc1262 unwind label %.loopexit2975

.noexc1262:                                       ; preds = %bb.hl
  %i.ama = load ptr, ptr %i.alx, align 8, !tbaa !16
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 48
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = invoke noundef signext i8 %i.amc(ptr noundef nonnull align 8 dereferenceable(570) %i.alx, i8 noundef signext 32)
          to label %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge unwind label %.loopexit2975, !inline_history !4996 ; 0 uses

.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge: ; preds = %.noexc1262
  %.pre3449.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256: ; preds = %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254
  %.pre3449 = phi ptr [ %.pre3449.pre, %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge ], [ %i.alp, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254 ]
  store i8 1, ptr %i.alt, align 1, !tbaa !4984
  br label %._crit_edge.i.i1258

._crit_edge.i.i1258:                              ; preds = %bb.hi, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256
  %i.ame = phi ptr [ %i.alp, %bb.hi ], [ %.pre3449, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256 ]
  %i.amf = getelementptr inbounds nuw i8, ptr %i.als, i64 224
  store i8 48, ptr %i.amf, align 8, !tbaa !4997
  %i.amg = getelementptr i8, ptr %i.ame, i64 -24  ; 2 uses
  %i.amh = load i64, ptr %i.amg, align 8
  %i.ami = getelementptr inbounds i8, ptr %0, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 24
  store i32 130, ptr %i.amj, align 8, !tbaa !4998
  %i.amk = load i64, ptr %i.amg, align 8
  %i.aml = getelementptr inbounds i8, ptr %0, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  store i64 4, ptr %i.amm, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1265 = load i16, ptr %2, align 8, !tbaa !2388
  %i.amn = sext i16 %.sroa.0.0.copyload.i1265 to i32
  %i.amo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.amn)
          to label %bb.hm unwind label %bb.hy     ; 4 uses

bb.hm:                                            ; preds = %._crit_edge.i.i1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i8 45, ptr %i.dz, align 1, !tbaa !27
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !16
  %i.amq = getelementptr i8, ptr %i.amp, i64 -24
  %i.amr = load i64, ptr %i.amq, align 8
  %i.ams = getelementptr inbounds i8, ptr %i.amo, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !4999
  %.not.i1266 = icmp eq i64 %i.amu, 0
  br i1 %.not.i1266, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, ptr noundef nonnull %i.dz, i64 noundef 1)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.ho:                                            ; preds = %bb.hm
  %i.amw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, i8 noundef signext 45)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.amx = load ptr, ptr %0, align 8, !tbaa !16
  %i.amy = getelementptr i8, ptr %i.amx, i64 -24
  %i.amz = load i64, ptr %i.amy, align 8
  %i.ana = getelementptr inbounds i8, ptr %0, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  store i64 2, ptr %i.anb, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1271 = load i8, ptr %i.iw, align 2, !tbaa !27
  %i.anc = zext i8 %.sroa.0.0.copyload.i1271 to i64
  %i.and = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anc)
          to label %_ZNSolsEj.exit1273 unwind label %bb.hz ; 4 uses

_ZNSolsEj.exit1273:                               ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i8 45, ptr %i.dy, align 1, !tbaa !27
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !16
  %i.anf = getelementptr i8, ptr %i.ane, i64 -24
  %i.ang = load i64, ptr %i.anf, align 8
  %i.anh = getelementptr inbounds i8, ptr %i.and, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !4999
  %.not.i1274 = icmp eq i64 %i.anj, 0
  br i1 %.not.i1274, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNSolsEj.exit1273
  %i.ank = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.and, ptr noundef nonnull %i.dy, i64 noundef 1)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %_ZNSolsEj.exit1273
  %i.anl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.and, i8 noundef signext 45)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.anm = load ptr, ptr %0, align 8, !tbaa !16
  %i.ann = getelementptr i8, ptr %i.anm, i64 -24
  %i.ano = load i64, ptr %i.ann, align 8
  %i.anp = getelementptr inbounds i8, ptr %0, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store i64 2, ptr %i.anq, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1279 = load i8, ptr %i.ix, align 1, !tbaa !27
  %i.anr = zext i8 %.sroa.0.0.copyload.i1279 to i64
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anr)
          to label %_ZNSolsEj.exit1281 unwind label %bb.ia ; 0 uses

_ZNSolsEj.exit1281:                               ; preds = %bb.hs
  %i.ant = load i32, ptr %i.kk, align 4, !tbaa !5035
  %i.anu = and i32 %i.ant, 8192
  %.not.i1282 = icmp eq i32 %i.anu, 0
  br i1 %.not.i1282, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283, label %bb.ht

bb.ht:                                            ; preds = %_ZNSolsEj.exit1281
  %i.anv = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.anw = icmp eq i32 %i.anv, 0
  br i1 %i.anw, label %bb.hu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283

bb.hu:                                            ; preds = %bb.ht
  %i.anx = load ptr, ptr %11, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !4447
  %i.aoa = icmp eq i32 %i.anz, 0
  br i1 %i.aoa, label %bb.hv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283

bb.hv:                                            ; preds = %bb.hu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 232
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !5023 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !16
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 48
  %i.aof = load ptr, ptr %i.aoe, align 8
  %i.aog = invoke noundef i32 %i.aof(ptr noundef nonnull align 8 dereferenceable(64) %i.aoc)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 unwind label %bb.hw, !inline_history !5039 ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aoh = landingpad { ptr, i32 }
          catch ptr null
  %i.aoi = extractvalue { ptr, i32 } %i.aoh, 0
  call void @__clang_call_terminate(ptr %i.aoi) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283: ; preds = %_ZNSolsEj.exit1281, %bb.ht, %bb.hu, %bb.hv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.hx:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

.loopexit2975:                                    ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252, %bb.hh, %bb.hl, %.noexc1262
  %lpad.loopexit2977 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp2976:                           ; preds = %bb.hk
  %lpad.loopexit.split-lp2978 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge.i.i1258
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

bb.ib:                                            ; preds = %.loopexit2975, %.loopexit.split-lp2976, %bb.ia, %bb.hz, %bb.hy
  %.pn908 = phi { ptr, i32 } [ %i.aom, %bb.ia ], [ %i.aol, %bb.hz ], [ %i.aok, %bb.hy ], [ %lpad.loopexit2977, %.loopexit2975 ], [ %lpad.loopexit.split-lp2978, %.loopexit.split-lp2976 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hx
  %.pn908.pn = phi { ptr, i32 } [ %.pn908, %bb.ib ], [ %i.aoj, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.aix

bb.id:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i8 37, ptr %i.dx, align 1, !tbaa !27
  %i.aon = load ptr, ptr %0, align 8, !tbaa !16
  %i.aoo = getelementptr i8, ptr %i.aon, i64 -24
  %i.aop = load i64, ptr %i.aoo, align 8
  %i.aoq = getelementptr inbounds i8, ptr %0, i64 %i.aop
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !4999
  %.not.i1284 = icmp eq i64 %i.aos, 0
  br i1 %.not.i1284, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dx, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit

bb.if:                                            ; preds = %bb.id
  %i.aou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.ig unwind label %.loopexit ; 0 uses

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.0.i1285 = phi ptr [ %i.aot, %bb.ie ], [ %0, %bb.if ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i8 %.0783, ptr %i.dw, align 1, !tbaa !27
  %i.aov = load ptr, ptr %.0.i1285, align 8, !tbaa !16
  %i.aow = getelementptr i8, ptr %i.aov, i64 -24
  %i.aox = load i64, ptr %i.aow, align 8
  %i.aoy = getelementptr inbounds i8, ptr %.0.i1285, i64 %i.aox
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !4999
  %.not.i1289 = icmp eq i64 %i.apa, 0
  br i1 %.not.i1289, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.apb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1285, ptr noundef nonnull %i.dw, i64 noundef 1)
          to label %bb.ij unwind label %.loopexit

bb.ii:                                            ; preds = %bb.ig
  %i.apc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1285, i8 noundef signext %.0783)
          to label %bb.ij unwind label %.loopexit ; 0 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.0.i1290 = phi ptr [ %i.apb, %bb.ih ], [ %.0.i1285, %bb.ii ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.apd = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i8 %i.apd, ptr %i.dv, align 1, !tbaa !27
  %i.ape = load ptr, ptr %.0.i1290, align 8, !tbaa !16
  %i.apf = getelementptr i8, ptr %i.ape, i64 -24
  %i.apg = load i64, ptr %i.apf, align 8
  %i.aph = getelementptr inbounds i8, ptr %.0.i1290, i64 %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !4999
  %.not.i1294 = icmp eq i64 %i.apj, 0
  br i1 %.not.i1294, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1290, ptr noundef nonnull %i.dv, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 unwind label %.loopexit ; 0 uses

bb.il:                                            ; preds = %bb.ij
  %i.apl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1290, i8 noundef signext %i.apd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.im:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store i8 70, ptr %i.du, align 1, !tbaa !27
  %i.apm = load ptr, ptr %0, align 8, !tbaa !16
  %i.apn = getelementptr i8, ptr %i.apm, i64 -24
  %i.apo = load i64, ptr %i.apn, align 8
  %i.app = getelementptr inbounds i8, ptr %0, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !4999
  %.not.i1299 = icmp eq i64 %i.apr, 0
  br i1 %.not.i1299, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.du, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 unwind label %.loopexit ; 0 uses

bb.io:                                            ; preds = %bb.im
  %i.apt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303: ; preds = %bb.io, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ip:                                            ; preds = %bb.h, %bb.h
  br i1 %.not928, label %bb.jv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.apu = icmp eq i8 %.0783, 0
  br i1 %i.apu, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.apv = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i1304 = icmp eq i16 %i.apv, -32768
  br i1 %.not.i1304, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apw = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.apx = add i8 %i.apw, -1
  %spec.select.i.i1305 = icmp ult i8 %i.apx, 12
  br i1 %spec.select.i.i1305, label %bb.it, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread

bb.it:                                            ; preds = %bb.is
  %i.apy = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1307 = icmp eq i8 %i.apy, 0
  br i1 %.not8.i1307, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1308 = icmp eq i8 %i.apw, 2
  %i.apz = and i16 %i.apv, 3
  %i.aqa = icmp eq i16 %i.apz, 0
  %or.cond.i1309 = and i1 %i.aqa, %.not.i.i1308
  br i1 %or.cond.i1309, label %bb.iv, label %.thread.i.i1310

bb.iv:                                            ; preds = %bb.iu
  %i.aqb = srem i16 %i.apv, 100
  %.not.i.i.i1313 = icmp ne i16 %i.aqb, 0
  %i.aqc = srem i16 %i.apv, 400
  %i.aqd = icmp eq i16 %i.aqc, 0
  %or.cond.i.i1314 = or i1 %.not.i.i.i1313, %i.aqd
  br i1 %or.cond.i.i1314, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315, label %.thread.i.i1310

.thread.i.i1310:                                  ; preds = %bb.iv, %bb.iu
  %i.aqe = zext nneg i8 %i.apw to i64
  %23 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aqe
  %i.aqf = getelementptr i8, ptr %23, i64 -1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315: ; preds = %bb.iv, %.thread.i.i1310
  %.sroa.03.0.i.i1312 = phi i8 [ %i.aqg, %.thread.i.i1310 ], [ 29, %bb.iv ]
  %.not2814 = icmp ult i8 %.sroa.03.0.i.i1312, %i.apy
  br i1 %.not2814, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %.thread.i.i.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread: ; preds = %bb.it, %bb.is, %bb.ir, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !16
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -24
  %i.aqj = load i64, ptr %i.aqi, align 8
  %i.aqk = getelementptr inbounds i8, ptr %0, i64 %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !4447
  %i.aqn = or i32 %i.aqm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aqk, i32 noundef %i.aqn)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread
  %.pre3444 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3445 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3446 = load i8, ptr %i.ix, align 1, !tbaa !5028
  %.pre3447 = load i8, ptr %.0707, align 1, !tbaa !27
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315
  %i.aqo = phi i8 [ %.pre3447, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqp = phi i8 [ %.pre3446, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqq = phi i8 [ %.pre3445, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apw, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ] ; 3 uses
  %i.aqr = phi i16 [ %.pre3444, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqs = sext i16 %i.aqr to i32
  %i.aqt = icmp ult i8 %i.aqq, 3
  %.neg.i.i1318 = sext i1 %i.aqt to i32
  %i.aqu = add nsw i32 %.neg.i.i1318, %i.aqs      ; 4 uses
  %i.aqv = zext i8 %i.aqq to i32
  %i.aqw = zext i8 %i.aqp to i32
  %i.aqx = add nsw i32 %i.aqu, -399
  %i.aqy = icmp slt i32 %i.aqu, 0
  %i.aqz = select i1 %i.aqy, i32 %i.aqx, i32 %i.aqu
  %i.ara = sdiv i32 %i.aqz, 400                   ; 2 uses
  %.neg15.i.i1319 = mul nsw i32 %i.ara, -400
  %i.arb = add nsw i32 %.neg15.i.i1319, %i.aqu    ; 3 uses
  %i.arc = icmp ugt i8 %i.aqq, 2
  %.v.i.i1320 = select i1 %i.arc, i32 -3, i32 9
  %i.ard = add nsw i32 %.v.i.i1320, %i.aqv
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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.arr = add nsw i32 %i.arq, 719471             ; 2 uses
  %i.ars = icmp sgt i32 %i.arq, -719472
  %i.art = add nsw i32 %i.arq, 573375
  %i.aru = select i1 %i.ars, i32 %i.arr, i32 %i.art
  %i.arv = sdiv i32 %i.aru, 146097                ; 2 uses
  %.neg.i.i1322 = mul nsw i32 %i.arv, -146097
  %i.arw = add nsw i32 %.neg.i.i1322, %i.arr      ; 5 uses
  %i.arx = udiv i32 %i.arw, 1460
  %i.ary = udiv i32 %i.arw, 36524
  %i.arz = udiv i32 %i.arw, 146096
  %.neg2876 = add nsw i32 %i.ary, %i.arw
  %i.asa = add nuw nsw i32 %i.arz, %i.arx
  %i.asb = sub nsw i32 %.neg2876, %i.asa          ; 3 uses
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
  %.v.i.i1323 = select i1 %i.asl, i32 3, i32 -9
  %i.asm = add nsw i32 %.v.i.i1323, %i.ask
  %i.asn = icmp ult i32 %i.asm, 3
  %i.aso = zext i1 %i.asn to i32
  %i.asp = add nsw i32 %i.ase, %i.aso             ; 2 uses
  %.sroa.02694.0.extract.trunc = trunc i32 %i.asp to i16
  %.sroa.02687.0.extract.trunc = shl i32 %i.asp, 16
  %sext2815 = add i32 %.sroa.02687.0.extract.trunc, -65536
  %i.asq = ashr exact i32 %sext2815, 16           ; 4 uses
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
  %.v3224 = select i1 %i.atg, i32 -10, i32 -4
  %i.ath = add nsw i32 %i.atf, %.v3224
  %.fr.i.i.i = freeze i32 %i.ath                  ; 2 uses
  %i.ati = srem i32 %.fr.i.i.i, 7
  %i.atj = sub nsw i32 %i.atd, %i.atf
  %i.atk = add nsw i32 %i.atj, -719430
  %i.atl = add i32 %i.atk, %.fr.i.i.i
  %i.atm = sub i32 %i.atl, %i.ati
  %i.atn = icmp slt i32 %i.arq, %i.atm
  %i.ato = sext i1 %i.atn to i16
  %spec.select = add i16 %.sroa.02694.0.extract.trunc, %i.ato
  store i16 %spec.select, ptr %13, align 2
  %i.atp = icmp eq i8 %i.aqo, 71
  br i1 %i.atp, label %bb.ix, label %bb.iz

bb.iw:                                            ; preds = %bb.iy, %bb.ix
  %i.atq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ix:                                            ; preds = %.thread.i.i.i.i
  %i.atr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %13)
          to label %.noexc1335 unwind label %bb.iw ; 0 uses

.noexc1335:                                       ; preds = %bb.ix
  %i.ats = load i16, ptr %13, align 2, !tbaa !5026
  %.not.i1334 = icmp eq i16 %i.ats, -32768
  br i1 %.not.i1334, label %bb.iy, label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit

bb.iy:                                            ; preds = %.noexc1335
  %i.att = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.45, i64 noundef 20)
          to label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit unwind label %bb.iw ; 0 uses

bb.iz:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.atu = load ptr, ptr %0, align 8, !tbaa !16
  %i.atv = getelementptr i8, ptr %i.atu, i64 -24
  %i.atw = load i64, ptr %i.atv, align 8
  %i.atx = getelementptr inbounds i8, ptr %0, i64 %i.atw
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(264) %i.atx)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338 unwind label %bb.ji

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338: ; preds = %bb.iz
  %i.aty = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.atz = getelementptr i8, ptr %i.aty, i64 -24
  %i.aua = load i64, ptr %i.atz, align 8
  %i.aub = getelementptr inbounds i8, ptr %0, i64 %i.aua ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 225 ; 2 uses
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %._crit_edge.i.i1344, label %bb.ja

bb.ja:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 240
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1339 = icmp eq ptr %i.aug, null
  br i1 %.not.i.i.i.i1339, label %bb.jb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1347 unwind label %.loopexit.split-lp2971

.noexc1347:                                       ; preds = %bb.jb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340: ; preds = %bb.ja
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 56
  %i.aui = load i8, ptr %i.auh, align 8, !tbaa !4991
  %.not.i1.i.i.i1341 = icmp eq i8 %i.aui, 0
  br i1 %.not.i1.i.i.i1341, label %bb.jc, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aug)
          to label %.noexc1348 unwind label %.loopexit2970

.noexc1348:                                       ; preds = %bb.jc
  %i.auj = load ptr, ptr %i.aug, align 8, !tbaa !16
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = invoke noundef signext i8 %i.aul(ptr noundef nonnull align 8 dereferenceable(570) %i.aug, i8 noundef signext 32)
          to label %.noexc1348._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342_crit_edge unwind label %.loopexit2970, !inline_history !4996 ; 0 uses

.noexc1348._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342_crit_edge: ; preds = %.noexc1348
  %.pre3448.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342

end_hunk_8
begin_hunk_9_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.ks:                                            ; preds = %bb.kq
  %.not.i1396 = icmp eq i64 %.sroa.02679.0.copyload, 12
  %i.ayu = add nsw i64 %.sroa.02679.0.copyload, -12
  br i1 %.not.i1396, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.ks, %bb.kp
  %storemerge = phi i64 [ %i.ayu, %bb.ks ], [ %.sroa.02679.0.copyload, %bb.kr ], [ %.sroa.02679.0.copyload, %bb.kp ] ; 3 uses
  %i.ayv = icmp slt i64 %storemerge, 10
  br i1 %i.ayv, label %bb.kt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kt:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !27
  %i.ayw = load ptr, ptr %0, align 8, !tbaa !16
  %i.ayx = getelementptr i8, ptr %i.ayw, i64 -24
  %i.ayy = load i64, ptr %i.ayx, align 8
  %i.ayz = getelementptr inbounds i8, ptr %0, i64 %i.ayy
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !4999
  %.not.i1399 = icmp eq i64 %i.azb, 0
  br i1 %.not.i1399, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.azc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 unwind label %bb.kw ; 0 uses

bb.kv:                                            ; preds = %bb.kt
  %i.azd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 unwind label %bb.kw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kw:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.kv, %bb.ku
  %i.aze = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.ks, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge2741 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 ], [ 12, %bb.ks ], [ 12, %bb.kr ]
  %i.azf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge2741)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.kw ; 0 uses

bb.kx:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #27
  store i8 37, ptr %i.fg, align 1, !tbaa !27
  store i8 79, ptr %i.kg, align 1, !tbaa !27
  %i.azg = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.azg, ptr %i.kh, align 1, !tbaa !27
  %i.azh = trunc i64 %.sroa.02679.0.copyload to i32
  store i32 %i.azh, ptr %i.it, align 8, !tbaa !5031
  %i.azi = load ptr, ptr %0, align 8, !tbaa !16
  %i.azj = getelementptr i8, ptr %i.azi, i64 -24
  %i.azk = load i64, ptr %i.azj, align 8
  %i.azl = getelementptr inbounds i8, ptr %0, i64 %i.azk ; 6 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 232
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !5023 ; 2 uses
  %.not.i1406 = icmp eq ptr %i.azn, null
  %i.azo = zext i1 %.not.i1406 to i8
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azl, i64 225 ; 2 uses
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.azr = trunc nuw i8 %i.azq to i1
  br i1 %i.azr, label %._crit_edge.i1412, label %bb.ky

._crit_edge.i1412:                                ; preds = %bb.kx
  %.phi.trans.insert.i1413 = getelementptr inbounds nuw i8, ptr %i.azl, i64 224
  %.pre.i1414 = load i8, ptr %.phi.trans.insert.i1413, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418

bb.ky:                                            ; preds = %bb.kx
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azl, i64 240
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1407 = icmp eq ptr %i.azt, null
  br i1 %.not.i.i.i1407, label %bb.kz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1415 unwind label %.loopexit.split-lp2966

.noexc1415:                                       ; preds = %bb.kz
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408: ; preds = %bb.ky
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 56
  %i.azv = load i8, ptr %i.azu, align 8, !tbaa !4991
  %.not.i1.i.i1409 = icmp eq i8 %i.azv, 0
  br i1 %.not.i1.i.i1409, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azt, i64 89
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410

bb.lb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azt)
          to label %.noexc1416 unwind label %.loopexit2965

.noexc1416:                                       ; preds = %bb.lb
  %i.azy = load ptr, ptr %i.azt, align 8, !tbaa !16
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 48
  %i.baa = load ptr, ptr %i.azz, align 8
  %i.bab = invoke noundef signext i8 %i.baa(ptr noundef nonnull align 8 dereferenceable(570) %i.azt, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410 unwind label %.loopexit2965, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410: ; preds = %.noexc1416, %bb.la
  %.0.i.i.i1411 = phi i8 [ %i.azx, %bb.la ], [ %i.bab, %.noexc1416 ] ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azl, i64 224
  store i8 %.0.i.i.i1411, ptr %i.bac, align 8, !tbaa !4997
  store i8 1, ptr %i.azp, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410, %._crit_edge.i1412
  %i.bad = phi i8 [ %.pre.i1414, %._crit_edge.i1412 ], [ %.0.i.i.i1411, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410 ]
  %i.bae = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azn, i8 %i.azo, ptr noundef nonnull align 8 dereferenceable(216) %i.azl, i8 noundef signext %i.bad, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lc unwind label %.loopexit2965 ; 0 uses

bb.lc:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2965:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418, %bb.lb, %.noexc1416
  %lpad.loopexit2967 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp2966:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp2968 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp2966, %.loopexit2965
  %lpad.phi2969 = phi { ptr, i32 } [ %lpad.loopexit2967, %.loopexit2965 ], [ %lpad.loopexit.split-lp2968, %.loopexit.split-lp2966 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #27
  br label %bb.aix

bb.le:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !27
  %i.baf = load ptr, ptr %0, align 8, !tbaa !16
  %i.bag = getelementptr i8, ptr %i.baf, i64 -24
  %i.bah = load i64, ptr %i.bag, align 8
  %i.bai = getelementptr inbounds i8, ptr %0, i64 %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 16
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !4999
  %.not.i1419 = icmp eq i64 %i.bak, 0
  br i1 %.not.i1419, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bal = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 unwind label %.loopexit ; 0 uses

bb.lg:                                            ; preds = %bb.le
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.lh:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.mn, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.ban = icmp eq i8 %.0783, 0
  br i1 %i.ban, label %bb.lj, label %bb.me

bb.lj:                                            ; preds = %bb.li
  %i.bao = load i16, ptr %2, align 8, !tbaa !5026 ; 9 uses
  %.not.i1424 = icmp eq i16 %i.bao, -32768
  br i1 %.not.i1424, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bap = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 8 uses
  %i.baq = add i8 %i.bap, -1
  %spec.select.i.i1425 = icmp ult i8 %i.baq, 12
  br i1 %spec.select.i.i1425, label %bb.ll, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519

bb.ll:                                            ; preds = %bb.lk
  %i.bar = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1427 = icmp eq i8 %i.bar, 0
  br i1 %.not8.i1427, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not.i.i1428 = icmp eq i8 %i.bap, 2
  %i.bas = and i16 %i.bao, 3
  %i.bat = icmp eq i16 %i.bas, 0
  %or.cond.i1429 = and i1 %i.bat, %.not.i.i1428
  br i1 %or.cond.i1429, label %bb.ln, label %.thread.i.i1430

bb.ln:                                            ; preds = %bb.lm
  %i.bau = srem i16 %i.bao, 100
  %.not.i.i.i1433 = icmp ne i16 %i.bau, 0
  %i.bav = srem i16 %i.bao, 400
  %i.baw = icmp eq i16 %i.bav, 0
  %or.cond.i.i1434 = or i1 %.not.i.i.i1433, %i.baw
  br i1 %or.cond.i.i1434, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435, label %.thread.i.i1430

.thread.i.i1430:                                  ; preds = %bb.ln, %bb.lm
  %i.bax = zext nneg i8 %i.bap to i64
  %24 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bax
  %i.bay = getelementptr i8, ptr %24, i64 -1
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435: ; preds = %bb.ln, %.thread.i.i1430
  %.sroa.03.0.i.i1432 = phi i8 [ %i.baz, %.thread.i.i1430 ], [ 29, %bb.ln ]
  %.not2809 = icmp ult i8 %.sroa.03.0.i.i1432, %i.bar
  br i1 %.not2809, label %.thread2744, label %.thread2743

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread: ; preds = %bb.ll
  %i.bba = load i8, ptr %i.gw, align 8, !tbaa !5059, !range !659, !noundef !660
  %i.bbb = trunc nuw i8 %i.bba to i1
  br i1 %i.bbb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519: ; preds = %bb.lk
  %i.bbc = load i8, ptr %i.gw, align 8, !tbaa !5059, !range !659, !noundef !660
  %i.bbd = trunc nuw i8 %i.bbc to i1
  br i1 %i.bbd, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread: ; preds = %bb.lj
  %i.bbe = load i8, ptr %i.gw, align 8, !tbaa !5059, !range !659, !noundef !660
  %i.bbf = trunc nuw i8 %i.bbe to i1
  br i1 %i.bbf, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

.thread2744:                                      ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435
  %i.bbg = load i8, ptr %i.gw, align 8, !tbaa !5059, !range !659, !noundef !660
  %i.bbh = trunc nuw i8 %i.bbg to i1
  br i1 %i.bbh, label %.thread2743, label %bb.md

.thread2743:                                      ; preds = %.thread2744, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435
  %.pr = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1439 = icmp eq i8 %.pr, 0
  br i1 %.not8.i1439, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.lo

bb.lo:                                            ; preds = %.thread2743
  %.not.i.i1440 = icmp eq i8 %i.bap, 2
  %i.bbi = and i16 %i.bao, 3
  %i.bbj = icmp eq i16 %i.bbi, 0
  %or.cond.i1441 = and i1 %i.bbj, %.not.i.i1440
  br i1 %or.cond.i1441, label %bb.lp, label %.thread.i.i1442

bb.lp:                                            ; preds = %bb.lo
  %i.bbk = srem i16 %i.bao, 100
  %.not.i.i.i1445 = icmp ne i16 %i.bbk, 0
  %i.bbl = srem i16 %i.bao, 400
  %i.bbm = icmp eq i16 %i.bbl, 0
  %or.cond.i.i1446 = or i1 %.not.i.i.i1445, %i.bbm
  br i1 %or.cond.i.i1446, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447, label %.thread.i.i1442

.thread.i.i1442:                                  ; preds = %bb.lp, %bb.lo
  %i.bbn = zext nneg i8 %i.bap to i64
  %25 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbn
  %i.bbo = getelementptr i8, ptr %25, i64 -1
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447: ; preds = %bb.lp, %.thread.i.i1442
  %.sroa.03.0.i.i1444 = phi i8 [ %i.bbp, %.thread.i.i1442 ], [ 29, %bb.lp ]
  %.not2810 = icmp ult i8 %.sroa.03.0.i.i1444, %.pr
  br i1 %.not2810, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.lq

bb.lq:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447
  %i.bbq = sext i16 %i.bao to i32                 ; 3 uses
  %i.bbr = icmp samesign ult i8 %i.bap, 3
  %.neg.i.i1448 = sext i1 %i.bbr to i32
  %i.bbs = add nsw i32 %.neg.i.i1448, %i.bbq      ; 4 uses
  %i.bbt = zext nneg i8 %i.bap to i32
  %i.bbu = zext i8 %.pr to i32
  %i.bbv = add nsw i32 %i.bbs, -399
  %i.bbw = icmp slt i32 %i.bbs, 0
  %i.bbx = select i1 %i.bbw, i32 %i.bbv, i32 %i.bbs
  %i.bby = sdiv i32 %i.bbx, 400                   ; 2 uses
  %.neg15.i.i1449 = mul nsw i32 %i.bby, -400
  %i.bbz = add nsw i32 %.neg15.i.i1449, %i.bbs    ; 3 uses
  %i.bca = icmp samesign ugt i8 %i.bap, 2
  %.v.i.i1450 = select i1 %i.bca, i32 -3, i32 9
  %i.bcb = add nsw i32 %.v.i.i1450, %i.bbt
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
  %.neg15.i.i1462 = mul nsw i32 %i.bcl, -400
  %i.bcm = add nsw i32 %.neg15.i.i1462, %i.bch    ; 3 uses
  %i.bcn = lshr i32 %i.bcm, 2
  %i.bco = udiv i32 %i.bcm, 100
  %reass.add = sub nsw i32 %i.bbz, %i.bcm
  %reass.mul = mul nsw i32 %reass.add, 365
  %reass.add2871 = sub nsw i32 %i.bby, %i.bcl
  %reass.mul2872 = mul nsw i32 %reass.add2871, 146097
  %reass.sub = sub nsw i32 %i.bco, %i.bcn
  %i.bcp = add nsw i32 %reass.sub, -306
  %.neg2866 = add nsw i32 %i.bcp, %i.bbu
  %.neg2868 = add nsw i32 %.neg2866, %i.bce
  %.neg2869 = add nsw i32 %.neg2868, %reass.mul2872
  %.neg2811 = add nsw i32 %.neg2869, %i.bcf
  %i.bcq = sub nsw i32 %.neg2811, %i.bcg
  %i.bcr = add nsw i32 %i.bcq, %reass.mul
  br label %bb.lr

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread, %.thread2743, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447
  %i.bcs = load i64, ptr %i.iq, align 8, !tbaa !5040
  %i.bct = mul nsw i64 %i.bcs, 1000
  %i.bcu = load i64, ptr %i.jv, align 8, !tbaa !611
  %i.bcv = add nsw i64 %i.bct, %i.bcu
  %i.bcw = load i64, ptr %i.ir, align 8, !tbaa !5012
  %i.bcx = mul nsw i64 %i.bcw, 60000
  %i.bcy = add nsw i64 %i.bcv, %i.bcx
  %i.bcz = load i64, ptr %i.ip, align 8, !tbaa !5013
  %i.bda = mul nsw i64 %i.bcz, 3600000
  %i.bdb = add nsw i64 %i.bcy, %i.bda
  %i.bdc = load i8, ptr %i.ju, align 8, !tbaa !5063, !range !659, !noundef !660
  %i.bdd = shl nuw nsw i8 %i.bdc, 1
  %i.bde = zext nneg i8 %i.bdd to i64
  %i.bdf = sub nsw i64 1, %i.bde
  %i.bdg = mul nsw i64 %i.bdf, %i.bdb
  %i.bdh = sdiv i64 %i.bdg, 86400000
  %i.bdi = trunc i64 %i.bdh to i32
  br label %bb.lr

bb.lr:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, %bb.lq
  %.sroa.02671.0 = phi i32 [ %i.bcr, %bb.lq ], [ %i.bdi, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.bdj = load ptr, ptr %0, align 8, !tbaa !16
  %i.bdk = getelementptr i8, ptr %i.bdj, i64 -24
  %i.bdl = load i64, ptr %i.bdk, align 8
  %i.bdm = getelementptr inbounds i8, ptr %0, i64 %i.bdl
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(264) %i.bdm)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467 unwind label %bb.ma

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467: ; preds = %bb.lr
  %i.bdn = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.bdo = getelementptr i8, ptr %i.bdn, i64 -24
  %i.bdp = load i64, ptr %i.bdo, align 8
  %i.bdq = getelementptr inbounds i8, ptr %0, i64 %i.bdp ; 3 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 225 ; 2 uses
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.bdt = trunc nuw i8 %i.bds to i1
  br i1 %i.bdt, label %._crit_edge.i.i1473, label %bb.ls

bb.ls:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdq, i64 240
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1468 = icmp eq ptr %i.bdv, null
  br i1 %.not.i.i.i.i1468, label %bb.lt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1476 unwind label %.loopexit.split-lp2961

.noexc1476:                                       ; preds = %bb.lt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469: ; preds = %bb.ls
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 56
  %i.bdx = load i8, ptr %i.bdw, align 8, !tbaa !4991
  %.not.i1.i.i.i1470 = icmp eq i8 %i.bdx, 0
  br i1 %.not.i1.i.i.i1470, label %bb.lu, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471

bb.lu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdv)
          to label %.noexc1477 unwind label %.loopexit2960

.noexc1477:                                       ; preds = %bb.lu
  %i.bdy = load ptr, ptr %i.bdv, align 8, !tbaa !16
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 48
  %i.bea = load ptr, ptr %i.bdz, align 8
  %i.beb = invoke noundef signext i8 %i.bea(ptr noundef nonnull align 8 dereferenceable(570) %i.bdv, i8 noundef signext 32)
          to label %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge unwind label %.loopexit2960, !inline_history !4996 ; 0 uses

.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge: ; preds = %.noexc1477
  %.pre3443.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471: ; preds = %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469
  %.pre3443 = phi ptr [ %.pre3443.pre, %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge ], [ %i.bdn, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469 ]
  store i8 1, ptr %i.bdr, align 1, !tbaa !4984
  br label %._crit_edge.i.i1473

._crit_edge.i.i1473:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471
  %i.bec = phi ptr [ %i.bdn, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467 ], [ %.pre3443, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471 ]
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdq, i64 224
  store i8 48, ptr %i.bed, align 8, !tbaa !4997
  %i.bee = getelementptr i8, ptr %i.bec, i64 -24  ; 2 uses
  %i.bef = load i64, ptr %i.bee, align 8
  %i.beg = getelementptr inbounds i8, ptr %0, i64 %i.bef
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 24
  store i32 130, ptr %i.beh, align 8, !tbaa !4998
  %i.bei = load i64, ptr %i.bee, align 8
  %i.bej = getelementptr inbounds i8, ptr %0, i64 %i.bei
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 16
  store i64 3, ptr %i.bek, align 8, !tbaa !4999
  %i.bel = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.02671.0)
          to label %bb.lv unwind label %.loopexit2960 ; 0 uses

bb.lv:                                            ; preds = %._crit_edge.i.i1473
  %i.bem = load i32, ptr %i.kf, align 4, !tbaa !5035
  %i.ben = and i32 %i.bem, 8192
  %.not.i1480 = icmp eq i32 %i.ben, 0
  br i1 %.not.i1480, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.beo = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.bep = icmp eq i32 %i.beo, 0
  br i1 %i.bep, label %bb.lx, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481

bb.lx:                                            ; preds = %bb.lw
  %i.beq = load ptr, ptr %15, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 32
  %i.bes = load i32, ptr %i.ber, align 8, !tbaa !4447
  %i.bet = icmp eq i32 %i.bes, 0
  br i1 %i.bet, label %bb.ly, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481

bb.ly:                                            ; preds = %bb.lx
  %i.beu = getelementptr inbounds nuw i8, ptr %i.beq, i64 232
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !5023 ; 2 uses
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !16
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 48
  %i.bey = load ptr, ptr %i.bex, align 8
  %i.bez = invoke noundef i32 %i.bey(ptr noundef nonnull align 8 dereferenceable(64) %i.bev)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 unwind label %bb.lz, !inline_history !5039 ; 0 uses

bb.lz:                                            ; preds = %bb.ly
  %i.bfa = landingpad { ptr, i32 }
          catch ptr null
  %i.bfb = extractvalue { ptr, i32 } %i.bfa, 0
  call void @__clang_call_terminate(ptr %i.bfb) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481: ; preds = %bb.lv, %bb.lw, %bb.lx, %bb.ly
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ma:                                            ; preds = %bb.lr
  %i.bfc = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit2960:                                    ; preds = %._crit_edge.i.i1473, %bb.lu, %.noexc1477
  %lpad.loopexit2962 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2961:                           ; preds = %bb.lt
  %lpad.loopexit.split-lp2963 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb
end_hunk_9
begin_hunk_10_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.wf:                                            ; preds = %bb.we
  %i.chh = getelementptr inbounds nuw i8, ptr %i.cha, i64 240
  %i.chi = load ptr, ptr %i.chh, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1875 = icmp eq ptr %i.chi, null
  br i1 %.not.i.i.i1875, label %bb.wg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876

bb.wg:                                            ; preds = %bb.wf
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1883 unwind label %.loopexit.split-lp2931

.noexc1883:                                       ; preds = %bb.wg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876: ; preds = %bb.wf
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 56
  %i.chk = load i8, ptr %i.chj, align 8, !tbaa !4991
  %.not.i1.i.i1877 = icmp eq i8 %i.chk, 0
  br i1 %.not.i1.i.i1877, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chi, i64 89
  %i.chm = load i8, ptr %i.chl, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878

bb.wi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.chi)
          to label %.noexc1884 unwind label %.loopexit2930

.noexc1884:                                       ; preds = %bb.wi
  %i.chn = load ptr, ptr %i.chi, align 8, !tbaa !16
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chn, i64 48
  %i.chp = load ptr, ptr %i.cho, align 8
  %i.chq = invoke noundef signext i8 %i.chp(ptr noundef nonnull align 8 dereferenceable(570) %i.chi, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878 unwind label %.loopexit2930, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878: ; preds = %.noexc1884, %bb.wh
  %.0.i.i.i1879 = phi i8 [ %i.chm, %bb.wh ], [ %i.chq, %.noexc1884 ] ; 2 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %i.cha, i64 224
  store i8 %.0.i.i.i1879, ptr %i.chr, align 8, !tbaa !4997
  store i8 1, ptr %i.che, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878, %._crit_edge.i1880
  %i.chs = phi i8 [ %.pre.i1882, %._crit_edge.i1880 ], [ %.0.i.i.i1879, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878 ]
  %i.cht = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.chc, i8 %i.chd, ptr noundef nonnull align 8 dereferenceable(216) %i.cha, i8 noundef signext %i.chs, ptr noundef nonnull %6, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.jo)
          to label %bb.wj unwind label %.loopexit2930 ; 0 uses

bb.wj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2930:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886, %bb.wi, %.noexc1884
  %lpad.loopexit2932 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

.loopexit.split-lp2931:                           ; preds = %bb.wg
  %lpad.loopexit.split-lp2933 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wk:                                            ; preds = %.loopexit.split-lp2931, %.loopexit2930
  %lpad.phi2934 = phi { ptr, i32 } [ %lpad.loopexit2932, %.loopexit2930 ], [ %lpad.loopexit.split-lp2933, %.loopexit.split-lp2931 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #27
  br label %bb.aix

bb.wl:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 117, ptr %i.bf, align 1, !tbaa !27
  %i.chu = load ptr, ptr %0, align 8, !tbaa !16
  %i.chv = getelementptr i8, ptr %i.chu, i64 -24
  %i.chw = load i64, ptr %i.chv, align 8
  %i.chx = getelementptr inbounds i8, ptr %0, i64 %i.chw
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chx, i64 16
  %i.chz = load i64, ptr %i.chy, align 8, !tbaa !4999
  %.not.i1887 = icmp eq i64 %i.chz, 0
  br i1 %.not.i1887, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 unwind label %.loopexit ; 0 uses

bb.wn:                                            ; preds = %bb.wl
  %i.cib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 117)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891: ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.wo:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.yc, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cic = icmp eq i8 %.0783, 69
  br i1 %i.cic, label %bb.wq, label %bb.wz

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 37, ptr %i.be, align 1, !tbaa !27
  %i.cid = load ptr, ptr %0, align 8, !tbaa !16
  %i.cie = getelementptr i8, ptr %i.cid, i64 -24
  %i.cif = load i64, ptr %i.cie, align 8
  %i.cig = getelementptr inbounds i8, ptr %0, i64 %i.cif
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cig, i64 16
  %i.cii = load i64, ptr %i.cih, align 8, !tbaa !4999
  %.not.i1892 = icmp eq i64 %i.cii, 0
  br i1 %.not.i1892, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %bb.wt unwind label %.loopexit

bb.ws:                                            ; preds = %bb.wq
  %i.cik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.wt unwind label %.loopexit ; 0 uses

bb.wt:                                            ; preds = %bb.wr, %bb.ws
  %.0.i1893 = phi ptr [ %i.cij, %bb.wr ], [ %0, %bb.ws ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 69, ptr %i.bd, align 1, !tbaa !27
  %i.cil = load ptr, ptr %.0.i1893, align 8, !tbaa !16
  %i.cim = getelementptr i8, ptr %i.cil, i64 -24
  %i.cin = load i64, ptr %i.cim, align 8
  %i.cio = getelementptr inbounds i8, ptr %.0.i1893, i64 %i.cin
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 16
  %i.ciq = load i64, ptr %i.cip, align 8, !tbaa !4999
  %.not.i1897 = icmp eq i64 %i.ciq, 0
  br i1 %.not.i1897, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.cir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1893, ptr noundef nonnull %i.bd, i64 noundef 1)
          to label %bb.ww unwind label %.loopexit

bb.wv:                                            ; preds = %bb.wt
  %i.cis = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1893, i8 noundef signext 69)
          to label %bb.ww unwind label %.loopexit ; 0 uses

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.0.i1898 = phi ptr [ %i.cir, %bb.wu ], [ %.0.i1893, %bb.wv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.cit = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i8 %i.cit, ptr %i.bc, align 1, !tbaa !27
  %i.ciu = load ptr, ptr %.0.i1898, align 8, !tbaa !16
  %i.civ = getelementptr i8, ptr %i.ciu, i64 -24
  %i.ciw = load i64, ptr %i.civ, align 8
  %i.cix = getelementptr inbounds i8, ptr %.0.i1898, i64 %i.ciw
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cix, i64 16
  %i.ciz = load i64, ptr %i.ciy, align 8, !tbaa !4999
  %.not.i1902 = icmp eq i64 %i.ciz, 0
  br i1 %.not.i1902, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1898, ptr noundef nonnull %i.bc, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 unwind label %.loopexit ; 0 uses

bb.wy:                                            ; preds = %bb.ww
  %i.cjb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1898, i8 noundef signext %i.cit)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906: ; preds = %bb.wy, %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.wz:                                            ; preds = %bb.wp
  %i.cjc = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i1907 = icmp eq i16 %i.cjc, -32768
  br i1 %.not.i1907, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.cjd = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.cje = add i8 %i.cjd, -1
  %spec.select.i.i1908 = icmp ult i8 %i.cje, 12
  br i1 %spec.select.i.i1908, label %bb.xb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread

bb.xb:                                            ; preds = %bb.xa
  %i.cjf = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1910 = icmp eq i8 %i.cjf, 0
  br i1 %.not8.i1910, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %.not.i.i1911 = icmp eq i8 %i.cjd, 2
  %i.cjg = and i16 %i.cjc, 3
  %i.cjh = icmp eq i16 %i.cjg, 0
  %or.cond.i1912 = and i1 %i.cjh, %.not.i.i1911
  br i1 %or.cond.i1912, label %bb.xd, label %.thread.i.i1913

bb.xd:                                            ; preds = %bb.xc
  %i.cji = srem i16 %i.cjc, 100
  %.not.i.i.i1916 = icmp ne i16 %i.cji, 0
  %i.cjj = srem i16 %i.cjc, 400
  %i.cjk = icmp eq i16 %i.cjj, 0
  %or.cond.i.i1917 = or i1 %.not.i.i.i1916, %i.cjk
  br i1 %or.cond.i.i1917, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918, label %.thread.i.i1913

.thread.i.i1913:                                  ; preds = %bb.xd, %bb.xc
  %i.cjl = zext nneg i8 %i.cjd to i64
  %26 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cjl
  %i.cjm = getelementptr i8, ptr %26, i64 -1
  %i.cjn = load i8, ptr %i.cjm, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918: ; preds = %bb.xd, %.thread.i.i1913
  %.sroa.03.0.i.i1915 = phi i8 [ %i.cjn, %.thread.i.i1913 ], [ 29, %bb.xd ]
  %.not2803 = icmp ult i8 %.sroa.03.0.i.i1915, %i.cjf
  br i1 %.not2803, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread: ; preds = %bb.xb, %bb.xa, %bb.wz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918
  %i.cjo = load ptr, ptr %0, align 8, !tbaa !16
  %i.cjp = getelementptr i8, ptr %i.cjo, i64 -24
  %i.cjq = load i64, ptr %i.cjp, align 8
  %i.cjr = getelementptr inbounds i8, ptr %0, i64 %i.cjq ; 2 uses
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjr, i64 32
  %i.cjt = load i32, ptr %i.cjs, align 8, !tbaa !4447
  %i.cju = or i32 %i.cjt, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cjr, i32 noundef %i.cju)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge unwind label %bb.xe

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread
  %.pre3433 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3434 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3435 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920

bb.xe:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread
  %i.cjv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918
  %i.cjw = phi i8 [ %.pre3435, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjf, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ]
  %i.cjx = phi i8 [ %.pre3434, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjd, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ] ; 3 uses
  %i.cjy = phi i16 [ %.pre3433, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ] ; 2 uses
  %i.cjz = sext i16 %i.cjy to i32                 ; 4 uses
  %i.cka = icmp ult i8 %i.cjx, 3
  %.neg.i.i1921 = sext i1 %i.cka to i32
  %i.ckb = add nsw i32 %.neg.i.i1921, %i.cjz      ; 4 uses
  %i.ckc = zext i8 %i.cjx to i32
  %i.ckd = zext i8 %i.cjw to i32
  %i.cke = add nsw i32 %i.ckb, -399
  %i.ckf = icmp slt i32 %i.ckb, 0
  %i.ckg = select i1 %i.ckf, i32 %i.cke, i32 %i.ckb
  %i.ckh = sdiv i32 %i.ckg, 400                   ; 2 uses
  %.neg15.i.i1922 = mul nsw i32 %i.ckh, -400
  %i.cki = add nsw i32 %.neg15.i.i1922, %i.ckb    ; 3 uses
  %i.ckj = icmp ugt i8 %i.cjx, 2
  %.v.i.i1923 = select i1 %i.ckj, i32 -3, i32 9
  %i.ckk = add nsw i32 %.v.i.i1923, %i.ckc
  %i.ckl = mul nsw i32 %i.ckk, 153
  %i.ckm = add nsw i32 %i.ckl, 2
  %i.ckn = udiv i32 %i.ckm, 5
  %i.cko = mul nsw i32 %i.cki, 365
  %i.ckp = lshr i32 %i.cki, 2
  %i.ckq = udiv i32 %i.cki, 100
  %i.ckr = mul nsw i32 %i.ckh, 146097
  %i.cks = add nuw nsw i32 %i.ckd, -719469
  %i.ckt = add nsw i32 %i.cks, %i.ckn
  %i.cku = add nsw i32 %i.ckt, %i.ckr
  %i.ckv = add nsw i32 %i.cku, %i.ckp
  %i.ckw = add nsw i32 %i.ckv, %i.cko
  %i.ckx = sub nsw i32 %i.ckw, %i.ckq             ; 3 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %bb.xf
    i8 79, label %bb.xt
  ]

bb.xf:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920
  %i.cky = add nsw i32 %i.cjz, -1                 ; 2 uses
  %i.ckz = add nsw i32 %i.cjz, -400
  %i.cla = icmp slt i16 %i.cjy, 1
  %i.clb = select i1 %i.cla, i32 %i.ckz, i32 %i.cky
  %i.clc = sdiv i32 %i.clb, 400                   ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %i.clc, -400
  %i.cld = add nsw i32 %.neg15.i.i.i.i, %i.cky    ; 3 uses
  %i.cle = mul nsw i32 %i.cld, 365
  %i.clf = lshr i32 %i.cld, 2
  %i.clg = udiv i32 %i.cld, 100
  %i.clh = mul nsw i32 %i.clc, 146097
  %i.cli = add nsw i32 %i.clh, -719162
  %i.clj = add nsw i32 %i.cli, %i.clf
  %i.clk = add nsw i32 %i.clj, %i.cle
  %i.cll = sub nsw i32 %i.clk, %i.clg             ; 4 uses
  %i.clm = icmp sgt i32 %i.cll, -5
  %i.cln = add nsw i32 %i.cll, 4
  %.in.i.i.i.i1932 = select i1 %i.clm, i32 %i.cln, i32 %i.cll
  %i.clo = urem i32 %.in.i.i.i.i1932, 7           ; 3 uses
  %i.clp = sub nuw nsw i32 -6, %i.clo
  %.not2808 = icmp eq i32 %i.clo, 0
  %i.clq = select i1 %.not2808, i32 0, i32 %i.clp
  %.fr.i.i.i1933 = freeze i32 %i.clq              ; 2 uses
  %i.clr = srem i32 %.fr.i.i.i1933, 7
  %i.cls = add i32 %i.clo, %.fr.i.i.i1933
  %i.clt = sub i32 %i.cll, %i.cls
  %i.clu = add i32 %i.clt, %i.clr                 ; 2 uses
  %i.clv = icmp slt i32 %i.ckx, %i.clu
  br i1 %i.clv, label %bb.xg, label %bb.xn

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 48, ptr %i.bb, align 1, !tbaa !27
  %i.clw = load ptr, ptr %0, align 8, !tbaa !16
  %i.clx = getelementptr i8, ptr %i.clw, i64 -24
  %i.cly = load i64, ptr %i.clx, align 8
  %i.clz = getelementptr inbounds i8, ptr %0, i64 %i.cly
  %i.cma = getelementptr inbounds nuw i8, ptr %i.clz, i64 16
  %i.cmb = load i64, ptr %i.cma, align 8, !tbaa !4999
  %.not.i1936 = icmp eq i64 %i.cmb, 0
  br i1 %.not.i1936, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cmc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bb, i64 noundef 1)
          to label %bb.xj unwind label %bb.xm

bb.xi:                                            ; preds = %bb.xg
  %i.cmd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.xj unwind label %bb.xm     ; 0 uses

bb.xj:                                            ; preds = %bb.xh, %bb.xi
  %.0.i1937 = phi ptr [ %i.cmc, %bb.xh ], [ %0, %bb.xi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i8 48, ptr %i.ba, align 1, !tbaa !27
  %i.cme = load ptr, ptr %.0.i1937, align 8, !tbaa !16
  %i.cmf = getelementptr i8, ptr %i.cme, i64 -24
  %i.cmg = load i64, ptr %i.cmf, align 8
  %i.cmh = getelementptr inbounds i8, ptr %.0.i1937, i64 %i.cmg
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmh, i64 16
  %i.cmj = load i64, ptr %i.cmi, align 8, !tbaa !4999
  %.not.i1941 = icmp eq i64 %i.cmj, 0
  br i1 %.not.i1941, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cmk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1937, ptr noundef nonnull %i.ba, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 unwind label %bb.xm ; 0 uses

bb.xl:                                            ; preds = %bb.xj
  %i.cml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1937, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 unwind label %bb.xm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945: ; preds = %bb.xl, %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.xm:                                            ; preds = %bb.xl, %bb.xk, %bb.xi, %bb.xh
  %i.cmm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xn:                                            ; preds = %bb.xf
  %i.cmn = sub nsw i32 %i.ckx, %i.clu             ; 2 uses
  %i.cmo = udiv i32 %i.cmn, 7
  %i.cmp = add nuw nsw i32 %i.cmo, 1
  %i.cmq = icmp ult i32 %i.cmn, 63
  br i1 %i.cmq, label %bb.xo, label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 48, ptr %i.az, align 1, !tbaa !27
  %i.cmr = load ptr, ptr %0, align 8, !tbaa !16
  %i.cms = getelementptr i8, ptr %i.cmr, i64 -24
  %i.cmt = load i64, ptr %i.cms, align 8
  %i.cmu = getelementptr inbounds i8, ptr %0, i64 %i.cmt
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cmu, i64 16
  %i.cmw = load i64, ptr %i.cmv, align 8, !tbaa !4999
  %.not.i1948 = icmp eq i64 %i.cmw, 0
  br i1 %.not.i1948, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cmx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952 unwind label %bb.xr ; 0 uses

bb.xq:                                            ; preds = %bb.xo
  %i.cmy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952 unwind label %bb.xr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952: ; preds = %bb.xq, %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xs
  %i.cmz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952, %bb.xn
  %i.cna = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cmp)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.xr ; 0 uses

bb.xt:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #27
  store i8 37, ptr %i.fn, align 1, !tbaa !27
  store i8 79, ptr %i.jj, align 1, !tbaa !27
  %i.cnb = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.cnb, ptr %i.jk, align 1, !tbaa !27
  %i.cnc = add nsw i32 %i.cjz, -1900
  store i32 %i.cnc, ptr %i.ij, align 4, !tbaa !5033
  %i.cnd = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.xu unwind label %.loopexit2925

end_hunk_10
begin_hunk_11_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %.not.i1969 = icmp eq ptr %i.cny, null
  %i.cnz = zext i1 %.not.i1969 to i8
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnw, i64 225 ; 2 uses
  %i.cob = load i8, ptr %i.coa, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.coc = trunc nuw i8 %i.cob to i1
  br i1 %i.coc, label %._crit_edge.i1975, label %bb.xx

._crit_edge.i1975:                                ; preds = %bb.xw
  %.phi.trans.insert.i1976 = getelementptr inbounds nuw i8, ptr %i.cnw, i64 224
  %.pre.i1977 = load i8, ptr %.phi.trans.insert.i1976, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981

bb.xx:                                            ; preds = %bb.xw
  %i.cod = getelementptr inbounds nuw i8, ptr %i.cnw, i64 240
  %i.coe = load ptr, ptr %i.cod, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1970 = icmp eq ptr %i.coe, null
  br i1 %.not.i.i.i1970, label %bb.xy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971

bb.xy:                                            ; preds = %bb.xx
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1978 unwind label %.loopexit.split-lp2926

.noexc1978:                                       ; preds = %bb.xy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971: ; preds = %bb.xx
  %i.cof = getelementptr inbounds nuw i8, ptr %i.coe, i64 56
  %i.cog = load i8, ptr %i.cof, align 8, !tbaa !4991
  %.not.i1.i.i1972 = icmp eq i8 %i.cog, 0
  br i1 %.not.i1.i.i1972, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971
  %i.coh = getelementptr inbounds nuw i8, ptr %i.coe, i64 89
  %i.coi = load i8, ptr %i.coh, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973

bb.ya:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.coe)
          to label %.noexc1979 unwind label %.loopexit2925

.noexc1979:                                       ; preds = %bb.ya
  %i.coj = load ptr, ptr %i.coe, align 8, !tbaa !16
  %i.cok = getelementptr inbounds nuw i8, ptr %i.coj, i64 48
  %i.col = load ptr, ptr %i.cok, align 8
  %i.com = invoke noundef signext i8 %i.col(ptr noundef nonnull align 8 dereferenceable(570) %i.coe, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973 unwind label %.loopexit2925, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973: ; preds = %.noexc1979, %bb.xz
  %.0.i.i.i1974 = phi i8 [ %i.coi, %bb.xz ], [ %i.com, %.noexc1979 ] ; 2 uses
  %i.con = getelementptr inbounds nuw i8, ptr %i.cnw, i64 224
  store i8 %.0.i.i.i1974, ptr %i.con, align 8, !tbaa !4997
  store i8 1, ptr %i.coa, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973, %._crit_edge.i1975
  %i.coo = phi i8 [ %.pre.i1977, %._crit_edge.i1975 ], [ %.0.i.i.i1974, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973 ]
  %i.cop = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.cny, i8 %i.cnz, ptr noundef nonnull align 8 dereferenceable(216) %i.cnw, i8 noundef signext %i.coo, ptr noundef nonnull %6, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.jl)
          to label %.thread2751 unwind label %.loopexit2925 ; 0 uses

.thread2751:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yb:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #27
  br label %_ZNSolsEj.exit2127

bb.yc:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 85, ptr %i.ay, align 1, !tbaa !27
  %i.coq = load ptr, ptr %0, align 8, !tbaa !16
  %i.cor = getelementptr i8, ptr %i.coq, i64 -24
  %i.cos = load i64, ptr %i.cor, align 8
  %i.cot = getelementptr inbounds i8, ptr %0, i64 %i.cos
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cot, i64 16
  %i.cov = load i64, ptr %i.cou, align 8, !tbaa !4999
  %.not.i1982 = icmp eq i64 %i.cov, 0
  br i1 %.not.i1982, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 unwind label %.loopexit ; 0 uses

bb.ye:                                            ; preds = %bb.yc
  %i.cox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 85)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986: ; preds = %bb.ye, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yf:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.zk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.coy = icmp eq i8 %.0783, 69
  br i1 %i.coy, label %bb.yh, label %bb.yq

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 37, ptr %i.ax, align 1, !tbaa !27
  %i.coz = load ptr, ptr %0, align 8, !tbaa !16
  %i.cpa = getelementptr i8, ptr %i.coz, i64 -24
  %i.cpb = load i64, ptr %i.cpa, align 8
  %i.cpc = getelementptr inbounds i8, ptr %0, i64 %i.cpb
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpc, i64 16
  %i.cpe = load i64, ptr %i.cpd, align 8, !tbaa !4999
  %.not.i1987 = icmp eq i64 %i.cpe, 0
  br i1 %.not.i1987, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.cpf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ax, i64 noundef 1)
          to label %bb.yk unwind label %.loopexit

bb.yj:                                            ; preds = %bb.yh
  %i.cpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.yk unwind label %.loopexit ; 0 uses

bb.yk:                                            ; preds = %bb.yi, %bb.yj
  %.0.i1988 = phi ptr [ %i.cpf, %bb.yi ], [ %0, %bb.yj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 69, ptr %i.aw, align 1, !tbaa !27
  %i.cph = load ptr, ptr %.0.i1988, align 8, !tbaa !16
  %i.cpi = getelementptr i8, ptr %i.cph, i64 -24
  %i.cpj = load i64, ptr %i.cpi, align 8
  %i.cpk = getelementptr inbounds i8, ptr %.0.i1988, i64 %i.cpj
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpk, i64 16
  %i.cpm = load i64, ptr %i.cpl, align 8, !tbaa !4999
  %.not.i1992 = icmp eq i64 %i.cpm, 0
  br i1 %.not.i1992, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cpn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1988, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %bb.yn unwind label %.loopexit

bb.ym:                                            ; preds = %bb.yk
  %i.cpo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1988, i8 noundef signext 69)
          to label %bb.yn unwind label %.loopexit ; 0 uses

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %.0.i1993 = phi ptr [ %i.cpn, %bb.yl ], [ %.0.i1988, %bb.ym ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cpp = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %i.cpp, ptr %i.av, align 1, !tbaa !27
  %i.cpq = load ptr, ptr %.0.i1993, align 8, !tbaa !16
  %i.cpr = getelementptr i8, ptr %i.cpq, i64 -24
  %i.cps = load i64, ptr %i.cpr, align 8
  %i.cpt = getelementptr inbounds i8, ptr %.0.i1993, i64 %i.cps
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 16
  %i.cpv = load i64, ptr %i.cpu, align 8, !tbaa !4999
  %.not.i1997 = icmp eq i64 %i.cpv, 0
  br i1 %.not.i1997, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cpw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1993, ptr noundef nonnull %i.av, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 unwind label %.loopexit ; 0 uses

bb.yp:                                            ; preds = %bb.yn
  %i.cpx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1993, i8 noundef signext %i.cpp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yq:                                            ; preds = %bb.yg
  %i.cpy = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i2002 = icmp eq i16 %i.cpy, -32768
  br i1 %.not.i2002, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cpz = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.cqa = add i8 %i.cpz, -1
  %spec.select.i.i2003 = icmp ult i8 %i.cqa, 12
  br i1 %spec.select.i.i2003, label %bb.ys, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread

bb.ys:                                            ; preds = %bb.yr
  %i.cqb = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i2005 = icmp eq i8 %i.cqb, 0
  br i1 %.not8.i2005, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %.not.i.i2006 = icmp eq i8 %i.cpz, 2
  %i.cqc = and i16 %i.cpy, 3
  %i.cqd = icmp eq i16 %i.cqc, 0
  %or.cond.i2007 = and i1 %i.cqd, %.not.i.i2006
  br i1 %or.cond.i2007, label %bb.yu, label %.thread.i.i2008

bb.yu:                                            ; preds = %bb.yt
  %i.cqe = srem i16 %i.cpy, 100
  %.not.i.i.i2011 = icmp ne i16 %i.cqe, 0
  %i.cqf = srem i16 %i.cpy, 400
  %i.cqg = icmp eq i16 %i.cqf, 0
  %or.cond.i.i2012 = or i1 %.not.i.i.i2011, %i.cqg
  br i1 %or.cond.i.i2012, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013, label %.thread.i.i2008

.thread.i.i2008:                                  ; preds = %bb.yu, %bb.yt
  %i.cqh = zext nneg i8 %i.cpz to i64
  %27 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cqh
  %i.cqi = getelementptr i8, ptr %27, i64 -1
  %i.cqj = load i8, ptr %i.cqi, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013: ; preds = %bb.yu, %.thread.i.i2008
  %.sroa.03.0.i.i2010 = phi i8 [ %i.cqj, %.thread.i.i2008 ], [ 29, %bb.yu ]
  %.not2795 = icmp ult i8 %.sroa.03.0.i.i2010, %i.cqb
  br i1 %.not2795, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread: ; preds = %bb.ys, %bb.yr, %bb.yq, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013
  %i.cqk = load ptr, ptr %0, align 8, !tbaa !16
  %i.cql = getelementptr i8, ptr %i.cqk, i64 -24
  %i.cqm = load i64, ptr %i.cql, align 8
  %i.cqn = getelementptr inbounds i8, ptr %0, i64 %i.cqm ; 2 uses
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqn, i64 32
  %i.cqp = load i32, ptr %i.cqo, align 8, !tbaa !4447
  %i.cqq = or i32 %i.cqp, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cqn, i32 noundef %i.cqq)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread
  %.pre3430 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3431 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3432 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013
  %i.cqr = phi i8 [ %.pre3432, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cqb, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ]
  %i.cqs = phi i8 [ %.pre3431, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cpz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ] ; 3 uses
  %i.cqt = phi i16 [ %.pre3430, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cpy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ]
  %i.cqu = sext i16 %i.cqt to i32                 ; 2 uses
  %i.cqv = icmp ult i8 %i.cqs, 3
  %.neg.i.i2016 = sext i1 %i.cqv to i32
  %i.cqw = add nsw i32 %.neg.i.i2016, %i.cqu      ; 4 uses
  %i.cqx = zext i8 %i.cqs to i32
  %i.cqy = zext i8 %i.cqr to i32
  %i.cqz = add nsw i32 %i.cqw, -399
  %i.cra = icmp slt i32 %i.cqw, 0
  %i.crb = select i1 %i.cra, i32 %i.cqz, i32 %i.cqw
  %i.crc = sdiv i32 %i.crb, 400                   ; 2 uses
  %.neg15.i.i2017 = mul nsw i32 %i.crc, -400
  %i.crd = add nsw i32 %.neg15.i.i2017, %i.cqw    ; 3 uses
  %i.cre = icmp ugt i8 %i.cqs, 2
  %.v.i.i2018 = select i1 %i.cre, i32 -3, i32 9
  %i.crf = add nsw i32 %.v.i.i2018, %i.cqx
  %i.crg = mul nsw i32 %i.crf, 153
  %i.crh = add nsw i32 %i.crg, 2
  %i.cri = udiv i32 %i.crh, 5
  %i.crj = mul nsw i32 %i.crd, 365
  %i.crk = lshr i32 %i.crd, 2
  %i.crl = udiv i32 %i.crd, 100
  %i.crm = mul nsw i32 %i.crc, 146097
  %i.crn = add nuw nsw i32 %i.cqy, -719469
  %i.cro = add nsw i32 %i.crn, %i.cri
  %i.crp = add nsw i32 %i.cro, %i.crm
  %i.crq = add nsw i32 %i.crp, %i.crk
  %i.crr = add nsw i32 %i.crq, %i.crj
  %i.crs = sub nsw i32 %i.crr, %i.crl             ; 6 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %.thread.i.i.i.i2053
    i8 79, label %bb.zb
  ]

.thread.i.i.i.i2053:                              ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015
  %i.crt = add nsw i32 %i.crs, 719471             ; 2 uses
  %i.cru = icmp sgt i32 %i.crs, -719472
  %i.crv = add nsw i32 %i.crs, 573375
  %i.crw = select i1 %i.cru, i32 %i.crt, i32 %i.crv
  %i.crx = sdiv i32 %i.crw, 146097                ; 2 uses
  %.neg.i.i2020 = mul nsw i32 %i.crx, -146097
  %i.cry = add nsw i32 %.neg.i.i2020, %i.crt      ; 5 uses
  %i.crz = udiv i32 %i.cry, 1460
  %i.csa = udiv i32 %i.cry, 36524
  %i.csb = udiv i32 %i.cry, 146096
  %.neg2843 = add nsw i32 %i.csa, %i.cry
  %i.csc = add nuw nsw i32 %i.csb, %i.crz
  %i.csd = sub nsw i32 %.neg2843, %i.csc          ; 3 uses
  %i.cse = udiv i32 %i.csd, 365                   ; 2 uses
  %i.csf = mul nsw i32 %i.crx, 400
  %i.csg = add nsw i32 %i.cse, %i.csf
  %i.csh = udiv i32 %i.csd, 1460
  %i.csi = udiv i32 %i.csd, 36500
  %.neg36.i.i2022 = mul i32 %i.cse, -365
  %.neg37.i.i2023 = sub nsw i32 %i.cry, %i.csh
  %.neg25.i.i2024 = add nsw i32 %.neg37.i.i2023, %i.csi
  %i.csj = add i32 %.neg25.i.i2024, %.neg36.i.i2022
  %i.csk = mul i32 %i.csj, 5
  %i.csl = add i32 %i.csk, 2                      ; 2 uses
  %i.csm = udiv i32 %i.csl, 153
  %i.csn = icmp ult i32 %i.csl, 1530
  %.v.i.i2025 = select i1 %i.csn, i32 3, i32 -9
  %i.cso = add nsw i32 %.v.i.i2025, %i.csm
  %i.csp = icmp ult i32 %i.cso, 3
  %i.csq = zext i1 %i.csp to i32
  %i.csr = add nsw i32 %i.csg, %i.csq
  %.sroa.02585.0.extract.trunc = shl i32 %i.csr, 16 ; 2 uses
  %sext = add i32 %.sroa.02585.0.extract.trunc, -65536
  %i.css = ashr exact i32 %sext, 16               ; 4 uses
  %i.cst = add nsw i32 %i.css, -399
  %i.csu = icmp slt i32 %i.css, 0
  %i.csv = select i1 %i.csu, i32 %i.cst, i32 %i.css
  %i.csw = sdiv i32 %i.csv, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2048 = mul nsw i32 %i.csw, -400
  %i.csx = add nsw i32 %.neg15.i.i.i.i.i2048, %i.css ; 3 uses
  %i.csy = mul nsw i32 %i.csx, 365
  %i.csz = lshr i32 %i.csx, 2
  %i.cta = udiv i32 %i.csx, 100
  %i.ctb = mul nsw i32 %i.csw, 146097
  %i.ctc = add nsw i32 %i.ctb, 275
  %i.ctd = add nsw i32 %i.ctc, %i.csz
  %i.cte = add nsw i32 %i.ctd, %i.csy
  %i.ctf = sub nsw i32 %i.cte, %i.cta             ; 3 uses
  %i.ctg = icmp sgt i32 %i.ctf, 719433
  %.in.i.i.i.i2050.v = select i1 %i.ctg, i32 -719434, i32 -719438
  %.in.i.i.i.i2050 = add nsw i32 %i.ctf, %.in.i.i.i.i2050.v
  %i.cth = urem i32 %.in.i.i.i.i2050, 7           ; 3 uses
  %i.cti = icmp samesign ult i32 %i.cth, 4
  %.v = select i1 %i.cti, i32 -10, i32 -4
  %i.ctj = add nsw i32 %i.cth, %.v
  %.fr.i.i.i2052 = freeze i32 %i.ctj              ; 2 uses
  %i.ctk = srem i32 %.fr.i.i.i2052, 7
  %i.ctl = sub nsw i32 %i.ctf, %i.cth
  %i.ctm = add nsw i32 %i.ctl, -719430
  %i.ctn = add i32 %i.ctm, %.fr.i.i.i2052
  %i.cto = sub i32 %i.ctn, %i.ctk                 ; 2 uses
  %i.ctp = icmp slt i32 %i.crs, %i.cto
  br i1 %i.ctp, label %.thread.i.i.i.i2080, label %bb.yv

.thread.i.i.i.i2080:                              ; preds = %.thread.i.i.i.i2053
  %sext2800 = add i32 %.sroa.02585.0.extract.trunc, -131072
  %i.ctq = ashr exact i32 %sext2800, 16           ; 4 uses
  %i.ctr = add nsw i32 %i.ctq, -399
  %i.cts = icmp slt i32 %i.ctq, 0
  %i.ctt = select i1 %i.cts, i32 %i.ctr, i32 %i.ctq
  %i.ctu = sdiv i32 %i.ctt, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2075 = mul nsw i32 %i.ctu, -400
  %i.ctv = add nsw i32 %.neg15.i.i.i.i.i2075, %i.ctq ; 3 uses
  %i.ctw = mul nsw i32 %i.ctv, 365
  %i.ctx = lshr i32 %i.ctv, 2
  %i.cty = udiv i32 %i.ctv, 100
  %i.ctz = mul nsw i32 %i.ctu, 146097
  %i.cua = add nsw i32 %i.ctz, 275
  %i.cub = add nsw i32 %i.cua, %i.ctx
  %i.cuc = add nsw i32 %i.cub, %i.ctw
  %i.cud = sub nsw i32 %i.cuc, %i.cty             ; 3 uses
  %i.cue = icmp sgt i32 %i.cud, 719433
  %.in.i.i.i.i2077.v = select i1 %i.cue, i32 -719434, i32 -719438
  %.in.i.i.i.i2077 = add nsw i32 %i.cud, %.in.i.i.i.i2077.v
  %i.cuf = urem i32 %.in.i.i.i.i2077, 7           ; 3 uses
  %i.cug = icmp samesign ult i32 %i.cuf, 4
  %.v3222 = select i1 %i.cug, i32 -10, i32 -4
  %i.cuh = add nsw i32 %i.cuf, %.v3222
  %.fr.i.i.i2079 = freeze i32 %i.cuh              ; 2 uses
  %i.cui = srem i32 %.fr.i.i.i2079, 7
  %i.cuj = sub nsw i32 %i.cud, %i.cuf
  %i.cuk = add nsw i32 %i.cuj, -719430
  %i.cul = add i32 %i.cuk, %.fr.i.i.i2079
  %i.cum = sub i32 %i.cul, %i.cui
  br label %bb.yv

bb.yv:                                            ; preds = %.thread.i.i.i.i2080, %.thread.i.i.i.i2053
  %.sroa.02589.0 = phi i32 [ %i.cum, %.thread.i.i.i.i2080 ], [ %i.cto, %.thread.i.i.i.i2053 ]
  %i.cun = sub nsw i32 %i.crs, %.sroa.02589.0     ; 2 uses
  %i.cuo = sdiv i32 %i.cun, 7
  %i.cup = add nsw i32 %i.cuo, 1
  %i.cuq = icmp slt i32 %i.cun, 63
  br i1 %i.cuq, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 48, ptr %i.au, align 1, !tbaa !27
  %i.cur = load ptr, ptr %0, align 8, !tbaa !16
  %i.cus = getelementptr i8, ptr %i.cur, i64 -24
  %i.cut = load i64, ptr %i.cus, align 8
  %i.cuu = getelementptr inbounds i8, ptr %0, i64 %i.cut
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cuu, i64 16
  %i.cuw = load i64, ptr %i.cuv, align 8, !tbaa !4999
  %.not.i2087 = icmp eq i64 %i.cuw, 0
  br i1 %.not.i2087, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091 unwind label %bb.yz ; 0 uses

bb.yy:                                            ; preds = %bb.yw
  %i.cuy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091 unwind label %bb.yz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091: ; preds = %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.za
  %i.cuz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.za:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091, %bb.yv
  %i.cva = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cup)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.yz ; 0 uses

end_hunk_11
begin_hunk_12_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  br label %bb.aix

bb.aaa:                                           ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i8 37, ptr %i.as, align 1, !tbaa !27
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cxc, i64 16
  %i.cyg = load i64, ptr %i.cyf, align 8, !tbaa !4999
  %.not.i2141 = icmp eq i64 %i.cyg, 0
  br i1 %.not.i2141, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cyh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %bb.aad unwind label %bb.zq

bb.aac:                                           ; preds = %bb.aaa
  %i.cyi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aad unwind label %bb.zq    ; 0 uses

bb.aad:                                           ; preds = %bb.aab, %bb.aac
  %.0.i2142 = phi ptr [ %i.cyh, %bb.aab ], [ %0, %bb.aac ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %.0783, ptr %i.ar, align 1, !tbaa !27
  %i.cyj = load ptr, ptr %.0.i2142, align 8, !tbaa !16
  %i.cyk = getelementptr i8, ptr %i.cyj, i64 -24
  %i.cyl = load i64, ptr %i.cyk, align 8
  %i.cym = getelementptr inbounds i8, ptr %.0.i2142, i64 %i.cyl
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 16
  %i.cyo = load i64, ptr %i.cyn, align 8, !tbaa !4999
  %.not.i2146 = icmp eq i64 %i.cyo, 0
  br i1 %.not.i2146, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cyp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2142, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %bb.aag unwind label %bb.zq

bb.aaf:                                           ; preds = %bb.aad
  %i.cyq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2142, i8 noundef signext %.0783)
          to label %bb.aag unwind label %bb.zq    ; 0 uses

bb.aag:                                           ; preds = %bb.aae, %bb.aaf
  %.0.i2147 = phi ptr [ %i.cyp, %bb.aae ], [ %.0.i2142, %bb.aaf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cyr = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.cyr, ptr %i.aq, align 1, !tbaa !27
  %i.cys = load ptr, ptr %.0.i2147, align 8, !tbaa !16
  %i.cyt = getelementptr i8, ptr %i.cys, i64 -24
  %i.cyu = load i64, ptr %i.cyt, align 8
  %i.cyv = getelementptr inbounds i8, ptr %.0.i2147, i64 %i.cyu
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyv, i64 16
  %i.cyx = load i64, ptr %i.cyw, align 8, !tbaa !4999
  %.not.i2151 = icmp eq i64 %i.cyx, 0
  br i1 %.not.i2151, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cyy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2147, ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 unwind label %bb.zq ; 0 uses

bb.aai:                                           ; preds = %bb.aag
  %i.cyz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2147, i8 noundef signext %i.cyr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 unwind label %bb.zq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155: ; preds = %bb.aai, %bb.aah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aaj:                                           ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 119, ptr %i.ap, align 1, !tbaa !27
  %i.cza = load ptr, ptr %0, align 8, !tbaa !16
  %i.czb = getelementptr i8, ptr %i.cza, i64 -24
  %i.czc = load i64, ptr %i.czb, align 8
  %i.czd = getelementptr inbounds i8, ptr %0, i64 %i.czc
  %i.cze = getelementptr inbounds nuw i8, ptr %i.czd, i64 16
  %i.czf = load i64, ptr %i.cze, align 8, !tbaa !4999
  %.not.i2156 = icmp eq i64 %i.czf, 0
  br i1 %.not.i2156, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.czg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 unwind label %.loopexit ; 0 uses

bb.aal:                                           ; preds = %bb.aaj
  %i.czh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 119)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160: ; preds = %bb.aal, %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aam:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.aca, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.czi = icmp eq i8 %.0783, 69
  br i1 %i.czi, label %bb.aao, label %bb.aax

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 37, ptr %i.ao, align 1, !tbaa !27
  %i.czj = load ptr, ptr %0, align 8, !tbaa !16
  %i.czk = getelementptr i8, ptr %i.czj, i64 -24
  %i.czl = load i64, ptr %i.czk, align 8
  %i.czm = getelementptr inbounds i8, ptr %0, i64 %i.czl
  %i.czn = getelementptr inbounds nuw i8, ptr %i.czm, i64 16
  %i.czo = load i64, ptr %i.czn, align 8, !tbaa !4999
  %.not.i2161 = icmp eq i64 %i.czo, 0
  br i1 %.not.i2161, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.czp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %bb.aar unwind label %.loopexit

bb.aaq:                                           ; preds = %bb.aao
  %i.czq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aar unwind label %.loopexit ; 0 uses

bb.aar:                                           ; preds = %bb.aap, %bb.aaq
  %.0.i2162 = phi ptr [ %i.czp, %bb.aap ], [ %0, %bb.aaq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 69, ptr %i.an, align 1, !tbaa !27
  %i.czr = load ptr, ptr %.0.i2162, align 8, !tbaa !16
  %i.czs = getelementptr i8, ptr %i.czr, i64 -24
  %i.czt = load i64, ptr %i.czs, align 8
  %i.czu = getelementptr inbounds i8, ptr %.0.i2162, i64 %i.czt
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 16
  %i.czw = load i64, ptr %i.czv, align 8, !tbaa !4999
  %.not.i2166 = icmp eq i64 %i.czw, 0
  br i1 %.not.i2166, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.czx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2162, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %bb.aau unwind label %.loopexit

bb.aat:                                           ; preds = %bb.aar
  %i.czy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2162, i8 noundef signext 69)
          to label %bb.aau unwind label %.loopexit ; 0 uses

bb.aau:                                           ; preds = %bb.aas, %bb.aat
  %.0.i2167 = phi ptr [ %i.czx, %bb.aas ], [ %.0.i2162, %bb.aat ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.czz = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %i.czz, ptr %i.am, align 1, !tbaa !27
  %i.daa = load ptr, ptr %.0.i2167, align 8, !tbaa !16
  %i.dab = getelementptr i8, ptr %i.daa, i64 -24
  %i.dac = load i64, ptr %i.dab, align 8
  %i.dad = getelementptr inbounds i8, ptr %.0.i2167, i64 %i.dac
  %i.dae = getelementptr inbounds nuw i8, ptr %i.dad, i64 16
  %i.daf = load i64, ptr %i.dae, align 8, !tbaa !4999
  %.not.i2171 = icmp eq i64 %i.daf, 0
  br i1 %.not.i2171, label %bb.aaw, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2167, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 unwind label %.loopexit ; 0 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.dah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2167, i8 noundef signext %i.czz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175: ; preds = %bb.aaw, %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aax:                                           ; preds = %bb.aan
  %i.dai = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i2176 = icmp eq i16 %i.dai, -32768
  br i1 %.not.i2176, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.daj = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.dak = add i8 %i.daj, -1
  %spec.select.i.i2177 = icmp ult i8 %i.dak, 12
  br i1 %spec.select.i.i2177, label %bb.aaz, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread

bb.aaz:                                           ; preds = %bb.aay
  %i.dal = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i2179 = icmp eq i8 %i.dal, 0
  br i1 %.not8.i2179, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %.not.i.i2180 = icmp eq i8 %i.daj, 2
  %i.dam = and i16 %i.dai, 3
  %i.dan = icmp eq i16 %i.dam, 0
  %or.cond.i2181 = and i1 %i.dan, %.not.i.i2180
  br i1 %or.cond.i2181, label %bb.abb, label %.thread.i.i2182

bb.abb:                                           ; preds = %bb.aba
  %i.dao = srem i16 %i.dai, 100
  %.not.i.i.i2185 = icmp ne i16 %i.dao, 0
  %i.dap = srem i16 %i.dai, 400
  %i.daq = icmp eq i16 %i.dap, 0
  %or.cond.i.i2186 = or i1 %.not.i.i.i2185, %i.daq
  br i1 %or.cond.i.i2186, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187, label %.thread.i.i2182

.thread.i.i2182:                                  ; preds = %bb.abb, %bb.aba
  %i.dar = zext nneg i8 %i.daj to i64
  %28 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.dar
  %i.das = getelementptr i8, ptr %28, i64 -1
  %i.dat = load i8, ptr %i.das, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187: ; preds = %bb.abb, %.thread.i.i2182
  %.sroa.03.0.i.i2184 = phi i8 [ %i.dat, %.thread.i.i2182 ], [ 29, %bb.abb ]
  %.not2789 = icmp ult i8 %.sroa.03.0.i.i2184, %i.dal
  br i1 %.not2789, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread: ; preds = %bb.aaz, %bb.aay, %bb.aax, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187
  %i.dau = load ptr, ptr %0, align 8, !tbaa !16
  %i.dav = getelementptr i8, ptr %i.dau, i64 -24
  %i.daw = load i64, ptr %i.dav, align 8
  %i.dax = getelementptr inbounds i8, ptr %0, i64 %i.daw ; 2 uses
  %i.day = getelementptr inbounds nuw i8, ptr %i.dax, i64 32
  %i.daz = load i32, ptr %i.day, align 8, !tbaa !4447
  %i.dba = or i32 %i.daz, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dax, i32 noundef %i.dba)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge unwind label %bb.abc

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread
  %.pre3427 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3428 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3429 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189

bb.abc:                                           ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread
  %i.dbb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187
  %i.dbc = phi i8 [ %.pre3429, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.dal, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ]
  %i.dbd = phi i8 [ %.pre3428, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.daj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ] ; 3 uses
  %i.dbe = phi i16 [ %.pre3427, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.dai, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ] ; 2 uses
  %i.dbf = sext i16 %i.dbe to i32                 ; 4 uses
  %i.dbg = icmp ult i8 %i.dbd, 3
  %.neg.i.i2190 = sext i1 %i.dbg to i32
  %i.dbh = add nsw i32 %.neg.i.i2190, %i.dbf      ; 4 uses
  %i.dbi = zext i8 %i.dbd to i32
  %i.dbj = zext i8 %i.dbc to i32
  %i.dbk = add nsw i32 %i.dbh, -399
  %i.dbl = icmp slt i32 %i.dbh, 0
  %i.dbm = select i1 %i.dbl, i32 %i.dbk, i32 %i.dbh
  %i.dbn = sdiv i32 %i.dbm, 400                   ; 2 uses
  %.neg15.i.i2191 = mul nsw i32 %i.dbn, -400
  %i.dbo = add nsw i32 %.neg15.i.i2191, %i.dbh    ; 3 uses
  %i.dbp = icmp ugt i8 %i.dbd, 2
  %.v.i.i2192 = select i1 %i.dbp, i32 -3, i32 9
  %i.dbq = add nsw i32 %.v.i.i2192, %i.dbi
  %i.dbr = mul nsw i32 %i.dbq, 153
  %i.dbs = add nsw i32 %i.dbr, 2
  %i.dbt = udiv i32 %i.dbs, 5
  %i.dbu = mul nsw i32 %i.dbo, 365
  %i.dbv = lshr i32 %i.dbo, 2
  %i.dbw = udiv i32 %i.dbo, 100
  %i.dbx = mul nsw i32 %i.dbn, 146097
  %i.dby = add nuw nsw i32 %i.dbj, -719469
  %i.dbz = add nsw i32 %i.dby, %i.dbt
  %i.dca = add nsw i32 %i.dbz, %i.dbx
  %i.dcb = add nsw i32 %i.dca, %i.dbv
  %i.dcc = add nsw i32 %i.dcb, %i.dbu
  %i.dcd = sub nsw i32 %i.dcc, %i.dbw             ; 3 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %bb.abd
    i8 79, label %bb.abr
  ]

bb.abd:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189
  %i.dce = add nsw i32 %i.dbf, -1                 ; 2 uses
  %i.dcf = add nsw i32 %i.dbf, -400
  %i.dcg = icmp slt i16 %i.dbe, 1
  %i.dch = select i1 %i.dcg, i32 %i.dcf, i32 %i.dce
  %i.dci = sdiv i32 %i.dch, 400                   ; 2 uses
  %.neg15.i.i.i.i2201 = mul nsw i32 %i.dci, -400
  %i.dcj = add nsw i32 %.neg15.i.i.i.i2201, %i.dce ; 3 uses
  %i.dck = mul nsw i32 %i.dcj, 365
  %i.dcl = lshr i32 %i.dcj, 2
  %i.dcm = udiv i32 %i.dcj, 100
  %i.dcn = mul nsw i32 %i.dci, 146097
  %i.dco = add nsw i32 %i.dcn, -719162
  %i.dcp = add nsw i32 %i.dco, %i.dcl
  %i.dcq = add nsw i32 %i.dcp, %i.dck
  %i.dcr = sub nsw i32 %i.dcq, %i.dcm             ; 4 uses
  %i.dcs = icmp sgt i32 %i.dcr, -5
  %i.dct = add nsw i32 %i.dcr, 4
  %.in.i.i.i.i2204 = select i1 %i.dcs, i32 %i.dct, i32 %i.dcr
  %i.dcu = urem i32 %.in.i.i.i.i2204, 7           ; 3 uses
  %i.dcv = sub nsw i32 1, %i.dcu                  ; 2 uses
  %i.dcw = sub nuw nsw i32 -5, %i.dcu
  %i.dcx = icmp samesign ugt i32 %i.dcu, 1
  %i.dcy = select i1 %i.dcx, i32 %i.dcw, i32 %i.dcv
  %.fr.i.i.i2205 = freeze i32 %i.dcy              ; 2 uses
  %i.dcz = srem i32 %.fr.i.i.i2205, 7
  %i.dda = add nsw i32 %i.dcv, %i.dcr
  %i.ddb = sub i32 %i.dda, %.fr.i.i.i2205
  %i.ddc = add i32 %i.ddb, %i.dcz                 ; 2 uses
  %i.ddd = icmp slt i32 %i.dcd, %i.ddc
  br i1 %i.ddd, label %bb.abe, label %bb.abl

bb.abe:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 48, ptr %i.al, align 1, !tbaa !27
  %i.dde = load ptr, ptr %0, align 8, !tbaa !16
  %i.ddf = getelementptr i8, ptr %i.dde, i64 -24
  %i.ddg = load i64, ptr %i.ddf, align 8
  %i.ddh = getelementptr inbounds i8, ptr %0, i64 %i.ddg
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.ddh, i64 16
  %i.ddj = load i64, ptr %i.ddi, align 8, !tbaa !4999
  %.not.i2210 = icmp eq i64 %i.ddj, 0
  br i1 %.not.i2210, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ddk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %bb.abh unwind label %bb.abk

bb.abg:                                           ; preds = %bb.abe
  %i.ddl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.abh unwind label %bb.abk   ; 0 uses

bb.abh:                                           ; preds = %bb.abf, %bb.abg
  %.0.i2211 = phi ptr [ %i.ddk, %bb.abf ], [ %0, %bb.abg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 48, ptr %i.ak, align 1, !tbaa !27
  %i.ddm = load ptr, ptr %.0.i2211, align 8, !tbaa !16
  %i.ddn = getelementptr i8, ptr %i.ddm, i64 -24
  %i.ddo = load i64, ptr %i.ddn, align 8
  %i.ddp = getelementptr inbounds i8, ptr %.0.i2211, i64 %i.ddo
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.ddp, i64 16
  %i.ddr = load i64, ptr %i.ddq, align 8, !tbaa !4999
  %.not.i2215 = icmp eq i64 %i.ddr, 0
  br i1 %.not.i2215, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.dds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2211, ptr noundef nonnull %i.ak, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 unwind label %bb.abk ; 0 uses

bb.abj:                                           ; preds = %bb.abh
  %i.ddt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2211, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 unwind label %bb.abk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219: ; preds = %bb.abj, %bb.abi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.abk:                                           ; preds = %bb.abj, %bb.abi, %bb.abg, %bb.abf
  %i.ddu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abl:                                           ; preds = %bb.abd
  %i.ddv = sub nsw i32 %i.dcd, %i.ddc             ; 2 uses
  %i.ddw = udiv i32 %i.ddv, 7
  %i.ddx = add nuw nsw i32 %i.ddw, 1
  %i.ddy = icmp ult i32 %i.ddv, 63
  br i1 %i.ddy, label %bb.abm, label %bb.abq

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 48, ptr %i.aj, align 1, !tbaa !27
  %i.ddz = load ptr, ptr %0, align 8, !tbaa !16
  %i.dea = getelementptr i8, ptr %i.ddz, i64 -24
  %i.deb = load i64, ptr %i.dea, align 8
  %i.dec = getelementptr inbounds i8, ptr %0, i64 %i.deb
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dec, i64 16
  %i.dee = load i64, ptr %i.ded, align 8, !tbaa !4999
  %.not.i2222 = icmp eq i64 %i.dee, 0
  br i1 %.not.i2222, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.def = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226 unwind label %bb.abp ; 0 uses

bb.abo:                                           ; preds = %bb.abm
  %i.deg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226 unwind label %bb.abp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226: ; preds = %bb.abo, %bb.abn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn, %bb.abq
  %i.deh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226, %bb.abl
  %i.dei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ddx)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.abp ; 0 uses

bb.abr:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #27
  store i8 37, ptr %i.fq, align 1, !tbaa !27
  store i8 79, ptr %i.iy, align 1, !tbaa !27
  %i.dej = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.dej, ptr %i.iz, align 1, !tbaa !27
  %i.dek = add nsw i32 %i.dbf, -1900
  store i32 %i.dek, ptr %i.ij, align 4, !tbaa !5033
  %i.del = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.abs unwind label %.loopexit2910
end_hunk_12
begin_hunk_13_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.0783, ptr %i.d, align 1, !tbaa !27
  %i.dwb = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwc = getelementptr i8, ptr %i.dwb, i64 -24
  %i.dwd = load i64, ptr %i.dwc, align 8
  %i.dwe = getelementptr inbounds i8, ptr %0, i64 %i.dwd
  %i.dwf = getelementptr inbounds nuw i8, ptr %i.dwe, i64 16
  %i.dwg = load i64, ptr %i.dwf, align 8, !tbaa !4999
  %.not.i2480 = icmp eq i64 %i.dwg, 0
  br i1 %.not.i2480, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dwh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484 unwind label %.loopexit ; 0 uses

bb.aih:                                           ; preds = %bb.aif
  %i.dwi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0783)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484: ; preds = %bb.aih, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aii

bb.aii:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484, %bb.aie
  %i.dwj = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dwj, ptr %i.c, align 1, !tbaa !27
  %i.dwk = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwl = getelementptr i8, ptr %i.dwk, i64 -24
  %i.dwm = load i64, ptr %i.dwl, align 8
  %i.dwn = getelementptr inbounds i8, ptr %0, i64 %i.dwm
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwn, i64 16
  %i.dwp = load i64, ptr %i.dwo, align 8, !tbaa !4999
  %.not.i2485 = icmp eq i64 %i.dwp, 0
  br i1 %.not.i2485, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dwq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dwr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dwj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483: ; preds = %bb.agk, %bb.agh, %bb.lc, %bb.ko, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920, %bb.agz, %bb.aga, %.thread2770, %.thread2759, %.thread2751, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123, %bb.fi, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067, %bb.dw, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14797 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ 0, %bb.abq ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ 0, %bb.pz ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ 0, %bb.oo ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ 0, %bb.rp ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ 0, %bb.za ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ 0, %bb.acw ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ 0, %bb.adp ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ 0, %bb.zy ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ 0, %bb.aez ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ 0, %bb.lc ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ci ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dw ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ 0, %bb.fi ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0783, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2751 ], [ 0, %.thread2759 ], [ 0, %.thread2770 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.ko ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3782 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ null, %bb.lc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ci ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dw ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ null, %bb.fi ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0707, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2751 ], [ null, %.thread2759 ], [ null, %.thread2770 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0779, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.ko ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7778 = phi i8 [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ %.0771, %bb.abq ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ %.0771, %bb.pz ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ %.3774, %bb.oo ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ %.0771, %bb.rp ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ %.0771, %bb.za ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ %.0771, %bb.acw ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ %.0771, %bb.adp ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ %.0771, %bb.zy ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ %.0771, %bb.aez ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ %.1772, %bb.lc ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ %.0771, %bb.t ], [ %.0771, %bb.aq ], [ %.0771, %bb.ci ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0771, %bb.dw ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ %.0771, %bb.fi ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ %.0771, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0771, %bb.ahm ], [ %.0771, %bb.md ], [ %.0771, %bb.no ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ %.3774, %bb.oj ], [ %.0771, %bb.ni ], [ %.3774, %bb.ov ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ %.0771, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ %.5776, %bb.tw ], [ %.0771, %bb.ss ], [ %.5776, %bb.ud ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ %.5776, %bb.tx ], [ %.0771, %bb.wj ], [ %.0771, %bb.wb ], [ %.0771, %.thread2751 ], [ %.0771, %.thread2759 ], [ %.0771, %.thread2770 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ %.0771, %bb.adj ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ %.0771, %bb.aga ], [ %.0771, %bb.qt ], [ %.0771, %bb.wc ], [ %.0771, %bb.agz ], [ %.0771, %bb.xs ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ %.0771, %bb.zs ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ %.1772, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1772, %bb.ko ], [ %.0771, %bb.agh ], [ %.0771, %bb.agk ]
  %i.dws = getelementptr inbounds nuw i8, ptr %.0707, i64 1
  br label %bb.h, !llvm.loop !5064

bb.ail:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !27
  %i.dwt = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwu = getelementptr i8, ptr %i.dwt, i64 -24
  %i.dwv = load i64, ptr %i.dwu, align 8
  %i.dww = getelementptr inbounds i8, ptr %0, i64 %i.dwv
  %i.dwx = getelementptr inbounds nuw i8, ptr %i.dww, i64 16
  %i.dwy = load i64, ptr %i.dwx, align 8, !tbaa !4999
  %.not.i2490 = icmp eq i64 %i.dwy, 0
  br i1 %.not.i2490, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dwz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494, %bb.ail
  %.not828 = icmp eq i8 %.0783, 0
  br i1 %.not828, label %_ZNSolsEj.exit2127, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0783, ptr %i.a, align 1, !tbaa !27
  %i.dxb = load ptr, ptr %0, align 8, !tbaa !16
  %i.dxc = getelementptr i8, ptr %i.dxb, i64 -24
  %i.dxd = load i64, ptr %i.dxc, align 8
  %i.dxe = getelementptr inbounds i8, ptr %0, i64 %i.dxd
  %i.dxf = getelementptr inbounds nuw i8, ptr %i.dxe, i64 16
  %i.dxg = load i64, ptr %i.dxf, align 8, !tbaa !4999
  %.not.i2495 = icmp eq i64 %i.dxg, 0
  br i1 %.not.i2495, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dxi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0783)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2127

_ZNSolsEj.exit2127:                               ; preds = %bb.bz, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.dxj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dxk = load i32, ptr %i.dxj, align 4, !tbaa !5035
  %i.dxl = and i32 %i.dxk, 8192
  %.not.i2500 = icmp eq i32 %i.dxl, 0
  br i1 %.not.i2500, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2127
  %i.dxm = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.dxn = icmp eq i32 %i.dxm, 0
  br i1 %i.dxn, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501

bb.aiu:                                           ; preds = %bb.ait
  %i.dxo = load ptr, ptr %5, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dxo, i64 32
  %i.dxq = load i32, ptr %i.dxp, align 8, !tbaa !4447
  %i.dxr = icmp eq i32 %i.dxq, 0
  br i1 %i.dxr, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501

bb.aiv:                                           ; preds = %bb.aiu
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxo, i64 232
  %i.dxt = load ptr, ptr %i.dxs, align 8, !tbaa !5023 ; 2 uses
  %i.dxu = load ptr, ptr %i.dxt, align 8, !tbaa !16
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxu, i64 48
  %i.dxw = load ptr, ptr %i.dxv, align 8
  %i.dxx = invoke noundef i32 %i.dxw(ptr noundef nonnull align 8 dereferenceable(64) %i.dxt)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501 unwind label %bb.aiw, !inline_history !5039 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dxy = landingpad { ptr, i32 }
          catch ptr null
  %i.dxz = extractvalue { ptr, i32 } %i.dxy, 0
  call void @__clang_call_terminate(ptr %i.dxz) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501: ; preds = %_ZNSolsEj.exit2127, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fc, %bb.fj, %bb.dq, %bb.dx, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jl, %bb.ic, %bb.gn, %bb.ar, %bb.u
  %.pn930.pn.pn = phi { ptr, i32 } [ %i.cmz, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2969, %bb.ld ], [ %lpad.phi3019, %bb.u ], [ %lpad.phi3014, %bb.ar ], [ %lpad.phi2904, %bb.adq ], [ %i.drw, %bb.agl ], [ %lpad.phi2999, %bb.dx ], [ %.pn912.pn, %bb.gn ], [ %.pn908.pn, %bb.ic ], [ %.pn904.pn, %bb.jl ], [ %i.cmm, %bb.xm ], [ %i.ty, %bb.ca ], [ %lpad.phi2989, %bb.fj ], [ %i.blv, %bb.op ], [ %lpad.phi2954, %bb.ow ], [ %lpad.phi2949, %bb.qa ], [ %i.ddu, %bb.abk ], [ %lpad.phi2944, %bb.rq ], [ %i.byb, %bb.st ], [ %i.bxz, %bb.sr ], [ %lpad.phi2939, %bb.ue ], [ %lpad.phi2959, %bb.np ], [ %lpad.phi2934, %bb.wk ], [ %i.deh, %bb.abp ], [ %i.cjv, %bb.xe ], [ %lpad.phi2919, %bb.zz ], [ %lpad.phi2909, %bb.acx ], [ %i.dbb, %bb.abc ], [ %.pn838.pn, %bb.afa ], [ %lpad.phi2914, %bb.abt ], [ %.pn920, %bb.dq ], [ %.pn916, %bb.fc ], [ %i.bii, %bb.nh ], [ %i.cgv, %bb.wd ], [ %i.bso, %bb.qu ], [ %i.cxg, %bb.zq ], [ %i.cuz, %bb.yz ], [ %i.djs, %bb.adi ], [ %lpad.phi3009, %bb.cj ], [ %i.dpp, %bb.afk ], [ %.pn895, %bb.mc ], [ %lpad.phi2924, %bb.zd ], [ %i.brx, %bb.qs ], [ %lpad.phi2929, %bb.xv ], [ %i.aze, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn930.pn.pn.pn = phi { ptr, i32 } [ %.pn930.pn.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn930.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !5026   ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !5027  ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !5028  ; 2 uses
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.n, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !5042
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !5042
  %i.t = icmp ult i8 %i.s, 7
  br i1 %i.t, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !5042
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !5042
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4447
  %i.ag = or i32 %i.af, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !5028 ; 3 uses
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
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
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
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !5042 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 7
  %i.bx = icmp ne i8 %i.bv, %i.bt
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !16
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !4447
  %i.ce = or i32 %i.cd, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !27
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
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !5063, !range !659, !noundef !660
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !27
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !4999
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
  %i.q = load i64, ptr %1, align 8, !tbaa !611    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !27
  %i.s = load ptr, ptr %0, align 8, !tbaa !16
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !4999
  %.not.i12 = icmp eq i64 %i.x, 0
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !5013
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !27
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !4999
  %.not.i15 = icmp eq i64 %i.ah, 0
  br i1 %.not.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !611 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !27
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !4999
  %.not.i18 = icmp eq i64 %i.as, 0
  br i1 %.not.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre26 = load i64, ptr %i.ak, align 8, !tbaa !5012
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  %i.av = phi i64 [ %.pre26, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ]
end_hunk_13
begin_hunk_14_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  store i8 37, ptr %i.ew, align 1, !tbaa !27
  %i.ow = load ptr, ptr %0, align 8, !tbaa !16
  %i.ox = getelementptr i8, ptr %i.ow, i64 -24
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds i8, ptr %0, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !4999
  %.not.i976 = icmp eq i64 %i.pb, 0
  br i1 %.not.i976, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %bb.av unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i977 = phi ptr [ %i.pc, %bb.at ], [ %0, %bb.au ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store i8 %.0783, ptr %i.ev, align 1, !tbaa !27
  %i.pe = load ptr, ptr %.0.i977, align 8, !tbaa !16
  %i.pf = getelementptr i8, ptr %i.pe, i64 -24
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %.0.i977, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !4999
  %.not.i981 = icmp eq i64 %i.pj, 0
  br i1 %.not.i981, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i977, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i977, i8 noundef signext %.0783)
          to label %bb.ay unwind label %.loopexit ; 0 uses

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0.i982 = phi ptr [ %i.pk, %bb.aw ], [ %.0.i977, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.pm = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i8 %i.pm, ptr %i.eu, align 1, !tbaa !27
  %i.pn = load ptr, ptr %.0.i982, align 8, !tbaa !16
  %i.po = getelementptr i8, ptr %i.pn, i64 -24
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = getelementptr inbounds i8, ptr %.0.i982, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !4999
  %.not.i986 = icmp eq i64 %i.ps, 0
  br i1 %.not.i986, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i982, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 unwind label %.loopexit ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i982, i8 noundef signext %i.pm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.bb:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i8 %i.la, ptr %i.et, align 1, !tbaa !27
  %i.pv = load ptr, ptr %0, align 8, !tbaa !16
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr %0, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !4999
  %.not.i991 = icmp eq i64 %i.qa, 0
  br i1 %.not.i991, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.et, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 unwind label %.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bb
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.be:                                            ; preds = %bb.h, %bb.h
  br i1 %.not928, label %bb.ck, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qd = icmp eq i8 %.0783, 79
  br i1 %i.qd, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i8 37, ptr %i.es, align 1, !tbaa !27
  %i.qe = load ptr, ptr %0, align 8, !tbaa !16
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %0, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !4999
  %.not.i996 = icmp eq i64 %i.qj, 0
  br i1 %.not.i996, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.bj unwind label %.loopexit ; 0 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.0.i997 = phi ptr [ %i.qk, %bb.bh ], [ %0, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store i8 79, ptr %i.er, align 1, !tbaa !27
  %i.qm = load ptr, ptr %.0.i997, align 8, !tbaa !16
  %i.qn = getelementptr i8, ptr %i.qm, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %.0.i997, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !4999
  %.not.i1001 = icmp eq i64 %i.qr, 0
  br i1 %.not.i1001, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i997, ptr noundef nonnull %i.er, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i997, i8 noundef signext 79)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i1002 = phi ptr [ %i.qs, %bb.bk ], [ %.0.i997, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.qu = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i8 %i.qu, ptr %i.eq, align 1, !tbaa !27
  %i.qv = load ptr, ptr %.0.i1002, align 8, !tbaa !16
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr %.0.i1002, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !4999
  %.not.i1006 = icmp eq i64 %i.ra, 0
  br i1 %.not.i1006, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1002, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 unwind label %.loopexit ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1002, i8 noundef signext %i.qu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.bp:                                            ; preds = %bb.bf
  %i.rd = load i16, ptr %2, align 8, !tbaa !5026  ; 4 uses
  %.not.i1011 = icmp eq i16 %i.rd, -32768
  br i1 %.not.i1011, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.re = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.rf = add i8 %i.re, -1
  %spec.select.i.i1012 = icmp ult i8 %i.rf, 12
  br i1 %spec.select.i.i1012, label %bb.br, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.rg = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
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
  %.not.i.i.i1014 = icmp ne i16 %i.rj, 0
  %i.rk = srem i16 %i.rd, 400
  %i.rl = icmp eq i16 %i.rk, 0
  %or.cond.i.i = or i1 %.not.i.i.i1014, %i.rl
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs
  %i.rm = zext nneg i8 %i.re to i64
  %20 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.rm
  %i.rn = getelementptr i8, ptr %20, i64 -1
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.bt, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.ro, %.thread.i.i ], [ 29, %bb.bt ]
  %.not2820 = icmp ult i8 %.sroa.03.0.i.i, %i.rg
  br i1 %.not2820, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rp = load ptr, ptr %0, align 8, !tbaa !16
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds i8, ptr %0, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !4447
  %i.rv = or i32 %i.ru, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rs, i32 noundef %i.rv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %.pre3454 = load i8, ptr %.0707, align 1, !tbaa !27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rw = phi i8 [ %.pre3454, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ]
  %i.rx = icmp eq i8 %i.rw, 99
  br i1 %i.rx, label %bb.bu, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017

bb.bu:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.ry = load i8, ptr %i.gw, align 8, !tbaa !5078, !range !659, !noundef !660
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sa = load ptr, ptr %0, align 8, !tbaa !16
  %i.sb = getelementptr i8, ptr %i.sa, i64 -24
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds i8, ptr %0, i64 %i.sc ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !4447
  %i.sg = or i32 %i.sf, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sd, i32 noundef %i.sg)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge: ; preds = %bb.bv
  %.pre3455 = load i8, ptr %.0707, align 1, !tbaa !27
  %i.sh = icmp eq i8 %.pre3455, 99
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge, %bb.bu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.si = phi i1 [ %i.sh, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge ], [ true, %bb.bu ], [ false, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.sj = load i16, ptr %2, align 8, !tbaa !5026
  %i.sk = sext i16 %i.sj to i32                   ; 2 uses
  %i.sl = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.sm = icmp ult i8 %i.sl, 3
  %.neg.i.i = sext i1 %i.sm to i32
  %i.sn = add nsw i32 %.neg.i.i, %i.sk            ; 4 uses
  %i.so = zext i8 %i.sl to i32                    ; 2 uses
  %i.sp = load i8, ptr %i.ix, align 1, !tbaa !5028
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

bb.bw:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017
  %.sroa.0.0.copyload.i.i1018 = load i64, ptr %i.iq, align 8, !tbaa !611
  %i.td = trunc i64 %.sroa.0.0.copyload.i.i1018 to i32
  store i32 %i.td, ptr %6, align 8, !tbaa !5029
  %.sroa.0.0.copyload.i = load i64, ptr %i.ir, align 8, !tbaa !611
  %i.te = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.te, ptr %i.is, align 4, !tbaa !5030
  %.sroa.0.0.copyload.i1019 = load i64, ptr %i.ip, align 8, !tbaa !611
  %i.tf = trunc i64 %.sroa.0.0.copyload.i1019 to i32
  store i32 %i.tf, ptr %i.it, align 8, !tbaa !5031
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017
  store i32 %i.sq, ptr %i.km, align 4, !tbaa !5032
  %i.tg = add i8 %i.sl, -1
  %spec.select.i.i1022 = icmp ult i8 %i.tg, 12
  br i1 %spec.select.i.i1022, label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.th = load ptr, ptr %0, align 8, !tbaa !16
  %i.ti = getelementptr i8, ptr %i.th, i64 -24
  %i.tj = load i64, ptr %i.ti, align 8
  %i.tk = getelementptr inbounds i8, ptr %0, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !4447
  %i.tn = or i32 %i.tm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.tk, i32 noundef %i.tn)
          to label %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge unwind label %bb.ca

._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge: ; preds = %bb.by
  %.sroa.0.0.copyload.i1026.pre = load i16, ptr %2, align 8, !tbaa !2388
  %.pre3464 = sext i16 %.sroa.0.0.copyload.i1026.pre to i32
  br label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025

_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025: ; preds = %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge, %bb.bx
  %.pre-phi = phi i32 [ %.pre3464, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge ], [ %i.sk, %bb.bx ]
  %.0.i1023 = phi i32 [ 0, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge ], [ %i.so, %bb.bx ]
  %i.to = add nsw i32 %.0.i1023, -1
  store i32 %i.to, ptr %i.kd, align 8, !tbaa !5025
  %i.tp = add nsw i32 %.pre-phi, -1900
  store i32 %i.tp, ptr %i.ij, align 4, !tbaa !5033
  %i.tq = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025
  store i32 %i.tq, ptr %i.ja, align 8, !tbaa !5021
  %i.tr = load ptr, ptr %0, align 8, !tbaa !16
  %i.ts = getelementptr i8, ptr %i.tr, i64 -24    ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = getelementptr inbounds i8, ptr %0, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !4447
  %i.tx = and i32 %i.tw, 5
  %.not2821 = icmp eq i32 %i.tx, 0
  br i1 %.not2821, label %bb.cb, label %_ZNSolsEj.exit2127

bb.ca:                                            ; preds = %bb.by, %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.cb:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i1027 = load i16, ptr %2, align 8, !tbaa !2388 ; 2 uses
  %i.tz = sext i16 %.sroa.0.0.copyload.i1027 to i32 ; 2 uses
  %i.ua = add nsw i32 %i.tz, -1                   ; 2 uses
  %i.ub = add nsw i32 %i.tz, -400
  %i.uc = icmp slt i16 %.sroa.0.0.copyload.i1027, 1
  %i.ud = select i1 %i.uc, i32 %i.ub, i32 %i.ua
  %i.ue = sdiv i32 %i.ud, 400                     ; 2 uses
  %.neg15.i.i1029 = mul nsw i32 %i.ue, -400
  %i.uf = add nsw i32 %.neg15.i.i1029, %i.ua      ; 3 uses
  %i.ug = lshr i32 %i.uf, 2
  %i.uh = udiv i32 %i.uf, 100
  %reass.add2890 = sub nsw i32 %i.sv, %i.uf
  %reass.mul2891 = mul nsw i32 %reass.add2890, 365
  %reass.add2893 = sub nsw i32 %i.su, %i.ue
  %reass.mul2894 = mul nsw i32 %reass.add2893, 146097
  %.neg2822 = add nuw nsw i32 %i.sq, -307
  %i.ui = add nsw i32 %.neg2822, %i.ta
  %i.uj = add nsw i32 %i.ui, %i.tb
  %i.uk = add nsw i32 %i.uj, %reass.mul2894
  %i.ul = add nuw nsw i32 %i.tc, %i.ug
  %i.um = sub nsw i32 %i.uk, %i.ul
  %i.un = add nsw i32 %i.um, %i.uh
  %i.uo = add nsw i32 %i.un, %reass.mul2891
  store i32 %i.uo, ptr %i.jb, align 4, !tbaa !5034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.51, i64 3, i1 false)
  %i.up = icmp eq i8 %.0783, 69
  br i1 %i.up, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 69, ptr %i.kt, align 1, !tbaa !27
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0806 = phi ptr [ %i.ku, %bb.cc ], [ %i.kt, %bb.cb ] ; 2 uses
  %i.uq = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.uq, ptr %.0806, align 1, !tbaa !27
  %i.ur = load i64, ptr %i.ts, align 8
  %i.us = getelementptr inbounds i8, ptr %0, i64 %i.ur ; 6 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 232
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !5023 ; 2 uses
  %.not.i1032 = icmp eq ptr %i.uu, null
  %i.uv = zext i1 %.not.i1032 to i8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 225 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %._crit_edge.i1038, label %bb.ce

._crit_edge.i1038:                                ; preds = %bb.cd
  %.phi.trans.insert.i1039 = getelementptr inbounds nuw i8, ptr %i.us, i64 224
  %.pre.i1040 = load i8, ptr %.phi.trans.insert.i1039, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1044

bb.ce:                                            ; preds = %bb.cd
  %i.uz = getelementptr inbounds nuw i8, ptr %i.us, i64 240
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1033 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i1033, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1034

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt16__throw_bad_castv() #31
end_hunk_14
begin_hunk_15_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.ex:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit1138
  %i.adn = load i32, ptr %i.kq, align 4, !tbaa !5035
  %i.ado = and i32 %i.adn, 8192
  %.not.i1151 = icmp eq i32 %i.ado, 0
  br i1 %.not.i1151, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.adp = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %bb.ez, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152

bb.ez:                                            ; preds = %bb.ey
  %i.adr = load ptr, ptr %9, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !4447
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.fa, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152

bb.fa:                                            ; preds = %bb.ez
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 232
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !5023 ; 2 uses
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !16
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = invoke noundef i32 %i.adz(ptr noundef nonnull align 8 dereferenceable(64) %i.adw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 unwind label %bb.fb, !inline_history !5039 ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  call void @__clang_call_terminate(ptr %i.aec) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.fc:                                            ; preds = %bb.et, %bb.es
  %.pn916 = phi { ptr, i32 } [ %lpad.phi2994, %bb.et ], [ %i.acu, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.aix

bb.fd:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123
  store i32 %i.aby, ptr %i.km, align 4, !tbaa !5032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff) #27
  store i8 37, ptr %i.ff, align 1, !tbaa !27
  store i8 79, ptr %i.kn, align 1, !tbaa !27
  %i.aed = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.aed, ptr %i.ko, align 1, !tbaa !27
  %i.aee = load ptr, ptr %0, align 8, !tbaa !16
  %i.aef = getelementptr i8, ptr %i.aee, i64 -24
  %i.aeg = load i64, ptr %i.aef, align 8
  %i.aeh = getelementptr inbounds i8, ptr %0, i64 %i.aeg ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 232
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !5023 ; 2 uses
  %.not.i1153 = icmp eq ptr %i.aej, null
  %i.aek = zext i1 %.not.i1153 to i8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 225 ; 2 uses
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %._crit_edge.i1159, label %bb.fe

._crit_edge.i1159:                                ; preds = %bb.fd
  %.phi.trans.insert.i1160 = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  %.pre.i1161 = load i8, ptr %.phi.trans.insert.i1160, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165

bb.fe:                                            ; preds = %bb.fd
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 240
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1154 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i1154, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1162 unwind label %.loopexit.split-lp2986

.noexc1162:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155: ; preds = %bb.fe
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 56
  %i.aer = load i8, ptr %i.aeq, align 8, !tbaa !4991
  %.not.i1.i.i1156 = icmp eq i8 %i.aer, 0
  br i1 %.not.i1.i.i1156, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 89
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aep)
          to label %.noexc1163 unwind label %.loopexit2985

.noexc1163:                                       ; preds = %bb.fh
  %i.aeu = load ptr, ptr %i.aep, align 8, !tbaa !16
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = invoke noundef signext i8 %i.aew(ptr noundef nonnull align 8 dereferenceable(570) %i.aep, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157 unwind label %.loopexit2985, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157: ; preds = %.noexc1163, %bb.fg
  %.0.i.i.i1158 = phi i8 [ %i.aet, %bb.fg ], [ %i.aex, %.noexc1163 ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  store i8 %.0.i.i.i1158, ptr %i.aey, align 8, !tbaa !4997
  store i8 1, ptr %i.ael, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157, %._crit_edge.i1159
  %i.aez = phi i8 [ %.pre.i1161, %._crit_edge.i1159 ], [ %.0.i.i.i1158, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157 ]
  %i.afa = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.aej, i8 %i.aek, ptr noundef nonnull align 8 dereferenceable(216) %i.aeh, i8 noundef signext %i.aez, ptr noundef nonnull %6, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.kp)
          to label %bb.fi unwind label %.loopexit2985 ; 0 uses

bb.fi:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2985:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165, %bb.fh, %.noexc1163
  %lpad.loopexit2987 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.loopexit.split-lp2986:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp2988 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.split-lp2986, %.loopexit2985
  %lpad.phi2989 = phi { ptr, i32 } [ %lpad.loopexit2987, %.loopexit2985 ], [ %lpad.loopexit.split-lp2988, %.loopexit.split-lp2986 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #27
  br label %bb.aix

bb.fk:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 %i.la, ptr %i.eg, align 1, !tbaa !27
  %i.afb = load ptr, ptr %0, align 8, !tbaa !16
  %i.afc = getelementptr i8, ptr %i.afb, i64 -24
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = getelementptr inbounds i8, ptr %0, i64 %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !4999
  %.not.i1166 = icmp eq i64 %i.afg, 0
  br i1 %.not.i1166, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 unwind label %.loopexit ; 0 uses

bb.fm:                                            ; preds = %bb.fk
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.fn:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.gx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afj = icmp eq i8 %.0783, 0
  br i1 %i.afj, label %bb.fp, label %bb.go

bb.fp:                                            ; preds = %bb.fo
  %i.afk = load i16, ptr %2, align 8, !tbaa !5026 ; 4 uses
  %.not.i1171 = icmp eq i16 %i.afk, -32768
  br i1 %.not.i1171, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afl = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.afm = add i8 %i.afl, -1
  %spec.select.i.i1172 = icmp ult i8 %i.afm, 12
  br i1 %spec.select.i.i1172, label %bb.fr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afn = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1174 = icmp eq i8 %i.afn, 0
  br i1 %.not8.i1174, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i.i1175 = icmp eq i8 %i.afl, 2
  %i.afo = and i16 %i.afk, 3
  %i.afp = icmp eq i16 %i.afo, 0
  %or.cond.i1176 = and i1 %i.afp, %.not.i.i1175
  br i1 %or.cond.i1176, label %bb.ft, label %.thread.i.i1177

bb.ft:                                            ; preds = %bb.fs
  %i.afq = srem i16 %i.afk, 100
  %.not.i.i.i1180 = icmp ne i16 %i.afq, 0
  %i.afr = srem i16 %i.afk, 400
  %i.afs = icmp eq i16 %i.afr, 0
  %or.cond.i.i1181 = or i1 %.not.i.i.i1180, %i.afs
  br i1 %or.cond.i.i1181, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182, label %.thread.i.i1177

.thread.i.i1177:                                  ; preds = %bb.ft, %bb.fs
  %i.aft = zext nneg i8 %i.afl to i64
  %21 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aft
  %i.afu = getelementptr i8, ptr %21, i64 -1
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182: ; preds = %bb.ft, %.thread.i.i1177
  %.sroa.03.0.i.i1179 = phi i8 [ %i.afv, %.thread.i.i1177 ], [ 29, %bb.ft ]
  %.not2818 = icmp ult i8 %.sroa.03.0.i.i1179, %i.afn
  br i1 %.not2818, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread: ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182
  %i.afw = load ptr, ptr %0, align 8, !tbaa !16
  %i.afx = getelementptr i8, ptr %i.afw, i64 -24
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = getelementptr inbounds i8, ptr %0, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !4447
  %i.agc = or i32 %i.agb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afz, i32 noundef %i.agc)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.agd = load ptr, ptr %0, align 8, !tbaa !16
  %i.age = getelementptr i8, ptr %i.agd, i64 -24
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = getelementptr inbounds i8, ptr %0, i64 %i.agf
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(264) %i.agg)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186 unwind label %bb.gi

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184
  %i.agh = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 -24
  %i.agj = load i64, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds i8, ptr %0, i64 %i.agj ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 225 ; 2 uses
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %._crit_edge.i.i1192, label %bb.fu

bb.fu:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agk, i64 240
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1187 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i.i.i1187, label %bb.fv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1195 unwind label %.loopexit.split-lp2981

.noexc1195:                                       ; preds = %bb.fv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188: ; preds = %bb.fu
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 56
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !4991
  %.not.i1.i.i.i1189 = icmp eq i8 %i.agr, 0
  br i1 %.not.i1.i.i.i1189, label %bb.fw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agp)
          to label %.noexc1196 unwind label %.loopexit2980

.noexc1196:                                       ; preds = %bb.fw
  %i.ags = load ptr, ptr %i.agp, align 8, !tbaa !16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 48
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = invoke noundef signext i8 %i.agu(ptr noundef nonnull align 8 dereferenceable(570) %i.agp, i8 noundef signext 32)
          to label %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge unwind label %.loopexit2980, !inline_history !4996 ; 0 uses

.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge: ; preds = %.noexc1196
  %.pre3450.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190: ; preds = %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188
  %.pre3450 = phi ptr [ %.pre3450.pre, %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge ], [ %i.agh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188 ]
  store i8 1, ptr %i.agl, align 1, !tbaa !4984
  br label %._crit_edge.i.i1192

._crit_edge.i.i1192:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190
  %i.agw = phi ptr [ %i.agh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186 ], [ %.pre3450, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190 ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agk, i64 224
  store i8 48, ptr %i.agx, align 8, !tbaa !4997
  %i.agy = getelementptr i8, ptr %i.agw, i64 -24  ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8
  %i.aha = getelementptr inbounds i8, ptr %0, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i32 130, ptr %i.ahb, align 8, !tbaa !4998
  %i.ahc = load i64, ptr %i.agy, align 8
  %i.ahd = getelementptr inbounds i8, ptr %0, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  store i64 2, ptr %i.ahe, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1199 = load i8, ptr %i.iw, align 2, !tbaa !27
  %i.ahf = zext i8 %.sroa.0.0.copyload.i1199 to i64
  %i.ahg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahf)
          to label %_ZNSolsEj.exit unwind label %bb.gj ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %._crit_edge.i.i1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i8 47, ptr %i.ef, align 1, !tbaa !27
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !16
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 -24
  %i.ahj = load i64, ptr %i.ahi, align 8
  %i.ahk = getelementptr inbounds i8, ptr %i.ahg, i64 %i.ahj
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !4999
  %.not.i1201 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i1201, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEj.exit
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fy:                                            ; preds = %_ZNSolsEj.exit
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, i8 noundef signext 47)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.ahp = load ptr, ptr %0, align 8, !tbaa !16
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -24
  %i.ahr = load i64, ptr %i.ahq, align 8
  %i.ahs = getelementptr inbounds i8, ptr %0, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  store i64 2, ptr %i.aht, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1206 = load i8, ptr %i.ix, align 1, !tbaa !27
  %i.ahu = zext i8 %.sroa.0.0.copyload.i1206 to i64
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahu)
          to label %_ZNSolsEj.exit1208 unwind label %bb.gk ; 4 uses

_ZNSolsEj.exit1208:                               ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store i8 47, ptr %i.ee, align 1, !tbaa !27
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !16
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 -24
  %i.ahy = load i64, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !4999
  %.not.i1209 = icmp eq i64 %i.aib, 0
  br i1 %.not.i1209, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSolsEj.exit1208
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gb:                                            ; preds = %_ZNSolsEj.exit1208
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, i8 noundef signext 47)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aie = load ptr, ptr %0, align 8, !tbaa !16
  %i.aif = getelementptr i8, ptr %i.aie, i64 -24
  %i.aig = load i64, ptr %i.aif, align 8
  %i.aih = getelementptr inbounds i8, ptr %0, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  store i64 2, ptr %i.aii, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1214 = load i16, ptr %2, align 8, !tbaa !2388
  %i.aij = srem i16 %.sroa.0.0.copyload.i1214, 100
  %.sext = sext i16 %i.aij to i32
  %i.aik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sext)
          to label %bb.gd unwind label %bb.gl     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.ail = load i32, ptr %i.kl, align 4, !tbaa !5035
  %i.aim = and i32 %i.ail, 8192
  %.not.i1215 = icmp eq i32 %i.aim, 0
  br i1 %.not.i1215, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ain = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %bb.gf, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216

bb.gf:                                            ; preds = %bb.ge
  %i.aip = load ptr, ptr %10, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !4447
  %i.ais = icmp eq i32 %i.air, 0
  br i1 %i.ais, label %bb.gg, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216

bb.gg:                                            ; preds = %bb.gf
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 232
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !5023 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !16
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = invoke noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(64) %i.aiu)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 unwind label %bb.gh, !inline_history !5039 ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aiz = landingpad { ptr, i32 }
          catch ptr null
  %i.aja = extractvalue { ptr, i32 } %i.aiz, 0
  call void @__clang_call_terminate(ptr %i.aja) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216: ; preds = %bb.gd, %bb.ge, %bb.gf, %bb.gg
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.gi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit2980:                                    ; preds = %bb.fw, %.noexc1196
  %lpad.loopexit2982 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp2981:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp2983 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %bb.fy, %bb.fx, %._crit_edge.i.i1192
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

bb.gm:                                            ; preds = %.loopexit2980, %.loopexit.split-lp2981, %bb.gl, %bb.gk, %bb.gj
  %.pn912 = phi { ptr, i32 } [ %i.aje, %bb.gl ], [ %i.ajd, %bb.gk ], [ %i.ajc, %bb.gj ], [ %lpad.loopexit2982, %.loopexit2980 ], [ %lpad.loopexit.split-lp2983, %.loopexit.split-lp2981 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.pn912.pn = phi { ptr, i32 } [ %.pn912, %bb.gm ], [ %i.ajb, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.aix

bb.go:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i8 37, ptr %i.ed, align 1, !tbaa !27
  %i.ajf = load ptr, ptr %0, align 8, !tbaa !16
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -24
  %i.ajh = load i64, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds i8, ptr %0, i64 %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !4999
  %.not.i1217 = icmp eq i64 %i.ajk, 0
  br i1 %.not.i1217, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.gr unwind label %.loopexit ; 0 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.0.i1218 = phi ptr [ %i.ajl, %bb.gp ], [ %0, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i8 %.0783, ptr %i.ec, align 1, !tbaa !27
  %i.ajn = load ptr, ptr %.0.i1218, align 8, !tbaa !16
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -24
  %i.ajp = load i64, ptr %i.ajo, align 8
  %i.ajq = getelementptr inbounds i8, ptr %.0.i1218, i64 %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !4999
  %.not.i1222 = icmp eq i64 %i.ajs, 0
  br i1 %.not.i1222, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1218, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.aju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1218, i8 noundef signext %.0783)
          to label %bb.gu unwind label %.loopexit ; 0 uses

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.0.i1223 = phi ptr [ %i.ajt, %bb.gs ], [ %.0.i1218, %bb.gt ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.ajv = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i8 %i.ajv, ptr %i.eb, align 1, !tbaa !27
  %i.ajw = load ptr, ptr %.0.i1223, align 8, !tbaa !16
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 -24
  %i.ajy = load i64, ptr %i.ajx, align 8
  %i.ajz = getelementptr inbounds i8, ptr %.0.i1223, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !4999
  %.not.i1227 = icmp eq i64 %i.akb, 0
  br i1 %.not.i1227, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1223, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 unwind label %.loopexit ; 0 uses

bb.gw:                                            ; preds = %bb.gu
  %i.akd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1223, i8 noundef signext %i.ajv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.gx:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i8 68, ptr %i.ea, align 1, !tbaa !27
  %i.ake = load ptr, ptr %0, align 8, !tbaa !16
  %i.akf = getelementptr i8, ptr %i.ake, i64 -24
  %i.akg = load i64, ptr %i.akf, align 8
  %i.akh = getelementptr inbounds i8, ptr %0, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !4999
  %.not.i1232 = icmp eq i64 %i.akj, 0
  br i1 %.not.i1232, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 unwind label %.loopexit ; 0 uses

bb.gz:                                            ; preds = %bb.gx
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ha:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.im, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akm = icmp eq i8 %.0783, 0
  br i1 %i.akm, label %bb.hc, label %bb.id

bb.hc:                                            ; preds = %bb.hb
  %i.akn = load i16, ptr %2, align 8, !tbaa !5026 ; 4 uses
  %.not.i1237 = icmp eq i16 %i.akn, -32768
  br i1 %.not.i1237, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ako = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.akp = add i8 %i.ako, -1
  %spec.select.i.i1238 = icmp ult i8 %i.akp, 12
  br i1 %spec.select.i.i1238, label %bb.he, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread

bb.he:                                            ; preds = %bb.hd
  %i.akq = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1240 = icmp eq i8 %i.akq, 0
  br i1 %.not8.i1240, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i1241 = icmp eq i8 %i.ako, 2
  %i.akr = and i16 %i.akn, 3
  %i.aks = icmp eq i16 %i.akr, 0
  %or.cond.i1242 = and i1 %i.aks, %.not.i.i1241
  br i1 %or.cond.i1242, label %bb.hg, label %.thread.i.i1243

bb.hg:                                            ; preds = %bb.hf
  %i.akt = srem i16 %i.akn, 100
  %.not.i.i.i1246 = icmp ne i16 %i.akt, 0
  %i.aku = srem i16 %i.akn, 400
  %i.akv = icmp eq i16 %i.aku, 0
  %or.cond.i.i1247 = or i1 %.not.i.i.i1246, %i.akv
  br i1 %or.cond.i.i1247, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248, label %.thread.i.i1243

.thread.i.i1243:                                  ; preds = %bb.hg, %bb.hf
  %i.akw = zext nneg i8 %i.ako to i64
  %22 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.akw
  %i.akx = getelementptr i8, ptr %22, i64 -1
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248: ; preds = %bb.hg, %.thread.i.i1243
  %.sroa.03.0.i.i1245 = phi i8 [ %i.aky, %.thread.i.i1243 ], [ 29, %bb.hg ]
  %.not2817 = icmp ult i8 %.sroa.03.0.i.i1245, %i.akq
  br i1 %.not2817, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread: ; preds = %bb.he, %bb.hd, %bb.hc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248
  %i.akz = load ptr, ptr %0, align 8, !tbaa !16
  %i.ala = getelementptr i8, ptr %i.akz, i64 -24
  %i.alb = load i64, ptr %i.ala, align 8
  %i.alc = getelementptr inbounds i8, ptr %0, i64 %i.alb ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !4447
  %i.alf = or i32 %i.ale, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alc, i32 noundef %i.alf)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.alg = load ptr, ptr %0, align 8, !tbaa !16
  %i.alh = getelementptr i8, ptr %i.alg, i64 -24
  %i.ali = load i64, ptr %i.alh, align 8
  %i.alj = getelementptr inbounds i8, ptr %0, i64 %i.ali
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(264) %i.alj)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252 unwind label %bb.hx

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250
  %i.alk = load ptr, ptr %0, align 8, !tbaa !16
  %i.all = getelementptr i8, ptr %i.alk, i64 -24
  %i.alm = load i64, ptr %i.all, align 8
  %i.aln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.hh unwind label %.loopexit2975

bb.hh:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252
  %i.alo = getelementptr inbounds i8, ptr %0, i64 %i.alm
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %12, ptr noundef nonnull align 8 dereferenceable(264) %i.alo, ptr noundef nonnull align 8 dereferenceable(8) %i.aln)
          to label %bb.hi unwind label %.loopexit2975

bb.hi:                                            ; preds = %bb.hh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #27
  %i.alp = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 -24
  %i.alr = load i64, ptr %i.alq, align 8
  %i.als = getelementptr inbounds i8, ptr %0, i64 %i.alr ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 225 ; 2 uses
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.alv = trunc nuw i8 %i.alu to i1
  br i1 %i.alv, label %._crit_edge.i.i1258, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 240
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1253 = icmp eq ptr %i.alx, null
  br i1 %.not.i.i.i.i1253, label %bb.hk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1261 unwind label %.loopexit.split-lp2976

.noexc1261:                                       ; preds = %bb.hk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254: ; preds = %bb.hj
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 56
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !4991
  %.not.i1.i.i.i1255 = icmp eq i8 %i.alz, 0
  br i1 %.not.i1.i.i.i1255, label %bb.hl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256

bb.hl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alx)
          to label %.noexc1262 unwind label %.loopexit2975

.noexc1262:                                       ; preds = %bb.hl
  %i.ama = load ptr, ptr %i.alx, align 8, !tbaa !16
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 48
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = invoke noundef signext i8 %i.amc(ptr noundef nonnull align 8 dereferenceable(570) %i.alx, i8 noundef signext 32)
          to label %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge unwind label %.loopexit2975, !inline_history !4996 ; 0 uses

.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge: ; preds = %.noexc1262
  %.pre3449.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256: ; preds = %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254
  %.pre3449 = phi ptr [ %.pre3449.pre, %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge ], [ %i.alp, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254 ]
  store i8 1, ptr %i.alt, align 1, !tbaa !4984
  br label %._crit_edge.i.i1258

._crit_edge.i.i1258:                              ; preds = %bb.hi, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256
  %i.ame = phi ptr [ %i.alp, %bb.hi ], [ %.pre3449, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256 ]
  %i.amf = getelementptr inbounds nuw i8, ptr %i.als, i64 224
  store i8 48, ptr %i.amf, align 8, !tbaa !4997
  %i.amg = getelementptr i8, ptr %i.ame, i64 -24  ; 2 uses
  %i.amh = load i64, ptr %i.amg, align 8
  %i.ami = getelementptr inbounds i8, ptr %0, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 24
  store i32 130, ptr %i.amj, align 8, !tbaa !4998
  %i.amk = load i64, ptr %i.amg, align 8
  %i.aml = getelementptr inbounds i8, ptr %0, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  store i64 4, ptr %i.amm, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1265 = load i16, ptr %2, align 8, !tbaa !2388
  %i.amn = sext i16 %.sroa.0.0.copyload.i1265 to i32
  %i.amo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.amn)
          to label %bb.hm unwind label %bb.hy     ; 4 uses

bb.hm:                                            ; preds = %._crit_edge.i.i1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i8 45, ptr %i.dz, align 1, !tbaa !27
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !16
  %i.amq = getelementptr i8, ptr %i.amp, i64 -24
  %i.amr = load i64, ptr %i.amq, align 8
  %i.ams = getelementptr inbounds i8, ptr %i.amo, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !4999
  %.not.i1266 = icmp eq i64 %i.amu, 0
  br i1 %.not.i1266, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, ptr noundef nonnull %i.dz, i64 noundef 1)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.ho:                                            ; preds = %bb.hm
  %i.amw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, i8 noundef signext 45)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.amx = load ptr, ptr %0, align 8, !tbaa !16
  %i.amy = getelementptr i8, ptr %i.amx, i64 -24
  %i.amz = load i64, ptr %i.amy, align 8
  %i.ana = getelementptr inbounds i8, ptr %0, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  store i64 2, ptr %i.anb, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1271 = load i8, ptr %i.iw, align 2, !tbaa !27
  %i.anc = zext i8 %.sroa.0.0.copyload.i1271 to i64
  %i.and = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anc)
          to label %_ZNSolsEj.exit1273 unwind label %bb.hz ; 4 uses

_ZNSolsEj.exit1273:                               ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i8 45, ptr %i.dy, align 1, !tbaa !27
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !16
  %i.anf = getelementptr i8, ptr %i.ane, i64 -24
  %i.ang = load i64, ptr %i.anf, align 8
  %i.anh = getelementptr inbounds i8, ptr %i.and, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !4999
  %.not.i1274 = icmp eq i64 %i.anj, 0
  br i1 %.not.i1274, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNSolsEj.exit1273
  %i.ank = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.and, ptr noundef nonnull %i.dy, i64 noundef 1)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %_ZNSolsEj.exit1273
  %i.anl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.and, i8 noundef signext 45)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.anm = load ptr, ptr %0, align 8, !tbaa !16
  %i.ann = getelementptr i8, ptr %i.anm, i64 -24
  %i.ano = load i64, ptr %i.ann, align 8
  %i.anp = getelementptr inbounds i8, ptr %0, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store i64 2, ptr %i.anq, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1279 = load i8, ptr %i.ix, align 1, !tbaa !27
  %i.anr = zext i8 %.sroa.0.0.copyload.i1279 to i64
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anr)
          to label %_ZNSolsEj.exit1281 unwind label %bb.ia ; 0 uses

_ZNSolsEj.exit1281:                               ; preds = %bb.hs
  %i.ant = load i32, ptr %i.kk, align 4, !tbaa !5035
  %i.anu = and i32 %i.ant, 8192
  %.not.i1282 = icmp eq i32 %i.anu, 0
  br i1 %.not.i1282, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283, label %bb.ht

bb.ht:                                            ; preds = %_ZNSolsEj.exit1281
  %i.anv = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.anw = icmp eq i32 %i.anv, 0
  br i1 %i.anw, label %bb.hu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283

bb.hu:                                            ; preds = %bb.ht
  %i.anx = load ptr, ptr %11, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !4447
  %i.aoa = icmp eq i32 %i.anz, 0
  br i1 %i.aoa, label %bb.hv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283

bb.hv:                                            ; preds = %bb.hu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 232
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !5023 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !16
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 48
  %i.aof = load ptr, ptr %i.aoe, align 8
  %i.aog = invoke noundef i32 %i.aof(ptr noundef nonnull align 8 dereferenceable(64) %i.aoc)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 unwind label %bb.hw, !inline_history !5039 ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aoh = landingpad { ptr, i32 }
          catch ptr null
  %i.aoi = extractvalue { ptr, i32 } %i.aoh, 0
  call void @__clang_call_terminate(ptr %i.aoi) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283: ; preds = %_ZNSolsEj.exit1281, %bb.ht, %bb.hu, %bb.hv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.hx:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

.loopexit2975:                                    ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252, %bb.hh, %bb.hl, %.noexc1262
  %lpad.loopexit2977 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp2976:                           ; preds = %bb.hk
  %lpad.loopexit.split-lp2978 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge.i.i1258
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

bb.ib:                                            ; preds = %.loopexit2975, %.loopexit.split-lp2976, %bb.ia, %bb.hz, %bb.hy
  %.pn908 = phi { ptr, i32 } [ %i.aom, %bb.ia ], [ %i.aol, %bb.hz ], [ %i.aok, %bb.hy ], [ %lpad.loopexit2977, %.loopexit2975 ], [ %lpad.loopexit.split-lp2978, %.loopexit.split-lp2976 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hx
  %.pn908.pn = phi { ptr, i32 } [ %.pn908, %bb.ib ], [ %i.aoj, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.aix

bb.id:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i8 37, ptr %i.dx, align 1, !tbaa !27
  %i.aon = load ptr, ptr %0, align 8, !tbaa !16
  %i.aoo = getelementptr i8, ptr %i.aon, i64 -24
  %i.aop = load i64, ptr %i.aoo, align 8
  %i.aoq = getelementptr inbounds i8, ptr %0, i64 %i.aop
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !4999
  %.not.i1284 = icmp eq i64 %i.aos, 0
  br i1 %.not.i1284, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dx, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit

bb.if:                                            ; preds = %bb.id
  %i.aou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.ig unwind label %.loopexit ; 0 uses

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.0.i1285 = phi ptr [ %i.aot, %bb.ie ], [ %0, %bb.if ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i8 %.0783, ptr %i.dw, align 1, !tbaa !27
  %i.aov = load ptr, ptr %.0.i1285, align 8, !tbaa !16
  %i.aow = getelementptr i8, ptr %i.aov, i64 -24
  %i.aox = load i64, ptr %i.aow, align 8
  %i.aoy = getelementptr inbounds i8, ptr %.0.i1285, i64 %i.aox
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !4999
  %.not.i1289 = icmp eq i64 %i.apa, 0
  br i1 %.not.i1289, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.apb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1285, ptr noundef nonnull %i.dw, i64 noundef 1)
          to label %bb.ij unwind label %.loopexit

bb.ii:                                            ; preds = %bb.ig
  %i.apc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1285, i8 noundef signext %.0783)
          to label %bb.ij unwind label %.loopexit ; 0 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.0.i1290 = phi ptr [ %i.apb, %bb.ih ], [ %.0.i1285, %bb.ii ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.apd = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i8 %i.apd, ptr %i.dv, align 1, !tbaa !27
  %i.ape = load ptr, ptr %.0.i1290, align 8, !tbaa !16
  %i.apf = getelementptr i8, ptr %i.ape, i64 -24
  %i.apg = load i64, ptr %i.apf, align 8
  %i.aph = getelementptr inbounds i8, ptr %.0.i1290, i64 %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !4999
  %.not.i1294 = icmp eq i64 %i.apj, 0
  br i1 %.not.i1294, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1290, ptr noundef nonnull %i.dv, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 unwind label %.loopexit ; 0 uses

bb.il:                                            ; preds = %bb.ij
  %i.apl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1290, i8 noundef signext %i.apd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.im:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store i8 70, ptr %i.du, align 1, !tbaa !27
  %i.apm = load ptr, ptr %0, align 8, !tbaa !16
  %i.apn = getelementptr i8, ptr %i.apm, i64 -24
  %i.apo = load i64, ptr %i.apn, align 8
  %i.app = getelementptr inbounds i8, ptr %0, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !4999
  %.not.i1299 = icmp eq i64 %i.apr, 0
  br i1 %.not.i1299, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.du, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 unwind label %.loopexit ; 0 uses

bb.io:                                            ; preds = %bb.im
  %i.apt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303: ; preds = %bb.io, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ip:                                            ; preds = %bb.h, %bb.h
  br i1 %.not928, label %bb.jv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.apu = icmp eq i8 %.0783, 0
  br i1 %i.apu, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.apv = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i1304 = icmp eq i16 %i.apv, -32768
  br i1 %.not.i1304, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apw = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.apx = add i8 %i.apw, -1
  %spec.select.i.i1305 = icmp ult i8 %i.apx, 12
  br i1 %spec.select.i.i1305, label %bb.it, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread

bb.it:                                            ; preds = %bb.is
  %i.apy = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1307 = icmp eq i8 %i.apy, 0
  br i1 %.not8.i1307, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1308 = icmp eq i8 %i.apw, 2
  %i.apz = and i16 %i.apv, 3
  %i.aqa = icmp eq i16 %i.apz, 0
  %or.cond.i1309 = and i1 %i.aqa, %.not.i.i1308
  br i1 %or.cond.i1309, label %bb.iv, label %.thread.i.i1310

bb.iv:                                            ; preds = %bb.iu
  %i.aqb = srem i16 %i.apv, 100
  %.not.i.i.i1313 = icmp ne i16 %i.aqb, 0
  %i.aqc = srem i16 %i.apv, 400
  %i.aqd = icmp eq i16 %i.aqc, 0
  %or.cond.i.i1314 = or i1 %.not.i.i.i1313, %i.aqd
  br i1 %or.cond.i.i1314, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315, label %.thread.i.i1310

.thread.i.i1310:                                  ; preds = %bb.iv, %bb.iu
  %i.aqe = zext nneg i8 %i.apw to i64
  %23 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aqe
  %i.aqf = getelementptr i8, ptr %23, i64 -1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315: ; preds = %bb.iv, %.thread.i.i1310
  %.sroa.03.0.i.i1312 = phi i8 [ %i.aqg, %.thread.i.i1310 ], [ 29, %bb.iv ]
  %.not2814 = icmp ult i8 %.sroa.03.0.i.i1312, %i.apy
  br i1 %.not2814, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %.thread.i.i.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread: ; preds = %bb.it, %bb.is, %bb.ir, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !16
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -24
  %i.aqj = load i64, ptr %i.aqi, align 8
  %i.aqk = getelementptr inbounds i8, ptr %0, i64 %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !4447
  %i.aqn = or i32 %i.aqm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aqk, i32 noundef %i.aqn)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread
  %.pre3444 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3445 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3446 = load i8, ptr %i.ix, align 1, !tbaa !5028
  %.pre3447 = load i8, ptr %.0707, align 1, !tbaa !27
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315
  %i.aqo = phi i8 [ %.pre3447, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqp = phi i8 [ %.pre3446, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqq = phi i8 [ %.pre3445, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apw, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ] ; 3 uses
  %i.aqr = phi i16 [ %.pre3444, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqs = sext i16 %i.aqr to i32
  %i.aqt = icmp ult i8 %i.aqq, 3
  %.neg.i.i1318 = sext i1 %i.aqt to i32
  %i.aqu = add nsw i32 %.neg.i.i1318, %i.aqs      ; 4 uses
  %i.aqv = zext i8 %i.aqq to i32
  %i.aqw = zext i8 %i.aqp to i32
  %i.aqx = add nsw i32 %i.aqu, -399
  %i.aqy = icmp slt i32 %i.aqu, 0
  %i.aqz = select i1 %i.aqy, i32 %i.aqx, i32 %i.aqu
  %i.ara = sdiv i32 %i.aqz, 400                   ; 2 uses
  %.neg15.i.i1319 = mul nsw i32 %i.ara, -400
  %i.arb = add nsw i32 %.neg15.i.i1319, %i.aqu    ; 3 uses
  %i.arc = icmp ugt i8 %i.aqq, 2
  %.v.i.i1320 = select i1 %i.arc, i32 -3, i32 9
  %i.ard = add nsw i32 %.v.i.i1320, %i.aqv
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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.arr = add nsw i32 %i.arq, 719471             ; 2 uses
  %i.ars = icmp sgt i32 %i.arq, -719472
  %i.art = add nsw i32 %i.arq, 573375
  %i.aru = select i1 %i.ars, i32 %i.arr, i32 %i.art
  %i.arv = sdiv i32 %i.aru, 146097                ; 2 uses
  %.neg.i.i1322 = mul nsw i32 %i.arv, -146097
  %i.arw = add nsw i32 %.neg.i.i1322, %i.arr      ; 5 uses
  %i.arx = udiv i32 %i.arw, 1460
  %i.ary = udiv i32 %i.arw, 36524
  %i.arz = udiv i32 %i.arw, 146096
  %.neg2876 = add nsw i32 %i.ary, %i.arw
  %i.asa = add nuw nsw i32 %i.arz, %i.arx
  %i.asb = sub nsw i32 %.neg2876, %i.asa          ; 3 uses
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
  %.v.i.i1323 = select i1 %i.asl, i32 3, i32 -9
  %i.asm = add nsw i32 %.v.i.i1323, %i.ask
  %i.asn = icmp ult i32 %i.asm, 3
  %i.aso = zext i1 %i.asn to i32
  %i.asp = add nsw i32 %i.ase, %i.aso             ; 2 uses
  %.sroa.02694.0.extract.trunc = trunc i32 %i.asp to i16
  %.sroa.02687.0.extract.trunc = shl i32 %i.asp, 16
  %sext2815 = add i32 %.sroa.02687.0.extract.trunc, -65536
  %i.asq = ashr exact i32 %sext2815, 16           ; 4 uses
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
  %.v3224 = select i1 %i.atg, i32 -10, i32 -4
  %i.ath = add nsw i32 %i.atf, %.v3224
  %.fr.i.i.i = freeze i32 %i.ath                  ; 2 uses
  %i.ati = srem i32 %.fr.i.i.i, 7
  %i.atj = sub nsw i32 %i.atd, %i.atf
  %i.atk = add nsw i32 %i.atj, -719430
  %i.atl = add i32 %i.atk, %.fr.i.i.i
  %i.atm = sub i32 %i.atl, %i.ati
  %i.atn = icmp slt i32 %i.arq, %i.atm
  %i.ato = sext i1 %i.atn to i16
  %spec.select = add i16 %.sroa.02694.0.extract.trunc, %i.ato
  store i16 %spec.select, ptr %13, align 2
  %i.atp = icmp eq i8 %i.aqo, 71
  br i1 %i.atp, label %bb.ix, label %bb.iz

bb.iw:                                            ; preds = %bb.iy, %bb.ix
  %i.atq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ix:                                            ; preds = %.thread.i.i.i.i
  %i.atr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %13)
          to label %.noexc1335 unwind label %bb.iw ; 0 uses

.noexc1335:                                       ; preds = %bb.ix
  %i.ats = load i16, ptr %13, align 2, !tbaa !5026
  %.not.i1334 = icmp eq i16 %i.ats, -32768
  br i1 %.not.i1334, label %bb.iy, label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit

bb.iy:                                            ; preds = %.noexc1335
  %i.att = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.45, i64 noundef 20)
          to label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit unwind label %bb.iw ; 0 uses

bb.iz:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.atu = load ptr, ptr %0, align 8, !tbaa !16
  %i.atv = getelementptr i8, ptr %i.atu, i64 -24
  %i.atw = load i64, ptr %i.atv, align 8
  %i.atx = getelementptr inbounds i8, ptr %0, i64 %i.atw
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(264) %i.atx)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338 unwind label %bb.ji

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338: ; preds = %bb.iz
  %i.aty = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.atz = getelementptr i8, ptr %i.aty, i64 -24
  %i.aua = load i64, ptr %i.atz, align 8
  %i.aub = getelementptr inbounds i8, ptr %0, i64 %i.aua ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 225 ; 2 uses
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %._crit_edge.i.i1344, label %bb.ja

bb.ja:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 240
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1339 = icmp eq ptr %i.aug, null
  br i1 %.not.i.i.i.i1339, label %bb.jb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1347 unwind label %.loopexit.split-lp2971

.noexc1347:                                       ; preds = %bb.jb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340: ; preds = %bb.ja
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 56
  %i.aui = load i8, ptr %i.auh, align 8, !tbaa !4991
  %.not.i1.i.i.i1341 = icmp eq i8 %i.aui, 0
  br i1 %.not.i1.i.i.i1341, label %bb.jc, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aug)
          to label %.noexc1348 unwind label %.loopexit2970

.noexc1348:                                       ; preds = %bb.jc
  %i.auj = load ptr, ptr %i.aug, align 8, !tbaa !16
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = invoke noundef signext i8 %i.aul(ptr noundef nonnull align 8 dereferenceable(570) %i.aug, i8 noundef signext 32)
          to label %.noexc1348._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342_crit_edge unwind label %.loopexit2970, !inline_history !4996 ; 0 uses

.noexc1348._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342_crit_edge: ; preds = %.noexc1348
  %.pre3448.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342

end_hunk_15
begin_hunk_16_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.ks:                                            ; preds = %bb.kq
  %.not.i1396 = icmp eq i64 %.sroa.02679.0.copyload, 12
  %i.ayu = add nsw i64 %.sroa.02679.0.copyload, -12
  br i1 %.not.i1396, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.ks, %bb.kp
  %storemerge = phi i64 [ %i.ayu, %bb.ks ], [ %.sroa.02679.0.copyload, %bb.kr ], [ %.sroa.02679.0.copyload, %bb.kp ] ; 3 uses
  %i.ayv = icmp slt i64 %storemerge, 10
  br i1 %i.ayv, label %bb.kt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kt:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !27
  %i.ayw = load ptr, ptr %0, align 8, !tbaa !16
  %i.ayx = getelementptr i8, ptr %i.ayw, i64 -24
  %i.ayy = load i64, ptr %i.ayx, align 8
  %i.ayz = getelementptr inbounds i8, ptr %0, i64 %i.ayy
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !4999
  %.not.i1399 = icmp eq i64 %i.azb, 0
  br i1 %.not.i1399, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.azc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 unwind label %bb.kw ; 0 uses

bb.kv:                                            ; preds = %bb.kt
  %i.azd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 unwind label %bb.kw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kw:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.kv, %bb.ku
  %i.aze = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.ks, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge2741 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 ], [ 12, %bb.ks ], [ 12, %bb.kr ]
  %i.azf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge2741)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.kw ; 0 uses

bb.kx:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #27
  store i8 37, ptr %i.fg, align 1, !tbaa !27
  store i8 79, ptr %i.kg, align 1, !tbaa !27
  %i.azg = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.azg, ptr %i.kh, align 1, !tbaa !27
  %i.azh = trunc i64 %.sroa.02679.0.copyload to i32
  store i32 %i.azh, ptr %i.it, align 8, !tbaa !5031
  %i.azi = load ptr, ptr %0, align 8, !tbaa !16
  %i.azj = getelementptr i8, ptr %i.azi, i64 -24
  %i.azk = load i64, ptr %i.azj, align 8
  %i.azl = getelementptr inbounds i8, ptr %0, i64 %i.azk ; 6 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 232
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !5023 ; 2 uses
  %.not.i1406 = icmp eq ptr %i.azn, null
  %i.azo = zext i1 %.not.i1406 to i8
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azl, i64 225 ; 2 uses
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.azr = trunc nuw i8 %i.azq to i1
  br i1 %i.azr, label %._crit_edge.i1412, label %bb.ky

._crit_edge.i1412:                                ; preds = %bb.kx
  %.phi.trans.insert.i1413 = getelementptr inbounds nuw i8, ptr %i.azl, i64 224
  %.pre.i1414 = load i8, ptr %.phi.trans.insert.i1413, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418

bb.ky:                                            ; preds = %bb.kx
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azl, i64 240
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1407 = icmp eq ptr %i.azt, null
  br i1 %.not.i.i.i1407, label %bb.kz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1415 unwind label %.loopexit.split-lp2966

.noexc1415:                                       ; preds = %bb.kz
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408: ; preds = %bb.ky
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 56
  %i.azv = load i8, ptr %i.azu, align 8, !tbaa !4991
  %.not.i1.i.i1409 = icmp eq i8 %i.azv, 0
  br i1 %.not.i1.i.i1409, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azt, i64 89
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410

bb.lb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azt)
          to label %.noexc1416 unwind label %.loopexit2965

.noexc1416:                                       ; preds = %bb.lb
  %i.azy = load ptr, ptr %i.azt, align 8, !tbaa !16
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 48
  %i.baa = load ptr, ptr %i.azz, align 8
  %i.bab = invoke noundef signext i8 %i.baa(ptr noundef nonnull align 8 dereferenceable(570) %i.azt, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410 unwind label %.loopexit2965, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410: ; preds = %.noexc1416, %bb.la
  %.0.i.i.i1411 = phi i8 [ %i.azx, %bb.la ], [ %i.bab, %.noexc1416 ] ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azl, i64 224
  store i8 %.0.i.i.i1411, ptr %i.bac, align 8, !tbaa !4997
  store i8 1, ptr %i.azp, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410, %._crit_edge.i1412
  %i.bad = phi i8 [ %.pre.i1414, %._crit_edge.i1412 ], [ %.0.i.i.i1411, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410 ]
  %i.bae = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azn, i8 %i.azo, ptr noundef nonnull align 8 dereferenceable(216) %i.azl, i8 noundef signext %i.bad, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lc unwind label %.loopexit2965 ; 0 uses

bb.lc:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2965:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418, %bb.lb, %.noexc1416
  %lpad.loopexit2967 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp2966:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp2968 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp2966, %.loopexit2965
  %lpad.phi2969 = phi { ptr, i32 } [ %lpad.loopexit2967, %.loopexit2965 ], [ %lpad.loopexit.split-lp2968, %.loopexit.split-lp2966 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #27
  br label %bb.aix

bb.le:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !27
  %i.baf = load ptr, ptr %0, align 8, !tbaa !16
  %i.bag = getelementptr i8, ptr %i.baf, i64 -24
  %i.bah = load i64, ptr %i.bag, align 8
  %i.bai = getelementptr inbounds i8, ptr %0, i64 %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 16
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !4999
  %.not.i1419 = icmp eq i64 %i.bak, 0
  br i1 %.not.i1419, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bal = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 unwind label %.loopexit ; 0 uses

bb.lg:                                            ; preds = %bb.le
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.lh:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.mn, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.ban = icmp eq i8 %.0783, 0
  br i1 %i.ban, label %bb.lj, label %bb.me

bb.lj:                                            ; preds = %bb.li
  %i.bao = load i16, ptr %2, align 8, !tbaa !5026 ; 9 uses
  %.not.i1424 = icmp eq i16 %i.bao, -32768
  br i1 %.not.i1424, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bap = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 8 uses
  %i.baq = add i8 %i.bap, -1
  %spec.select.i.i1425 = icmp ult i8 %i.baq, 12
  br i1 %spec.select.i.i1425, label %bb.ll, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519

bb.ll:                                            ; preds = %bb.lk
  %i.bar = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1427 = icmp eq i8 %i.bar, 0
  br i1 %.not8.i1427, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not.i.i1428 = icmp eq i8 %i.bap, 2
  %i.bas = and i16 %i.bao, 3
  %i.bat = icmp eq i16 %i.bas, 0
  %or.cond.i1429 = and i1 %i.bat, %.not.i.i1428
  br i1 %or.cond.i1429, label %bb.ln, label %.thread.i.i1430

bb.ln:                                            ; preds = %bb.lm
  %i.bau = srem i16 %i.bao, 100
  %.not.i.i.i1433 = icmp ne i16 %i.bau, 0
  %i.bav = srem i16 %i.bao, 400
  %i.baw = icmp eq i16 %i.bav, 0
  %or.cond.i.i1434 = or i1 %.not.i.i.i1433, %i.baw
  br i1 %or.cond.i.i1434, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435, label %.thread.i.i1430

.thread.i.i1430:                                  ; preds = %bb.ln, %bb.lm
  %i.bax = zext nneg i8 %i.bap to i64
  %24 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bax
  %i.bay = getelementptr i8, ptr %24, i64 -1
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435: ; preds = %bb.ln, %.thread.i.i1430
  %.sroa.03.0.i.i1432 = phi i8 [ %i.baz, %.thread.i.i1430 ], [ 29, %bb.ln ]
  %.not2809 = icmp ult i8 %.sroa.03.0.i.i1432, %i.bar
  br i1 %.not2809, label %.thread2744, label %.thread2743

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread: ; preds = %bb.ll
  %i.bba = load i8, ptr %i.gw, align 8, !tbaa !5078, !range !659, !noundef !660
  %i.bbb = trunc nuw i8 %i.bba to i1
  br i1 %i.bbb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519: ; preds = %bb.lk
  %i.bbc = load i8, ptr %i.gw, align 8, !tbaa !5078, !range !659, !noundef !660
  %i.bbd = trunc nuw i8 %i.bbc to i1
  br i1 %i.bbd, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread: ; preds = %bb.lj
  %i.bbe = load i8, ptr %i.gw, align 8, !tbaa !5078, !range !659, !noundef !660
  %i.bbf = trunc nuw i8 %i.bbe to i1
  br i1 %i.bbf, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

.thread2744:                                      ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435
  %i.bbg = load i8, ptr %i.gw, align 8, !tbaa !5078, !range !659, !noundef !660
  %i.bbh = trunc nuw i8 %i.bbg to i1
  br i1 %i.bbh, label %.thread2743, label %bb.md

.thread2743:                                      ; preds = %.thread2744, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435
  %.pr = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1439 = icmp eq i8 %.pr, 0
  br i1 %.not8.i1439, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.lo

bb.lo:                                            ; preds = %.thread2743
  %.not.i.i1440 = icmp eq i8 %i.bap, 2
  %i.bbi = and i16 %i.bao, 3
  %i.bbj = icmp eq i16 %i.bbi, 0
  %or.cond.i1441 = and i1 %i.bbj, %.not.i.i1440
  br i1 %or.cond.i1441, label %bb.lp, label %.thread.i.i1442

bb.lp:                                            ; preds = %bb.lo
  %i.bbk = srem i16 %i.bao, 100
  %.not.i.i.i1445 = icmp ne i16 %i.bbk, 0
  %i.bbl = srem i16 %i.bao, 400
  %i.bbm = icmp eq i16 %i.bbl, 0
  %or.cond.i.i1446 = or i1 %.not.i.i.i1445, %i.bbm
  br i1 %or.cond.i.i1446, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447, label %.thread.i.i1442

.thread.i.i1442:                                  ; preds = %bb.lp, %bb.lo
  %i.bbn = zext nneg i8 %i.bap to i64
  %25 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbn
  %i.bbo = getelementptr i8, ptr %25, i64 -1
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447: ; preds = %bb.lp, %.thread.i.i1442
  %.sroa.03.0.i.i1444 = phi i8 [ %i.bbp, %.thread.i.i1442 ], [ 29, %bb.lp ]
  %.not2810 = icmp ult i8 %.sroa.03.0.i.i1444, %.pr
  br i1 %.not2810, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.lq

bb.lq:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447
  %i.bbq = sext i16 %i.bao to i32                 ; 3 uses
  %i.bbr = icmp samesign ult i8 %i.bap, 3
  %.neg.i.i1448 = sext i1 %i.bbr to i32
  %i.bbs = add nsw i32 %.neg.i.i1448, %i.bbq      ; 4 uses
  %i.bbt = zext nneg i8 %i.bap to i32
  %i.bbu = zext i8 %.pr to i32
  %i.bbv = add nsw i32 %i.bbs, -399
  %i.bbw = icmp slt i32 %i.bbs, 0
  %i.bbx = select i1 %i.bbw, i32 %i.bbv, i32 %i.bbs
  %i.bby = sdiv i32 %i.bbx, 400                   ; 2 uses
  %.neg15.i.i1449 = mul nsw i32 %i.bby, -400
  %i.bbz = add nsw i32 %.neg15.i.i1449, %i.bbs    ; 3 uses
  %i.bca = icmp samesign ugt i8 %i.bap, 2
  %.v.i.i1450 = select i1 %i.bca, i32 -3, i32 9
  %i.bcb = add nsw i32 %.v.i.i1450, %i.bbt
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
  %.neg15.i.i1462 = mul nsw i32 %i.bcl, -400
  %i.bcm = add nsw i32 %.neg15.i.i1462, %i.bch    ; 3 uses
  %i.bcn = lshr i32 %i.bcm, 2
  %i.bco = udiv i32 %i.bcm, 100
  %reass.add = sub nsw i32 %i.bbz, %i.bcm
  %reass.mul = mul nsw i32 %reass.add, 365
  %reass.add2871 = sub nsw i32 %i.bby, %i.bcl
  %reass.mul2872 = mul nsw i32 %reass.add2871, 146097
  %reass.sub = sub nsw i32 %i.bco, %i.bcn
  %i.bcp = add nsw i32 %reass.sub, -306
  %.neg2866 = add nsw i32 %i.bcp, %i.bbu
  %.neg2868 = add nsw i32 %.neg2866, %i.bce
  %.neg2869 = add nsw i32 %.neg2868, %reass.mul2872
  %.neg2811 = add nsw i32 %.neg2869, %i.bcf
  %i.bcq = sub nsw i32 %.neg2811, %i.bcg
  %i.bcr = add nsw i32 %i.bcq, %reass.mul
  br label %bb.lr

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread, %.thread2743, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447
  %i.bcs = load i64, ptr %i.iq, align 8, !tbaa !5040
  %i.bct = mul nsw i64 %i.bcs, 1000000
  %i.bcu = load i64, ptr %i.jv, align 8, !tbaa !611
  %i.bcv = add nsw i64 %i.bct, %i.bcu
  %i.bcw = load i64, ptr %i.ir, align 8, !tbaa !5012
  %i.bcx = mul nsw i64 %i.bcw, 60000000
  %i.bcy = add nsw i64 %i.bcv, %i.bcx
  %i.bcz = load i64, ptr %i.ip, align 8, !tbaa !5013
  %i.bda = mul nsw i64 %i.bcz, 3600000000
  %i.bdb = add nsw i64 %i.bcy, %i.bda
  %i.bdc = load i8, ptr %i.ju, align 8, !tbaa !5082, !range !659, !noundef !660
  %i.bdd = shl nuw nsw i8 %i.bdc, 1
  %i.bde = zext nneg i8 %i.bdd to i64
  %i.bdf = sub nsw i64 1, %i.bde
  %i.bdg = mul nsw i64 %i.bdf, %i.bdb
  %i.bdh = sdiv i64 %i.bdg, 86400000000
  %i.bdi = trunc nsw i64 %i.bdh to i32
  br label %bb.lr

bb.lr:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, %bb.lq
  %.sroa.02671.0 = phi i32 [ %i.bcr, %bb.lq ], [ %i.bdi, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.bdj = load ptr, ptr %0, align 8, !tbaa !16
  %i.bdk = getelementptr i8, ptr %i.bdj, i64 -24
  %i.bdl = load i64, ptr %i.bdk, align 8
  %i.bdm = getelementptr inbounds i8, ptr %0, i64 %i.bdl
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(264) %i.bdm)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467 unwind label %bb.ma

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467: ; preds = %bb.lr
  %i.bdn = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.bdo = getelementptr i8, ptr %i.bdn, i64 -24
  %i.bdp = load i64, ptr %i.bdo, align 8
  %i.bdq = getelementptr inbounds i8, ptr %0, i64 %i.bdp ; 3 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 225 ; 2 uses
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.bdt = trunc nuw i8 %i.bds to i1
  br i1 %i.bdt, label %._crit_edge.i.i1473, label %bb.ls

bb.ls:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdq, i64 240
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1468 = icmp eq ptr %i.bdv, null
  br i1 %.not.i.i.i.i1468, label %bb.lt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1476 unwind label %.loopexit.split-lp2961

.noexc1476:                                       ; preds = %bb.lt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469: ; preds = %bb.ls
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 56
  %i.bdx = load i8, ptr %i.bdw, align 8, !tbaa !4991
  %.not.i1.i.i.i1470 = icmp eq i8 %i.bdx, 0
  br i1 %.not.i1.i.i.i1470, label %bb.lu, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471

bb.lu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdv)
          to label %.noexc1477 unwind label %.loopexit2960

.noexc1477:                                       ; preds = %bb.lu
  %i.bdy = load ptr, ptr %i.bdv, align 8, !tbaa !16
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 48
  %i.bea = load ptr, ptr %i.bdz, align 8
  %i.beb = invoke noundef signext i8 %i.bea(ptr noundef nonnull align 8 dereferenceable(570) %i.bdv, i8 noundef signext 32)
          to label %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge unwind label %.loopexit2960, !inline_history !4996 ; 0 uses

.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge: ; preds = %.noexc1477
  %.pre3443.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471: ; preds = %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469
  %.pre3443 = phi ptr [ %.pre3443.pre, %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge ], [ %i.bdn, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469 ]
  store i8 1, ptr %i.bdr, align 1, !tbaa !4984
  br label %._crit_edge.i.i1473

._crit_edge.i.i1473:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471
  %i.bec = phi ptr [ %i.bdn, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467 ], [ %.pre3443, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471 ]
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdq, i64 224
  store i8 48, ptr %i.bed, align 8, !tbaa !4997
  %i.bee = getelementptr i8, ptr %i.bec, i64 -24  ; 2 uses
  %i.bef = load i64, ptr %i.bee, align 8
  %i.beg = getelementptr inbounds i8, ptr %0, i64 %i.bef
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 24
  store i32 130, ptr %i.beh, align 8, !tbaa !4998
  %i.bei = load i64, ptr %i.bee, align 8
  %i.bej = getelementptr inbounds i8, ptr %0, i64 %i.bei
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 16
  store i64 3, ptr %i.bek, align 8, !tbaa !4999
  %i.bel = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.02671.0)
          to label %bb.lv unwind label %.loopexit2960 ; 0 uses

bb.lv:                                            ; preds = %._crit_edge.i.i1473
  %i.bem = load i32, ptr %i.kf, align 4, !tbaa !5035
  %i.ben = and i32 %i.bem, 8192
  %.not.i1480 = icmp eq i32 %i.ben, 0
  br i1 %.not.i1480, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.beo = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.bep = icmp eq i32 %i.beo, 0
  br i1 %i.bep, label %bb.lx, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481

bb.lx:                                            ; preds = %bb.lw
  %i.beq = load ptr, ptr %15, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 32
  %i.bes = load i32, ptr %i.ber, align 8, !tbaa !4447
  %i.bet = icmp eq i32 %i.bes, 0
  br i1 %i.bet, label %bb.ly, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481

bb.ly:                                            ; preds = %bb.lx
  %i.beu = getelementptr inbounds nuw i8, ptr %i.beq, i64 232
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !5023 ; 2 uses
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !16
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 48
  %i.bey = load ptr, ptr %i.bex, align 8
  %i.bez = invoke noundef i32 %i.bey(ptr noundef nonnull align 8 dereferenceable(64) %i.bev)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 unwind label %bb.lz, !inline_history !5039 ; 0 uses

bb.lz:                                            ; preds = %bb.ly
  %i.bfa = landingpad { ptr, i32 }
          catch ptr null
  %i.bfb = extractvalue { ptr, i32 } %i.bfa, 0
  call void @__clang_call_terminate(ptr %i.bfb) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481: ; preds = %bb.lv, %bb.lw, %bb.lx, %bb.ly
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ma:                                            ; preds = %bb.lr
  %i.bfc = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit2960:                                    ; preds = %._crit_edge.i.i1473, %bb.lu, %.noexc1477
  %lpad.loopexit2962 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2961:                           ; preds = %bb.lt
  %lpad.loopexit.split-lp2963 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb
end_hunk_16
begin_hunk_17_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.wf:                                            ; preds = %bb.we
  %i.chh = getelementptr inbounds nuw i8, ptr %i.cha, i64 240
  %i.chi = load ptr, ptr %i.chh, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1875 = icmp eq ptr %i.chi, null
  br i1 %.not.i.i.i1875, label %bb.wg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876

bb.wg:                                            ; preds = %bb.wf
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1883 unwind label %.loopexit.split-lp2931

.noexc1883:                                       ; preds = %bb.wg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876: ; preds = %bb.wf
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 56
  %i.chk = load i8, ptr %i.chj, align 8, !tbaa !4991
  %.not.i1.i.i1877 = icmp eq i8 %i.chk, 0
  br i1 %.not.i1.i.i1877, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chi, i64 89
  %i.chm = load i8, ptr %i.chl, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878

bb.wi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.chi)
          to label %.noexc1884 unwind label %.loopexit2930

.noexc1884:                                       ; preds = %bb.wi
  %i.chn = load ptr, ptr %i.chi, align 8, !tbaa !16
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chn, i64 48
  %i.chp = load ptr, ptr %i.cho, align 8
  %i.chq = invoke noundef signext i8 %i.chp(ptr noundef nonnull align 8 dereferenceable(570) %i.chi, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878 unwind label %.loopexit2930, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878: ; preds = %.noexc1884, %bb.wh
  %.0.i.i.i1879 = phi i8 [ %i.chm, %bb.wh ], [ %i.chq, %.noexc1884 ] ; 2 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %i.cha, i64 224
  store i8 %.0.i.i.i1879, ptr %i.chr, align 8, !tbaa !4997
  store i8 1, ptr %i.che, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878, %._crit_edge.i1880
  %i.chs = phi i8 [ %.pre.i1882, %._crit_edge.i1880 ], [ %.0.i.i.i1879, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878 ]
  %i.cht = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.chc, i8 %i.chd, ptr noundef nonnull align 8 dereferenceable(216) %i.cha, i8 noundef signext %i.chs, ptr noundef nonnull %6, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.jo)
          to label %bb.wj unwind label %.loopexit2930 ; 0 uses

bb.wj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2930:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886, %bb.wi, %.noexc1884
  %lpad.loopexit2932 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

.loopexit.split-lp2931:                           ; preds = %bb.wg
  %lpad.loopexit.split-lp2933 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wk:                                            ; preds = %.loopexit.split-lp2931, %.loopexit2930
  %lpad.phi2934 = phi { ptr, i32 } [ %lpad.loopexit2932, %.loopexit2930 ], [ %lpad.loopexit.split-lp2933, %.loopexit.split-lp2931 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #27
  br label %bb.aix

bb.wl:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 117, ptr %i.bf, align 1, !tbaa !27
  %i.chu = load ptr, ptr %0, align 8, !tbaa !16
  %i.chv = getelementptr i8, ptr %i.chu, i64 -24
  %i.chw = load i64, ptr %i.chv, align 8
  %i.chx = getelementptr inbounds i8, ptr %0, i64 %i.chw
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chx, i64 16
  %i.chz = load i64, ptr %i.chy, align 8, !tbaa !4999
  %.not.i1887 = icmp eq i64 %i.chz, 0
  br i1 %.not.i1887, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 unwind label %.loopexit ; 0 uses

bb.wn:                                            ; preds = %bb.wl
  %i.cib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 117)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891: ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.wo:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.yc, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cic = icmp eq i8 %.0783, 69
  br i1 %i.cic, label %bb.wq, label %bb.wz

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 37, ptr %i.be, align 1, !tbaa !27
  %i.cid = load ptr, ptr %0, align 8, !tbaa !16
  %i.cie = getelementptr i8, ptr %i.cid, i64 -24
  %i.cif = load i64, ptr %i.cie, align 8
  %i.cig = getelementptr inbounds i8, ptr %0, i64 %i.cif
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cig, i64 16
  %i.cii = load i64, ptr %i.cih, align 8, !tbaa !4999
  %.not.i1892 = icmp eq i64 %i.cii, 0
  br i1 %.not.i1892, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %bb.wt unwind label %.loopexit

bb.ws:                                            ; preds = %bb.wq
  %i.cik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.wt unwind label %.loopexit ; 0 uses

bb.wt:                                            ; preds = %bb.wr, %bb.ws
  %.0.i1893 = phi ptr [ %i.cij, %bb.wr ], [ %0, %bb.ws ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 69, ptr %i.bd, align 1, !tbaa !27
  %i.cil = load ptr, ptr %.0.i1893, align 8, !tbaa !16
  %i.cim = getelementptr i8, ptr %i.cil, i64 -24
  %i.cin = load i64, ptr %i.cim, align 8
  %i.cio = getelementptr inbounds i8, ptr %.0.i1893, i64 %i.cin
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 16
  %i.ciq = load i64, ptr %i.cip, align 8, !tbaa !4999
  %.not.i1897 = icmp eq i64 %i.ciq, 0
  br i1 %.not.i1897, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.cir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1893, ptr noundef nonnull %i.bd, i64 noundef 1)
          to label %bb.ww unwind label %.loopexit

bb.wv:                                            ; preds = %bb.wt
  %i.cis = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1893, i8 noundef signext 69)
          to label %bb.ww unwind label %.loopexit ; 0 uses

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.0.i1898 = phi ptr [ %i.cir, %bb.wu ], [ %.0.i1893, %bb.wv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.cit = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i8 %i.cit, ptr %i.bc, align 1, !tbaa !27
  %i.ciu = load ptr, ptr %.0.i1898, align 8, !tbaa !16
  %i.civ = getelementptr i8, ptr %i.ciu, i64 -24
  %i.ciw = load i64, ptr %i.civ, align 8
  %i.cix = getelementptr inbounds i8, ptr %.0.i1898, i64 %i.ciw
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cix, i64 16
  %i.ciz = load i64, ptr %i.ciy, align 8, !tbaa !4999
  %.not.i1902 = icmp eq i64 %i.ciz, 0
  br i1 %.not.i1902, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1898, ptr noundef nonnull %i.bc, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 unwind label %.loopexit ; 0 uses

bb.wy:                                            ; preds = %bb.ww
  %i.cjb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1898, i8 noundef signext %i.cit)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906: ; preds = %bb.wy, %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.wz:                                            ; preds = %bb.wp
  %i.cjc = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i1907 = icmp eq i16 %i.cjc, -32768
  br i1 %.not.i1907, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.cjd = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.cje = add i8 %i.cjd, -1
  %spec.select.i.i1908 = icmp ult i8 %i.cje, 12
  br i1 %spec.select.i.i1908, label %bb.xb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread

bb.xb:                                            ; preds = %bb.xa
  %i.cjf = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1910 = icmp eq i8 %i.cjf, 0
  br i1 %.not8.i1910, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %.not.i.i1911 = icmp eq i8 %i.cjd, 2
  %i.cjg = and i16 %i.cjc, 3
  %i.cjh = icmp eq i16 %i.cjg, 0
  %or.cond.i1912 = and i1 %i.cjh, %.not.i.i1911
  br i1 %or.cond.i1912, label %bb.xd, label %.thread.i.i1913

bb.xd:                                            ; preds = %bb.xc
  %i.cji = srem i16 %i.cjc, 100
  %.not.i.i.i1916 = icmp ne i16 %i.cji, 0
  %i.cjj = srem i16 %i.cjc, 400
  %i.cjk = icmp eq i16 %i.cjj, 0
  %or.cond.i.i1917 = or i1 %.not.i.i.i1916, %i.cjk
  br i1 %or.cond.i.i1917, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918, label %.thread.i.i1913

.thread.i.i1913:                                  ; preds = %bb.xd, %bb.xc
  %i.cjl = zext nneg i8 %i.cjd to i64
  %26 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cjl
  %i.cjm = getelementptr i8, ptr %26, i64 -1
  %i.cjn = load i8, ptr %i.cjm, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918: ; preds = %bb.xd, %.thread.i.i1913
  %.sroa.03.0.i.i1915 = phi i8 [ %i.cjn, %.thread.i.i1913 ], [ 29, %bb.xd ]
  %.not2803 = icmp ult i8 %.sroa.03.0.i.i1915, %i.cjf
  br i1 %.not2803, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread: ; preds = %bb.xb, %bb.xa, %bb.wz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918
  %i.cjo = load ptr, ptr %0, align 8, !tbaa !16
  %i.cjp = getelementptr i8, ptr %i.cjo, i64 -24
  %i.cjq = load i64, ptr %i.cjp, align 8
  %i.cjr = getelementptr inbounds i8, ptr %0, i64 %i.cjq ; 2 uses
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjr, i64 32
  %i.cjt = load i32, ptr %i.cjs, align 8, !tbaa !4447
  %i.cju = or i32 %i.cjt, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cjr, i32 noundef %i.cju)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge unwind label %bb.xe

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread
  %.pre3433 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3434 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3435 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920

bb.xe:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread
  %i.cjv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918
  %i.cjw = phi i8 [ %.pre3435, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjf, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ]
  %i.cjx = phi i8 [ %.pre3434, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjd, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ] ; 3 uses
  %i.cjy = phi i16 [ %.pre3433, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ] ; 2 uses
  %i.cjz = sext i16 %i.cjy to i32                 ; 4 uses
  %i.cka = icmp ult i8 %i.cjx, 3
  %.neg.i.i1921 = sext i1 %i.cka to i32
  %i.ckb = add nsw i32 %.neg.i.i1921, %i.cjz      ; 4 uses
  %i.ckc = zext i8 %i.cjx to i32
  %i.ckd = zext i8 %i.cjw to i32
  %i.cke = add nsw i32 %i.ckb, -399
  %i.ckf = icmp slt i32 %i.ckb, 0
  %i.ckg = select i1 %i.ckf, i32 %i.cke, i32 %i.ckb
  %i.ckh = sdiv i32 %i.ckg, 400                   ; 2 uses
  %.neg15.i.i1922 = mul nsw i32 %i.ckh, -400
  %i.cki = add nsw i32 %.neg15.i.i1922, %i.ckb    ; 3 uses
  %i.ckj = icmp ugt i8 %i.cjx, 2
  %.v.i.i1923 = select i1 %i.ckj, i32 -3, i32 9
  %i.ckk = add nsw i32 %.v.i.i1923, %i.ckc
  %i.ckl = mul nsw i32 %i.ckk, 153
  %i.ckm = add nsw i32 %i.ckl, 2
  %i.ckn = udiv i32 %i.ckm, 5
  %i.cko = mul nsw i32 %i.cki, 365
  %i.ckp = lshr i32 %i.cki, 2
  %i.ckq = udiv i32 %i.cki, 100
  %i.ckr = mul nsw i32 %i.ckh, 146097
  %i.cks = add nuw nsw i32 %i.ckd, -719469
  %i.ckt = add nsw i32 %i.cks, %i.ckn
  %i.cku = add nsw i32 %i.ckt, %i.ckr
  %i.ckv = add nsw i32 %i.cku, %i.ckp
  %i.ckw = add nsw i32 %i.ckv, %i.cko
  %i.ckx = sub nsw i32 %i.ckw, %i.ckq             ; 3 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %bb.xf
    i8 79, label %bb.xt
  ]

bb.xf:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920
  %i.cky = add nsw i32 %i.cjz, -1                 ; 2 uses
  %i.ckz = add nsw i32 %i.cjz, -400
  %i.cla = icmp slt i16 %i.cjy, 1
  %i.clb = select i1 %i.cla, i32 %i.ckz, i32 %i.cky
  %i.clc = sdiv i32 %i.clb, 400                   ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %i.clc, -400
  %i.cld = add nsw i32 %.neg15.i.i.i.i, %i.cky    ; 3 uses
  %i.cle = mul nsw i32 %i.cld, 365
  %i.clf = lshr i32 %i.cld, 2
  %i.clg = udiv i32 %i.cld, 100
  %i.clh = mul nsw i32 %i.clc, 146097
  %i.cli = add nsw i32 %i.clh, -719162
  %i.clj = add nsw i32 %i.cli, %i.clf
  %i.clk = add nsw i32 %i.clj, %i.cle
  %i.cll = sub nsw i32 %i.clk, %i.clg             ; 4 uses
  %i.clm = icmp sgt i32 %i.cll, -5
  %i.cln = add nsw i32 %i.cll, 4
  %.in.i.i.i.i1932 = select i1 %i.clm, i32 %i.cln, i32 %i.cll
  %i.clo = urem i32 %.in.i.i.i.i1932, 7           ; 3 uses
  %i.clp = sub nuw nsw i32 -6, %i.clo
  %.not2808 = icmp eq i32 %i.clo, 0
  %i.clq = select i1 %.not2808, i32 0, i32 %i.clp
  %.fr.i.i.i1933 = freeze i32 %i.clq              ; 2 uses
  %i.clr = srem i32 %.fr.i.i.i1933, 7
  %i.cls = add i32 %i.clo, %.fr.i.i.i1933
  %i.clt = sub i32 %i.cll, %i.cls
  %i.clu = add i32 %i.clt, %i.clr                 ; 2 uses
  %i.clv = icmp slt i32 %i.ckx, %i.clu
  br i1 %i.clv, label %bb.xg, label %bb.xn

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 48, ptr %i.bb, align 1, !tbaa !27
  %i.clw = load ptr, ptr %0, align 8, !tbaa !16
  %i.clx = getelementptr i8, ptr %i.clw, i64 -24
  %i.cly = load i64, ptr %i.clx, align 8
  %i.clz = getelementptr inbounds i8, ptr %0, i64 %i.cly
  %i.cma = getelementptr inbounds nuw i8, ptr %i.clz, i64 16
  %i.cmb = load i64, ptr %i.cma, align 8, !tbaa !4999
  %.not.i1936 = icmp eq i64 %i.cmb, 0
  br i1 %.not.i1936, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cmc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bb, i64 noundef 1)
          to label %bb.xj unwind label %bb.xm

bb.xi:                                            ; preds = %bb.xg
  %i.cmd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.xj unwind label %bb.xm     ; 0 uses

bb.xj:                                            ; preds = %bb.xh, %bb.xi
  %.0.i1937 = phi ptr [ %i.cmc, %bb.xh ], [ %0, %bb.xi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i8 48, ptr %i.ba, align 1, !tbaa !27
  %i.cme = load ptr, ptr %.0.i1937, align 8, !tbaa !16
  %i.cmf = getelementptr i8, ptr %i.cme, i64 -24
  %i.cmg = load i64, ptr %i.cmf, align 8
  %i.cmh = getelementptr inbounds i8, ptr %.0.i1937, i64 %i.cmg
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmh, i64 16
  %i.cmj = load i64, ptr %i.cmi, align 8, !tbaa !4999
  %.not.i1941 = icmp eq i64 %i.cmj, 0
  br i1 %.not.i1941, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cmk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1937, ptr noundef nonnull %i.ba, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 unwind label %bb.xm ; 0 uses

bb.xl:                                            ; preds = %bb.xj
  %i.cml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1937, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 unwind label %bb.xm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945: ; preds = %bb.xl, %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.xm:                                            ; preds = %bb.xl, %bb.xk, %bb.xi, %bb.xh
  %i.cmm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xn:                                            ; preds = %bb.xf
  %i.cmn = sub nsw i32 %i.ckx, %i.clu             ; 2 uses
  %i.cmo = udiv i32 %i.cmn, 7
  %i.cmp = add nuw nsw i32 %i.cmo, 1
  %i.cmq = icmp ult i32 %i.cmn, 63
  br i1 %i.cmq, label %bb.xo, label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 48, ptr %i.az, align 1, !tbaa !27
  %i.cmr = load ptr, ptr %0, align 8, !tbaa !16
  %i.cms = getelementptr i8, ptr %i.cmr, i64 -24
  %i.cmt = load i64, ptr %i.cms, align 8
  %i.cmu = getelementptr inbounds i8, ptr %0, i64 %i.cmt
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cmu, i64 16
  %i.cmw = load i64, ptr %i.cmv, align 8, !tbaa !4999
  %.not.i1948 = icmp eq i64 %i.cmw, 0
  br i1 %.not.i1948, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cmx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952 unwind label %bb.xr ; 0 uses

bb.xq:                                            ; preds = %bb.xo
  %i.cmy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952 unwind label %bb.xr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952: ; preds = %bb.xq, %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xs
  %i.cmz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952, %bb.xn
  %i.cna = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cmp)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.xr ; 0 uses

bb.xt:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #27
  store i8 37, ptr %i.fn, align 1, !tbaa !27
  store i8 79, ptr %i.jj, align 1, !tbaa !27
  %i.cnb = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.cnb, ptr %i.jk, align 1, !tbaa !27
  %i.cnc = add nsw i32 %i.cjz, -1900
  store i32 %i.cnc, ptr %i.ij, align 4, !tbaa !5033
  %i.cnd = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.xu unwind label %.loopexit2925

end_hunk_17
begin_hunk_18_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %.not.i1969 = icmp eq ptr %i.cny, null
  %i.cnz = zext i1 %.not.i1969 to i8
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnw, i64 225 ; 2 uses
  %i.cob = load i8, ptr %i.coa, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.coc = trunc nuw i8 %i.cob to i1
  br i1 %i.coc, label %._crit_edge.i1975, label %bb.xx

._crit_edge.i1975:                                ; preds = %bb.xw
  %.phi.trans.insert.i1976 = getelementptr inbounds nuw i8, ptr %i.cnw, i64 224
  %.pre.i1977 = load i8, ptr %.phi.trans.insert.i1976, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981

bb.xx:                                            ; preds = %bb.xw
  %i.cod = getelementptr inbounds nuw i8, ptr %i.cnw, i64 240
  %i.coe = load ptr, ptr %i.cod, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1970 = icmp eq ptr %i.coe, null
  br i1 %.not.i.i.i1970, label %bb.xy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971

bb.xy:                                            ; preds = %bb.xx
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1978 unwind label %.loopexit.split-lp2926

.noexc1978:                                       ; preds = %bb.xy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971: ; preds = %bb.xx
  %i.cof = getelementptr inbounds nuw i8, ptr %i.coe, i64 56
  %i.cog = load i8, ptr %i.cof, align 8, !tbaa !4991
  %.not.i1.i.i1972 = icmp eq i8 %i.cog, 0
  br i1 %.not.i1.i.i1972, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971
  %i.coh = getelementptr inbounds nuw i8, ptr %i.coe, i64 89
  %i.coi = load i8, ptr %i.coh, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973

bb.ya:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.coe)
          to label %.noexc1979 unwind label %.loopexit2925

.noexc1979:                                       ; preds = %bb.ya
  %i.coj = load ptr, ptr %i.coe, align 8, !tbaa !16
  %i.cok = getelementptr inbounds nuw i8, ptr %i.coj, i64 48
  %i.col = load ptr, ptr %i.cok, align 8
  %i.com = invoke noundef signext i8 %i.col(ptr noundef nonnull align 8 dereferenceable(570) %i.coe, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973 unwind label %.loopexit2925, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973: ; preds = %.noexc1979, %bb.xz
  %.0.i.i.i1974 = phi i8 [ %i.coi, %bb.xz ], [ %i.com, %.noexc1979 ] ; 2 uses
  %i.con = getelementptr inbounds nuw i8, ptr %i.cnw, i64 224
  store i8 %.0.i.i.i1974, ptr %i.con, align 8, !tbaa !4997
  store i8 1, ptr %i.coa, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973, %._crit_edge.i1975
  %i.coo = phi i8 [ %.pre.i1977, %._crit_edge.i1975 ], [ %.0.i.i.i1974, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973 ]
  %i.cop = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.cny, i8 %i.cnz, ptr noundef nonnull align 8 dereferenceable(216) %i.cnw, i8 noundef signext %i.coo, ptr noundef nonnull %6, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.jl)
          to label %.thread2751 unwind label %.loopexit2925 ; 0 uses

.thread2751:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yb:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #27
  br label %_ZNSolsEj.exit2127

bb.yc:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 85, ptr %i.ay, align 1, !tbaa !27
  %i.coq = load ptr, ptr %0, align 8, !tbaa !16
  %i.cor = getelementptr i8, ptr %i.coq, i64 -24
  %i.cos = load i64, ptr %i.cor, align 8
  %i.cot = getelementptr inbounds i8, ptr %0, i64 %i.cos
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cot, i64 16
  %i.cov = load i64, ptr %i.cou, align 8, !tbaa !4999
  %.not.i1982 = icmp eq i64 %i.cov, 0
  br i1 %.not.i1982, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 unwind label %.loopexit ; 0 uses

bb.ye:                                            ; preds = %bb.yc
  %i.cox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 85)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986: ; preds = %bb.ye, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yf:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.zk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.coy = icmp eq i8 %.0783, 69
  br i1 %i.coy, label %bb.yh, label %bb.yq

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 37, ptr %i.ax, align 1, !tbaa !27
  %i.coz = load ptr, ptr %0, align 8, !tbaa !16
  %i.cpa = getelementptr i8, ptr %i.coz, i64 -24
  %i.cpb = load i64, ptr %i.cpa, align 8
  %i.cpc = getelementptr inbounds i8, ptr %0, i64 %i.cpb
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpc, i64 16
  %i.cpe = load i64, ptr %i.cpd, align 8, !tbaa !4999
  %.not.i1987 = icmp eq i64 %i.cpe, 0
  br i1 %.not.i1987, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.cpf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ax, i64 noundef 1)
          to label %bb.yk unwind label %.loopexit

bb.yj:                                            ; preds = %bb.yh
  %i.cpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.yk unwind label %.loopexit ; 0 uses

bb.yk:                                            ; preds = %bb.yi, %bb.yj
  %.0.i1988 = phi ptr [ %i.cpf, %bb.yi ], [ %0, %bb.yj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 69, ptr %i.aw, align 1, !tbaa !27
  %i.cph = load ptr, ptr %.0.i1988, align 8, !tbaa !16
  %i.cpi = getelementptr i8, ptr %i.cph, i64 -24
  %i.cpj = load i64, ptr %i.cpi, align 8
  %i.cpk = getelementptr inbounds i8, ptr %.0.i1988, i64 %i.cpj
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpk, i64 16
  %i.cpm = load i64, ptr %i.cpl, align 8, !tbaa !4999
  %.not.i1992 = icmp eq i64 %i.cpm, 0
  br i1 %.not.i1992, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cpn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1988, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %bb.yn unwind label %.loopexit

bb.ym:                                            ; preds = %bb.yk
  %i.cpo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1988, i8 noundef signext 69)
          to label %bb.yn unwind label %.loopexit ; 0 uses

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %.0.i1993 = phi ptr [ %i.cpn, %bb.yl ], [ %.0.i1988, %bb.ym ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cpp = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %i.cpp, ptr %i.av, align 1, !tbaa !27
  %i.cpq = load ptr, ptr %.0.i1993, align 8, !tbaa !16
  %i.cpr = getelementptr i8, ptr %i.cpq, i64 -24
  %i.cps = load i64, ptr %i.cpr, align 8
  %i.cpt = getelementptr inbounds i8, ptr %.0.i1993, i64 %i.cps
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 16
  %i.cpv = load i64, ptr %i.cpu, align 8, !tbaa !4999
  %.not.i1997 = icmp eq i64 %i.cpv, 0
  br i1 %.not.i1997, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cpw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1993, ptr noundef nonnull %i.av, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 unwind label %.loopexit ; 0 uses

bb.yp:                                            ; preds = %bb.yn
  %i.cpx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1993, i8 noundef signext %i.cpp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yq:                                            ; preds = %bb.yg
  %i.cpy = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i2002 = icmp eq i16 %i.cpy, -32768
  br i1 %.not.i2002, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cpz = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.cqa = add i8 %i.cpz, -1
  %spec.select.i.i2003 = icmp ult i8 %i.cqa, 12
  br i1 %spec.select.i.i2003, label %bb.ys, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread

bb.ys:                                            ; preds = %bb.yr
  %i.cqb = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i2005 = icmp eq i8 %i.cqb, 0
  br i1 %.not8.i2005, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %.not.i.i2006 = icmp eq i8 %i.cpz, 2
  %i.cqc = and i16 %i.cpy, 3
  %i.cqd = icmp eq i16 %i.cqc, 0
  %or.cond.i2007 = and i1 %i.cqd, %.not.i.i2006
  br i1 %or.cond.i2007, label %bb.yu, label %.thread.i.i2008

bb.yu:                                            ; preds = %bb.yt
  %i.cqe = srem i16 %i.cpy, 100
  %.not.i.i.i2011 = icmp ne i16 %i.cqe, 0
  %i.cqf = srem i16 %i.cpy, 400
  %i.cqg = icmp eq i16 %i.cqf, 0
  %or.cond.i.i2012 = or i1 %.not.i.i.i2011, %i.cqg
  br i1 %or.cond.i.i2012, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013, label %.thread.i.i2008

.thread.i.i2008:                                  ; preds = %bb.yu, %bb.yt
  %i.cqh = zext nneg i8 %i.cpz to i64
  %27 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cqh
  %i.cqi = getelementptr i8, ptr %27, i64 -1
  %i.cqj = load i8, ptr %i.cqi, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013: ; preds = %bb.yu, %.thread.i.i2008
  %.sroa.03.0.i.i2010 = phi i8 [ %i.cqj, %.thread.i.i2008 ], [ 29, %bb.yu ]
  %.not2795 = icmp ult i8 %.sroa.03.0.i.i2010, %i.cqb
  br i1 %.not2795, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread: ; preds = %bb.ys, %bb.yr, %bb.yq, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013
  %i.cqk = load ptr, ptr %0, align 8, !tbaa !16
  %i.cql = getelementptr i8, ptr %i.cqk, i64 -24
  %i.cqm = load i64, ptr %i.cql, align 8
  %i.cqn = getelementptr inbounds i8, ptr %0, i64 %i.cqm ; 2 uses
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqn, i64 32
  %i.cqp = load i32, ptr %i.cqo, align 8, !tbaa !4447
  %i.cqq = or i32 %i.cqp, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cqn, i32 noundef %i.cqq)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread
  %.pre3430 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3431 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3432 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013
  %i.cqr = phi i8 [ %.pre3432, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cqb, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ]
  %i.cqs = phi i8 [ %.pre3431, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cpz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ] ; 3 uses
  %i.cqt = phi i16 [ %.pre3430, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cpy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ]
  %i.cqu = sext i16 %i.cqt to i32                 ; 2 uses
  %i.cqv = icmp ult i8 %i.cqs, 3
  %.neg.i.i2016 = sext i1 %i.cqv to i32
  %i.cqw = add nsw i32 %.neg.i.i2016, %i.cqu      ; 4 uses
  %i.cqx = zext i8 %i.cqs to i32
  %i.cqy = zext i8 %i.cqr to i32
  %i.cqz = add nsw i32 %i.cqw, -399
  %i.cra = icmp slt i32 %i.cqw, 0
  %i.crb = select i1 %i.cra, i32 %i.cqz, i32 %i.cqw
  %i.crc = sdiv i32 %i.crb, 400                   ; 2 uses
  %.neg15.i.i2017 = mul nsw i32 %i.crc, -400
  %i.crd = add nsw i32 %.neg15.i.i2017, %i.cqw    ; 3 uses
  %i.cre = icmp ugt i8 %i.cqs, 2
  %.v.i.i2018 = select i1 %i.cre, i32 -3, i32 9
  %i.crf = add nsw i32 %.v.i.i2018, %i.cqx
  %i.crg = mul nsw i32 %i.crf, 153
  %i.crh = add nsw i32 %i.crg, 2
  %i.cri = udiv i32 %i.crh, 5
  %i.crj = mul nsw i32 %i.crd, 365
  %i.crk = lshr i32 %i.crd, 2
  %i.crl = udiv i32 %i.crd, 100
  %i.crm = mul nsw i32 %i.crc, 146097
  %i.crn = add nuw nsw i32 %i.cqy, -719469
  %i.cro = add nsw i32 %i.crn, %i.cri
  %i.crp = add nsw i32 %i.cro, %i.crm
  %i.crq = add nsw i32 %i.crp, %i.crk
  %i.crr = add nsw i32 %i.crq, %i.crj
  %i.crs = sub nsw i32 %i.crr, %i.crl             ; 6 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %.thread.i.i.i.i2053
    i8 79, label %bb.zb
  ]

.thread.i.i.i.i2053:                              ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015
  %i.crt = add nsw i32 %i.crs, 719471             ; 2 uses
  %i.cru = icmp sgt i32 %i.crs, -719472
  %i.crv = add nsw i32 %i.crs, 573375
  %i.crw = select i1 %i.cru, i32 %i.crt, i32 %i.crv
  %i.crx = sdiv i32 %i.crw, 146097                ; 2 uses
  %.neg.i.i2020 = mul nsw i32 %i.crx, -146097
  %i.cry = add nsw i32 %.neg.i.i2020, %i.crt      ; 5 uses
  %i.crz = udiv i32 %i.cry, 1460
  %i.csa = udiv i32 %i.cry, 36524
  %i.csb = udiv i32 %i.cry, 146096
  %.neg2843 = add nsw i32 %i.csa, %i.cry
  %i.csc = add nuw nsw i32 %i.csb, %i.crz
  %i.csd = sub nsw i32 %.neg2843, %i.csc          ; 3 uses
  %i.cse = udiv i32 %i.csd, 365                   ; 2 uses
  %i.csf = mul nsw i32 %i.crx, 400
  %i.csg = add nsw i32 %i.cse, %i.csf
  %i.csh = udiv i32 %i.csd, 1460
  %i.csi = udiv i32 %i.csd, 36500
  %.neg36.i.i2022 = mul i32 %i.cse, -365
  %.neg37.i.i2023 = sub nsw i32 %i.cry, %i.csh
  %.neg25.i.i2024 = add nsw i32 %.neg37.i.i2023, %i.csi
  %i.csj = add i32 %.neg25.i.i2024, %.neg36.i.i2022
  %i.csk = mul i32 %i.csj, 5
  %i.csl = add i32 %i.csk, 2                      ; 2 uses
  %i.csm = udiv i32 %i.csl, 153
  %i.csn = icmp ult i32 %i.csl, 1530
  %.v.i.i2025 = select i1 %i.csn, i32 3, i32 -9
  %i.cso = add nsw i32 %.v.i.i2025, %i.csm
  %i.csp = icmp ult i32 %i.cso, 3
  %i.csq = zext i1 %i.csp to i32
  %i.csr = add nsw i32 %i.csg, %i.csq
  %.sroa.02585.0.extract.trunc = shl i32 %i.csr, 16 ; 2 uses
  %sext = add i32 %.sroa.02585.0.extract.trunc, -65536
  %i.css = ashr exact i32 %sext, 16               ; 4 uses
  %i.cst = add nsw i32 %i.css, -399
  %i.csu = icmp slt i32 %i.css, 0
  %i.csv = select i1 %i.csu, i32 %i.cst, i32 %i.css
  %i.csw = sdiv i32 %i.csv, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2048 = mul nsw i32 %i.csw, -400
  %i.csx = add nsw i32 %.neg15.i.i.i.i.i2048, %i.css ; 3 uses
  %i.csy = mul nsw i32 %i.csx, 365
  %i.csz = lshr i32 %i.csx, 2
  %i.cta = udiv i32 %i.csx, 100
  %i.ctb = mul nsw i32 %i.csw, 146097
  %i.ctc = add nsw i32 %i.ctb, 275
  %i.ctd = add nsw i32 %i.ctc, %i.csz
  %i.cte = add nsw i32 %i.ctd, %i.csy
  %i.ctf = sub nsw i32 %i.cte, %i.cta             ; 3 uses
  %i.ctg = icmp sgt i32 %i.ctf, 719433
  %.in.i.i.i.i2050.v = select i1 %i.ctg, i32 -719434, i32 -719438
  %.in.i.i.i.i2050 = add nsw i32 %i.ctf, %.in.i.i.i.i2050.v
  %i.cth = urem i32 %.in.i.i.i.i2050, 7           ; 3 uses
  %i.cti = icmp samesign ult i32 %i.cth, 4
  %.v = select i1 %i.cti, i32 -10, i32 -4
  %i.ctj = add nsw i32 %i.cth, %.v
  %.fr.i.i.i2052 = freeze i32 %i.ctj              ; 2 uses
  %i.ctk = srem i32 %.fr.i.i.i2052, 7
  %i.ctl = sub nsw i32 %i.ctf, %i.cth
  %i.ctm = add nsw i32 %i.ctl, -719430
  %i.ctn = add i32 %i.ctm, %.fr.i.i.i2052
  %i.cto = sub i32 %i.ctn, %i.ctk                 ; 2 uses
  %i.ctp = icmp slt i32 %i.crs, %i.cto
  br i1 %i.ctp, label %.thread.i.i.i.i2080, label %bb.yv

.thread.i.i.i.i2080:                              ; preds = %.thread.i.i.i.i2053
  %sext2800 = add i32 %.sroa.02585.0.extract.trunc, -131072
  %i.ctq = ashr exact i32 %sext2800, 16           ; 4 uses
  %i.ctr = add nsw i32 %i.ctq, -399
  %i.cts = icmp slt i32 %i.ctq, 0
  %i.ctt = select i1 %i.cts, i32 %i.ctr, i32 %i.ctq
  %i.ctu = sdiv i32 %i.ctt, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2075 = mul nsw i32 %i.ctu, -400
  %i.ctv = add nsw i32 %.neg15.i.i.i.i.i2075, %i.ctq ; 3 uses
  %i.ctw = mul nsw i32 %i.ctv, 365
  %i.ctx = lshr i32 %i.ctv, 2
  %i.cty = udiv i32 %i.ctv, 100
  %i.ctz = mul nsw i32 %i.ctu, 146097
  %i.cua = add nsw i32 %i.ctz, 275
  %i.cub = add nsw i32 %i.cua, %i.ctx
  %i.cuc = add nsw i32 %i.cub, %i.ctw
  %i.cud = sub nsw i32 %i.cuc, %i.cty             ; 3 uses
  %i.cue = icmp sgt i32 %i.cud, 719433
  %.in.i.i.i.i2077.v = select i1 %i.cue, i32 -719434, i32 -719438
  %.in.i.i.i.i2077 = add nsw i32 %i.cud, %.in.i.i.i.i2077.v
  %i.cuf = urem i32 %.in.i.i.i.i2077, 7           ; 3 uses
  %i.cug = icmp samesign ult i32 %i.cuf, 4
  %.v3222 = select i1 %i.cug, i32 -10, i32 -4
  %i.cuh = add nsw i32 %i.cuf, %.v3222
  %.fr.i.i.i2079 = freeze i32 %i.cuh              ; 2 uses
  %i.cui = srem i32 %.fr.i.i.i2079, 7
  %i.cuj = sub nsw i32 %i.cud, %i.cuf
  %i.cuk = add nsw i32 %i.cuj, -719430
  %i.cul = add i32 %i.cuk, %.fr.i.i.i2079
  %i.cum = sub i32 %i.cul, %i.cui
  br label %bb.yv

bb.yv:                                            ; preds = %.thread.i.i.i.i2080, %.thread.i.i.i.i2053
  %.sroa.02589.0 = phi i32 [ %i.cum, %.thread.i.i.i.i2080 ], [ %i.cto, %.thread.i.i.i.i2053 ]
  %i.cun = sub nsw i32 %i.crs, %.sroa.02589.0     ; 2 uses
  %i.cuo = sdiv i32 %i.cun, 7
  %i.cup = add nsw i32 %i.cuo, 1
  %i.cuq = icmp slt i32 %i.cun, 63
  br i1 %i.cuq, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 48, ptr %i.au, align 1, !tbaa !27
  %i.cur = load ptr, ptr %0, align 8, !tbaa !16
  %i.cus = getelementptr i8, ptr %i.cur, i64 -24
  %i.cut = load i64, ptr %i.cus, align 8
  %i.cuu = getelementptr inbounds i8, ptr %0, i64 %i.cut
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cuu, i64 16
  %i.cuw = load i64, ptr %i.cuv, align 8, !tbaa !4999
  %.not.i2087 = icmp eq i64 %i.cuw, 0
  br i1 %.not.i2087, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091 unwind label %bb.yz ; 0 uses

bb.yy:                                            ; preds = %bb.yw
  %i.cuy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091 unwind label %bb.yz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091: ; preds = %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.za
  %i.cuz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.za:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091, %bb.yv
  %i.cva = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cup)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.yz ; 0 uses

end_hunk_18
begin_hunk_19_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  br label %bb.aix

bb.aaa:                                           ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i8 37, ptr %i.as, align 1, !tbaa !27
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cxc, i64 16
  %i.cyg = load i64, ptr %i.cyf, align 8, !tbaa !4999
  %.not.i2141 = icmp eq i64 %i.cyg, 0
  br i1 %.not.i2141, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cyh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %bb.aad unwind label %bb.zq

bb.aac:                                           ; preds = %bb.aaa
  %i.cyi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aad unwind label %bb.zq    ; 0 uses

bb.aad:                                           ; preds = %bb.aab, %bb.aac
  %.0.i2142 = phi ptr [ %i.cyh, %bb.aab ], [ %0, %bb.aac ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %.0783, ptr %i.ar, align 1, !tbaa !27
  %i.cyj = load ptr, ptr %.0.i2142, align 8, !tbaa !16
  %i.cyk = getelementptr i8, ptr %i.cyj, i64 -24
  %i.cyl = load i64, ptr %i.cyk, align 8
  %i.cym = getelementptr inbounds i8, ptr %.0.i2142, i64 %i.cyl
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 16
  %i.cyo = load i64, ptr %i.cyn, align 8, !tbaa !4999
  %.not.i2146 = icmp eq i64 %i.cyo, 0
  br i1 %.not.i2146, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cyp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2142, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %bb.aag unwind label %bb.zq

bb.aaf:                                           ; preds = %bb.aad
  %i.cyq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2142, i8 noundef signext %.0783)
          to label %bb.aag unwind label %bb.zq    ; 0 uses

bb.aag:                                           ; preds = %bb.aae, %bb.aaf
  %.0.i2147 = phi ptr [ %i.cyp, %bb.aae ], [ %.0.i2142, %bb.aaf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cyr = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.cyr, ptr %i.aq, align 1, !tbaa !27
  %i.cys = load ptr, ptr %.0.i2147, align 8, !tbaa !16
  %i.cyt = getelementptr i8, ptr %i.cys, i64 -24
  %i.cyu = load i64, ptr %i.cyt, align 8
  %i.cyv = getelementptr inbounds i8, ptr %.0.i2147, i64 %i.cyu
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyv, i64 16
  %i.cyx = load i64, ptr %i.cyw, align 8, !tbaa !4999
  %.not.i2151 = icmp eq i64 %i.cyx, 0
  br i1 %.not.i2151, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cyy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2147, ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 unwind label %bb.zq ; 0 uses

bb.aai:                                           ; preds = %bb.aag
  %i.cyz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2147, i8 noundef signext %i.cyr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 unwind label %bb.zq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155: ; preds = %bb.aai, %bb.aah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aaj:                                           ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 119, ptr %i.ap, align 1, !tbaa !27
  %i.cza = load ptr, ptr %0, align 8, !tbaa !16
  %i.czb = getelementptr i8, ptr %i.cza, i64 -24
  %i.czc = load i64, ptr %i.czb, align 8
  %i.czd = getelementptr inbounds i8, ptr %0, i64 %i.czc
  %i.cze = getelementptr inbounds nuw i8, ptr %i.czd, i64 16
  %i.czf = load i64, ptr %i.cze, align 8, !tbaa !4999
  %.not.i2156 = icmp eq i64 %i.czf, 0
  br i1 %.not.i2156, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.czg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 unwind label %.loopexit ; 0 uses

bb.aal:                                           ; preds = %bb.aaj
  %i.czh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 119)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160: ; preds = %bb.aal, %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aam:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.aca, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.czi = icmp eq i8 %.0783, 69
  br i1 %i.czi, label %bb.aao, label %bb.aax

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 37, ptr %i.ao, align 1, !tbaa !27
  %i.czj = load ptr, ptr %0, align 8, !tbaa !16
  %i.czk = getelementptr i8, ptr %i.czj, i64 -24
  %i.czl = load i64, ptr %i.czk, align 8
  %i.czm = getelementptr inbounds i8, ptr %0, i64 %i.czl
  %i.czn = getelementptr inbounds nuw i8, ptr %i.czm, i64 16
  %i.czo = load i64, ptr %i.czn, align 8, !tbaa !4999
  %.not.i2161 = icmp eq i64 %i.czo, 0
  br i1 %.not.i2161, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.czp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %bb.aar unwind label %.loopexit

bb.aaq:                                           ; preds = %bb.aao
  %i.czq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aar unwind label %.loopexit ; 0 uses

bb.aar:                                           ; preds = %bb.aap, %bb.aaq
  %.0.i2162 = phi ptr [ %i.czp, %bb.aap ], [ %0, %bb.aaq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 69, ptr %i.an, align 1, !tbaa !27
  %i.czr = load ptr, ptr %.0.i2162, align 8, !tbaa !16
  %i.czs = getelementptr i8, ptr %i.czr, i64 -24
  %i.czt = load i64, ptr %i.czs, align 8
  %i.czu = getelementptr inbounds i8, ptr %.0.i2162, i64 %i.czt
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 16
  %i.czw = load i64, ptr %i.czv, align 8, !tbaa !4999
  %.not.i2166 = icmp eq i64 %i.czw, 0
  br i1 %.not.i2166, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.czx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2162, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %bb.aau unwind label %.loopexit

bb.aat:                                           ; preds = %bb.aar
  %i.czy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2162, i8 noundef signext 69)
          to label %bb.aau unwind label %.loopexit ; 0 uses

bb.aau:                                           ; preds = %bb.aas, %bb.aat
  %.0.i2167 = phi ptr [ %i.czx, %bb.aas ], [ %.0.i2162, %bb.aat ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.czz = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %i.czz, ptr %i.am, align 1, !tbaa !27
  %i.daa = load ptr, ptr %.0.i2167, align 8, !tbaa !16
  %i.dab = getelementptr i8, ptr %i.daa, i64 -24
  %i.dac = load i64, ptr %i.dab, align 8
  %i.dad = getelementptr inbounds i8, ptr %.0.i2167, i64 %i.dac
  %i.dae = getelementptr inbounds nuw i8, ptr %i.dad, i64 16
  %i.daf = load i64, ptr %i.dae, align 8, !tbaa !4999
  %.not.i2171 = icmp eq i64 %i.daf, 0
  br i1 %.not.i2171, label %bb.aaw, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2167, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 unwind label %.loopexit ; 0 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.dah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2167, i8 noundef signext %i.czz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175: ; preds = %bb.aaw, %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aax:                                           ; preds = %bb.aan
  %i.dai = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i2176 = icmp eq i16 %i.dai, -32768
  br i1 %.not.i2176, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.daj = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.dak = add i8 %i.daj, -1
  %spec.select.i.i2177 = icmp ult i8 %i.dak, 12
  br i1 %spec.select.i.i2177, label %bb.aaz, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread

bb.aaz:                                           ; preds = %bb.aay
  %i.dal = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i2179 = icmp eq i8 %i.dal, 0
  br i1 %.not8.i2179, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %.not.i.i2180 = icmp eq i8 %i.daj, 2
  %i.dam = and i16 %i.dai, 3
  %i.dan = icmp eq i16 %i.dam, 0
  %or.cond.i2181 = and i1 %i.dan, %.not.i.i2180
  br i1 %or.cond.i2181, label %bb.abb, label %.thread.i.i2182

bb.abb:                                           ; preds = %bb.aba
  %i.dao = srem i16 %i.dai, 100
  %.not.i.i.i2185 = icmp ne i16 %i.dao, 0
  %i.dap = srem i16 %i.dai, 400
  %i.daq = icmp eq i16 %i.dap, 0
  %or.cond.i.i2186 = or i1 %.not.i.i.i2185, %i.daq
  br i1 %or.cond.i.i2186, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187, label %.thread.i.i2182

.thread.i.i2182:                                  ; preds = %bb.abb, %bb.aba
  %i.dar = zext nneg i8 %i.daj to i64
  %28 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.dar
  %i.das = getelementptr i8, ptr %28, i64 -1
  %i.dat = load i8, ptr %i.das, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187: ; preds = %bb.abb, %.thread.i.i2182
  %.sroa.03.0.i.i2184 = phi i8 [ %i.dat, %.thread.i.i2182 ], [ 29, %bb.abb ]
  %.not2789 = icmp ult i8 %.sroa.03.0.i.i2184, %i.dal
  br i1 %.not2789, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread: ; preds = %bb.aaz, %bb.aay, %bb.aax, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187
  %i.dau = load ptr, ptr %0, align 8, !tbaa !16
  %i.dav = getelementptr i8, ptr %i.dau, i64 -24
  %i.daw = load i64, ptr %i.dav, align 8
  %i.dax = getelementptr inbounds i8, ptr %0, i64 %i.daw ; 2 uses
  %i.day = getelementptr inbounds nuw i8, ptr %i.dax, i64 32
  %i.daz = load i32, ptr %i.day, align 8, !tbaa !4447
  %i.dba = or i32 %i.daz, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dax, i32 noundef %i.dba)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge unwind label %bb.abc

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread
  %.pre3427 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3428 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3429 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189

bb.abc:                                           ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread
  %i.dbb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187
  %i.dbc = phi i8 [ %.pre3429, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.dal, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ]
  %i.dbd = phi i8 [ %.pre3428, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.daj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ] ; 3 uses
  %i.dbe = phi i16 [ %.pre3427, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.dai, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ] ; 2 uses
  %i.dbf = sext i16 %i.dbe to i32                 ; 4 uses
  %i.dbg = icmp ult i8 %i.dbd, 3
  %.neg.i.i2190 = sext i1 %i.dbg to i32
  %i.dbh = add nsw i32 %.neg.i.i2190, %i.dbf      ; 4 uses
  %i.dbi = zext i8 %i.dbd to i32
  %i.dbj = zext i8 %i.dbc to i32
  %i.dbk = add nsw i32 %i.dbh, -399
  %i.dbl = icmp slt i32 %i.dbh, 0
  %i.dbm = select i1 %i.dbl, i32 %i.dbk, i32 %i.dbh
  %i.dbn = sdiv i32 %i.dbm, 400                   ; 2 uses
  %.neg15.i.i2191 = mul nsw i32 %i.dbn, -400
  %i.dbo = add nsw i32 %.neg15.i.i2191, %i.dbh    ; 3 uses
  %i.dbp = icmp ugt i8 %i.dbd, 2
  %.v.i.i2192 = select i1 %i.dbp, i32 -3, i32 9
  %i.dbq = add nsw i32 %.v.i.i2192, %i.dbi
  %i.dbr = mul nsw i32 %i.dbq, 153
  %i.dbs = add nsw i32 %i.dbr, 2
  %i.dbt = udiv i32 %i.dbs, 5
  %i.dbu = mul nsw i32 %i.dbo, 365
  %i.dbv = lshr i32 %i.dbo, 2
  %i.dbw = udiv i32 %i.dbo, 100
  %i.dbx = mul nsw i32 %i.dbn, 146097
  %i.dby = add nuw nsw i32 %i.dbj, -719469
  %i.dbz = add nsw i32 %i.dby, %i.dbt
  %i.dca = add nsw i32 %i.dbz, %i.dbx
  %i.dcb = add nsw i32 %i.dca, %i.dbv
  %i.dcc = add nsw i32 %i.dcb, %i.dbu
  %i.dcd = sub nsw i32 %i.dcc, %i.dbw             ; 3 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %bb.abd
    i8 79, label %bb.abr
  ]

bb.abd:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189
  %i.dce = add nsw i32 %i.dbf, -1                 ; 2 uses
  %i.dcf = add nsw i32 %i.dbf, -400
  %i.dcg = icmp slt i16 %i.dbe, 1
  %i.dch = select i1 %i.dcg, i32 %i.dcf, i32 %i.dce
  %i.dci = sdiv i32 %i.dch, 400                   ; 2 uses
  %.neg15.i.i.i.i2201 = mul nsw i32 %i.dci, -400
  %i.dcj = add nsw i32 %.neg15.i.i.i.i2201, %i.dce ; 3 uses
  %i.dck = mul nsw i32 %i.dcj, 365
  %i.dcl = lshr i32 %i.dcj, 2
  %i.dcm = udiv i32 %i.dcj, 100
  %i.dcn = mul nsw i32 %i.dci, 146097
  %i.dco = add nsw i32 %i.dcn, -719162
  %i.dcp = add nsw i32 %i.dco, %i.dcl
  %i.dcq = add nsw i32 %i.dcp, %i.dck
  %i.dcr = sub nsw i32 %i.dcq, %i.dcm             ; 4 uses
  %i.dcs = icmp sgt i32 %i.dcr, -5
  %i.dct = add nsw i32 %i.dcr, 4
  %.in.i.i.i.i2204 = select i1 %i.dcs, i32 %i.dct, i32 %i.dcr
  %i.dcu = urem i32 %.in.i.i.i.i2204, 7           ; 3 uses
  %i.dcv = sub nsw i32 1, %i.dcu                  ; 2 uses
  %i.dcw = sub nuw nsw i32 -5, %i.dcu
  %i.dcx = icmp samesign ugt i32 %i.dcu, 1
  %i.dcy = select i1 %i.dcx, i32 %i.dcw, i32 %i.dcv
  %.fr.i.i.i2205 = freeze i32 %i.dcy              ; 2 uses
  %i.dcz = srem i32 %.fr.i.i.i2205, 7
  %i.dda = add nsw i32 %i.dcv, %i.dcr
  %i.ddb = sub i32 %i.dda, %.fr.i.i.i2205
  %i.ddc = add i32 %i.ddb, %i.dcz                 ; 2 uses
  %i.ddd = icmp slt i32 %i.dcd, %i.ddc
  br i1 %i.ddd, label %bb.abe, label %bb.abl

bb.abe:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 48, ptr %i.al, align 1, !tbaa !27
  %i.dde = load ptr, ptr %0, align 8, !tbaa !16
  %i.ddf = getelementptr i8, ptr %i.dde, i64 -24
  %i.ddg = load i64, ptr %i.ddf, align 8
  %i.ddh = getelementptr inbounds i8, ptr %0, i64 %i.ddg
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.ddh, i64 16
  %i.ddj = load i64, ptr %i.ddi, align 8, !tbaa !4999
  %.not.i2210 = icmp eq i64 %i.ddj, 0
  br i1 %.not.i2210, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ddk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %bb.abh unwind label %bb.abk

bb.abg:                                           ; preds = %bb.abe
  %i.ddl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.abh unwind label %bb.abk   ; 0 uses

bb.abh:                                           ; preds = %bb.abf, %bb.abg
  %.0.i2211 = phi ptr [ %i.ddk, %bb.abf ], [ %0, %bb.abg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 48, ptr %i.ak, align 1, !tbaa !27
  %i.ddm = load ptr, ptr %.0.i2211, align 8, !tbaa !16
  %i.ddn = getelementptr i8, ptr %i.ddm, i64 -24
  %i.ddo = load i64, ptr %i.ddn, align 8
  %i.ddp = getelementptr inbounds i8, ptr %.0.i2211, i64 %i.ddo
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.ddp, i64 16
  %i.ddr = load i64, ptr %i.ddq, align 8, !tbaa !4999
  %.not.i2215 = icmp eq i64 %i.ddr, 0
  br i1 %.not.i2215, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.dds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2211, ptr noundef nonnull %i.ak, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 unwind label %bb.abk ; 0 uses

bb.abj:                                           ; preds = %bb.abh
  %i.ddt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2211, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 unwind label %bb.abk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219: ; preds = %bb.abj, %bb.abi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.abk:                                           ; preds = %bb.abj, %bb.abi, %bb.abg, %bb.abf
  %i.ddu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abl:                                           ; preds = %bb.abd
  %i.ddv = sub nsw i32 %i.dcd, %i.ddc             ; 2 uses
  %i.ddw = udiv i32 %i.ddv, 7
  %i.ddx = add nuw nsw i32 %i.ddw, 1
  %i.ddy = icmp ult i32 %i.ddv, 63
  br i1 %i.ddy, label %bb.abm, label %bb.abq

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 48, ptr %i.aj, align 1, !tbaa !27
  %i.ddz = load ptr, ptr %0, align 8, !tbaa !16
  %i.dea = getelementptr i8, ptr %i.ddz, i64 -24
  %i.deb = load i64, ptr %i.dea, align 8
  %i.dec = getelementptr inbounds i8, ptr %0, i64 %i.deb
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dec, i64 16
  %i.dee = load i64, ptr %i.ded, align 8, !tbaa !4999
  %.not.i2222 = icmp eq i64 %i.dee, 0
  br i1 %.not.i2222, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.def = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226 unwind label %bb.abp ; 0 uses

bb.abo:                                           ; preds = %bb.abm
  %i.deg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226 unwind label %bb.abp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226: ; preds = %bb.abo, %bb.abn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn, %bb.abq
  %i.deh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226, %bb.abl
  %i.dei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ddx)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.abp ; 0 uses

bb.abr:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #27
  store i8 37, ptr %i.fq, align 1, !tbaa !27
  store i8 79, ptr %i.iy, align 1, !tbaa !27
  %i.dej = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.dej, ptr %i.iz, align 1, !tbaa !27
  %i.dek = add nsw i32 %i.dbf, -1900
  store i32 %i.dek, ptr %i.ij, align 4, !tbaa !5033
  %i.del = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.abs unwind label %.loopexit2910
end_hunk_19
begin_hunk_20_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.0783, ptr %i.d, align 1, !tbaa !27
  %i.dwb = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwc = getelementptr i8, ptr %i.dwb, i64 -24
  %i.dwd = load i64, ptr %i.dwc, align 8
  %i.dwe = getelementptr inbounds i8, ptr %0, i64 %i.dwd
  %i.dwf = getelementptr inbounds nuw i8, ptr %i.dwe, i64 16
  %i.dwg = load i64, ptr %i.dwf, align 8, !tbaa !4999
  %.not.i2480 = icmp eq i64 %i.dwg, 0
  br i1 %.not.i2480, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dwh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484 unwind label %.loopexit ; 0 uses

bb.aih:                                           ; preds = %bb.aif
  %i.dwi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0783)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484: ; preds = %bb.aih, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aii

bb.aii:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484, %bb.aie
  %i.dwj = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dwj, ptr %i.c, align 1, !tbaa !27
  %i.dwk = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwl = getelementptr i8, ptr %i.dwk, i64 -24
  %i.dwm = load i64, ptr %i.dwl, align 8
  %i.dwn = getelementptr inbounds i8, ptr %0, i64 %i.dwm
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwn, i64 16
  %i.dwp = load i64, ptr %i.dwo, align 8, !tbaa !4999
  %.not.i2485 = icmp eq i64 %i.dwp, 0
  br i1 %.not.i2485, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dwq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dwr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dwj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483: ; preds = %bb.agk, %bb.agh, %bb.lc, %bb.ko, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920, %bb.agz, %bb.aga, %.thread2770, %.thread2759, %.thread2751, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123, %bb.fi, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067, %bb.dw, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14797 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ 0, %bb.abq ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ 0, %bb.pz ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ 0, %bb.oo ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ 0, %bb.rp ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ 0, %bb.za ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ 0, %bb.acw ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ 0, %bb.adp ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ 0, %bb.zy ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ 0, %bb.aez ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ 0, %bb.lc ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ci ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dw ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ 0, %bb.fi ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0783, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2751 ], [ 0, %.thread2759 ], [ 0, %.thread2770 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.ko ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3782 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ null, %bb.lc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ci ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dw ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ null, %bb.fi ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0707, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2751 ], [ null, %.thread2759 ], [ null, %.thread2770 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0779, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.ko ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7778 = phi i8 [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ %.0771, %bb.abq ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ %.0771, %bb.pz ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ %.3774, %bb.oo ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ %.0771, %bb.rp ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ %.0771, %bb.za ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ %.0771, %bb.acw ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ %.0771, %bb.adp ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ %.0771, %bb.zy ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ %.0771, %bb.aez ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ %.1772, %bb.lc ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ %.0771, %bb.t ], [ %.0771, %bb.aq ], [ %.0771, %bb.ci ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0771, %bb.dw ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ %.0771, %bb.fi ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ %.0771, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0771, %bb.ahm ], [ %.0771, %bb.md ], [ %.0771, %bb.no ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ %.3774, %bb.oj ], [ %.0771, %bb.ni ], [ %.3774, %bb.ov ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ %.0771, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm4EEE.exit ], [ %.5776, %bb.tw ], [ %.0771, %bb.ss ], [ %.5776, %bb.ud ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ %.5776, %bb.tx ], [ %.0771, %bb.wj ], [ %.0771, %bb.wb ], [ %.0771, %.thread2751 ], [ %.0771, %.thread2759 ], [ %.0771, %.thread2770 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ %.0771, %bb.adj ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ %.0771, %bb.aga ], [ %.0771, %bb.qt ], [ %.0771, %bb.wc ], [ %.0771, %bb.agz ], [ %.0771, %bb.xs ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ %.0771, %bb.zs ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ %.1772, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1772, %bb.ko ], [ %.0771, %bb.agh ], [ %.0771, %bb.agk ]
  %i.dws = getelementptr inbounds nuw i8, ptr %.0707, i64 1
  br label %bb.h, !llvm.loop !5083

bb.ail:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !27
  %i.dwt = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwu = getelementptr i8, ptr %i.dwt, i64 -24
  %i.dwv = load i64, ptr %i.dwu, align 8
  %i.dww = getelementptr inbounds i8, ptr %0, i64 %i.dwv
  %i.dwx = getelementptr inbounds nuw i8, ptr %i.dww, i64 16
  %i.dwy = load i64, ptr %i.dwx, align 8, !tbaa !4999
  %.not.i2490 = icmp eq i64 %i.dwy, 0
  br i1 %.not.i2490, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dwz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494, %bb.ail
  %.not828 = icmp eq i8 %.0783, 0
  br i1 %.not828, label %_ZNSolsEj.exit2127, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0783, ptr %i.a, align 1, !tbaa !27
  %i.dxb = load ptr, ptr %0, align 8, !tbaa !16
  %i.dxc = getelementptr i8, ptr %i.dxb, i64 -24
  %i.dxd = load i64, ptr %i.dxc, align 8
  %i.dxe = getelementptr inbounds i8, ptr %0, i64 %i.dxd
  %i.dxf = getelementptr inbounds nuw i8, ptr %i.dxe, i64 16
  %i.dxg = load i64, ptr %i.dxf, align 8, !tbaa !4999
  %.not.i2495 = icmp eq i64 %i.dxg, 0
  br i1 %.not.i2495, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dxi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0783)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2127

_ZNSolsEj.exit2127:                               ; preds = %bb.bz, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.dxj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dxk = load i32, ptr %i.dxj, align 4, !tbaa !5035
  %i.dxl = and i32 %i.dxk, 8192
  %.not.i2500 = icmp eq i32 %i.dxl, 0
  br i1 %.not.i2500, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2127
  %i.dxm = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.dxn = icmp eq i32 %i.dxm, 0
  br i1 %i.dxn, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501

bb.aiu:                                           ; preds = %bb.ait
  %i.dxo = load ptr, ptr %5, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dxo, i64 32
  %i.dxq = load i32, ptr %i.dxp, align 8, !tbaa !4447
  %i.dxr = icmp eq i32 %i.dxq, 0
  br i1 %i.dxr, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501

bb.aiv:                                           ; preds = %bb.aiu
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxo, i64 232
  %i.dxt = load ptr, ptr %i.dxs, align 8, !tbaa !5023 ; 2 uses
  %i.dxu = load ptr, ptr %i.dxt, align 8, !tbaa !16
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxu, i64 48
  %i.dxw = load ptr, ptr %i.dxv, align 8
  %i.dxx = invoke noundef i32 %i.dxw(ptr noundef nonnull align 8 dereferenceable(64) %i.dxt)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501 unwind label %bb.aiw, !inline_history !5039 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dxy = landingpad { ptr, i32 }
          catch ptr null
  %i.dxz = extractvalue { ptr, i32 } %i.dxy, 0
  call void @__clang_call_terminate(ptr %i.dxz) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501: ; preds = %_ZNSolsEj.exit2127, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fc, %bb.fj, %bb.dq, %bb.dx, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jl, %bb.ic, %bb.gn, %bb.ar, %bb.u
  %.pn930.pn.pn = phi { ptr, i32 } [ %i.cmz, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2969, %bb.ld ], [ %lpad.phi3019, %bb.u ], [ %lpad.phi3014, %bb.ar ], [ %lpad.phi2904, %bb.adq ], [ %i.drw, %bb.agl ], [ %lpad.phi2999, %bb.dx ], [ %.pn912.pn, %bb.gn ], [ %.pn908.pn, %bb.ic ], [ %.pn904.pn, %bb.jl ], [ %i.cmm, %bb.xm ], [ %i.ty, %bb.ca ], [ %lpad.phi2989, %bb.fj ], [ %i.blv, %bb.op ], [ %lpad.phi2954, %bb.ow ], [ %lpad.phi2949, %bb.qa ], [ %i.ddu, %bb.abk ], [ %lpad.phi2944, %bb.rq ], [ %i.byb, %bb.st ], [ %i.bxz, %bb.sr ], [ %lpad.phi2939, %bb.ue ], [ %lpad.phi2959, %bb.np ], [ %lpad.phi2934, %bb.wk ], [ %i.deh, %bb.abp ], [ %i.cjv, %bb.xe ], [ %lpad.phi2919, %bb.zz ], [ %lpad.phi2909, %bb.acx ], [ %i.dbb, %bb.abc ], [ %.pn838.pn, %bb.afa ], [ %lpad.phi2914, %bb.abt ], [ %.pn920, %bb.dq ], [ %.pn916, %bb.fc ], [ %i.bii, %bb.nh ], [ %i.cgv, %bb.wd ], [ %i.bso, %bb.qu ], [ %i.cxg, %bb.zq ], [ %i.cuz, %bb.yz ], [ %i.djs, %bb.adi ], [ %lpad.phi3009, %bb.cj ], [ %i.dpp, %bb.afk ], [ %.pn895, %bb.mc ], [ %lpad.phi2924, %bb.zd ], [ %i.brx, %bb.qs ], [ %lpad.phi2929, %bb.xv ], [ %i.aze, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn930.pn.pn.pn = phi { ptr, i32 } [ %.pn930.pn.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn930.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !5026   ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !5027  ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !5028  ; 2 uses
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.n, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !5042
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !5042
  %i.t = icmp ult i8 %i.s, 7
  br i1 %i.t, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !5042
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !5042
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4447
  %i.ag = or i32 %i.af, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !5028 ; 3 uses
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
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
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
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !5042 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 7
  %i.bx = icmp ne i8 %i.bv, %i.bt
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !16
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !4447
  %i.ce = or i32 %i.cd, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !27
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
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !5082, !range !659, !noundef !660
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !27
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !4999
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
  %i.q = load i64, ptr %1, align 8, !tbaa !611    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !27
  %i.s = load ptr, ptr %0, align 8, !tbaa !16
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !4999
  %.not.i12 = icmp eq i64 %i.x, 0
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !5013
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !27
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !4999
  %.not.i15 = icmp eq i64 %i.ah, 0
  br i1 %.not.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !611 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !27
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !4999
  %.not.i18 = icmp eq i64 %i.as, 0
  br i1 %.not.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre26 = load i64, ptr %i.ak, align 8, !tbaa !5012
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  %i.av = phi i64 [ %.pre26, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ]
end_hunk_20
begin_hunk_21_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  store i8 37, ptr %i.ew, align 1, !tbaa !27
  %i.ow = load ptr, ptr %0, align 8, !tbaa !16
  %i.ox = getelementptr i8, ptr %i.ow, i64 -24
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds i8, ptr %0, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !4999
  %.not.i976 = icmp eq i64 %i.pb, 0
  br i1 %.not.i976, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, i64 noundef 1)
          to label %bb.av unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.av unwind label %.loopexit ; 0 uses

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0.i977 = phi ptr [ %i.pc, %bb.at ], [ %0, %bb.au ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store i8 %.0783, ptr %i.ev, align 1, !tbaa !27
  %i.pe = load ptr, ptr %.0.i977, align 8, !tbaa !16
  %i.pf = getelementptr i8, ptr %i.pe, i64 -24
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %.0.i977, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !4999
  %.not.i981 = icmp eq i64 %i.pj, 0
  br i1 %.not.i981, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i977, ptr noundef nonnull %i.ev, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i977, i8 noundef signext %.0783)
          to label %bb.ay unwind label %.loopexit ; 0 uses

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0.i982 = phi ptr [ %i.pk, %bb.aw ], [ %.0.i977, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.pm = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store i8 %i.pm, ptr %i.eu, align 1, !tbaa !27
  %i.pn = load ptr, ptr %.0.i982, align 8, !tbaa !16
  %i.po = getelementptr i8, ptr %i.pn, i64 -24
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = getelementptr inbounds i8, ptr %.0.i982, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !4999
  %.not.i986 = icmp eq i64 %i.ps, 0
  br i1 %.not.i986, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i982, ptr noundef nonnull %i.eu, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 unwind label %.loopexit ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i982, i8 noundef signext %i.pm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.bb:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i8 %i.la, ptr %i.et, align 1, !tbaa !27
  %i.pv = load ptr, ptr %0, align 8, !tbaa !16
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr %0, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !4999
  %.not.i991 = icmp eq i64 %i.qa, 0
  br i1 %.not.i991, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.et, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 unwind label %.loopexit ; 0 uses

bb.bd:                                            ; preds = %bb.bb
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.be:                                            ; preds = %bb.h, %bb.h
  br i1 %.not928, label %bb.ck, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qd = icmp eq i8 %.0783, 79
  br i1 %i.qd, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i8 37, ptr %i.es, align 1, !tbaa !27
  %i.qe = load ptr, ptr %0, align 8, !tbaa !16
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %0, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !4999
  %.not.i996 = icmp eq i64 %i.qj, 0
  br i1 %.not.i996, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.bj unwind label %.loopexit ; 0 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.0.i997 = phi ptr [ %i.qk, %bb.bh ], [ %0, %bb.bi ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store i8 79, ptr %i.er, align 1, !tbaa !27
  %i.qm = load ptr, ptr %.0.i997, align 8, !tbaa !16
  %i.qn = getelementptr i8, ptr %i.qm, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %.0.i997, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !4999
  %.not.i1001 = icmp eq i64 %i.qr, 0
  br i1 %.not.i1001, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i997, ptr noundef nonnull %i.er, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i997, i8 noundef signext 79)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i1002 = phi ptr [ %i.qs, %bb.bk ], [ %.0.i997, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  %i.qu = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i8 %i.qu, ptr %i.eq, align 1, !tbaa !27
  %i.qv = load ptr, ptr %.0.i1002, align 8, !tbaa !16
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr %.0.i1002, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !4999
  %.not.i1006 = icmp eq i64 %i.ra, 0
  br i1 %.not.i1006, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1002, ptr noundef nonnull %i.eq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 unwind label %.loopexit ; 0 uses

bb.bo:                                            ; preds = %bb.bm
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1002, i8 noundef signext %i.qu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.bp:                                            ; preds = %bb.bf
  %i.rd = load i16, ptr %2, align 8, !tbaa !5026  ; 4 uses
  %.not.i1011 = icmp eq i16 %i.rd, -32768
  br i1 %.not.i1011, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.re = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.rf = add i8 %i.re, -1
  %spec.select.i.i1012 = icmp ult i8 %i.rf, 12
  br i1 %spec.select.i.i1012, label %bb.br, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.rg = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
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
  %.not.i.i.i1014 = icmp ne i16 %i.rj, 0
  %i.rk = srem i16 %i.rd, 400
  %i.rl = icmp eq i16 %i.rk, 0
  %or.cond.i.i = or i1 %.not.i.i.i1014, %i.rl
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bt, %bb.bs
  %i.rm = zext nneg i8 %i.re to i64
  %20 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.rm
  %i.rn = getelementptr i8, ptr %20, i64 -1
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.bt, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.ro, %.thread.i.i ], [ 29, %bb.bt ]
  %.not2820 = icmp ult i8 %.sroa.03.0.i.i, %i.rg
  br i1 %.not2820, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.br, %bb.bq, %bb.bp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rp = load ptr, ptr %0, align 8, !tbaa !16
  %i.rq = getelementptr i8, ptr %i.rp, i64 -24
  %i.rr = load i64, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds i8, ptr %0, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !4447
  %i.rv = or i32 %i.ru, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.rs, i32 noundef %i.rv)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %.pre3454 = load i8, ptr %.0707, align 1, !tbaa !27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.rw = phi i8 [ %.pre3454, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ]
  %i.rx = icmp eq i8 %i.rw, 99
  br i1 %i.rx, label %bb.bu, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017

bb.bu:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.ry = load i8, ptr %i.gw, align 8, !tbaa !5096, !range !659, !noundef !660
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sa = load ptr, ptr %0, align 8, !tbaa !16
  %i.sb = getelementptr i8, ptr %i.sa, i64 -24
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds i8, ptr %0, i64 %i.sc ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !4447
  %i.sg = or i32 %i.sf, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.sd, i32 noundef %i.sg)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge: ; preds = %bb.bv
  %.pre3455 = load i8, ptr %.0707, align 1, !tbaa !27
  %i.sh = icmp eq i8 %.pre3455, 99
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge, %bb.bu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit
  %i.si = phi i1 [ %i.sh, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017_crit_edge ], [ true, %bb.bu ], [ false, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.sj = load i16, ptr %2, align 8, !tbaa !5026
  %i.sk = sext i16 %i.sj to i32                   ; 2 uses
  %i.sl = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.sm = icmp ult i8 %i.sl, 3
  %.neg.i.i = sext i1 %i.sm to i32
  %i.sn = add nsw i32 %.neg.i.i, %i.sk            ; 4 uses
  %i.so = zext i8 %i.sl to i32                    ; 2 uses
  %i.sp = load i8, ptr %i.ix, align 1, !tbaa !5028
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

bb.bw:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017
  %.sroa.0.0.copyload.i.i1018 = load i64, ptr %i.iq, align 8, !tbaa !611
  %i.td = trunc i64 %.sroa.0.0.copyload.i.i1018 to i32
  store i32 %i.td, ptr %6, align 8, !tbaa !5029
  %.sroa.0.0.copyload.i = load i64, ptr %i.ir, align 8, !tbaa !611
  %i.te = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.te, ptr %i.is, align 4, !tbaa !5030
  %.sroa.0.0.copyload.i1019 = load i64, ptr %i.ip, align 8, !tbaa !611
  %i.tf = trunc i64 %.sroa.0.0.copyload.i1019 to i32
  store i32 %i.tf, ptr %i.it, align 8, !tbaa !5031
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1017
  store i32 %i.sq, ptr %i.km, align 4, !tbaa !5032
  %i.tg = add i8 %i.sl, -1
  %spec.select.i.i1022 = icmp ult i8 %i.tg, 12
  br i1 %spec.select.i.i1022, label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.th = load ptr, ptr %0, align 8, !tbaa !16
  %i.ti = getelementptr i8, ptr %i.th, i64 -24
  %i.tj = load i64, ptr %i.ti, align 8
  %i.tk = getelementptr inbounds i8, ptr %0, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !4447
  %i.tn = or i32 %i.tm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.tk, i32 noundef %i.tn)
          to label %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge unwind label %bb.ca

._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge: ; preds = %bb.by
  %.sroa.0.0.copyload.i1026.pre = load i16, ptr %2, align 8, !tbaa !2388
  %.pre3464 = sext i16 %.sroa.0.0.copyload.i1026.pre to i32
  br label %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025

_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025: ; preds = %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge, %bb.bx
  %.pre-phi = phi i32 [ %.pre3464, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge ], [ %i.sk, %bb.bx ]
  %.0.i1023 = phi i32 [ 0, %._ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025_crit_edge ], [ %i.so, %bb.bx ]
  %i.to = add nsw i32 %.0.i1023, -1
  store i32 %i.to, ptr %i.kd, align 8, !tbaa !5025
  %i.tp = add nsw i32 %.pre-phi, -1900
  store i32 %i.tp, ptr %i.ij, align 4, !tbaa !5033
  %i.tq = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025
  store i32 %i.tq, ptr %i.ja, align 8, !tbaa !5021
  %i.tr = load ptr, ptr %0, align 8, !tbaa !16
  %i.ts = getelementptr i8, ptr %i.tr, i64 -24    ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = getelementptr inbounds i8, ptr %0, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !4447
  %i.tx = and i32 %i.tw, 5
  %.not2821 = icmp eq i32 %i.tx, 0
  br i1 %.not2821, label %bb.cb, label %_ZNSolsEj.exit2127

bb.ca:                                            ; preds = %bb.by, %_ZN14arrow_vendored4date6detail13extract_monthIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE.exit1025
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.cb:                                            ; preds = %bb.bz
  %.sroa.0.0.copyload.i1027 = load i16, ptr %2, align 8, !tbaa !2388 ; 2 uses
  %i.tz = sext i16 %.sroa.0.0.copyload.i1027 to i32 ; 2 uses
  %i.ua = add nsw i32 %i.tz, -1                   ; 2 uses
  %i.ub = add nsw i32 %i.tz, -400
  %i.uc = icmp slt i16 %.sroa.0.0.copyload.i1027, 1
  %i.ud = select i1 %i.uc, i32 %i.ub, i32 %i.ua
  %i.ue = sdiv i32 %i.ud, 400                     ; 2 uses
  %.neg15.i.i1029 = mul nsw i32 %i.ue, -400
  %i.uf = add nsw i32 %.neg15.i.i1029, %i.ua      ; 3 uses
  %i.ug = lshr i32 %i.uf, 2
  %i.uh = udiv i32 %i.uf, 100
  %reass.add2890 = sub nsw i32 %i.sv, %i.uf
  %reass.mul2891 = mul nsw i32 %reass.add2890, 365
  %reass.add2893 = sub nsw i32 %i.su, %i.ue
  %reass.mul2894 = mul nsw i32 %reass.add2893, 146097
  %.neg2822 = add nuw nsw i32 %i.sq, -307
  %i.ui = add nsw i32 %.neg2822, %i.ta
  %i.uj = add nsw i32 %i.ui, %i.tb
  %i.uk = add nsw i32 %i.uj, %reass.mul2894
  %i.ul = add nuw nsw i32 %i.tc, %i.ug
  %i.um = sub nsw i32 %i.uk, %i.ul
  %i.un = add nsw i32 %i.um, %i.uh
  %i.uo = add nsw i32 %i.un, %reass.mul2891
  store i32 %i.uo, ptr %i.jb, align 4, !tbaa !5034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.51, i64 3, i1 false)
  %i.up = icmp eq i8 %.0783, 69
  br i1 %i.up, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 69, ptr %i.kt, align 1, !tbaa !27
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0806 = phi ptr [ %i.ku, %bb.cc ], [ %i.kt, %bb.cb ] ; 2 uses
  %i.uq = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.uq, ptr %.0806, align 1, !tbaa !27
  %i.ur = load i64, ptr %i.ts, align 8
  %i.us = getelementptr inbounds i8, ptr %0, i64 %i.ur ; 6 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 232
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !5023 ; 2 uses
  %.not.i1032 = icmp eq ptr %i.uu, null
  %i.uv = zext i1 %.not.i1032 to i8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 225 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %._crit_edge.i1038, label %bb.ce

._crit_edge.i1038:                                ; preds = %bb.cd
  %.phi.trans.insert.i1039 = getelementptr inbounds nuw i8, ptr %i.us, i64 224
  %.pre.i1040 = load i8, ptr %.phi.trans.insert.i1039, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1044

bb.ce:                                            ; preds = %bb.cd
  %i.uz = getelementptr inbounds nuw i8, ptr %i.us, i64 240
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1033 = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i1033, label %bb.cf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1034

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt16__throw_bad_castv() #31
end_hunk_21
begin_hunk_22_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.ex:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit1138
  %i.adn = load i32, ptr %i.kq, align 4, !tbaa !5035
  %i.ado = and i32 %i.adn, 8192
  %.not.i1151 = icmp eq i32 %i.ado, 0
  br i1 %.not.i1151, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.adp = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %bb.ez, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152

bb.ez:                                            ; preds = %bb.ey
  %i.adr = load ptr, ptr %9, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !4447
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.fa, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152

bb.fa:                                            ; preds = %bb.ez
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 232
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !5023 ; 2 uses
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !16
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = invoke noundef i32 %i.adz(ptr noundef nonnull align 8 dereferenceable(64) %i.adw)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 unwind label %bb.fb, !inline_history !5039 ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  %i.aec = extractvalue { ptr, i32 } %i.aeb, 0
  call void @__clang_call_terminate(ptr %i.aec) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152: ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.fa
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.fc:                                            ; preds = %bb.et, %bb.es
  %.pn916 = phi { ptr, i32 } [ %lpad.phi2994, %bb.et ], [ %i.acu, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.aix

bb.fd:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123
  store i32 %i.aby, ptr %i.km, align 4, !tbaa !5032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff) #27
  store i8 37, ptr %i.ff, align 1, !tbaa !27
  store i8 79, ptr %i.kn, align 1, !tbaa !27
  %i.aed = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.aed, ptr %i.ko, align 1, !tbaa !27
  %i.aee = load ptr, ptr %0, align 8, !tbaa !16
  %i.aef = getelementptr i8, ptr %i.aee, i64 -24
  %i.aeg = load i64, ptr %i.aef, align 8
  %i.aeh = getelementptr inbounds i8, ptr %0, i64 %i.aeg ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 232
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !5023 ; 2 uses
  %.not.i1153 = icmp eq ptr %i.aej, null
  %i.aek = zext i1 %.not.i1153 to i8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 225 ; 2 uses
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %._crit_edge.i1159, label %bb.fe

._crit_edge.i1159:                                ; preds = %bb.fd
  %.phi.trans.insert.i1160 = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  %.pre.i1161 = load i8, ptr %.phi.trans.insert.i1160, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165

bb.fe:                                            ; preds = %bb.fd
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 240
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1154 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i1154, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1162 unwind label %.loopexit.split-lp2986

.noexc1162:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155: ; preds = %bb.fe
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 56
  %i.aer = load i8, ptr %i.aeq, align 8, !tbaa !4991
  %.not.i1.i.i1156 = icmp eq i8 %i.aer, 0
  br i1 %.not.i1.i.i1156, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 89
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1155
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aep)
          to label %.noexc1163 unwind label %.loopexit2985

.noexc1163:                                       ; preds = %bb.fh
  %i.aeu = load ptr, ptr %i.aep, align 8, !tbaa !16
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = invoke noundef signext i8 %i.aew(ptr noundef nonnull align 8 dereferenceable(570) %i.aep, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157 unwind label %.loopexit2985, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157: ; preds = %.noexc1163, %bb.fg
  %.0.i.i.i1158 = phi i8 [ %i.aet, %bb.fg ], [ %i.aex, %.noexc1163 ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeh, i64 224
  store i8 %.0.i.i.i1158, ptr %i.aey, align 8, !tbaa !4997
  store i8 1, ptr %i.ael, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157, %._crit_edge.i1159
  %i.aez = phi i8 [ %.pre.i1161, %._crit_edge.i1159 ], [ %.0.i.i.i1158, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1157 ]
  %i.afa = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.aej, i8 %i.aek, ptr noundef nonnull align 8 dereferenceable(216) %i.aeh, i8 noundef signext %i.aez, ptr noundef nonnull %6, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.kp)
          to label %bb.fi unwind label %.loopexit2985 ; 0 uses

bb.fi:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2985:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1165, %bb.fh, %.noexc1163
  %lpad.loopexit2987 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

.loopexit.split-lp2986:                           ; preds = %bb.ff
  %lpad.loopexit.split-lp2988 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.split-lp2986, %.loopexit2985
  %lpad.phi2989 = phi { ptr, i32 } [ %lpad.loopexit2987, %.loopexit2985 ], [ %lpad.loopexit.split-lp2988, %.loopexit.split-lp2986 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff) #27
  br label %bb.aix

bb.fk:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 %i.la, ptr %i.eg, align 1, !tbaa !27
  %i.afb = load ptr, ptr %0, align 8, !tbaa !16
  %i.afc = getelementptr i8, ptr %i.afb, i64 -24
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = getelementptr inbounds i8, ptr %0, i64 %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !4999
  %.not.i1166 = icmp eq i64 %i.afg, 0
  br i1 %.not.i1166, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.eg, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 unwind label %.loopexit ; 0 uses

bb.fm:                                            ; preds = %bb.fk
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.fn:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.gx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afj = icmp eq i8 %.0783, 0
  br i1 %i.afj, label %bb.fp, label %bb.go

bb.fp:                                            ; preds = %bb.fo
  %i.afk = load i16, ptr %2, align 8, !tbaa !5026 ; 4 uses
  %.not.i1171 = icmp eq i16 %i.afk, -32768
  br i1 %.not.i1171, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afl = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.afm = add i8 %i.afl, -1
  %spec.select.i.i1172 = icmp ult i8 %i.afm, 12
  br i1 %spec.select.i.i1172, label %bb.fr, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afn = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1174 = icmp eq i8 %i.afn, 0
  br i1 %.not8.i1174, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i.i1175 = icmp eq i8 %i.afl, 2
  %i.afo = and i16 %i.afk, 3
  %i.afp = icmp eq i16 %i.afo, 0
  %or.cond.i1176 = and i1 %i.afp, %.not.i.i1175
  br i1 %or.cond.i1176, label %bb.ft, label %.thread.i.i1177

bb.ft:                                            ; preds = %bb.fs
  %i.afq = srem i16 %i.afk, 100
  %.not.i.i.i1180 = icmp ne i16 %i.afq, 0
  %i.afr = srem i16 %i.afk, 400
  %i.afs = icmp eq i16 %i.afr, 0
  %or.cond.i.i1181 = or i1 %.not.i.i.i1180, %i.afs
  br i1 %or.cond.i.i1181, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182, label %.thread.i.i1177

.thread.i.i1177:                                  ; preds = %bb.ft, %bb.fs
  %i.aft = zext nneg i8 %i.afl to i64
  %21 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aft
  %i.afu = getelementptr i8, ptr %21, i64 -1
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182: ; preds = %bb.ft, %.thread.i.i1177
  %.sroa.03.0.i.i1179 = phi i8 [ %i.afv, %.thread.i.i1177 ], [ 29, %bb.ft ]
  %.not2818 = icmp ult i8 %.sroa.03.0.i.i1179, %i.afn
  br i1 %.not2818, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread: ; preds = %bb.fr, %bb.fq, %bb.fp, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182
  %i.afw = load ptr, ptr %0, align 8, !tbaa !16
  %i.afx = getelementptr i8, ptr %i.afw, i64 -24
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = getelementptr inbounds i8, ptr %0, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !4447
  %i.agc = or i32 %i.agb, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afz, i32 noundef %i.agc)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1182
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.agd = load ptr, ptr %0, align 8, !tbaa !16
  %i.age = getelementptr i8, ptr %i.agd, i64 -24
  %i.agf = load i64, ptr %i.age, align 8
  %i.agg = getelementptr inbounds i8, ptr %0, i64 %i.agf
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(264) %i.agg)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186 unwind label %bb.gi

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184
  %i.agh = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 -24
  %i.agj = load i64, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds i8, ptr %0, i64 %i.agj ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 225 ; 2 uses
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %._crit_edge.i.i1192, label %bb.fu

bb.fu:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agk, i64 240
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1187 = icmp eq ptr %i.agp, null
  br i1 %.not.i.i.i.i1187, label %bb.fv, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1195 unwind label %.loopexit.split-lp2981

.noexc1195:                                       ; preds = %bb.fv
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188: ; preds = %bb.fu
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 56
  %i.agr = load i8, ptr %i.agq, align 8, !tbaa !4991
  %.not.i1.i.i.i1189 = icmp eq i8 %i.agr, 0
  br i1 %.not.i1.i.i.i1189, label %bb.fw, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agp)
          to label %.noexc1196 unwind label %.loopexit2980

.noexc1196:                                       ; preds = %bb.fw
  %i.ags = load ptr, ptr %i.agp, align 8, !tbaa !16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 48
  %i.agu = load ptr, ptr %i.agt, align 8
  %i.agv = invoke noundef signext i8 %i.agu(ptr noundef nonnull align 8 dereferenceable(570) %i.agp, i8 noundef signext 32)
          to label %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge unwind label %.loopexit2980, !inline_history !4996 ; 0 uses

.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge: ; preds = %.noexc1196
  %.pre3450.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190: ; preds = %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188
  %.pre3450 = phi ptr [ %.pre3450.pre, %.noexc1196._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190_crit_edge ], [ %i.agh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1188 ]
  store i8 1, ptr %i.agl, align 1, !tbaa !4984
  br label %._crit_edge.i.i1192

._crit_edge.i.i1192:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190
  %i.agw = phi ptr [ %i.agh, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1186 ], [ %.pre3450, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1190 ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agk, i64 224
  store i8 48, ptr %i.agx, align 8, !tbaa !4997
  %i.agy = getelementptr i8, ptr %i.agw, i64 -24  ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8
  %i.aha = getelementptr inbounds i8, ptr %0, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i32 130, ptr %i.ahb, align 8, !tbaa !4998
  %i.ahc = load i64, ptr %i.agy, align 8
  %i.ahd = getelementptr inbounds i8, ptr %0, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  store i64 2, ptr %i.ahe, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1199 = load i8, ptr %i.iw, align 2, !tbaa !27
  %i.ahf = zext i8 %.sroa.0.0.copyload.i1199 to i64
  %i.ahg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahf)
          to label %_ZNSolsEj.exit unwind label %bb.gj ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %._crit_edge.i.i1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  store i8 47, ptr %i.ef, align 1, !tbaa !27
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !16
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 -24
  %i.ahj = load i64, ptr %i.ahi, align 8
  %i.ahk = getelementptr inbounds i8, ptr %i.ahg, i64 %i.ahj
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !4999
  %.not.i1201 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i1201, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEj.exit
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, ptr noundef nonnull %i.ef, i64 noundef 1)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fy:                                            ; preds = %_ZNSolsEj.exit
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg, i8 noundef signext 47)
          to label %bb.fz unwind label %bb.gj     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %i.ahp = load ptr, ptr %0, align 8, !tbaa !16
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -24
  %i.ahr = load i64, ptr %i.ahq, align 8
  %i.ahs = getelementptr inbounds i8, ptr %0, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  store i64 2, ptr %i.aht, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1206 = load i8, ptr %i.ix, align 1, !tbaa !27
  %i.ahu = zext i8 %.sroa.0.0.copyload.i1206 to i64
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ahu)
          to label %_ZNSolsEj.exit1208 unwind label %bb.gk ; 4 uses

_ZNSolsEj.exit1208:                               ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store i8 47, ptr %i.ee, align 1, !tbaa !27
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !16
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 -24
  %i.ahy = load i64, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !4999
  %.not.i1209 = icmp eq i64 %i.aib, 0
  br i1 %.not.i1209, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSolsEj.exit1208
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull %i.ee, i64 noundef 1)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gb:                                            ; preds = %_ZNSolsEj.exit1208
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, i8 noundef signext 47)
          to label %bb.gc unwind label %bb.gk     ; 0 uses

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.aie = load ptr, ptr %0, align 8, !tbaa !16
  %i.aif = getelementptr i8, ptr %i.aie, i64 -24
  %i.aig = load i64, ptr %i.aif, align 8
  %i.aih = getelementptr inbounds i8, ptr %0, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  store i64 2, ptr %i.aii, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1214 = load i16, ptr %2, align 8, !tbaa !2388
  %i.aij = srem i16 %.sroa.0.0.copyload.i1214, 100
  %.sext = sext i16 %i.aij to i32
  %i.aik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sext)
          to label %bb.gd unwind label %bb.gl     ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.ail = load i32, ptr %i.kl, align 4, !tbaa !5035
  %i.aim = and i32 %i.ail, 8192
  %.not.i1215 = icmp eq i32 %i.aim, 0
  br i1 %.not.i1215, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ain = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %bb.gf, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216

bb.gf:                                            ; preds = %bb.ge
  %i.aip = load ptr, ptr %10, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !4447
  %i.ais = icmp eq i32 %i.air, 0
  br i1 %i.ais, label %bb.gg, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216

bb.gg:                                            ; preds = %bb.gf
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 232
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !5023 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !16
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = invoke noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(64) %i.aiu)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 unwind label %bb.gh, !inline_history !5039 ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aiz = landingpad { ptr, i32 }
          catch ptr null
  %i.aja = extractvalue { ptr, i32 } %i.aiz, 0
  call void @__clang_call_terminate(ptr %i.aja) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216: ; preds = %bb.gd, %bb.ge, %bb.gf, %bb.gg
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.gi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1184
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.loopexit2980:                                    ; preds = %bb.fw, %.noexc1196
  %lpad.loopexit2982 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp2981:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp2983 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gj:                                            ; preds = %bb.fy, %bb.fx, %._crit_edge.i.i1192
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

bb.gm:                                            ; preds = %.loopexit2980, %.loopexit.split-lp2981, %bb.gl, %bb.gk, %bb.gj
  %.pn912 = phi { ptr, i32 } [ %i.aje, %bb.gl ], [ %i.ajd, %bb.gk ], [ %i.ajc, %bb.gj ], [ %lpad.loopexit2982, %.loopexit2980 ], [ %lpad.loopexit.split-lp2983, %.loopexit.split-lp2981 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gi
  %.pn912.pn = phi { ptr, i32 } [ %.pn912, %bb.gm ], [ %i.ajb, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.aix

bb.go:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i8 37, ptr %i.ed, align 1, !tbaa !27
  %i.ajf = load ptr, ptr %0, align 8, !tbaa !16
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -24
  %i.ajh = load i64, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds i8, ptr %0, i64 %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !4999
  %.not.i1217 = icmp eq i64 %i.ajk, 0
  br i1 %.not.i1217, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit

bb.gq:                                            ; preds = %bb.go
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.gr unwind label %.loopexit ; 0 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.0.i1218 = phi ptr [ %i.ajl, %bb.gp ], [ %0, %bb.gq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store i8 %.0783, ptr %i.ec, align 1, !tbaa !27
  %i.ajn = load ptr, ptr %.0.i1218, align 8, !tbaa !16
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -24
  %i.ajp = load i64, ptr %i.ajo, align 8
  %i.ajq = getelementptr inbounds i8, ptr %.0.i1218, i64 %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !4999
  %.not.i1222 = icmp eq i64 %i.ajs, 0
  br i1 %.not.i1222, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1218, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.gu unwind label %.loopexit

bb.gt:                                            ; preds = %bb.gr
  %i.aju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1218, i8 noundef signext %.0783)
          to label %bb.gu unwind label %.loopexit ; 0 uses

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.0.i1223 = phi ptr [ %i.ajt, %bb.gs ], [ %.0.i1218, %bb.gt ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.ajv = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  store i8 %i.ajv, ptr %i.eb, align 1, !tbaa !27
  %i.ajw = load ptr, ptr %.0.i1223, align 8, !tbaa !16
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 -24
  %i.ajy = load i64, ptr %i.ajx, align 8
  %i.ajz = getelementptr inbounds i8, ptr %.0.i1223, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !4999
  %.not.i1227 = icmp eq i64 %i.akb, 0
  br i1 %.not.i1227, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1223, ptr noundef nonnull %i.eb, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 unwind label %.loopexit ; 0 uses

bb.gw:                                            ; preds = %bb.gu
  %i.akd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1223, i8 noundef signext %i.ajv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.gx:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i8 68, ptr %i.ea, align 1, !tbaa !27
  %i.ake = load ptr, ptr %0, align 8, !tbaa !16
  %i.akf = getelementptr i8, ptr %i.ake, i64 -24
  %i.akg = load i64, ptr %i.akf, align 8
  %i.akh = getelementptr inbounds i8, ptr %0, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !4999
  %.not.i1232 = icmp eq i64 %i.akj, 0
  br i1 %.not.i1232, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ea, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 unwind label %.loopexit ; 0 uses

bb.gz:                                            ; preds = %bb.gx
  %i.akl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ha:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.im, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akm = icmp eq i8 %.0783, 0
  br i1 %i.akm, label %bb.hc, label %bb.id

bb.hc:                                            ; preds = %bb.hb
  %i.akn = load i16, ptr %2, align 8, !tbaa !5026 ; 4 uses
  %.not.i1237 = icmp eq i16 %i.akn, -32768
  br i1 %.not.i1237, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ako = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 3 uses
  %i.akp = add i8 %i.ako, -1
  %spec.select.i.i1238 = icmp ult i8 %i.akp, 12
  br i1 %spec.select.i.i1238, label %bb.he, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread

bb.he:                                            ; preds = %bb.hd
  %i.akq = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1240 = icmp eq i8 %i.akq, 0
  br i1 %.not8.i1240, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.not.i.i1241 = icmp eq i8 %i.ako, 2
  %i.akr = and i16 %i.akn, 3
  %i.aks = icmp eq i16 %i.akr, 0
  %or.cond.i1242 = and i1 %i.aks, %.not.i.i1241
  br i1 %or.cond.i1242, label %bb.hg, label %.thread.i.i1243

bb.hg:                                            ; preds = %bb.hf
  %i.akt = srem i16 %i.akn, 100
  %.not.i.i.i1246 = icmp ne i16 %i.akt, 0
  %i.aku = srem i16 %i.akn, 400
  %i.akv = icmp eq i16 %i.aku, 0
  %or.cond.i.i1247 = or i1 %.not.i.i.i1246, %i.akv
  br i1 %or.cond.i.i1247, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248, label %.thread.i.i1243

.thread.i.i1243:                                  ; preds = %bb.hg, %bb.hf
  %i.akw = zext nneg i8 %i.ako to i64
  %22 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.akw
  %i.akx = getelementptr i8, ptr %22, i64 -1
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248: ; preds = %bb.hg, %.thread.i.i1243
  %.sroa.03.0.i.i1245 = phi i8 [ %i.aky, %.thread.i.i1243 ], [ 29, %bb.hg ]
  %.not2817 = icmp ult i8 %.sroa.03.0.i.i1245, %i.akq
  br i1 %.not2817, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread: ; preds = %bb.he, %bb.hd, %bb.hc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248
  %i.akz = load ptr, ptr %0, align 8, !tbaa !16
  %i.ala = getelementptr i8, ptr %i.akz, i64 -24
  %i.alb = load i64, ptr %i.ala, align 8
  %i.alc = getelementptr inbounds i8, ptr %0, i64 %i.alb ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !4447
  %i.alf = or i32 %i.ale, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.alc, i32 noundef %i.alf)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1248
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.alg = load ptr, ptr %0, align 8, !tbaa !16
  %i.alh = getelementptr i8, ptr %i.alg, i64 -24
  %i.ali = load i64, ptr %i.alh, align 8
  %i.alj = getelementptr inbounds i8, ptr %0, i64 %i.ali
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(264) %i.alj)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252 unwind label %bb.hx

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250
  %i.alk = load ptr, ptr %0, align 8, !tbaa !16
  %i.all = getelementptr i8, ptr %i.alk, i64 -24
  %i.alm = load i64, ptr %i.all, align 8
  %i.aln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.hh unwind label %.loopexit2975

bb.hh:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252
  %i.alo = getelementptr inbounds i8, ptr %0, i64 %i.alm
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %12, ptr noundef nonnull align 8 dereferenceable(264) %i.alo, ptr noundef nonnull align 8 dereferenceable(8) %i.aln)
          to label %bb.hi unwind label %.loopexit2975

bb.hi:                                            ; preds = %bb.hh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #27
  %i.alp = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 -24
  %i.alr = load i64, ptr %i.alq, align 8
  %i.als = getelementptr inbounds i8, ptr %0, i64 %i.alr ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 225 ; 2 uses
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.alv = trunc nuw i8 %i.alu to i1
  br i1 %i.alv, label %._crit_edge.i.i1258, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 240
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1253 = icmp eq ptr %i.alx, null
  br i1 %.not.i.i.i.i1253, label %bb.hk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1261 unwind label %.loopexit.split-lp2976

.noexc1261:                                       ; preds = %bb.hk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254: ; preds = %bb.hj
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 56
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !4991
  %.not.i1.i.i.i1255 = icmp eq i8 %i.alz, 0
  br i1 %.not.i1.i.i.i1255, label %bb.hl, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256

bb.hl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alx)
          to label %.noexc1262 unwind label %.loopexit2975

.noexc1262:                                       ; preds = %bb.hl
  %i.ama = load ptr, ptr %i.alx, align 8, !tbaa !16
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 48
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = invoke noundef signext i8 %i.amc(ptr noundef nonnull align 8 dereferenceable(570) %i.alx, i8 noundef signext 32)
          to label %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge unwind label %.loopexit2975, !inline_history !4996 ; 0 uses

.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge: ; preds = %.noexc1262
  %.pre3449.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256: ; preds = %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254
  %.pre3449 = phi ptr [ %.pre3449.pre, %.noexc1262._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256_crit_edge ], [ %i.alp, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1254 ]
  store i8 1, ptr %i.alt, align 1, !tbaa !4984
  br label %._crit_edge.i.i1258

._crit_edge.i.i1258:                              ; preds = %bb.hi, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256
  %i.ame = phi ptr [ %i.alp, %bb.hi ], [ %.pre3449, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1256 ]
  %i.amf = getelementptr inbounds nuw i8, ptr %i.als, i64 224
  store i8 48, ptr %i.amf, align 8, !tbaa !4997
  %i.amg = getelementptr i8, ptr %i.ame, i64 -24  ; 2 uses
  %i.amh = load i64, ptr %i.amg, align 8
  %i.ami = getelementptr inbounds i8, ptr %0, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 24
  store i32 130, ptr %i.amj, align 8, !tbaa !4998
  %i.amk = load i64, ptr %i.amg, align 8
  %i.aml = getelementptr inbounds i8, ptr %0, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  store i64 4, ptr %i.amm, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1265 = load i16, ptr %2, align 8, !tbaa !2388
  %i.amn = sext i16 %.sroa.0.0.copyload.i1265 to i32
  %i.amo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.amn)
          to label %bb.hm unwind label %bb.hy     ; 4 uses

bb.hm:                                            ; preds = %._crit_edge.i.i1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i8 45, ptr %i.dz, align 1, !tbaa !27
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !16
  %i.amq = getelementptr i8, ptr %i.amp, i64 -24
  %i.amr = load i64, ptr %i.amq, align 8
  %i.ams = getelementptr inbounds i8, ptr %i.amo, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !4999
  %.not.i1266 = icmp eq i64 %i.amu, 0
  br i1 %.not.i1266, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.amv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, ptr noundef nonnull %i.dz, i64 noundef 1)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.ho:                                            ; preds = %bb.hm
  %i.amw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amo, i8 noundef signext 45)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.amx = load ptr, ptr %0, align 8, !tbaa !16
  %i.amy = getelementptr i8, ptr %i.amx, i64 -24
  %i.amz = load i64, ptr %i.amy, align 8
  %i.ana = getelementptr inbounds i8, ptr %0, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  store i64 2, ptr %i.anb, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1271 = load i8, ptr %i.iw, align 2, !tbaa !27
  %i.anc = zext i8 %.sroa.0.0.copyload.i1271 to i64
  %i.and = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anc)
          to label %_ZNSolsEj.exit1273 unwind label %bb.hz ; 4 uses

_ZNSolsEj.exit1273:                               ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  store i8 45, ptr %i.dy, align 1, !tbaa !27
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !16
  %i.anf = getelementptr i8, ptr %i.ane, i64 -24
  %i.ang = load i64, ptr %i.anf, align 8
  %i.anh = getelementptr inbounds i8, ptr %i.and, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !4999
  %.not.i1274 = icmp eq i64 %i.anj, 0
  br i1 %.not.i1274, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNSolsEj.exit1273
  %i.ank = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.and, ptr noundef nonnull %i.dy, i64 noundef 1)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %_ZNSolsEj.exit1273
  %i.anl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.and, i8 noundef signext 45)
          to label %bb.hs unwind label %bb.hz     ; 0 uses

bb.hs:                                            ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  %i.anm = load ptr, ptr %0, align 8, !tbaa !16
  %i.ann = getelementptr i8, ptr %i.anm, i64 -24
  %i.ano = load i64, ptr %i.ann, align 8
  %i.anp = getelementptr inbounds i8, ptr %0, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store i64 2, ptr %i.anq, align 8, !tbaa !4999
  %.sroa.0.0.copyload.i1279 = load i8, ptr %i.ix, align 1, !tbaa !27
  %i.anr = zext i8 %.sroa.0.0.copyload.i1279 to i64
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.anr)
          to label %_ZNSolsEj.exit1281 unwind label %bb.ia ; 0 uses

_ZNSolsEj.exit1281:                               ; preds = %bb.hs
  %i.ant = load i32, ptr %i.kk, align 4, !tbaa !5035
  %i.anu = and i32 %i.ant, 8192
  %.not.i1282 = icmp eq i32 %i.anu, 0
  br i1 %.not.i1282, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283, label %bb.ht

bb.ht:                                            ; preds = %_ZNSolsEj.exit1281
  %i.anv = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.anw = icmp eq i32 %i.anv, 0
  br i1 %i.anw, label %bb.hu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283

bb.hu:                                            ; preds = %bb.ht
  %i.anx = load ptr, ptr %11, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !4447
  %i.aoa = icmp eq i32 %i.anz, 0
  br i1 %i.aoa, label %bb.hv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283

bb.hv:                                            ; preds = %bb.hu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 232
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !5023 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !16
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 48
  %i.aof = load ptr, ptr %i.aoe, align 8
  %i.aog = invoke noundef i32 %i.aof(ptr noundef nonnull align 8 dereferenceable(64) %i.aoc)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 unwind label %bb.hw, !inline_history !5039 ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.aoh = landingpad { ptr, i32 }
          catch ptr null
  %i.aoi = extractvalue { ptr, i32 } %i.aoh, 0
  call void @__clang_call_terminate(ptr %i.aoi) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283: ; preds = %_ZNSolsEj.exit1281, %bb.ht, %bb.hu, %bb.hv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.hx:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1250
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

.loopexit2975:                                    ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1252, %bb.hh, %bb.hl, %.noexc1262
  %lpad.loopexit2977 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

.loopexit.split-lp2976:                           ; preds = %bb.hk
  %lpad.loopexit.split-lp2978 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ho, %bb.hn, %._crit_edge.i.i1258
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

bb.ib:                                            ; preds = %.loopexit2975, %.loopexit.split-lp2976, %bb.ia, %bb.hz, %bb.hy
  %.pn908 = phi { ptr, i32 } [ %i.aom, %bb.ia ], [ %i.aol, %bb.hz ], [ %i.aok, %bb.hy ], [ %lpad.loopexit2977, %.loopexit2975 ], [ %lpad.loopexit.split-lp2978, %.loopexit.split-lp2976 ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.hx
  %.pn908.pn = phi { ptr, i32 } [ %.pn908, %bb.ib ], [ %i.aoj, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.aix

bb.id:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i8 37, ptr %i.dx, align 1, !tbaa !27
  %i.aon = load ptr, ptr %0, align 8, !tbaa !16
  %i.aoo = getelementptr i8, ptr %i.aon, i64 -24
  %i.aop = load i64, ptr %i.aoo, align 8
  %i.aoq = getelementptr inbounds i8, ptr %0, i64 %i.aop
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !4999
  %.not.i1284 = icmp eq i64 %i.aos, 0
  br i1 %.not.i1284, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dx, i64 noundef 1)
          to label %bb.ig unwind label %.loopexit

bb.if:                                            ; preds = %bb.id
  %i.aou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.ig unwind label %.loopexit ; 0 uses

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %.0.i1285 = phi ptr [ %i.aot, %bb.ie ], [ %0, %bb.if ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i8 %.0783, ptr %i.dw, align 1, !tbaa !27
  %i.aov = load ptr, ptr %.0.i1285, align 8, !tbaa !16
  %i.aow = getelementptr i8, ptr %i.aov, i64 -24
  %i.aox = load i64, ptr %i.aow, align 8
  %i.aoy = getelementptr inbounds i8, ptr %.0.i1285, i64 %i.aox
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !4999
  %.not.i1289 = icmp eq i64 %i.apa, 0
  br i1 %.not.i1289, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.apb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1285, ptr noundef nonnull %i.dw, i64 noundef 1)
          to label %bb.ij unwind label %.loopexit

bb.ii:                                            ; preds = %bb.ig
  %i.apc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1285, i8 noundef signext %.0783)
          to label %bb.ij unwind label %.loopexit ; 0 uses

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.0.i1290 = phi ptr [ %i.apb, %bb.ih ], [ %.0.i1285, %bb.ii ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  %i.apd = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i8 %i.apd, ptr %i.dv, align 1, !tbaa !27
  %i.ape = load ptr, ptr %.0.i1290, align 8, !tbaa !16
  %i.apf = getelementptr i8, ptr %i.ape, i64 -24
  %i.apg = load i64, ptr %i.apf, align 8
  %i.aph = getelementptr inbounds i8, ptr %.0.i1290, i64 %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !4999
  %.not.i1294 = icmp eq i64 %i.apj, 0
  br i1 %.not.i1294, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1290, ptr noundef nonnull %i.dv, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 unwind label %.loopexit ; 0 uses

bb.il:                                            ; preds = %bb.ij
  %i.apl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1290, i8 noundef signext %i.apd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.im:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store i8 70, ptr %i.du, align 1, !tbaa !27
  %i.apm = load ptr, ptr %0, align 8, !tbaa !16
  %i.apn = getelementptr i8, ptr %i.apm, i64 -24
  %i.apo = load i64, ptr %i.apn, align 8
  %i.app = getelementptr inbounds i8, ptr %0, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !4999
  %.not.i1299 = icmp eq i64 %i.apr, 0
  br i1 %.not.i1299, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.du, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 unwind label %.loopexit ; 0 uses

bb.io:                                            ; preds = %bb.im
  %i.apt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303: ; preds = %bb.io, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ip:                                            ; preds = %bb.h, %bb.h
  br i1 %.not928, label %bb.jv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.apu = icmp eq i8 %.0783, 0
  br i1 %i.apu, label %bb.ir, label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.apv = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i1304 = icmp eq i16 %i.apv, -32768
  br i1 %.not.i1304, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.apw = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.apx = add i8 %i.apw, -1
  %spec.select.i.i1305 = icmp ult i8 %i.apx, 12
  br i1 %spec.select.i.i1305, label %bb.it, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread

bb.it:                                            ; preds = %bb.is
  %i.apy = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1307 = icmp eq i8 %i.apy, 0
  br i1 %.not8.i1307, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1308 = icmp eq i8 %i.apw, 2
  %i.apz = and i16 %i.apv, 3
  %i.aqa = icmp eq i16 %i.apz, 0
  %or.cond.i1309 = and i1 %i.aqa, %.not.i.i1308
  br i1 %or.cond.i1309, label %bb.iv, label %.thread.i.i1310

bb.iv:                                            ; preds = %bb.iu
  %i.aqb = srem i16 %i.apv, 100
  %.not.i.i.i1313 = icmp ne i16 %i.aqb, 0
  %i.aqc = srem i16 %i.apv, 400
  %i.aqd = icmp eq i16 %i.aqc, 0
  %or.cond.i.i1314 = or i1 %.not.i.i.i1313, %i.aqd
  br i1 %or.cond.i.i1314, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315, label %.thread.i.i1310

.thread.i.i1310:                                  ; preds = %bb.iv, %bb.iu
  %i.aqe = zext nneg i8 %i.apw to i64
  %23 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.aqe
  %i.aqf = getelementptr i8, ptr %23, i64 -1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315: ; preds = %bb.iv, %.thread.i.i1310
  %.sroa.03.0.i.i1312 = phi i8 [ %i.aqg, %.thread.i.i1310 ], [ 29, %bb.iv ]
  %.not2814 = icmp ult i8 %.sroa.03.0.i.i1312, %i.apy
  br i1 %.not2814, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread, label %.thread.i.i.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread: ; preds = %bb.it, %bb.is, %bb.ir, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !16
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 -24
  %i.aqj = load i64, ptr %i.aqi, align 8
  %i.aqk = getelementptr inbounds i8, ptr %0, i64 %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !4447
  %i.aqn = or i32 %i.aqm, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aqk, i32 noundef %i.aqn)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread
  %.pre3444 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3445 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3446 = load i8, ptr %i.ix, align 1, !tbaa !5028
  %.pre3447 = load i8, ptr %.0707, align 1, !tbaa !27
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315
  %i.aqo = phi i8 [ %.pre3447, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.la, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqp = phi i8 [ %.pre3446, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqq = phi i8 [ %.pre3445, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apw, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ] ; 3 uses
  %i.aqr = phi i16 [ %.pre3444, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315.thread..thread.i.i.i.i_crit_edge ], [ %i.apv, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1315 ]
  %i.aqs = sext i16 %i.aqr to i32
  %i.aqt = icmp ult i8 %i.aqq, 3
  %.neg.i.i1318 = sext i1 %i.aqt to i32
  %i.aqu = add nsw i32 %.neg.i.i1318, %i.aqs      ; 4 uses
  %i.aqv = zext i8 %i.aqq to i32
  %i.aqw = zext i8 %i.aqp to i32
  %i.aqx = add nsw i32 %i.aqu, -399
  %i.aqy = icmp slt i32 %i.aqu, 0
  %i.aqz = select i1 %i.aqy, i32 %i.aqx, i32 %i.aqu
  %i.ara = sdiv i32 %i.aqz, 400                   ; 2 uses
  %.neg15.i.i1319 = mul nsw i32 %i.ara, -400
  %i.arb = add nsw i32 %.neg15.i.i1319, %i.aqu    ; 3 uses
  %i.arc = icmp ugt i8 %i.aqq, 2
  %.v.i.i1320 = select i1 %i.arc, i32 -3, i32 9
  %i.ard = add nsw i32 %.v.i.i1320, %i.aqv
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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.arr = add nsw i32 %i.arq, 719471             ; 2 uses
  %i.ars = icmp sgt i32 %i.arq, -719472
  %i.art = add nsw i32 %i.arq, 573375
  %i.aru = select i1 %i.ars, i32 %i.arr, i32 %i.art
  %i.arv = sdiv i32 %i.aru, 146097                ; 2 uses
  %.neg.i.i1322 = mul nsw i32 %i.arv, -146097
  %i.arw = add nsw i32 %.neg.i.i1322, %i.arr      ; 5 uses
  %i.arx = udiv i32 %i.arw, 1460
  %i.ary = udiv i32 %i.arw, 36524
  %i.arz = udiv i32 %i.arw, 146096
  %.neg2876 = add nsw i32 %i.ary, %i.arw
  %i.asa = add nuw nsw i32 %i.arz, %i.arx
  %i.asb = sub nsw i32 %.neg2876, %i.asa          ; 3 uses
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
  %.v.i.i1323 = select i1 %i.asl, i32 3, i32 -9
  %i.asm = add nsw i32 %.v.i.i1323, %i.ask
  %i.asn = icmp ult i32 %i.asm, 3
  %i.aso = zext i1 %i.asn to i32
  %i.asp = add nsw i32 %i.ase, %i.aso             ; 2 uses
  %.sroa.02694.0.extract.trunc = trunc i32 %i.asp to i16
  %.sroa.02687.0.extract.trunc = shl i32 %i.asp, 16
  %sext2815 = add i32 %.sroa.02687.0.extract.trunc, -65536
  %i.asq = ashr exact i32 %sext2815, 16           ; 4 uses
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
  %.v3224 = select i1 %i.atg, i32 -10, i32 -4
  %i.ath = add nsw i32 %i.atf, %.v3224
  %.fr.i.i.i = freeze i32 %i.ath                  ; 2 uses
  %i.ati = srem i32 %.fr.i.i.i, 7
  %i.atj = sub nsw i32 %i.atd, %i.atf
  %i.atk = add nsw i32 %i.atj, -719430
  %i.atl = add i32 %i.atk, %.fr.i.i.i
  %i.atm = sub i32 %i.atl, %i.ati
  %i.atn = icmp slt i32 %i.arq, %i.atm
  %i.ato = sext i1 %i.atn to i16
  %spec.select = add i16 %.sroa.02694.0.extract.trunc, %i.ato
  store i16 %spec.select, ptr %13, align 2
  %i.atp = icmp eq i8 %i.aqo, 71
  br i1 %i.atp, label %bb.ix, label %bb.iz

bb.iw:                                            ; preds = %bb.iy, %bb.ix
  %i.atq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ix:                                            ; preds = %.thread.i.i.i.i
  %i.atr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %13)
          to label %.noexc1335 unwind label %bb.iw ; 0 uses

.noexc1335:                                       ; preds = %bb.ix
  %i.ats = load i16, ptr %13, align 2, !tbaa !5026
  %.not.i1334 = icmp eq i16 %i.ats, -32768
  br i1 %.not.i1334, label %bb.iy, label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit

bb.iy:                                            ; preds = %.noexc1335
  %i.att = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.45, i64 noundef 20)
          to label %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit unwind label %bb.iw ; 0 uses

bb.iz:                                            ; preds = %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.atu = load ptr, ptr %0, align 8, !tbaa !16
  %i.atv = getelementptr i8, ptr %i.atu, i64 -24
  %i.atw = load i64, ptr %i.atv, align 8
  %i.atx = getelementptr inbounds i8, ptr %0, i64 %i.atw
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(264) %i.atx)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338 unwind label %bb.ji

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338: ; preds = %bb.iz
  %i.aty = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.atz = getelementptr i8, ptr %i.aty, i64 -24
  %i.aua = load i64, ptr %i.atz, align 8
  %i.aub = getelementptr inbounds i8, ptr %0, i64 %i.aua ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 225 ; 2 uses
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %._crit_edge.i.i1344, label %bb.ja

bb.ja:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1338
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 240
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1339 = icmp eq ptr %i.aug, null
  br i1 %.not.i.i.i.i1339, label %bb.jb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1347 unwind label %.loopexit.split-lp2971

.noexc1347:                                       ; preds = %bb.jb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340: ; preds = %bb.ja
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 56
  %i.aui = load i8, ptr %i.auh, align 8, !tbaa !4991
  %.not.i1.i.i.i1341 = icmp eq i8 %i.aui, 0
  br i1 %.not.i1.i.i.i1341, label %bb.jc, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1340
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aug)
          to label %.noexc1348 unwind label %.loopexit2970

.noexc1348:                                       ; preds = %bb.jc
  %i.auj = load ptr, ptr %i.aug, align 8, !tbaa !16
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 48
  %i.aul = load ptr, ptr %i.auk, align 8
  %i.aum = invoke noundef signext i8 %i.aul(ptr noundef nonnull align 8 dereferenceable(570) %i.aug, i8 noundef signext 32)
          to label %.noexc1348._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342_crit_edge unwind label %.loopexit2970, !inline_history !4996 ; 0 uses

.noexc1348._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342_crit_edge: ; preds = %.noexc1348
  %.pre3448.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1342

end_hunk_22
begin_hunk_23_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.ks:                                            ; preds = %bb.kq
  %.not.i1396 = icmp eq i64 %.sroa.02679.0.copyload, 12
  %i.ayu = add nsw i64 %.sroa.02679.0.copyload, -12
  br i1 %.not.i1396, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit: ; preds = %bb.kr, %bb.ks, %bb.kp
  %storemerge = phi i64 [ %i.ayu, %bb.ks ], [ %.sroa.02679.0.copyload, %bb.kr ], [ %.sroa.02679.0.copyload, %bb.kp ] ; 3 uses
  %i.ayv = icmp slt i64 %storemerge, 10
  br i1 %i.ayv, label %bb.kt, label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kt:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store i8 48, ptr %i.dl, align 1, !tbaa !27
  %i.ayw = load ptr, ptr %0, align 8, !tbaa !16
  %i.ayx = getelementptr i8, ptr %i.ayw, i64 -24
  %i.ayy = load i64, ptr %i.ayx, align 8
  %i.ayz = getelementptr inbounds i8, ptr %0, i64 %i.ayy
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !4999
  %.not.i1399 = icmp eq i64 %i.azb, 0
  br i1 %.not.i1399, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.azc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dl, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 unwind label %bb.kw ; 0 uses

bb.kv:                                            ; preds = %bb.kt
  %i.azd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 unwind label %bb.kw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread

bb.kw:                                            ; preds = %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.kv, %bb.ku
  %i.aze = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread: ; preds = %bb.kr, %bb.ks, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit
  %storemerge2741 = phi i64 [ %storemerge, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit ], [ %storemerge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1403 ], [ 12, %bb.ks ], [ 12, %bb.kr ]
  %i.azf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %storemerge2741)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.kw ; 0 uses

bb.kx:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg) #27
  store i8 37, ptr %i.fg, align 1, !tbaa !27
  store i8 79, ptr %i.kg, align 1, !tbaa !27
  %i.azg = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.azg, ptr %i.kh, align 1, !tbaa !27
  %i.azh = trunc i64 %.sroa.02679.0.copyload to i32
  store i32 %i.azh, ptr %i.it, align 8, !tbaa !5031
  %i.azi = load ptr, ptr %0, align 8, !tbaa !16
  %i.azj = getelementptr i8, ptr %i.azi, i64 -24
  %i.azk = load i64, ptr %i.azj, align 8
  %i.azl = getelementptr inbounds i8, ptr %0, i64 %i.azk ; 6 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 232
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !5023 ; 2 uses
  %.not.i1406 = icmp eq ptr %i.azn, null
  %i.azo = zext i1 %.not.i1406 to i8
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azl, i64 225 ; 2 uses
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.azr = trunc nuw i8 %i.azq to i1
  br i1 %i.azr, label %._crit_edge.i1412, label %bb.ky

._crit_edge.i1412:                                ; preds = %bb.kx
  %.phi.trans.insert.i1413 = getelementptr inbounds nuw i8, ptr %i.azl, i64 224
  %.pre.i1414 = load i8, ptr %.phi.trans.insert.i1413, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418

bb.ky:                                            ; preds = %bb.kx
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azl, i64 240
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1407 = icmp eq ptr %i.azt, null
  br i1 %.not.i.i.i1407, label %bb.kz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1415 unwind label %.loopexit.split-lp2966

.noexc1415:                                       ; preds = %bb.kz
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408: ; preds = %bb.ky
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 56
  %i.azv = load i8, ptr %i.azu, align 8, !tbaa !4991
  %.not.i1.i.i1409 = icmp eq i8 %i.azv, 0
  br i1 %.not.i1.i.i1409, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azt, i64 89
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410

bb.lb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1408
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azt)
          to label %.noexc1416 unwind label %.loopexit2965

.noexc1416:                                       ; preds = %bb.lb
  %i.azy = load ptr, ptr %i.azt, align 8, !tbaa !16
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 48
  %i.baa = load ptr, ptr %i.azz, align 8
  %i.bab = invoke noundef signext i8 %i.baa(ptr noundef nonnull align 8 dereferenceable(570) %i.azt, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410 unwind label %.loopexit2965, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410: ; preds = %.noexc1416, %bb.la
  %.0.i.i.i1411 = phi i8 [ %i.azx, %bb.la ], [ %i.bab, %.noexc1416 ] ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azl, i64 224
  store i8 %.0.i.i.i1411, ptr %i.bac, align 8, !tbaa !4997
  store i8 1, ptr %i.azp, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410, %._crit_edge.i1412
  %i.bad = phi i8 [ %.pre.i1414, %._crit_edge.i1412 ], [ %.0.i.i.i1411, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1410 ]
  %i.bae = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.azn, i8 %i.azo, ptr noundef nonnull align 8 dereferenceable(216) %i.azl, i8 noundef signext %i.bad, ptr noundef nonnull %6, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ki)
          to label %bb.lc unwind label %.loopexit2965 ; 0 uses

bb.lc:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2965:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1418, %bb.lb, %.noexc1416
  %lpad.loopexit2967 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.loopexit.split-lp2966:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp2968 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit.split-lp2966, %.loopexit2965
  %lpad.phi2969 = phi { ptr, i32 } [ %lpad.loopexit2967, %.loopexit2965 ], [ %lpad.loopexit.split-lp2968, %.loopexit.split-lp2966 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg) #27
  br label %bb.aix

bb.le:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store i8 %i.la, ptr %i.dk, align 1, !tbaa !27
  %i.baf = load ptr, ptr %0, align 8, !tbaa !16
  %i.bag = getelementptr i8, ptr %i.baf, i64 -24
  %i.bah = load i64, ptr %i.bag, align 8
  %i.bai = getelementptr inbounds i8, ptr %0, i64 %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 16
  %i.bak = load i64, ptr %i.baj, align 8, !tbaa !4999
  %.not.i1419 = icmp eq i64 %i.bak, 0
  br i1 %.not.i1419, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bal = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 unwind label %.loopexit ; 0 uses

bb.lg:                                            ; preds = %bb.le
  %i.bam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.la)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.lh:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.mn, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.ban = icmp eq i8 %.0783, 0
  br i1 %i.ban, label %bb.lj, label %bb.me

bb.lj:                                            ; preds = %bb.li
  %i.bao = load i16, ptr %2, align 8, !tbaa !5026 ; 9 uses
  %.not.i1424 = icmp eq i16 %i.bao, -32768
  br i1 %.not.i1424, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bap = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 8 uses
  %i.baq = add i8 %i.bap, -1
  %spec.select.i.i1425 = icmp ult i8 %i.baq, 12
  br i1 %spec.select.i.i1425, label %bb.ll, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519

bb.ll:                                            ; preds = %bb.lk
  %i.bar = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 2 uses
  %.not8.i1427 = icmp eq i8 %i.bar, 0
  br i1 %.not8.i1427, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not.i.i1428 = icmp eq i8 %i.bap, 2
  %i.bas = and i16 %i.bao, 3
  %i.bat = icmp eq i16 %i.bas, 0
  %or.cond.i1429 = and i1 %i.bat, %.not.i.i1428
  br i1 %or.cond.i1429, label %bb.ln, label %.thread.i.i1430

bb.ln:                                            ; preds = %bb.lm
  %i.bau = srem i16 %i.bao, 100
  %.not.i.i.i1433 = icmp ne i16 %i.bau, 0
  %i.bav = srem i16 %i.bao, 400
  %i.baw = icmp eq i16 %i.bav, 0
  %or.cond.i.i1434 = or i1 %.not.i.i.i1433, %i.baw
  br i1 %or.cond.i.i1434, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435, label %.thread.i.i1430

.thread.i.i1430:                                  ; preds = %bb.ln, %bb.lm
  %i.bax = zext nneg i8 %i.bap to i64
  %24 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bax
  %i.bay = getelementptr i8, ptr %24, i64 -1
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435: ; preds = %bb.ln, %.thread.i.i1430
  %.sroa.03.0.i.i1432 = phi i8 [ %i.baz, %.thread.i.i1430 ], [ 29, %bb.ln ]
  %.not2809 = icmp ult i8 %.sroa.03.0.i.i1432, %i.bar
  br i1 %.not2809, label %.thread2744, label %.thread2743

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread: ; preds = %bb.ll
  %i.bba = load i8, ptr %i.gw, align 8, !tbaa !5096, !range !659, !noundef !660
  %i.bbb = trunc nuw i8 %i.bba to i1
  br i1 %i.bbb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519: ; preds = %bb.lk
  %i.bbc = load i8, ptr %i.gw, align 8, !tbaa !5096, !range !659, !noundef !660
  %i.bbd = trunc nuw i8 %i.bbc to i1
  br i1 %i.bbd, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread: ; preds = %bb.lj
  %i.bbe = load i8, ptr %i.gw, align 8, !tbaa !5096, !range !659, !noundef !660
  %i.bbf = trunc nuw i8 %i.bbe to i1
  br i1 %i.bbf, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.md

.thread2744:                                      ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435
  %i.bbg = load i8, ptr %i.gw, align 8, !tbaa !5096, !range !659, !noundef !660
  %i.bbh = trunc nuw i8 %i.bbg to i1
  br i1 %i.bbh, label %.thread2743, label %bb.md

.thread2743:                                      ; preds = %.thread2744, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435
  %.pr = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1439 = icmp eq i8 %.pr, 0
  br i1 %.not8.i1439, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.lo

bb.lo:                                            ; preds = %.thread2743
  %.not.i.i1440 = icmp eq i8 %i.bap, 2
  %i.bbi = and i16 %i.bao, 3
  %i.bbj = icmp eq i16 %i.bbi, 0
  %or.cond.i1441 = and i1 %i.bbj, %.not.i.i1440
  br i1 %or.cond.i1441, label %bb.lp, label %.thread.i.i1442

bb.lp:                                            ; preds = %bb.lo
  %i.bbk = srem i16 %i.bao, 100
  %.not.i.i.i1445 = icmp ne i16 %i.bbk, 0
  %i.bbl = srem i16 %i.bao, 400
  %i.bbm = icmp eq i16 %i.bbl, 0
  %or.cond.i.i1446 = or i1 %.not.i.i.i1445, %i.bbm
  br i1 %or.cond.i.i1446, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447, label %.thread.i.i1442

.thread.i.i1442:                                  ; preds = %bb.lp, %bb.lo
  %i.bbn = zext nneg i8 %i.bap to i64
  %25 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bbn
  %i.bbo = getelementptr i8, ptr %25, i64 -1
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447: ; preds = %bb.lp, %.thread.i.i1442
  %.sroa.03.0.i.i1444 = phi i8 [ %i.bbp, %.thread.i.i1442 ], [ 29, %bb.lp ]
  %.not2810 = icmp ult i8 %.sroa.03.0.i.i1444, %.pr
  br i1 %.not2810, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, label %bb.lq

bb.lq:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447
  %i.bbq = sext i16 %i.bao to i32                 ; 3 uses
  %i.bbr = icmp samesign ult i8 %i.bap, 3
  %.neg.i.i1448 = sext i1 %i.bbr to i32
  %i.bbs = add nsw i32 %.neg.i.i1448, %i.bbq      ; 4 uses
  %i.bbt = zext nneg i8 %i.bap to i32
  %i.bbu = zext i8 %.pr to i32
  %i.bbv = add nsw i32 %i.bbs, -399
  %i.bbw = icmp slt i32 %i.bbs, 0
  %i.bbx = select i1 %i.bbw, i32 %i.bbv, i32 %i.bbs
  %i.bby = sdiv i32 %i.bbx, 400                   ; 2 uses
  %.neg15.i.i1449 = mul nsw i32 %i.bby, -400
  %i.bbz = add nsw i32 %.neg15.i.i1449, %i.bbs    ; 3 uses
  %i.bca = icmp samesign ugt i8 %i.bap, 2
  %.v.i.i1450 = select i1 %i.bca, i32 -3, i32 9
  %i.bcb = add nsw i32 %.v.i.i1450, %i.bbt
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
  %.neg15.i.i1462 = mul nsw i32 %i.bcl, -400
  %i.bcm = add nsw i32 %.neg15.i.i1462, %i.bch    ; 3 uses
  %i.bcn = lshr i32 %i.bcm, 2
  %i.bco = udiv i32 %i.bcm, 100
  %reass.add = sub nsw i32 %i.bbz, %i.bcm
  %reass.mul = mul nsw i32 %reass.add, 365
  %reass.add2871 = sub nsw i32 %i.bby, %i.bcl
  %reass.mul2872 = mul nsw i32 %reass.add2871, 146097
  %reass.sub = sub nsw i32 %i.bco, %i.bcn
  %i.bcp = add nsw i32 %reass.sub, -306
  %.neg2866 = add nsw i32 %i.bcp, %i.bbu
  %.neg2868 = add nsw i32 %.neg2866, %i.bce
  %.neg2869 = add nsw i32 %.neg2868, %reass.mul2872
  %.neg2811 = add nsw i32 %.neg2869, %i.bcf
  %i.bcq = sub nsw i32 %.neg2811, %i.bcg
  %i.bcr = add nsw i32 %i.bcq, %reass.mul
  br label %bb.lr

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread3519, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1435.thread.thread, %.thread2743, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447
  %i.bcs = load i64, ptr %i.iq, align 8, !tbaa !5040
  %i.bct = mul nsw i64 %i.bcs, 1000000000
  %i.bcu = load i64, ptr %i.jv, align 8, !tbaa !611
  %i.bcv = add nsw i64 %i.bct, %i.bcu
  %i.bcw = load i64, ptr %i.ir, align 8, !tbaa !5012
  %i.bcx = mul nsw i64 %i.bcw, 60000000000
  %i.bcy = add nsw i64 %i.bcv, %i.bcx
  %i.bcz = load i64, ptr %i.ip, align 8, !tbaa !5013
  %i.bda = mul nsw i64 %i.bcz, 3600000000000
  %i.bdb = add nsw i64 %i.bcy, %i.bda
  %i.bdc = load i8, ptr %i.ju, align 8, !tbaa !5100, !range !659, !noundef !660
  %i.bdd = shl nuw nsw i8 %i.bdc, 1
  %i.bde = zext nneg i8 %i.bdd to i64
  %i.bdf = sub nsw i64 1, %i.bde
  %i.bdg = mul nsw i64 %i.bdf, %i.bdb
  %i.bdh = sdiv i64 %i.bdg, 86400000000000
  %i.bdi = trunc nsw i64 %i.bdh to i32
  br label %bb.lr

bb.lr:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread, %bb.lq
  %.sroa.02671.0 = phi i32 [ %i.bcr, %bb.lq ], [ %i.bdi, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1447.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.bdj = load ptr, ptr %0, align 8, !tbaa !16
  %i.bdk = getelementptr i8, ptr %i.bdj, i64 -24
  %i.bdl = load i64, ptr %i.bdk, align 8
  %i.bdm = getelementptr inbounds i8, ptr %0, i64 %i.bdl
  invoke void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(264) %i.bdm)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467 unwind label %bb.ma

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467: ; preds = %bb.lr
  %i.bdn = load ptr, ptr %0, align 8, !tbaa !16   ; 3 uses
  %i.bdo = getelementptr i8, ptr %i.bdn, i64 -24
  %i.bdp = load i64, ptr %i.bdo, align 8
  %i.bdq = getelementptr inbounds i8, ptr %0, i64 %i.bdp ; 3 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 225 ; 2 uses
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.bdt = trunc nuw i8 %i.bds to i1
  br i1 %i.bdt, label %._crit_edge.i.i1473, label %bb.ls

bb.ls:                                            ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdq, i64 240
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !4990 ; 5 uses
  %.not.i.i.i.i1468 = icmp eq ptr %i.bdv, null
  br i1 %.not.i.i.i.i1468, label %bb.lt, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1476 unwind label %.loopexit.split-lp2961

.noexc1476:                                       ; preds = %bb.lt
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469: ; preds = %bb.ls
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 56
  %i.bdx = load i8, ptr %i.bdw, align 8, !tbaa !4991
  %.not.i1.i.i.i1470 = icmp eq i8 %i.bdx, 0
  br i1 %.not.i1.i.i.i1470, label %bb.lu, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471

bb.lu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdv)
          to label %.noexc1477 unwind label %.loopexit2960

.noexc1477:                                       ; preds = %bb.lu
  %i.bdy = load ptr, ptr %i.bdv, align 8, !tbaa !16
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 48
  %i.bea = load ptr, ptr %i.bdz, align 8
  %i.beb = invoke noundef signext i8 %i.bea(ptr noundef nonnull align 8 dereferenceable(570) %i.bdv, i8 noundef signext 32)
          to label %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge unwind label %.loopexit2960, !inline_history !4996 ; 0 uses

.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge: ; preds = %.noexc1477
  %.pre3443.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471: ; preds = %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469
  %.pre3443 = phi ptr [ %.pre3443.pre, %.noexc1477._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471_crit_edge ], [ %i.bdn, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i1469 ]
  store i8 1, ptr %i.bdr, align 1, !tbaa !4984
  br label %._crit_edge.i.i1473

._crit_edge.i.i1473:                              ; preds = %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471
  %i.bec = phi ptr [ %i.bdn, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E.exit1467 ], [ %.pre3443, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i1471 ]
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdq, i64 224
  store i8 48, ptr %i.bed, align 8, !tbaa !4997
  %i.bee = getelementptr i8, ptr %i.bec, i64 -24  ; 2 uses
  %i.bef = load i64, ptr %i.bee, align 8
  %i.beg = getelementptr inbounds i8, ptr %0, i64 %i.bef
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 24
  store i32 130, ptr %i.beh, align 8, !tbaa !4998
  %i.bei = load i64, ptr %i.bee, align 8
  %i.bej = getelementptr inbounds i8, ptr %0, i64 %i.bei
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 16
  store i64 3, ptr %i.bek, align 8, !tbaa !4999
  %i.bel = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.02671.0)
          to label %bb.lv unwind label %.loopexit2960 ; 0 uses

bb.lv:                                            ; preds = %._crit_edge.i.i1473
  %i.bem = load i32, ptr %i.kf, align 4, !tbaa !5035
  %i.ben = and i32 %i.bem, 8192
  %.not.i1480 = icmp eq i32 %i.ben, 0
  br i1 %.not.i1480, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.beo = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.bep = icmp eq i32 %i.beo, 0
  br i1 %i.bep, label %bb.lx, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481

bb.lx:                                            ; preds = %bb.lw
  %i.beq = load ptr, ptr %15, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 32
  %i.bes = load i32, ptr %i.ber, align 8, !tbaa !4447
  %i.bet = icmp eq i32 %i.bes, 0
  br i1 %i.bet, label %bb.ly, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481

bb.ly:                                            ; preds = %bb.lx
  %i.beu = getelementptr inbounds nuw i8, ptr %i.beq, i64 232
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !5023 ; 2 uses
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !16
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 48
  %i.bey = load ptr, ptr %i.bex, align 8
  %i.bez = invoke noundef i32 %i.bey(ptr noundef nonnull align 8 dereferenceable(64) %i.bev)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 unwind label %bb.lz, !inline_history !5039 ; 0 uses

bb.lz:                                            ; preds = %bb.ly
  %i.bfa = landingpad { ptr, i32 }
          catch ptr null
  %i.bfb = extractvalue { ptr, i32 } %i.bfa, 0
  call void @__clang_call_terminate(ptr %i.bfb) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481: ; preds = %bb.lv, %bb.lw, %bb.lx, %bb.ly
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.ma:                                            ; preds = %bb.lr
  %i.bfc = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

.loopexit2960:                                    ; preds = %._crit_edge.i.i1473, %bb.lu, %.noexc1477
  %lpad.loopexit2962 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

.loopexit.split-lp2961:                           ; preds = %bb.lt
  %lpad.loopexit.split-lp2963 = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb
end_hunk_23
begin_hunk_24_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a

bb.wf:                                            ; preds = %bb.we
  %i.chh = getelementptr inbounds nuw i8, ptr %i.cha, i64 240
  %i.chi = load ptr, ptr %i.chh, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1875 = icmp eq ptr %i.chi, null
  br i1 %.not.i.i.i1875, label %bb.wg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876

bb.wg:                                            ; preds = %bb.wf
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1883 unwind label %.loopexit.split-lp2931

.noexc1883:                                       ; preds = %bb.wg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876: ; preds = %bb.wf
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 56
  %i.chk = load i8, ptr %i.chj, align 8, !tbaa !4991
  %.not.i1.i.i1877 = icmp eq i8 %i.chk, 0
  br i1 %.not.i1.i.i1877, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chi, i64 89
  %i.chm = load i8, ptr %i.chl, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878

bb.wi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1876
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.chi)
          to label %.noexc1884 unwind label %.loopexit2930

.noexc1884:                                       ; preds = %bb.wi
  %i.chn = load ptr, ptr %i.chi, align 8, !tbaa !16
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chn, i64 48
  %i.chp = load ptr, ptr %i.cho, align 8
  %i.chq = invoke noundef signext i8 %i.chp(ptr noundef nonnull align 8 dereferenceable(570) %i.chi, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878 unwind label %.loopexit2930, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878: ; preds = %.noexc1884, %bb.wh
  %.0.i.i.i1879 = phi i8 [ %i.chm, %bb.wh ], [ %i.chq, %.noexc1884 ] ; 2 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %i.cha, i64 224
  store i8 %.0.i.i.i1879, ptr %i.chr, align 8, !tbaa !4997
  store i8 1, ptr %i.che, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878, %._crit_edge.i1880
  %i.chs = phi i8 [ %.pre.i1882, %._crit_edge.i1880 ], [ %.0.i.i.i1879, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1878 ]
  %i.cht = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.chc, i8 %i.chd, ptr noundef nonnull align 8 dereferenceable(216) %i.cha, i8 noundef signext %i.chs, ptr noundef nonnull %6, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.jo)
          to label %bb.wj unwind label %.loopexit2930 ; 0 uses

bb.wj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

.loopexit2930:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1886, %bb.wi, %.noexc1884
  %lpad.loopexit2932 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

.loopexit.split-lp2931:                           ; preds = %bb.wg
  %lpad.loopexit.split-lp2933 = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.wk:                                            ; preds = %.loopexit.split-lp2931, %.loopexit2930
  %lpad.phi2934 = phi { ptr, i32 } [ %lpad.loopexit2932, %.loopexit2930 ], [ %lpad.loopexit.split-lp2933, %.loopexit.split-lp2931 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm) #27
  br label %bb.aix

bb.wl:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 117, ptr %i.bf, align 1, !tbaa !27
  %i.chu = load ptr, ptr %0, align 8, !tbaa !16
  %i.chv = getelementptr i8, ptr %i.chu, i64 -24
  %i.chw = load i64, ptr %i.chv, align 8
  %i.chx = getelementptr inbounds i8, ptr %0, i64 %i.chw
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chx, i64 16
  %i.chz = load i64, ptr %i.chy, align 8, !tbaa !4999
  %.not.i1887 = icmp eq i64 %i.chz, 0
  br i1 %.not.i1887, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 unwind label %.loopexit ; 0 uses

bb.wn:                                            ; preds = %bb.wl
  %i.cib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 117)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891: ; preds = %bb.wn, %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.wo:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.yc, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.cic = icmp eq i8 %.0783, 69
  br i1 %i.cic, label %bb.wq, label %bb.wz

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i8 37, ptr %i.be, align 1, !tbaa !27
  %i.cid = load ptr, ptr %0, align 8, !tbaa !16
  %i.cie = getelementptr i8, ptr %i.cid, i64 -24
  %i.cif = load i64, ptr %i.cie, align 8
  %i.cig = getelementptr inbounds i8, ptr %0, i64 %i.cif
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cig, i64 16
  %i.cii = load i64, ptr %i.cih, align 8, !tbaa !4999
  %.not.i1892 = icmp eq i64 %i.cii, 0
  br i1 %.not.i1892, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %bb.wt unwind label %.loopexit

bb.ws:                                            ; preds = %bb.wq
  %i.cik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.wt unwind label %.loopexit ; 0 uses

bb.wt:                                            ; preds = %bb.wr, %bb.ws
  %.0.i1893 = phi ptr [ %i.cij, %bb.wr ], [ %0, %bb.ws ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 69, ptr %i.bd, align 1, !tbaa !27
  %i.cil = load ptr, ptr %.0.i1893, align 8, !tbaa !16
  %i.cim = getelementptr i8, ptr %i.cil, i64 -24
  %i.cin = load i64, ptr %i.cim, align 8
  %i.cio = getelementptr inbounds i8, ptr %.0.i1893, i64 %i.cin
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 16
  %i.ciq = load i64, ptr %i.cip, align 8, !tbaa !4999
  %.not.i1897 = icmp eq i64 %i.ciq, 0
  br i1 %.not.i1897, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  %i.cir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1893, ptr noundef nonnull %i.bd, i64 noundef 1)
          to label %bb.ww unwind label %.loopexit

bb.wv:                                            ; preds = %bb.wt
  %i.cis = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1893, i8 noundef signext 69)
          to label %bb.ww unwind label %.loopexit ; 0 uses

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.0.i1898 = phi ptr [ %i.cir, %bb.wu ], [ %.0.i1893, %bb.wv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.cit = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i8 %i.cit, ptr %i.bc, align 1, !tbaa !27
  %i.ciu = load ptr, ptr %.0.i1898, align 8, !tbaa !16
  %i.civ = getelementptr i8, ptr %i.ciu, i64 -24
  %i.ciw = load i64, ptr %i.civ, align 8
  %i.cix = getelementptr inbounds i8, ptr %.0.i1898, i64 %i.ciw
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cix, i64 16
  %i.ciz = load i64, ptr %i.ciy, align 8, !tbaa !4999
  %.not.i1902 = icmp eq i64 %i.ciz, 0
  br i1 %.not.i1902, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1898, ptr noundef nonnull %i.bc, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 unwind label %.loopexit ; 0 uses

bb.wy:                                            ; preds = %bb.ww
  %i.cjb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1898, i8 noundef signext %i.cit)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906: ; preds = %bb.wy, %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.wz:                                            ; preds = %bb.wp
  %i.cjc = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i1907 = icmp eq i16 %i.cjc, -32768
  br i1 %.not.i1907, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.cjd = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.cje = add i8 %i.cjd, -1
  %spec.select.i.i1908 = icmp ult i8 %i.cje, 12
  br i1 %spec.select.i.i1908, label %bb.xb, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread

bb.xb:                                            ; preds = %bb.xa
  %i.cjf = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i1910 = icmp eq i8 %i.cjf, 0
  br i1 %.not8.i1910, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %.not.i.i1911 = icmp eq i8 %i.cjd, 2
  %i.cjg = and i16 %i.cjc, 3
  %i.cjh = icmp eq i16 %i.cjg, 0
  %or.cond.i1912 = and i1 %i.cjh, %.not.i.i1911
  br i1 %or.cond.i1912, label %bb.xd, label %.thread.i.i1913

bb.xd:                                            ; preds = %bb.xc
  %i.cji = srem i16 %i.cjc, 100
  %.not.i.i.i1916 = icmp ne i16 %i.cji, 0
  %i.cjj = srem i16 %i.cjc, 400
  %i.cjk = icmp eq i16 %i.cjj, 0
  %or.cond.i.i1917 = or i1 %.not.i.i.i1916, %i.cjk
  br i1 %or.cond.i.i1917, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918, label %.thread.i.i1913

.thread.i.i1913:                                  ; preds = %bb.xd, %bb.xc
  %i.cjl = zext nneg i8 %i.cjd to i64
  %26 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cjl
  %i.cjm = getelementptr i8, ptr %26, i64 -1
  %i.cjn = load i8, ptr %i.cjm, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918: ; preds = %bb.xd, %.thread.i.i1913
  %.sroa.03.0.i.i1915 = phi i8 [ %i.cjn, %.thread.i.i1913 ], [ 29, %bb.xd ]
  %.not2803 = icmp ult i8 %.sroa.03.0.i.i1915, %i.cjf
  br i1 %.not2803, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread: ; preds = %bb.xb, %bb.xa, %bb.wz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918
  %i.cjo = load ptr, ptr %0, align 8, !tbaa !16
  %i.cjp = getelementptr i8, ptr %i.cjo, i64 -24
  %i.cjq = load i64, ptr %i.cjp, align 8
  %i.cjr = getelementptr inbounds i8, ptr %0, i64 %i.cjq ; 2 uses
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjr, i64 32
  %i.cjt = load i32, ptr %i.cjs, align 8, !tbaa !4447
  %i.cju = or i32 %i.cjt, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cjr, i32 noundef %i.cju)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge unwind label %bb.xe

_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread
  %.pre3433 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3434 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3435 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920

bb.xe:                                            ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread
  %i.cjv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918
  %i.cjw = phi i8 [ %.pre3435, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjf, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ]
  %i.cjx = phi i8 [ %.pre3434, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjd, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ] ; 3 uses
  %i.cjy = phi i16 [ %.pre3433, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920_crit_edge ], [ %i.cjc, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit1918 ] ; 2 uses
  %i.cjz = sext i16 %i.cjy to i32                 ; 4 uses
  %i.cka = icmp ult i8 %i.cjx, 3
  %.neg.i.i1921 = sext i1 %i.cka to i32
  %i.ckb = add nsw i32 %.neg.i.i1921, %i.cjz      ; 4 uses
  %i.ckc = zext i8 %i.cjx to i32
  %i.ckd = zext i8 %i.cjw to i32
  %i.cke = add nsw i32 %i.ckb, -399
  %i.ckf = icmp slt i32 %i.ckb, 0
  %i.ckg = select i1 %i.ckf, i32 %i.cke, i32 %i.ckb
  %i.ckh = sdiv i32 %i.ckg, 400                   ; 2 uses
  %.neg15.i.i1922 = mul nsw i32 %i.ckh, -400
  %i.cki = add nsw i32 %.neg15.i.i1922, %i.ckb    ; 3 uses
  %i.ckj = icmp ugt i8 %i.cjx, 2
  %.v.i.i1923 = select i1 %i.ckj, i32 -3, i32 9
  %i.ckk = add nsw i32 %.v.i.i1923, %i.ckc
  %i.ckl = mul nsw i32 %i.ckk, 153
  %i.ckm = add nsw i32 %i.ckl, 2
  %i.ckn = udiv i32 %i.ckm, 5
  %i.cko = mul nsw i32 %i.cki, 365
  %i.ckp = lshr i32 %i.cki, 2
  %i.ckq = udiv i32 %i.cki, 100
  %i.ckr = mul nsw i32 %i.ckh, 146097
  %i.cks = add nuw nsw i32 %i.ckd, -719469
  %i.ckt = add nsw i32 %i.cks, %i.ckn
  %i.cku = add nsw i32 %i.ckt, %i.ckr
  %i.ckv = add nsw i32 %i.cku, %i.ckp
  %i.ckw = add nsw i32 %i.ckv, %i.cko
  %i.ckx = sub nsw i32 %i.ckw, %i.ckq             ; 3 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %bb.xf
    i8 79, label %bb.xt
  ]

bb.xf:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920
  %i.cky = add nsw i32 %i.cjz, -1                 ; 2 uses
  %i.ckz = add nsw i32 %i.cjz, -400
  %i.cla = icmp slt i16 %i.cjy, 1
  %i.clb = select i1 %i.cla, i32 %i.ckz, i32 %i.cky
  %i.clc = sdiv i32 %i.clb, 400                   ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %i.clc, -400
  %i.cld = add nsw i32 %.neg15.i.i.i.i, %i.cky    ; 3 uses
  %i.cle = mul nsw i32 %i.cld, 365
  %i.clf = lshr i32 %i.cld, 2
  %i.clg = udiv i32 %i.cld, 100
  %i.clh = mul nsw i32 %i.clc, 146097
  %i.cli = add nsw i32 %i.clh, -719162
  %i.clj = add nsw i32 %i.cli, %i.clf
  %i.clk = add nsw i32 %i.clj, %i.cle
  %i.cll = sub nsw i32 %i.clk, %i.clg             ; 4 uses
  %i.clm = icmp sgt i32 %i.cll, -5
  %i.cln = add nsw i32 %i.cll, 4
  %.in.i.i.i.i1932 = select i1 %i.clm, i32 %i.cln, i32 %i.cll
  %i.clo = urem i32 %.in.i.i.i.i1932, 7           ; 3 uses
  %i.clp = sub nuw nsw i32 -6, %i.clo
  %.not2808 = icmp eq i32 %i.clo, 0
  %i.clq = select i1 %.not2808, i32 0, i32 %i.clp
  %.fr.i.i.i1933 = freeze i32 %i.clq              ; 2 uses
  %i.clr = srem i32 %.fr.i.i.i1933, 7
  %i.cls = add i32 %i.clo, %.fr.i.i.i1933
  %i.clt = sub i32 %i.cll, %i.cls
  %i.clu = add i32 %i.clt, %i.clr                 ; 2 uses
  %i.clv = icmp slt i32 %i.ckx, %i.clu
  br i1 %i.clv, label %bb.xg, label %bb.xn

bb.xg:                                            ; preds = %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i8 48, ptr %i.bb, align 1, !tbaa !27
  %i.clw = load ptr, ptr %0, align 8, !tbaa !16
  %i.clx = getelementptr i8, ptr %i.clw, i64 -24
  %i.cly = load i64, ptr %i.clx, align 8
  %i.clz = getelementptr inbounds i8, ptr %0, i64 %i.cly
  %i.cma = getelementptr inbounds nuw i8, ptr %i.clz, i64 16
  %i.cmb = load i64, ptr %i.cma, align 8, !tbaa !4999
  %.not.i1936 = icmp eq i64 %i.cmb, 0
  br i1 %.not.i1936, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cmc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bb, i64 noundef 1)
          to label %bb.xj unwind label %bb.xm

bb.xi:                                            ; preds = %bb.xg
  %i.cmd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.xj unwind label %bb.xm     ; 0 uses

bb.xj:                                            ; preds = %bb.xh, %bb.xi
  %.0.i1937 = phi ptr [ %i.cmc, %bb.xh ], [ %0, %bb.xi ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i8 48, ptr %i.ba, align 1, !tbaa !27
  %i.cme = load ptr, ptr %.0.i1937, align 8, !tbaa !16
  %i.cmf = getelementptr i8, ptr %i.cme, i64 -24
  %i.cmg = load i64, ptr %i.cmf, align 8
  %i.cmh = getelementptr inbounds i8, ptr %.0.i1937, i64 %i.cmg
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmh, i64 16
  %i.cmj = load i64, ptr %i.cmi, align 8, !tbaa !4999
  %.not.i1941 = icmp eq i64 %i.cmj, 0
  br i1 %.not.i1941, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cmk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1937, ptr noundef nonnull %i.ba, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 unwind label %bb.xm ; 0 uses

bb.xl:                                            ; preds = %bb.xj
  %i.cml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1937, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 unwind label %bb.xm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945: ; preds = %bb.xl, %bb.xk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.xm:                                            ; preds = %bb.xl, %bb.xk, %bb.xi, %bb.xh
  %i.cmm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xn:                                            ; preds = %bb.xf
  %i.cmn = sub nsw i32 %i.ckx, %i.clu             ; 2 uses
  %i.cmo = udiv i32 %i.cmn, 7
  %i.cmp = add nuw nsw i32 %i.cmo, 1
  %i.cmq = icmp ult i32 %i.cmn, 63
  br i1 %i.cmq, label %bb.xo, label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i8 48, ptr %i.az, align 1, !tbaa !27
  %i.cmr = load ptr, ptr %0, align 8, !tbaa !16
  %i.cms = getelementptr i8, ptr %i.cmr, i64 -24
  %i.cmt = load i64, ptr %i.cms, align 8
  %i.cmu = getelementptr inbounds i8, ptr %0, i64 %i.cmt
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cmu, i64 16
  %i.cmw = load i64, ptr %i.cmv, align 8, !tbaa !4999
  %.not.i1948 = icmp eq i64 %i.cmw, 0
  br i1 %.not.i1948, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cmx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952 unwind label %bb.xr ; 0 uses

bb.xq:                                            ; preds = %bb.xo
  %i.cmy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952 unwind label %bb.xr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952: ; preds = %bb.xq, %bb.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.xs

bb.xr:                                            ; preds = %bb.xq, %bb.xp, %bb.xs
  %i.cmz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1952, %bb.xn
  %i.cna = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cmp)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.xr ; 0 uses

bb.xt:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn) #27
  store i8 37, ptr %i.fn, align 1, !tbaa !27
  store i8 79, ptr %i.jj, align 1, !tbaa !27
  %i.cnb = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.cnb, ptr %i.jk, align 1, !tbaa !27
  %i.cnc = add nsw i32 %i.cjz, -1900
  store i32 %i.cnc, ptr %i.ij, align 4, !tbaa !5033
  %i.cnd = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.xu unwind label %.loopexit2925

end_hunk_24
begin_hunk_25_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %.not.i1969 = icmp eq ptr %i.cny, null
  %i.cnz = zext i1 %.not.i1969 to i8
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnw, i64 225 ; 2 uses
  %i.cob = load i8, ptr %i.coa, align 1, !tbaa !4984, !range !659, !noundef !660
  %i.coc = trunc nuw i8 %i.cob to i1
  br i1 %i.coc, label %._crit_edge.i1975, label %bb.xx

._crit_edge.i1975:                                ; preds = %bb.xw
  %.phi.trans.insert.i1976 = getelementptr inbounds nuw i8, ptr %i.cnw, i64 224
  %.pre.i1977 = load i8, ptr %.phi.trans.insert.i1976, align 8, !tbaa !4997
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981

bb.xx:                                            ; preds = %bb.xw
  %i.cod = getelementptr inbounds nuw i8, ptr %i.cnw, i64 240
  %i.coe = load ptr, ptr %i.cod, align 8, !tbaa !4990 ; 6 uses
  %.not.i.i.i1970 = icmp eq ptr %i.coe, null
  br i1 %.not.i.i.i1970, label %bb.xy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971

bb.xy:                                            ; preds = %bb.xx
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc1978 unwind label %.loopexit.split-lp2926

.noexc1978:                                       ; preds = %bb.xy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971: ; preds = %bb.xx
  %i.cof = getelementptr inbounds nuw i8, ptr %i.coe, i64 56
  %i.cog = load i8, ptr %i.cof, align 8, !tbaa !4991
  %.not.i1.i.i1972 = icmp eq i8 %i.cog, 0
  br i1 %.not.i1.i.i1972, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971
  %i.coh = getelementptr inbounds nuw i8, ptr %i.coe, i64 89
  %i.coi = load i8, ptr %i.coh, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973

bb.ya:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1971
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.coe)
          to label %.noexc1979 unwind label %.loopexit2925

.noexc1979:                                       ; preds = %bb.ya
  %i.coj = load ptr, ptr %i.coe, align 8, !tbaa !16
  %i.cok = getelementptr inbounds nuw i8, ptr %i.coj, i64 48
  %i.col = load ptr, ptr %i.cok, align 8
  %i.com = invoke noundef signext i8 %i.col(ptr noundef nonnull align 8 dereferenceable(570) %i.coe, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973 unwind label %.loopexit2925, !inline_history !5024

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973: ; preds = %.noexc1979, %bb.xz
  %.0.i.i.i1974 = phi i8 [ %i.coi, %bb.xz ], [ %i.com, %.noexc1979 ] ; 2 uses
  %i.con = getelementptr inbounds nuw i8, ptr %i.cnw, i64 224
  store i8 %.0.i.i.i1974, ptr %i.con, align 8, !tbaa !4997
  store i8 1, ptr %i.coa, align 1, !tbaa !4984
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973, %._crit_edge.i1975
  %i.coo = phi i8 [ %.pre.i1977, %._crit_edge.i1975 ], [ %.0.i.i.i1974, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1973 ]
  %i.cop = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.cny, i8 %i.cnz, ptr noundef nonnull align 8 dereferenceable(216) %i.cnw, i8 noundef signext %i.coo, ptr noundef nonnull %6, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.jl)
          to label %.thread2751 unwind label %.loopexit2925 ; 0 uses

.thread2751:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yb:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn) #27
  br label %_ZNSolsEj.exit2127

bb.yc:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i8 85, ptr %i.ay, align 1, !tbaa !27
  %i.coq = load ptr, ptr %0, align 8, !tbaa !16
  %i.cor = getelementptr i8, ptr %i.coq, i64 -24
  %i.cos = load i64, ptr %i.cor, align 8
  %i.cot = getelementptr inbounds i8, ptr %0, i64 %i.cos
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cot, i64 16
  %i.cov = load i64, ptr %i.cou, align 8, !tbaa !4999
  %.not.i1982 = icmp eq i64 %i.cov, 0
  br i1 %.not.i1982, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ay, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 unwind label %.loopexit ; 0 uses

bb.ye:                                            ; preds = %bb.yc
  %i.cox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 85)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986: ; preds = %bb.ye, %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yf:                                            ; preds = %bb.h
  br i1 %.not928, label %bb.zk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.coy = icmp eq i8 %.0783, 69
  br i1 %i.coy, label %bb.yh, label %bb.yq

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 37, ptr %i.ax, align 1, !tbaa !27
  %i.coz = load ptr, ptr %0, align 8, !tbaa !16
  %i.cpa = getelementptr i8, ptr %i.coz, i64 -24
  %i.cpb = load i64, ptr %i.cpa, align 8
  %i.cpc = getelementptr inbounds i8, ptr %0, i64 %i.cpb
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpc, i64 16
  %i.cpe = load i64, ptr %i.cpd, align 8, !tbaa !4999
  %.not.i1987 = icmp eq i64 %i.cpe, 0
  br i1 %.not.i1987, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.cpf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ax, i64 noundef 1)
          to label %bb.yk unwind label %.loopexit

bb.yj:                                            ; preds = %bb.yh
  %i.cpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.yk unwind label %.loopexit ; 0 uses

bb.yk:                                            ; preds = %bb.yi, %bb.yj
  %.0.i1988 = phi ptr [ %i.cpf, %bb.yi ], [ %0, %bb.yj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 69, ptr %i.aw, align 1, !tbaa !27
  %i.cph = load ptr, ptr %.0.i1988, align 8, !tbaa !16
  %i.cpi = getelementptr i8, ptr %i.cph, i64 -24
  %i.cpj = load i64, ptr %i.cpi, align 8
  %i.cpk = getelementptr inbounds i8, ptr %.0.i1988, i64 %i.cpj
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpk, i64 16
  %i.cpm = load i64, ptr %i.cpl, align 8, !tbaa !4999
  %.not.i1992 = icmp eq i64 %i.cpm, 0
  br i1 %.not.i1992, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cpn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1988, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %bb.yn unwind label %.loopexit

bb.ym:                                            ; preds = %bb.yk
  %i.cpo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1988, i8 noundef signext 69)
          to label %bb.yn unwind label %.loopexit ; 0 uses

bb.yn:                                            ; preds = %bb.yl, %bb.ym
  %.0.i1993 = phi ptr [ %i.cpn, %bb.yl ], [ %.0.i1988, %bb.ym ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cpp = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %i.cpp, ptr %i.av, align 1, !tbaa !27
  %i.cpq = load ptr, ptr %.0.i1993, align 8, !tbaa !16
  %i.cpr = getelementptr i8, ptr %i.cpq, i64 -24
  %i.cps = load i64, ptr %i.cpr, align 8
  %i.cpt = getelementptr inbounds i8, ptr %.0.i1993, i64 %i.cps
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 16
  %i.cpv = load i64, ptr %i.cpu, align 8, !tbaa !4999
  %.not.i1997 = icmp eq i64 %i.cpv, 0
  br i1 %.not.i1997, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cpw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1993, ptr noundef nonnull %i.av, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 unwind label %.loopexit ; 0 uses

bb.yp:                                            ; preds = %bb.yn
  %i.cpx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i1993, i8 noundef signext %i.cpp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.yq:                                            ; preds = %bb.yg
  %i.cpy = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i2002 = icmp eq i16 %i.cpy, -32768
  br i1 %.not.i2002, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.cpz = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.cqa = add i8 %i.cpz, -1
  %spec.select.i.i2003 = icmp ult i8 %i.cqa, 12
  br i1 %spec.select.i.i2003, label %bb.ys, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread

bb.ys:                                            ; preds = %bb.yr
  %i.cqb = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i2005 = icmp eq i8 %i.cqb, 0
  br i1 %.not8.i2005, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %.not.i.i2006 = icmp eq i8 %i.cpz, 2
  %i.cqc = and i16 %i.cpy, 3
  %i.cqd = icmp eq i16 %i.cqc, 0
  %or.cond.i2007 = and i1 %i.cqd, %.not.i.i2006
  br i1 %or.cond.i2007, label %bb.yu, label %.thread.i.i2008

bb.yu:                                            ; preds = %bb.yt
  %i.cqe = srem i16 %i.cpy, 100
  %.not.i.i.i2011 = icmp ne i16 %i.cqe, 0
  %i.cqf = srem i16 %i.cpy, 400
  %i.cqg = icmp eq i16 %i.cqf, 0
  %or.cond.i.i2012 = or i1 %.not.i.i.i2011, %i.cqg
  br i1 %or.cond.i.i2012, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013, label %.thread.i.i2008

.thread.i.i2008:                                  ; preds = %bb.yu, %bb.yt
  %i.cqh = zext nneg i8 %i.cpz to i64
  %27 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.cqh
  %i.cqi = getelementptr i8, ptr %27, i64 -1
  %i.cqj = load i8, ptr %i.cqi, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013: ; preds = %bb.yu, %.thread.i.i2008
  %.sroa.03.0.i.i2010 = phi i8 [ %i.cqj, %.thread.i.i2008 ], [ 29, %bb.yu ]
  %.not2795 = icmp ult i8 %.sroa.03.0.i.i2010, %i.cqb
  br i1 %.not2795, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread: ; preds = %bb.ys, %bb.yr, %bb.yq, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013
  %i.cqk = load ptr, ptr %0, align 8, !tbaa !16
  %i.cql = getelementptr i8, ptr %i.cqk, i64 -24
  %i.cqm = load i64, ptr %i.cql, align 8
  %i.cqn = getelementptr inbounds i8, ptr %0, i64 %i.cqm ; 2 uses
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqn, i64 32
  %i.cqp = load i32, ptr %i.cqo, align 8, !tbaa !4447
  %i.cqq = or i32 %i.cqp, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cqn, i32 noundef %i.cqq)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge unwind label %.loopexit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread
  %.pre3430 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3431 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3432 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013
  %i.cqr = phi i8 [ %.pre3432, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cqb, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ]
  %i.cqs = phi i8 [ %.pre3431, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cpz, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ] ; 3 uses
  %i.cqt = phi i16 [ %.pre3430, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015_crit_edge ], [ %i.cpy, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2013 ]
  %i.cqu = sext i16 %i.cqt to i32                 ; 2 uses
  %i.cqv = icmp ult i8 %i.cqs, 3
  %.neg.i.i2016 = sext i1 %i.cqv to i32
  %i.cqw = add nsw i32 %.neg.i.i2016, %i.cqu      ; 4 uses
  %i.cqx = zext i8 %i.cqs to i32
  %i.cqy = zext i8 %i.cqr to i32
  %i.cqz = add nsw i32 %i.cqw, -399
  %i.cra = icmp slt i32 %i.cqw, 0
  %i.crb = select i1 %i.cra, i32 %i.cqz, i32 %i.cqw
  %i.crc = sdiv i32 %i.crb, 400                   ; 2 uses
  %.neg15.i.i2017 = mul nsw i32 %i.crc, -400
  %i.crd = add nsw i32 %.neg15.i.i2017, %i.cqw    ; 3 uses
  %i.cre = icmp ugt i8 %i.cqs, 2
  %.v.i.i2018 = select i1 %i.cre, i32 -3, i32 9
  %i.crf = add nsw i32 %.v.i.i2018, %i.cqx
  %i.crg = mul nsw i32 %i.crf, 153
  %i.crh = add nsw i32 %i.crg, 2
  %i.cri = udiv i32 %i.crh, 5
  %i.crj = mul nsw i32 %i.crd, 365
  %i.crk = lshr i32 %i.crd, 2
  %i.crl = udiv i32 %i.crd, 100
  %i.crm = mul nsw i32 %i.crc, 146097
  %i.crn = add nuw nsw i32 %i.cqy, -719469
  %i.cro = add nsw i32 %i.crn, %i.cri
  %i.crp = add nsw i32 %i.cro, %i.crm
  %i.crq = add nsw i32 %i.crp, %i.crk
  %i.crr = add nsw i32 %i.crq, %i.crj
  %i.crs = sub nsw i32 %i.crr, %i.crl             ; 6 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %.thread.i.i.i.i2053
    i8 79, label %bb.zb
  ]

.thread.i.i.i.i2053:                              ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015
  %i.crt = add nsw i32 %i.crs, 719471             ; 2 uses
  %i.cru = icmp sgt i32 %i.crs, -719472
  %i.crv = add nsw i32 %i.crs, 573375
  %i.crw = select i1 %i.cru, i32 %i.crt, i32 %i.crv
  %i.crx = sdiv i32 %i.crw, 146097                ; 2 uses
  %.neg.i.i2020 = mul nsw i32 %i.crx, -146097
  %i.cry = add nsw i32 %.neg.i.i2020, %i.crt      ; 5 uses
  %i.crz = udiv i32 %i.cry, 1460
  %i.csa = udiv i32 %i.cry, 36524
  %i.csb = udiv i32 %i.cry, 146096
  %.neg2843 = add nsw i32 %i.csa, %i.cry
  %i.csc = add nuw nsw i32 %i.csb, %i.crz
  %i.csd = sub nsw i32 %.neg2843, %i.csc          ; 3 uses
  %i.cse = udiv i32 %i.csd, 365                   ; 2 uses
  %i.csf = mul nsw i32 %i.crx, 400
  %i.csg = add nsw i32 %i.cse, %i.csf
  %i.csh = udiv i32 %i.csd, 1460
  %i.csi = udiv i32 %i.csd, 36500
  %.neg36.i.i2022 = mul i32 %i.cse, -365
  %.neg37.i.i2023 = sub nsw i32 %i.cry, %i.csh
  %.neg25.i.i2024 = add nsw i32 %.neg37.i.i2023, %i.csi
  %i.csj = add i32 %.neg25.i.i2024, %.neg36.i.i2022
  %i.csk = mul i32 %i.csj, 5
  %i.csl = add i32 %i.csk, 2                      ; 2 uses
  %i.csm = udiv i32 %i.csl, 153
  %i.csn = icmp ult i32 %i.csl, 1530
  %.v.i.i2025 = select i1 %i.csn, i32 3, i32 -9
  %i.cso = add nsw i32 %.v.i.i2025, %i.csm
  %i.csp = icmp ult i32 %i.cso, 3
  %i.csq = zext i1 %i.csp to i32
  %i.csr = add nsw i32 %i.csg, %i.csq
  %.sroa.02585.0.extract.trunc = shl i32 %i.csr, 16 ; 2 uses
  %sext = add i32 %.sroa.02585.0.extract.trunc, -65536
  %i.css = ashr exact i32 %sext, 16               ; 4 uses
  %i.cst = add nsw i32 %i.css, -399
  %i.csu = icmp slt i32 %i.css, 0
  %i.csv = select i1 %i.csu, i32 %i.cst, i32 %i.css
  %i.csw = sdiv i32 %i.csv, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2048 = mul nsw i32 %i.csw, -400
  %i.csx = add nsw i32 %.neg15.i.i.i.i.i2048, %i.css ; 3 uses
  %i.csy = mul nsw i32 %i.csx, 365
  %i.csz = lshr i32 %i.csx, 2
  %i.cta = udiv i32 %i.csx, 100
  %i.ctb = mul nsw i32 %i.csw, 146097
  %i.ctc = add nsw i32 %i.ctb, 275
  %i.ctd = add nsw i32 %i.ctc, %i.csz
  %i.cte = add nsw i32 %i.ctd, %i.csy
  %i.ctf = sub nsw i32 %i.cte, %i.cta             ; 3 uses
  %i.ctg = icmp sgt i32 %i.ctf, 719433
  %.in.i.i.i.i2050.v = select i1 %i.ctg, i32 -719434, i32 -719438
  %.in.i.i.i.i2050 = add nsw i32 %i.ctf, %.in.i.i.i.i2050.v
  %i.cth = urem i32 %.in.i.i.i.i2050, 7           ; 3 uses
  %i.cti = icmp samesign ult i32 %i.cth, 4
  %.v = select i1 %i.cti, i32 -10, i32 -4
  %i.ctj = add nsw i32 %i.cth, %.v
  %.fr.i.i.i2052 = freeze i32 %i.ctj              ; 2 uses
  %i.ctk = srem i32 %.fr.i.i.i2052, 7
  %i.ctl = sub nsw i32 %i.ctf, %i.cth
  %i.ctm = add nsw i32 %i.ctl, -719430
  %i.ctn = add i32 %i.ctm, %.fr.i.i.i2052
  %i.cto = sub i32 %i.ctn, %i.ctk                 ; 2 uses
  %i.ctp = icmp slt i32 %i.crs, %i.cto
  br i1 %i.ctp, label %.thread.i.i.i.i2080, label %bb.yv

.thread.i.i.i.i2080:                              ; preds = %.thread.i.i.i.i2053
  %sext2800 = add i32 %.sroa.02585.0.extract.trunc, -131072
  %i.ctq = ashr exact i32 %sext2800, 16           ; 4 uses
  %i.ctr = add nsw i32 %i.ctq, -399
  %i.cts = icmp slt i32 %i.ctq, 0
  %i.ctt = select i1 %i.cts, i32 %i.ctr, i32 %i.ctq
  %i.ctu = sdiv i32 %i.ctt, 400                   ; 2 uses
  %.neg15.i.i.i.i.i2075 = mul nsw i32 %i.ctu, -400
  %i.ctv = add nsw i32 %.neg15.i.i.i.i.i2075, %i.ctq ; 3 uses
  %i.ctw = mul nsw i32 %i.ctv, 365
  %i.ctx = lshr i32 %i.ctv, 2
  %i.cty = udiv i32 %i.ctv, 100
  %i.ctz = mul nsw i32 %i.ctu, 146097
  %i.cua = add nsw i32 %i.ctz, 275
  %i.cub = add nsw i32 %i.cua, %i.ctx
  %i.cuc = add nsw i32 %i.cub, %i.ctw
  %i.cud = sub nsw i32 %i.cuc, %i.cty             ; 3 uses
  %i.cue = icmp sgt i32 %i.cud, 719433
  %.in.i.i.i.i2077.v = select i1 %i.cue, i32 -719434, i32 -719438
  %.in.i.i.i.i2077 = add nsw i32 %i.cud, %.in.i.i.i.i2077.v
  %i.cuf = urem i32 %.in.i.i.i.i2077, 7           ; 3 uses
  %i.cug = icmp samesign ult i32 %i.cuf, 4
  %.v3222 = select i1 %i.cug, i32 -10, i32 -4
  %i.cuh = add nsw i32 %i.cuf, %.v3222
  %.fr.i.i.i2079 = freeze i32 %i.cuh              ; 2 uses
  %i.cui = srem i32 %.fr.i.i.i2079, 7
  %i.cuj = sub nsw i32 %i.cud, %i.cuf
  %i.cuk = add nsw i32 %i.cuj, -719430
  %i.cul = add i32 %i.cuk, %.fr.i.i.i2079
  %i.cum = sub i32 %i.cul, %i.cui
  br label %bb.yv

bb.yv:                                            ; preds = %.thread.i.i.i.i2080, %.thread.i.i.i.i2053
  %.sroa.02589.0 = phi i32 [ %i.cum, %.thread.i.i.i.i2080 ], [ %i.cto, %.thread.i.i.i.i2053 ]
  %i.cun = sub nsw i32 %i.crs, %.sroa.02589.0     ; 2 uses
  %i.cuo = sdiv i32 %i.cun, 7
  %i.cup = add nsw i32 %i.cuo, 1
  %i.cuq = icmp slt i32 %i.cun, 63
  br i1 %i.cuq, label %bb.yw, label %bb.za

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i8 48, ptr %i.au, align 1, !tbaa !27
  %i.cur = load ptr, ptr %0, align 8, !tbaa !16
  %i.cus = getelementptr i8, ptr %i.cur, i64 -24
  %i.cut = load i64, ptr %i.cus, align 8
  %i.cuu = getelementptr inbounds i8, ptr %0, i64 %i.cut
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cuu, i64 16
  %i.cuw = load i64, ptr %i.cuv, align 8, !tbaa !4999
  %.not.i2087 = icmp eq i64 %i.cuw, 0
  br i1 %.not.i2087, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.cux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091 unwind label %bb.yz ; 0 uses

bb.yy:                                            ; preds = %bb.yw
  %i.cuy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091 unwind label %bb.yz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091: ; preds = %bb.yy, %bb.yx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.za

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.za
  %i.cuz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.za:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2091, %bb.yv
  %i.cva = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cup)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.yz ; 0 uses

end_hunk_25
begin_hunk_26_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  br label %bb.aix

bb.aaa:                                           ; preds = %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i8 37, ptr %i.as, align 1, !tbaa !27
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cxc, i64 16
  %i.cyg = load i64, ptr %i.cyf, align 8, !tbaa !4999
  %.not.i2141 = icmp eq i64 %i.cyg, 0
  br i1 %.not.i2141, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cyh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.as, i64 noundef 1)
          to label %bb.aad unwind label %bb.zq

bb.aac:                                           ; preds = %bb.aaa
  %i.cyi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aad unwind label %bb.zq    ; 0 uses

bb.aad:                                           ; preds = %bb.aab, %bb.aac
  %.0.i2142 = phi ptr [ %i.cyh, %bb.aab ], [ %0, %bb.aac ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %.0783, ptr %i.ar, align 1, !tbaa !27
  %i.cyj = load ptr, ptr %.0.i2142, align 8, !tbaa !16
  %i.cyk = getelementptr i8, ptr %i.cyj, i64 -24
  %i.cyl = load i64, ptr %i.cyk, align 8
  %i.cym = getelementptr inbounds i8, ptr %.0.i2142, i64 %i.cyl
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 16
  %i.cyo = load i64, ptr %i.cyn, align 8, !tbaa !4999
  %.not.i2146 = icmp eq i64 %i.cyo, 0
  br i1 %.not.i2146, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cyp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2142, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %bb.aag unwind label %bb.zq

bb.aaf:                                           ; preds = %bb.aad
  %i.cyq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2142, i8 noundef signext %.0783)
          to label %bb.aag unwind label %bb.zq    ; 0 uses

bb.aag:                                           ; preds = %bb.aae, %bb.aaf
  %.0.i2147 = phi ptr [ %i.cyp, %bb.aae ], [ %.0.i2142, %bb.aaf ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cyr = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i8 %i.cyr, ptr %i.aq, align 1, !tbaa !27
  %i.cys = load ptr, ptr %.0.i2147, align 8, !tbaa !16
  %i.cyt = getelementptr i8, ptr %i.cys, i64 -24
  %i.cyu = load i64, ptr %i.cyt, align 8
  %i.cyv = getelementptr inbounds i8, ptr %.0.i2147, i64 %i.cyu
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyv, i64 16
  %i.cyx = load i64, ptr %i.cyw, align 8, !tbaa !4999
  %.not.i2151 = icmp eq i64 %i.cyx, 0
  br i1 %.not.i2151, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cyy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2147, ptr noundef nonnull %i.aq, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 unwind label %bb.zq ; 0 uses

bb.aai:                                           ; preds = %bb.aag
  %i.cyz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2147, i8 noundef signext %i.cyr)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 unwind label %bb.zq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155: ; preds = %bb.aai, %bb.aah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aaj:                                           ; preds = %bb.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 119, ptr %i.ap, align 1, !tbaa !27
  %i.cza = load ptr, ptr %0, align 8, !tbaa !16
  %i.czb = getelementptr i8, ptr %i.cza, i64 -24
  %i.czc = load i64, ptr %i.czb, align 8
  %i.czd = getelementptr inbounds i8, ptr %0, i64 %i.czc
  %i.cze = getelementptr inbounds nuw i8, ptr %i.czd, i64 16
  %i.czf = load i64, ptr %i.cze, align 8, !tbaa !4999
  %.not.i2156 = icmp eq i64 %i.czf, 0
  br i1 %.not.i2156, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.czg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 unwind label %.loopexit ; 0 uses

bb.aal:                                           ; preds = %bb.aaj
  %i.czh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 119)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160: ; preds = %bb.aal, %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aam:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.aca, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.czi = icmp eq i8 %.0783, 69
  br i1 %i.czi, label %bb.aao, label %bb.aax

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 37, ptr %i.ao, align 1, !tbaa !27
  %i.czj = load ptr, ptr %0, align 8, !tbaa !16
  %i.czk = getelementptr i8, ptr %i.czj, i64 -24
  %i.czl = load i64, ptr %i.czk, align 8
  %i.czm = getelementptr inbounds i8, ptr %0, i64 %i.czl
  %i.czn = getelementptr inbounds nuw i8, ptr %i.czm, i64 16
  %i.czo = load i64, ptr %i.czn, align 8, !tbaa !4999
  %.not.i2161 = icmp eq i64 %i.czo, 0
  br i1 %.not.i2161, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.czp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ao, i64 noundef 1)
          to label %bb.aar unwind label %.loopexit

bb.aaq:                                           ; preds = %bb.aao
  %i.czq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.aar unwind label %.loopexit ; 0 uses

bb.aar:                                           ; preds = %bb.aap, %bb.aaq
  %.0.i2162 = phi ptr [ %i.czp, %bb.aap ], [ %0, %bb.aaq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 69, ptr %i.an, align 1, !tbaa !27
  %i.czr = load ptr, ptr %.0.i2162, align 8, !tbaa !16
  %i.czs = getelementptr i8, ptr %i.czr, i64 -24
  %i.czt = load i64, ptr %i.czs, align 8
  %i.czu = getelementptr inbounds i8, ptr %.0.i2162, i64 %i.czt
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 16
  %i.czw = load i64, ptr %i.czv, align 8, !tbaa !4999
  %.not.i2166 = icmp eq i64 %i.czw, 0
  br i1 %.not.i2166, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.czx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2162, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %bb.aau unwind label %.loopexit

bb.aat:                                           ; preds = %bb.aar
  %i.czy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2162, i8 noundef signext 69)
          to label %bb.aau unwind label %.loopexit ; 0 uses

bb.aau:                                           ; preds = %bb.aas, %bb.aat
  %.0.i2167 = phi ptr [ %i.czx, %bb.aas ], [ %.0.i2162, %bb.aat ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.czz = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %i.czz, ptr %i.am, align 1, !tbaa !27
  %i.daa = load ptr, ptr %.0.i2167, align 8, !tbaa !16
  %i.dab = getelementptr i8, ptr %i.daa, i64 -24
  %i.dac = load i64, ptr %i.dab, align 8
  %i.dad = getelementptr inbounds i8, ptr %.0.i2167, i64 %i.dac
  %i.dae = getelementptr inbounds nuw i8, ptr %i.dad, i64 16
  %i.daf = load i64, ptr %i.dae, align 8, !tbaa !4999
  %.not.i2171 = icmp eq i64 %i.daf, 0
  br i1 %.not.i2171, label %bb.aaw, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.dag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2167, ptr noundef nonnull %i.am, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 unwind label %.loopexit ; 0 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.dah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2167, i8 noundef signext %i.czz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175: ; preds = %bb.aaw, %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.aax:                                           ; preds = %bb.aan
  %i.dai = load i16, ptr %2, align 8, !tbaa !5026 ; 5 uses
  %.not.i2176 = icmp eq i16 %i.dai, -32768
  br i1 %.not.i2176, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  %i.daj = load i8, ptr %i.iw, align 2, !tbaa !5027 ; 4 uses
  %i.dak = add i8 %i.daj, -1
  %spec.select.i.i2177 = icmp ult i8 %i.dak, 12
  br i1 %spec.select.i.i2177, label %bb.aaz, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread

bb.aaz:                                           ; preds = %bb.aay
  %i.dal = load i8, ptr %i.ix, align 1, !tbaa !5028 ; 3 uses
  %.not8.i2179 = icmp eq i8 %i.dal, 0
  br i1 %.not8.i2179, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %.not.i.i2180 = icmp eq i8 %i.daj, 2
  %i.dam = and i16 %i.dai, 3
  %i.dan = icmp eq i16 %i.dam, 0
  %or.cond.i2181 = and i1 %i.dan, %.not.i.i2180
  br i1 %or.cond.i2181, label %bb.abb, label %.thread.i.i2182

bb.abb:                                           ; preds = %bb.aba
  %i.dao = srem i16 %i.dai, 100
  %.not.i.i.i2185 = icmp ne i16 %i.dao, 0
  %i.dap = srem i16 %i.dai, 400
  %i.daq = icmp eq i16 %i.dap, 0
  %or.cond.i.i2186 = or i1 %.not.i.i.i2185, %i.daq
  br i1 %or.cond.i.i2186, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187, label %.thread.i.i2182

.thread.i.i2182:                                  ; preds = %bb.abb, %bb.aba
  %i.dar = zext nneg i8 %i.daj to i64
  %28 = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.dar
  %i.das = getelementptr i8, ptr %28, i64 -1
  %i.dat = load i8, ptr %i.das, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187: ; preds = %bb.abb, %.thread.i.i2182
  %.sroa.03.0.i.i2184 = phi i8 [ %i.dat, %.thread.i.i2182 ], [ 29, %bb.abb ]
  %.not2789 = icmp ult i8 %.sroa.03.0.i.i2184, %i.dal
  br i1 %.not2789, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread: ; preds = %bb.aaz, %bb.aay, %bb.aax, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187
  %i.dau = load ptr, ptr %0, align 8, !tbaa !16
  %i.dav = getelementptr i8, ptr %i.dau, i64 -24
  %i.daw = load i64, ptr %i.dav, align 8
  %i.dax = getelementptr inbounds i8, ptr %0, i64 %i.daw ; 2 uses
  %i.day = getelementptr inbounds nuw i8, ptr %i.dax, i64 32
  %i.daz = load i32, ptr %i.day, align 8, !tbaa !4447
  %i.dba = or i32 %i.daz, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dax, i32 noundef %i.dba)
          to label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge unwind label %bb.abc

_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread
  %.pre3427 = load i16, ptr %2, align 8, !tbaa !5026
  %.pre3428 = load i8, ptr %i.iw, align 2, !tbaa !5027
  %.pre3429 = load i8, ptr %i.ix, align 1, !tbaa !5028
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189

bb.abc:                                           ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread
  %i.dbb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187
  %i.dbc = phi i8 [ %.pre3429, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.dal, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ]
  %i.dbd = phi i8 [ %.pre3428, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.daj, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ] ; 3 uses
  %i.dbe = phi i16 [ %.pre3427, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187.thread._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189_crit_edge ], [ %i.dai, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit2187 ] ; 2 uses
  %i.dbf = sext i16 %i.dbe to i32                 ; 4 uses
  %i.dbg = icmp ult i8 %i.dbd, 3
  %.neg.i.i2190 = sext i1 %i.dbg to i32
  %i.dbh = add nsw i32 %.neg.i.i2190, %i.dbf      ; 4 uses
  %i.dbi = zext i8 %i.dbd to i32
  %i.dbj = zext i8 %i.dbc to i32
  %i.dbk = add nsw i32 %i.dbh, -399
  %i.dbl = icmp slt i32 %i.dbh, 0
  %i.dbm = select i1 %i.dbl, i32 %i.dbk, i32 %i.dbh
  %i.dbn = sdiv i32 %i.dbm, 400                   ; 2 uses
  %.neg15.i.i2191 = mul nsw i32 %i.dbn, -400
  %i.dbo = add nsw i32 %.neg15.i.i2191, %i.dbh    ; 3 uses
  %i.dbp = icmp ugt i8 %i.dbd, 2
  %.v.i.i2192 = select i1 %i.dbp, i32 -3, i32 9
  %i.dbq = add nsw i32 %.v.i.i2192, %i.dbi
  %i.dbr = mul nsw i32 %i.dbq, 153
  %i.dbs = add nsw i32 %i.dbr, 2
  %i.dbt = udiv i32 %i.dbs, 5
  %i.dbu = mul nsw i32 %i.dbo, 365
  %i.dbv = lshr i32 %i.dbo, 2
  %i.dbw = udiv i32 %i.dbo, 100
  %i.dbx = mul nsw i32 %i.dbn, 146097
  %i.dby = add nuw nsw i32 %i.dbj, -719469
  %i.dbz = add nsw i32 %i.dby, %i.dbt
  %i.dca = add nsw i32 %i.dbz, %i.dbx
  %i.dcb = add nsw i32 %i.dca, %i.dbv
  %i.dcc = add nsw i32 %i.dcb, %i.dbu
  %i.dcd = sub nsw i32 %i.dcc, %i.dbw             ; 3 uses
  switch i8 %.0783, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 [
    i8 0, label %bb.abd
    i8 79, label %bb.abr
  ]

bb.abd:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189
  %i.dce = add nsw i32 %i.dbf, -1                 ; 2 uses
  %i.dcf = add nsw i32 %i.dbf, -400
  %i.dcg = icmp slt i16 %i.dbe, 1
  %i.dch = select i1 %i.dcg, i32 %i.dcf, i32 %i.dce
  %i.dci = sdiv i32 %i.dch, 400                   ; 2 uses
  %.neg15.i.i.i.i2201 = mul nsw i32 %i.dci, -400
  %i.dcj = add nsw i32 %.neg15.i.i.i.i2201, %i.dce ; 3 uses
  %i.dck = mul nsw i32 %i.dcj, 365
  %i.dcl = lshr i32 %i.dcj, 2
  %i.dcm = udiv i32 %i.dcj, 100
  %i.dcn = mul nsw i32 %i.dci, 146097
  %i.dco = add nsw i32 %i.dcn, -719162
  %i.dcp = add nsw i32 %i.dco, %i.dcl
  %i.dcq = add nsw i32 %i.dcp, %i.dck
  %i.dcr = sub nsw i32 %i.dcq, %i.dcm             ; 4 uses
  %i.dcs = icmp sgt i32 %i.dcr, -5
  %i.dct = add nsw i32 %i.dcr, 4
  %.in.i.i.i.i2204 = select i1 %i.dcs, i32 %i.dct, i32 %i.dcr
  %i.dcu = urem i32 %.in.i.i.i.i2204, 7           ; 3 uses
  %i.dcv = sub nsw i32 1, %i.dcu                  ; 2 uses
  %i.dcw = sub nuw nsw i32 -5, %i.dcu
  %i.dcx = icmp samesign ugt i32 %i.dcu, 1
  %i.dcy = select i1 %i.dcx, i32 %i.dcw, i32 %i.dcv
  %.fr.i.i.i2205 = freeze i32 %i.dcy              ; 2 uses
  %i.dcz = srem i32 %.fr.i.i.i2205, 7
  %i.dda = add nsw i32 %i.dcv, %i.dcr
  %i.ddb = sub i32 %i.dda, %.fr.i.i.i2205
  %i.ddc = add i32 %i.ddb, %i.dcz                 ; 2 uses
  %i.ddd = icmp slt i32 %i.dcd, %i.ddc
  br i1 %i.ddd, label %bb.abe, label %bb.abl

bb.abe:                                           ; preds = %bb.abd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i8 48, ptr %i.al, align 1, !tbaa !27
  %i.dde = load ptr, ptr %0, align 8, !tbaa !16
  %i.ddf = getelementptr i8, ptr %i.dde, i64 -24
  %i.ddg = load i64, ptr %i.ddf, align 8
  %i.ddh = getelementptr inbounds i8, ptr %0, i64 %i.ddg
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.ddh, i64 16
  %i.ddj = load i64, ptr %i.ddi, align 8, !tbaa !4999
  %.not.i2210 = icmp eq i64 %i.ddj, 0
  br i1 %.not.i2210, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.ddk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %bb.abh unwind label %bb.abk

bb.abg:                                           ; preds = %bb.abe
  %i.ddl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %bb.abh unwind label %bb.abk   ; 0 uses

bb.abh:                                           ; preds = %bb.abf, %bb.abg
  %.0.i2211 = phi ptr [ %i.ddk, %bb.abf ], [ %0, %bb.abg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i8 48, ptr %i.ak, align 1, !tbaa !27
  %i.ddm = load ptr, ptr %.0.i2211, align 8, !tbaa !16
  %i.ddn = getelementptr i8, ptr %i.ddm, i64 -24
  %i.ddo = load i64, ptr %i.ddn, align 8
  %i.ddp = getelementptr inbounds i8, ptr %.0.i2211, i64 %i.ddo
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.ddp, i64 16
  %i.ddr = load i64, ptr %i.ddq, align 8, !tbaa !4999
  %.not.i2215 = icmp eq i64 %i.ddr, 0
  br i1 %.not.i2215, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.dds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2211, ptr noundef nonnull %i.ak, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 unwind label %bb.abk ; 0 uses

bb.abj:                                           ; preds = %bb.abh
  %i.ddt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2211, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 unwind label %bb.abk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219: ; preds = %bb.abj, %bb.abi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

bb.abk:                                           ; preds = %bb.abj, %bb.abi, %bb.abg, %bb.abf
  %i.ddu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abl:                                           ; preds = %bb.abd
  %i.ddv = sub nsw i32 %i.dcd, %i.ddc             ; 2 uses
  %i.ddw = udiv i32 %i.ddv, 7
  %i.ddx = add nuw nsw i32 %i.ddw, 1
  %i.ddy = icmp ult i32 %i.ddv, 63
  br i1 %i.ddy, label %bb.abm, label %bb.abq

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 48, ptr %i.aj, align 1, !tbaa !27
  %i.ddz = load ptr, ptr %0, align 8, !tbaa !16
  %i.dea = getelementptr i8, ptr %i.ddz, i64 -24
  %i.deb = load i64, ptr %i.dea, align 8
  %i.dec = getelementptr inbounds i8, ptr %0, i64 %i.deb
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dec, i64 16
  %i.dee = load i64, ptr %i.ded, align 8, !tbaa !4999
  %.not.i2222 = icmp eq i64 %i.dee, 0
  br i1 %.not.i2222, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.def = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226 unwind label %bb.abp ; 0 uses

bb.abo:                                           ; preds = %bb.abm
  %i.deg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226 unwind label %bb.abp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226: ; preds = %bb.abo, %bb.abn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn, %bb.abq
  %i.deh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.abq:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2226, %bb.abl
  %i.dei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ddx)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483 unwind label %bb.abp ; 0 uses

bb.abr:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq) #27
  store i8 37, ptr %i.fq, align 1, !tbaa !27
  store i8 79, ptr %i.iy, align 1, !tbaa !27
  %i.dej = load i8, ptr %.0707, align 1, !tbaa !27
  store i8 %i.dej, ptr %i.iz, align 1, !tbaa !27
  %i.dek = add nsw i32 %i.dbf, -1900
  store i32 %i.dek, ptr %i.ij, align 4, !tbaa !5033
  %i.del = invoke noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.abs unwind label %.loopexit2910
end_hunk_26
begin_hunk_27_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.0783, ptr %i.d, align 1, !tbaa !27
  %i.dwb = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwc = getelementptr i8, ptr %i.dwb, i64 -24
  %i.dwd = load i64, ptr %i.dwc, align 8
  %i.dwe = getelementptr inbounds i8, ptr %0, i64 %i.dwd
  %i.dwf = getelementptr inbounds nuw i8, ptr %i.dwe, i64 16
  %i.dwg = load i64, ptr %i.dwf, align 8, !tbaa !4999
  %.not.i2480 = icmp eq i64 %i.dwg, 0
  br i1 %.not.i2480, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dwh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484 unwind label %.loopexit ; 0 uses

bb.aih:                                           ; preds = %bb.aif
  %i.dwi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0783)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484: ; preds = %bb.aih, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aii

bb.aii:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2484, %bb.aie
  %i.dwj = load i8, ptr %.0707, align 1, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dwj, ptr %i.c, align 1, !tbaa !27
  %i.dwk = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwl = getelementptr i8, ptr %i.dwk, i64 -24
  %i.dwm = load i64, ptr %i.dwl, align 8
  %i.dwn = getelementptr inbounds i8, ptr %0, i64 %i.dwm
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwn, i64 16
  %i.dwp = load i64, ptr %i.dwo, align 8, !tbaa !4999
  %.not.i2485 = icmp eq i64 %i.dwp, 0
  br i1 %.not.i2485, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.dwq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 unwind label %.loopexit ; 0 uses

bb.aik:                                           ; preds = %bb.aii
  %i.dwr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.dwj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489: ; preds = %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1483: ; preds = %bb.agk, %bb.agh, %bb.lc, %bb.ko, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread, %bb.abq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189, %bb.zy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155, %bb.zs, %bb.za, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920, %bb.agz, %bb.aga, %.thread2770, %.thread2759, %.thread2751, %bb.wc, %bb.tx, %bb.ss, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit, %bb.qt, %bb.oo, %bb.ni, %bb.md, %bb.ci, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955, %bb.ahm, %bb.aez, %bb.adp, %bb.adj, %bb.acw, %bb.wb, %bb.wj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836, %bb.ud, %bb.tw, %bb.rp, %bb.pz, %bb.ov, %bb.oj, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522, %bb.no, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123, %bb.fi, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067, %bb.dw, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, %bb.aq, %bb.t
  %.14797 = phi i8 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ 0, %bb.abq ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ 0, %bb.pz ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ 0, %bb.oo ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ 0, %bb.rp ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ 0, %bb.za ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ 0, %bb.acw ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ 0, %bb.adp ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ 0, %bb.zy ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ 0, %bb.aez ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ 0, %bb.lc ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ %.0783, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ 0, %bb.t ], [ 0, %bb.aq ], [ 0, %bb.ci ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ 0, %bb.dw ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ 0, %bb.fi ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ 0, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ 0, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0783, %bb.ahm ], [ 0, %bb.md ], [ 0, %bb.no ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ 0, %bb.oj ], [ 0, %bb.ni ], [ 0, %bb.ov ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ 0, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ 0, %bb.tw ], [ 0, %bb.ss ], [ 0, %bb.ud ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ 0, %bb.tx ], [ 0, %bb.wj ], [ 0, %bb.wb ], [ 0, %.thread2751 ], [ 0, %.thread2759 ], [ 0, %.thread2770 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ 0, %bb.adj ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ 0, %bb.aga ], [ 0, %bb.qt ], [ 0, %bb.wc ], [ %i.la, %bb.agz ], [ 0, %bb.xs ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ 0, %bb.zs ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ 0, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ 0, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ 0, %bb.ko ], [ 0, %bb.agh ], [ 0, %bb.agk ]
  %.3782 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ null, %bb.abq ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ null, %bb.pz ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ null, %bb.oo ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ null, %bb.rp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ null, %bb.za ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ null, %bb.acw ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ null, %bb.adp ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ null, %bb.zy ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ null, %bb.aez ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ null, %bb.lc ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ null, %bb.t ], [ null, %bb.aq ], [ null, %bb.ci ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ null, %bb.dw ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ null, %bb.fi ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ null, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ null, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0707, %bb.ahm ], [ null, %bb.md ], [ null, %bb.no ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ null, %bb.oj ], [ null, %bb.ni ], [ null, %bb.ov ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ null, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ null, %bb.tw ], [ null, %bb.ss ], [ null, %bb.ud ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ null, %bb.tx ], [ null, %bb.wj ], [ null, %bb.wb ], [ null, %.thread2751 ], [ null, %.thread2759 ], [ null, %.thread2770 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ null, %bb.adj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ null, %bb.aga ], [ null, %bb.qt ], [ null, %bb.wc ], [ %.0779, %bb.agz ], [ null, %bb.xs ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ null, %bb.zs ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ null, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ null, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ null, %bb.ko ], [ null, %bb.agh ], [ null, %bb.agk ]
  %.7778 = phi i8 [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2489 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2474 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit960 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit955 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit995 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit990 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1049 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1010 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1105 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1064 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1170 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1120 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1236 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1231 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1303 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1298 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1372 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1367 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1423 ], [ %.0771, %bb.abq ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1503 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1498 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1548 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1518 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1598 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1563 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1623 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1618 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1659 ], [ %.0771, %bb.pz ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1684 ], [ %.3774, %bb.oo ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1722 ], [ %.0771, %bb.rp ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1767 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1762 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1809 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1782 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1834 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1829 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1856 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1851 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1891 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1871 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1986 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1906 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2125 ], [ %.0771, %bb.za ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2160 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2001 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2260 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2175 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2298 ], [ %.0771, %bb.acw ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2325 ], [ %.0771, %bb.adp ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2370 ], [ %.0771, %bb.zy ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2407 ], [ %.0771, %bb.aez ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2434 ], [ %.1772, %bb.lc ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2429 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2454 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2449 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2459 ], [ %.0771, %bb.t ], [ %.0771, %bb.aq ], [ %.0771, %bb.ci ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit ], [ %.0771, %bb.dw ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1067 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1152 ], [ %.0771, %bb.fi ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1123 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1216 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1283 ], [ %.0771, %_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4yearE.exit ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1387 ], [ %.0771, %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit1481 ], [ %.0771, %bb.ahm ], [ %.0771, %bb.md ], [ %.0771, %bb.no ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1522 ], [ %.3774, %bb.oj ], [ %.0771, %bb.ni ], [ %.3774, %bb.ov ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1603 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1654 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1679 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1717 ], [ %.0771, %_ZN14arrow_vendored4date6detaillsISt11char_traitsIcEEERSt13basic_ostreamIcT_ES8_RKNS1_14string_literalIcLm3EEE.exit ], [ %.5776, %bb.tw ], [ %.0771, %bb.ss ], [ %.5776, %bb.ud ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1814 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1836 ], [ %.5776, %bb.tx ], [ %.0771, %bb.wj ], [ %.0771, %bb.wb ], [ %.0771, %.thread2751 ], [ %.0771, %.thread2759 ], [ %.0771, %.thread2770 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2275 ], [ %.0771, %bb.adj ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2340 ], [ %.0771, %bb.aga ], [ %.0771, %bb.qt ], [ %.0771, %bb.wc ], [ %.0771, %bb.agz ], [ %.0771, %bb.xs ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1920 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit1945 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2015 ], [ %.0771, %bb.zs ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2155 ], [ %.0771, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2189 ], [ %.0771, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2219 ], [ %.1772, %_ZN14arrow_vendored4date6make12ENSt6chrono8durationIlSt5ratioILl3600ELl1EEEE.exit.thread ], [ %.1772, %bb.ko ], [ %.0771, %bb.agh ], [ %.0771, %bb.agk ]
  %i.dws = getelementptr inbounds nuw i8, ptr %.0707, i64 1
  br label %bb.h, !llvm.loop !5101

bb.ail:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.aip, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !tbaa !27
  %i.dwt = load ptr, ptr %0, align 8, !tbaa !16
  %i.dwu = getelementptr i8, ptr %i.dwt, i64 -24
  %i.dwv = load i64, ptr %i.dwu, align 8
  %i.dww = getelementptr inbounds i8, ptr %0, i64 %i.dwv
  %i.dwx = getelementptr inbounds nuw i8, ptr %i.dww, i64 16
  %i.dwy = load i64, ptr %i.dwx, align 8, !tbaa !4999
  %.not.i2490 = icmp eq i64 %i.dwy, 0
  br i1 %.not.i2490, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dwz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494 unwind label %.loopexit.split-lp ; 0 uses

bb.aio:                                           ; preds = %bb.aim
  %i.dxa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494: ; preds = %bb.aio, %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aip

bb.aip:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2494, %bb.ail
  %.not828 = icmp eq i8 %.0783, 0
  br i1 %.not828, label %_ZNSolsEj.exit2127, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.0783, ptr %i.a, align 1, !tbaa !27
  %i.dxb = load ptr, ptr %0, align 8, !tbaa !16
  %i.dxc = getelementptr i8, ptr %i.dxb, i64 -24
  %i.dxd = load i64, ptr %i.dxc, align 8
  %i.dxe = getelementptr inbounds i8, ptr %0, i64 %i.dxd
  %i.dxf = getelementptr inbounds nuw i8, ptr %i.dxe, i64 16
  %i.dxg = load i64, ptr %i.dxf, align 8, !tbaa !4999
  %.not.i2495 = icmp eq i64 %i.dxg, 0
  br i1 %.not.i2495, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.dxh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499 unwind label %.loopexit.split-lp ; 0 uses

bb.ais:                                           ; preds = %bb.aiq
  %i.dxi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0783)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit2127

_ZNSolsEj.exit2127:                               ; preds = %bb.bz, %bb.zp, %bb.n, %.invoke, %bb.abz, %bb.zj, %bb.yb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2499, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.dxj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dxk = load i32, ptr %i.dxj, align 4, !tbaa !5035
  %i.dxl = and i32 %i.dxk, 8192
  %.not.i2500 = icmp eq i32 %i.dxl, 0
  br i1 %.not.i2500, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2127
  %i.dxm = call noundef i32 @_ZSt19uncaught_exceptionsv() #32
  %i.dxn = icmp eq i32 %i.dxm, 0
  br i1 %i.dxn, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501

bb.aiu:                                           ; preds = %bb.ait
  %i.dxo = load ptr, ptr %5, align 8, !tbaa !5038, !nonnull !660, !align !668 ; 2 uses
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dxo, i64 32
  %i.dxq = load i32, ptr %i.dxp, align 8, !tbaa !4447
  %i.dxr = icmp eq i32 %i.dxq, 0
  br i1 %i.dxr, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501

bb.aiv:                                           ; preds = %bb.aiu
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxo, i64 232
  %i.dxt = load ptr, ptr %i.dxs, align 8, !tbaa !5023 ; 2 uses
  %i.dxu = load ptr, ptr %i.dxt, align 8, !tbaa !16
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxu, i64 48
  %i.dxw = load ptr, ptr %i.dxv, align 8
  %i.dxx = invoke noundef i32 %i.dxw(ptr noundef nonnull align 8 dereferenceable(64) %i.dxt)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501 unwind label %bb.aiw, !inline_history !5039 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dxy = landingpad { ptr, i32 }
          catch ptr null
  %i.dxz = extractvalue { ptr, i32 } %i.dxy, 0
  call void @__clang_call_terminate(ptr %i.dxz) #30
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2501: ; preds = %_ZNSolsEj.exit2127, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.j, %bb.adi, %bb.adq, %bb.abc, %bb.zq, %bb.zz, %bb.xe, %bb.wd, %bb.wk, %bb.nh, %bb.np, %bb.fc, %bb.fj, %bb.dq, %bb.dx, %bb.agl, %bb.afa, %bb.acx, %bb.ue, %bb.st, %bb.sr, %bb.rq, %bb.qa, %bb.ow, %bb.op, %bb.jl, %bb.ic, %bb.gn, %bb.ar, %bb.u
  %.pn930.pn.pn = phi { ptr, i32 } [ %i.cmz, %bb.xr ], [ %i.lc, %bb.j ], [ %lpad.phi2969, %bb.ld ], [ %lpad.phi3019, %bb.u ], [ %lpad.phi3014, %bb.ar ], [ %lpad.phi2904, %bb.adq ], [ %i.drw, %bb.agl ], [ %lpad.phi2999, %bb.dx ], [ %.pn912.pn, %bb.gn ], [ %.pn908.pn, %bb.ic ], [ %.pn904.pn, %bb.jl ], [ %i.cmm, %bb.xm ], [ %i.ty, %bb.ca ], [ %lpad.phi2989, %bb.fj ], [ %i.blv, %bb.op ], [ %lpad.phi2954, %bb.ow ], [ %lpad.phi2949, %bb.qa ], [ %i.ddu, %bb.abk ], [ %lpad.phi2944, %bb.rq ], [ %i.byb, %bb.st ], [ %i.bxz, %bb.sr ], [ %lpad.phi2939, %bb.ue ], [ %lpad.phi2959, %bb.np ], [ %lpad.phi2934, %bb.wk ], [ %i.deh, %bb.abp ], [ %i.cjv, %bb.xe ], [ %lpad.phi2919, %bb.zz ], [ %lpad.phi2909, %bb.acx ], [ %i.dbb, %bb.abc ], [ %.pn838.pn, %bb.afa ], [ %lpad.phi2914, %bb.abt ], [ %.pn920, %bb.dq ], [ %.pn916, %bb.fc ], [ %i.bii, %bb.nh ], [ %i.cgv, %bb.wd ], [ %i.bso, %bb.qu ], [ %i.cxg, %bb.zq ], [ %i.cuz, %bb.yz ], [ %i.djs, %bb.adi ], [ %lpad.phi3009, %bb.cj ], [ %i.dpp, %bb.afk ], [ %.pn895, %bb.mc ], [ %lpad.phi2924, %bb.zd ], [ %i.brx, %bb.qs ], [ %lpad.phi2929, %bb.xv ], [ %i.aze, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn930.pn.pn.pn = phi { ptr, i32 } [ %.pn930.pn.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn930.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !5026   ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !5027  ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !5028  ; 2 uses
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.n, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 4, !tbaa !5042
  %i.q = icmp ult i8 %i.p, 7
  br i1 %i.q, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !5042
  %i.t = icmp ult i8 %i.s, 7
  br i1 %i.t, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !5042
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !5042
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4447
  %i.ag = or i32 %i.af, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !5028 ; 3 uses
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
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
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
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !5042 ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 7
  %i.bx = icmp ne i8 %i.bv, %i.bt
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !16
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !4447
  %i.ce = or i32 %i.cd, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cb, i32 noundef %i.ce)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !27
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
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !5100, !range !659, !noundef !660
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !27
  %i.i = load ptr, ptr %0, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !4999
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
  %i.q = load i64, ptr %1, align 8, !tbaa !611    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !27
  %i.s = load ptr, ptr %0, align 8, !tbaa !16
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !4999
  %.not.i12 = icmp eq i64 %i.x, 0
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !5013
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !27
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !4999
  %.not.i15 = icmp eq i64 %i.ah, 0
  br i1 %.not.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !611 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !27
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !4999
  %.not.i18 = icmp eq i64 %i.as, 0
  br i1 %.not.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre26 = load i64, ptr %i.ak, align 8, !tbaa !5012
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  %i.av = phi i64 [ %.pre26, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ]
end_hunk_27
