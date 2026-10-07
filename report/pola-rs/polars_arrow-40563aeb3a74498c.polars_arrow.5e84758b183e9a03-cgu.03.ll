Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.03?download=true
inline.NumInlined: 2293
inline.NumDeleted: 1102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory20estimated_bytes_size:bb.a
  %i.pw = add nuw nsw i64 %i.pt, %i.pn, !dbg !20659 ; 2 uses
  %.not.i.i130 = icmp ugt i64 %i.pw, %i.pv, !dbg !20660
  br i1 %.not.i.i130, label %bb.cc, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit132, !dbg !20660, !prof !1227

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.pn, i64 noundef %i.pw, i64 noundef %i.pv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #38, !dbg !20661, !noalias !20153
  unreachable, !dbg !20661

_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit132: ; preds = %bb.ca, %bb.cb
  %.sroa.0.0.i131 = phi i64 [ 0, %bb.ca ], [ %i.pt, %bb.cb ], !dbg !20662
  %i.px = add i64 %.sroa.0.0.i131, %i.pi, !dbg !20663
  br label %bb.s, !dbg !20664

bb.cd:                                            ; preds = %bb.g
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #38, !dbg !20665
  unreachable, !dbg !20665

bb.ce:                                            ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.py = getelementptr inbounds nuw i8, ptr %i.cb, i64 48, !dbg !20666
  %i.pz = load i64, ptr %i.py, align 8, !dbg !20666, !noundef !1205 ; 3 uses
  %.not68 = icmp eq i64 %i.pz, 0, !dbg !20667
  br i1 %.not68, label %bb.cf, label %bb.cg, !dbg !20667

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #38, !dbg !20667
  unreachable, !dbg !20667

bb.cg:                                            ; preds = %bb.ce
  %i.qa = getelementptr inbounds nuw i8, ptr %i.cb, i64 40, !dbg !20668
  %i.qb = load ptr, ptr %i.qa, align 8, !dbg !20668, !noundef !1205 ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !dbg !20667, !noundef !1205
  %i.qd = getelementptr [8 x i8], ptr %i.qb, i64 %i.pz, !dbg !20669
  %i.qe = getelementptr i8, ptr %i.qd, i64 -8, !dbg !20669
  %i.qf = load i64, ptr %i.qe, align 8, !dbg !20669, !noundef !1205
  %i.qg = shl i64 %i.pz, 3, !dbg !20670
  %i.qh = getelementptr inbounds nuw i8, ptr %i.cb, i64 80, !dbg !20671
  %i.qi = load ptr, ptr %i.qh, align 8, !dbg !20671, !noundef !1205 ; 2 uses
  %.not.i133 = icmp eq ptr %i.qi, null, !dbg !20671
  br i1 %.not.i133, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit138, label %bb.ch, !dbg !20672

bb.ch:                                            ; preds = %bb.cg
  %i.qj = getelementptr inbounds nuw i8, ptr %i.cb, i64 88, !dbg !20673
  %i.qk = load i64, ptr %i.qj, align 8, !dbg !20673, !noalias !20159, !noundef !1205 ; 2 uses
  %i.ql = lshr i64 %i.qk, 3, !dbg !20673          ; 2 uses
  %i.qm = and i64 %i.qk, 7, !dbg !20674
  %i.qn = getelementptr inbounds nuw i8, ptr %i.cb, i64 96, !dbg !20675
  %i.qo = load i64, ptr %i.qn, align 8, !dbg !20675, !noalias !20159, !noundef !1205
  %i.qp = add i64 %i.qm, %i.qo, !dbg !20676
  %i.qq = call i64 @llvm.uadd.sat.i64(i64 %i.qp, i64 7), !dbg !20677
  %i.qr = lshr i64 %i.qq, 3, !dbg !20676          ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qi, i64 40, !dbg !20678
  %i.qt = load i64, ptr %i.qs, align 8, !dbg !20678, !noalias !20159, !noundef !1205 ; 2 uses
  %i.qu = add nuw nsw i64 %i.qr, %i.ql, !dbg !20679 ; 2 uses
  %.not.i.i136 = icmp ugt i64 %i.qu, %i.qt, !dbg !20680
  br i1 %.not.i.i136, label %bb.ci, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit138, !dbg !20680, !prof !1227

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ql, i64 noundef %i.qu, i64 noundef %i.qt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #38, !dbg !20681, !noalias !20159
  unreachable, !dbg !20681

_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit138: ; preds = %bb.cg, %bb.ch
  %.sroa.0.0.i137 = phi i64 [ 0, %bb.cg ], [ %i.qr, %bb.ch ], !dbg !20682
  %i.qv = sub i64 %i.qg, %i.qc, !dbg !20683
  %i.qw = add i64 %i.qv, %i.qf, !dbg !20683
  %i.qx = add i64 %i.qw, %.sroa.0.0.i137, !dbg !20683
  br label %bb.s, !dbg !20648

bb.cj:                                            ; preds = %bb.h
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #38, !dbg !20684
  unreachable, !dbg !20684

bb.ck:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ck, i64 48, !dbg !20685
  %i.qz = load i64, ptr %i.qy, align 8, !dbg !20685, !noundef !1205 ; 3 uses
  %.not67 = icmp eq i64 %i.qz, 0, !dbg !20686
  br i1 %.not67, label %bb.cl, label %bb.cm, !dbg !20686

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #38, !dbg !20686
  unreachable, !dbg !20686

bb.cm:                                            ; preds = %bb.ck
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ck, i64 40, !dbg !20687
  %i.rb = load ptr, ptr %i.ra, align 8, !dbg !20687, !noundef !1205 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !dbg !20686, !noundef !1205
  %i.rd = sext i32 %i.rc to i64, !dbg !20686
  %i.re = getelementptr [4 x i8], ptr %i.rb, i64 %i.qz, !dbg !20688
  %i.rf = getelementptr i8, ptr %i.re, i64 -4, !dbg !20688
  %i.rg = load i32, ptr %i.rf, align 4, !dbg !20688, !noundef !1205
  %i.rh = sext i32 %i.rg to i64, !dbg !20688
  %i.ri = shl i64 %i.qz, 2, !dbg !20689
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ck, i64 80, !dbg !20690
  %i.rk = load ptr, ptr %i.rj, align 8, !dbg !20690, !noundef !1205 ; 2 uses
  %.not.i139 = icmp eq ptr %i.rk, null, !dbg !20690
  br i1 %.not.i139, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit144, label %bb.cn, !dbg !20691

bb.cn:                                            ; preds = %bb.cm
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ck, i64 88, !dbg !20692
  %i.rm = load i64, ptr %i.rl, align 8, !dbg !20692, !noalias !20165, !noundef !1205 ; 2 uses
  %i.rn = lshr i64 %i.rm, 3, !dbg !20692          ; 2 uses
  %i.ro = and i64 %i.rm, 7, !dbg !20693
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ck, i64 96, !dbg !20694
  %i.rq = load i64, ptr %i.rp, align 8, !dbg !20694, !noalias !20165, !noundef !1205
  %i.rr = add i64 %i.ro, %i.rq, !dbg !20695
  %i.rs = call i64 @llvm.uadd.sat.i64(i64 %i.rr, i64 7), !dbg !20696
  %i.rt = lshr i64 %i.rs, 3, !dbg !20695          ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rk, i64 40, !dbg !20697
  %i.rv = load i64, ptr %i.ru, align 8, !dbg !20697, !noalias !20165, !noundef !1205 ; 2 uses
  %i.rw = add nuw nsw i64 %i.rt, %i.rn, !dbg !20698 ; 2 uses
  %.not.i.i142 = icmp ugt i64 %i.rw, %i.rv, !dbg !20699
  br i1 %.not.i.i142, label %bb.co, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit144, !dbg !20699, !prof !1227

bb.co:                                            ; preds = %bb.cn
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.rn, i64 noundef %i.rw, i64 noundef %i.rv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #38, !dbg !20700, !noalias !20165
  unreachable, !dbg !20700

_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit144: ; preds = %bb.cm, %bb.cn
  %.sroa.0.0.i143 = phi i64 [ 0, %bb.cm ], [ %i.rt, %bb.cn ], !dbg !20701
  %i.rx = sub i64 %i.ri, %i.rd, !dbg !20702
  %i.ry = add i64 %i.rx, %i.rh, !dbg !20702
  %i.rz = add i64 %i.ry, %.sroa.0.0.i143, !dbg !20702
  br label %bb.s, !dbg !20648

bb.cp:                                            ; preds = %bb.i
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #38, !dbg !20703
  unreachable, !dbg !20703

bb.cq:                                            ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ct, i64 48, !dbg !20704
  %i.sb = load i64, ptr %i.sa, align 8, !dbg !20704, !noundef !1205 ; 3 uses
  %.not66 = icmp eq i64 %i.sb, 0, !dbg !20705
  br i1 %.not66, label %bb.cr, label %bb.cs, !dbg !20705

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #38, !dbg !20705
  unreachable, !dbg !20705

bb.cs:                                            ; preds = %bb.cq
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ct, i64 40, !dbg !20706
  %i.sd = load ptr, ptr %i.sc, align 8, !dbg !20706, !noundef !1205 ; 2 uses
  %i.se = load i64, ptr %i.sd, align 8, !dbg !20705, !noundef !1205
  %i.sf = getelementptr [8 x i8], ptr %i.sd, i64 %i.sb, !dbg !20707
  %i.sg = getelementptr i8, ptr %i.sf, i64 -8, !dbg !20707
  %i.sh = load i64, ptr %i.sg, align 8, !dbg !20707, !noundef !1205
  %i.si = shl i64 %i.sb, 3, !dbg !20708
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ct, i64 80, !dbg !20709
  %i.sk = load ptr, ptr %i.sj, align 8, !dbg !20709, !noundef !1205 ; 2 uses
  %.not.i145 = icmp eq ptr %i.sk, null, !dbg !20709
  br i1 %.not.i145, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit150, label %bb.ct, !dbg !20710

bb.ct:                                            ; preds = %bb.cs
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ct, i64 88, !dbg !20711
  %i.sm = load i64, ptr %i.sl, align 8, !dbg !20711, !noalias !20171, !noundef !1205 ; 2 uses
  %i.sn = lshr i64 %i.sm, 3, !dbg !20711          ; 2 uses
  %i.so = and i64 %i.sm, 7, !dbg !20712
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ct, i64 96, !dbg !20713
  %i.sq = load i64, ptr %i.sp, align 8, !dbg !20713, !noalias !20171, !noundef !1205
  %i.sr = add i64 %i.so, %i.sq, !dbg !20714
  %i.ss = call i64 @llvm.uadd.sat.i64(i64 %i.sr, i64 7), !dbg !20715
  %i.st = lshr i64 %i.ss, 3, !dbg !20714          ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sk, i64 40, !dbg !20716
  %i.sv = load i64, ptr %i.su, align 8, !dbg !20716, !noalias !20171, !noundef !1205 ; 2 uses
  %i.sw = add nuw nsw i64 %i.st, %i.sn, !dbg !20717 ; 2 uses
  %.not.i.i148 = icmp ugt i64 %i.sw, %i.sv, !dbg !20718
  br i1 %.not.i.i148, label %bb.cu, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit150, !dbg !20718, !prof !1227

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.sn, i64 noundef %i.sw, i64 noundef %i.sv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #38, !dbg !20719, !noalias !20171
  unreachable, !dbg !20719

