Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_list_test?download=true
inline.NumInlined: 875
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4sortINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvT_:bb.a
  store ptr %i.dw, ptr %i.dx, align 16, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 984
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 992 ; 3 uses
  store i64 0, ptr %i.dy, align 8
  store ptr %i.dz, ptr %i.dz, align 16, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 1000
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 1008
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 1016 ; 3 uses
  store i64 0, ptr %i.eb, align 16
  store ptr %i.ec, ptr %i.ec, align 8, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 1024
  store ptr %i.ec, ptr %i.ed, align 16, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 1040 ; 3 uses
  store i64 0, ptr %i.ee, align 8
  store ptr %i.ef, ptr %i.ef, align 16, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 1048
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 1064 ; 3 uses
  store i64 0, ptr %i.eh, align 16
  store ptr %i.ei, ptr %i.ei, align 8, !tbaa !9
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 1072
  store ptr %i.ei, ptr %i.ej, align 16, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 1088 ; 3 uses
  store i64 0, ptr %i.ek, align 8
  store ptr %i.el, ptr %i.el, align 16, !tbaa !9
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 1096
  store ptr %i.el, ptr %i.em, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 3 uses
  store i64 0, ptr %i.en, align 16
  store ptr %i.eo, ptr %i.eo, align 8, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store ptr %i.eo, ptr %i.ep, align 16, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 1128
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 1136 ; 3 uses
  store i64 0, ptr %i.eq, align 8
  store ptr %i.er, ptr %i.er, align 16, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 1144
  store ptr %i.er, ptr %i.es, align 8, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 1152
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 1160 ; 3 uses
  store i64 0, ptr %i.et, align 16
  store ptr %i.eu, ptr %i.eu, align 8, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 1168
  store ptr %i.eu, ptr %i.ev, align 16, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 1176
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 1184 ; 3 uses
  store i64 0, ptr %i.ew, align 8
  store ptr %i.ex, ptr %i.ex, align 16, !tbaa !9
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 1192
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !13
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 1200
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 1208 ; 3 uses
  store i64 0, ptr %i.ez, align 16
  store ptr %i.fa, ptr %i.fa, align 8, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 1216
  store ptr %i.fa, ptr %i.fb, align 16, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 1224
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 1232 ; 3 uses
  store i64 0, ptr %i.fc, align 8
  store ptr %i.fd, ptr %i.fd, align 16, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 1240
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 1248
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 1256 ; 3 uses
  store i64 0, ptr %i.ff, align 16
  store ptr %i.fg, ptr %i.fg, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 1264
  store ptr %i.fg, ptr %i.fh, align 16, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 1272
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 1280 ; 3 uses
  store i64 0, ptr %i.fi, align 8
  store ptr %i.fj, ptr %i.fj, align 16, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 1288
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 1296
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 1304 ; 3 uses
  store i64 0, ptr %i.fl, align 16
  store ptr %i.fm, ptr %i.fm, align 8, !tbaa !9
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 1312
  store ptr %i.fm, ptr %i.fn, align 16, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 1320
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 1328 ; 3 uses
  store i64 0, ptr %i.fo, align 8
  store ptr %i.fp, ptr %i.fp, align 16, !tbaa !9
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 1336
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 1344
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 1352 ; 3 uses
  store i64 0, ptr %i.fr, align 16
  store ptr %i.fs, ptr %i.fs, align 8, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 1360
  store ptr %i.fs, ptr %i.ft, align 16, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 1368
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 1376 ; 3 uses
  store i64 0, ptr %i.fu, align 8
  store ptr %i.fv, ptr %i.fv, align 16, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 1384
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 1392
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 1400 ; 3 uses
  store i64 0, ptr %i.fx, align 16
  store ptr %i.fy, ptr %i.fy, align 8, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 1408
  store ptr %i.fy, ptr %i.fz, align 16, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 1424 ; 3 uses
  store i64 0, ptr %i.ga, align 8
  store ptr %i.gb, ptr %i.gb, align 16, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 1432
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 1440
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 1448 ; 3 uses
  store i64 0, ptr %i.gd, align 16
  store ptr %i.ge, ptr %i.ge, align 8, !tbaa !9
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 1456
  store ptr %i.ge, ptr %i.gf, align 16, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 1464
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 1472 ; 3 uses
  store i64 0, ptr %i.gg, align 8
  store ptr %i.gh, ptr %i.gh, align 16, !tbaa !9
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 1480
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 1488
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 1496 ; 3 uses
  store i64 0, ptr %i.gj, align 16
  store ptr %i.gk, ptr %i.gk, align 8, !tbaa !9
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 1504
  store ptr %i.gk, ptr %i.gl, align 16, !tbaa !13
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 1512
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 1520 ; 3 uses
  store i64 0, ptr %i.gm, align 8
  store ptr %i.gn, ptr %i.gn, align 16, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 1528
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !13
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.gp, null
  %i.gq = icmp eq ptr %i.gp, %i.a
  %i.gr = or i1 %.not.i.i54, %i.gq
  br i1 %i.gr, label %.preheader.._crit_edge_crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %.promoted58 = load i64, ptr %0, align 8, !tbaa !19
  %i.gs = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.gt = shufflevector <2 x ptr> %i.gs, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.c

