Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagecache?download=true
inline.NumInlined: 13633
inline.NumDeleted: 4658
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheImpl14get_image_infoEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEiiNS0_7ustringENS0_8TypeDescEPv:bb.a
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !199
  %i.pn = add i32 %i.pk, -1
  %i.po = add i32 %i.pn, %i.pm
  %i.pp = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.po, ptr %i.pp, align 4, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge9:                                       ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit361.thread, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit360.thread
  %i.pq = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_115s_displaywindowE.0, align 8, !tbaa !114
  %i.pr = icmp eq ptr %5, %i.pq
  %or.cond15 = select i1 %i.pr, i1 %i.gp, i1 false
  br i1 %or.cond15, label %bb.cc, label %.critedge17

bb.cc:                                            ; preds = %.critedge9
  %or.cond647 = select i1 %i.gr, i1 %i.gt, i1 false ; 2 uses
  %i.ps = icmp eq i32 %i.gu, 4
  %or.cond650 = select i1 %or.cond647, i1 %i.ps, i1 false
  br i1 %or.cond650, label %bb.cd, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit363.thread

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit363.thread: ; preds = %bb.cc
  %i.pt = icmp eq i32 %i.gu, 6
  %or.cond656 = select i1 %or.cond647, i1 %i.pt, i1 false
  br i1 %or.cond656, label %.critedge19, label %.critedge17.thread

bb.cd:                                            ; preds = %bb.cc
  %i.pu = getelementptr inbounds nuw i8, ptr %i.lu, i64 24 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !190
  store i32 %i.pv, ptr %7, align 4, !tbaa !106
  %i.pw = getelementptr inbounds nuw i8, ptr %i.lu, i64 28 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !192
  %i.py = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.px, ptr %i.py, align 4, !tbaa !106
  %i.pz = load i32, ptr %i.pu, align 4, !tbaa !190
  %i.qa = getelementptr inbounds nuw i8, ptr %i.lu, i64 36
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !196
  %i.qc = add i32 %i.pz, -1
  %i.qd = add i32 %i.qc, %i.qb
  %i.qe = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.qd, ptr %i.qe, align 4, !tbaa !106
  %i.qf = load i32, ptr %i.pw, align 4, !tbaa !192
  %i.qg = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !198
  %i.qi = add i32 %i.qf, -1
  %i.qj = add i32 %i.qi, %i.qh
  %i.qk = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge19:                                      ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit363.thread
  %i.ql = getelementptr inbounds nuw i8, ptr %i.lu, i64 24 ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !190
  store i32 %i.qm, ptr %7, align 4, !tbaa !106
  %i.qn = getelementptr inbounds nuw i8, ptr %i.lu, i64 28 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !192
  %i.qp = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.qo, ptr %i.qp, align 4, !tbaa !106
  %i.qq = getelementptr inbounds nuw i8, ptr %i.lu, i64 32 ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !194
  %i.qs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !106
  %i.qt = load i32, ptr %i.ql, align 4, !tbaa !190
  %i.qu = getelementptr inbounds nuw i8, ptr %i.lu, i64 36
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !196
  %i.qw = add i32 %i.qt, -1
  %i.qx = add i32 %i.qw, %i.qv
  %i.qy = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.qx, ptr %i.qy, align 4, !tbaa !106
  %i.qz = load i32, ptr %i.qn, align 4, !tbaa !192
  %i.ra = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !198
  %i.rc = add i32 %i.qz, -1
  %i.rd = add i32 %i.rc, %i.rb
  %i.re = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.rd, ptr %i.re, align 4, !tbaa !106
  %i.rf = load i32, ptr %i.qq, align 4, !tbaa !194
  %i.rg = getelementptr inbounds nuw i8, ptr %i.lu, i64 44
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !200
  %i.ri = add i32 %i.rf, -1
  %i.rj = add i32 %i.ri, %i.rh
  %i.rk = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge17:                                      ; preds = %.critedge9
  %i.rl = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114s_averagecolorE.0, align 8, !tbaa !114
  %i.rm = icmp eq ptr %5, %i.rl
  %i.rn = icmp eq i8 %i.go, 11                    ; 2 uses
  %or.cond23 = select i1 %i.rm, i1 %i.rn, i1 false
  br i1 %or.cond23, label %bb.ce, label %.critedge17.thread