_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit150: ; preds = %bb.cs, %bb.ct
  %.sroa.0.0.i149 = phi i64 [ 0, %bb.cs ], [ %i.st, %bb.ct ], !dbg !20720
  %i.sx = sub i64 %i.si, %i.se, !dbg !20721
  %i.sy = add i64 %i.sx, %i.sh, !dbg !20721
  %i.sz = add i64 %i.sy, %.sroa.0.0.i149, !dbg !20721
  br label %bb.s, !dbg !20648

bb.cv:                                            ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #38, !dbg !20722
  unreachable, !dbg !20722

bb.cw:                                            ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !20723
  %i.ta = getelementptr inbounds nuw i8, ptr %i.dc, i64 56, !dbg !20724
  %i.tb = load ptr, ptr %i.ta, align 8, !dbg !20723, !nonnull !1205, !noundef !1205
  %i.tc = getelementptr inbounds nuw i8, ptr %i.dc, i64 64, !dbg !20723
  %i.td = load ptr, ptr %i.tc, align 8, !dbg !20723, !nonnull !1205, !align !1282, !noundef !1205
  %i.te = getelementptr i8, ptr %i.dc, i64 40, !dbg !20725
  %.val75 = load ptr, ptr %i.te, align 8, !dbg !20725 ; 2 uses
  %i.tf = getelementptr i8, ptr %i.dc, i64 48, !dbg !20725 ; 2 uses
  %.val76 = load i64, ptr %i.tf, align 8, !dbg !20725, !noundef !1205 ; 2 uses
  %.val70 = load i32, ptr %.val75, align 4, !dbg !20726, !noundef !1205 ; 2 uses
  %i.tg = sext i32 %.val70 to i64, !dbg !20727
  %.not.i153 = icmp ne i64 %.val76, 0, !dbg !20728
  call void @llvm.assume(i1 %.not.i153), !dbg !20728
  %i.th = getelementptr [4 x i8], ptr %.val75, i64 %.val76, !dbg !20729
  %i.ti = getelementptr i8, ptr %i.th, i64 -4, !dbg !20729
  %i.tj = load i32, ptr %i.ti, align 4, !dbg !20730, !noundef !1205
  %i.tk = sub i32 %i.tj, %.val70, !dbg !20731
  %i.tl = sext i32 %i.tk to i64, !dbg !20732
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 160, !dbg !20723
  %i.tn = load ptr, ptr %i.tm, align 8, !dbg !20723, !invariant.load !1205, !nonnull !1205
  %i.to = call { ptr, ptr } %i.tn(ptr noundef nonnull %i.tb, i64 noundef %i.tg, i64 noundef %i.tl) #35, !dbg !20733 ; 2 uses
  %i.tp = extractvalue { ptr, ptr } %i.to, 0, !dbg !20733 ; 5 uses
  %i.tq = extractvalue { ptr, ptr } %i.to, 1, !dbg !20733 ; 7 uses
  store ptr %i.tp, ptr %i.an, align 8, !dbg !20733
  %i.tr = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !20733
  store ptr %i.tq, ptr %i.tr, align 8, !dbg !20733
  %i.ts = invoke noundef i64 @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory20estimated_bytes_size(ptr noundef nonnull %i.tp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.tq)
          to label %bb.cy unwind label %bb.cx, !dbg !20734

bb.cx:                                            ; preds = %bb.da, %bb.cw
  %i.tt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an) #33
          to label %common.resume unwind label %bb.dg, !dbg !20735

bb.cy:                                            ; preds = %bb.cw
  %.val80 = load i64, ptr %i.tf, align 8, !dbg !20736, !noundef !1205
  %i.tu = shl i64 %.val80, 2, !dbg !20737
  %i.tv = getelementptr inbounds nuw i8, ptr %i.dc, i64 72, !dbg !20738
  %i.tw = load ptr, ptr %i.tv, align 8, !dbg !20738, !noundef !1205 ; 2 uses
  %.not.i154 = icmp eq ptr %i.tw, null, !dbg !20738
  br i1 %.not.i154, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit159, label %bb.cz, !dbg !20739

bb.cz:                                            ; preds = %bb.cy
  %i.tx = getelementptr inbounds nuw i8, ptr %i.dc, i64 80, !dbg !20740
  %i.ty = load i64, ptr %i.tx, align 8, !dbg !20740, !noalias !20173, !noundef !1205 ; 2 uses
  %i.tz = lshr i64 %i.ty, 3, !dbg !20740          ; 2 uses
  %i.ua = and i64 %i.ty, 7, !dbg !20741
  %i.ub = getelementptr inbounds nuw i8, ptr %i.dc, i64 88, !dbg !20742
  %i.uc = load i64, ptr %i.ub, align 8, !dbg !20742, !noalias !20173, !noundef !1205
  %i.ud = add i64 %i.ua, %i.uc, !dbg !20743
  %i.ue = call i64 @llvm.uadd.sat.i64(i64 %i.ud, i64 7), !dbg !20744
  %i.uf = lshr i64 %i.ue, 3, !dbg !20743          ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tw, i64 40, !dbg !20745
  %i.uh = load i64, ptr %i.ug, align 8, !dbg !20745, !noalias !20173, !noundef !1205 ; 2 uses
  %i.ui = add nuw nsw i64 %i.uf, %i.tz, !dbg !20746 ; 2 uses
  %.not.i.i157 = icmp ugt i64 %i.ui, %i.uh, !dbg !20747
  br i1 %.not.i.i157, label %bb.da, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit159, !dbg !20747, !prof !1227

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.tz, i64 noundef %i.ui, i64 noundef %i.uh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #38
          to label %.noexc unwind label %bb.cx, !dbg !20748

.noexc:                                           ; preds = %bb.da
  unreachable, !dbg !20748

_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit159: ; preds = %bb.cz, %bb.cy
  %.sroa.0.0.i158 = phi i64 [ 0, %bb.cy ], [ %i.uf, %bb.cz ], !dbg !20749
  %i.uj = add i64 %i.ts, -4, !dbg !20737
  %i.uk = add i64 %i.uj, %i.tu, !dbg !20734
  %i.ul = add i64 %i.uk, %.sroa.0.0.i158, !dbg !20734
  %i.um = load ptr, ptr %i.tq, align 8, !dbg !20750, !invariant.load !1205, !noalias !20174 ; 2 uses
  %.not.i160 = icmp eq ptr %i.um, null, !dbg !20750
  br i1 %.not.i160, label %bb.dc, label %bb.db, !dbg !20750

bb.db:                                            ; preds = %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit159
  invoke void %i.um(ptr noundef nonnull %i.tp)
          to label %bb.dc unwind label %bb.de, !dbg !20750, !noalias !20174

bb.dc:                                            ; preds = %bb.db, %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit159
  %i.un = getelementptr inbounds nuw i8, ptr %i.tq, i64 8, !dbg !20751
  %i.uo = load i64, ptr %i.un, align 8, !dbg !20751, !range !1213, !invariant.load !1205, !noalias !20174 ; 2 uses
  %i.up = icmp eq i64 %i.uo, 0, !dbg !20752
  br i1 %i.up, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_.exit, label %bb.dd, !dbg !20752

bb.dd:                                            ; preds = %bb.dc
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tq, i64 16, !dbg !20751
  %i.ur = load i64, ptr %i.uq, align 8, !dbg !20753, !range !1335, !invariant.load !1205, !noalias !20174
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tp, i64 noundef range(i64 1, 0) %i.uo, i64 noundef range(i64 1, 536870913) %i.ur) #36, !dbg !20754, !noalias !20174
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_.exit, !dbg !20755

bb.de:                                            ; preds = %bb.db
  %i.us = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tq, i64 8, !dbg !20756
  %i.uu = load i64, ptr %i.ut, align 8, !dbg !20756, !range !1213, !invariant.load !1205, !noalias !20174 ; 2 uses
  %i.uv = icmp eq i64 %i.uu, 0, !dbg !20757
  br i1 %i.uv, label %common.resume, label %bb.df, !dbg !20757

bb.df:                                            ; preds = %bb.de
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tq, i64 16, !dbg !20756
  %i.ux = load i64, ptr %i.uw, align 8, !dbg !20758, !range !1335, !invariant.load !1205, !noalias !20174
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tp, i64 noundef range(i64 1, 0) %i.uu, i64 noundef range(i64 1, 536870913) %i.ux) #36, !dbg !20759, !noalias !20174
  br label %common.resume, !dbg !20760

common.resume:                                    ; preds = %bb.du, %bb.dv, %bb.cx, %bb.dn, %bb.de, %bb.df
  %common.resume.op = phi { ptr, i32 } [ %i.wk, %bb.dn ], [ %i.us, %bb.de ], [ %i.us, %bb.df ], [ %i.tt, %bb.cx ], [ %i.xj, %bb.dv ], [ %i.xj, %bb.du ]
  resume { ptr, i32 } %common.resume.op, !dbg !20452

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_.exit: ; preds = %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !20735
  br label %bb.s, !dbg !20761

bb.dg:                                            ; preds = %bb.dn, %bb.cx
  %i.uy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !20762
  unreachable, !dbg !20762

bb.dh:                                            ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #38, !dbg !20763
  unreachable, !dbg !20763

bb.di:                                            ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.uz = getelementptr inbounds nuw i8, ptr %i.dl, i64 32, !dbg !20764
  %i.va = load ptr, ptr %i.uz, align 8, !dbg !20765, !nonnull !1205, !noundef !1205
  %i.vb = getelementptr inbounds nuw i8, ptr %i.dl, i64 40, !dbg !20765
  %i.vc = load ptr, ptr %i.vb, align 8, !dbg !20765, !nonnull !1205, !align !1282, !noundef !1205
  %i.vd = call noundef i64 @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory20estimated_bytes_size(ptr noundef nonnull %i.va, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.vc), !dbg !20766
  %i.ve = getelementptr inbounds nuw i8, ptr %i.dl, i64 64, !dbg !20767
  %i.vf = load ptr, ptr %i.ve, align 8, !dbg !20767, !noundef !1205 ; 2 uses
  %.not.i161 = icmp eq ptr %i.vf, null, !dbg !20767
  br i1 %.not.i161, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit166, label %bb.dj, !dbg !20768