.preheader:                                       ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38
  store i64 %i.he, ptr %0, align 8, !tbaa !19
  %i.gu = icmp samesign ugt i32 %spec.select, 1
  br i1 %i.gu, label %.lr.ph61.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %bb.b, %.preheader
  %.018.lcssa95 = phi i32 [ %spec.select, %.preheader ], [ 0, %bb.b ]
  %.pre = zext nneg i32 %.018.lcssa95 to i64
  br label %._crit_edge

.lr.ph61.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  br label %.lr.ph61

bb.c:                                             ; preds = %.lr.ph56, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38
  %i.gv = phi i64 [ %.promoted58, %.lr.ph56 ], [ %i.he, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38 ]
  %i.gw = phi ptr [ %i.gp, %.lr.ph56 ], [ %i.jy, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38 ] ; 6 uses
  %.01855 = phi i32 [ 0, %.lr.ph56 ], [ %spec.select, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38 ] ; 5 uses
  %i.gx = load ptr, ptr %i.e, align 8, !tbaa !9, !noalias !376 ; 4 uses
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !9  ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.gy, %i.gx
  %.not21.i.i = icmp eq ptr %i.gw, %i.gx
  %or.cond.i.i = or i1 %.not21.i.i, %.not.i.i25
  br i1 %or.cond.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !13 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !13 ; 2 uses
  store ptr %i.gw, ptr %i.ha, align 8, !tbaa !9
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !13
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !9
  store ptr %i.gw, ptr %i.gz, align 8, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !13
  store ptr %i.gy, ptr %i.hc, align 8, !tbaa !9
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit: ; preds = %bb.c, %bb.d
  %i.he = add i64 %i.gv, -1                       ; 2 uses
  %i.hf = load i64, ptr %1, align 8, !tbaa !19
  %i.hg = add i64 %i.hf, 1                        ; 2 uses
  store i64 %i.hg, ptr %1, align 8, !tbaa !19
  %.not62 = icmp eq i32 %.01855, 0
  br i1 %.not62, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit
  %i.hh = zext nneg i32 %.01855 to i64
  %.promoted106 = load i64, ptr %1, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit
  %3 = phi i64 [ %.promoted106, %.lr.ph.preheader ], [ %i.ja, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit ] ; 2 uses
  %.promoted = phi i64 [ %i.hg, %.lr.ph.preheader ], [ %i.ja, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 8 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 13 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !9
  %.fr = freeze ptr %i.hk                         ; 6 uses
  %.not.i.i26 = icmp eq ptr %.fr, null
  %i.hl = icmp eq ptr %.fr, %i.hj
  %i.hm = or i1 %.not.i.i26, %i.hl
  br i1 %i.hm, label %.critedge.loopexit.split.loop.exit104, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.hn = load ptr, ptr %i.e, align 8, !tbaa !9   ; 6 uses
  %.not.i.i40.i = icmp eq ptr %i.hn, null
  %i.ho = icmp eq ptr %i.hn, %i.e
  %i.hp = or i1 %.not.i.i40.i, %i.ho
  br i1 %i.hp, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.e
  %i.hq = getelementptr inbounds nuw i8, ptr %.fr, i64 8 ; 2 uses
  %.not24.i.i14.i = icmp eq ptr %.fr, %i.e
  br i1 %.not24.i.i14.i, label %.critedge.i.us.preheader, label %.critedge.i

.critedge.i.us.preheader:                         ; preds = %.critedge.preheader.i
  %.lcssa140.promoted = load i64, ptr %i.hi, align 8, !tbaa !19
  br label %.critedge.i.us.outer

.critedge.i.us.outer:                             ; preds = %.critedge.i.us.preheader, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i.us
  %i.hr = phi i64 [ %.lcssa140.promoted, %.critedge.i.us.preheader ], [ %i.hu, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i.us ]
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.outer, %.critedge2.i.us
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.critedge.i.us
  %.sroa.021.0.i.us = phi ptr [ %i.hs, %bb.f ], [ %i.hn, %.critedge.i.us ]
  %.0.i.us = phi i64 [ %i.ht, %bb.f ], [ 0, %.critedge.i.us ]
  %i.hs = load ptr, ptr %.sroa.021.0.i.us, align 8, !tbaa !9 ; 2 uses
  %i.ht = add i64 %.0.i.us, 1                     ; 3 uses
  %.not.i.us = icmp eq ptr %i.hs, %i.e
  br i1 %.not.i.us, label %.critedge2.i.us, label %bb.f, !llvm.loop !375

.critedge2.i.us:                                  ; preds = %bb.f
  %.not.i.i27.us = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i27.us, label %.critedge.i.us, label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i.us

_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i.us: ; preds = %.critedge2.i.us
  %i.hu = add i64 %i.hr, %i.ht
  br label %.critedge.i.us.outer

.critedge.i:                                      ; preds = %.critedge.preheader.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i
  %4 = phi i64 [ %5, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %3, %.critedge.preheader.i ]
  %i.hv = phi i64 [ %i.ih, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %.promoted, %.critedge.preheader.i ] ; 2 uses
  %.pre42.i = phi ptr [ %.pre43.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %i.hn, %.critedge.preheader.i ] ; 2 uses
  %i.hw = phi ptr [ %i.ii, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %i.hn, %.critedge.preheader.i ] ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.critedge.i
  %.sroa.021.0.i = phi ptr [ %i.hx, %bb.g ], [ %i.hw, %.critedge.i ]
  %.0.i = phi i64 [ %i.hy, %bb.g ], [ 0, %.critedge.i ]
  %i.hx = load ptr, ptr %.sroa.021.0.i, align 8, !tbaa !9 ; 4 uses
  %i.hy = add i64 %.0.i, 1                        ; 4 uses
  %.not.i = icmp eq ptr %i.hx, %i.e
  br i1 %.not.i, label %.critedge2.i, label %bb.g, !llvm.loop !375

.critedge2.i:                                     ; preds = %bb.g
  %.not.i.i27 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i27, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i, label %bb.h

bb.h:                                             ; preds = %.critedge2.i
  %.not.i.i12.i = icmp eq ptr %i.hw, %i.e
  %.not23.i.i13.i = icmp eq ptr %.fr, %i.hw
  %or.cond.i.i.i = or i1 %.not23.i.i13.i, %.not.i.i12.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !13 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !13 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !13 ; 2 uses
  store ptr %.fr, ptr %i.id, align 8, !tbaa !9
  store ptr %i.id, ptr %i.hq, align 8, !tbaa !13
  store ptr %i.hx, ptr %i.ib, align 8, !tbaa !9
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !13
  store ptr %i.hw, ptr %i.hz, align 8, !tbaa !9
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !13
  %.pre.pre.i = load ptr, ptr %i.e, align 8, !tbaa !9
  br label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i

_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i: ; preds = %bb.i, %bb.h
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.i ], [ %.pre42.i, %bb.h ] ; 2 uses
  %i.ie = load i64, ptr %i.hi, align 8, !tbaa !19
  %i.if = add i64 %i.ie, %i.hy
  store i64 %i.if, ptr %i.hi, align 8, !tbaa !19
  %i.ig = sub i64 %i.hv, %i.hy                    ; 3 uses
  store i64 %i.ig, ptr %1, align 8, !tbaa !19
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i: ; preds = %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i, %.critedge2.i
  %5 = phi i64 [ %i.ig, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i ], [ %4, %.critedge2.i ] ; 2 uses
  %i.ih = phi i64 [ %i.ig, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i ], [ %i.hv, %.critedge2.i ]
  %.pre43.i = phi ptr [ %.pre.i, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i ], [ %.pre42.i, %.critedge2.i ] ; 2 uses
  %i.ii = phi ptr [ %.pre.i, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i ], [ %i.hw, %.critedge2.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ii, null
  %i.ij = icmp eq ptr %i.ii, %i.e
  %i.ik = or i1 %.not.i.i.i, %i.ij
  br i1 %i.ik, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit, label %.critedge.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit: ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i, %bb.e
  %6 = phi i64 [ %3, %bb.e ], [ %5, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ]
  %i.il = phi ptr [ %i.hn, %bb.e ], [ %.pre43.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.im = icmp eq ptr %i.hi, %1
  br i1 %i.im, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit
  %.not.i.i.i28 = icmp eq ptr %i.il, null         ; 2 uses
  %i.in = load ptr, ptr %i.hj, align 8, !tbaa !9  ; 3 uses
  %.not.i24.i.i = icmp eq ptr %i.in, null         ; 2 uses
  br i1 %.not.i.i.i28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store <2 x ptr> %i.gt, ptr %i.e, align 8, !tbaa !107
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre.i.i = phi ptr [ %i.e, %bb.k ], [ %i.il, %bb.j ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  br i1 %.not.i24.i.i, label %bb.m, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l
  %.pre26.i.i = load ptr, ptr %i.io, align 8, !tbaa !13 ; 2 uses
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %.pre28.i.i = load ptr, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !13
  %.pre29.i.i = load ptr, ptr %.pre26.i.i, align 8, !tbaa !9
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.hj, ptr %i.hj, align 8, !tbaa !9
  store ptr %i.hj, ptr %i.io, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %i.ip = phi ptr [ %i.hj, %bb.m ], [ %.pre29.i.i, %._crit_edge.i.i ]
  %i.iq = phi ptr [ %i.hj, %bb.m ], [ %.pre28.i.i, %._crit_edge.i.i ]
  %i.ir = phi ptr [ %i.hj, %bb.m ], [ %.pre26.i.i, %._crit_edge.i.i ]
  %i.is = phi ptr [ %i.hj, %bb.m ], [ %i.in, %._crit_edge.i.i ]
  %i.it = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !13
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store ptr %i.iq, ptr %i.iu, align 8, !tbaa !13
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !13
  %i.ix = load ptr, ptr %i.it, align 8, !tbaa !9
  store ptr %i.ip, ptr %i.it, align 8, !tbaa !9
  store ptr %i.ix, ptr %i.ir, align 8, !tbaa !9
  %i.iy = load <2 x ptr>, ptr %i.hj, align 8, !tbaa !107
  %i.iz = load <2 x ptr>, ptr %i.e, align 8, !tbaa !107
  store <2 x ptr> %i.iy, ptr %i.e, align 8, !tbaa !107
  store <2 x ptr> %i.iz, ptr %i.hj, align 8, !tbaa !107
  br i1 %.not.i.i.i28, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %.not.i24.i.i, label %bb.q, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit: ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit, %bb.p, %bb.q
  %i.ja = load i64, ptr %i.hi, align 8, !tbaa !19 ; 3 uses
  store i64 %i.ja, ptr %1, align 8, !tbaa !19
  store i64 %6, ptr %i.hi, align 8, !tbaa !19
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.hh
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !379

.critedge.loopexit.split.loop.exit104:            ; preds = %.lr.ph
  %i.jb = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit, %.critedge.loopexit.split.loop.exit104, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit
  %.017.lcssa = phi i32 [ 0, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit ], [ %i.jb, %.critedge.loopexit.split.loop.exit104 ], [ %.01855, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit ] ; 2 uses
  %i.jc = zext nneg i32 %.017.lcssa to i64
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.jc ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 11 uses
  %i.jf = icmp eq ptr %i.jd, %1
  br i1 %i.jf, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.jg = load ptr, ptr %i.e, align 8, !tbaa !9   ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.jg, null         ; 2 uses
  %i.jh = load ptr, ptr %i.je, align 8, !tbaa !9  ; 3 uses
  %.not.i24.i.i30 = icmp eq ptr %i.jh, null       ; 2 uses
  br i1 %.not.i.i.i29, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.e, ptr %i.e, align 8, !tbaa !9
  store ptr %i.e, ptr %i.f, align 8, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre.i.i37 = phi ptr [ %i.e, %bb.s ], [ %i.jg, %bb.r ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 2 uses
  br i1 %.not.i24.i.i30, label %bb.u, label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %bb.t
  %.pre26.i.i33 = load ptr, ptr %i.ji, align 8, !tbaa !13 ; 2 uses
  %.phi.trans.insert27.i.i34 = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %.pre28.i.i35 = load ptr, ptr %.phi.trans.insert27.i.i34, align 8, !tbaa !13
  %.pre29.i.i36 = load ptr, ptr %.pre26.i.i33, align 8, !tbaa !9
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.je, ptr %i.je, align 8, !tbaa !9
  store ptr %i.je, ptr %i.ji, align 8, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i31
  %i.jj = phi ptr [ %i.je, %bb.u ], [ %.pre29.i.i36, %._crit_edge.i.i31 ]
  %i.jk = phi ptr [ %i.je, %bb.u ], [ %.pre28.i.i35, %._crit_edge.i.i31 ]
  %i.jl = phi ptr [ %i.je, %bb.u ], [ %.pre26.i.i33, %._crit_edge.i.i31 ]
  %i.jm = phi ptr [ %i.je, %bb.u ], [ %i.jh, %._crit_edge.i.i31 ]
  %i.jn = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre.i.i37, i64 8 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.jk, ptr %i.jo, align 8, !tbaa !13
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !13
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !9
  store ptr %i.jj, ptr %i.jn, align 8, !tbaa !9
  store ptr %i.jr, ptr %i.jl, align 8, !tbaa !9
  %i.js = load <2 x ptr>, ptr %i.je, align 8, !tbaa !107
  %i.jt = load <2 x ptr>, ptr %i.e, align 8, !tbaa !107
  store <2 x ptr> %i.js, ptr %i.e, align 8, !tbaa !107
  store <2 x ptr> %i.jt, ptr %i.je, align 8, !tbaa !107
  br i1 %.not.i.i.i29, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.je, i8 0, i64 16, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not.i24.i.i30, label %bb.y, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38: ; preds = %.critedge, %bb.x, %bb.y
  %i.ju = load i64, ptr %1, align 8, !tbaa !19
  %i.jv = load i64, ptr %i.jd, align 8, !tbaa !19
  store i64 %i.jv, ptr %1, align 8, !tbaa !19
  store i64 %i.ju, ptr %i.jd, align 8, !tbaa !19
  %i.jw = icmp eq i32 %.017.lcssa, %.01855
  %i.jx = zext i1 %i.jw to i32
  %spec.select = add nuw nsw i32 %.01855, %i.jx   ; 4 uses
  %i.jy = load ptr, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %.not.i.i = icmp eq ptr %i.jy, null
  %i.jz = icmp eq ptr %i.jy, %i.a
  %i.ka = or i1 %.not.i.i, %i.jz
  br i1 %i.ka, label %.preheader, label %bb.c, !llvm.loop !380

._crit_edge:                                      ; preds = %.lr.ph61, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %wide.trip.count, %.lr.ph61 ]
  %i.kb = getelementptr [24 x i8], ptr %2, i64 %.pre-phi ; 3 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 -24    ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kb, i64 -16    ; 9 uses
  %i.ke = icmp eq ptr %i.kc, %0
  br i1 %i.ke, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.kf = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.kf, null
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !9  ; 3 uses
  %.not.i24.i.i40 = icmp eq ptr %i.kg, null       ; 2 uses
  br i1 %.not.i.i.i39, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.a, ptr %i.a, align 8, !tbaa !9
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pre.i.i47 = phi ptr [ %i.a, %bb.aa ], [ %i.kf, %bb.z ]
  %i.kh = getelementptr i8, ptr %i.kb, i64 -8     ; 2 uses
  br i1 %.not.i24.i.i40, label %bb.ac, label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %bb.ab
  %.pre26.i.i43 = load ptr, ptr %i.kh, align 8, !tbaa !13 ; 2 uses
  %.phi.trans.insert27.i.i44 = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %.pre28.i.i45 = load ptr, ptr %.phi.trans.insert27.i.i44, align 8, !tbaa !13
  %.pre29.i.i46 = load ptr, ptr %.pre26.i.i43, align 8, !tbaa !9
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.kd, ptr %i.kd, align 8, !tbaa !9
  store ptr %i.kd, ptr %i.kh, align 8, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i41
  %i.ki = phi ptr [ %i.kd, %bb.ac ], [ %.pre29.i.i46, %._crit_edge.i.i41 ]
  %i.kj = phi ptr [ %i.kd, %bb.ac ], [ %.pre28.i.i45, %._crit_edge.i.i41 ]
  %i.kk = phi ptr [ %i.kd, %bb.ac ], [ %.pre26.i.i43, %._crit_edge.i.i41 ]
  %i.kl = phi ptr [ %i.kd, %bb.ac ], [ %i.kg, %._crit_edge.i.i41 ]
  %i.km = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre.i.i47, i64 8 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr %i.kj, ptr %i.kn, align 8, !tbaa !13
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !13
  %i.kq = load ptr, ptr %i.km, align 8, !tbaa !9
  store ptr %i.ki, ptr %i.km, align 8, !tbaa !9
  store ptr %i.kq, ptr %i.kk, align 8, !tbaa !9
  %i.kr = load <2 x ptr>, ptr %i.kd, align 8, !tbaa !107
  store <2 x ptr> %i.kr, ptr %i.a, align 8, !tbaa !107
  br i1 %.not.i24.i.i40, label %bb.ae, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48: ; preds = %._crit_edge, %bb.ad, %bb.ae
  %i.ks = load i64, ptr %i.kc, align 8, !tbaa !19
  store i64 %i.ks, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.af

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %indvars.iv68 = phi i64 [ 1, %.lr.ph61.preheader ], [ %indvars.iv.next69, %.lr.ph61 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv68 ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 -24
  call void @_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, ptr noundef nonnull align 8 dereferenceable(24) %i.ku)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count
  br i1 %exitcond71.not, label %._crit_edge, label %.lr.ph61, !llvm.loop !381

bb.af:                                            ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !11, i64 0, !11, i64 8}
end_hunk_0