bb.ce:                                            ; preds = %.critedge17
  %narrow.i365 = call i32 @llvm.smax.i32(i32 %i.gu, i32 1)
  %i.ro = zext i8 %i.gq to i32
  %i.rp = mul i32 %narrow.i365, %i.ro
  %i.rq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile17get_average_colorEPfiii(ptr noundef nonnull align 8 dereferenceable(400) %i.i, ptr noundef %7, i32 noundef %3, i32 noundef 0, i32 noundef %i.rp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge17.thread:                               ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit363.thread, %.critedge17
  %i.rr = phi i1 [ %i.rn, %.critedge17 ], [ false, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit363.thread ]
  %i.rs = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114s_averagealphaE.0, align 8, !tbaa !114
  %i.rt = icmp eq ptr %5, %i.rs
  br i1 %i.rt, label %bb.cf, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit369.thread

bb.cf:                                            ; preds = %.critedge17.thread
  %i.ru = icmp eq i8 %i.go, 11
  %or.cond.i367 = select i1 %i.ru, i1 %i.gr, i1 false
  %or.cond658 = select i1 %or.cond.i367, i1 %i.gv, i1 false
  br i1 %or.cond658, label %bb.cg, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit369.thread

bb.cg:                                            ; preds = %bb.cf
  %i.rv = getelementptr inbounds nuw i8, ptr %i.lq, i64 120
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !404 ; 3 uses
  %i.rx = icmp sgt i32 %i.rw, -1
  br i1 %i.rx, label %bb.ch, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit369.thread

bb.ch:                                            ; preds = %bb.cg
  %i.ry = add nuw nsw i32 %i.rw, 1
  %i.rz = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile17get_average_colorEPfiii(ptr noundef nonnull align 8 dereferenceable(400) %i.i, ptr noundef %7, i32 noundef %3, i32 noundef %i.rw, i32 noundef %i.ry)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit369.thread: ; preds = %bb.cf, %bb.cg, %.critedge17.thread
  %i.sa = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_115s_constantcolorE.0, align 8, !tbaa !114
  %i.sb = icmp eq ptr %5, %i.sa
  %or.cond27 = select i1 %i.sb, i1 %i.rr, i1 false
  br i1 %or.cond27, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit369.thread
  %i.sc = getelementptr inbounds nuw i8, ptr %i.kp, i64 45
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !391, !range !395, !noundef !326
  %i.se = trunc nuw i8 %i.sd to i1
  br i1 %i.se, label %bb.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.cj:                                            ; preds = %bb.ci
  %narrow.i370 = call i32 @llvm.smax.i32(i32 %i.gu, i32 1)
  %i.sf = zext i8 %i.gq to i32
  %i.sg = mul i32 %narrow.i370, %i.sf
  %i.sh = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile17get_average_colorEPfiii(ptr noundef nonnull align 8 dereferenceable(400) %i.i, ptr noundef %7, i32 noundef %3, i32 noundef 0, i32 noundef %i.sg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ck:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit369.thread
  %i.si = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_115s_constantalphaE.0, align 8, !tbaa !114
  %i.sj = icmp eq ptr %5, %i.si
  br i1 %i.sj, label %bb.cl, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit374.thread

bb.cl:                                            ; preds = %bb.ck
  %i.sk = icmp eq i8 %i.go, 11
  %or.cond.i372 = select i1 %i.sk, i1 %i.gr, i1 false
  %or.cond660 = select i1 %or.cond.i372, i1 %i.gv, i1 false
  br i1 %or.cond660, label %bb.cm, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit374.thread

bb.cm:                                            ; preds = %bb.cl
  %i.sl = getelementptr inbounds nuw i8, ptr %i.lq, i64 120
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !404 ; 3 uses
  %i.sn = icmp sgt i32 %i.sm, -1
  br i1 %i.sn, label %bb.cn, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit374.thread

bb.cn:                                            ; preds = %bb.cm
  %i.so = getelementptr inbounds nuw i8, ptr %i.kp, i64 45
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !391, !range !395, !noundef !326
  %i.sq = trunc nuw i8 %i.sp to i1
  br i1 %i.sq, label %bb.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.co:                                            ; preds = %bb.cn
  %i.sr = add nuw nsw i32 %i.sm, 1
  %i.ss = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile17get_average_colorEPfiii(ptr noundef nonnull align 8 dereferenceable(400) %i.i, ptr noundef %7, i32 noundef %3, i32 noundef %i.sm, i32 noundef %i.sr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit374.thread: ; preds = %bb.cl, %bb.cm, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #5
  store ptr null, ptr %18, align 8, !tbaa !114
  %i.st = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.st, align 8, !tbaa !385
  %i.su = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 1, ptr %i.su, align 1, !tbaa !400
  %i.sv = getelementptr inbounds nuw i8, ptr %18, i64 10
  %i.sw = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.sv, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.sw, i8 0, i64 7, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit377, label %bb.cp

bb.cp:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit374.thread
  %i.sx = getelementptr inbounds i8, ptr %5, i64 -24
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !292, !noalias !1528
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit377

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit377: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit374.thread, %bb.cp
  %.0.i.i376 = phi i64 [ %i.sy, %bb.cp ], [ 0, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit374.thread ]
  store ptr %5, ptr %19, align 8, !tbaa !111, !alias.scope !1528
  %i.sz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %.0.i.i376, ptr %i.sz, align 8, !tbaa !112, !alias.scope !1528
  %i.ta = invoke noundef ptr @_ZNK11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_10ParamValueENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.lq, ptr noundef nonnull dead_on_return %19, ptr noundef nonnull align 8 dereferenceable(39) %18, i64 256, i1 noundef zeroext false)
          to label %bb.cq unwind label %bb.cu     ; 6 uses

bb.cq:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit377
  %.not261 = icmp eq ptr %i.ta, null
  br i1 %.not261, label %.critedge29, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i378 = load i64, ptr %i.tb, align 8 ; 5 uses
  %.sroa.4.0.extract.shift391 = lshr i64 %.sroa.0.0.copyload.i378, 8
  %.sroa.5393.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i378, 32
  %.sroa.5393.0.extract.trunc = trunc nuw i64 %.sroa.5393.0.extract.shift to i32
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %.sroa.5393.0.extract.trunc, i32 1) ; 2 uses
  %spec.select.i.i379 = zext nneg i32 %narrow.i.i to i64
  %i.tc = and i64 %.sroa.4.0.extract.shift391, 255
  %i.td = mul nuw nsw i64 %i.tc, %spec.select.i.i379 ; 2 uses
  %i.te = load i32, ptr %i.n, align 4, !tbaa !386
  %narrow.i.i380 = call i32 @llvm.smax.i32(i32 %i.te, i32 1)
  %spec.select.i.i381 = zext nneg i32 %narrow.i.i380 to i64
  %i.tf = load i8, ptr %i.l, align 1, !tbaa !400
  %i.tg = zext i8 %i.tf to i64
  %i.th = mul nuw nsw i64 %spec.select.i.i381, %i.tg
  %i.ti = icmp eq i64 %i.td, %i.th
  br i1 %i.ti, label %bb.cs, label %.critedge29

bb.cs:                                            ; preds = %bb.cr
  %i.tj = load i8, ptr %9, align 8, !tbaa !385    ; 2 uses
  %i.tk = trunc i64 %.sroa.0.0.copyload.i378 to i8
  %i.tl = icmp eq i8 %i.tj, %i.tk
  br i1 %i.tl, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ta, i64 38
  %i.tn = load i8, ptr %i.tm, align 2, !tbaa !394, !range !395, !noundef !326
  %i.to = trunc nuw i8 %i.tn to i1
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ta, i64 16 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = select i1 %i.to, ptr %i.tq, ptr %i.tp
  %i.ts = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %9) #5
  %i.tt = mul i64 %i.td, %i.ts
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %i.tr, i64 %i.tt, i1 false)
  br label %.critedge29