bb.dj:                                            ; preds = %bb.di
  %i.vg = getelementptr inbounds nuw i8, ptr %i.dl, i64 72, !dbg !20769
  %i.vh = load i64, ptr %i.vg, align 8, !dbg !20769, !noalias !20177, !noundef !1205 ; 2 uses
  %i.vi = lshr i64 %i.vh, 3, !dbg !20769          ; 2 uses
  %i.vj = and i64 %i.vh, 7, !dbg !20770
  %i.vk = getelementptr inbounds nuw i8, ptr %i.dl, i64 80, !dbg !20771
  %i.vl = load i64, ptr %i.vk, align 8, !dbg !20771, !noalias !20177, !noundef !1205
  %i.vm = add i64 %i.vj, %i.vl, !dbg !20772
  %i.vn = call i64 @llvm.uadd.sat.i64(i64 %i.vm, i64 7), !dbg !20773
  %i.vo = lshr i64 %i.vn, 3, !dbg !20772          ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vf, i64 40, !dbg !20774
  %i.vq = load i64, ptr %i.vp, align 8, !dbg !20774, !noalias !20177, !noundef !1205 ; 2 uses
  %i.vr = add nuw nsw i64 %i.vo, %i.vi, !dbg !20775 ; 2 uses
  %.not.i.i164 = icmp ugt i64 %i.vr, %i.vq, !dbg !20776
  br i1 %.not.i.i164, label %bb.dk, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit166, !dbg !20776, !prof !1227

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.vi, i64 noundef %i.vr, i64 noundef %i.vq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #38, !dbg !20777, !noalias !20177
  unreachable, !dbg !20777

_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit166: ; preds = %bb.di, %bb.dj
  %.sroa.0.0.i165 = phi i64 [ 0, %bb.di ], [ %i.vo, %bb.dj ], !dbg !20778
  %i.vs = add i64 %.sroa.0.0.i165, %i.vd, !dbg !20766
  br label %bb.s, !dbg !20779

bb.dl:                                            ; preds = %bb.l
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #38, !dbg !20780
  unreachable, !dbg !20780

bb.dm:                                            ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.du) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !20781
  %i.vt = getelementptr inbounds nuw i8, ptr %i.du, i64 56, !dbg !20782
  %i.vu = load ptr, ptr %i.vt, align 8, !dbg !20781, !nonnull !1205, !noundef !1205
  %i.vv = getelementptr inbounds nuw i8, ptr %i.du, i64 64, !dbg !20781
  %i.vw = load ptr, ptr %i.vv, align 8, !dbg !20781, !nonnull !1205, !align !1282, !noundef !1205
  %i.vx = getelementptr i8, ptr %i.du, i64 40, !dbg !20783
  %.val81 = load ptr, ptr %i.vx, align 8, !dbg !20783 ; 2 uses
  %i.vy = getelementptr i8, ptr %i.du, i64 48, !dbg !20783 ; 2 uses
  %.val82 = load i64, ptr %i.vy, align 8, !dbg !20783, !noundef !1205 ; 2 uses
  %.val72 = load i64, ptr %.val81, align 8, !dbg !20784, !noundef !1205 ; 2 uses
  %.not.i169 = icmp ne i64 %.val82, 0, !dbg !20785
  call void @llvm.assume(i1 %.not.i169), !dbg !20785
  %i.vz = getelementptr [8 x i8], ptr %.val81, i64 %.val82, !dbg !20786
  %i.wa = getelementptr i8, ptr %i.vz, i64 -8, !dbg !20786
  %i.wb = load i64, ptr %i.wa, align 8, !dbg !20787, !noundef !1205
  %i.wc = sub i64 %i.wb, %.val72, !dbg !20788
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vw, i64 160, !dbg !20781
  %i.we = load ptr, ptr %i.wd, align 8, !dbg !20781, !invariant.load !1205, !nonnull !1205
  %i.wf = call { ptr, ptr } %i.we(ptr noundef nonnull %i.vu, i64 noundef %.val72, i64 noundef %i.wc) #35, !dbg !20789 ; 2 uses
  %i.wg = extractvalue { ptr, ptr } %i.wf, 0, !dbg !20789 ; 5 uses
  %i.wh = extractvalue { ptr, ptr } %i.wf, 1, !dbg !20789 ; 7 uses
  store ptr %i.wg, ptr %i.am, align 8, !dbg !20789
  %i.wi = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !20789
  store ptr %i.wh, ptr %i.wi, align 8, !dbg !20789
  %i.wj = invoke noundef i64 @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory20estimated_bytes_size(ptr noundef nonnull %i.wg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.wh)
          to label %bb.do unwind label %bb.dn, !dbg !20790

bb.dn:                                            ; preds = %bb.dq, %bb.dm
  %i.wk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #33
          to label %common.resume unwind label %bb.dg, !dbg !20791

bb.do:                                            ; preds = %bb.dm
  %.val85 = load i64, ptr %i.vy, align 8, !dbg !20792, !noundef !1205
  %i.wl = shl i64 %.val85, 3, !dbg !20793
  %i.wm = getelementptr inbounds nuw i8, ptr %i.du, i64 72, !dbg !20794
  %i.wn = load ptr, ptr %i.wm, align 8, !dbg !20794, !noundef !1205 ; 2 uses
  %.not.i170 = icmp eq ptr %i.wn, null, !dbg !20794
  br i1 %.not.i170, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit176, label %bb.dp, !dbg !20795

bb.dp:                                            ; preds = %bb.do
  %i.wo = getelementptr inbounds nuw i8, ptr %i.du, i64 80, !dbg !20796
  %i.wp = load i64, ptr %i.wo, align 8, !dbg !20796, !noalias !20179, !noundef !1205 ; 2 uses
  %i.wq = lshr i64 %i.wp, 3, !dbg !20796          ; 2 uses
  %i.wr = and i64 %i.wp, 7, !dbg !20797
  %i.ws = getelementptr inbounds nuw i8, ptr %i.du, i64 88, !dbg !20798
  %i.wt = load i64, ptr %i.ws, align 8, !dbg !20798, !noalias !20179, !noundef !1205
  %i.wu = add i64 %i.wr, %i.wt, !dbg !20799
  %i.wv = call i64 @llvm.uadd.sat.i64(i64 %i.wu, i64 7), !dbg !20800
  %i.ww = lshr i64 %i.wv, 3, !dbg !20799          ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wn, i64 40, !dbg !20801
  %i.wy = load i64, ptr %i.wx, align 8, !dbg !20801, !noalias !20179, !noundef !1205 ; 2 uses
  %i.wz = add nuw nsw i64 %i.ww, %i.wq, !dbg !20802 ; 2 uses
  %.not.i.i173 = icmp ugt i64 %i.wz, %i.wy, !dbg !20803
  br i1 %.not.i.i173, label %bb.dq, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit176, !dbg !20803, !prof !1227

bb.dq:                                            ; preds = %bb.dp
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.wq, i64 noundef %i.wz, i64 noundef %i.wy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #38
          to label %.noexc175 unwind label %bb.dn, !dbg !20804

.noexc175:                                        ; preds = %bb.dq
  unreachable, !dbg !20804

_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit176: ; preds = %bb.dp, %bb.do
  %.sroa.0.0.i174 = phi i64 [ 0, %bb.do ], [ %i.ww, %bb.dp ], !dbg !20805
  %i.xa = add i64 %i.wj, -8, !dbg !20793
  %i.xb = add i64 %i.xa, %i.wl, !dbg !20790
  %i.xc = add i64 %i.xb, %.sroa.0.0.i174, !dbg !20790
  %i.xd = load ptr, ptr %i.wh, align 8, !dbg !20806, !invariant.load !1205, !noalias !20180 ; 2 uses
  %.not.i177 = icmp eq ptr %i.xd, null, !dbg !20806
  br i1 %.not.i177, label %bb.ds, label %bb.dr, !dbg !20806

bb.dr:                                            ; preds = %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit176
  invoke void %i.xd(ptr noundef nonnull %i.wg)
          to label %bb.ds unwind label %bb.du, !dbg !20806, !noalias !20180

bb.ds:                                            ; preds = %bb.dr, %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit176
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wh, i64 8, !dbg !20807
  %i.xf = load i64, ptr %i.xe, align 8, !dbg !20807, !range !1213, !invariant.load !1205, !noalias !20180 ; 2 uses
  %i.xg = icmp eq i64 %i.xf, 0, !dbg !20808
  br i1 %i.xg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_.exit180, label %bb.dt, !dbg !20808

bb.dt:                                            ; preds = %bb.ds
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wh, i64 16, !dbg !20807
  %i.xi = load i64, ptr %i.xh, align 8, !dbg !20809, !range !1335, !invariant.load !1205, !noalias !20180
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wg, i64 noundef range(i64 1, 0) %i.xf, i64 noundef range(i64 1, 536870913) %i.xi) #36, !dbg !20810, !noalias !20180
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_.exit180, !dbg !20811

bb.du:                                            ; preds = %bb.dr
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wh, i64 8, !dbg !20812
  %i.xl = load i64, ptr %i.xk, align 8, !dbg !20812, !range !1213, !invariant.load !1205, !noalias !20180 ; 2 uses
  %i.xm = icmp eq i64 %i.xl, 0, !dbg !20813
  br i1 %i.xm, label %common.resume, label %bb.dv, !dbg !20813

bb.dv:                                            ; preds = %bb.du
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wh, i64 16, !dbg !20812
  %i.xo = load i64, ptr %i.xn, align 8, !dbg !20814, !range !1335, !invariant.load !1205, !noalias !20180
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wg, i64 noundef range(i64 1, 0) %i.xl, i64 noundef range(i64 1, 536870913) %i.xo) #36, !dbg !20815, !noalias !20180
  br label %common.resume, !dbg !20816

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_.exit180: ; preds = %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !20791
  br label %bb.s, !dbg !20817

bb.dw:                                            ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #38, !dbg !20818
  unreachable, !dbg !20818

bb.dx:                                            ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.xp = getelementptr i8, ptr %i.ed, i64 8, !dbg !20819
  %.val73 = load ptr, ptr %i.xp, align 8, !dbg !20819, !nonnull !1205, !noundef !1205 ; 2 uses
  %i.xq = getelementptr i8, ptr %i.ed, i64 16, !dbg !20819
  %.val74 = load i64, ptr %i.xq, align 8, !dbg !20819, !noundef !1205
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %.val73, i64 %.val74, !dbg !20820
  %i.xs = call noundef i64 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvNtNtNtB21_7compute9aggregate6memory20estimated_bytes_size0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldRB1W_jjB2M_NCINvXsK_NtB3P_5accumjNtB50_3Sum3sumIBO_BN_B4N_EE0E0EB21_(ptr noundef nonnull %.val73, ptr noundef nonnull %i.xr, i64 noundef 0), !dbg !20821
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ed, i64 64, !dbg !20822
  %i.xu = load ptr, ptr %i.xt, align 8, !dbg !20822, !noundef !1205 ; 2 uses
  %.not.i181 = icmp eq ptr %i.xu, null, !dbg !20822
  br i1 %.not.i181, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit186, label %bb.dy, !dbg !20823