bb.cu:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit377
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %18) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  resume { ptr, i32 } %i.tu

bb.cv:                                            ; preds = %bb.cs
  %i.tv = and i64 %.sroa.0.0.copyload.i378, 255
  %i.tw = icmp eq i64 %i.tv, 7
  %i.tx = icmp eq i8 %i.tj, 11
  %i.ty = and i1 %i.tw, %i.tx
  br i1 %i.ty, label %.preheader, label %.critedge29

.preheader:                                       ; preds = %bb.cv
  %i.tz = trunc i64 %.sroa.0.0.copyload.i378 to i32
  %20 = lshr i32 %i.tz, 8
  %i.ua = and i32 %20, 255
  %i.ub = mul i32 %i.ua, %narrow.i.i
  %i.uc = icmp sgt i32 %i.ub, 0
  br i1 %i.uc, label %.lr.ph681, label %.critedge29

.lr.ph681:                                        ; preds = %.preheader
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ta, i64 38
  %i.ue = load i8, ptr %i.ud, align 2, !tbaa !394, !range !395, !noundef !326
  %i.uf = trunc nuw i8 %i.ue to i1
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ta, i64 16 ; 2 uses
  br i1 %i.uf, label %.lr.ph681.split.us, label %.lr.ph681.split

.lr.ph681.split.us:                               ; preds = %.lr.ph681, %.lr.ph681.split.us
  %indvars.iv687 = phi i64 [ %indvars.iv.next688, %.lr.ph681.split.us ], [ 0, %.lr.ph681 ] ; 3 uses
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv687
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !106
  %i.uk = sitofp i32 %i.uj to float
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv687
  store float %i.uk, ptr %i.ul, align 4, !tbaa !132
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 2 uses
  %.sroa.0.0.copyload.i386.us = load i64, ptr %i.tb, align 8 ; 2 uses
  %.sroa.4389.0.extract.shift.us = lshr i64 %.sroa.0.0.copyload.i386.us, 32
  %.sroa.4389.0.extract.trunc.us = trunc nuw i64 %.sroa.4389.0.extract.shift.us to i32
  %narrow.i.i387.us = call i32 @llvm.smax.i32(i32 %.sroa.4389.0.extract.trunc.us, i32 1)
  %i.um = trunc i64 %.sroa.0.0.copyload.i386.us to i32
  %21 = lshr i32 %i.um, 8
  %i.un = and i32 %21, 255
  %i.uo = mul i32 %i.un, %narrow.i.i387.us
  %i.up = sext i32 %i.uo to i64
  %i.uq = icmp slt i64 %indvars.iv.next688, %i.up
  br i1 %i.uq, label %.lr.ph681.split.us, label %.critedge29, !llvm.loop !1524