bb.dy:                                            ; preds = %bb.dx
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ed, i64 72, !dbg !20824
  %i.xw = load i64, ptr %i.xv, align 8, !dbg !20824, !noalias !20192, !noundef !1205 ; 2 uses
  %i.xx = lshr i64 %i.xw, 3, !dbg !20824          ; 2 uses
  %i.xy = and i64 %i.xw, 7, !dbg !20825
  %i.xz = getelementptr inbounds nuw i8, ptr %i.ed, i64 80, !dbg !20826
  %i.ya = load i64, ptr %i.xz, align 8, !dbg !20826, !noalias !20192, !noundef !1205
  %i.yb = add i64 %i.xy, %i.ya, !dbg !20827
  %i.yc = call i64 @llvm.uadd.sat.i64(i64 %i.yb, i64 7), !dbg !20828
  %i.yd = lshr i64 %i.yc, 3, !dbg !20827          ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xu, i64 40, !dbg !20829
  %i.yf = load i64, ptr %i.ye, align 8, !dbg !20829, !noalias !20192, !noundef !1205 ; 2 uses
  %i.yg = add nuw nsw i64 %i.yd, %i.xx, !dbg !20830 ; 2 uses
  %.not.i.i184 = icmp ugt i64 %i.yg, %i.yf, !dbg !20831
  br i1 %.not.i.i184, label %bb.dz, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit186, !dbg !20831, !prof !1227

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.xx, i64 noundef %i.yg, i64 noundef %i.yf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #38, !dbg !20832, !noalias !20192
  unreachable, !dbg !20832

_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit186: ; preds = %bb.dx, %bb.dy
  %.sroa.0.0.i185 = phi i64 [ 0, %bb.dx ], [ %i.yd, %bb.dy ], !dbg !20833
  %i.yh = add i64 %.sroa.0.0.i185, %i.xs, !dbg !20834
  br label %bb.s, !dbg !20835

bb.ea:                                            ; preds = %bb.n
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #38, !dbg !20836
  unreachable, !dbg !20836

bb.eb:                                            ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  %i.yi = getelementptr inbounds nuw i8, ptr %i.em, i64 1104, !dbg !20837
  %i.yj = load i64, ptr %i.yi, align 8, !dbg !20837, !noundef !1205
  %i.yk = getelementptr inbounds nuw i8, ptr %i.em, i64 1112, !dbg !20838
  %i.yl = load ptr, ptr %i.yk, align 8, !dbg !20838, !alias.scope !20195, !noundef !1205
  %.not.i187 = icmp eq ptr %i.yl, null, !dbg !20838
  br i1 %.not.i187, label %bb.ed, label %bb.ec, !dbg !20839

bb.ec:                                            ; preds = %bb.eb
  %i.ym = getelementptr inbounds nuw i8, ptr %i.em, i64 1128, !dbg !20840
  %i.yn = load i64, ptr %i.ym, align 8, !dbg !20840, !noundef !1205
  %i.yo = shl i64 %i.yn, 2, !dbg !20841
  br label %bb.ed, !dbg !20842

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  %.sroa.030.0 = phi i64 [ %i.yo, %bb.ec ], [ 0, %bb.eb ], !dbg !20843
  %i.yp = getelementptr inbounds nuw i8, ptr %i.em, i64 1040, !dbg !20844
  %i.yq = load ptr, ptr %i.yp, align 8, !dbg !20844, !nonnull !1205, !noundef !1205 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.em, i64 1048, !dbg !20845
  %i.ys = load i64, ptr %i.yr, align 8, !dbg !20845, !noundef !1205
  %i.yt = getelementptr inbounds nuw [16 x i8], ptr %i.yq, i64 %i.ys, !dbg !20846
  %i.yu = call noundef i64 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvNtNtNtB21_7compute9aggregate6memory20estimated_bytes_sizes0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldRB1W_jjB2M_NCINvXsK_NtB3S_5accumjNtB53_3Sum3sumIBO_BN_B4Q_EE0E0EB21_(ptr noundef nonnull %i.yq, ptr noundef nonnull %i.yt, i64 noundef 0), !dbg !20847
  %i.yv = add i64 %.sroa.030.0, %i.yj, !dbg !20848
  %i.yw = add i64 %i.yv, %i.yu, !dbg !20848
  br label %bb.s, !dbg !20849

bb.ee:                                            ; preds = %bb.o
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #38, !dbg !20850
  unreachable, !dbg !20850

bb.ef:                                            ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  %i.yx = getelementptr i8, ptr %i.ev, i64 48, !dbg !20851
  %.val79 = load i64, ptr %i.yx, align 8, !dbg !20851, !noundef !1205
  %i.yy = shl i64 %.val79, 2, !dbg !20852
  %i.yz = add i64 %i.yy, -4, !dbg !20852
  %i.za = getelementptr inbounds nuw i8, ptr %i.ev, i64 56, !dbg !20853
  %i.zb = load ptr, ptr %i.za, align 8, !dbg !20854, !nonnull !1205, !noundef !1205
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ev, i64 64, !dbg !20854
  %i.zd = load ptr, ptr %i.zc, align 8, !dbg !20854, !nonnull !1205, !align !1282, !noundef !1205
  %i.ze = call noundef i64 @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory20estimated_bytes_size(ptr noundef nonnull %i.zb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.zd), !dbg !20855
  %i.zf = add i64 %i.yz, %i.ze, !dbg !20856
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ev, i64 72, !dbg !20857
  %i.zh = load ptr, ptr %i.zg, align 8, !dbg !20857, !noundef !1205 ; 2 uses
  %.not.i189 = icmp eq ptr %i.zh, null, !dbg !20857
  br i1 %.not.i189, label %_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory13validity_size.exit194, label %bb.eg, !dbg !20858

bb.eg:                                            ; preds = %bb.ef
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ev, i64 80, !dbg !20859
  %i.zj = load i64, ptr %i.zi, align 8, !dbg !20859, !noalias !20218, !noundef !1205 ; 2 uses
  %i.zk = lshr i64 %i.zj, 3, !dbg !20859          ; 2 uses
  %i.zl = and i64 %i.zj, 7, !dbg !20860
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ev, i64 88, !dbg !20861
  %i.zn = load i64, ptr %i.zm, align 8, !dbg !20861, !noalias !20218, !noundef !1205
  %i.zo = add i64 %i.zl, %i.zn, !dbg !20862
  %i.zp = call i64 @llvm.uadd.sat.i64(i64 %i.zo, i64 7), !dbg !20863
  %i.zq = lshr i64 %i.zp, 3, !dbg !20862          ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zh, i64 40, !dbg !20864
  %i.zs = load i64, ptr %i.zr, align 8, !dbg !20864, !noalias !20218, !noundef !1205 ; 2 uses
  %i.zt = add nuw nsw i64 %i.zq, %i.zk, !dbg !20865 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array:bb.a

bb.da:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !21912
  %i.ox = getelementptr inbounds nuw i8, ptr %i.fj, i64 80, !dbg !22479 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !dbg !22479, !noundef !1205
  %.not.i116 = icmp eq ptr %i.oy, null, !dbg !22479
  %..i117 = select i1 %.not.i116, ptr null, ptr %i.ox, !dbg !22480
  %i.oz = getelementptr inbounds nuw i8, ptr %i.fj, i64 32, !dbg !22481
  %i.pa = getelementptr inbounds nuw i8, ptr %i.fj, i64 56, !dbg !22482
  call fastcc void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array19write_binary_offsetxEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cr, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noundef align 8 %..i117, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pa), !dbg !21912
  %i.pb = load i64, ptr %i.cr, align 8, !dbg !22483, !range !1489, !noundef !1205
  %.not88 = icmp eq i64 %i.pb, 18, !dbg !22483
  br i1 %.not88, label %bb.dc, label %bb.db, !dbg !22484

bb.db:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cr, i64 72, i1 false), !dbg !22485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !22486
  br label %bb.kf, !dbg !22157

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !22486
  br label %.loopexit, !dbg !22487

bb.dd:                                            ; preds = %bb.i
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #38, !dbg !22488
  unreachable, !dbg !22488

bb.de:                                            ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !21914
  %i.pc = getelementptr inbounds nuw i8, ptr %i.fs, i64 80, !dbg !22489 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !dbg !22489, !noundef !1205
  %.not.i118 = icmp eq ptr %i.pd, null, !dbg !22489
  %..i119 = select i1 %.not.i118, ptr null, ptr %i.pc, !dbg !22490
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fs, i64 32, !dbg !22491
  %i.pf = getelementptr inbounds nuw i8, ptr %i.fs, i64 56, !dbg !22492
  call fastcc void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array19write_binary_offsetlEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cq, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noundef align 8 %..i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pf), !dbg !21914
  %i.pg = load i64, ptr %i.cq, align 8, !dbg !22493, !range !1489, !noundef !1205
  %.not87 = icmp eq i64 %i.pg, 18, !dbg !22493
  br i1 %.not87, label %bb.dg, label %bb.df, !dbg !22494

bb.df:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cq, i64 72, i1 false), !dbg !22495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !22496
  br label %bb.kf, !dbg !22157

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !22496
  br label %.loopexit, !dbg !22497

bb.dh:                                            ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @272) #38, !dbg !22498
  unreachable, !dbg !22498

bb.di:                                            ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gb) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !21916
  %i.ph = getelementptr inbounds nuw i8, ptr %i.gb, i64 80, !dbg !22499 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !dbg !22499, !noundef !1205
  %.not.i120 = icmp eq ptr %i.pi, null, !dbg !22499
  %..i121 = select i1 %.not.i120, ptr null, ptr %i.ph, !dbg !22500
  %i.pj = getelementptr inbounds nuw i8, ptr %i.gb, i64 32, !dbg !22501
  %i.pk = getelementptr inbounds nuw i8, ptr %i.gb, i64 56, !dbg !22502
  call fastcc void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array19write_binary_offsetxEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cp, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noundef align 8 %..i121, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pk), !dbg !21916
  %i.pl = load i64, ptr %i.cp, align 8, !dbg !22503, !range !1489, !noundef !1205
  %.not86 = icmp eq i64 %i.pl, 18, !dbg !22503
  br i1 %.not86, label %bb.dk, label %bb.dj, !dbg !22504

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cp, i64 72, i1 false), !dbg !22505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !22506
  br label %bb.kf, !dbg !22157

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !22506
  br label %.loopexit, !dbg !22507

bb.dl:                                            ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #38, !dbg !22508
  unreachable, !dbg !22508

bb.dm:                                            ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !21927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !22509, !noalias !21918
  %i.pm = getelementptr inbounds nuw i8, ptr %i.gk, i64 72, !dbg !22510 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !dbg !22510, !noalias !21918, !noundef !1205
  %.not.i188 = icmp eq ptr %i.pn, null, !dbg !22510
  %..i189 = select i1 %.not.i188, ptr null, ptr %i.pm, !dbg !22511
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i189), !dbg !22509, !inline_history !21229
  %i.po = load i64, ptr %i.ad, align 8, !dbg !22512, !range !1489, !noalias !21918, !noundef !1205
  %.not.i122 = icmp eq i64 %i.po, 18, !dbg !22512
  br i1 %.not.i122, label %bb.do, label %bb.dn, !dbg !22513

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false), !dbg !22514, !noalias !21919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !22515, !noalias !21918
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit, !dbg !22516

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !22515, !noalias !21918
  %i.pp = getelementptr inbounds nuw i8, ptr %i.gk, i64 32, !dbg !22517
  call void @llvm.experimental.noalias.scope.decl(metadata !21921), !dbg !22518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !22519, !noalias !21922
  %i.pq = getelementptr inbounds nuw i8, ptr %i.gk, i64 40, !dbg !22520 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !dbg !22520, !alias.scope !21921, !noalias !21923, !noundef !1205 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.gk, i64 48, !dbg !22521 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !dbg !22521, !alias.scope !21921, !noalias !21923, !noundef !1205 ; 2 uses
  %.not.i184 = icmp eq i64 %i.pt, 0, !dbg !22522
  br i1 %.not.i184, label %bb.dq, label %bb.dp, !dbg !22522

bb.dp:                                            ; preds = %bb.do
  %i.pu = load i32, ptr %i.pr, align 4, !dbg !22522, !noalias !21922, !noundef !1205 ; 2 uses
  store i32 %i.pu, ptr %i.h, align 4, !dbg !22522, !noalias !21922
  %i.pv = icmp eq i32 %i.pu, 0, !dbg !22523
  br i1 %i.pv, label %bb.ds, label %bb.dr, !dbg !22524

bb.dq:                                            ; preds = %bb.do
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38, !dbg !22522, !noalias !21922
  unreachable, !dbg !22522

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22525, !noalias !21922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22526, !noalias !21922
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.pt, !dbg !22527
  store ptr %i.pr, ptr %i.e, align 8, !dbg !22528, !noalias !21922
  %i.px = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !22528
  store ptr %i.pw, ptr %i.px, align 8, !dbg !22528, !noalias !21922
  %i.py = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !22528
  store ptr %i.h, ptr %i.py, align 8, !dbg !22528, !noalias !21922
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive22write_native_type_iterlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterlENCINvB4_13write_offsetslE0EEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e), !dbg !22525, !noalias !21924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22529, !noalias !21922
  %i.pz = load i64, ptr %i.f, align 8, !dbg !22530, !range !1489, !noalias !21922, !noundef !1205 ; 2 uses
  %.not1.i185 = icmp eq i64 %i.pz, 18, !dbg !22530
  br i1 %.not1.i185, label %bb.du, label %bb.dt, !dbg !22531

bb.ds:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !22532, !noalias !21922
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferlEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pp), !dbg !22532, !noalias !21925
  %i.qa = load i64, ptr %i.g, align 8, !dbg !22533, !range !1489, !noalias !21922, !noundef !1205 ; 2 uses
  %.not2.i186 = icmp eq i64 %i.qa, 18, !dbg !22533
  br i1 %.not2.i186, label %bb.dw, label %bb.dv, !dbg !22534

bb.dt:                                            ; preds = %bb.dr
  %.sroa.8257.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !22535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8257, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8257.0..sroa_idx258, i64 64, i1 false), !dbg !22535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22536, !noalias !21922
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit.thread, !dbg !22537

bb.du:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22536, !noalias !21922
  br label %bb.dz, !dbg !22538

bb.dv:                                            ; preds = %bb.ds
  %.sroa.8257.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !22539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8257, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8257.0..sroa_idx259, i64 64, i1 false), !dbg !22539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22540, !noalias !21922
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit.thread, !dbg !22537

bb.dw:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22540, !noalias !21922
  br label %bb.dz, !dbg !22538

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit.thread: ; preds = %bb.dt, %bb.dv
  %.sroa.0254.0 = phi i64 [ %i.pz, %bb.dt ], [ %i.qa, %bb.dv ], !dbg !22541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22542, !noalias !21922
  store i64 %.sroa.0254.0, ptr %i.cl, align 8, !dbg !22543, !noalias !21919
  %.sroa.4270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !22543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4270.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8257, i64 64, i1 false), !dbg !22543
  br label %bb.ef, !dbg !22544

bb.dx:                                            ; preds = %bb.eb, %bb.dy
  %.pn.i = phi { ptr, i32 } [ %i.qb, %bb.dy ], [ %i.qt, %bb.eb ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #33
          to label %common.resume unwind label %bb.ee, !dbg !22545, !noalias !21928, !inline_history !21229

bb.dy:                                            ; preds = %bb.ec, %bb.dz
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dz:                                            ; preds = %bb.dw, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22542, !noalias !21922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !22546, !noalias !21918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !22546, !noalias !21918
  %i.qc = getelementptr inbounds nuw i8, ptr %i.gk, i64 56, !dbg !22547
  %i.qd = call { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qc), !dbg !22548, !inline_history !21229 ; 2 uses
  %i.qe = extractvalue { ptr, ptr } %i.qd, 0, !dbg !22548 ; 2 uses
  %i.qf = extractvalue { ptr, ptr } %i.qd, 1, !dbg !22548 ; 2 uses
  store ptr %i.qe, ptr %i.ab, align 8, !dbg !22548, !noalias !21918
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !22548
  store ptr %i.qf, ptr %i.qg, align 8, !dbg !22548, !noalias !21918
  %.val4.i = load ptr, ptr %i.pq, align 8, !dbg !22549 ; 2 uses
  %.val5.i = load i64, ptr %i.ps, align 8, !dbg !22549, !noundef !1205 ; 2 uses
  %.val3.i = load i32, ptr %.val4.i, align 4, !dbg !22550, !noalias !21928, !noundef !1205 ; 2 uses
  %i.qh = sext i32 %.val3.i to i64, !dbg !22551
  %.not.i181 = icmp ne i64 %.val5.i, 0, !dbg !22552
  call void @llvm.assume(i1 %.not.i181), !dbg !22552, !noalias !21928
  %i.qi = getelementptr [4 x i8], ptr %.val4.i, i64 %.val5.i, !dbg !22553
  %i.qj = getelementptr i8, ptr %i.qi, i64 -4, !dbg !22553
  %i.qk = load i32, ptr %i.qj, align 4, !dbg !22554, !noalias !21928, !noundef !1205
  %i.ql = sub i32 %i.qk, %.val3.i, !dbg !22555
  %i.qm = sext i32 %i.ql to i64, !dbg !22556
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 160, !dbg !22546
  %i.qo = load ptr, ptr %i.qn, align 8, !dbg !22546, !invariant.load !1205, !noalias !21928, !nonnull !1205
  %i.qp = invoke { ptr, ptr } %i.qo(ptr noundef %i.qe, i64 noundef %i.qh, i64 noundef %i.qm)
          to label %bb.ea unwind label %bb.dy, !dbg !22557, !noalias !21928, !inline_history !21229 ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.qq = extractvalue { ptr, ptr } %i.qp, 0, !dbg !22546 ; 2 uses
  %i.qr = extractvalue { ptr, ptr } %i.qp, 1, !dbg !22546 ; 2 uses
  store ptr %i.qq, ptr %i.ac, align 8, !dbg !22546, !noalias !21918
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !22546
  store ptr %i.qr, ptr %i.qs, align 8, !dbg !22546, !noalias !21918
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cl, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.qq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.qr)
          to label %bb.ec unwind label %bb.eb, !dbg !22558, !inline_history !21229

bb.eb:                                            ; preds = %bb.ea
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #33
          to label %bb.dx unwind label %bb.ee, !dbg !22545, !noalias !21928, !inline_history !21229

bb.ec:                                            ; preds = %bb.ea
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %bb.ed unwind label %bb.dy, !dbg !22545, !noalias !21928, !inline_history !21229

bb.ed:                                            ; preds = %bb.ec
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab), !dbg !22545, !noalias !21928, !inline_history !21229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !22545, !noalias !21918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !22545, !noalias !21918
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit, !dbg !22559

bb.ee:                                            ; preds = %bb.eb, %bb.dx
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !22560, !noalias !21928, !inline_history !21229
  unreachable, !dbg !22560

common.resume:                                    ; preds = %bb.jr, %bb.iz, %bb.gm, %bb.ez, %bb.dx
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.iz ], [ %.pn.i, %bb.dx ], [ %.pn.i127, %bb.ez ], [ %.pn, %bb.gm ], [ %lpad.phi.i161, %bb.jr ]
  resume { ptr, i32 } %common.resume.op, !dbg !22561

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit: ; preds = %bb.dn, %bb.ed
  %.pr = load i64, ptr %i.cl, align 8, !dbg !22562
  %.not85 = icmp eq i64 %.pr, 18, !dbg !22562
  br i1 %.not85, label %bb.eg, label %bb.ef, !dbg !22544

bb.ef:                                            ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit.thread, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i64 72, i1 false), !dbg !22563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !22564
  br label %bb.kf, !dbg !22157

bb.eg:                                            ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !22564
  br label %.loopexit, !dbg !22565

bb.eh:                                            ; preds = %bb.l
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #38, !dbg !22566
  unreachable, !dbg !22566

bb.ei:                                            ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !21930
  %i.qv = getelementptr inbounds nuw i8, ptr %i.gt, i64 64, !dbg !22567 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !dbg !22567, !noundef !1205
  %.not.i123 = icmp eq ptr %i.qw, null, !dbg !22567
  %..i124 = select i1 %.not.i123, ptr null, ptr %i.qv, !dbg !22568
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i124), !dbg !21930
  %i.qx = load i64, ptr %i.cj, align 8, !dbg !22569, !range !1489, !noundef !1205
  %.not83 = icmp eq i64 %i.qx, 18, !dbg !22569
  br i1 %.not83, label %bb.ek, label %bb.ej, !dbg !22570

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i64 72, i1 false), !dbg !22571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !22572
  br label %bb.kf, !dbg !22573

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !22572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !dbg !21933
  %i.qy = getelementptr inbounds nuw i8, ptr %i.gt, i64 32, !dbg !22574
  %i.qz = load ptr, ptr %i.qy, align 8, !dbg !22575, !nonnull !1205, !noundef !1205
  %i.ra = getelementptr inbounds nuw i8, ptr %i.gt, i64 40, !dbg !22575
  %i.rb = load ptr, ptr %i.ra, align 8, !dbg !22575, !nonnull !1205, !align !1282, !noundef !1205
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.qz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.rb), !dbg !21933
  %i.rc = load i64, ptr %i.ci, align 8, !dbg !22576, !range !1489, !noundef !1205
  %.not84 = icmp eq i64 %i.rc, 18, !dbg !22576
  br i1 %.not84, label %bb.em, label %bb.el, !dbg !22577