.lr.ph681.split:                                  ; preds = %.lr.ph681, %.lr.ph681.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph681.split ], [ 0, %.lr.ph681 ] ; 3 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %indvars.iv
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !106
  %i.ut = sitofp i32 %i.us to float
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store float %i.ut, ptr %i.uu, align 4, !tbaa !132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.sroa.0.0.copyload.i386 = load i64, ptr %i.tb, align 8 ; 2 uses
  %.sroa.4389.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i386, 32
  %.sroa.4389.0.extract.trunc = trunc nuw i64 %.sroa.4389.0.extract.shift to i32
  %narrow.i.i387 = call i32 @llvm.smax.i32(i32 %.sroa.4389.0.extract.trunc, i32 1)
  %i.uv = trunc i64 %.sroa.0.0.copyload.i386 to i32
  %22 = lshr i32 %i.uv, 8
  %i.uw = and i32 %22, 255
  %i.ux = mul i32 %i.uw, %narrow.i.i387
  %i.uy = sext i32 %i.ux to i64
  %i.uz = icmp slt i64 %indvars.iv.next, %i.uy
  br i1 %i.uz, label %.lr.ph681.split, label %.critedge29, !llvm.loop !1524

.critedge29:                                      ; preds = %.lr.ph681.split, %.lr.ph681.split.us, %.preheader, %bb.cq, %bb.cr, %bb.cv, %bb.ct
  %.7 = phi i1 [ true, %bb.ct ], [ false, %bb.cq ], [ false, %bb.cv ], [ false, %bb.cr ], [ true, %.preheader ], [ true, %.lr.ph681.split.us ], [ true, %.lr.ph681.split ]
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %18) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %bb.bb, %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5eraseERKm.exit, %.critedge270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ce, %bb.ch, %bb.cj, %bb.co, %.critedge29, %.critedge11, %bb.cb, %.critedge19, %bb.cd, %bb.ci, %bb.cn, %bb.bk, %bb.bl, %bb.bg, %bb.bh, %bb.ai, %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5eraseERKm.exit337, %bb.e, %bb.be, %bb.ao, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.l, %bb.j
  %.9 = phi i1 [ false, %bb.j ], [ true, %bb.l ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.v ], [ true, %bb.x ], [ true, %bb.z ], [ true, %bb.ab ], [ true, %bb.ad ], [ true, %bb.af ], [ true, %bb.ah ], [ true, %bb.e ], [ true, %bb.ao ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ true, %bb.be ], [ false, %bb.ai ], [ false, %bb.bg ], [ false, %bb.bk ], [ false, %bb.cn ], [ false, %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5eraseERKm.exit337 ], [ false, %bb.bh ], [ false, %bb.bl ], [ true, %bb.bo ], [ true, %bb.bp ], [ true, %bb.bq ], [ true, %bb.br ], [ true, %bb.bs ], [ true, %bb.bv ], [ true, %bb.bw ], [ true, %bb.bx ], [ true, %bb.by ], [ true, %bb.bz ], [ %.7, %.critedge29 ], [ true, %bb.cb ], [ %i.rq, %bb.ce ], [ %i.rz, %bb.ch ], [ %i.sh, %bb.cj ], [ true, %bb.cd ], [ %i.ss, %bb.co ], [ false, %bb.ci ], [ true, %.critedge11 ], [ true, %.critedge19 ], [ false, %bb.bb ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344 ], [ true, %_ZN3tsl9robin_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairImS6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE5eraseERKm.exit ], [ true, %.critedge270 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ]
  ret i1 %.9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNS0_7ustringENS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.502", align 16 ; 7 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5, !noalias !1531
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5, !noalias !1531
  %i.b = load ptr, ptr %2, align 8, !tbaa !114, !noalias !1531 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcSB_SaIcEEERKT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !292, !noalias !1531
  br label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcSB_SaIcEEERKT_DpOT0_.exit