bb.el:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ci, i64 72, i1 false), !dbg !22578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !22579
  br label %bb.kf, !dbg !22573

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !22579
  br label %.loopexit, !dbg !22580

bb.en:                                            ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #38, !dbg !22581
  unreachable, !dbg !22581

bb.eo:                                            ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hc) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !21944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !22582, !noalias !21935
  %i.rd = getelementptr inbounds nuw i8, ptr %i.hc, i64 72, !dbg !22583 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !dbg !22583, !noalias !21935, !noundef !1205
  %.not.i196 = icmp eq ptr %i.re, null, !dbg !22583
  %..i197 = select i1 %.not.i196, ptr null, ptr %i.rd, !dbg !22584
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i197), !dbg !22582, !inline_history !21276
  %i.rf = load i64, ptr %i.aa, align 8, !dbg !22585, !range !1489, !noalias !21935, !noundef !1205
  %.not.i125 = icmp eq i64 %i.rf, 18, !dbg !22585
  br i1 %.not.i125, label %bb.eq, label %bb.ep, !dbg !22586

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ck, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false), !dbg !22587, !noalias !21936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !22588, !noalias !21935
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit, !dbg !22589

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !22588, !noalias !21935
  %i.rg = getelementptr inbounds nuw i8, ptr %i.hc, i64 32, !dbg !22590
  call void @llvm.experimental.noalias.scope.decl(metadata !21938), !dbg !22591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22592, !noalias !21939
  %i.rh = getelementptr inbounds nuw i8, ptr %i.hc, i64 40, !dbg !22593 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !dbg !22593, !alias.scope !21938, !noalias !21940, !noundef !1205 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.hc, i64 48, !dbg !22594 ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !dbg !22594, !alias.scope !21938, !noalias !21940, !noundef !1205 ; 2 uses
  %.not.i193 = icmp eq i64 %i.rk, 0, !dbg !22595
  br i1 %.not.i193, label %bb.es, label %bb.er, !dbg !22595

bb.er:                                            ; preds = %bb.eq
  %i.rl = load i64, ptr %i.ri, align 8, !dbg !22595, !noalias !21939, !noundef !1205 ; 2 uses
  store i64 %i.rl, ptr %i.d, align 8, !dbg !22595, !noalias !21939
  %i.rm = icmp eq i64 %i.rl, 0, !dbg !22596
  br i1 %i.rm, label %bb.eu, label %bb.et, !dbg !22597

bb.es:                                            ; preds = %bb.eq
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38, !dbg !22595, !noalias !21939
  unreachable, !dbg !22595

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22598, !noalias !21939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22599, !noalias !21939
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rk, !dbg !22600
  store ptr %i.ri, ptr %i.a, align 8, !dbg !22601, !noalias !21939
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22601
  store ptr %i.rn, ptr %i.ro, align 8, !dbg !22601, !noalias !21939
  %i.rp = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22601
  store ptr %i.d, ptr %i.rp, align 8, !dbg !22601, !noalias !21939
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive22write_native_type_iterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterxENCINvB4_13write_offsetsxE0EEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !22598, !noalias !21941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22602, !noalias !21939
  %i.rq = load i64, ptr %i.b, align 8, !dbg !22603, !range !1489, !noalias !21939, !noundef !1205 ; 2 uses
  %.not1.i194 = icmp eq i64 %i.rq, 18, !dbg !22603
  br i1 %.not1.i194, label %bb.ew, label %bb.ev, !dbg !22604

bb.eu:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22605, !noalias !21939
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferxEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rg), !dbg !22605, !noalias !21942
  %i.rr = load i64, ptr %i.c, align 8, !dbg !22606, !range !1489, !noalias !21939, !noundef !1205 ; 2 uses
  %.not2.i195 = icmp eq i64 %i.rr, 18, !dbg !22606
  br i1 %.not2.i195, label %bb.ey, label %bb.ex, !dbg !22607

bb.ev:                                            ; preds = %bb.et
  %.sroa.8274.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8274, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8274.0..sroa_idx275, i64 64, i1 false), !dbg !22608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22609, !noalias !21939
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit.thread, !dbg !22610

bb.ew:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22609, !noalias !21939
  br label %bb.fb, !dbg !22611

bb.ex:                                            ; preds = %bb.eu
  %.sroa.8274.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8274, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8274.0..sroa_idx276, i64 64, i1 false), !dbg !22612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22613, !noalias !21939
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit.thread, !dbg !22610

bb.ey:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22613, !noalias !21939
  br label %bb.fb, !dbg !22611

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit.thread: ; preds = %bb.ev, %bb.ex
  %.sroa.0271.0 = phi i64 [ %i.rq, %bb.ev ], [ %i.rr, %bb.ex ], !dbg !22614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22615, !noalias !21939
  store i64 %.sroa.0271.0, ptr %i.ck, align 8, !dbg !22616, !noalias !21936
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8, !dbg !22616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4287.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8274, i64 64, i1 false), !dbg !22616
  br label %bb.fh, !dbg !22617

bb.ez:                                            ; preds = %bb.fd, %bb.fa
  %.pn.i127 = phi { ptr, i32 } [ %i.rs, %bb.fa ], [ %i.si, %bb.fd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #33
          to label %common.resume unwind label %bb.fg, !dbg !22618, !noalias !21945, !inline_history !21276

bb.fa:                                            ; preds = %bb.fe, %bb.fb
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fb:                                            ; preds = %bb.ey, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22615, !noalias !21939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !22619, !noalias !21935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !22619, !noalias !21935
  %i.rt = getelementptr inbounds nuw i8, ptr %i.hc, i64 56, !dbg !22620
  %i.ru = call { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.rt), !dbg !22621, !inline_history !21276 ; 2 uses
  %i.rv = extractvalue { ptr, ptr } %i.ru, 0, !dbg !22621 ; 2 uses
  %i.rw = extractvalue { ptr, ptr } %i.ru, 1, !dbg !22621 ; 2 uses
  store ptr %i.rv, ptr %i.y, align 8, !dbg !22621, !noalias !21935
  %i.rx = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !22621
  store ptr %i.rw, ptr %i.rx, align 8, !dbg !22621, !noalias !21935
  %.val4.i128 = load ptr, ptr %i.rh, align 8, !dbg !22622 ; 2 uses
  %.val5.i129 = load i64, ptr %i.rj, align 8, !dbg !22622, !noundef !1205 ; 2 uses
  %.val3.i130 = load i64, ptr %.val4.i128, align 8, !dbg !22623, !noalias !21945, !noundef !1205 ; 2 uses
  %.not.i190 = icmp ne i64 %.val5.i129, 0, !dbg !22624
  call void @llvm.assume(i1 %.not.i190), !dbg !22624, !noalias !21945
  %i.ry = getelementptr [8 x i8], ptr %.val4.i128, i64 %.val5.i129, !dbg !22625
  %i.rz = getelementptr i8, ptr %i.ry, i64 -8, !dbg !22625
  %i.sa = load i64, ptr %i.rz, align 8, !dbg !22626, !noalias !21945, !noundef !1205
  %i.sb = sub i64 %i.sa, %.val3.i130, !dbg !22627
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rw, i64 160, !dbg !22619
  %i.sd = load ptr, ptr %i.sc, align 8, !dbg !22619, !invariant.load !1205, !noalias !21945, !nonnull !1205
  %i.se = invoke { ptr, ptr } %i.sd(ptr noundef %i.rv, i64 noundef %.val3.i130, i64 noundef %i.sb)
          to label %bb.fc unwind label %bb.fa, !dbg !22628, !noalias !21945, !inline_history !21276 ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.sf = extractvalue { ptr, ptr } %i.se, 0, !dbg !22619 ; 2 uses
  %i.sg = extractvalue { ptr, ptr } %i.se, 1, !dbg !22619 ; 2 uses
  store ptr %i.sf, ptr %i.z, align 8, !dbg !22619, !noalias !21935
  %i.sh = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !22619
  store ptr %i.sg, ptr %i.sh, align 8, !dbg !22619, !noalias !21935
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.sf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.sg)
          to label %bb.fe unwind label %bb.fd, !dbg !22629, !inline_history !21276

bb.fd:                                            ; preds = %bb.fc
  %i.si = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #33
          to label %bb.ez unwind label %bb.fg, !dbg !22618, !noalias !21945, !inline_history !21276

bb.fe:                                            ; preds = %bb.fc
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.ff unwind label %bb.fa, !dbg !22618, !noalias !21945, !inline_history !21276

bb.ff:                                            ; preds = %bb.fe
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !dbg !22618, !noalias !21945, !inline_history !21276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !22618, !noalias !21935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !22618, !noalias !21935
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit, !dbg !22630

bb.fg:                                            ; preds = %bb.fd, %bb.ez
  %i.sj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !22631, !noalias !21945, !inline_history !21276
  unreachable, !dbg !22631

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit: ; preds = %bb.ep, %bb.ff
  %.pr304 = load i64, ptr %i.ck, align 8, !dbg !22632
  %.not82 = icmp eq i64 %.pr304, 18, !dbg !22632
  br i1 %.not82, label %bb.fi, label %bb.fh, !dbg !22617

bb.fh:                                            ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit.thread, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i64 72, i1 false), !dbg !22633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !22634
  br label %bb.kf, !dbg !22157

bb.fi:                                            ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !22634
  br label %.loopexit, !dbg !22635

bb.fj:                                            ; preds = %bb.n
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #38, !dbg !22636
  unreachable, !dbg !22636

bb.fk:                                            ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !21947
  %i.sk = getelementptr inbounds nuw i8, ptr %i.hl, i64 64, !dbg !22637 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !dbg !22637, !noundef !1205
  %.not.i134 = icmp eq ptr %i.sl, null, !dbg !22637
  %..i135 = select i1 %.not.i134, ptr null, ptr %i.sk, !dbg !22638
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i135), !dbg !21947
  %i.sm = load i64, ptr %i.ch, align 8, !dbg !22639, !range !1489, !noundef !1205
  %.not80 = icmp eq i64 %i.sm, 18, !dbg !22639
  br i1 %.not80, label %bb.fm, label %bb.fl, !dbg !22640

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ch, i64 72, i1 false), !dbg !22641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !22642
  br label %bb.kf, !dbg !22643

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !22642
  %i.sn = getelementptr i8, ptr %i.hl, i64 8, !dbg !22644
  %.val = load ptr, ptr %i.sn, align 8, !dbg !22644, !nonnull !1205, !noundef !1205 ; 2 uses
  %i.so = getelementptr i8, ptr %i.hl, i64 16, !dbg !22644
  %.val107 = load i64, ptr %i.so, align 8, !dbg !22644, !noundef !1205 ; 2 uses
  %.idx323 = shl nuw nsw i64 %.val107, 4, !dbg !22645
  %i.sp = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx323, !dbg !22645
  %i.sq = icmp eq i64 %.val107, 0, !dbg !22646
  br i1 %i.sq, label %.loopexit, label %.lr.ph322, !dbg !21955

.lr.ph322:                                        ; preds = %bb.fm, %bb.fo
  %.sroa.028.0321 = phi ptr [ %i.sv, %bb.fo ], [ %.val, %bb.fm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !dbg !21957
  %i.sr = load ptr, ptr %.sroa.028.0321, align 8, !dbg !22647, !nonnull !1205, !noundef !1205
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.028.0321, i64 8, !dbg !22647
  %i.st = load ptr, ptr %i.ss, align 8, !dbg !22647, !nonnull !1205, !align !1282, !noundef !1205
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.sr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.st), !dbg !21957
  %i.su = load i64, ptr %i.cg, align 8, !dbg !22648, !range !1489, !noundef !1205
  %.not81 = icmp eq i64 %i.su, 18, !dbg !22648
  br i1 %.not81, label %bb.fo, label %bb.fn, !dbg !22649

bb.fn:                                            ; preds = %.lr.ph322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i64 72, i1 false), !dbg !22650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !22651
  br label %bb.kf, !dbg !22643

bb.fo:                                            ; preds = %.lr.ph322
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.028.0321, i64 16, !dbg !22652 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !22651
  %i.sw = icmp eq ptr %i.sv, %i.sp, !dbg !22646
  br i1 %i.sw, label %.loopexit, label %.lr.ph322, !dbg !21955

bb.fp:                                            ; preds = %bb.o
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #38, !dbg !22653
  unreachable, !dbg !22653

bb.fq:                                            ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hu) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !21960
  %i.sx = getelementptr inbounds nuw i8, ptr %i.hu, i64 1088, !dbg !22654
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferaEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sx), !dbg !21960
  %i.sy = load i64, ptr %i.br, align 8, !dbg !22655, !range !1489, !noundef !1205
  %.not76 = icmp eq i64 %i.sy, 18, !dbg !22655
  br i1 %.not76, label %bb.fs, label %bb.fr, !dbg !22656

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.br, i64 72, i1 false), !dbg !22657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !22658
  br label %bb.kf, !dbg !22659

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !22658
  %i.sz = getelementptr inbounds nuw i8, ptr %i.hu, i64 1112, !dbg !22660 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !dbg !22660, !alias.scope !21962, !noundef !1205
  %.not.i136 = icmp eq ptr %i.ta, null, !dbg !22660
  br i1 %.not.i136, label %bb.fw, label %bb.ft, !dbg !22661

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !21963
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferlEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sz), !dbg !21963
  %i.tb = load i64, ptr %i.bq, align 8, !dbg !22662, !range !1489, !noundef !1205
  %.not78 = icmp eq i64 %i.tb, 18, !dbg !22662
  br i1 %.not78, label %bb.fv, label %bb.fu, !dbg !22663

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i64 72, i1 false), !dbg !22664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !22665
  br label %bb.kf, !dbg !22659

bb.fv:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !22665
  br label %bb.fw, !dbg !22666

bb.fw:                                            ; preds = %bb.fs, %bb.fv
  %i.tc = getelementptr inbounds nuw i8, ptr %i.hu, i64 1040, !dbg !22667
  %i.td = load ptr, ptr %i.tc, align 8, !dbg !22667, !nonnull !1205, !noundef !1205 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.hu, i64 1048, !dbg !22668
  %i.tf = load i64, ptr %i.te, align 8, !dbg !22668, !noundef !1205 ; 2 uses
  %.idx = shl nuw nsw i64 %i.tf, 4, !dbg !22669
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 %.idx, !dbg !22669
  %i.th = icmp eq i64 %i.tf, 0, !dbg !22670
  br i1 %i.th, label %.loopexit, label %.lr.ph, !dbg !22671

.lr.ph:                                           ; preds = %bb.fw, %bb.fy
  %.sroa.054.0320 = phi ptr [ %i.tm, %bb.fy ], [ %i.td, %bb.fw ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !21982
  %i.ti = load ptr, ptr %.sroa.054.0320, align 8, !dbg !22672, !nonnull !1205, !noundef !1205
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.054.0320, i64 8, !dbg !22672
  %i.tk = load ptr, ptr %i.tj, align 8, !dbg !22672, !nonnull !1205, !align !1282, !noundef !1205
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.ti, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.tk), !dbg !21982
  %i.tl = load i64, ptr %i.bp, align 8, !dbg !22673, !range !1489, !noundef !1205
  %.not79 = icmp eq i64 %i.tl, 18, !dbg !22673
  br i1 %.not79, label %bb.fy, label %bb.fx, !dbg !22674

bb.fx:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bp, i64 72, i1 false), !dbg !22675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !22676
  br label %bb.kf, !dbg !22659

bb.fy:                                            ; preds = %.lr.ph
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.054.0320, i64 16, !dbg !22677 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !22676
  %i.tn = icmp eq ptr %i.tm, %i.tg, !dbg !22670
  br i1 %i.tn, label %.loopexit, label %.lr.ph, !dbg !22671

bb.fz:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #38, !dbg !22678
  unreachable, !dbg !22678

bb.ga:                                            ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.id) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !21985
  %i.to = getelementptr inbounds nuw i8, ptr %i.id, i64 72, !dbg !22679 ; 2 uses
  %i.tp = load ptr, ptr %i.to, align 8, !dbg !22679, !noundef !1205
  %.not.i138 = icmp eq ptr %i.tp, null, !dbg !22679
  %..i139 = select i1 %.not.i138, ptr null, ptr %i.to, !dbg !22680
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i139), !dbg !21985
  %i.tq = load i64, ptr %i.bv, align 8, !dbg !22681, !range !1489, !noundef !1205
  %.not72 = icmp eq i64 %i.tq, 18, !dbg !22681
  br i1 %.not72, label %bb.gc, label %bb.gb, !dbg !22682

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bv, i64 72, i1 false), !dbg !22683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !22684
  br label %bb.kf, !dbg !22685

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !22684
  %i.tr = getelementptr inbounds nuw i8, ptr %i.id, i64 32, !dbg !22686
  call void @llvm.experimental.noalias.scope.decl(metadata !21987), !dbg !22687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !22688, !noalias !21988
  %i.ts = getelementptr inbounds nuw i8, ptr %i.id, i64 40, !dbg !22689 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !dbg !22689, !alias.scope !21987, !noalias !21989, !noundef !1205 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.id, i64 48, !dbg !22690 ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !dbg !22690, !alias.scope !21987, !noalias !21989, !noundef !1205 ; 2 uses
  %.not.i140 = icmp eq i64 %i.tv, 0, !dbg !22691
  br i1 %.not.i140, label %bb.ge, label %bb.gd, !dbg !22691

bb.gd:                                            ; preds = %bb.gc
  %i.tw = load i32, ptr %i.tt, align 4, !dbg !22691, !noalias !21988, !noundef !1205 ; 2 uses
  store i32 %i.tw, ptr %i.x, align 4, !dbg !22691, !noalias !21988
  %i.tx = icmp eq i32 %i.tw, 0, !dbg !22692
  br i1 %i.tx, label %bb.gg, label %bb.gf, !dbg !22693

bb.ge:                                            ; preds = %bb.gc
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38, !dbg !22691, !noalias !21988
  unreachable, !dbg !22691

bb.gf:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !22694, !noalias !21988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !22695, !noalias !21988
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.tv, !dbg !22696
  store ptr %i.tt, ptr %i.u, align 8, !dbg !22697, !noalias !21988
  %i.tz = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !22697
  store ptr %i.ty, ptr %i.tz, align 8, !dbg !22697, !noalias !21988
  %i.ua = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !22697
  store ptr %i.x, ptr %i.ua, align 8, !dbg !22697, !noalias !21988
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive22write_native_type_iterlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterlENCINvB4_13write_offsetslE0EEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u), !dbg !22694, !noalias !21990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !22698, !noalias !21988
  %i.ub = load i64, ptr %i.v, align 8, !dbg !22699, !range !1489, !noalias !21988, !noundef !1205 ; 2 uses
  %.not1.i141 = icmp eq i64 %i.ub, 18, !dbg !22699
  br i1 %.not1.i141, label %bb.gi, label %bb.gh, !dbg !22700

bb.gg:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !22701, !noalias !21988
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferlEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tr), !dbg !22701, !noalias !21991
  %i.uc = load i64, ptr %i.w, align 8, !dbg !22702, !range !1489, !noalias !21988, !noundef !1205 ; 2 uses
  %.not2.i = icmp eq i64 %i.uc, 18, !dbg !22702
  br i1 %.not2.i, label %bb.gk, label %bb.gj, !dbg !22703

bb.gh:                                            ; preds = %bb.gf
  %.sroa.8.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !22704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.0..sroa_idx215, i64 64, i1 false), !dbg !22704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !22705, !noalias !21988
  br label %bb.gl, !dbg !22706

bb.gi:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !22705, !noalias !21988
  br label %bb.go, !dbg !22707

bb.gj:                                            ; preds = %bb.gg
  %.sroa.8.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !22708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.0..sroa_idx216, i64 64, i1 false), !dbg !22708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !22709, !noalias !21988
  br label %bb.gl, !dbg !22706

bb.gk:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !22709, !noalias !21988
  br label %bb.go, !dbg !22707

bb.gl:                                            ; preds = %bb.gj, %bb.gh
  %.sroa.0212.0 = phi i64 [ %i.ub, %bb.gh ], [ %i.uc, %bb.gj ], !dbg !22710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !22711, !noalias !21988
  store i64 %.sroa.0212.0, ptr %0, align 8, !dbg !22712
  %.sroa.2253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2253.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, i64 64, i1 false), !dbg !22712
  br label %bb.kf, !dbg !22685

bb.gm:                                            ; preds = %bb.gq, %bb.gn
  %.pn = phi { ptr, i32 } [ %i.ud, %bb.gn ], [ %i.uw, %bb.gq ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bs) #33
          to label %common.resume unwind label %bb.gw, !dbg !22713