_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcSB_SaIcEEERKT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store ptr %i.b, ptr %4, align 16, !tbaa !139, !noalias !1531
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !139, !noalias !1531
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load ptr, ptr %3, align 8, !tbaa !111, !noalias !1531
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !112, !noalias !1531
  store ptr %i.g, ptr %i.f, align 16, !tbaa !139, !noalias !1531
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.i, ptr %i.j, align 8, !tbaa !139, !noalias !1531
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 221, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5, !noalias !1531
  %i.k = load ptr, ptr %6, align 8, !tbaa !138
  store ptr %i.k, ptr %5, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !262
  store i64 %i.n, ptr %i.l, align 8, !tbaa !112
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcSB_SaIcEEERKT_DpOT0_.exit
  %i.o = load ptr, ptr %6, align 8, !tbaa !138    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !139
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret void

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKNS0_17basic_string_viewIcSt11char_traitsIcEEEEEENSt7__cxx1112basic_stringIcSB_SaIcEEERKT_DpOT0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !138    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !139
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl12resolve_udimEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEii(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 166
  %i.b = load i16, ptr %i.a, align 2, !tbaa !289  ; 2 uses
  %.not33 = icmp eq i16 %i.b, 0
  br i1 %.not33, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sext i16 %i.b to i32                     ; 2 uses
  %i.e = icmp sge i32 %3, %i.d
  %i.f = icmp slt i32 %4, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load i16, ptr %i.g, align 8, !tbaa !290
  %i.i = sext i16 %i.h to i32
  %.not30 = icmp slt i32 %4, %i.i
  br i1 %.not30, label %bb.f, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.j = mul nuw nsw i32 %4, %i.d
  %i.k = add nuw nsw i32 %i.j, %3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.m = zext nneg i32 %i.k to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit:      ; preds = %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !292
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.u = load atomic ptr, ptr %i.t seq_cst, align 8 ; 2 uses
  %.not31 = icmp eq ptr %i.u, null
  br i1 %.not31, label %bb.h, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !207
  %i.v = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr %.sroa.0.0.copyload, ptr noundef %2, ptr noundef null, ptr noundef null, i1 noundef zeroext false) ; 2 uses
  store atomic ptr %i.v, ptr %i.t seq_cst, align 8
  br label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread: ; preds = %bb.f, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit, %bb.h, %bb.g, %bb.c, %bb.d, %bb.e, %bb.a, %bb.b
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %1, %bb.b ], [ null, %bb.e ], [ null, %bb.d ], [ null, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit ], [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ null, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.484", align 16 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5, !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5, !noalias !1536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.b = load i32, ptr %2, align 4, !tbaa !106, !noalias !1538
  store i32 %i.b, ptr %4, align 16, !tbaa !139, !alias.scope !1537, !noalias !1536
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !106, !noalias !1538
  store i32 %i.d, ptr %i.c, align 16, !tbaa !139, !alias.scope !1537, !noalias !1536
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5, !noalias !1536
  %i.e = load ptr, ptr %6, align 8, !tbaa !138
  store ptr %i.e, ptr %5, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !262
  store i64 %i.h, ptr %i.f, align 8, !tbaa !112
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %6, align 8, !tbaa !138    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !139
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret void
end_hunk_0