bb.gn:                                            ; preds = %bb.gt, %bb.gs, %bb.go
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.go:                                            ; preds = %bb.gk, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !22711, !noalias !21988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !21994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !22714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !22714
  %i.ue = getelementptr inbounds nuw i8, ptr %i.id, i64 56, !dbg !22715
  %i.uf = call { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ue), !dbg !22716 ; 2 uses
  %i.ug = extractvalue { ptr, ptr } %i.uf, 0, !dbg !22716 ; 2 uses
  %i.uh = extractvalue { ptr, ptr } %i.uf, 1, !dbg !22716 ; 2 uses
  store ptr %i.ug, ptr %i.bs, align 8, !dbg !22716
  %i.ui = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !22716
  store ptr %i.uh, ptr %i.ui, align 8, !dbg !22716
  %.val108 = load ptr, ptr %i.ts, align 8, !dbg !22717 ; 2 uses
  %.val109 = load i64, ptr %i.tu, align 8, !dbg !22717, !noundef !1205 ; 2 uses
  %i.uj = load i32, ptr %.val108, align 4, !dbg !22718, !noundef !1205 ; 2 uses
  %i.uk = sext i32 %i.uj to i64, !dbg !22718
  %.not.i143 = icmp ne i64 %.val109, 0, !dbg !22719
  call void @llvm.assume(i1 %.not.i143), !dbg !22719
  %i.ul = getelementptr [4 x i8], ptr %.val108, i64 %.val109, !dbg !22720
  %i.um = getelementptr i8, ptr %i.ul, i64 -4, !dbg !22720
  %i.un = load i32, ptr %i.um, align 4, !dbg !22721, !noundef !1205
  %i.uo = sub i32 %i.un, %i.uj, !dbg !22722
  %i.up = sext i32 %i.uo to i64, !dbg !22723
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uh, i64 160, !dbg !22714
  %i.ur = load ptr, ptr %i.uq, align 8, !dbg !22714, !invariant.load !1205, !nonnull !1205
  %i.us = invoke { ptr, ptr } %i.ur(ptr noundef %i.ug, i64 noundef %i.uk, i64 noundef %i.up)
          to label %bb.gp unwind label %bb.gn, !dbg !22724 ; 2 uses

bb.gp:                                            ; preds = %bb.go
  %i.ut = extractvalue { ptr, ptr } %i.us, 0, !dbg !22714 ; 2 uses
  %i.uu = extractvalue { ptr, ptr } %i.us, 1, !dbg !22714 ; 2 uses
  store ptr %i.ut, ptr %i.bt, align 8, !dbg !22714
  %i.uv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !22714
  store ptr %i.uu, ptr %i.uv, align 8, !dbg !22714
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.ut, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.uu)
          to label %bb.gr unwind label %bb.gq, !dbg !21994

bb.gq:                                            ; preds = %bb.gp
  %i.uw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt) #33
          to label %bb.gm unwind label %bb.gw, !dbg !22713

bb.gr:                                            ; preds = %bb.gp
  %i.ux = load i64, ptr %i.bu, align 8, !dbg !22725, !range !1489, !noundef !1205
  %.not74 = icmp eq i64 %i.ux, 18, !dbg !22725
  br i1 %.not74, label %bb.gt, label %bb.gs, !dbg !22726

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i64 72, i1 false), !dbg !22727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !22728
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %bb.gv unwind label %bb.gn, !dbg !22713

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !22728
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %bb.gu unwind label %bb.gn, !dbg !22713

bb.gu:                                            ; preds = %bb.gt
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bs), !dbg !22713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !22713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !22713
  br label %.loopexit, !dbg !22729

bb.gv:                                            ; preds = %bb.gs
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bs), !dbg !22713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !22713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !22713
  br label %bb.kf, !dbg !22685

bb.gw:                                            ; preds = %bb.gq, %bb.gm
  %i.uy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !22730
  unreachable, !dbg !22730

bb.gx:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !22731
  %i.uz = load ptr, ptr %i.io, align 8, !dbg !22732, !invariant.load !1205, !nonnull !1205
  call void %i.uz(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ap, ptr noundef %i.im) #35, !dbg !22733
  %i.va = load i128, ptr %i.ap, align 16, !dbg !22734, !noundef !1205
  %i.vb = icmp eq i128 %i.va, -5830694774350066569479336670403903901, !dbg !22735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !22731
  br i1 %i.vb, label %bb.hi, label %bb.hh, !dbg !22736, !prof !1402

bb.gy:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !22737
  %i.vc = load ptr, ptr %i.io, align 8, !dbg !22738, !invariant.load !1205, !nonnull !1205
  call void %i.vc(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ao, ptr noundef %i.im) #35, !dbg !22739
  %i.vd = load i128, ptr %i.ao, align 16, !dbg !22740, !noundef !1205
  %i.ve = icmp eq i128 %i.vd, 27132497755702643404863895383699955283, !dbg !22741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !22737
  br i1 %i.ve, label %bb.hm, label %bb.hl, !dbg !22742, !prof !1402

bb.gz:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !22743
  %i.vf = load ptr, ptr %i.io, align 8, !dbg !22744, !invariant.load !1205, !nonnull !1205
  call void %i.vf(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.im) #35, !dbg !22745
  %i.vg = load i128, ptr %i.an, align 16, !dbg !22746, !noundef !1205
  %i.vh = icmp eq i128 %i.vg, 160452689115335791709949904059019652018, !dbg !22747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !22743
  br i1 %i.vh, label %bb.hq, label %bb.hp, !dbg !22748, !prof !1402

bb.ha:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !22749
  %i.vi = load ptr, ptr %i.io, align 8, !dbg !22750, !invariant.load !1205, !nonnull !1205
  call void %i.vi(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noundef %i.im) #35, !dbg !22751
  %i.vj = load i128, ptr %i.am, align 16, !dbg !22752, !noundef !1205
  %i.vk = icmp eq i128 %i.vj, -83033297447238617027709008292084983601, !dbg !22753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !22749
  br i1 %i.vk, label %bb.hu, label %bb.ht, !dbg !22754, !prof !1402

bb.hb:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !22755
  %i.vl = load ptr, ptr %i.io, align 8, !dbg !22756, !invariant.load !1205, !nonnull !1205
  call void %i.vl(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.al, ptr noundef %i.im) #35, !dbg !22757
  %i.vm = load i128, ptr %i.al, align 16, !dbg !22758, !noundef !1205
  %i.vn = icmp eq i128 %i.vm, -79567872869666118122057049354932385798, !dbg !22759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !22755
  br i1 %i.vn, label %bb.hy, label %bb.hx, !dbg !22760, !prof !1402

bb.hc:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !22761
  %i.vo = load ptr, ptr %i.io, align 8, !dbg !22762, !invariant.load !1205, !nonnull !1205
  call void %i.vo(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noundef %i.im) #35, !dbg !22763
  %i.vp = load i128, ptr %i.ak, align 16, !dbg !22764, !noundef !1205
  %i.vq = icmp eq i128 %i.vp, -113391613738054949967857654799559769774, !dbg !22765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !22761
  br i1 %i.vq, label %bb.ic, label %bb.ib, !dbg !22766, !prof !1402

bb.hd:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !22767
  %i.vr = load ptr, ptr %i.io, align 8, !dbg !22768, !invariant.load !1205, !nonnull !1205
  call void %i.vr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aj, ptr noundef %i.im) #35, !dbg !22769
  %i.vs = load i128, ptr %i.aj, align 16, !dbg !22770, !noundef !1205
  %i.vt = icmp eq i128 %i.vs, 18797521915907098643294314021360084390, !dbg !22771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !22767
  br i1 %i.vt, label %bb.ig, label %bb.if, !dbg !22772, !prof !1402

bb.he:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !22773
  %i.vu = load ptr, ptr %i.io, align 8, !dbg !22774, !invariant.load !1205, !nonnull !1205
  call void %i.vu(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ai, ptr noundef %i.im) #35, !dbg !22775
  %i.vv = load i128, ptr %i.ai, align 16, !dbg !22776, !noundef !1205
  %i.vw = icmp eq i128 %i.vv, -51591433819259487535960010181102901108, !dbg !22777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !22773
  br i1 %i.vw, label %bb.ik, label %bb.ij, !dbg !22778, !prof !1402

bb.hf:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !22779
  %i.vx = load ptr, ptr %i.io, align 8, !dbg !22780, !invariant.load !1205, !nonnull !1205
  call void %i.vx(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noundef %i.im) #35, !dbg !22781
  %i.vy = load i128, ptr %i.ah, align 16, !dbg !22782, !noundef !1205
  %i.vz = icmp eq i128 %i.vy, 109584974891319700296213729814005503112, !dbg !22783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !22779
  br i1 %i.vz, label %bb.io, label %bb.in, !dbg !22784, !prof !1402

bb.hg:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !22785
  %i.wa = load ptr, ptr %i.io, align 8, !dbg !22786, !invariant.load !1205, !nonnull !1205
  call void %i.wa(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noundef %i.im) #35, !dbg !22787
  %i.wb = load i128, ptr %i.ag, align 16, !dbg !22788, !noundef !1205
  %i.wc = icmp eq i128 %i.wb, -122317696756225537688055001992707825967, !dbg !22789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !22785
  br i1 %i.wc, label %bb.is, label %bb.ir, !dbg !22790, !prof !1402

bb.hh:                                            ; preds = %bb.gx
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #38, !dbg !22791
  unreachable, !dbg !22791

bb.hi:                                            ; preds = %bb.gx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.im) ]
  %i.wd = getelementptr inbounds nuw i8, ptr %i.im, i64 32, !dbg !22792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !22085
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive15write_primitiveaEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 %i.wd), !dbg !22085
  %i.we = load i64, ptr %i.cf, align 8, !dbg !22793, !range !1489, !noundef !1205
  %.not71 = icmp eq i64 %i.we, 18, !dbg !22793
  br i1 %.not71, label %bb.hk, label %bb.hj, !dbg !22794

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cf, i64 72, i1 false), !dbg !22795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !22796
  br label %bb.kf, !dbg !22797

bb.hk:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !22796
  br label %.loopexit, !dbg !22798

bb.hl:                                            ; preds = %bb.gy
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #38, !dbg !22799
  unreachable, !dbg !22799

bb.hm:                                            ; preds = %bb.gy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.im) ]
  %i.wf = getelementptr inbounds nuw i8, ptr %i.im, i64 32, !dbg !22800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !22801
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive15write_primitivesEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 %i.wf), !dbg !22801
  %i.wg = load i64, ptr %i.ce, align 8, !dbg !22802, !range !1489, !noundef !1205
  %.not70 = icmp eq i64 %i.wg, 18, !dbg !22802
  br i1 %.not70, label %bb.ho, label %bb.hn, !dbg !22803

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ce, i64 72, i1 false), !dbg !22804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !22805
  br label %bb.kf, !dbg !22797

bb.ho:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !22805
  br label %.loopexit, !dbg !22798

bb.hp:                                            ; preds = %bb.gz
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #38, !dbg !22806
  unreachable, !dbg !22806

bb.hq:                                            ; preds = %bb.gz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.im) ]
  %i.wh = getelementptr inbounds nuw i8, ptr %i.im, i64 32, !dbg !22807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !22808
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive15write_primitivelEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 %i.wh), !dbg !22808
end_hunk_1
