Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_test?download=true
inline.NumInlined: 26547
inline.NumDeleted: 4082
loop-unroll.NumCompletelyUnrolled: 342
loop-unroll.NumRuntimeUnrolled: 674
loop-unroll.NumUnrolled: 1026
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7move_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_:bb.a
  %bound0343 = icmp ult ptr %i.em, %scevgep335
  %bound1344 = icmp ult ptr %i.eg, %scevgep333
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx342, %found.conflict345
  br i1 %conflict.rdx346, label %.lr.ph.i129.preheader432, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck329
  %n.vec350 = and i64 %i.ep, 9223372036854775800  ; 3 uses
  %i.ex = shl i64 %n.vec350, 2                    ; 3 uses
  %i.ey = getelementptr i8, ptr %7, i64 %i.ex     ; 2 uses
  %i.ez = getelementptr i8, ptr %i.em, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.eg, i64 %i.ex
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next360, %vector.body351 ] ; 2 uses
  %i.fb = shl i64 %index352, 2                    ; 3 uses
  %next.gep353 = getelementptr i8, ptr %7, i64 %i.fb ; 2 uses
  %next.gep354 = getelementptr i8, ptr %i.em, i64 %i.fb ; 3 uses
  %next.gep355 = getelementptr i8, ptr %i.eg, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep354, i64 16 ; 2 uses
  %wide.load356 = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !367, !alias.scope !4404, !noalias !4405
  %wide.load357 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !367, !alias.scope !4404, !noalias !4405
  %i.fd = getelementptr i8, ptr %next.gep353, i64 16
  store <4 x i32> %wide.load356, ptr %next.gep353, align 4, !tbaa !367, !alias.scope !4406, !noalias !4407
  store <4 x i32> %wide.load357, ptr %i.fd, align 4, !tbaa !367, !alias.scope !4406, !noalias !4407
  %i.fe = getelementptr i8, ptr %next.gep355, i64 16
  %wide.load358 = load <4 x i32>, ptr %next.gep355, align 4, !tbaa !367, !alias.scope !4405
  %wide.load359 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !367, !alias.scope !4405
  store <4 x i32> %wide.load358, ptr %next.gep354, align 4, !tbaa !367, !alias.scope !4404, !noalias !4405
  store <4 x i32> %wide.load359, ptr %i.fc, align 4, !tbaa !367, !alias.scope !4404, !noalias !4405
  %index.next360 = add nuw i64 %index352, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next360, %n.vec350
  br i1 %i.ff, label %middle.block361, label %vector.body351, !llvm.loop !4380

middle.block361:                                  ; preds = %vector.body351
  %cmp.n362 = icmp eq i64 %i.ep, %n.vec350
  br i1 %cmp.n362, label %._crit_edge.i134, label %.lr.ph.i129.preheader432

.lr.ph.i129.preheader432:                         ; preds = %vector.memcheck329, %.lr.ph.i129.preheader, %middle.block361
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck329 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ey, %middle.block361 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.em, %vector.memcheck329 ], [ %i.em, %.lr.ph.i129.preheader ], [ %i.ez, %middle.block361 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.eg, %vector.memcheck329 ], [ %i.eg, %.lr.ph.i129.preheader ], [ %i.fa, %middle.block361 ] ; 3 uses
  %.02131.i132.ph435 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fg = sub i64 %i.ag, %.02131.i132.ph435       ; 2 uses
  %i.fh = lshr i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1
  %xtraiter = and i64 %i.fi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader432, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.fl, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader432 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.fk, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader432 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.fj, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader432 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader432 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.fm = load i32, ptr %.02032.i131.prol, align 4, !tbaa !367
  store i32 %i.fm, ptr %.033.i130.prol, align 4, !tbaa !367
  %i.fn = load i32, ptr %.02131.i132.prol, align 4, !tbaa !367
  store i32 %i.fn, ptr %.02032.i131.prol, align 4, !tbaa !367
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !4381

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader432
  %.lcssa433.unr = phi ptr [ poison, %.lr.ph.i129.preheader432 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader432 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader432 ], [ %i.fk, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader432 ], [ %i.fj, %.lr.ph.i129.prol ]
  %i.fo = icmp ult i64 %i.fg, 12
  br i1 %i.fo, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.gg, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.gf, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.ge, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.fs = load i32, ptr %.02032.i131, align 4, !tbaa !367
  store i32 %i.fs, ptr %.033.i130, align 4, !tbaa !367
  %i.ft = load i32, ptr %.02131.i132, align 4, !tbaa !367
  store i32 %i.ft, ptr %.02032.i131, align 4, !tbaa !367
  %i.fu = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fx = load i32, ptr %i.fq, align 4, !tbaa !367
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !367
  %i.fy = load i32, ptr %i.fp, align 4, !tbaa !367
  store i32 %i.fy, ptr %i.fq, align 4, !tbaa !367
  %i.fz = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.ga = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.gc = load i32, ptr %i.fv, align 4, !tbaa !367
  store i32 %i.gc, ptr %i.fw, align 4, !tbaa !367
  %i.gd = load i32, ptr %i.fu, align 4, !tbaa !367
  store i32 %i.gd, ptr %i.fv, align 4, !tbaa !367
  %i.ge = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.gh = load i32, ptr %i.ga, align 4, !tbaa !367
  store i32 %i.gh, ptr %i.gb, align 4, !tbaa !367
  %i.gi = load i32, ptr %i.fz, align 4, !tbaa !367
  store i32 %i.gi, ptr %i.ga, align 4, !tbaa !367
  %.not28.i133.3 = icmp eq ptr %i.ge, %i.bg
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !4382

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block361, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ey, %middle.block361 ], [ %.lcssa433.unr, %.lr.ph.i129.prol.loopexit ], [ %i.gg, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.gj = load i32, ptr %i.bl, align 4, !tbaa !367
  %i.gk = load i32, ptr %.0106222, align 4, !tbaa !367
  store i32 %i.gk, ptr %i.bl, align 4, !tbaa !367
  store i32 %i.gj, ptr %.0106222, align 4, !tbaa !367
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gl = icmp eq ptr %i.bl, %.0190217
  br i1 %i.gl, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gm = icmp eq ptr %.0190217, %.0106222
  %spec.select204 = select i1 %i.gm, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0190217, %bb.q ], [ %spec.select204, %bb.t ], [ %.0106222, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.d, align 8, !tbaa !376
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gn = load i32, ptr %i.bl, align 4, !tbaa !367
  %i.go = load i32, ptr %.0106222, align 4, !tbaa !367
  store i32 %i.go, ptr %i.bl, align 4, !tbaa !367
  store i32 %i.gn, ptr %.0106222, align 4, !tbaa !367
  %i.gp = icmp eq ptr %i.bl, %.0190217
  br i1 %i.gp, label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gq = icmp eq ptr %.0190217, %.0106222
  %spec.select205 = select i1 %i.gq, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140
  %i.gr = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.ee, %bb.u ], [ %i.ee, %bb.w ], [ %i.ee, %bb.v ]
  %i.gs = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %i.ed, %bb.u ], [ %i.ed, %bb.w ], [ %i.ed, %bb.v ]
  %.1191 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit140 ], [ %.0190217, %bb.u ], [ %spec.select205, %bb.w ], [ %.0106222, %bb.v ]
  %i.gt = xor i1 %i.eb, %i.ef
  %i.gu = zext i1 %i.gt to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit
  %i.gv = phi ptr [ %i.gr, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gw = phi ptr [ %i.gs, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %i.gx = phi i1 [ %i.ea, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.bt, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ]
  %.2192 = phi ptr [ %.1191, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.ec, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gu, %_ZN5boost7movelib15detail_adaptive10update_keyIPiEEvT_S4_RS4_.exit ], [ %.0108221, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPiS3_S3_NS0_7move_opEEET1_T_S6_RS6_T0_S8_S8_S5_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gx, true
  %i.gy = sext i1 %not. to i64
  %.1 = add i64 %.0226, %i.gy
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0111219, i64 %2 ; 2 uses
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !376
  %i.ha = getelementptr inbounds nuw i8, ptr %.0106222, i64 4
  %i.hb = icmp ne i64 %.0104225, 0
  %.neg = sext i1 %i.hb to i64
  %i.hc = add i64 %.0104225, %.neg
  %i.hd = icmp ne i64 %i.bc, 0
  %.neg122 = sext i1 %i.hd to i64
  %i.he = add i64 %.sroa.speculated179, %.neg122
  %i.hf = add i64 %.0194216, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hf, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !4383

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hg = phi ptr [ %i.gv, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.hh = phi ptr [ %i.gw, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 5 uses
  %.0194.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0194216, %bb.g ], [ %.0194216, %bb.f ] ; 3 uses
  %.0190.lcssa.ph = phi ptr [ %.2192, %bb.x ], [ %.0190217, %bb.g ], [ %.0190217, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114218, %bb.g ], [ %.0114218, %bb.f ] ; 5 uses
  %.0111.lcssa.ph = phi ptr [ %i.gz, %bb.x ], [ %.0111219, %bb.g ], [ %.0111219, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108221, %bb.f ]
  %i.hi = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.hj = select i1 %i.hi, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.hh, %i.hg
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hk = ptrtoaddr ptr %.0114.lcssa.ph to i64
  %.0114.lcssa.ph367 = ptrtoaddr ptr %i.hh to i64 ; 2 uses
  %i.hl = ptrtoaddr ptr %i.hg to i64
  %i.hm = add i64 %i.hl, -4
  %i.hn = sub i64 %i.hm, %.0114.lcssa.ph367       ; 2 uses
  %i.ho = lshr i64 %i.hn, 2
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.hn, 44
  %i.hq = sub i64 %.0114.lcssa.ph367, %i.hk
  %diff.check368 = icmp ugt i64 %i.hq, -32
  %or.cond421 = select i1 %min.iters.check370, i1 true, i1 %diff.check368
  br i1 %or.cond421, label %.lr.ph.i.i145.preheader429, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph.i.i145.preheader
  %n.vec372 = and i64 %i.hp, 9223372036854775800  ; 3 uses
  %i.hr = shl i64 %n.vec372, 2                    ; 2 uses
  %i.hs = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hh, i64 %i.hr
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 2 uses
  %i.hu = shl i64 %index374, 2                    ; 2 uses
  %next.gep375 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hu ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.hh, i64 %i.hu ; 2 uses
  %i.hv = getelementptr i8, ptr %next.gep376, i64 16
  %wide.load377 = load <4 x i32>, ptr %next.gep376, align 4, !tbaa !367
  %wide.load378 = load <4 x i32>, ptr %i.hv, align 4, !tbaa !367
  %i.hw = getelementptr i8, ptr %next.gep375, i64 16
  store <4 x i32> %wide.load377, ptr %next.gep375, align 4, !tbaa !367
  store <4 x i32> %wide.load378, ptr %i.hw, align 4, !tbaa !367
  %index.next379 = add nuw i64 %index374, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.hx, label %middle.block380, label %vector.body373, !llvm.loop !4384

middle.block380:                                  ; preds = %vector.body373
  %cmp.n381 = icmp eq i64 %i.hp, %n.vec372
  br i1 %cmp.n381, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph.i.i145.preheader429

.lr.ph.i.i145.preheader429:                       ; preds = %.lr.ph.i.i145.preheader, %middle.block380
  %.010.i.i146.ph = phi ptr [ %.0114.lcssa.ph, %.lr.ph.i.i145.preheader ], [ %i.hs, %middle.block380 ]
  %.079.i.i147.ph = phi ptr [ %i.hh, %.lr.ph.i.i145.preheader ], [ %i.ht, %middle.block380 ]
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader429, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.ia, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader429 ] ; 2 uses
  %.079.i.i147 = phi ptr [ %i.hz, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader429 ] ; 2 uses
  %i.hy = load i32, ptr %.079.i.i147, align 4, !tbaa !367
  store i32 %i.hy, ptr %.010.i.i146, align 4, !tbaa !367
  %i.hz = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  %.not.i.i148 = icmp eq ptr %i.hz, %i.hg
  br i1 %.not.i.i148, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph.i.i145, !llvm.loop !4385

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150: ; preds = %.lr.ph.i.i145, %middle.block380, %bb.a, %.thread
  %.0108.lcssa286 = phi ptr [ %1, %bb.a ], [ %i.hj, %.thread ], [ %i.hj, %middle.block380 ], [ %i.hj, %.lr.ph.i.i145 ]
  %.0111.lcssa285 = phi ptr [ %i.h, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block380 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0190.lcssa284 = phi ptr [ %i.g, %bb.a ], [ %.0190.lcssa.ph, %.thread ], [ %.0190.lcssa.ph, %middle.block380 ], [ %.0190.lcssa.ph, %.lr.ph.i.i145 ]
  %.0194.lcssa283 = phi i64 [ 0, %bb.a ], [ %.0194.lcssa.ph, %.thread ], [ %.0194.lcssa.ph, %middle.block380 ], [ %.0194.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx209 = shl i64 %6, 2                        ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx209 ; 2 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150
  %i.ic = add i64 %.idx209, -4                    ; 2 uses
  %i.id = lshr exact i64 %i.ic, 2
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.ic, 124
  br i1 %min.iters.check387, label %.lr.ph.i.i152.preheader428, label %vector.memcheck384

vector.memcheck384:                               ; preds = %.lr.ph.i.i152.preheader
  %i.if = mul i64 %2, %i.f
  %i.ig = add i64 %i.if, %3
  %i.ih = shl i64 %i.ig, 2
  %i.ii = add i64 %i.ih, %i.b
  %i.ij = sub i64 %i.ii, %i.a
  %diff.check385 = icmp ugt i64 %i.ij, -32
  br i1 %diff.check385, label %.lr.ph.i.i152.preheader428, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck384
  %n.vec389 = and i64 %i.ie, 9223372036854775800  ; 3 uses
  %i.ik = shl i64 %n.vec389, 2                    ; 2 uses
  %i.il = getelementptr i8, ptr %7, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.j, i64 %i.ik
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next396, %vector.body390 ] ; 2 uses
  %i.in = shl i64 %index391, 2                    ; 2 uses
  %next.gep392 = getelementptr i8, ptr %7, i64 %i.in ; 2 uses
  %next.gep393 = getelementptr i8, ptr %i.j, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep393, i64 16
  %wide.load394 = load <4 x i32>, ptr %next.gep393, align 4, !tbaa !367
  %wide.load395 = load <4 x i32>, ptr %i.io, align 4, !tbaa !367
  %i.ip = getelementptr i8, ptr %next.gep392, i64 16
  store <4 x i32> %wide.load394, ptr %next.gep392, align 4, !tbaa !367
  store <4 x i32> %wide.load395, ptr %i.ip, align 4, !tbaa !367
  %index.next396 = add nuw i64 %index391, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next396, %n.vec389
  br i1 %i.iq, label %middle.block397, label %vector.body390, !llvm.loop !4386

middle.block397:                                  ; preds = %vector.body390
  %cmp.n398 = icmp eq i64 %i.ie, %n.vec389
  br i1 %cmp.n398, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, label %.lr.ph.i.i152.preheader428

.lr.ph.i.i152.preheader428:                       ; preds = %vector.memcheck384, %.lr.ph.i.i152.preheader, %middle.block397
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck384 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.il, %middle.block397 ]
  %.079.i.i154.ph = phi ptr [ %i.j, %vector.memcheck384 ], [ %i.j, %.lr.ph.i.i152.preheader ], [ %i.im, %middle.block397 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader428, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.it, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader428 ] ; 2 uses
  %.079.i.i154 = phi ptr [ %i.is, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader428 ] ; 2 uses
  %i.ir = load i32, ptr %.079.i.i154, align 4, !tbaa !367
  store i32 %i.ir, ptr %.010.i.i153, align 4, !tbaa !367
  %i.is = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %.not.i.i155 = icmp eq ptr %i.is, %i.ib
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, label %.lr.ph.i.i152, !llvm.loop !4387

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157: ; preds = %.lr.ph.i.i152, %middle.block397, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150
  store ptr %7, ptr %i.c, align 8, !tbaa !376
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.iu, ptr %i.d, align 8, !tbaa !376
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.iu, ptr %10, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %4
  store ptr %i.iw, ptr %12, align 8, !tbaa !571, !alias.scope !4408
  store ptr %.0190.lcssa284, ptr %13, align 8, !tbaa !571, !alias.scope !4409
  store ptr %i.j, ptr %14, align 8, !tbaa !571, !alias.scope !4410
  store ptr %7, ptr %15, align 8, !tbaa !571, !alias.scope !4411
  store ptr %i.ib, ptr %16, align 8, !tbaa !571, !alias.scope !4412
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0194.lcssa283, i64 noundef 0, i64 noundef %.0194.lcssa283, i1 noundef zeroext true)
  %i.ix = load ptr, ptr %11, align 8, !tbaa !571  ; 2 uses
  %i.iy = ptrtoaddr ptr %i.ix to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.iz = load ptr, ptr %10, align 8, !tbaa !571  ; 2 uses
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !376 ; 4 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64
  %.not27.i = icmp eq ptr %i.ja, %i.iz
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, %bb.y
  %indvar403 = phi i64 [ %indvar.next404, %bb.y ], [ 0, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 2 uses
  %.030.i = phi ptr [ %.030..i, %bb.y ], [ %i.iz, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 7 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.y ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.kc, %bb.y ], [ %i.ix, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 5 uses
  %i.jc = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.jc, label %.lr.ph.i.i.i.preheader, label %bb.y

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i158
  %.030.i402.le = ptrtoaddr ptr %.030.i to i64    ; 2 uses
  %i.jd = add i64 %.030.i402.le, -4
  %i.je = sub i64 %i.jd, %i.jb                    ; 2 uses
  %i.jf = lshr i64 %i.je, 2
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check407 = icmp ult i64 %i.je, 76
  br i1 %min.iters.check407, label %.lr.ph.i.i.i.preheader422, label %vector.memcheck401

vector.memcheck401:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.jh = shl i64 %indvar403, 2
  %i.ji = sub i64 %i.jh, %i.iy
  %i.jj = add i64 %i.ji, %.030.i402.le
  %i.jk = add i64 %i.jj, -1
  %diff.check405 = icmp ult i64 %i.jk, 31
  br i1 %diff.check405, label %.lr.ph.i.i.i.preheader422, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck401
  %n.vec409 = and i64 %i.jg, 9223372036854775800  ; 3 uses
  %i.jl = mul i64 %n.vec409, -4                   ; 2 uses
  %i.jm = getelementptr i8, ptr %.02128.i, i64 %i.jl
  %i.jn = getelementptr i8, ptr %.030.i, i64 %i.jl
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.jo = mul i64 %index411, -4                   ; 2 uses
  %next.gep412 = getelementptr i8, ptr %.02128.i, i64 %i.jo ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.030.i, i64 %i.jo ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %next.gep413, i64 -16
  %i.jq = getelementptr inbounds i8, ptr %next.gep413, i64 -32
  %wide.load414 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !367
  %wide.load415 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !367
  %i.jr = getelementptr inbounds i8, ptr %next.gep412, i64 -16
  %i.js = getelementptr inbounds i8, ptr %next.gep412, i64 -32
  store <4 x i32> %wide.load414, ptr %i.jr, align 4, !tbaa !367
  store <4 x i32> %wide.load415, ptr %i.js, align 4, !tbaa !367
  %index.next416 = add nuw i64 %index411, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.jt, label %middle.block417, label %vector.body410, !llvm.loop !4398

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.jg, %n.vec409
  br i1 %cmp.n418, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i.i.i.preheader422

.lr.ph.i.i.i.preheader422:                        ; preds = %vector.memcheck401, %.lr.ph.i.i.i.preheader, %middle.block417
  %.010.i.i.i.ph = phi ptr [ %.02128.i, %vector.memcheck401 ], [ %.02128.i, %.lr.ph.i.i.i.preheader ], [ %i.jm, %middle.block417 ]
  %.079.i.i.i.ph = phi ptr [ %.030.i, %vector.memcheck401 ], [ %.030.i, %.lr.ph.i.i.i.preheader ], [ %i.jn, %middle.block417 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader422, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jv, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader422 ]
  %.079.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader422 ]
  %i.ju = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 3 uses
  %i.jv = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !367
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %bound0343 = icmp ult ptr %i.em, %scevgep335
  %bound1344 = icmp ult ptr %i.eg, %scevgep333
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx342, %found.conflict345
  br i1 %conflict.rdx346, label %.lr.ph.i129.preheader432, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck329
  %n.vec350 = and i64 %i.ep, 9223372036854775800  ; 3 uses
  %i.ex = shl i64 %n.vec350, 2                    ; 3 uses
  %i.ey = getelementptr i8, ptr %7, i64 %i.ex     ; 2 uses
  %i.ez = getelementptr i8, ptr %i.em, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.eg, i64 %i.ex
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next360, %vector.body351 ] ; 2 uses
  %i.fb = shl i64 %index352, 2                    ; 3 uses
  %next.gep353 = getelementptr i8, ptr %7, i64 %i.fb ; 2 uses
  %next.gep354 = getelementptr i8, ptr %i.em, i64 %i.fb ; 3 uses
  %next.gep355 = getelementptr i8, ptr %i.eg, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep354, i64 16 ; 2 uses
  %wide.load356 = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !367, !alias.scope !4527, !noalias !4528
  %wide.load357 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !367, !alias.scope !4527, !noalias !4528
  %i.fd = getelementptr i8, ptr %next.gep353, i64 16
  store <4 x i32> %wide.load356, ptr %next.gep353, align 4, !tbaa !367, !alias.scope !4529, !noalias !4530
  store <4 x i32> %wide.load357, ptr %i.fd, align 4, !tbaa !367, !alias.scope !4529, !noalias !4530
  %i.fe = getelementptr i8, ptr %next.gep355, i64 16
  %wide.load358 = load <4 x i32>, ptr %next.gep355, align 4, !tbaa !367, !alias.scope !4528
  %wide.load359 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !367, !alias.scope !4528
  store <4 x i32> %wide.load358, ptr %next.gep354, align 4, !tbaa !367, !alias.scope !4527, !noalias !4528
  store <4 x i32> %wide.load359, ptr %i.fc, align 4, !tbaa !367, !alias.scope !4527, !noalias !4528
  %index.next360 = add nuw i64 %index352, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next360, %n.vec350
  br i1 %i.ff, label %middle.block361, label %vector.body351, !llvm.loop !4503

middle.block361:                                  ; preds = %vector.body351
  %cmp.n362 = icmp eq i64 %i.ep, %n.vec350
  br i1 %cmp.n362, label %._crit_edge.i134, label %.lr.ph.i129.preheader432

.lr.ph.i129.preheader432:                         ; preds = %vector.memcheck329, %.lr.ph.i129.preheader, %middle.block361
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck329 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ey, %middle.block361 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.em, %vector.memcheck329 ], [ %i.em, %.lr.ph.i129.preheader ], [ %i.ez, %middle.block361 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.eg, %vector.memcheck329 ], [ %i.eg, %.lr.ph.i129.preheader ], [ %i.fa, %middle.block361 ] ; 3 uses
  %.02131.i132.ph435 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fg = sub i64 %i.ag, %.02131.i132.ph435       ; 2 uses
  %i.fh = lshr i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1
  %xtraiter = and i64 %i.fi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader432, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.fl, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader432 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.fk, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader432 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.fj, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader432 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader432 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.fm = load i32, ptr %.02032.i131.prol, align 4, !tbaa !367
  store i32 %i.fm, ptr %.033.i130.prol, align 4, !tbaa !367
  %i.fn = load i32, ptr %.02131.i132.prol, align 4, !tbaa !367
  store i32 %i.fn, ptr %.02032.i131.prol, align 4, !tbaa !367
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !4504

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader432
  %.lcssa433.unr = phi ptr [ poison, %.lr.ph.i129.preheader432 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader432 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader432 ], [ %i.fk, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader432 ], [ %i.fj, %.lr.ph.i129.prol ]
  %i.fo = icmp ult i64 %i.fg, 12
  br i1 %i.fo, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.gg, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.gf, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.ge, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.fs = load i32, ptr %.02032.i131, align 4, !tbaa !367
  store i32 %i.fs, ptr %.033.i130, align 4, !tbaa !367
  %i.ft = load i32, ptr %.02131.i132, align 4, !tbaa !367
  store i32 %i.ft, ptr %.02032.i131, align 4, !tbaa !367
  %i.fu = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fx = load i32, ptr %i.fq, align 4, !tbaa !367
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !367
  %i.fy = load i32, ptr %i.fp, align 4, !tbaa !367
  store i32 %i.fy, ptr %i.fq, align 4, !tbaa !367
  %i.fz = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.ga = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.gc = load i32, ptr %i.fv, align 4, !tbaa !367
  store i32 %i.gc, ptr %i.fw, align 4, !tbaa !367
  %i.gd = load i32, ptr %i.fu, align 4, !tbaa !367
  store i32 %i.gd, ptr %i.fv, align 4, !tbaa !367
  %i.ge = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.gh = load i32, ptr %i.ga, align 4, !tbaa !367
  store i32 %i.gh, ptr %i.gb, align 4, !tbaa !367
  %i.gi = load i32, ptr %i.fz, align 4, !tbaa !367
  store i32 %i.gi, ptr %i.ga, align 4, !tbaa !367
  %.not28.i133.3 = icmp eq ptr %i.ge, %i.bg
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !4505

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block361, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ey, %middle.block361 ], [ %.lcssa433.unr, %.lr.ph.i129.prol.loopexit ], [ %i.gg, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.gj = load i64, ptr %i.bl, align 8, !tbaa !375
  %i.gk = load i64, ptr %.0106222, align 8, !tbaa !375
  store i64 %i.gk, ptr %i.bl, align 8, !tbaa !375
  store i64 %i.gj, ptr %.0106222, align 8, !tbaa !375
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gl = icmp eq ptr %i.bl, %.0190217
  br i1 %i.gl, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gm = icmp eq ptr %.0190217, %.0106222
  %spec.select204 = select i1 %i.gm, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0190217, %bb.q ], [ %spec.select204, %bb.t ], [ %.0106222, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.d, align 8, !tbaa !376
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPiS3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET_SE_SE_RSE_SE_SE_RT0_SH_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gn = load i64, ptr %i.bl, align 8, !tbaa !375
  %i.go = load i64, ptr %.0106222, align 8, !tbaa !375
  store i64 %i.go, ptr %i.bl, align 8, !tbaa !375
  store i64 %i.gn, ptr %.0106222, align 8, !tbaa !375
  %i.gp = icmp eq ptr %i.bl, %.0190217
  br i1 %i.gp, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gq = icmp eq ptr %.0190217, %.0106222
  %spec.select205 = select i1 %i.gq, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140
  %i.gr = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %i.ee, %bb.u ], [ %i.ee, %bb.w ], [ %i.ee, %bb.v ]
  %i.gs = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %i.ed, %bb.u ], [ %i.ed, %bb.w ], [ %i.ed, %bb.v ]
  %.1191 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit140 ], [ %.0190217, %bb.u ], [ %spec.select205, %bb.w ], [ %.0106222, %bb.v ]
  %i.gt = xor i1 %i.eb, %i.ef
  %i.gu = zext i1 %i.gt to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit
  %i.gv = phi ptr [ %i.gr, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %i.gw = phi ptr [ %i.gs, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %i.gx = phi i1 [ %i.ea, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.bt, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ]
  %.2192 = phi ptr [ %.1191, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.ec, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gu, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108221, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPiS4_NS0_7move_opEEET1_T_S7_RS7_T0_S9_S9_S6_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gx, true
  %i.gy = sext i1 %not. to i64
  %.1 = add i64 %.0226, %i.gy
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0111219, i64 %2 ; 2 uses
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !376
  %i.ha = getelementptr inbounds nuw i8, ptr %.0106222, i64 8
  %i.hb = icmp ne i64 %.0104225, 0
  %.neg = sext i1 %i.hb to i64
  %i.hc = add i64 %.0104225, %.neg
  %i.hd = icmp ne i64 %i.bc, 0
  %.neg122 = sext i1 %i.hd to i64
  %i.he = add i64 %.sroa.speculated179, %.neg122
  %i.hf = add i64 %.0194216, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hf, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !4506

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hg = phi ptr [ %i.gv, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.hh = phi ptr [ %i.gw, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 5 uses
  %.0194.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0194216, %bb.g ], [ %.0194216, %bb.f ] ; 3 uses
  %.0190.lcssa.ph = phi ptr [ %.2192, %bb.x ], [ %.0190217, %bb.g ], [ %.0190217, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114218, %bb.g ], [ %.0114218, %bb.f ] ; 5 uses
  %.0111.lcssa.ph = phi ptr [ %i.gz, %bb.x ], [ %.0111219, %bb.g ], [ %.0111219, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108221, %bb.f ]
  %i.hi = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.hj = select i1 %i.hi, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.hh, %i.hg
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hk = ptrtoaddr ptr %.0114.lcssa.ph to i64
  %.0114.lcssa.ph367 = ptrtoaddr ptr %i.hh to i64 ; 2 uses
  %i.hl = ptrtoaddr ptr %i.hg to i64
  %i.hm = add i64 %i.hl, -4
  %i.hn = sub i64 %i.hm, %.0114.lcssa.ph367       ; 2 uses
  %i.ho = lshr i64 %i.hn, 2
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.hn, 44
  %i.hq = sub i64 %.0114.lcssa.ph367, %i.hk
  %diff.check368 = icmp ugt i64 %i.hq, -32
  %or.cond421 = select i1 %min.iters.check370, i1 true, i1 %diff.check368
  br i1 %or.cond421, label %.lr.ph.i.i145.preheader429, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph.i.i145.preheader
  %n.vec372 = and i64 %i.hp, 9223372036854775800  ; 3 uses
  %i.hr = shl i64 %n.vec372, 2                    ; 2 uses
  %i.hs = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hh, i64 %i.hr
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 2 uses
  %i.hu = shl i64 %index374, 2                    ; 2 uses
  %next.gep375 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hu ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.hh, i64 %i.hu ; 2 uses
  %i.hv = getelementptr i8, ptr %next.gep376, i64 16
  %wide.load377 = load <4 x i32>, ptr %next.gep376, align 4, !tbaa !367
  %wide.load378 = load <4 x i32>, ptr %i.hv, align 4, !tbaa !367
  %i.hw = getelementptr i8, ptr %next.gep375, i64 16
  store <4 x i32> %wide.load377, ptr %next.gep375, align 4, !tbaa !367
  store <4 x i32> %wide.load378, ptr %i.hw, align 4, !tbaa !367
  %index.next379 = add nuw i64 %index374, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.hx, label %middle.block380, label %vector.body373, !llvm.loop !4507

middle.block380:                                  ; preds = %vector.body373
  %cmp.n381 = icmp eq i64 %i.hp, %n.vec372
  br i1 %cmp.n381, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph.i.i145.preheader429

.lr.ph.i.i145.preheader429:                       ; preds = %.lr.ph.i.i145.preheader, %middle.block380
  %.010.i.i146.ph = phi ptr [ %.0114.lcssa.ph, %.lr.ph.i.i145.preheader ], [ %i.hs, %middle.block380 ]
  %.079.i.i147.ph = phi ptr [ %i.hh, %.lr.ph.i.i145.preheader ], [ %i.ht, %middle.block380 ]
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader429, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.ia, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader429 ] ; 2 uses
  %.079.i.i147 = phi ptr [ %i.hz, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader429 ] ; 2 uses
  %i.hy = load i32, ptr %.079.i.i147, align 4, !tbaa !367
  store i32 %i.hy, ptr %.010.i.i146, align 4, !tbaa !367
  %i.hz = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  %.not.i.i148 = icmp eq ptr %i.hz, %i.hg
  br i1 %.not.i.i148, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150, label %.lr.ph.i.i145, !llvm.loop !4508

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150: ; preds = %.lr.ph.i.i145, %middle.block380, %bb.a, %.thread
  %.0108.lcssa286 = phi ptr [ %1, %bb.a ], [ %i.hj, %.thread ], [ %i.hj, %middle.block380 ], [ %i.hj, %.lr.ph.i.i145 ]
  %.0111.lcssa285 = phi ptr [ %i.h, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block380 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0190.lcssa284 = phi ptr [ %i.g, %bb.a ], [ %.0190.lcssa.ph, %.thread ], [ %.0190.lcssa.ph, %middle.block380 ], [ %.0190.lcssa.ph, %.lr.ph.i.i145 ]
  %.0194.lcssa283 = phi i64 [ 0, %bb.a ], [ %.0194.lcssa.ph, %.thread ], [ %.0194.lcssa.ph, %middle.block380 ], [ %.0194.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx209 = shl i64 %6, 2                        ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx209 ; 2 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150
  %i.ic = add i64 %.idx209, -4                    ; 2 uses
  %i.id = lshr exact i64 %i.ic, 2
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.ic, 124
  br i1 %min.iters.check387, label %.lr.ph.i.i152.preheader428, label %vector.memcheck384

vector.memcheck384:                               ; preds = %.lr.ph.i.i152.preheader
  %i.if = mul i64 %2, %i.f
  %i.ig = add i64 %i.if, %3
  %i.ih = shl i64 %i.ig, 2
  %i.ii = add i64 %i.ih, %i.b
  %i.ij = sub i64 %i.ii, %i.a
  %diff.check385 = icmp ugt i64 %i.ij, -32
  br i1 %diff.check385, label %.lr.ph.i.i152.preheader428, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck384
  %n.vec389 = and i64 %i.ie, 9223372036854775800  ; 3 uses
  %i.ik = shl i64 %n.vec389, 2                    ; 2 uses
  %i.il = getelementptr i8, ptr %7, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.j, i64 %i.ik
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next396, %vector.body390 ] ; 2 uses
  %i.in = shl i64 %index391, 2                    ; 2 uses
  %next.gep392 = getelementptr i8, ptr %7, i64 %i.in ; 2 uses
  %next.gep393 = getelementptr i8, ptr %i.j, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep393, i64 16
  %wide.load394 = load <4 x i32>, ptr %next.gep393, align 4, !tbaa !367
  %wide.load395 = load <4 x i32>, ptr %i.io, align 4, !tbaa !367
  %i.ip = getelementptr i8, ptr %next.gep392, i64 16
  store <4 x i32> %wide.load394, ptr %next.gep392, align 4, !tbaa !367
  store <4 x i32> %wide.load395, ptr %i.ip, align 4, !tbaa !367
  %index.next396 = add nuw i64 %index391, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next396, %n.vec389
  br i1 %i.iq, label %middle.block397, label %vector.body390, !llvm.loop !4509

middle.block397:                                  ; preds = %vector.body390
  %cmp.n398 = icmp eq i64 %i.ie, %n.vec389
  br i1 %cmp.n398, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, label %.lr.ph.i.i152.preheader428

.lr.ph.i.i152.preheader428:                       ; preds = %vector.memcheck384, %.lr.ph.i.i152.preheader, %middle.block397
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck384 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.il, %middle.block397 ]
  %.079.i.i154.ph = phi ptr [ %i.j, %vector.memcheck384 ], [ %i.j, %.lr.ph.i.i152.preheader ], [ %i.im, %middle.block397 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader428, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.it, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader428 ] ; 2 uses
  %.079.i.i154 = phi ptr [ %i.is, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader428 ] ; 2 uses
  %i.ir = load i32, ptr %.079.i.i154, align 4, !tbaa !367
  store i32 %i.ir, ptr %.010.i.i153, align 4, !tbaa !367
  %i.is = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %.not.i.i155 = icmp eq ptr %i.is, %i.ib
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, label %.lr.ph.i.i152, !llvm.loop !4510

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157: ; preds = %.lr.ph.i.i152, %middle.block397, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit150
  store ptr %7, ptr %i.c, align 8, !tbaa !376
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.iu, ptr %i.d, align 8, !tbaa !376
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.iu, ptr %10, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %4
  store ptr %i.iw, ptr %12, align 8, !tbaa !575, !alias.scope !4531
  store ptr %.0190.lcssa284, ptr %13, align 8, !tbaa !575, !alias.scope !4532
  store ptr %i.j, ptr %14, align 8, !tbaa !571, !alias.scope !4533
  store ptr %7, ptr %15, align 8, !tbaa !571, !alias.scope !4534
  store ptr %i.ib, ptr %16, align 8, !tbaa !571, !alias.scope !4535
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0194.lcssa283, i64 noundef 0, i64 noundef %.0194.lcssa283, i1 noundef zeroext true)
  %i.ix = load ptr, ptr %11, align 8, !tbaa !571  ; 2 uses
  %i.iy = ptrtoaddr ptr %i.ix to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.iz = load ptr, ptr %10, align 8, !tbaa !571  ; 2 uses
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !376 ; 4 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64
  %.not27.i = icmp eq ptr %i.ja, %i.iz
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, %bb.y
  %indvar403 = phi i64 [ %indvar.next404, %bb.y ], [ 0, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 2 uses
  %.030.i = phi ptr [ %.030..i, %bb.y ], [ %i.iz, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 7 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.y ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.kc, %bb.y ], [ %i.ix, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 5 uses
  %i.jc = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.jc, label %.lr.ph.i.i.i.preheader, label %bb.y

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i158
  %.030.i402.le = ptrtoaddr ptr %.030.i to i64    ; 2 uses
  %i.jd = add i64 %.030.i402.le, -4
  %i.je = sub i64 %i.jd, %i.jb                    ; 2 uses
  %i.jf = lshr i64 %i.je, 2
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check407 = icmp ult i64 %i.je, 76
  br i1 %min.iters.check407, label %.lr.ph.i.i.i.preheader422, label %vector.memcheck401

vector.memcheck401:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.jh = shl i64 %indvar403, 2
  %i.ji = sub i64 %i.jh, %i.iy
  %i.jj = add i64 %i.ji, %.030.i402.le
  %i.jk = add i64 %i.jj, -1
  %diff.check405 = icmp ult i64 %i.jk, 31
  br i1 %diff.check405, label %.lr.ph.i.i.i.preheader422, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck401
  %n.vec409 = and i64 %i.jg, 9223372036854775800  ; 3 uses
  %i.jl = mul i64 %n.vec409, -4                   ; 2 uses
  %i.jm = getelementptr i8, ptr %.02128.i, i64 %i.jl
  %i.jn = getelementptr i8, ptr %.030.i, i64 %i.jl
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.jo = mul i64 %index411, -4                   ; 2 uses
  %next.gep412 = getelementptr i8, ptr %.02128.i, i64 %i.jo ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.030.i, i64 %i.jo ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %next.gep413, i64 -16
  %i.jq = getelementptr inbounds i8, ptr %next.gep413, i64 -32
  %wide.load414 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !367
  %wide.load415 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !367
  %i.jr = getelementptr inbounds i8, ptr %next.gep412, i64 -16
  %i.js = getelementptr inbounds i8, ptr %next.gep412, i64 -32
  store <4 x i32> %wide.load414, ptr %i.jr, align 4, !tbaa !367
  store <4 x i32> %wide.load415, ptr %i.js, align 4, !tbaa !367
  %index.next416 = add nuw i64 %index411, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.jt, label %middle.block417, label %vector.body410, !llvm.loop !4521

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.jg, %n.vec409
  br i1 %cmp.n418, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i.i.i.preheader422

.lr.ph.i.i.i.preheader422:                        ; preds = %vector.memcheck401, %.lr.ph.i.i.i.preheader, %middle.block417
  %.010.i.i.i.ph = phi ptr [ %.02128.i, %vector.memcheck401 ], [ %.02128.i, %.lr.ph.i.i.i.preheader ], [ %i.jm, %middle.block417 ]
  %.079.i.i.i.ph = phi ptr [ %.030.i, %vector.memcheck401 ], [ %.030.i, %.lr.ph.i.i.i.preheader ], [ %i.jn, %middle.block417 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader422, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jv, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader422 ]
  %.079.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader422 ]
  %i.ju = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 3 uses
  %i.jv = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !367
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEbT_T1_T0_RSG_SI_SI_SI_RT2_:bb.a
  %i.ak = udiv i64 %i.aj, %storemerge
  %i.al = add i64 %i.ak, 1
  %i.am = load ptr, ptr %6, align 8, !tbaa !378   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %storemerge
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = add i64 %i.ao, 7
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %.not10.i = icmp ule i64 %i.as, %i.aq
  %i.at = sub nuw i64 %i.aq, %i.as
  %i.au = lshr i64 %i.at, 3
  %i.av = icmp uge i64 %i.au, %i.al
  %i.aw = select i1 %.not10.i, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.i, label %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread

bb.i:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit
  store i64 0, ptr %2, align 8, !tbaa !375
  %i.ax = load i64, ptr %3, align 8, !tbaa !375
  store i64 %i.ax, ptr %5, align 8, !tbaa !375
  br label %.critedge

_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread: ; preds = %bb.h, %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit
  %.not81 = icmp uge i64 %i.ae, %storemerge       ; 2 uses
  %i.ay = select i1 %.not81, i64 %.071.in, i64 %i.af
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.ba = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEENS0_9iter_sizeIT_E4typeESG_SG_SI_T0_RT1_(ptr noundef %0, ptr noundef %i.az, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 8 uses
  %i.bb = icmp eq i64 %i.ba, %.071.in
  %or.cond = and i1 %.not81, %i.bb
  %i.bc = load i64, ptr %3, align 8, !tbaa !375   ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread
  store i64 %i.bc, ptr %5, align 8, !tbaa !375
  store i64 %.071.in, ptr %2, align 8, !tbaa !375
  br label %.critedge

bb.k:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread
  %i.bd = shl i64 %i.bc, 1
  %i.be = icmp eq i64 %i.ba, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.ba, ptr %5, align 8, !tbaa !375
  %i.bf = load i64, ptr %3, align 8, !tbaa !375
  store i64 %i.bf, ptr %2, align 8, !tbaa !375
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.bg = add i64 %i.bc, %.071.in
  %.not82 = icmp ult i64 %i.ba, %i.bg
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %5, align 8, !tbaa !375
  %i.bh = load i64, ptr %3, align 8, !tbaa !375
  %i.bi = sub i64 %i.ba, %i.bh
  store i64 %i.bi, ptr %2, align 8, !tbaa !375
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp ult i64 %i.ba, 4
  br i1 %i.bj, label %.critedge, label %.preheader87

.preheader87:                                     ; preds = %bb.o, %.preheader87
  %storemerge83 = phi i64 [ %i.bl, %.preheader87 ], [ %i.bc, %bb.o ] ; 6 uses
  %i.bk = add i64 %storemerge83, -1
  %i.bl = and i64 %i.bk, %storemerge83            ; 2 uses
  %.not84 = icmp eq i64 %i.bl, 0
  br i1 %.not84, label %.preheader, label %.preheader87, !llvm.loop !4855

.preheader:                                       ; preds = %.preheader87
  store i64 %storemerge83, ptr %2, align 8, !tbaa !375
  %i.bm = icmp ugt i64 %storemerge83, %i.ba
  br i1 %i.bm, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bn = phi i64 [ %i.bo, %.lr.ph ], [ %storemerge83, %.preheader ]
  %i.bo = lshr i64 %i.bn, 1                       ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, %i.ba
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !4856

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.bo, ptr %2, align 8, !tbaa !375
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i64 [ %i.bo, %._crit_edge ], [ %storemerge83, %.preheader ]
  %i.bq = icmp ult i64 %.lcssa, 16
  %i.br = select i1 %i.bq, ptr %2, ptr @_ZN5boost7movelib15detail_adaptiveL34AdaptiveSortInsertionSortThresholdE
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !375
  store i64 %i.bs, ptr %4, align 8, !tbaa !375
  store i64 0, ptr %3, align 8, !tbaa !375
  %i.bt = load i64, ptr %2, align 8, !tbaa !375
  store i64 %i.bt, ptr %5, align 8, !tbaa !375
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.i, %bb.j, %bb.n, %bb.p, %bb.l
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.j ], [ false, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_RT1_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3 ; 11 uses
  %i.c = sub i64 %1, %3                           ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !380  ; 2 uses
  %.sroa.speculated63 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.e) ; 12 uses
  %i.f = icmp ult i64 %.sroa.speculated63, %2
  %.not91 = icmp eq i64 %.sroa.speculated63, 0
  %.not = or i1 %i.f, %.not91
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %.sroa.speculated63
  %i.h = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !379  ; 3 uses
  %.not.i = icmp ugt i64 %.sroa.speculated63, %i.j
  %i.k = load ptr, ptr %4, align 8, !tbaa !378    ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %.sroa.speculated63, 2    ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i
  %i.n = add i64 %.idx.i, -4                      ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.q = shl i64 %3, 2
  %i.r = add i64 %i.q, %i.a
  %.neg = sub i64 %.idx.i, %i.r
  %i.s = add i64 %.neg, %i.l
  %i.t = add i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u
  %i.w = getelementptr i8, ptr %i.h, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.x ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !367
  %wide.load120 = load <4 x i32>, ptr %i.y, align 4, !tbaa !367
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !367
  store <4 x i32> %wide.load120, ptr %i.z, align 4, !tbaa !367
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !4857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader.i ], [ %i.v, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader.i ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ab = load i32, ptr %.079.i.i, align 4, !tbaa !367
  store i32 %i.ab, ptr %.010.i.i, align 4, !tbaa !367
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ac, %i.m
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !4858

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.j, 2                     ; 5 uses
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 %.idx26.i ; 5 uses
  %.not8.i17.i = icmp eq i64 %i.j, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.c
  %i.af = add i64 %.idx26.i, -4                   ; 2 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.af, 92
  br i1 %min.iters.check125, label %.lr.ph.i18.i.preheader199, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i18.i.preheader
  %i.ai = shl i64 %3, 2
  %5 = shl i64 %.sroa.speculated63, 2
  %6 = add i64 %i.ai, %i.a
  %.neg191 = sub i64 %5, %6
  %i.aj = add i64 %.neg191, %i.l
  %i.ak = add i64 %i.aj, -1
  %diff.check123 = icmp ult i64 %i.ak, 31
  br i1 %diff.check123, label %.lr.ph.i18.i.preheader199, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec127 = and i64 %i.ah, 9223372036854775800  ; 3 uses
  %i.al = shl i64 %n.vec127, 2                    ; 2 uses
  %i.am = getelementptr i8, ptr %i.k, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %i.h, i64 %i.al
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next134, %vector.body128 ] ; 2 uses
  %i.ao = shl i64 %index129, 2                    ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.k, i64 %i.ao ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.h, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load132 = load <4 x i32>, ptr %next.gep131, align 4, !tbaa !367
  %wide.load133 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !367
  %i.aq = getelementptr i8, ptr %next.gep130, i64 16
  store <4 x i32> %wide.load132, ptr %next.gep130, align 4, !tbaa !367
  store <4 x i32> %wide.load133, ptr %i.aq, align 4, !tbaa !367
  %index.next134 = add nuw i64 %index129, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next134, %n.vec127
  br i1 %i.ar, label %middle.block135, label %vector.body128, !llvm.loop !4859

middle.block135:                                  ; preds = %vector.body128
  %cmp.n136 = icmp eq i64 %i.ah, %n.vec127
  br i1 %cmp.n136, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader199

.lr.ph.i18.i.preheader199:                        ; preds = %vector.memcheck122, %.lr.ph.i18.i.preheader, %middle.block135
  %.010.i19.i.ph = phi ptr [ %i.k, %vector.memcheck122 ], [ %i.k, %.lr.ph.i18.i.preheader ], [ %i.am, %middle.block135 ]
  %.079.i20.i.ph = phi ptr [ %i.h, %vector.memcheck122 ], [ %i.h, %.lr.ph.i18.i.preheader ], [ %i.an, %middle.block135 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader199, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.au, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader199 ] ; 2 uses
  %.079.i20.i = phi ptr [ %i.at, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader199 ] ; 2 uses
  %i.as = load i32, ptr %.079.i20.i, align 4, !tbaa !367
  store i32 %i.as, ptr %.010.i19.i, align 4, !tbaa !367
  %i.at = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !4860

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block135, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.k, %bb.c ], [ %i.am, %middle.block135 ], [ %i.au, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i140 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %.sroa.speculated63, 2  ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.h, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.aw = add i64 %.idx27.i, -4
  %i.ax = sub i64 %i.aw, %.idx26.i                ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.ax, 92
  br i1 %min.iters.check143, label %.lr.ph.i24.i.preheader198, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph.i24.i.preheader
  %7 = shl i64 %3, 2
  %8 = add i64 %.idx26.i, %i.a
  %i.ba = add i64 %8, %7
  %.neg192 = sub i64 %.idx27.i, %i.ba
  %i.bb = add i64 %.neg192, %.0.lcssa.i22.i140
  %i.bc = add i64 %i.bb, -1
  %diff.check141 = icmp ult i64 %i.bc, 31
  br i1 %diff.check141, label %.lr.ph.i24.i.preheader198, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck139
  %n.vec145 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.bd = shl i64 %n.vec145, 2                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.ae, i64 %i.bd
  %i.bf = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bd
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %i.bg = shl i64 %index147, 2                    ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.ae, i64 %i.bg ; 2 uses
  %next.gep149 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load150 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !367
  %wide.load151 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !367
  %i.bi = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %wide.load150, ptr %next.gep149, align 4, !tbaa !367
  store <4 x i32> %wide.load151, ptr %i.bi, align 4, !tbaa !367
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.bj, label %middle.block153, label %vector.body146, !llvm.loop !4861

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %i.az, %n.vec145
  br i1 %cmp.n154, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader198

.lr.ph.i24.i.preheader198:                        ; preds = %vector.memcheck139, %.lr.ph.i24.i.preheader, %middle.block153
  %.012.i.i.ph = phi ptr [ %i.ae, %vector.memcheck139 ], [ %i.ae, %.lr.ph.i24.i.preheader ], [ %i.be, %middle.block153 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck139 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bf, %middle.block153 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader198, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bl, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader198 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bm, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader198 ] ; 2 uses
  %i.bk = load i32, ptr %.012.i.i, align 4, !tbaa !367
  store i32 %i.bk, ptr %.0911.i.i, align 4, !tbaa !367
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i25.i = icmp eq ptr %i.bl, %i.av
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i, !llvm.loop !4862

_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block153, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  store i64 %.sroa.speculated63, ptr %i.i, align 8, !tbaa !379
  %i.bn = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_T1_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.bo = sub i64 0, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bo
  %i.bq = sub i64 %.sroa.speculated63, %i.bn
  %i.br = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef %i.bp, i64 noundef %i.c, i64 noundef %i.bn, i64 noundef %3, i64 noundef %i.bq) ; 8 uses
  %.not46.not = icmp ugt i64 %3, %i.e
  br i1 %.not46.not, label %bb.d, label %.lr.ph.i53.preheader

bb.d:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit
  %i.bs = load ptr, ptr %4, align 8, !tbaa !378   ; 2 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.speculated63 ; 2 uses
  %i.bv = sub i64 0, %i.br                        ; 3 uses
  %.not8.i = icmp eq i64 %i.br, 0
  br i1 %.not8.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.c ; 4 uses
  %.idx = shl nsw i64 %i.bv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %.idx ; 4 uses
  %i.bz = add i64 %i.br, 4611686018427387903
  %i.ca = and i64 %i.bz, 4611686018427387903      ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check177 = icmp samesign ult i64 %i.ca, 23
  br i1 %min.iters.check177, label %.lr.ph.i.preheader196, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph.i.preheader
  %i.cc = shl i64 %1, 2
  %9 = shl i64 %.sroa.speculated63, 2
  %10 = add i64 %i.cc, %i.a
  %i.cd = add i64 %9, %i.bt
  %i.ce = sub i64 %i.cd, %10
  %diff.check175 = icmp ugt i64 %i.ce, -32
  br i1 %diff.check175, label %.lr.ph.i.preheader196, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck174
  %n.vec179 = and i64 %i.cb, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec179, 2                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cf
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next186, %vector.body180 ] ; 2 uses
  %i.ci = shl i64 %index181, 2                    ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.by, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load184 = load <4 x i32>, ptr %next.gep183, align 4, !tbaa !367
  %wide.load185 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !367
  %i.ck = getelementptr i8, ptr %next.gep182, i64 16
  store <4 x i32> %wide.load184, ptr %next.gep182, align 4, !tbaa !367
  store <4 x i32> %wide.load185, ptr %i.ck, align 4, !tbaa !367
  %index.next186 = add nuw i64 %index181, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next186, %n.vec179
  br i1 %i.cl, label %middle.block187, label %vector.body180, !llvm.loop !4863

middle.block187:                                  ; preds = %vector.body180
  %cmp.n188 = icmp eq i64 %i.cb, %n.vec179
  br i1 %cmp.n188, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, label %.lr.ph.i.preheader196

.lr.ph.i.preheader196:                            ; preds = %vector.memcheck174, %.lr.ph.i.preheader, %middle.block187
  %.010.i.ph = phi ptr [ %i.bx, %vector.memcheck174 ], [ %i.bx, %.lr.ph.i.preheader ], [ %i.cg, %middle.block187 ]
  %.079.i.ph = phi ptr [ %i.by, %vector.memcheck174 ], [ %i.by, %.lr.ph.i.preheader ], [ %i.ch, %middle.block187 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader196, %.lr.ph.i
  %.010.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader196 ] ; 2 uses
  %.079.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader196 ] ; 2 uses
  %i.cm = load i32, ptr %.079.i, align 4, !tbaa !367
  store i32 %i.cm, ptr %.010.i, align 4, !tbaa !367
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i47 = icmp eq ptr %i.cn, %i.bu
  br i1 %.not.i47, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, label %.lr.ph.i, !llvm.loop !4864

bb.e:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 9 uses
  %i.cp = icmp ugt i64 %i.c, %.sroa.speculated.i
  br i1 %i.cp, label %.lr.ph.i50, label %._crit_edge.i

.lr.ph.i50:                                       ; preds = %bb.e
  %.idx33.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %or.cond.i.i = icmp ult i64 %2, 2
  br i1 %or.cond.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i, label %.lr.ph37.i.preheader.i

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i: ; preds = %.lr.ph.i50, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i
  %.034.us.i = phi i64 [ %i.cq, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i ], [ 0, %.lr.ph.i50 ]
  %i.cq = add i64 %.034.us.i, %.sroa.speculated.i ; 3 uses
  %i.cr = sub i64 %i.c, %i.cq
  %i.cs = icmp ugt i64 %i.cr, %.sroa.speculated.i
  br i1 %i.cs, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i, label %._crit_edge.i, !llvm.loop !4865

.lr.ph37.i.preheader.i:                           ; preds = %.lr.ph.i50, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i
  %.034.i = phi i64 [ %i.db, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i ], [ 0, %.lr.ph.i50 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx33.i
  %.02233.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  br label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %bb.h, %.lr.ph37.i.preheader.i
  %.02236.i.i = phi ptr [ %.022.i.i, %bb.h ], [ %.02233.i.i, %.lr.ph37.i.preheader.i ] ; 4 uses
  %.pn35.i.i = phi ptr [ %.02236.i.i, %bb.h ], [ %i.ct, %.lr.ph37.i.preheader.i ] ; 3 uses
  %i.cv = load i32, ptr %.02236.i.i, align 4, !tbaa !367 ; 3 uses
  %i.cw = load i32, ptr %.pn35.i.i, align 4, !tbaa !367 ; 2 uses
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph37.i.i
  store i32 %i.cw, ptr %.02236.i.i, align 4, !tbaa !367
  %.not2628.i.i = icmp eq ptr %.pn35.i.i, %i.ct
  br i1 %.not2628.i.i, label %.critedge.i.i, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %bb.f, %bb.g
  %.030.i.i = phi ptr [ %i.cy, %bb.g ], [ %.pn35.i.i, %bb.f ] ; 3 uses
  %i.cy = getelementptr i8, ptr %.030.i.i, i64 -4 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !367 ; 2 uses
  %i.da = icmp slt i32 %i.cv, %i.cz
  br i1 %i.da, label %bb.g, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.lr.ph.i.i51, %bb.f
  %.021.lcssa.i.i = phi ptr [ %i.ct, %bb.f ], [ %i.ct, %bb.g ], [ %.030.i.i, %.lr.ph.i.i51 ]
  store i32 %i.cv, ptr %.021.lcssa.i.i, align 4, !tbaa !367
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i51
  store i32 %i.cz, ptr %.030.i.i, align 4, !tbaa !367
  %.not26.i.i = icmp eq ptr %i.cy, %i.ct
  br i1 %.not26.i.i, label %.critedge.i.i, label %.lr.ph.i.i51, !llvm.loop !94

bb.h:                                             ; preds = %.critedge.i.i, %.lr.ph37.i.i
  %.022.i.i = getelementptr inbounds nuw i8, ptr %.02236.i.i, i64 4 ; 2 uses
  %.not25.i.i = icmp eq ptr %.022.i.i, %i.cu
  br i1 %.not25.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i, label %.lr.ph37.i.i, !llvm.loop !95

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i: ; preds = %bb.h
  %i.db = add i64 %.034.i, %.sroa.speculated.i    ; 3 uses
  %i.dc = sub i64 %i.c, %i.db
  %i.dd = icmp ugt i64 %i.dc, %.sroa.speculated.i
  br i1 %i.dd, label %.lr.ph37.i.preheader.i, label %._crit_edge.i, !llvm.loop !4865

._crit_edge.i:                                    ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i, %bb.e
  %.0.lcssa.i48 = phi i64 [ 0, %bb.e ], [ %i.cq, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i ], [ %i.db, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i ] ; 2 uses
  %.idx.i49 = shl nuw nsw i64 %.0.lcssa.i48, 2    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i49 ; 6 uses
  %.idx32.i = shl nuw nsw i64 %i.c, 2             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx32.i
  %.not.i15.i = icmp samesign eq i64 %.0.lcssa.i48, %i.c
  %i.dg = add nuw nsw i64 %.idx.i49, 4
  %.not2534.i17.i = icmp samesign eq i64 %i.dg, %.idx32.i
  %or.cond.i18.i = select i1 %.not.i15.i, i1 true, i1 %.not2534.i17.i
  br i1 %or.cond.i18.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph37.i19.preheader.i

.lr.ph37.i19.preheader.i:                         ; preds = %._crit_edge.i
  %.02233.i16.i = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  br label %.lr.ph37.i19.i

.lr.ph37.i19.i:                                   ; preds = %bb.k, %.lr.ph37.i19.preheader.i
  %.02236.i20.i = phi ptr [ %.022.i22.i, %bb.k ], [ %.02233.i16.i, %.lr.ph37.i19.preheader.i ] ; 4 uses
  %.pn35.i21.i = phi ptr [ %.02236.i20.i, %bb.k ], [ %i.de, %.lr.ph37.i19.preheader.i ] ; 3 uses
  %i.dh = load i32, ptr %.02236.i20.i, align 4, !tbaa !367 ; 3 uses
  %i.di = load i32, ptr %.pn35.i21.i, align 4, !tbaa !367 ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph37.i19.i
  store i32 %i.di, ptr %.02236.i20.i, align 4, !tbaa !367
  %.not2628.i24.i = icmp eq ptr %.pn35.i21.i, %i.de
  br i1 %.not2628.i24.i, label %.critedge.i27.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.i, %bb.j
  %.030.i26.i = phi ptr [ %i.dk, %bb.j ], [ %.pn35.i21.i, %bb.i ] ; 3 uses
  %i.dk = getelementptr i8, ptr %.030.i26.i, i64 -4 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !367 ; 2 uses
  %i.dm = icmp slt i32 %i.dh, %i.dl
  br i1 %i.dm, label %bb.j, label %.critedge.i27.i

.critedge.i27.i:                                  ; preds = %bb.j, %.lr.ph.i25.i, %bb.i
  %.021.lcssa.i28.i = phi ptr [ %i.de, %bb.i ], [ %i.de, %bb.j ], [ %.030.i26.i, %.lr.ph.i25.i ]
  store i32 %i.dh, ptr %.021.lcssa.i28.i, align 4, !tbaa !367
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i25.i
  store i32 %i.dl, ptr %.030.i26.i, align 4, !tbaa !367
  %.not26.i29.i = icmp eq ptr %i.dk, %i.de
  br i1 %.not26.i29.i, label %.critedge.i27.i, label %.lr.ph.i25.i, !llvm.loop !94

bb.k:                                             ; preds = %.critedge.i27.i, %.lr.ph37.i19.i
  %.022.i22.i = getelementptr inbounds nuw i8, ptr %.02236.i20.i, i64 4 ; 2 uses
  %.not25.i23.i = icmp eq ptr %.022.i22.i, %i.df
  br i1 %.not25.i23.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph37.i19.i, !llvm.loop !95

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread: ; preds = %.lr.ph.i, %middle.block187, %bb.d
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bv
  %i.do = sub i64 %3, %i.br
  %i.dp = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef nonnull %i.dn, i64 noundef %i.c, i64 noundef %i.br, i64 noundef %3, i64 noundef %i.do) ; 0 uses
  br label %bb.l

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit:           ; preds = %bb.k, %._crit_edge.i
  %i.dq = sub nsw i64 0, %.sroa.speculated.i
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.dt = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPiEET_S3_S3_S3_(ptr noundef %i.dr, ptr noundef %i.b, ptr noundef %i.ds) ; 0 uses
  %i.du = sub i64 %3, %.sroa.speculated.i
  %i.dv = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef %i.dr, i64 noundef %i.c, i64 noundef %.sroa.speculated.i, i64 noundef %3, i64 noundef %i.du) ; 0 uses
  br label %bb.l

.lr.ph.i53.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit
  %.pre = sub i64 0, %i.br
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  %i.dx = sub i64 %3, %i.br
  %i.dy = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef %i.dw, i64 noundef %i.c, i64 noundef %i.br, i64 noundef %3, i64 noundef %i.dx) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  %i.dz = load ptr, ptr %4, align 8, !tbaa !378   ; 5 uses
  %.idx86 = shl nuw nsw i64 %.sroa.speculated63, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx86
  %i.eb = add nsw i64 %.idx86, -4                 ; 2 uses
  %i.ec = lshr exact i64 %i.eb, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.eb, 44
  %i.ee = ptrtoaddr ptr %i.dz to i64
  %i.ef = sub i64 %i.ee, %i.a
  %diff.check158 = icmp ugt i64 %i.ef, -32
  %or.cond = select i1 %min.iters.check160, i1 true, i1 %diff.check158
  br i1 %or.cond, label %.lr.ph.i53.preheader197, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i53.preheader
  %n.vec162 = and i64 %i.ed, 9223372036854775800  ; 3 uses
  %i.eg = shl i64 %n.vec162, 2                    ; 2 uses
  %i.eh = getelementptr i8, ptr %0, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.dz, i64 %i.eg
  br label %vector.body163
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEbT_RNS0_9iter_sizeISF_E4typeESF_SI_SI_SJ_RT1_T0_:bb.a
  store i32 %i.fd, ptr %i.fa, align 4, !tbaa !367
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !367
  %.not.i11.i159 = icmp eq ptr %i.dw, %i.fa
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i156, !llvm.loop !4887

bb.m:                                             ; preds = %bb.k
  %i.fe = icmp ult i64 %.0133201, %spec.select15.i
  br i1 %i.fe, label %bb.n, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit

bb.n:                                             ; preds = %bb.m
  %i.ff = sub nuw i64 %spec.select15.i, %.0133201
  %.idx14.i = shl i64 %i.ff, 2
  %i.fg = getelementptr i8, ptr %i.dq, i64 %.idx14.i ; 3 uses
  %i.fh = add i64 %i.cc, %.0133201
  %i.fi = add i64 %i.fh, %i.c
  %i.fj = shl i64 %i.fi, 2
  %i.fk = sub i64 %i.bn, %i.fj                    ; 2 uses
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 4 uses
  %min.iters.check324 = icmp ult i64 %i.fk, 28    ; 2 uses
  br i1 %or.cond187, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %bb.n
  br i1 %min.iters.check324, label %.lr.ph.i9.i.preheader447, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i9.i.preheader
  %i.fn = add i64 %i.cc, %.1.i
  %i.fo = mul i64 %i.fn, -4
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.fo
  %bound0341 = icmp ult ptr %i.dq, %scevgep340
  %bound1342 = icmp ult ptr %i.ds, %i.fg
  %found.conflict343 = and i1 %bound0341, %bound1342
  br i1 %found.conflict343, label %.lr.ph.i9.i.preheader447, label %vector.ph346

vector.ph346:                                     ; preds = %vector.memcheck338
  %n.vec347 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.fp = shl i64 %n.vec347, 2                    ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ds, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.dq, i64 %i.fp
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next356, %vector.body348 ] ; 2 uses
  %i.fs = shl i64 %index349, 2                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.ds, i64 %i.fs ; 3 uses
  %next.gep351 = getelementptr i8, ptr %i.dq, i64 %i.fs ; 3 uses
  %i.ft = getelementptr i8, ptr %next.gep351, i64 16 ; 2 uses
  %wide.load352 = load <4 x i32>, ptr %next.gep351, align 4, !tbaa !367, !alias.scope !4904, !noalias !4905
  %wide.load353 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !367, !alias.scope !4904, !noalias !4905
  %i.fu = getelementptr i8, ptr %next.gep350, i64 16 ; 2 uses
  %wide.load354 = load <4 x i32>, ptr %next.gep350, align 4, !tbaa !367, !alias.scope !4905
  %wide.load355 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !367, !alias.scope !4905
  store <4 x i32> %wide.load354, ptr %next.gep351, align 4, !tbaa !367, !alias.scope !4904, !noalias !4905
  store <4 x i32> %wide.load355, ptr %i.ft, align 4, !tbaa !367, !alias.scope !4904, !noalias !4905
  store <4 x i32> %wide.load352, ptr %next.gep350, align 4, !tbaa !367, !alias.scope !4905
  store <4 x i32> %wide.load353, ptr %i.fu, align 4, !tbaa !367, !alias.scope !4905
  %index.next356 = add nuw i64 %index349, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next356, %n.vec347
  br i1 %i.fv, label %middle.block357, label %vector.body348, !llvm.loop !4891

middle.block357:                                  ; preds = %vector.body348
  %cmp.n358 = icmp eq i64 %i.fm, %n.vec347
  br i1 %cmp.n358, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i9.i.preheader447

.lr.ph.i9.i.preheader447:                         ; preds = %vector.memcheck338, %.lr.ph.i9.i.preheader, %middle.block357
  %.010.i10.i.ph = phi ptr [ %i.ds, %vector.memcheck338 ], [ %i.ds, %.lr.ph.i9.i.preheader ], [ %i.fq, %middle.block357 ]
  %.079.i11.i.ph = phi ptr [ %i.dq, %vector.memcheck338 ], [ %i.dq, %.lr.ph.i9.i.preheader ], [ %i.fr, %middle.block357 ]
  br label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.n
  %i.fw = shl i64 %.1.i, 2
  %diff.check322 = icmp ugt i64 %i.fw, -32
  %or.cond437 = select i1 %min.iters.check324, i1 true, i1 %diff.check322
  br i1 %or.cond437, label %.lr.ph.i.i168.preheader445, label %vector.ph325

vector.ph325:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec326 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.fx = shl i64 %n.vec326, 2                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.ds, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.dq, i64 %i.fx
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body327 ] ; 2 uses
  %i.ga = shl i64 %index328, 2                    ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.ds, i64 %i.ga ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.dq, i64 %i.ga ; 2 uses
  %i.gb = getelementptr i8, ptr %next.gep330, i64 16
  %wide.load331 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !367
  %wide.load332 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !367
  %i.gc = getelementptr i8, ptr %next.gep329, i64 16
  store <4 x i32> %wide.load331, ptr %next.gep329, align 4, !tbaa !367
  store <4 x i32> %wide.load332, ptr %i.gc, align 4, !tbaa !367
  %index.next333 = add nuw i64 %index328, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next333, %n.vec326
  br i1 %i.gd, label %middle.block334, label %vector.body327, !llvm.loop !4892

middle.block334:                                  ; preds = %vector.body327
  %cmp.n335 = icmp eq i64 %i.fm, %n.vec326
  br i1 %cmp.n335, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i168.preheader445

.lr.ph.i.i168.preheader445:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block334
  %.010.i.i169.ph = phi ptr [ %i.ds, %.lr.ph.i.i168.preheader ], [ %i.fy, %middle.block334 ]
  %.079.i.i170.ph = phi ptr [ %i.dq, %.lr.ph.i.i168.preheader ], [ %i.fz, %middle.block334 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader445, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.gg, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader445 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.gf, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader445 ] ; 2 uses
  %i.ge = load i32, ptr %.079.i.i170, align 4, !tbaa !367
  store i32 %i.ge, ptr %.010.i.i169, align 4, !tbaa !367
  %i.gf = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.gf, %i.fg
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i168, !llvm.loop !4893

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader447, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.gk, %.lr.ph.i9.i ], [ %.010.i10.i.ph, %.lr.ph.i9.i.preheader447 ] ; 3 uses
  %.079.i11.i = phi ptr [ %i.gj, %.lr.ph.i9.i ], [ %.079.i11.i.ph, %.lr.ph.i9.i.preheader447 ] ; 3 uses
  %i.gh = load i32, ptr %.079.i11.i, align 4, !tbaa !367
  %i.gi = load i32, ptr %.010.i10.i, align 4, !tbaa !367
  store i32 %i.gi, ptr %.079.i11.i, align 4, !tbaa !367
  store i32 %i.gh, ptr %.010.i10.i, align 4, !tbaa !367
  %i.gj = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4
  %.not.i12.i = icmp eq ptr %i.gj, %i.fg
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i9.i, !llvm.loop !4894

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit: ; preds = %.lr.ph.i10.i, %.lr.ph.i.i149, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i156, %.lr.ph.i.i162, %middle.block395, %middle.block374, %middle.block357, %middle.block334, %middle.block317, %middle.block298, %bb.j, %bb.i, %bb.m, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.bs, 0
  br i1 %.not140, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit
  %i.gl = udiv i64 %i.bt, %.1.i
  %i.gm = icmp ugt i64 %i.gl, 256
  br i1 %i.gm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.ca
  %i.gn = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.gn
  %i.go = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.go, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ca)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.ca
  %i.gp = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.gp
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef nonnull %i.b, ptr noundef %i.gq, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.s

bb.r:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit
  %i.gr = load i64, ptr %i.bk, align 8, !tbaa !379
  %i.gs = load ptr, ptr %6, align 8, !tbaa !378
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = add i64 %i.gu, 7
  %i.gw = and i64 %i.gv, -8
  %i.gx = inttoptr i64 %i.gw to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.ca
  %i.gy = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.gy
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %i.gx, ptr noundef %i.gz, i64 noundef %i.e, i64 noundef %.0205, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond187, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ca)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.ha = add i64 %.0130204, 1
  %i.hb = icmp ugt i64 %i.e, %i.bt
  br i1 %i.hb, label %bb.d, label %._crit_edge, !llvm.loop !4895

bb.t:                                             ; preds = %._crit_edge
  %i.hc = load ptr, ptr %6, align 8, !tbaa !378   ; 9 uses
  %i.hd = ptrtoaddr ptr %i.hc to i64              ; 2 uses
  %i.he = load i64, ptr %5, align 8, !tbaa !375   ; 2 uses
  %.idx191 = shl i64 %i.he, 2                     ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.idx191 ; 2 uses
  %.not8.i = icmp eq i64 %i.he, 0                 ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.not8.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.u
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.hh = add i64 %.idx191, -4                    ; 2 uses
  %i.hi = lshr exact i64 %i.hh, 2
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.hh, 92
  br i1 %min.iters.check419, label %.lr.ph.i.preheader439, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.i.preheader
  %i.hk = shl i64 %3, 2
  %7 = shl i64 %i.c, 2
  %8 = add i64 %i.hk, %i.a
  %i.hl = add i64 %7, %i.hd
  %i.hm = sub i64 %i.hl, %8
  %diff.check417 = icmp ugt i64 %i.hm, -32
  br i1 %diff.check417, label %.lr.ph.i.preheader439, label %vector.ph420

vector.ph420:                                     ; preds = %vector.memcheck416
  %n.vec421 = and i64 %i.hj, 9223372036854775800  ; 3 uses
  %i.hn = shl i64 %n.vec421, 2                    ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hg, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.hc, i64 %i.hn
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next428, %vector.body422 ] ; 2 uses
  %i.hq = shl i64 %index423, 2                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.hg, i64 %i.hq ; 2 uses
  %next.gep425 = getelementptr i8, ptr %i.hc, i64 %i.hq ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep425, i64 16
  %wide.load426 = load <4 x i32>, ptr %next.gep425, align 4, !tbaa !367
  %wide.load427 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !367
  %i.hs = getelementptr i8, ptr %next.gep424, i64 16
  store <4 x i32> %wide.load426, ptr %next.gep424, align 4, !tbaa !367
  store <4 x i32> %wide.load427, ptr %i.hs, align 4, !tbaa !367
  %index.next428 = add nuw i64 %index423, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next428, %n.vec421
  br i1 %i.ht, label %middle.block429, label %vector.body422, !llvm.loop !4896

middle.block429:                                  ; preds = %vector.body422
  %cmp.n430 = icmp eq i64 %i.hj, %n.vec421
  br i1 %cmp.n430, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i.preheader439

.lr.ph.i.preheader439:                            ; preds = %vector.memcheck416, %.lr.ph.i.preheader, %middle.block429
  %.010.i.ph = phi ptr [ %i.hg, %vector.memcheck416 ], [ %i.hg, %.lr.ph.i.preheader ], [ %i.ho, %middle.block429 ]
  %.079.i.ph = phi ptr [ %i.hc, %vector.memcheck416 ], [ %i.hc, %.lr.ph.i.preheader ], [ %i.hp, %middle.block429 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader439, %.lr.ph.i
  %.010.i = phi ptr [ %i.hw, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader439 ] ; 2 uses
  %.079.i = phi ptr [ %i.hv, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader439 ] ; 2 uses
  %i.hu = load i32, ptr %.079.i, align 4, !tbaa !367
  store i32 %i.hu, ptr %.010.i, align 4, !tbaa !367
  %i.hv = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i172 = icmp eq ptr %i.hv, %i.hf
  br i1 %.not.i172, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i, !llvm.loop !4897

bb.v:                                             ; preds = %bb.t
  br i1 %.not8.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i174.preheader

.lr.ph.i174.preheader:                            ; preds = %bb.v
  %i.hx = add i64 %.idx191, -4                    ; 2 uses
  %i.hy = lshr exact i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check402 = icmp ult i64 %i.hx, 44
  %i.ia = sub i64 %i.hd, %i.a
  %diff.check400 = icmp ugt i64 %i.ia, -32
  %or.cond438 = select i1 %min.iters.check402, i1 true, i1 %diff.check400
  br i1 %or.cond438, label %.lr.ph.i174.preheader440, label %vector.ph403

vector.ph403:                                     ; preds = %.lr.ph.i174.preheader
  %n.vec404 = and i64 %i.hz, 9223372036854775800  ; 3 uses
  %i.ib = shl i64 %n.vec404, 2                    ; 2 uses
  %i.ic = getelementptr i8, ptr %2, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.hc, i64 %i.ib
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next411, %vector.body405 ] ; 2 uses
  %i.ie = shl i64 %index406, 2                    ; 2 uses
  %next.gep407 = getelementptr i8, ptr %2, i64 %i.ie ; 2 uses
  %next.gep408 = getelementptr i8, ptr %i.hc, i64 %i.ie ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep408, i64 16
  %wide.load409 = load <4 x i32>, ptr %next.gep408, align 4, !tbaa !367
  %wide.load410 = load <4 x i32>, ptr %i.if, align 4, !tbaa !367
  %i.ig = getelementptr i8, ptr %next.gep407, i64 16
  store <4 x i32> %wide.load409, ptr %next.gep407, align 4, !tbaa !367
  store <4 x i32> %wide.load410, ptr %i.ig, align 4, !tbaa !367
  %index.next411 = add nuw i64 %index406, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next411, %n.vec404
  br i1 %i.ih, label %middle.block412, label %vector.body405, !llvm.loop !4898

middle.block412:                                  ; preds = %vector.body405
  %cmp.n413 = icmp eq i64 %i.hz, %n.vec404
  br i1 %cmp.n413, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i174.preheader440

.lr.ph.i174.preheader440:                         ; preds = %.lr.ph.i174.preheader, %middle.block412
  %.010.i175.ph = phi ptr [ %2, %.lr.ph.i174.preheader ], [ %i.ic, %middle.block412 ]
  %.079.i176.ph = phi ptr [ %i.hc, %.lr.ph.i174.preheader ], [ %i.id, %middle.block412 ]
  br label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %.lr.ph.i174.preheader440, %.lr.ph.i174
  %.010.i175 = phi ptr [ %i.ik, %.lr.ph.i174 ], [ %.010.i175.ph, %.lr.ph.i174.preheader440 ] ; 2 uses
  %.079.i176 = phi ptr [ %i.ij, %.lr.ph.i174 ], [ %.079.i176.ph, %.lr.ph.i174.preheader440 ] ; 2 uses
  %i.ii = load i32, ptr %.079.i176, align 4, !tbaa !367
  store i32 %i.ii, ptr %.010.i175, align 4, !tbaa !367
  %i.ij = getelementptr inbounds nuw i8, ptr %.079.i176, i64 4 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.010.i175, i64 4
  %.not.i177 = icmp eq ptr %i.ij, %i.hf
  br i1 %.not.i177, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph.i174, !llvm.loop !4899

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split: ; preds = %.thread, %.thread.thread
  store i64 0, ptr %5, align 8, !tbaa !375
  store i64 %i.g, ptr %1, align 8, !tbaa !375
  br label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit:           ; preds = %.lr.ph.i174, %.lr.ph.i, %middle.block412, %middle.block429, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split, %bb.v, %bb.u, %._crit_edge
  %i.il = phi i1 [ true, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split ], [ true, %middle.block429 ], [ %i.bp, %._crit_edge ], [ false, %bb.v ], [ true, %bb.u ], [ false, %middle.block412 ], [ true, %.lr.ph.i ], [ false, %.lr.ph.i174 ]
  ret i1 %i.il
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvbT_NS0_9iter_sizeISF_E4typeESI_SI_RT1_T0_(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !379
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !379
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %bb.a, %.preheader.preheader.i.i
  br i1 %0, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4 ; 5 uses
  %i.d = sub i64 0, %2
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = lshr i64 %2, 1
  %i.g = sub nuw i64 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !380
  %.not.i51 = icmp ult i64 %i.i, %i.g
  br i1 %.not.i51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %5, align 8, !tbaa !378
  tail call void @_ZN5boost7movelib10merge_sortIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T1_T0_(ptr noundef %i.e, ptr noundef %i.c, ptr noundef %i.j)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SD_T0_(ptr noundef %i.e, ptr noundef %i.c)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 4 uses
  store ptr %6, ptr %7, align 8, !tbaa !569
  call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %i.k, ptr noundef %i.e, ptr noundef %i.c, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE9make_heapES2_S2_SB_(ptr noundef %1, ptr noundef %i.k)
  %i.l = icmp ugt i64 %3, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %_ZN5boost7movelib15detail_adaptive13unstable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit, %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i
  %.012.i.i.i.i = phi i64 [ %i.p, %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i ], [ %3, %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit ]
  %.0811.i.i.i.i = phi ptr [ %i.m, %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i ], [ %i.k, %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit ]
  %i.m = getelementptr inbounds i8, ptr %.0811.i.i.i.i, i64 -4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !367  ; 3 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !367
  store i32 %i.o, ptr %i.m, align 4, !tbaa !367
  %i.p = add i64 %.012.i.i.i.i, -1                ; 6 uses
  %i.q = icmp ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.thread.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.03644.i.i.i.i.i = phi i64 [ %.036.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i ] ; 2 uses
  %.036.in43.i.i.i.i.i = phi i64 [ %.036.in.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %.03742.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03644.i.i.i.i.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %i.t = load i32, ptr %i.r, align 4, !tbaa !367
  %i.u = load i32, ptr %i.s, align 4, !tbaa !367
  %i.v = icmp slt i32 %i.t, %i.u
  %i.w = or disjoint i64 %.036.in43.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %.03644.i.i.i.i.i ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %spec.select.i.i.i.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !367
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03742.i.i.i.i.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !367
  %.036.in.i.i.i.i.i = shl i64 %spec.select.i.i.i.i.i, 1 ; 3 uses
  %.036.i.i.i.i.i = add i64 %.036.in.i.i.i.i.i, 2 ; 3 uses
  %i.aa = icmp ult i64 %.036.i.i.i.i.i, %i.p
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !62

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = or disjoint i64 %.036.in.i.i.i.i.i, 1
  %i.ac = icmp eq i64 %.036.i.i.i.i.i, %i.p
  br i1 %i.ac, label %.thread.i.i.i.i, label %bb.e

._crit_edge.i.i.thread.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %i.ad = icmp eq i64 %i.p, 2
  br i1 %i.ad, label %.thread.i.i.i.i, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i

_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i: ; preds = %._crit_edge.i.i.thread.i.i.i
  store i32 %i.n, ptr %1, align 4, !tbaa !367
  br label %_ZN5boost7movelib15detail_adaptive13unstable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit

.thread.i.i.i.i:                                  ; preds = %._crit_edge.i.i.thread.i.i.i, %._crit_edge.i.i.i.i.i
  %.036.in.lcssa.i.i9.i.i.i = phi i64 [ 1, %._crit_edge.i.i.thread.i.i.i ], [ %i.ab, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.037.lcssa.i.i8.i.i.i = phi i64 [ 0, %._crit_edge.i.i.thread.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_:bb.a
bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.fb, %bb.aa ], [ %i.hb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit142 ]
  %storemerge122 = phi ptr [ %i.hd, %bb.aa ], [ %i.hc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit142 ]
  %.1109 = phi ptr [ %i.bc, %bb.aa ], [ %i.hc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit142 ]
  %.1106 = phi i8 [ %i.fa, %bb.aa ], [ %.0105283, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, %bb.m, %bb.ab
  %i.he = phi i1 [ %i.ez, %bb.ab ], [ %i.bt, %bb.m ], [ %i.bt, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %i.bt, %bb.n ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %.0102284, %bb.m ], [ %.0228279, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.1223, %bb.n ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.ac, %bb.m ], [ %i.ac, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %i.ac, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bc, %bb.m ], [ %i.bc, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %i.bc, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105283, %bb.m ], [ %.0105283, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0105283, %bb.n ] ; 2 uses
  %not. = xor i1 %i.he, true
  %i.hf = sext i1 %not. to i64
  %.1 = add i64 %.0287, %i.hf
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !376
  %i.hg = getelementptr inbounds nuw i8, ptr %.0102284, i64 4 ; 2 uses
  %i.hh = icmp ne i64 %.099286, 0
  %.neg = sext i1 %i.hh to i64
  %i.hi = add i64 %.099286, %.neg                 ; 2 uses
  %i.hj = icmp ne i64 %i.ay, 0
  %.neg123 = sext i1 %i.hj to i64
  %i.hk = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.hl = add i64 %.0234278, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !5073

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.hm = phi ptr [ %i.bc, %.sink.split.i ], [ %i.ac, %bb.f ]
  %.4 = phi i64 [ %i.hk, %.sink.split.i ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0234278, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %.sink.split.i ], [ %.0228279, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %.sink.split.i ], [ %.0222280, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %.sink.split.i ], [ %.0216281, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108282, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105283, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.hg, %.sink.split.i ], [ %.0102284, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.hi, %.sink.split.i ], [ %.099286, %bb.f ]
  %i.hn = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ho = phi ptr [ %i.i, %bb.a ], [ %i.hm, %.thread.loopexit ] ; 8 uses
  %.1320 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.hn, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.hp = ptrtoaddr ptr %i.ho to i64
  %i.hq = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr %i.k, ptr %i.d, align 8, !tbaa !376
  %.idx252 = shl nuw nsw i64 %6, 2
  %i.hr = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx252 ; 7 uses
  %i.hs = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hs, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.ht = load i32, ptr %i.k, align 4, !tbaa !367
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.hw, %bb.af ] ; 3 uses
  %i.hu = load i32, ptr %.07.i, align 4, !tbaa !367
  %i.hv = icmp slt i32 %i.ht, %i.hu
  br i1 %i.hv, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.hw, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !78

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.hw, %bb.af ] ; 5 uses
  %i.hx = ptrtoint ptr %.0222.lcssa to i64        ; 3 uses
  %i.hy = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 2
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ib ; 5 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.id = add i64 %i.hx, -4
  %i.ie = sub i64 %i.id, %i.hy                    ; 2 uses
  %i.if = lshr i64 %i.ie, 2
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check447 = icmp ult i64 %i.ie, 60
  %i.ih = sub i64 %i.hx, %i.hp
  %diff.check445 = icmp ugt i64 %i.ih, -32
  %or.cond499 = select i1 %min.iters.check447, i1 true, i1 %diff.check445
  br i1 %or.cond499, label %.lr.ph.i.i146.preheader514, label %vector.ph448

vector.ph448:                                     ; preds = %.lr.ph.i.i146.preheader
  %n.vec449 = and i64 %i.ig, 9223372036854775800  ; 3 uses
  %i.ii = shl i64 %n.vec449, 2                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ic, i64 %i.ii
  %i.ik = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ii
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body450 ] ; 2 uses
  %i.il = shl i64 %index451, 2                    ; 2 uses
  %next.gep452 = getelementptr i8, ptr %i.ic, i64 %i.il ; 2 uses
  %next.gep453 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.il ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep453, i64 16
  %wide.load454 = load <4 x i32>, ptr %next.gep453, align 4, !tbaa !367
  %wide.load455 = load <4 x i32>, ptr %i.im, align 4, !tbaa !367
  %i.in = getelementptr i8, ptr %next.gep452, i64 16
  store <4 x i32> %wide.load454, ptr %next.gep452, align 4, !tbaa !367
  store <4 x i32> %wide.load455, ptr %i.in, align 4, !tbaa !367
  %index.next456 = add nuw i64 %index451, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.io, label %middle.block457, label %vector.body450, !llvm.loop !5074

middle.block457:                                  ; preds = %vector.body450
  %cmp.n458 = icmp eq i64 %i.ig, %n.vec449
  br i1 %cmp.n458, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader514

.lr.ph.i.i146.preheader514:                       ; preds = %.lr.ph.i.i146.preheader, %middle.block457
  %.010.i.i147.ph = phi ptr [ %i.ic, %.lr.ph.i.i146.preheader ], [ %i.ij, %middle.block457 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.ik, %middle.block457 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader514, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.ir, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader514 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.iq, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader514 ] ; 2 uses
  %i.ip = load i32, ptr %.079.i.i148, align 4, !tbaa !367
  store i32 %i.ip, ptr %.010.i.i147, align 4, !tbaa !367
  %i.iq = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.iq, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !5075

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151: ; preds = %.lr.ph.i.i146, %middle.block457, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.is, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.ic, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ho, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5465 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.iw, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.iz, %bb.ai ], [ %.5221, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.iw, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.ix, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.it = load i32, ptr %.0.i, align 4, !tbaa !367 ; 2 uses
  %i.iu = load i32, ptr %.021.i.ph, align 4, !tbaa !367 ; 2 uses
  %i.iv = icmp slt i32 %i.it, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.it, ptr %.024.i, align 4, !tbaa !367
  %i.iy = icmp eq ptr %i.ix, %i.hr
  br i1 %i.iy, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !80

bb.ai:                                            ; preds = %.preheader.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !367
  %i.ja = icmp eq ptr %i.iz, %.5
  br i1 %i.ja, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !80

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.iw, %bb.ai ], [ %i.iw, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.iz, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hr, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !376
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit
  %.223.i463 = ptrtoaddr ptr %.226.i to i64
  %.226.i462 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %i.jb = add i64 %.5465, -4
  %i.jc = sub i64 %i.jb, %.226.i462               ; 2 uses
  %i.jd = lshr i64 %i.jc, 2
  %i.je = add nuw nsw i64 %i.jd, 1                ; 2 uses
  %min.iters.check467 = icmp ult i64 %i.jc, 44
  %i.jf = sub i64 %.226.i462, %.223.i463
  %diff.check464 = icmp ugt i64 %i.jf, -32
  %or.cond500 = select i1 %min.iters.check467, i1 true, i1 %diff.check464
  br i1 %or.cond500, label %.lr.ph.i.i154.preheader504, label %vector.ph468

vector.ph468:                                     ; preds = %.lr.ph.i.i154.preheader
  %n.vec469 = and i64 %i.je, 9223372036854775800  ; 3 uses
  %i.jg = shl i64 %n.vec469, 2                    ; 2 uses
  %i.jh = getelementptr i8, ptr %.226.i, i64 %i.jg ; 2 uses
  %i.ji = getelementptr i8, ptr %.223.i, i64 %i.jg
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph468
  %index471 = phi i64 [ 0, %vector.ph468 ], [ %index.next476, %vector.body470 ] ; 2 uses
  %i.jj = shl i64 %index471, 2                    ; 2 uses
  %next.gep472 = getelementptr i8, ptr %.226.i, i64 %i.jj ; 2 uses
  %next.gep473 = getelementptr i8, ptr %.223.i, i64 %i.jj ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep473, i64 16
  %wide.load474 = load <4 x i32>, ptr %next.gep473, align 4, !tbaa !367
  %wide.load475 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !367
  %i.jl = getelementptr i8, ptr %next.gep472, i64 16
  store <4 x i32> %wide.load474, ptr %next.gep472, align 4, !tbaa !367
  store <4 x i32> %wide.load475, ptr %i.jl, align 4, !tbaa !367
  %index.next476 = add nuw i64 %index471, 8       ; 2 uses
  %i.jm = icmp eq i64 %index.next476, %n.vec469
  br i1 %i.jm, label %middle.block477, label %vector.body470, !llvm.loop !5076

middle.block477:                                  ; preds = %vector.body470
  %cmp.n478 = icmp eq i64 %i.je, %n.vec469
  br i1 %cmp.n478, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader504

.lr.ph.i.i154.preheader504:                       ; preds = %.lr.ph.i.i154.preheader, %middle.block477
  %.010.i.i155.ph = phi ptr [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.jh, %middle.block477 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.ji, %middle.block477 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader504, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.jp, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader504 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.jo, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader504 ] ; 2 uses
  %i.jn = load i32, ptr %.079.i.i156, align 4, !tbaa !367
  store i32 %i.jn, ptr %.010.i.i155, align 4, !tbaa !367
  %i.jo = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jo, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !5077

bb.aj:                                            ; preds = %.thread
  br i1 %i.hq, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jq = phi ptr [ %i.ho, %bb.aj ], [ %i.ac, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 5 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 5 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.jr = phi ptr [ %i.hr, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216268426 = ptrtoaddr ptr %.0222270 to i64
  %.0222270425 = ptrtoaddr ptr %.0216268 to i64   ; 2 uses
  %.0108266428 = ptrtoaddr ptr %.0108266 to i64
  %i.js = add i64 %.0108266428, -4
  %i.jt = sub i64 %i.js, %.0222270425             ; 2 uses
  %i.ju = lshr i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %min.iters.check430 = icmp ult i64 %i.jt, 44
  %i.jw = sub i64 %.0222270425, %.0216268426
  %diff.check427 = icmp ugt i64 %i.jw, -32
  %or.cond501 = select i1 %min.iters.check430, i1 true, i1 %diff.check427
  br i1 %or.cond501, label %.lr.ph.i.i161.preheader515, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph.i.i161.preheader
  %n.vec432 = and i64 %i.jv, 9223372036854775800  ; 3 uses
  %i.jx = shl i64 %n.vec432, 2                    ; 2 uses
  %i.jy = getelementptr i8, ptr %.0222270, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %.0216268, i64 %i.jx
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next439, %vector.body433 ] ; 2 uses
  %i.ka = shl i64 %index434, 2                    ; 2 uses
  %next.gep435 = getelementptr i8, ptr %.0222270, i64 %i.ka ; 2 uses
  %next.gep436 = getelementptr i8, ptr %.0216268, i64 %i.ka ; 2 uses
  %i.kb = getelementptr i8, ptr %next.gep436, i64 16
  %wide.load437 = load <4 x i32>, ptr %next.gep436, align 4, !tbaa !367
  %wide.load438 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !367
  %i.kc = getelementptr i8, ptr %next.gep435, i64 16
  store <4 x i32> %wide.load437, ptr %next.gep435, align 4, !tbaa !367
  store <4 x i32> %wide.load438, ptr %i.kc, align 4, !tbaa !367
  %index.next439 = add nuw i64 %index434, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next439, %n.vec432
  br i1 %i.kd, label %middle.block440, label %vector.body433, !llvm.loop !5078

middle.block440:                                  ; preds = %vector.body433
  %cmp.n441 = icmp eq i64 %i.jv, %n.vec432
  br i1 %cmp.n441, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader515

.lr.ph.i.i161.preheader515:                       ; preds = %.lr.ph.i.i161.preheader, %middle.block440
  %.010.i.i162.ph = phi ptr [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.jy, %middle.block440 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.jz, %middle.block440 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader515, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.kg, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader515 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.kf, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader515 ] ; 2 uses
  %i.ke = load i32, ptr %.079.i.i163, align 4, !tbaa !367
  store i32 %i.ke, ptr %.010.i.i162, align 4, !tbaa !367
  %i.kf = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.kf, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !5079

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block440, %middle.block477, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, %bb.aj
  %i.kh = phi ptr [ %i.ho, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.ac, %.thread.thread ], [ %i.ho, %bb.aj ], [ %i.jq, %bb.ak ], [ %i.ho, %middle.block477 ], [ %i.jq, %middle.block440 ], [ %i.ho, %.lr.ph.i.i154 ], [ %i.jq, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block477 ], [ %.2, %middle.block440 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block477 ], [ %.0234275, %middle.block440 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block477 ], [ %.0228272, %middle.block440 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block477 ], [ %.0102262, %middle.block440 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block477 ], [ %.099259, %middle.block440 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.ki = phi ptr [ %i.hr, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.hr, %bb.aj ], [ %i.jr, %bb.ak ], [ %i.hr, %middle.block477 ], [ %i.jr, %middle.block440 ], [ %i.hr, %.lr.ph.i.i154 ], [ %i.jr, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.jh, %middle.block477 ], [ %i.jy, %middle.block440 ], [ %i.jp, %.lr.ph.i.i154 ], [ %i.kg, %.lr.ph.i.i161 ]
  %i.kj = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_S3_S3_SC_NS0_7move_opEEET3_T_SF_T0_T1_RT2_SI_SE_NS0_9iter_sizeISH_E4typeESM_SM_SM_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.kh, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ki, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.kk = load ptr, ptr %i.d, align 8, !tbaa !376 ; 5 uses
  %.not8.i.i167 = icmp eq ptr %i.kk, %i.ki
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  %i.kl = ptrtoaddr ptr %i.kk to i64              ; 2 uses
  %i.km = ptrtoaddr ptr %i.kj to i64
  %i.kn = ptrtoaddr ptr %i.ki to i64
  %i.ko = add i64 %i.kn, -4
  %i.kp = sub i64 %i.ko, %i.kl                    ; 2 uses
  %i.kq = lshr i64 %i.kp, 2
  %i.kr = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %min.iters.check484 = icmp ult i64 %i.kp, 44
  %i.ks = sub i64 %i.kl, %i.km
  %diff.check482 = icmp ugt i64 %i.ks, -32
  %or.cond502 = or i1 %min.iters.check484, %diff.check482
  br i1 %or.cond502, label %.lr.ph.i.i168.preheader503, label %vector.ph485

vector.ph485:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec486 = and i64 %i.kr, 9223372036854775800  ; 3 uses
  %i.kt = shl i64 %n.vec486, 2                    ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kj, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.kk, i64 %i.kt
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph485
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next493, %vector.body487 ] ; 2 uses
  %i.kw = shl i64 %index488, 2                    ; 2 uses
  %next.gep489 = getelementptr i8, ptr %i.kj, i64 %i.kw ; 2 uses
  %next.gep490 = getelementptr i8, ptr %i.kk, i64 %i.kw ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep490, i64 16
  %wide.load491 = load <4 x i32>, ptr %next.gep490, align 4, !tbaa !367
  %wide.load492 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !367
  %i.ky = getelementptr i8, ptr %next.gep489, i64 16
  store <4 x i32> %wide.load491, ptr %next.gep489, align 4, !tbaa !367
  store <4 x i32> %wide.load492, ptr %i.ky, align 4, !tbaa !367
  %index.next493 = add nuw i64 %index488, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next493, %n.vec486
  br i1 %i.kz, label %middle.block494, label %vector.body487, !llvm.loop !5080

middle.block494:                                  ; preds = %vector.body487
  %cmp.n495 = icmp eq i64 %i.kr, %n.vec486
  br i1 %cmp.n495, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader503

.lr.ph.i.i168.preheader503:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block494
  %.010.i.i169.ph = phi ptr [ %i.kj, %.lr.ph.i.i168.preheader ], [ %i.ku, %middle.block494 ]
  %.079.i.i170.ph = phi ptr [ %i.kk, %.lr.ph.i.i168.preheader ], [ %i.kv, %middle.block494 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader503, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.lc, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader503 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.lb, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader503 ] ; 2 uses
  %i.la = load i32, ptr %.079.i.i170, align 4, !tbaa !367
  store i32 %i.la, ptr %.010.i.i169, align 4, !tbaa !367
  %i.lb = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.lb, %i.ki
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !5081

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block494, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !376
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 10 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 2                        ; 4 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 2                            ; 2 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %.idx254
  %i.t = add i64 %i.s, -4                         ; 2 uses
  %i.u = shl i64 %2, 2
  %i.v = shl i64 %2, 2
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = add i64 %.idx254, -4                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  %stride.check = icmp slt i64 %.idx254, 0
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.ac = phi ptr [ %i.i, %.lr.ph ], [ %i.bc, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hn, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.hl, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.hj, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 18 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 17 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.ho, %.sink.split.i ] ; 5 uses
  %i.ad = mul i64 %i.v, %indvar
  %i.ae = add i64 %i.t, %i.ad                     ; 3 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %i.ag = add i64 %i.t, %i.af
  %scevgep414 = getelementptr i8, ptr %i.x, i64 %i.af
  %.0108286386 = ptrtoaddr ptr %.0108286 to i64   ; 2 uses
  %.0220285387 = ptrtoaddr ptr %.0220285 to i64   ; 2 uses
  %i.ah = icmp ult i64 %.099290, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_:bb.a
bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.fb, %bb.aa ], [ %i.hb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit142 ]
  %storemerge122 = phi ptr [ %i.hd, %bb.aa ], [ %i.hc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit142 ]
  %.1109 = phi ptr [ %i.bc, %bb.aa ], [ %i.hc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit142 ]
  %.1106 = phi i8 [ %i.fa, %bb.aa ], [ %.0105282, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit: ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, %bb.m, %bb.n, %bb.ab
  %i.he = phi i1 [ %i.ez, %bb.ab ], [ %i.bt, %bb.n ], [ %i.bt, %bb.m ], [ %i.bt, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %spec.select, %bb.n ], [ %.0102283, %bb.m ], [ %.0228278, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.n ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.ac, %bb.n ], [ %i.ac, %bb.m ], [ %i.ac, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bc, %bb.n ], [ %i.bc, %bb.m ], [ %i.bc, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105282, %bb.n ], [ %.0105282, %bb.m ], [ %.0105282, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ] ; 2 uses
  %not. = xor i1 %i.he, true
  %i.hf = sext i1 %not. to i64
  %.1 = add i64 %.0286, %i.hf
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !376
  %i.hg = getelementptr inbounds nuw i8, ptr %.0102283, i64 1 ; 2 uses
  %i.hh = icmp ne i64 %.099285, 0
  %.neg = sext i1 %i.hh to i64
  %i.hi = add i64 %.099285, %.neg                 ; 2 uses
  %i.hj = icmp ne i64 %i.ay, 0
  %.neg123 = sext i1 %i.hj to i64
  %i.hk = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.hl = add i64 %.0234277, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !5529

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit
  %i.hm = phi ptr [ %i.bc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %i.ac, %bb.f ]
  %.4 = phi i64 [ %i.hk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.0234277, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.0228278, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.0222279, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.0216280, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.0108281, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.0105282, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.hg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.0102283, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.hi, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ], [ %.099285, %bb.f ]
  %i.hn = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ho = phi ptr [ %i.i, %bb.a ], [ %i.hm, %.thread.loopexit ] ; 8 uses
  %.1319 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.hn, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.hp = ptrtoaddr ptr %i.ho to i64
  %i.hq = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr %i.k, ptr %i.d, align 8, !tbaa !376
  %.idx251 = shl nuw nsw i64 %6, 2
  %i.hr = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx251 ; 7 uses
  %i.hs = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hs, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.ht = load i32, ptr %i.k, align 4, !tbaa !367
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.hw, %bb.af ] ; 3 uses
  %i.hu = load i32, ptr %.07.i, align 4, !tbaa !367
  %i.hv = icmp slt i32 %i.ht, %i.hu
  br i1 %i.hv, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.hw, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !78

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.hw, %bb.af ] ; 5 uses
  %i.hx = ptrtoint ptr %.0222.lcssa to i64        ; 3 uses
  %i.hy = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 2
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ib ; 5 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.id = add i64 %i.hx, -4
  %i.ie = sub i64 %i.id, %i.hy                    ; 2 uses
  %i.if = lshr i64 %i.ie, 2
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check446 = icmp ult i64 %i.ie, 60
  %i.ih = sub i64 %i.hx, %i.hp
  %diff.check444 = icmp ugt i64 %i.ih, -32
  %or.cond498 = select i1 %min.iters.check446, i1 true, i1 %diff.check444
  br i1 %or.cond498, label %.lr.ph.i.i146.preheader513, label %vector.ph447

vector.ph447:                                     ; preds = %.lr.ph.i.i146.preheader
  %n.vec448 = and i64 %i.ig, 9223372036854775800  ; 3 uses
  %i.ii = shl i64 %n.vec448, 2                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ic, i64 %i.ii
  %i.ik = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ii
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph447
  %index450 = phi i64 [ 0, %vector.ph447 ], [ %index.next455, %vector.body449 ] ; 2 uses
  %i.il = shl i64 %index450, 2                    ; 2 uses
  %next.gep451 = getelementptr i8, ptr %i.ic, i64 %i.il ; 2 uses
  %next.gep452 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.il ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep452, i64 16
  %wide.load453 = load <4 x i32>, ptr %next.gep452, align 4, !tbaa !367
  %wide.load454 = load <4 x i32>, ptr %i.im, align 4, !tbaa !367
  %i.in = getelementptr i8, ptr %next.gep451, i64 16
  store <4 x i32> %wide.load453, ptr %next.gep451, align 4, !tbaa !367
  store <4 x i32> %wide.load454, ptr %i.in, align 4, !tbaa !367
  %index.next455 = add nuw i64 %index450, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next455, %n.vec448
  br i1 %i.io, label %middle.block456, label %vector.body449, !llvm.loop !5530

middle.block456:                                  ; preds = %vector.body449
  %cmp.n457 = icmp eq i64 %i.ig, %n.vec448
  br i1 %cmp.n457, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader513

.lr.ph.i.i146.preheader513:                       ; preds = %.lr.ph.i.i146.preheader, %middle.block456
  %.010.i.i147.ph = phi ptr [ %i.ic, %.lr.ph.i.i146.preheader ], [ %i.ij, %middle.block456 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.ik, %middle.block456 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader513, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.ir, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader513 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.iq, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader513 ] ; 2 uses
  %i.ip = load i32, ptr %.079.i.i148, align 4, !tbaa !367
  store i32 %i.ip, ptr %.010.i.i147, align 4, !tbaa !367
  %i.iq = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.iq, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !5531

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151: ; preds = %.lr.ph.i.i146, %middle.block456, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.is, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.ic, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ho, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5464 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.iw, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.iz, %bb.ai ], [ %.5221, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.iw, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.ix, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.it = load i32, ptr %.0.i, align 4, !tbaa !367 ; 2 uses
  %i.iu = load i32, ptr %.021.i.ph, align 4, !tbaa !367 ; 2 uses
  %i.iv = icmp slt i32 %i.it, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.it, ptr %.024.i, align 4, !tbaa !367
  %i.iy = icmp eq ptr %i.ix, %i.hr
  br i1 %i.iy, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !80

bb.ai:                                            ; preds = %.preheader.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !367
  %i.ja = icmp eq ptr %i.iz, %.5
  br i1 %i.ja, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !80

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.iw, %bb.ai ], [ %i.iw, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.iz, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hr, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !376
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit
  %.223.i462 = ptrtoaddr ptr %.226.i to i64
  %.226.i461 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %i.jb = add i64 %.5464, -4
  %i.jc = sub i64 %i.jb, %.226.i461               ; 2 uses
  %i.jd = lshr i64 %i.jc, 2
  %i.je = add nuw nsw i64 %i.jd, 1                ; 2 uses
  %min.iters.check466 = icmp ult i64 %i.jc, 44
  %i.jf = sub i64 %.226.i461, %.223.i462
  %diff.check463 = icmp ugt i64 %i.jf, -32
  %or.cond499 = select i1 %min.iters.check466, i1 true, i1 %diff.check463
  br i1 %or.cond499, label %.lr.ph.i.i154.preheader503, label %vector.ph467

vector.ph467:                                     ; preds = %.lr.ph.i.i154.preheader
  %n.vec468 = and i64 %i.je, 9223372036854775800  ; 3 uses
  %i.jg = shl i64 %n.vec468, 2                    ; 2 uses
  %i.jh = getelementptr i8, ptr %.226.i, i64 %i.jg ; 2 uses
  %i.ji = getelementptr i8, ptr %.223.i, i64 %i.jg
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph467
  %index470 = phi i64 [ 0, %vector.ph467 ], [ %index.next475, %vector.body469 ] ; 2 uses
  %i.jj = shl i64 %index470, 2                    ; 2 uses
  %next.gep471 = getelementptr i8, ptr %.226.i, i64 %i.jj ; 2 uses
  %next.gep472 = getelementptr i8, ptr %.223.i, i64 %i.jj ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep472, i64 16
  %wide.load473 = load <4 x i32>, ptr %next.gep472, align 4, !tbaa !367
  %wide.load474 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !367
  %i.jl = getelementptr i8, ptr %next.gep471, i64 16
  store <4 x i32> %wide.load473, ptr %next.gep471, align 4, !tbaa !367
  store <4 x i32> %wide.load474, ptr %i.jl, align 4, !tbaa !367
  %index.next475 = add nuw i64 %index470, 8       ; 2 uses
  %i.jm = icmp eq i64 %index.next475, %n.vec468
  br i1 %i.jm, label %middle.block476, label %vector.body469, !llvm.loop !5532

middle.block476:                                  ; preds = %vector.body469
  %cmp.n477 = icmp eq i64 %i.je, %n.vec468
  br i1 %cmp.n477, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader503

.lr.ph.i.i154.preheader503:                       ; preds = %.lr.ph.i.i154.preheader, %middle.block476
  %.010.i.i155.ph = phi ptr [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.jh, %middle.block476 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.ji, %middle.block476 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader503, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.jp, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader503 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.jo, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader503 ] ; 2 uses
  %i.jn = load i32, ptr %.079.i.i156, align 4, !tbaa !367
  store i32 %i.jn, ptr %.010.i.i155, align 4, !tbaa !367
  %i.jo = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jo, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !5533

bb.aj:                                            ; preds = %.thread
  br i1 %i.hq, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jq = phi ptr [ %i.ho, %bb.aj ], [ %i.ac, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1319, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234274 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234277, %.thread.thread ] ; 3 uses
  %.0228271 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228278, %.thread.thread ] ; 3 uses
  %.0222269 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222279, %.thread.thread ] ; 5 uses
  %.0216267 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216280, %.thread.thread ] ; 5 uses
  %.0108265 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108281, %.thread.thread ] ; 3 uses
  %.0102261 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102283, %.thread.thread ] ; 3 uses
  %.099258 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099285, %.thread.thread ] ; 3 uses
  %i.jr = phi ptr [ %i.hr, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216267, %.0108265
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216267425 = ptrtoaddr ptr %.0222269 to i64
  %.0222269424 = ptrtoaddr ptr %.0216267 to i64   ; 2 uses
  %.0108265427 = ptrtoaddr ptr %.0108265 to i64
  %i.js = add i64 %.0108265427, -4
  %i.jt = sub i64 %i.js, %.0222269424             ; 2 uses
  %i.ju = lshr i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %min.iters.check429 = icmp ult i64 %i.jt, 44
  %i.jw = sub i64 %.0222269424, %.0216267425
  %diff.check426 = icmp ugt i64 %i.jw, -32
  %or.cond500 = select i1 %min.iters.check429, i1 true, i1 %diff.check426
  br i1 %or.cond500, label %.lr.ph.i.i161.preheader514, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph.i.i161.preheader
  %n.vec431 = and i64 %i.jv, 9223372036854775800  ; 3 uses
  %i.jx = shl i64 %n.vec431, 2                    ; 2 uses
  %i.jy = getelementptr i8, ptr %.0222269, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %.0216267, i64 %i.jx
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph430
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next438, %vector.body432 ] ; 2 uses
  %i.ka = shl i64 %index433, 2                    ; 2 uses
  %next.gep434 = getelementptr i8, ptr %.0222269, i64 %i.ka ; 2 uses
  %next.gep435 = getelementptr i8, ptr %.0216267, i64 %i.ka ; 2 uses
  %i.kb = getelementptr i8, ptr %next.gep435, i64 16
  %wide.load436 = load <4 x i32>, ptr %next.gep435, align 4, !tbaa !367
  %wide.load437 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !367
  %i.kc = getelementptr i8, ptr %next.gep434, i64 16
  store <4 x i32> %wide.load436, ptr %next.gep434, align 4, !tbaa !367
  store <4 x i32> %wide.load437, ptr %i.kc, align 4, !tbaa !367
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next438, %n.vec431
  br i1 %i.kd, label %middle.block439, label %vector.body432, !llvm.loop !5534

middle.block439:                                  ; preds = %vector.body432
  %cmp.n440 = icmp eq i64 %i.jv, %n.vec431
  br i1 %cmp.n440, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader514

.lr.ph.i.i161.preheader514:                       ; preds = %.lr.ph.i.i161.preheader, %middle.block439
  %.010.i.i162.ph = phi ptr [ %.0222269, %.lr.ph.i.i161.preheader ], [ %i.jy, %middle.block439 ]
  %.079.i.i163.ph = phi ptr [ %.0216267, %.lr.ph.i.i161.preheader ], [ %i.jz, %middle.block439 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader514, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.kg, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader514 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.kf, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader514 ] ; 2 uses
  %i.ke = load i32, ptr %.079.i.i163, align 4, !tbaa !367
  store i32 %i.ke, ptr %.010.i.i162, align 4, !tbaa !367
  %i.kf = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.kf, %.0108265
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !5535

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block439, %middle.block476, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, %bb.aj
  %i.kh = phi ptr [ %i.ho, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.ac, %.thread.thread ], [ %i.ho, %bb.aj ], [ %i.jq, %bb.ak ], [ %i.ho, %middle.block476 ], [ %i.jq, %middle.block439 ], [ %i.ho, %.lr.ph.i.i154 ], [ %i.jq, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1319, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1319, %bb.aj ], [ %.2, %bb.ak ], [ %.1319, %middle.block476 ], [ %.2, %middle.block439 ], [ %.1319, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234275 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0234277, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234274, %bb.ak ], [ %.0234.lcssa, %middle.block476 ], [ %.0234274, %middle.block439 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234274, %.lr.ph.i.i161 ]
  %.0228272 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0228278, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228271, %bb.ak ], [ %.0228.lcssa, %middle.block476 ], [ %.0228271, %middle.block439 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228271, %.lr.ph.i.i161 ]
  %.0102262 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0102283, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102261, %bb.ak ], [ %.0102.lcssa, %middle.block476 ], [ %.0102261, %middle.block439 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102261, %.lr.ph.i.i161 ]
  %.099259 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.099285, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099258, %bb.ak ], [ %.099.lcssa, %middle.block476 ], [ %.099258, %middle.block439 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099258, %.lr.ph.i.i161 ]
  %i.ki = phi ptr [ %i.hr, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.hr, %bb.aj ], [ %i.jr, %bb.ak ], [ %i.hr, %middle.block476 ], [ %i.jr, %middle.block439 ], [ %i.hr, %.lr.ph.i.i154 ], [ %i.jr, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0222279, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222269, %bb.ak ], [ %i.jh, %middle.block476 ], [ %i.jy, %middle.block439 ], [ %i.jp, %.lr.ph.i.i154 ], [ %i.kg, %.lr.ph.i.i161 ]
  %i.kj = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %.0102262, ptr noundef %.0228272, ptr noundef %i.kh, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ki, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234275, i64 noundef %.099259, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.kk = load ptr, ptr %i.d, align 8, !tbaa !376 ; 5 uses
  %.not8.i.i167 = icmp eq ptr %i.kk, %i.ki
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  %i.kl = ptrtoaddr ptr %i.kk to i64              ; 2 uses
  %i.km = ptrtoaddr ptr %i.kj to i64
  %i.kn = ptrtoaddr ptr %i.ki to i64
  %i.ko = add i64 %i.kn, -4
  %i.kp = sub i64 %i.ko, %i.kl                    ; 2 uses
  %i.kq = lshr i64 %i.kp, 2
  %i.kr = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %min.iters.check483 = icmp ult i64 %i.kp, 44
  %i.ks = sub i64 %i.kl, %i.km
  %diff.check481 = icmp ugt i64 %i.ks, -32
  %or.cond501 = or i1 %min.iters.check483, %diff.check481
  br i1 %or.cond501, label %.lr.ph.i.i168.preheader502, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec485 = and i64 %i.kr, 9223372036854775800  ; 3 uses
  %i.kt = shl i64 %n.vec485, 2                    ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kj, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.kk, i64 %i.kt
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph484
  %index487 = phi i64 [ 0, %vector.ph484 ], [ %index.next492, %vector.body486 ] ; 2 uses
  %i.kw = shl i64 %index487, 2                    ; 2 uses
  %next.gep488 = getelementptr i8, ptr %i.kj, i64 %i.kw ; 2 uses
  %next.gep489 = getelementptr i8, ptr %i.kk, i64 %i.kw ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep489, i64 16
  %wide.load490 = load <4 x i32>, ptr %next.gep489, align 4, !tbaa !367
  %wide.load491 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !367
  %i.ky = getelementptr i8, ptr %next.gep488, i64 16
  store <4 x i32> %wide.load490, ptr %next.gep488, align 4, !tbaa !367
  store <4 x i32> %wide.load491, ptr %i.ky, align 4, !tbaa !367
  %index.next492 = add nuw i64 %index487, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next492, %n.vec485
  br i1 %i.kz, label %middle.block493, label %vector.body486, !llvm.loop !5536

middle.block493:                                  ; preds = %vector.body486
  %cmp.n494 = icmp eq i64 %i.kr, %n.vec485
  br i1 %cmp.n494, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader502

.lr.ph.i.i168.preheader502:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block493
  %.010.i.i169.ph = phi ptr [ %i.kj, %.lr.ph.i.i168.preheader ], [ %i.ku, %middle.block493 ]
  %.079.i.i170.ph = phi ptr [ %i.kk, %.lr.ph.i.i168.preheader ], [ %i.kv, %middle.block493 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader502, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.lc, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader502 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.lb, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader502 ] ; 2 uses
  %i.la = load i32, ptr %.079.i.i170, align 4, !tbaa !367
  store i32 %i.la, ptr %.010.i.i169, align 4, !tbaa !367
  %i.lb = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.lb, %i.ki
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !5537

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block493, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !376
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 10 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not280 = icmp eq i64 %i.e, 0
  br i1 %.not280, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 2                        ; 4 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 2                            ; 2 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %.idx254
  %i.t = add i64 %i.s, -4                         ; 2 uses
  %i.u = shl i64 %2, 2
  %i.v = shl i64 %2, 2
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = add i64 %.idx254, -4                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  %stride.check = icmp slt i64 %.idx254, 0
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 3 uses
  %i.ac = phi ptr [ %i.i, %.lr.ph ], [ %i.bc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 3 uses
  %.0290 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 2 uses
  %.099289 = phi i64 [ %i.m, %.lr.ph ], [ %i.hl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 7 uses
  %.0102287 = phi ptr [ %0, %.lr.ph ], [ %i.hj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 15 uses
  %.0105286 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 8 uses
  %.0108285 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 16 uses
  %.0220284 = phi ptr [ %1, %.lr.ph ], [ %.2222, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 18 uses
  %.0226283 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 17 uses
  %.0232282 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 13 uses
  %.0238281 = phi i64 [ %i.e, %.lr.ph ], [ %i.ho, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 5 uses
  %i.ad = mul i64 %i.v, %indvar
  %i.ae = add i64 %i.t, %i.ad                     ; 3 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %i.ag = add i64 %i.t, %i.af
  %scevgep413 = getelementptr i8, ptr %i.x, i64 %i.af
  %.0108285385 = ptrtoaddr ptr %.0108285 to i64   ; 2 uses
  %.0220284386 = ptrtoaddr ptr %.0220284 to i64   ; 2 uses
  %i.ah = icmp ult i64 %.099289, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.099289, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_:bb.a
bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit142, %bb.aa
  %.1217 = phi ptr [ %i.fb, %bb.aa ], [ %i.hb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit142 ]
  %storemerge122 = phi ptr [ %i.hd, %bb.aa ], [ %i.hc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit142 ]
  %.1109 = phi ptr [ %i.bc, %bb.aa ], [ %i.hc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit142 ]
  %.1106 = phi i8 [ %i.fa, %bb.aa ], [ %.0105283, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit, %bb.m, %bb.ab
  %i.he = phi i1 [ %i.ez, %bb.ab ], [ %i.bt, %bb.m ], [ %i.bt, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %i.bt, %bb.n ]
  %.1229 = phi ptr [ %.5233, %bb.ab ], [ %.0102284, %bb.m ], [ %.0228279, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2224 = phi ptr [ %storemerge122, %bb.ab ], [ %.1223, %bb.m ], [ %.1223, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.1223, %bb.n ] ; 2 uses
  %.2218 = phi ptr [ %.1217, %bb.ab ], [ %i.ac, %bb.m ], [ %i.ac, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %i.ac, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.bc, %bb.m ], [ %i.bc, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %i.bc, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105283, %bb.m ], [ %.0105283, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit ], [ %.0105283, %bb.n ] ; 2 uses
  %not. = xor i1 %i.he, true
  %i.hf = sext i1 %not. to i64
  %.1 = add i64 %.0287, %i.hf
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !376
  %i.hg = getelementptr inbounds nuw i8, ptr %.0102284, i64 8 ; 2 uses
  %i.hh = icmp ne i64 %.099286, 0
  %.neg = sext i1 %i.hh to i64
  %i.hi = add i64 %.099286, %.neg                 ; 2 uses
  %i.hj = icmp ne i64 %i.ay, 0
  %.neg123 = sext i1 %i.hj to i64
  %i.hk = add i64 %.sroa.speculated206, %.neg123  ; 2 uses
  %i.hl = add i64 %.0234278, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !5941

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.hm = phi ptr [ %i.bc, %.sink.split.i ], [ %i.ac, %bb.f ]
  %.4 = phi i64 [ %i.hk, %.sink.split.i ], [ %.sroa.speculated206, %bb.f ]
  %.0234.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0234278, %bb.f ]
  %.0228.lcssa.ph = phi ptr [ %.1229, %.sink.split.i ], [ %.0228279, %bb.f ]
  %.0222.lcssa.ph = phi ptr [ %.2224, %.sink.split.i ], [ %.0222280, %bb.f ]
  %.0216.lcssa.ph = phi ptr [ %.2218, %.sink.split.i ], [ %.0216281, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108282, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105283, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.hg, %.sink.split.i ], [ %.0102284, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.hi, %.sink.split.i ], [ %.099286, %bb.f ]
  %i.hn = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.ho = phi ptr [ %i.i, %bb.a ], [ %i.hm, %.thread.loopexit ] ; 8 uses
  %.1320 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0234.lcssa = phi i64 [ 0, %bb.a ], [ %.0234.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0228.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0228.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0222.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0222.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0216.lcssa = phi ptr [ %1, %bb.a ], [ %.0216.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.hn, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.hp = ptrtoaddr ptr %i.ho to i64
  %i.hq = icmp eq ptr %.0108.lcssa, %.0222.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr %i.k, ptr %i.d, align 8, !tbaa !376
  %.idx252 = shl nuw nsw i64 %6, 2
  %i.hr = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx252 ; 7 uses
  %i.hs = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.hs, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.hq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0216.lcssa, %.0222.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.ad
  %i.ht = load i32, ptr %i.k, align 4, !tbaa !367
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i143
  %.07.i = phi ptr [ %.0216.lcssa, %.lr.ph.i143 ], [ %i.hw, %bb.af ] ; 3 uses
  %i.hu = load i32, ptr %.07.i, align 4, !tbaa !367
  %i.hv = icmp slt i32 %i.ht, %i.hu
  br i1 %i.hv, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.hw, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !78

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.hw, %bb.af ] ; 5 uses
  %i.hx = ptrtoint ptr %.0222.lcssa to i64        ; 3 uses
  %i.hy = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 2
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ib ; 5 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.id = add i64 %i.hx, -4
  %i.ie = sub i64 %i.id, %i.hy                    ; 2 uses
  %i.if = lshr i64 %i.ie, 2
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check447 = icmp ult i64 %i.ie, 60
  %i.ih = sub i64 %i.hx, %i.hp
  %diff.check445 = icmp ugt i64 %i.ih, -32
  %or.cond499 = select i1 %min.iters.check447, i1 true, i1 %diff.check445
  br i1 %or.cond499, label %.lr.ph.i.i146.preheader514, label %vector.ph448

vector.ph448:                                     ; preds = %.lr.ph.i.i146.preheader
  %n.vec449 = and i64 %i.ig, 9223372036854775800  ; 3 uses
  %i.ii = shl i64 %n.vec449, 2                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ic, i64 %i.ii
  %i.ik = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ii
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body450 ] ; 2 uses
  %i.il = shl i64 %index451, 2                    ; 2 uses
  %next.gep452 = getelementptr i8, ptr %i.ic, i64 %i.il ; 2 uses
  %next.gep453 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.il ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep453, i64 16
  %wide.load454 = load <4 x i32>, ptr %next.gep453, align 4, !tbaa !367
  %wide.load455 = load <4 x i32>, ptr %i.im, align 4, !tbaa !367
  %i.in = getelementptr i8, ptr %next.gep452, i64 16
  store <4 x i32> %wide.load454, ptr %next.gep452, align 4, !tbaa !367
  store <4 x i32> %wide.load455, ptr %i.in, align 4, !tbaa !367
  %index.next456 = add nuw i64 %index451, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.io, label %middle.block457, label %vector.body450, !llvm.loop !5942

middle.block457:                                  ; preds = %vector.body450
  %cmp.n458 = icmp eq i64 %i.ig, %n.vec449
  br i1 %cmp.n458, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader514

.lr.ph.i.i146.preheader514:                       ; preds = %.lr.ph.i.i146.preheader, %middle.block457
  %.010.i.i147.ph = phi ptr [ %i.ic, %.lr.ph.i.i146.preheader ], [ %i.ij, %middle.block457 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.ik, %middle.block457 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader514, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.ir, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader514 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.iq, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader514 ] ; 2 uses
  %i.ip = load i32, ptr %.079.i.i148, align 4, !tbaa !367
  store i32 %i.ip, ptr %.010.i.i147, align 4, !tbaa !367
  %i.iq = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.iq, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !5943

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151: ; preds = %.lr.ph.i.i146, %middle.block457, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.is, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.ic, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.ho, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5465 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.iw, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.iz, %bb.ai ], [ %.5221, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.iw, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.ix, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.it = load i32, ptr %.0.i, align 4, !tbaa !367 ; 2 uses
  %i.iu = load i32, ptr %.021.i.ph, align 4, !tbaa !367 ; 2 uses
  %i.iv = icmp slt i32 %i.it, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.it, ptr %.024.i, align 4, !tbaa !367
  %i.iy = icmp eq ptr %i.ix, %i.hr
  br i1 %i.iy, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !80

bb.ai:                                            ; preds = %.preheader.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !367
  %i.ja = icmp eq ptr %i.iz, %.5
  br i1 %i.ja, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !80

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.iw, %bb.ai ], [ %i.iw, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.iz, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hr, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !376
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit
  %.223.i463 = ptrtoaddr ptr %.226.i to i64
  %.226.i462 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %i.jb = add i64 %.5465, -4
  %i.jc = sub i64 %i.jb, %.226.i462               ; 2 uses
  %i.jd = lshr i64 %i.jc, 2
  %i.je = add nuw nsw i64 %i.jd, 1                ; 2 uses
  %min.iters.check467 = icmp ult i64 %i.jc, 44
  %i.jf = sub i64 %.226.i462, %.223.i463
  %diff.check464 = icmp ugt i64 %i.jf, -32
  %or.cond500 = select i1 %min.iters.check467, i1 true, i1 %diff.check464
  br i1 %or.cond500, label %.lr.ph.i.i154.preheader504, label %vector.ph468

vector.ph468:                                     ; preds = %.lr.ph.i.i154.preheader
  %n.vec469 = and i64 %i.je, 9223372036854775800  ; 3 uses
  %i.jg = shl i64 %n.vec469, 2                    ; 2 uses
  %i.jh = getelementptr i8, ptr %.226.i, i64 %i.jg ; 2 uses
  %i.ji = getelementptr i8, ptr %.223.i, i64 %i.jg
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph468
  %index471 = phi i64 [ 0, %vector.ph468 ], [ %index.next476, %vector.body470 ] ; 2 uses
  %i.jj = shl i64 %index471, 2                    ; 2 uses
  %next.gep472 = getelementptr i8, ptr %.226.i, i64 %i.jj ; 2 uses
  %next.gep473 = getelementptr i8, ptr %.223.i, i64 %i.jj ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep473, i64 16
  %wide.load474 = load <4 x i32>, ptr %next.gep473, align 4, !tbaa !367
  %wide.load475 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !367
  %i.jl = getelementptr i8, ptr %next.gep472, i64 16
  store <4 x i32> %wide.load474, ptr %next.gep472, align 4, !tbaa !367
  store <4 x i32> %wide.load475, ptr %i.jl, align 4, !tbaa !367
  %index.next476 = add nuw i64 %index471, 8       ; 2 uses
  %i.jm = icmp eq i64 %index.next476, %n.vec469
  br i1 %i.jm, label %middle.block477, label %vector.body470, !llvm.loop !5944

middle.block477:                                  ; preds = %vector.body470
  %cmp.n478 = icmp eq i64 %i.je, %n.vec469
  br i1 %cmp.n478, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader504

.lr.ph.i.i154.preheader504:                       ; preds = %.lr.ph.i.i154.preheader, %middle.block477
  %.010.i.i155.ph = phi ptr [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.jh, %middle.block477 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.ji, %middle.block477 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader504, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.jp, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader504 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.jo, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader504 ] ; 2 uses
  %i.jn = load i32, ptr %.079.i.i156, align 4, !tbaa !367
  store i32 %i.jn, ptr %.010.i.i155, align 4, !tbaa !367
  %i.jo = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jo, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !5945

bb.aj:                                            ; preds = %.thread
  br i1 %i.hq, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jq = phi ptr [ %i.ho, %bb.aj ], [ %i.ac, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 5 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 5 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.jr = phi ptr [ %i.hr, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216268426 = ptrtoaddr ptr %.0222270 to i64
  %.0222270425 = ptrtoaddr ptr %.0216268 to i64   ; 2 uses
  %.0108266428 = ptrtoaddr ptr %.0108266 to i64
  %i.js = add i64 %.0108266428, -4
  %i.jt = sub i64 %i.js, %.0222270425             ; 2 uses
  %i.ju = lshr i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %min.iters.check430 = icmp ult i64 %i.jt, 44
  %i.jw = sub i64 %.0222270425, %.0216268426
  %diff.check427 = icmp ugt i64 %i.jw, -32
  %or.cond501 = select i1 %min.iters.check430, i1 true, i1 %diff.check427
  br i1 %or.cond501, label %.lr.ph.i.i161.preheader515, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph.i.i161.preheader
  %n.vec432 = and i64 %i.jv, 9223372036854775800  ; 3 uses
  %i.jx = shl i64 %n.vec432, 2                    ; 2 uses
  %i.jy = getelementptr i8, ptr %.0222270, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %.0216268, i64 %i.jx
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next439, %vector.body433 ] ; 2 uses
  %i.ka = shl i64 %index434, 2                    ; 2 uses
  %next.gep435 = getelementptr i8, ptr %.0222270, i64 %i.ka ; 2 uses
  %next.gep436 = getelementptr i8, ptr %.0216268, i64 %i.ka ; 2 uses
  %i.kb = getelementptr i8, ptr %next.gep436, i64 16
  %wide.load437 = load <4 x i32>, ptr %next.gep436, align 4, !tbaa !367
  %wide.load438 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !367
  %i.kc = getelementptr i8, ptr %next.gep435, i64 16
  store <4 x i32> %wide.load437, ptr %next.gep435, align 4, !tbaa !367
  store <4 x i32> %wide.load438, ptr %i.kc, align 4, !tbaa !367
  %index.next439 = add nuw i64 %index434, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next439, %n.vec432
  br i1 %i.kd, label %middle.block440, label %vector.body433, !llvm.loop !5946

middle.block440:                                  ; preds = %vector.body433
  %cmp.n441 = icmp eq i64 %i.jv, %n.vec432
  br i1 %cmp.n441, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader515

.lr.ph.i.i161.preheader515:                       ; preds = %.lr.ph.i.i161.preheader, %middle.block440
  %.010.i.i162.ph = phi ptr [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.jy, %middle.block440 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.jz, %middle.block440 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader515, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.kg, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader515 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.kf, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader515 ] ; 2 uses
  %i.ke = load i32, ptr %.079.i.i163, align 4, !tbaa !367
  store i32 %i.ke, ptr %.010.i.i162, align 4, !tbaa !367
  %i.kf = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.kf, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !5947

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block440, %middle.block477, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, %bb.aj
  %i.kh = phi ptr [ %i.ho, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.ac, %.thread.thread ], [ %i.ho, %bb.aj ], [ %i.jq, %bb.ak ], [ %i.ho, %middle.block477 ], [ %i.jq, %middle.block440 ], [ %i.ho, %.lr.ph.i.i154 ], [ %i.jq, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block477 ], [ %.2, %middle.block440 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block477 ], [ %.0234275, %middle.block440 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block477 ], [ %.0228272, %middle.block440 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block477 ], [ %.0102262, %middle.block440 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block477 ], [ %.099259, %middle.block440 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.ki = phi ptr [ %i.hr, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.hr, %bb.aj ], [ %i.jr, %bb.ak ], [ %i.hr, %middle.block477 ], [ %i.jr, %middle.block440 ], [ %i.hr, %.lr.ph.i.i154 ], [ %i.jr, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.jh, %middle.block477 ], [ %i.jy, %middle.block440 ], [ %i.jp, %.lr.ph.i.i154 ], [ %i.kg, %.lr.ph.i.i161 ]
  %i.kj = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.kh, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ki, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.kk = load ptr, ptr %i.d, align 8, !tbaa !376 ; 5 uses
  %.not8.i.i167 = icmp eq ptr %i.kk, %i.ki
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  %i.kl = ptrtoaddr ptr %i.kk to i64              ; 2 uses
  %i.km = ptrtoaddr ptr %i.kj to i64
  %i.kn = ptrtoaddr ptr %i.ki to i64
  %i.ko = add i64 %i.kn, -4
  %i.kp = sub i64 %i.ko, %i.kl                    ; 2 uses
  %i.kq = lshr i64 %i.kp, 2
  %i.kr = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %min.iters.check484 = icmp ult i64 %i.kp, 44
  %i.ks = sub i64 %i.kl, %i.km
  %diff.check482 = icmp ugt i64 %i.ks, -32
  %or.cond502 = or i1 %min.iters.check484, %diff.check482
  br i1 %or.cond502, label %.lr.ph.i.i168.preheader503, label %vector.ph485

vector.ph485:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec486 = and i64 %i.kr, 9223372036854775800  ; 3 uses
  %i.kt = shl i64 %n.vec486, 2                    ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kj, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.kk, i64 %i.kt
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph485
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next493, %vector.body487 ] ; 2 uses
  %i.kw = shl i64 %index488, 2                    ; 2 uses
  %next.gep489 = getelementptr i8, ptr %i.kj, i64 %i.kw ; 2 uses
  %next.gep490 = getelementptr i8, ptr %i.kk, i64 %i.kw ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep490, i64 16
  %wide.load491 = load <4 x i32>, ptr %next.gep490, align 4, !tbaa !367
  %wide.load492 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !367
  %i.ky = getelementptr i8, ptr %next.gep489, i64 16
  store <4 x i32> %wide.load491, ptr %next.gep489, align 4, !tbaa !367
  store <4 x i32> %wide.load492, ptr %i.ky, align 4, !tbaa !367
  %index.next493 = add nuw i64 %index488, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next493, %n.vec486
  br i1 %i.kz, label %middle.block494, label %vector.body487, !llvm.loop !5948

middle.block494:                                  ; preds = %vector.body487
  %cmp.n495 = icmp eq i64 %i.kr, %n.vec486
  br i1 %cmp.n495, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader503

.lr.ph.i.i168.preheader503:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block494
  %.010.i.i169.ph = phi ptr [ %i.kj, %.lr.ph.i.i168.preheader ], [ %i.ku, %middle.block494 ]
  %.079.i.i170.ph = phi ptr [ %i.kk, %.lr.ph.i.i168.preheader ], [ %i.kv, %middle.block494 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader503, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.lc, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader503 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.lb, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader503 ] ; 2 uses
  %i.la = load i32, ptr %.079.i.i170, align 4, !tbaa !367
  store i32 %i.la, ptr %.010.i.i169, align 4, !tbaa !367
  %i.lb = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.lb, %i.ki
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !5949

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block494, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !376
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 10 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 2                        ; 4 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 2                            ; 2 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %.idx254
  %i.t = add i64 %i.s, -4                         ; 2 uses
  %i.u = shl i64 %2, 2
  %i.v = shl i64 %2, 2
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = add i64 %.idx254, -4                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  %stride.check = icmp slt i64 %.idx254, 0
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.ac = phi ptr [ %i.i, %.lr.ph ], [ %i.bc, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hn, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.hl, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.hj, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 18 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 17 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.ho, %.sink.split.i ] ; 5 uses
  %i.ad = mul i64 %i.v, %indvar
  %i.ae = add i64 %i.t, %i.ad                     ; 3 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %i.ag = add i64 %i.t, %i.af
  %scevgep414 = getelementptr i8, ptr %i.x, i64 %i.af
  %.0108286386 = ptrtoaddr ptr %.0108286 to i64   ; 2 uses
  %.0220285387 = ptrtoaddr ptr %.0220285 to i64   ; 2 uses
  %i.ah = icmp ult i64 %.099290, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_:bb.a
  %i.dz = getelementptr i8, ptr %1, i64 %i.dx
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next235, %vector.body229 ] ; 2 uses
  %i.ea = shl i64 %index230, 2                    ; 2 uses
  %next.gep231 = getelementptr i8, ptr %i.dr, i64 %i.ea ; 2 uses
  %next.gep232 = getelementptr i8, ptr %1, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep232, i64 16
  %wide.load233 = load <4 x i32>, ptr %next.gep232, align 4, !tbaa !367
  %wide.load234 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !367
  %i.ec = getelementptr i8, ptr %next.gep231, i64 16
  store <4 x i32> %wide.load233, ptr %next.gep231, align 4, !tbaa !367
  store <4 x i32> %wide.load234, ptr %i.ec, align 4, !tbaa !367
  %index.next235 = add nuw i64 %index230, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.ed, label %middle.block236, label %vector.body229, !llvm.loop !6292

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %i.dv, %n.vec228
  br i1 %cmp.n237, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66, label %.lr.ph.i18.i62.preheader289

.lr.ph.i18.i62.preheader289:                      ; preds = %.lr.ph.i18.i62.preheader, %middle.block236
  %.010.i19.i63.ph = phi ptr [ %i.dr, %.lr.ph.i18.i62.preheader ], [ %i.dy, %middle.block236 ]
  %.079.i20.i64.ph = phi ptr [ %1, %.lr.ph.i18.i62.preheader ], [ %i.dz, %middle.block236 ]
  br label %.lr.ph.i18.i62

.lr.ph.i18.i62:                                   ; preds = %.lr.ph.i18.i62.preheader289, %.lr.ph.i18.i62
  %.010.i19.i63 = phi ptr [ %i.eg, %.lr.ph.i18.i62 ], [ %.010.i19.i63.ph, %.lr.ph.i18.i62.preheader289 ] ; 2 uses
  %.079.i20.i64 = phi ptr [ %i.ef, %.lr.ph.i18.i62 ], [ %.079.i20.i64.ph, %.lr.ph.i18.i62.preheader289 ] ; 2 uses
  %i.ee = load i32, ptr %.079.i20.i64, align 4, !tbaa !367
  store i32 %i.ee, ptr %.010.i19.i63, align 4, !tbaa !367
  %i.ef = getelementptr inbounds nuw i8, ptr %.079.i20.i64, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i19.i63, i64 4 ; 2 uses
  %.not.i21.i65 = icmp eq ptr %i.ef, %i.dq
  br i1 %.not.i21.i65, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66, label %.lr.ph.i18.i62, !llvm.loop !6293

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66:     ; preds = %.lr.ph.i18.i62, %middle.block236, %bb.j
  %.0.lcssa.i22.i67 = phi ptr [ %i.dr, %bb.j ], [ %i.dy, %middle.block236 ], [ %i.eg, %.lr.ph.i18.i62 ] ; 5 uses
  %.0.lcssa.i22.i67241 = ptrtoaddr ptr %.0.lcssa.i22.i67 to i64
  %.not10.i.i68 = icmp eq i64 %.idx26.i60, %i.cx
  br i1 %.not10.i.i68, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i24.i69.preheader

.lr.ph.i24.i69.preheader:                         ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66
  %i.eh = add i64 %.114.i49207.le, -4
  %i.ei = add i64 %.idx26.i60, %i.d
  %i.ej = sub i64 %i.eh, %i.ei                    ; 2 uses
  %i.ek = lshr i64 %i.ej, 2
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check244 = icmp ult i64 %i.ej, 60
  br i1 %min.iters.check244, label %.lr.ph.i24.i69.preheader288, label %vector.memcheck240

vector.memcheck240:                               ; preds = %.lr.ph.i24.i69.preheader
  %i.em = add i64 %.idx26.i60, %i.d
  %i.en = sub i64 %i.em, %.0.lcssa.i22.i67241
  %diff.check242 = icmp ugt i64 %i.en, -32
  br i1 %diff.check242, label %.lr.ph.i24.i69.preheader288, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck240
  %n.vec246 = and i64 %i.el, 9223372036854775800  ; 3 uses
  %i.eo = shl i64 %n.vec246, 2                    ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dq, i64 %i.eo
  %i.eq = getelementptr i8, ptr %.0.lcssa.i22.i67, i64 %i.eo
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %i.er = shl i64 %index248, 2                    ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.dq, i64 %i.er ; 2 uses
  %next.gep250 = getelementptr i8, ptr %.0.lcssa.i22.i67, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load251 = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !367
  %wide.load252 = load <4 x i32>, ptr %i.es, align 4, !tbaa !367
  %i.et = getelementptr i8, ptr %next.gep250, i64 16
  store <4 x i32> %wide.load251, ptr %next.gep250, align 4, !tbaa !367
  store <4 x i32> %wide.load252, ptr %i.et, align 4, !tbaa !367
  %index.next253 = add nuw i64 %index248, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.eu, label %middle.block254, label %vector.body247, !llvm.loop !6294

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %i.el, %n.vec246
  br i1 %cmp.n255, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i24.i69.preheader288

.lr.ph.i24.i69.preheader288:                      ; preds = %vector.memcheck240, %.lr.ph.i24.i69.preheader, %middle.block254
  %.012.i.i70.ph = phi ptr [ %i.dq, %vector.memcheck240 ], [ %i.dq, %.lr.ph.i24.i69.preheader ], [ %i.ep, %middle.block254 ]
  %.0911.i.i71.ph = phi ptr [ %.0.lcssa.i22.i67, %vector.memcheck240 ], [ %.0.lcssa.i22.i67, %.lr.ph.i24.i69.preheader ], [ %i.eq, %middle.block254 ]
  br label %.lr.ph.i24.i69

.lr.ph.i24.i69:                                   ; preds = %.lr.ph.i24.i69.preheader288, %.lr.ph.i24.i69
  %.012.i.i70 = phi ptr [ %i.ew, %.lr.ph.i24.i69 ], [ %.012.i.i70.ph, %.lr.ph.i24.i69.preheader288 ] ; 2 uses
  %.0911.i.i71 = phi ptr [ %i.ex, %.lr.ph.i24.i69 ], [ %.0911.i.i71.ph, %.lr.ph.i24.i69.preheader288 ] ; 2 uses
  %i.ev = load i32, ptr %.012.i.i70, align 4, !tbaa !367
  store i32 %i.ev, ptr %.0911.i.i71, align 4, !tbaa !367
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i70, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i71, i64 4
  %.not.i25.i72 = icmp eq ptr %i.ew, %.114.i49
  br i1 %.not.i25.i72, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i24.i69, !llvm.loop !6295

_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73: ; preds = %.lr.ph.i.i56, %.lr.ph.i24.i69, %middle.block219, %middle.block254, %bb.i, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66
  %i.ey = phi ptr [ %i.dr, %middle.block254 ], [ %i.dr, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66 ], [ %.pre117, %bb.i ], [ %.pre117, %middle.block219 ], [ %i.dr, %.lr.ph.i24.i69 ], [ %.pre117, %.lr.ph.i.i56 ] ; 4 uses
  %i.ez = ptrtoaddr ptr %i.ey to i64
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !379
  %.not28.i = icmp eq ptr %.114.i49, %1
  br i1 %.not28.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.cx
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %bb.k
  %indvar260 = phi i64 [ 0, %.lr.ph.i74.preheader ], [ %indvar.next261, %bb.k ] ; 2 uses
  %.031.i = phi ptr [ %1, %.lr.ph.i74.preheader ], [ %.031..i, %bb.k ] ; 3 uses
  %.01930.i = phi ptr [ %i.fa, %.lr.ph.i74.preheader ], [ %..01930.i, %bb.k ] ; 7 uses
  %.02129.i = phi ptr [ %.114.i49, %.lr.ph.i74.preheader ], [ %i.ga, %bb.k ] ; 5 uses
  %i.fb = icmp eq ptr %0, %.031.i
  br i1 %i.fb, label %.lr.ph.i.i.i77.preheader, label %bb.k

.lr.ph.i.i.i77.preheader:                         ; preds = %.lr.ph.i74
  %.01930.i259.le = ptrtoaddr ptr %.01930.i to i64 ; 2 uses
  %i.fc = add i64 %.01930.i259.le, -4
  %i.fd = sub i64 %i.fc, %i.ez                    ; 2 uses
  %i.fe = lshr i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check264 = icmp ult i64 %i.fd, 92
  br i1 %min.iters.check264, label %.lr.ph.i.i.i77.preheader282, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph.i.i.i77.preheader
  %i.fg = shl i64 %indvar260, 2
  %i.fh = sub i64 %i.fg, %.114.i49207.le
  %i.fi = add i64 %i.fh, %.01930.i259.le
  %i.fj = add i64 %i.fi, -1
  %diff.check262 = icmp ult i64 %i.fj, 31
  br i1 %diff.check262, label %.lr.ph.i.i.i77.preheader282, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck258
  %n.vec266 = and i64 %i.ff, 9223372036854775800  ; 3 uses
  %i.fk = mul i64 %n.vec266, -4                   ; 2 uses
  %i.fl = getelementptr i8, ptr %.02129.i, i64 %i.fk
  %i.fm = getelementptr i8, ptr %.01930.i, i64 %i.fk
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next273, %vector.body267 ] ; 2 uses
  %i.fn = mul i64 %index268, -4                   ; 2 uses
  %next.gep269 = getelementptr i8, ptr %.02129.i, i64 %i.fn ; 2 uses
  %next.gep270 = getelementptr i8, ptr %.01930.i, i64 %i.fn ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %next.gep270, i64 -16
  %i.fp = getelementptr inbounds i8, ptr %next.gep270, i64 -32
  %wide.load271 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !367
  %wide.load272 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !367
  %i.fq = getelementptr inbounds i8, ptr %next.gep269, i64 -16
  %i.fr = getelementptr inbounds i8, ptr %next.gep269, i64 -32
  store <4 x i32> %wide.load271, ptr %i.fq, align 4, !tbaa !367
  store <4 x i32> %wide.load272, ptr %i.fr, align 4, !tbaa !367
  %index.next273 = add nuw i64 %index268, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next273, %n.vec266
  br i1 %i.fs, label %middle.block274, label %vector.body267, !llvm.loop !6296

middle.block274:                                  ; preds = %vector.body267
  %cmp.n275 = icmp eq i64 %i.ff, %n.vec266
  br i1 %cmp.n275, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i77.preheader282

.lr.ph.i.i.i77.preheader282:                      ; preds = %vector.memcheck258, %.lr.ph.i.i.i77.preheader, %middle.block274
  %.010.i.i.i78.ph = phi ptr [ %.02129.i, %vector.memcheck258 ], [ %.02129.i, %.lr.ph.i.i.i77.preheader ], [ %i.fl, %middle.block274 ]
  %.079.i.i.i79.ph = phi ptr [ %.01930.i, %vector.memcheck258 ], [ %.01930.i, %.lr.ph.i.i.i77.preheader ], [ %i.fm, %middle.block274 ]
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i77.preheader282, %.lr.ph.i.i.i77
  %.010.i.i.i78 = phi ptr [ %i.fu, %.lr.ph.i.i.i77 ], [ %.010.i.i.i78.ph, %.lr.ph.i.i.i77.preheader282 ]
  %.079.i.i.i79 = phi ptr [ %i.ft, %.lr.ph.i.i.i77 ], [ %.079.i.i.i79.ph, %.lr.ph.i.i.i77.preheader282 ]
  %i.ft = getelementptr inbounds i8, ptr %.079.i.i.i79, i64 -4 ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.010.i.i.i78, i64 -4 ; 2 uses
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !367
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !367
  %.not.i.i.i80 = icmp eq ptr %i.ey, %i.ft
  br i1 %.not.i.i.i80, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i77, !llvm.loop !6297

bb.k:                                             ; preds = %.lr.ph.i74
  %i.fw = getelementptr inbounds i8, ptr %.01930.i, i64 -4 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.031.i, i64 -4 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !367 ; 2 uses
  %i.fz = load i32, ptr %i.fw, align 4, !tbaa !367 ; 2 uses
  %.not24.i75 = icmp slt i32 %i.fy, %i.fz         ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.02129.i, i64 -4 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.fz)
  %..01930.i = select i1 %.not24.i75, ptr %i.fw, ptr %.01930.i ; 2 uses
  %.031..i = select i1 %.not24.i75, ptr %.031.i, ptr %i.fx
  store i32 %..i, ptr %i.ga, align 4, !tbaa !367
  %.not.i76 = icmp eq ptr %i.ey, %..01930.i
  %indvar.next261 = add i64 %indvar260, 1
  br i1 %.not.i76, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i74, !llvm.loop !105

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %bb.k, %.lr.ph.i.i.i77, %middle.block200, %middle.block274, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %9 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %11 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %12 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.c = icmp ne i64 %4, 0
  %i.d = icmp ne i64 %3, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not76 = icmp ugt i64 %4, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %9, align 8, !tbaa !577
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !578
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !579
  %i.h = load ptr, ptr %7, align 8, !tbaa !586, !nonnull !418
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.h, ptr %8, align 8, !tbaa !569
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_10range_xbufIS2_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %0, align 4, !tbaa !367    ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !367    ; 2 uses
  %.not91 = icmp slt i32 %i.k, %i.l
  br i1 %.not91, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.l, ptr %0, align 4, !tbaa !367
  store i32 %i.k, ptr %1, align 4, !tbaa !367
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.m = icmp ult i64 %i.i, 16
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %7, align 8, !tbaa !586, !nonnull !418
  store ptr %i.n, ptr %10, align 8, !tbaa !569
  call void @_ZN5boost7movelib20merge_bufferless_ON2IPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %10)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.o = icmp ugt i64 %3, %4
  br i1 %i.o, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = lshr i64 %3, 1                           ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p ; 2 uses
  %.not16.i = icmp eq ptr %2, %1
  %.pre = ptrtoint ptr %1 to i64                  ; 3 uses
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.r = ptrtoint ptr %2 to i64
  %i.s = sub i64 %i.r, %.pre
  %i.t = ashr exact i64 %i.s, 2
  %i.u = load i32, ptr %i.q, align 4, !tbaa !367
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.018.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %.01317.i = phi ptr [ %1, %.lr.ph.i ], [ %.114.i, %bb.k ] ; 2 uses
  %i.v = lshr i64 %.018.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !367
  %.not15.i = icmp slt i32 %i.u, %i.x             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.neg.i = xor i64 %i.v, -1
  %i.z = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.y ; 3 uses
  %.1.i = select i1 %.not15.i, i64 %i.v, i64 %i.z ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.k, !llvm.loop !92

_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.k
  %.pre104 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.j, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi105 = phi i64 [ %.pre104, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.j ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %1, %bb.j ]
  %i.aa = sub i64 %.pre-phi105, %.pre
  %i.ab = ashr exact i64 %i.aa, 2
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ac = lshr i64 %4, 1                          ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac ; 2 uses
  %.not16.i78 = icmp eq ptr %1, %0
  %.pre102 = ptrtoint ptr %0 to i64               ; 3 uses
  br i1 %.not16.i78, label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.l
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ae, %.pre102
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !367
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i79
  %.018.i80 = phi i64 [ %i.ag, %.lr.ph.i79 ], [ %.1.i85, %bb.m ] ; 2 uses
  %.01317.i81 = phi ptr [ %0, %.lr.ph.i79 ], [ %.114.i84, %bb.m ] ; 2 uses
  %i.ai = lshr i64 %.018.i80, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.01317.i81, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !367
  %.not15.i82 = icmp slt i32 %i.ak, %i.ah         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.neg.i83 = xor i64 %i.ai, -1
  %i.am = add i64 %.018.i80, %.neg.i83
  %.114.i84 = select i1 %.not15.i82, ptr %i.al, ptr %.01317.i81 ; 3 uses
  %.1.i85 = select i1 %.not15.i82, i64 %i.am, i64 %i.ai ; 2 uses
  %.not.i86 = icmp eq i64 %.1.i85, 0
  br i1 %.not.i86, label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.m, !llvm.loop !104

_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre106 = ptrtoint ptr %.114.i84 to i64
  br label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.l, %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre102, %bb.l ]
  %.013.lcssa.i87 = phi ptr [ %.114.i84, %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %0, %bb.l ]
  %i.an = sub i64 %.pre-phi107, %.pre102
  %i.ao = ashr exact i64 %i.an, 2
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ad, %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ] ; 11 uses
  %.070 = phi i64 [ %i.p, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ao, %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ] ; 3 uses
  %.069 = phi i64 [ %i.ab, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.ac, %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi ptr [ %i.q, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ], [ %.013.lcssa.i87, %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ] ; 18 uses
  %.0134 = ptrtoaddr ptr %.0 to i64               ; 5 uses
  %.071128 = ptrtoaddr ptr %.071 to i64           ; 3 uses
  %i.ap = sub i64 %3, %.070                       ; 3 uses
  %i.aq = icmp ule i64 %i.ap, %.069
  %.not.i88 = icmp ugt i64 %.069, %6
  %or.cond.i = or i1 %i.aq, %.not.i88
  br i1 %or.cond.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not8.i.i = icmp eq ptr %1, %.071
  br i1 %.not8.i.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.p
  %i.ar = add i64 %.071128, -4
  %i.as = sub i64 %i.ar, %i.b                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 44
  %i.av = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.av, -32
  %or.cond221 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond221, label %.lr.ph.i.i.preheader235, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2                       ; 2 uses
  %i.ax = getelementptr i8, ptr %5, i64 %i.aw     ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.az ; 2 uses
  %next.gep129 = getelementptr i8, ptr %1, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep129, align 4, !tbaa !367
  %wide.load130 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !367
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !367
  store <4 x i32> %wide.load130, ptr %i.bb, align 4, !tbaa !367
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !6298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader235

.lr.ph.i.i.preheader235:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.ax, %middle.block ]
  %.079.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader235, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader235 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.be, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader235 ] ; 2 uses
  %i.bd = load i32, ptr %.079.i.i, align 4, !tbaa !367
  store i32 %i.bd, ptr %.010.i.i, align 4, !tbaa !367
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %.071
  br i1 %.not.i.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i, !llvm.loop !6299

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.i:         ; preds = %.lr.ph.i.i, %middle.block, %bb.p
  %.0.lcssa.i.i = phi ptr [ %5, %bb.p ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i152 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %.not8.i37.i = icmp eq ptr %.0, %1
  br i1 %.not8.i37.i, label %_ZN5boost13move_backwardIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i38.i.preheader

.lr.ph.i38.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.i
  %i.bg = add i64 %i.b, -4
  %i.bh = sub i64 %i.bg, %.0134                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check136 = icmp ult i64 %i.bh, 44
  %i.bk = sub i64 %.071128, %i.b
  %diff.check133 = icmp ugt i64 %i.bk, -32
  %or.cond222 = select i1 %min.iters.check136, i1 true, i1 %diff.check133
  br i1 %or.cond222, label %.lr.ph.i38.i.preheader234, label %vector.ph137

vector.ph137:                                     ; preds = %.lr.ph.i38.i.preheader
  %n.vec138 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bl = mul i64 %n.vec138, -4                   ; 2 uses
  %i.bm = getelementptr i8, ptr %.071, i64 %i.bl
  %i.bn = getelementptr i8, ptr %1, i64 %i.bl
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.bo = mul i64 %index140, -4                   ; 2 uses
  %next.gep141 = getelementptr i8, ptr %.071, i64 %i.bo ; 2 uses
  %next.gep142 = getelementptr i8, ptr %1, i64 %i.bo ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %next.gep142, i64 -16
  %i.bq = getelementptr inbounds i8, ptr %next.gep142, i64 -32
  %wide.load143 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !367
  %wide.load144 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !367
  %i.br = getelementptr inbounds i8, ptr %next.gep141, i64 -16
  %i.bs = getelementptr inbounds i8, ptr %next.gep141, i64 -32
  store <4 x i32> %wide.load143, ptr %i.br, align 4, !tbaa !367
  store <4 x i32> %wide.load144, ptr %i.bs, align 4, !tbaa !367
  %index.next145 = add nuw i64 %index140, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.bt, label %middle.block146, label %vector.body139, !llvm.loop !6300

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.bj, %n.vec138
  br i1 %cmp.n147, label %_ZN5boost13move_backwardIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i38.i.preheader234

.lr.ph.i38.i.preheader234:                        ; preds = %.lr.ph.i38.i.preheader, %middle.block146
  %.010.i39.i.ph = phi ptr [ %.071, %.lr.ph.i38.i.preheader ], [ %i.bm, %middle.block146 ]
  %.079.i40.i.ph = phi ptr [ %1, %.lr.ph.i38.i.preheader ], [ %i.bn, %middle.block146 ]
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader234, %.lr.ph.i38.i
  %.010.i39.i = phi ptr [ %i.bv, %.lr.ph.i38.i ], [ %.010.i39.i.ph, %.lr.ph.i38.i.preheader234 ]
  %.079.i40.i = phi ptr [ %i.bu, %.lr.ph.i38.i ], [ %.079.i40.i.ph, %.lr.ph.i38.i.preheader234 ]
  %i.bu = getelementptr inbounds i8, ptr %.079.i40.i, i64 -4 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.010.i39.i, i64 -4 ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !367
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !367
  %.not.i41.i = icmp eq ptr %.0, %i.bu
  br i1 %.not.i41.i, label %_ZN5boost13move_backwardIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i38.i, !llvm.loop !6301

_ZN5boost13move_backwardIPiS1_EET0_T_S3_S2_.exit.i: ; preds = %.lr.ph.i38.i, %middle.block146, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.i
  %.not8.i43.i = icmp eq ptr %5, %.0.lcssa.i.i
  br i1 %.not8.i43.i, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %.lr.ph.i44.i.preheader

.lr.ph.i44.i.preheader:                           ; preds = %_ZN5boost13move_backwardIPiS1_EET0_T_S3_S2_.exit.i
  %i.bx = add i64 %.0.lcssa.i.i152, -4
  %i.by = sub i64 %i.bx, %i.a                     ; 2 uses
  %i.bz = lshr i64 %i.by, 2
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.by, 44
  %i.cb = sub i64 %i.a, %.0134
  %diff.check151 = icmp ugt i64 %i.cb, -32
  %or.cond223 = select i1 %min.iters.check154, i1 true, i1 %diff.check151
  br i1 %or.cond223, label %.lr.ph.i44.i.preheader231, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.i44.i.preheader
  %n.vec156 = and i64 %i.ca, 9223372036854775800  ; 3 uses
  %i.cc = shl i64 %n.vec156, 2                    ; 2 uses
  %i.cd = getelementptr i8, ptr %.0, i64 %i.cc    ; 2 uses
  %i.ce = getelementptr i8, ptr %5, i64 %i.cc
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next163, %vector.body157 ] ; 2 uses
  %i.cf = shl i64 %index158, 2                    ; 2 uses
  %next.gep159 = getelementptr i8, ptr %.0, i64 %i.cf ; 2 uses
  %next.gep160 = getelementptr i8, ptr %5, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep160, i64 16
  %wide.load161 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !367
  %wide.load162 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !367
  %i.ch = getelementptr i8, ptr %next.gep159, i64 16
  store <4 x i32> %wide.load161, ptr %next.gep159, align 4, !tbaa !367
  store <4 x i32> %wide.load162, ptr %i.ch, align 4, !tbaa !367
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.ci, label %middle.block164, label %vector.body157, !llvm.loop !6302

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.ca, %n.vec156
  br i1 %cmp.n165, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %.lr.ph.i44.i.preheader231

.lr.ph.i44.i.preheader231:                        ; preds = %.lr.ph.i44.i.preheader, %middle.block164
  %.010.i45.i.ph = phi ptr [ %.0, %.lr.ph.i44.i.preheader ], [ %i.cd, %middle.block164 ]
  %.079.i46.i.ph = phi ptr [ %5, %.lr.ph.i44.i.preheader ], [ %i.ce, %middle.block164 ]
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader231, %.lr.ph.i44.i
  %.010.i45.i = phi ptr [ %i.cl, %.lr.ph.i44.i ], [ %.010.i45.i.ph, %.lr.ph.i44.i.preheader231 ] ; 2 uses
  %.079.i46.i = phi ptr [ %i.ck, %.lr.ph.i44.i ], [ %.079.i46.i.ph, %.lr.ph.i44.i.preheader231 ] ; 2 uses
  %i.cj = load i32, ptr %.079.i46.i, align 4, !tbaa !367
  store i32 %i.cj, ptr %.010.i45.i, align 4, !tbaa !367
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i46.i, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i45.i, i64 4 ; 2 uses
  %.not.i47.i = icmp eq ptr %i.ck, %.0.lcssa.i.i
  br i1 %.not.i47.i, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %.lr.ph.i44.i, !llvm.loop !6303

bb.q:                                             ; preds = %bb.n
  %.not34.i = icmp ugt i64 %i.ap, %6
  br i1 %.not34.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not35.i = icmp eq i64 %3, %.070
  br i1 %.not35.i, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not8.i50.i = icmp eq ptr %.0, %1
  br i1 %.not8.i50.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit56.i, label %.lr.ph.i51.i.preheader

.lr.ph.i51.i.preheader:                           ; preds = %bb.s
  %i.cm = add i64 %i.b, -4
  %i.cn = sub i64 %i.cm, %.0134                   ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.cn, 44
  %i.cq = sub i64 %.0134, %i.a
  %diff.check169 = icmp ugt i64 %i.cq, -32
  %or.cond224 = or i1 %min.iters.check171, %diff.check169
  br i1 %or.cond224, label %.lr.ph.i51.i.preheader229, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.i51.i.preheader
  %n.vec173 = and i64 %i.cp, 9223372036854775800  ; 3 uses
  %i.cr = shl i64 %n.vec173, 2                    ; 2 uses
  %i.cs = getelementptr i8, ptr %5, i64 %i.cr     ; 2 uses
  %i.ct = getelementptr i8, ptr %.0, i64 %i.cr
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.cu = shl i64 %index175, 2                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %5, i64 %i.cu ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.0, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load178 = load <4 x i32>, ptr %next.gep177, align 4, !tbaa !367
  %wide.load179 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !367
  %i.cw = getelementptr i8, ptr %next.gep176, i64 16
  store <4 x i32> %wide.load178, ptr %next.gep176, align 4, !tbaa !367
  store <4 x i32> %wide.load179, ptr %i.cw, align 4, !tbaa !367
  %index.next180 = add nuw i64 %index175, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.cx, label %middle.block181, label %vector.body174, !llvm.loop !6304

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.cp, %n.vec173
  br i1 %cmp.n182, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit56.i, label %.lr.ph.i51.i.preheader229

.lr.ph.i51.i.preheader229:                        ; preds = %.lr.ph.i51.i.preheader, %middle.block181
  %.010.i52.i.ph = phi ptr [ %5, %.lr.ph.i51.i.preheader ], [ %i.cs, %middle.block181 ]
  %.079.i53.i.ph = phi ptr [ %.0, %.lr.ph.i51.i.preheader ], [ %i.ct, %middle.block181 ]
  br label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.i51.i.preheader229, %.lr.ph.i51.i
  %.010.i52.i = phi ptr [ %i.da, %.lr.ph.i51.i ], [ %.010.i52.i.ph, %.lr.ph.i51.i.preheader229 ] ; 2 uses
  %.079.i53.i = phi ptr [ %i.cz, %.lr.ph.i51.i ], [ %.079.i53.i.ph, %.lr.ph.i51.i.preheader229 ] ; 2 uses
  %i.cy = load i32, ptr %.079.i53.i, align 4, !tbaa !367
  store i32 %i.cy, ptr %.010.i52.i, align 4, !tbaa !367
  %i.cz = getelementptr inbounds nuw i8, ptr %.079.i53.i, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.010.i52.i, i64 4 ; 2 uses
  %.not.i54.i = icmp eq ptr %i.cz, %1
  br i1 %.not.i54.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit56.i, label %.lr.ph.i51.i, !llvm.loop !6305

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit56.i:       ; preds = %.lr.ph.i51.i, %middle.block181, %bb.s
  %.0.lcssa.i55.i = phi ptr [ %5, %bb.s ], [ %i.cs, %middle.block181 ], [ %i.da, %.lr.ph.i51.i ] ; 3 uses
  %.0.lcssa.i55.i205 = ptrtoaddr ptr %.0.lcssa.i55.i to i64
  %.not8.i57.i = icmp eq ptr %1, %.071
  br i1 %.not8.i57.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit63.i, label %.lr.ph.i58.i.preheader

.lr.ph.i58.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit56.i
  %i.db = add i64 %.071128, -4
  %i.dc = sub i64 %i.db, %i.b                     ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.dc, 44
  %i.df = sub i64 %i.b, %.0134
  %diff.check186 = icmp ugt i64 %i.df, -32
  %or.cond225 = select i1 %min.iters.check188, i1 true, i1 %diff.check186
  br i1 %or.cond225, label %.lr.ph.i58.i.preheader228, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i58.i.preheader
  %n.vec190 = and i64 %i.de, 9223372036854775800  ; 3 uses
  %i.dg = shl i64 %n.vec190, 2                    ; 2 uses
  %i.dh = getelementptr i8, ptr %.0, i64 %i.dg    ; 2 uses
  %i.di = getelementptr i8, ptr %1, i64 %i.dg
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %i.dj = shl i64 %index192, 2                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %.0, i64 %i.dj ; 2 uses
  %next.gep194 = getelementptr i8, ptr %1, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep194, i64 16
  %wide.load195 = load <4 x i32>, ptr %next.gep194, align 4, !tbaa !367
  %wide.load196 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !367
  %i.dl = getelementptr i8, ptr %next.gep193, i64 16
  store <4 x i32> %wide.load195, ptr %next.gep193, align 4, !tbaa !367
  store <4 x i32> %wide.load196, ptr %i.dl, align 4, !tbaa !367
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.dm, label %middle.block198, label %vector.body191, !llvm.loop !6306

middle.block198:                                  ; preds = %vector.body191
  %cmp.n199 = icmp eq i64 %i.de, %n.vec190
  br i1 %cmp.n199, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit63.i, label %.lr.ph.i58.i.preheader228

.lr.ph.i58.i.preheader228:                        ; preds = %.lr.ph.i58.i.preheader, %middle.block198
  %.010.i59.i.ph = phi ptr [ %.0, %.lr.ph.i58.i.preheader ], [ %i.dh, %middle.block198 ]
  %.079.i60.i.ph = phi ptr [ %1, %.lr.ph.i58.i.preheader ], [ %i.di, %middle.block198 ]
  br label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph.i58.i.preheader228, %.lr.ph.i58.i
  %.010.i59.i = phi ptr [ %i.dp, %.lr.ph.i58.i ], [ %.010.i59.i.ph, %.lr.ph.i58.i.preheader228 ] ; 2 uses
  %.079.i60.i = phi ptr [ %i.do, %.lr.ph.i58.i ], [ %.079.i60.i.ph, %.lr.ph.i58.i.preheader228 ] ; 2 uses
  %i.dn = load i32, ptr %.079.i60.i, align 4, !tbaa !367
  store i32 %i.dn, ptr %.010.i59.i, align 4, !tbaa !367
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i60.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i59.i, i64 4 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.do, %.071
  br i1 %.not.i61.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit63.i, label %.lr.ph.i58.i, !llvm.loop !6307

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit63.i:       ; preds = %.lr.ph.i58.i, %middle.block198, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit56.i
  %.0.lcssa.i62.i = phi ptr [ %.0, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit56.i ], [ %i.dh, %middle.block198 ], [ %i.dp, %.lr.ph.i58.i ] ; 7 uses
  %.not8.i64.i = icmp eq ptr %5, %.0.lcssa.i55.i
  br i1 %.not8.i64.i, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit63.i
  %.0.lcssa.i62.i203 = ptrtoaddr ptr %.0.lcssa.i62.i to i64
  %i.dq = add i64 %.0.lcssa.i55.i205, -4
  %i.dr = sub i64 %i.dq, %i.a                     ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check207 = icmp ult i64 %i.dr, 44
  %i.du = sub i64 %i.a, %.0.lcssa.i62.i203
  %diff.check204 = icmp ugt i64 %i.du, -32
  %or.cond226 = select i1 %min.iters.check207, i1 true, i1 %diff.check204
  br i1 %or.cond226, label %.lr.ph.i65.i.preheader227, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph.i65.i.preheader
  %n.vec209 = and i64 %i.dt, 9223372036854775800  ; 3 uses
  %i.dv = shl i64 %n.vec209, 2                    ; 2 uses
  %i.dw = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.dv
  %i.dx = getelementptr i8, ptr %5, i64 %i.dv
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %i.dy = shl i64 %index211, 2                    ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.dy ; 2 uses
  %next.gep213 = getelementptr i8, ptr %5, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep213, i64 16
  %wide.load214 = load <4 x i32>, ptr %next.gep213, align 4, !tbaa !367
  %wide.load215 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !367
  %i.ea = getelementptr i8, ptr %next.gep212, i64 16
  store <4 x i32> %wide.load214, ptr %next.gep212, align 4, !tbaa !367
  store <4 x i32> %wide.load215, ptr %i.ea, align 4, !tbaa !367
  %index.next216 = add nuw i64 %index211, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.eb, label %middle.block217, label %vector.body210, !llvm.loop !6308

middle.block217:                                  ; preds = %vector.body210
  %cmp.n218 = icmp eq i64 %i.dt, %n.vec209
  br i1 %cmp.n218, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %.lr.ph.i65.i.preheader227

.lr.ph.i65.i.preheader227:                        ; preds = %.lr.ph.i65.i.preheader, %middle.block217
  %.010.i66.i.ph = phi ptr [ %.0.lcssa.i62.i, %.lr.ph.i65.i.preheader ], [ %i.dw, %middle.block217 ]
  %.079.i67.i.ph = phi ptr [ %5, %.lr.ph.i65.i.preheader ], [ %i.dx, %middle.block217 ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader227, %.lr.ph.i65.i
  %.010.i66.i = phi ptr [ %i.ee, %.lr.ph.i65.i ], [ %.010.i66.i.ph, %.lr.ph.i65.i.preheader227 ] ; 2 uses
  %.079.i67.i = phi ptr [ %i.ed, %.lr.ph.i65.i ], [ %.079.i67.i.ph, %.lr.ph.i65.i.preheader227 ] ; 2 uses
  %i.ec = load i32, ptr %.079.i67.i, align 4, !tbaa !367
  store i32 %i.ec, ptr %.010.i66.i, align 4, !tbaa !367
  %i.ed = getelementptr inbounds nuw i8, ptr %.079.i67.i, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i66.i, i64 4
  %.not.i68.i = icmp eq ptr %i.ed, %.0.lcssa.i55.i
  br i1 %.not.i68.i, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %.lr.ph.i65.i, !llvm.loop !6309

bb.t:                                             ; preds = %bb.q
  %i.ef = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPiEET_S3_S3_S3_(ptr noundef %.0, ptr noundef %1, ptr noundef %.071)
  br label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit

_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit: ; preds = %.lr.ph.i44.i, %.lr.ph.i65.i, %middle.block164, %middle.block217, %bb.o, %_ZN5boost13move_backwardIPiS1_EET0_T_S3_S2_.exit.i, %bb.r, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit63.i, %bb.t
  %.0.i = phi ptr [ %.071, %bb.r ], [ %i.ef, %bb.t ], [ %.0.lcssa.i62.i, %middle.block217 ], [ %.0, %bb.o ], [ %.0, %_ZN5boost13move_backwardIPiS1_EET0_T_S3_S2_.exit.i ], [ %.0.lcssa.i62.i, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit63.i ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i ], [ %i.cd, %middle.block164 ], [ %i.cl, %.lr.ph.i44.i ] ; 2 uses
  %i.eg = load ptr, ptr %7, align 8, !tbaa !586, !nonnull !418
  store ptr %i.eg, ptr %11, align 8, !tbaa !569
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0.i, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %11)
  %i.eh = sub i64 %4, %.069
  %i.ei = load ptr, ptr %7, align 8, !tbaa !586, !nonnull !418
  store ptr %i.ei, ptr %12, align 8, !tbaa !569
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %.0.i, ptr noundef %.071, ptr noundef %2, i64 noundef %i.ap, i64 noundef %i.eh, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %12)
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.h, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib20merge_bufferless_ON2IPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = sub i64 %i.d, %i.a
  %i.f = icmp slt i64 %i.c, %i.e
  br i1 %i.f, label %.preheader74, label %.preheader75

.preheader75:                                     ; preds = %bb.a
  %.not80 = icmp eq ptr %1, %2
  br i1 %.not80, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader75
  %.not16.i54117 = icmp eq ptr %1, %0
  br i1 %.not16.i54117, label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.thread, label %.lr.ph.i55

.preheader74:                                     ; preds = %bb.a
  %.not5283 = icmp eq ptr %0, %1
  br i1 %.not5283, label %.critedge.thread, label %.lr.ph86

.lr.ph86.loopexit:                                ; preds = %bb.c
  br label %.lr.ph86, !llvm.loop !6310

.lr.ph86:                                         ; preds = %.preheader74, %.lr.ph86.loopexit
  %.04085 = phi ptr [ %i.r, %.lr.ph86.loopexit ], [ %0, %.preheader74 ] ; 2 uses
  %.04584 = phi ptr [ %.013.lcssa.i, %.lr.ph86.loopexit ], [ %1, %.preheader74 ] ; 5 uses
  %.not16.i = icmp eq ptr %2, %.04584
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph86
  %i.g = ptrtoint ptr %.04584 to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = load i32, ptr %.04085, align 4, !tbaa !367
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01317.i = phi ptr [ %.04584, %.lr.ph.i ], [ %.114.i, %bb.b ] ; 2 uses
  %i.k = lshr i64 %.018.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !367
  %.not15.i = icmp slt i32 %i.j, %i.m             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.o = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.n ; 2 uses
  %.1.i = select i1 %.not15.i, i64 %i.k, i64 %i.o ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %bb.b, !llvm.loop !92

_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.b, %.lr.ph86
  %.013.lcssa.i = phi ptr [ %.04584, %.lr.ph86 ], [ %.114.i, %bb.b ] ; 5 uses
  %i.p = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPiEET_S3_S3_S3_(ptr noundef nonnull %.04085, ptr noundef %.04584, ptr noundef %.013.lcssa.i)
  %i.q = icmp eq ptr %.013.lcssa.i, %2
  br i1 %i.q, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, %bb.c
  %.141 = phi ptr [ %i.r, %bb.c ], [ %i.p, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.141, i64 4 ; 4 uses
  %.not53 = icmp eq ptr %i.r, %.013.lcssa.i
  br i1 %.not53, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.s = load i32, ptr %i.r, align 4, !tbaa !367
  %i.t = load i32, ptr %.013.lcssa.i, align 4, !tbaa !367
  %.not73 = icmp slt i32 %i.s, %i.t
  br i1 %.not73, label %.preheader, label %.lr.ph86.loopexit, !llvm.loop !6310

.lr.ph.loopexit:                                  ; preds = %bb.g
  br label %.lr.ph.i55, !llvm.loop !6311

_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.thread: ; preds = %.lr.ph.preheader
  %i.u = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPiEET_S3_S3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge.thread

.lr.ph.i55:                                       ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.14681119 = phi ptr [ %.114.i60, %.lr.ph.loopexit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04282118 = phi ptr [ %i.ai, %.lr.ph.loopexit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.04282118, i64 -4
  %i.w = ptrtoint ptr %.14681119 to i64
  %i.x = sub i64 %i.w, %i.b
  %i.y = ashr exact i64 %i.x, 2
  %i.z = load i32, ptr %i.v, align 4, !tbaa !367
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i55
  %.018.i56 = phi i64 [ %i.y, %.lr.ph.i55 ], [ %.1.i61, %bb.d ] ; 2 uses
  %.01317.i57 = phi ptr [ %0, %.lr.ph.i55 ], [ %.114.i60, %bb.d ] ; 2 uses
  %i.aa = lshr i64 %.018.i56, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.01317.i57, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !367
  %.not15.i58 = icmp slt i32 %i.ac, %i.z          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.neg.i59 = xor i64 %i.aa, -1
  %i.ae = add i64 %.018.i56, %.neg.i59
  %.114.i60 = select i1 %.not15.i58, ptr %i.ad, ptr %.01317.i57 ; 6 uses
  %.1.i61 = select i1 %.not15.i58, i64 %i.ae, i64 %i.aa ; 2 uses
  %.not.i62 = icmp eq i64 %.1.i61, 0
  br i1 %.not.i62, label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !104

_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %i.af = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPiEET_S3_S3_S3_(ptr noundef %.114.i60, ptr noundef %.14681119, ptr noundef nonnull %.04282118)
  %i.ag = icmp eq ptr %.114.i60, %0
  br i1 %i.ag, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %i.ah = getelementptr inbounds i8, ptr %.114.i60, i64 -4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.143 = phi ptr [ %i.af, %bb.e ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.143, i64 -4 ; 3 uses
  %.not51 = icmp eq ptr %.114.i60, %i.ai
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %.143, i64 -8
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !367
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !367
  %.not72 = icmp slt i32 %i.ak, %i.al
  br i1 %.not72, label %bb.f, label %.lr.ph.loopexit, !llvm.loop !6311

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, %.preheader, %.preheader75, %.preheader74, %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_10range_xbufIS2_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next360, %vector.body351 ] ; 2 uses
  %i.ff = shl i64 %index352, 2                    ; 3 uses
  %next.gep353 = getelementptr i8, ptr %7, i64 %i.ff ; 2 uses
  %next.gep354 = getelementptr i8, ptr %i.eq, i64 %i.ff ; 3 uses
  %next.gep355 = getelementptr i8, ptr %i.ek, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep354, i64 16 ; 2 uses
  %wide.load356 = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !505, !alias.scope !11312, !noalias !11313
  %wide.load357 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !505, !alias.scope !11312, !noalias !11313
  %i.fh = getelementptr i8, ptr %next.gep353, i64 16
  store <4 x i32> %wide.load356, ptr %next.gep353, align 4, !tbaa !505, !alias.scope !11314, !noalias !11315
  store <4 x i32> %wide.load357, ptr %i.fh, align 4, !tbaa !505, !alias.scope !11314, !noalias !11315
  %i.fi = getelementptr i8, ptr %next.gep355, i64 16
  %wide.load358 = load <4 x i32>, ptr %next.gep355, align 4, !tbaa !505, !alias.scope !11313
  %wide.load359 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !505, !alias.scope !11313
  store <4 x i32> %wide.load358, ptr %next.gep354, align 4, !tbaa !505, !alias.scope !11312, !noalias !11313
  store <4 x i32> %wide.load359, ptr %i.fg, align 4, !tbaa !505, !alias.scope !11312, !noalias !11313
  %index.next360 = add nuw i64 %index352, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next360, %n.vec350
  br i1 %i.fj, label %middle.block361, label %vector.body351, !llvm.loop !11288

middle.block361:                                  ; preds = %vector.body351
  %cmp.n362 = icmp eq i64 %i.et, %n.vec350
  br i1 %cmp.n362, label %._crit_edge.i134, label %.lr.ph.i129.preheader432

.lr.ph.i129.preheader432:                         ; preds = %vector.memcheck329, %.lr.ph.i129.preheader, %middle.block361
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck329 ], [ %7, %.lr.ph.i129.preheader ], [ %i.fc, %middle.block361 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.eq, %vector.memcheck329 ], [ %i.eq, %.lr.ph.i129.preheader ], [ %i.fd, %middle.block361 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.ek, %vector.memcheck329 ], [ %i.ek, %.lr.ph.i129.preheader ], [ %i.fe, %middle.block361 ] ; 3 uses
  %.02131.i132.ph435 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fk = sub i64 %i.ag, %.02131.i132.ph435       ; 2 uses
  %i.fl = lshr i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1
  %xtraiter = and i64 %i.fm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader432, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.fp, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader432 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.fo, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader432 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.fn, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader432 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader432 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.fq = load i32, ptr %.02032.i131.prol, align 4, !tbaa !505
  store i32 %i.fq, ptr %.033.i130.prol, align 4, !tbaa !505
  %i.fr = load i32, ptr %.02131.i132.prol, align 4, !tbaa !505
  store i32 %i.fr, ptr %.02032.i131.prol, align 4, !tbaa !505
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !11289

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader432
  %.lcssa433.unr = phi ptr [ poison, %.lr.ph.i129.preheader432 ], [ %i.fp, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader432 ], [ %i.fp, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader432 ], [ %i.fo, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader432 ], [ %i.fn, %.lr.ph.i129.prol ]
  %i.fs = icmp ult i64 %i.fk, 12
  br i1 %i.fs, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.gk, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.gj, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.gi, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.fw = load i32, ptr %.02032.i131, align 4, !tbaa !505
  store i32 %i.fw, ptr %.033.i130, align 4, !tbaa !505
  %i.fx = load i32, ptr %.02131.i132, align 4, !tbaa !505
  store i32 %i.fx, ptr %.02032.i131, align 4, !tbaa !505
  %i.fy = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.gb = load i32, ptr %i.fu, align 4, !tbaa !505
  store i32 %i.gb, ptr %i.fv, align 4, !tbaa !505
  %i.gc = load i32, ptr %i.ft, align 4, !tbaa !505
  store i32 %i.gc, ptr %i.fu, align 4, !tbaa !505
  %i.gd = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.ge = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.gg = load i32, ptr %i.fz, align 4, !tbaa !505
  store i32 %i.gg, ptr %i.ga, align 4, !tbaa !505
  %i.gh = load i32, ptr %i.fy, align 4, !tbaa !505
  store i32 %i.gh, ptr %i.fz, align 4, !tbaa !505
  %i.gi = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.gl = load i32, ptr %i.ge, align 4, !tbaa !505
  store i32 %i.gl, ptr %i.gf, align 4, !tbaa !505
  %i.gm = load i32, ptr %i.gd, align 4, !tbaa !505
  store i32 %i.gm, ptr %i.ge, align 4, !tbaa !505
  %.not28.i133.3 = icmp eq ptr %i.gi, %i.bg
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !11290

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block361, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.fc, %middle.block361 ], [ %.lcssa433.unr, %.lr.ph.i129.prol.loopexit ], [ %i.gk, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.gn = load i32, ptr %i.bl, align 4, !tbaa !505
  %i.go = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gq = load i32, ptr %.0106222, align 4, !tbaa !505
  store i32 %i.gq, ptr %i.bl, align 4, !tbaa !505
  store i32 %i.gn, ptr %.0106222, align 4, !tbaa !505
  %i.gr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gt = icmp eq ptr %i.bl, %.0190217
  br i1 %i.gt, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gu = icmp eq ptr %.0190217, %.0106222
  %spec.select204 = select i1 %i.gu, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0190217, %bb.q ], [ %spec.select204, %bb.t ], [ %.0106222, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.d, align 8, !tbaa !516
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test12copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gv = load i32, ptr %i.bl, align 4, !tbaa !505
  %i.gw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gy = load i32, ptr %.0106222, align 4, !tbaa !505
  store i32 %i.gy, ptr %i.bl, align 4, !tbaa !505
  store i32 %i.gv, ptr %.0106222, align 4, !tbaa !505
  %i.gz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.hb = icmp eq ptr %i.bl, %.0190217
  br i1 %i.hb, label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hc = icmp eq ptr %.0190217, %.0106222
  %spec.select205 = select i1 %i.hc, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140
  %i.hd = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.ei, %bb.u ], [ %i.ei, %bb.w ], [ %i.ei, %bb.v ]
  %i.he = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.eh, %bb.u ], [ %i.eh, %bb.w ], [ %i.eh, %bb.v ]
  %.1191 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %.0190217, %bb.u ], [ %spec.select205, %bb.w ], [ %.0106222, %bb.v ]
  %i.hf = xor i1 %i.ef, %i.ej
  %i.hg = zext i1 %i.hf to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit
  %i.hh = phi ptr [ %i.hd, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.hi = phi ptr [ %i.he, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.hj = phi i1 [ %i.ee, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit ], [ %i.bt, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ]
  %.2192 = phi ptr [ %.1191, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.eg, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.hg, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test12copyable_intEEEvT_S7_RS7_.exit ], [ %.0108221, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test12copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.hj, true
  %i.hk = sext i1 %not. to i64
  %.1 = add i64 %.0226, %i.hk
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0111219, i64 %2 ; 2 uses
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !516
  %i.hm = getelementptr inbounds nuw i8, ptr %.0106222, i64 4
  %i.hn = icmp ne i64 %.0104225, 0
  %.neg = sext i1 %i.hn to i64
  %i.ho = add i64 %.0104225, %.neg
  %i.hp = icmp ne i64 %i.bc, 0
  %.neg122 = sext i1 %i.hp to i64
  %i.hq = add i64 %.sroa.speculated179, %.neg122
  %i.hr = add i64 %.0194216, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hr, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !11291

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hs = phi ptr [ %i.hh, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.ht = phi ptr [ %i.hi, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 5 uses
  %.0194.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0194216, %bb.g ], [ %.0194216, %bb.f ] ; 3 uses
  %.0190.lcssa.ph = phi ptr [ %.2192, %bb.x ], [ %.0190217, %bb.g ], [ %.0190217, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114218, %bb.g ], [ %.0114218, %bb.f ] ; 5 uses
  %.0111.lcssa.ph = phi ptr [ %i.hl, %bb.x ], [ %.0111219, %bb.g ], [ %.0111219, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108221, %bb.f ]
  %i.hu = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.hv = select i1 %i.hu, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.ht, %i.hs
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hw = ptrtoaddr ptr %.0114.lcssa.ph to i64
  %.0114.lcssa.ph367 = ptrtoaddr ptr %i.ht to i64 ; 2 uses
  %i.hx = ptrtoaddr ptr %i.hs to i64
  %i.hy = add i64 %i.hx, -4
  %i.hz = sub i64 %i.hy, %.0114.lcssa.ph367       ; 2 uses
  %i.ia = lshr i64 %i.hz, 2
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.hz, 44
  %i.ic = sub i64 %.0114.lcssa.ph367, %i.hw
  %diff.check368 = icmp ugt i64 %i.ic, -32
  %or.cond421 = select i1 %min.iters.check370, i1 true, i1 %diff.check368
  br i1 %or.cond421, label %.lr.ph.i.i145.preheader429, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph.i.i145.preheader
  %n.vec372 = and i64 %i.ib, 9223372036854775800  ; 3 uses
  %i.id = shl i64 %n.vec372, 2                    ; 2 uses
  %i.ie = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.id
  %i.if = getelementptr i8, ptr %i.ht, i64 %i.id
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 2 uses
  %i.ig = shl i64 %index374, 2                    ; 2 uses
  %next.gep375 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.ig ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.ht, i64 %i.ig ; 2 uses
  %i.ih = getelementptr i8, ptr %next.gep376, i64 16
  %wide.load377 = load <4 x i32>, ptr %next.gep376, align 4, !tbaa !505
  %wide.load378 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !505
  %i.ii = getelementptr i8, ptr %next.gep375, i64 16
  store <4 x i32> %wide.load377, ptr %next.gep375, align 4, !tbaa !505
  store <4 x i32> %wide.load378, ptr %i.ii, align 4, !tbaa !505
  %index.next379 = add nuw i64 %index374, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.ij, label %middle.block380, label %vector.body373, !llvm.loop !11292

middle.block380:                                  ; preds = %vector.body373
  %cmp.n381 = icmp eq i64 %i.ib, %n.vec372
  br i1 %cmp.n381, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145.preheader429

.lr.ph.i.i145.preheader429:                       ; preds = %.lr.ph.i.i145.preheader, %middle.block380
  %.010.i.i146.ph = phi ptr [ %.0114.lcssa.ph, %.lr.ph.i.i145.preheader ], [ %i.ie, %middle.block380 ]
  %.079.i.i147.ph = phi ptr [ %i.ht, %.lr.ph.i.i145.preheader ], [ %i.if, %middle.block380 ]
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader429, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.im, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader429 ] ; 2 uses
  %.079.i.i147 = phi ptr [ %i.il, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader429 ] ; 2 uses
  %i.ik = load i32, ptr %.079.i.i147, align 4, !tbaa !505
  store i32 %i.ik, ptr %.010.i.i146, align 4, !tbaa !505
  %i.il = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  %.not.i.i148 = icmp eq ptr %i.il, %i.hs
  br i1 %.not.i.i148, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145, !llvm.loop !11293

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150: ; preds = %.lr.ph.i.i145, %middle.block380, %bb.a, %.thread
  %.0108.lcssa286 = phi ptr [ %1, %bb.a ], [ %i.hv, %.thread ], [ %i.hv, %middle.block380 ], [ %i.hv, %.lr.ph.i.i145 ]
  %.0111.lcssa285 = phi ptr [ %i.h, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block380 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0190.lcssa284 = phi ptr [ %i.g, %bb.a ], [ %.0190.lcssa.ph, %.thread ], [ %.0190.lcssa.ph, %middle.block380 ], [ %.0190.lcssa.ph, %.lr.ph.i.i145 ]
  %.0194.lcssa283 = phi i64 [ 0, %bb.a ], [ %.0194.lcssa.ph, %.thread ], [ %.0194.lcssa.ph, %middle.block380 ], [ %.0194.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx209 = shl i64 %6, 2                        ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx209 ; 2 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  %i.io = add i64 %.idx209, -4                    ; 2 uses
  %i.ip = lshr exact i64 %i.io, 2
  %i.iq = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.io, 124
  br i1 %min.iters.check387, label %.lr.ph.i.i152.preheader428, label %vector.memcheck384

vector.memcheck384:                               ; preds = %.lr.ph.i.i152.preheader
  %i.ir = mul i64 %2, %i.f
  %i.is = add i64 %i.ir, %3
  %i.it = shl i64 %i.is, 2
  %i.iu = add i64 %i.it, %i.b
  %i.iv = sub i64 %i.iu, %i.a
  %diff.check385 = icmp ugt i64 %i.iv, -32
  br i1 %diff.check385, label %.lr.ph.i.i152.preheader428, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck384
  %n.vec389 = and i64 %i.iq, 9223372036854775800  ; 3 uses
  %i.iw = shl i64 %n.vec389, 2                    ; 2 uses
  %i.ix = getelementptr i8, ptr %7, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.j, i64 %i.iw
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next396, %vector.body390 ] ; 2 uses
  %i.iz = shl i64 %index391, 2                    ; 2 uses
  %next.gep392 = getelementptr i8, ptr %7, i64 %i.iz ; 2 uses
  %next.gep393 = getelementptr i8, ptr %i.j, i64 %i.iz ; 2 uses
  %i.ja = getelementptr i8, ptr %next.gep393, i64 16
  %wide.load394 = load <4 x i32>, ptr %next.gep393, align 4, !tbaa !505
  %wide.load395 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !505
  %i.jb = getelementptr i8, ptr %next.gep392, i64 16
  store <4 x i32> %wide.load394, ptr %next.gep392, align 4, !tbaa !505
  store <4 x i32> %wide.load395, ptr %i.jb, align 4, !tbaa !505
  %index.next396 = add nuw i64 %index391, 8       ; 2 uses
  %i.jc = icmp eq i64 %index.next396, %n.vec389
  br i1 %i.jc, label %middle.block397, label %vector.body390, !llvm.loop !11294

middle.block397:                                  ; preds = %vector.body390
  %cmp.n398 = icmp eq i64 %i.iq, %n.vec389
  br i1 %cmp.n398, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152.preheader428

.lr.ph.i.i152.preheader428:                       ; preds = %vector.memcheck384, %.lr.ph.i.i152.preheader, %middle.block397
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck384 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.ix, %middle.block397 ]
  %.079.i.i154.ph = phi ptr [ %i.j, %vector.memcheck384 ], [ %i.j, %.lr.ph.i.i152.preheader ], [ %i.iy, %middle.block397 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader428, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.jf, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader428 ] ; 2 uses
  %.079.i.i154 = phi ptr [ %i.je, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader428 ] ; 2 uses
  %i.jd = load i32, ptr %.079.i.i154, align 4, !tbaa !505
  store i32 %i.jd, ptr %.010.i.i153, align 4, !tbaa !505
  %i.je = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %.not.i.i155 = icmp eq ptr %i.je, %i.in
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152, !llvm.loop !11295

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157: ; preds = %.lr.ph.i.i152, %middle.block397, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  store ptr %7, ptr %i.c, align 8, !tbaa !516
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.jg, ptr %i.d, align 8, !tbaa !516
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.jg, ptr %10, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %4
  store ptr %i.ji, ptr %12, align 8, !tbaa !630, !alias.scope !11316
  store ptr %.0190.lcssa284, ptr %13, align 8, !tbaa !630, !alias.scope !11317
  store ptr %i.j, ptr %14, align 8, !tbaa !630, !alias.scope !11318
  store ptr %7, ptr %15, align 8, !tbaa !630, !alias.scope !11319
  store ptr %i.in, ptr %16, align 8, !tbaa !630, !alias.scope !11320
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.220") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0194.lcssa283, i64 noundef 0, i64 noundef %.0194.lcssa283, i1 noundef zeroext true)
  %i.jj = load ptr, ptr %11, align 8, !tbaa !630  ; 2 uses
  %i.jk = ptrtoaddr ptr %i.jj to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.jl = load ptr, ptr %10, align 8, !tbaa !630  ; 2 uses
  %i.jm = load ptr, ptr %i.c, align 8, !tbaa !516 ; 4 uses
  %i.jn = ptrtoaddr ptr %i.jm to i64
  %.not27.i = icmp eq ptr %i.jm, %i.jl
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, %bb.y
  %indvar403 = phi i64 [ %indvar.next404, %bb.y ], [ 0, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 2 uses
  %.030.i = phi ptr [ %.030..i, %bb.y ], [ %i.jl, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 7 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.y ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.ko, %bb.y ], [ %i.jj, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 5 uses
  %i.jo = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.jo, label %.lr.ph.i.i.i.preheader, label %bb.y

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i158
  %.030.i402.le = ptrtoaddr ptr %.030.i to i64    ; 2 uses
  %i.jp = add i64 %.030.i402.le, -4
  %i.jq = sub i64 %i.jp, %i.jn                    ; 2 uses
  %i.jr = lshr i64 %i.jq, 2
  %i.js = add nuw nsw i64 %i.jr, 1                ; 2 uses
  %min.iters.check407 = icmp ult i64 %i.jq, 76
  br i1 %min.iters.check407, label %.lr.ph.i.i.i.preheader422, label %vector.memcheck401

vector.memcheck401:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.jt = shl i64 %indvar403, 2
  %i.ju = sub i64 %i.jt, %i.jk
  %i.jv = add i64 %i.ju, %.030.i402.le
  %i.jw = add i64 %i.jv, -1
  %diff.check405 = icmp ult i64 %i.jw, 31
  br i1 %diff.check405, label %.lr.ph.i.i.i.preheader422, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck401
  %n.vec409 = and i64 %i.js, 9223372036854775800  ; 3 uses
  %i.jx = mul i64 %n.vec409, -4                   ; 2 uses
  %i.jy = getelementptr i8, ptr %.02128.i, i64 %i.jx
  %i.jz = getelementptr i8, ptr %.030.i, i64 %i.jx
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.ka = mul i64 %index411, -4                   ; 2 uses
  %next.gep412 = getelementptr i8, ptr %.02128.i, i64 %i.ka ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.030.i, i64 %i.ka ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %next.gep413, i64 -16
  %i.kc = getelementptr inbounds i8, ptr %next.gep413, i64 -32
  %wide.load414 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !505
  %wide.load415 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !505
  %i.kd = getelementptr inbounds i8, ptr %next.gep412, i64 -16
  %i.ke = getelementptr inbounds i8, ptr %next.gep412, i64 -32
  store <4 x i32> %wide.load414, ptr %i.kd, align 4, !tbaa !505
  store <4 x i32> %wide.load415, ptr %i.ke, align 4, !tbaa !505
  %index.next416 = add nuw i64 %index411, 8       ; 2 uses
  %i.kf = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.kf, label %middle.block417, label %vector.body410, !llvm.loop !11306

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.js, %n.vec409
  br i1 %cmp.n418, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i.preheader422

.lr.ph.i.i.i.preheader422:                        ; preds = %vector.memcheck401, %.lr.ph.i.i.i.preheader, %middle.block417
  %.010.i.i.i.ph = phi ptr [ %.02128.i, %vector.memcheck401 ], [ %.02128.i, %.lr.ph.i.i.i.preheader ], [ %i.jy, %middle.block417 ]
  %.079.i.i.i.ph = phi ptr [ %.030.i, %vector.memcheck401 ], [ %.030.i, %.lr.ph.i.i.i.preheader ], [ %i.jz, %middle.block417 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader422, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.kh, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader422 ]
  %.079.i.i.i = phi ptr [ %i.kg, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader422 ]
  %i.kg = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 3 uses
  %i.kh = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.ki = load i32, ptr %i.kg, align 4, !tbaa !505
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_:bb.a
  %bound0343 = icmp ult ptr %i.em, %scevgep335
  %bound1344 = icmp ult ptr %i.eg, %scevgep333
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx342, %found.conflict345
  br i1 %conflict.rdx346, label %.lr.ph.i129.preheader432, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck329
  %n.vec350 = and i64 %i.ep, 9223372036854775800  ; 3 uses
  %i.ex = shl i64 %n.vec350, 2                    ; 3 uses
  %i.ey = getelementptr i8, ptr %7, i64 %i.ex     ; 2 uses
  %i.ez = getelementptr i8, ptr %i.em, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.eg, i64 %i.ex
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next360, %vector.body351 ] ; 2 uses
  %i.fb = shl i64 %index352, 2                    ; 3 uses
  %next.gep353 = getelementptr i8, ptr %7, i64 %i.fb ; 2 uses
  %next.gep354 = getelementptr i8, ptr %i.em, i64 %i.fb ; 3 uses
  %next.gep355 = getelementptr i8, ptr %i.eg, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep354, i64 16 ; 2 uses
  %wide.load356 = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !505, !alias.scope !11379, !noalias !11380
  %wide.load357 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !505, !alias.scope !11379, !noalias !11380
  %i.fd = getelementptr i8, ptr %next.gep353, i64 16
  store <4 x i32> %wide.load356, ptr %next.gep353, align 4, !tbaa !505, !alias.scope !11381, !noalias !11382
  store <4 x i32> %wide.load357, ptr %i.fd, align 4, !tbaa !505, !alias.scope !11381, !noalias !11382
  %i.fe = getelementptr i8, ptr %next.gep355, i64 16
  %wide.load358 = load <4 x i32>, ptr %next.gep355, align 4, !tbaa !505, !alias.scope !11380
  %wide.load359 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !505, !alias.scope !11380
  store <4 x i32> %wide.load358, ptr %next.gep354, align 4, !tbaa !505, !alias.scope !11379, !noalias !11380
  store <4 x i32> %wide.load359, ptr %i.fc, align 4, !tbaa !505, !alias.scope !11379, !noalias !11380
  %index.next360 = add nuw i64 %index352, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next360, %n.vec350
  br i1 %i.ff, label %middle.block361, label %vector.body351, !llvm.loop !11355

middle.block361:                                  ; preds = %vector.body351
  %cmp.n362 = icmp eq i64 %i.ep, %n.vec350
  br i1 %cmp.n362, label %._crit_edge.i134, label %.lr.ph.i129.preheader432

.lr.ph.i129.preheader432:                         ; preds = %vector.memcheck329, %.lr.ph.i129.preheader, %middle.block361
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck329 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ey, %middle.block361 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.em, %vector.memcheck329 ], [ %i.em, %.lr.ph.i129.preheader ], [ %i.ez, %middle.block361 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.eg, %vector.memcheck329 ], [ %i.eg, %.lr.ph.i129.preheader ], [ %i.fa, %middle.block361 ] ; 3 uses
  %.02131.i132.ph435 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fg = sub i64 %i.ag, %.02131.i132.ph435       ; 2 uses
  %i.fh = lshr i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1
  %xtraiter = and i64 %i.fi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader432, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.fl, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader432 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.fk, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader432 ] ; 3 uses
  %.02131.i132.prol = phi ptr [ %i.fj, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader432 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader432 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.fm = load i32, ptr %.02032.i131.prol, align 4, !tbaa !505
  store i32 %i.fm, ptr %.033.i130.prol, align 4, !tbaa !505
  %i.fn = load i32, ptr %.02131.i132.prol, align 4, !tbaa !505
  store i32 %i.fn, ptr %.02032.i131.prol, align 4, !tbaa !505
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !11356

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader432
  %.lcssa433.unr = phi ptr [ poison, %.lr.ph.i129.preheader432 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader432 ], [ %i.fl, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader432 ], [ %i.fk, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader432 ], [ %i.fj, %.lr.ph.i129.prol ]
  %i.fo = icmp ult i64 %i.fg, 12
  br i1 %i.fo, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.gg, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.gf, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %.02131.i132 = phi ptr [ %i.ge, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.fs = load i32, ptr %.02032.i131, align 4, !tbaa !505
  store i32 %i.fs, ptr %.033.i130, align 4, !tbaa !505
  %i.ft = load i32, ptr %.02131.i132, align 4, !tbaa !505
  store i32 %i.ft, ptr %.02032.i131, align 4, !tbaa !505
  %i.fu = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fx = load i32, ptr %i.fq, align 4, !tbaa !505
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !505
  %i.fy = load i32, ptr %i.fp, align 4, !tbaa !505
  store i32 %i.fy, ptr %i.fq, align 4, !tbaa !505
  %i.fz = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12
  %i.ga = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.gc = load i32, ptr %i.fv, align 4, !tbaa !505
  store i32 %i.gc, ptr %i.fw, align 4, !tbaa !505
  %i.gd = load i32, ptr %i.fu, align 4, !tbaa !505
  store i32 %i.gd, ptr %i.fv, align 4, !tbaa !505
  %i.ge = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.gh = load i32, ptr %i.ga, align 4, !tbaa !505
  store i32 %i.gh, ptr %i.gb, align 4, !tbaa !505
  %i.gi = load i32, ptr %i.fz, align 4, !tbaa !505
  store i32 %i.gi, ptr %i.ga, align 4, !tbaa !505
  %.not28.i133.3 = icmp eq ptr %i.ge, %i.bg
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !11357

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block361, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ey, %middle.block361 ], [ %.lcssa433.unr, %.lr.ph.i129.prol.loopexit ], [ %i.gg, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.gj = load i64, ptr %i.bl, align 8, !tbaa !375
  %i.gk = load i64, ptr %.0106222, align 8, !tbaa !375
  store i64 %i.gk, ptr %i.bl, align 8, !tbaa !375
  store i64 %i.gj, ptr %.0106222, align 8, !tbaa !375
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gl = icmp eq ptr %i.bl, %.0190217
  br i1 %i.gl, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gm = icmp eq ptr %.0190217, %.0106222
  %spec.select204 = select i1 %i.gm, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0190217, %bb.q ], [ %spec.select204, %bb.t ], [ %.0106222, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.d, align 8, !tbaa !516
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test12copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gn = load i64, ptr %i.bl, align 8, !tbaa !375
  %i.go = load i64, ptr %.0106222, align 8, !tbaa !375
  store i64 %i.go, ptr %i.bl, align 8, !tbaa !375
  store i64 %i.gn, ptr %.0106222, align 8, !tbaa !375
  %i.gp = icmp eq ptr %i.bl, %.0190217
  br i1 %i.gp, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gq = icmp eq ptr %.0190217, %.0106222
  %spec.select205 = select i1 %i.gq, ptr %i.bl, ptr %.0190217
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140
  %i.gr = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %i.ee, %bb.u ], [ %i.ee, %bb.w ], [ %i.ee, %bb.v ]
  %i.gs = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %i.ed, %bb.u ], [ %i.ed, %bb.w ], [ %i.ed, %bb.v ]
  %.1191 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %.0190217, %bb.u ], [ %spec.select205, %bb.w ], [ %.0106222, %bb.v ]
  %i.gt = xor i1 %i.eb, %i.ef
  %i.gu = zext i1 %i.gt to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit
  %i.gv = phi ptr [ %i.gr, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %i.gw = phi ptr [ %i.gs, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %i.gx = phi i1 [ %i.ea, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.bt, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ]
  %.2192 = phi ptr [ %.1191, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.ec, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gu, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108221, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test12copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gx, true
  %i.gy = sext i1 %not. to i64
  %.1 = add i64 %.0226, %i.gy
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0111219, i64 %2 ; 2 uses
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !516
  %i.ha = getelementptr inbounds nuw i8, ptr %.0106222, i64 8
  %i.hb = icmp ne i64 %.0104225, 0
  %.neg = sext i1 %i.hb to i64
  %i.hc = add i64 %.0104225, %.neg
  %i.hd = icmp ne i64 %i.bc, 0
  %.neg122 = sext i1 %i.hd to i64
  %i.he = add i64 %.sroa.speculated179, %.neg122
  %i.hf = add i64 %.0194216, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hf, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !11358

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hg = phi ptr [ %i.gv, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.hh = phi ptr [ %i.gw, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 5 uses
  %.0194.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0194216, %bb.g ], [ %.0194216, %bb.f ] ; 3 uses
  %.0190.lcssa.ph = phi ptr [ %.2192, %bb.x ], [ %.0190217, %bb.g ], [ %.0190217, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114218, %bb.g ], [ %.0114218, %bb.f ] ; 5 uses
  %.0111.lcssa.ph = phi ptr [ %i.gz, %bb.x ], [ %.0111219, %bb.g ], [ %.0111219, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108221, %bb.f ]
  %i.hi = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.hj = select i1 %i.hi, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.hh, %i.hg
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hk = ptrtoaddr ptr %.0114.lcssa.ph to i64
  %.0114.lcssa.ph367 = ptrtoaddr ptr %i.hh to i64 ; 2 uses
  %i.hl = ptrtoaddr ptr %i.hg to i64
  %i.hm = add i64 %i.hl, -4
  %i.hn = sub i64 %i.hm, %.0114.lcssa.ph367       ; 2 uses
  %i.ho = lshr i64 %i.hn, 2
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.hn, 44
  %i.hq = sub i64 %.0114.lcssa.ph367, %i.hk
  %diff.check368 = icmp ugt i64 %i.hq, -32
  %or.cond421 = select i1 %min.iters.check370, i1 true, i1 %diff.check368
  br i1 %or.cond421, label %.lr.ph.i.i145.preheader429, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph.i.i145.preheader
  %n.vec372 = and i64 %i.hp, 9223372036854775800  ; 3 uses
  %i.hr = shl i64 %n.vec372, 2                    ; 2 uses
  %i.hs = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hh, i64 %i.hr
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 2 uses
  %i.hu = shl i64 %index374, 2                    ; 2 uses
  %next.gep375 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hu ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.hh, i64 %i.hu ; 2 uses
  %i.hv = getelementptr i8, ptr %next.gep376, i64 16
  %wide.load377 = load <4 x i32>, ptr %next.gep376, align 4, !tbaa !505
  %wide.load378 = load <4 x i32>, ptr %i.hv, align 4, !tbaa !505
  %i.hw = getelementptr i8, ptr %next.gep375, i64 16
  store <4 x i32> %wide.load377, ptr %next.gep375, align 4, !tbaa !505
  store <4 x i32> %wide.load378, ptr %i.hw, align 4, !tbaa !505
  %index.next379 = add nuw i64 %index374, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.hx, label %middle.block380, label %vector.body373, !llvm.loop !11359

middle.block380:                                  ; preds = %vector.body373
  %cmp.n381 = icmp eq i64 %i.hp, %n.vec372
  br i1 %cmp.n381, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145.preheader429

.lr.ph.i.i145.preheader429:                       ; preds = %.lr.ph.i.i145.preheader, %middle.block380
  %.010.i.i146.ph = phi ptr [ %.0114.lcssa.ph, %.lr.ph.i.i145.preheader ], [ %i.hs, %middle.block380 ]
  %.079.i.i147.ph = phi ptr [ %i.hh, %.lr.ph.i.i145.preheader ], [ %i.ht, %middle.block380 ]
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader429, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.ia, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader429 ] ; 2 uses
  %.079.i.i147 = phi ptr [ %i.hz, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader429 ] ; 2 uses
  %i.hy = load i32, ptr %.079.i.i147, align 4, !tbaa !505
  store i32 %i.hy, ptr %.010.i.i146, align 4, !tbaa !505
  %i.hz = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  %.not.i.i148 = icmp eq ptr %i.hz, %i.hg
  br i1 %.not.i.i148, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145, !llvm.loop !11360

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150: ; preds = %.lr.ph.i.i145, %middle.block380, %bb.a, %.thread
  %.0108.lcssa286 = phi ptr [ %1, %bb.a ], [ %i.hj, %.thread ], [ %i.hj, %middle.block380 ], [ %i.hj, %.lr.ph.i.i145 ]
  %.0111.lcssa285 = phi ptr [ %i.h, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block380 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0190.lcssa284 = phi ptr [ %i.g, %bb.a ], [ %.0190.lcssa.ph, %.thread ], [ %.0190.lcssa.ph, %middle.block380 ], [ %.0190.lcssa.ph, %.lr.ph.i.i145 ]
  %.0194.lcssa283 = phi i64 [ 0, %bb.a ], [ %.0194.lcssa.ph, %.thread ], [ %.0194.lcssa.ph, %middle.block380 ], [ %.0194.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx209 = shl i64 %6, 2                        ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx209 ; 2 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  %i.ic = add i64 %.idx209, -4                    ; 2 uses
  %i.id = lshr exact i64 %i.ic, 2
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.ic, 124
  br i1 %min.iters.check387, label %.lr.ph.i.i152.preheader428, label %vector.memcheck384

vector.memcheck384:                               ; preds = %.lr.ph.i.i152.preheader
  %i.if = mul i64 %2, %i.f
  %i.ig = add i64 %i.if, %3
  %i.ih = shl i64 %i.ig, 2
  %i.ii = add i64 %i.ih, %i.b
  %i.ij = sub i64 %i.ii, %i.a
  %diff.check385 = icmp ugt i64 %i.ij, -32
  br i1 %diff.check385, label %.lr.ph.i.i152.preheader428, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck384
  %n.vec389 = and i64 %i.ie, 9223372036854775800  ; 3 uses
  %i.ik = shl i64 %n.vec389, 2                    ; 2 uses
  %i.il = getelementptr i8, ptr %7, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.j, i64 %i.ik
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next396, %vector.body390 ] ; 2 uses
  %i.in = shl i64 %index391, 2                    ; 2 uses
  %next.gep392 = getelementptr i8, ptr %7, i64 %i.in ; 2 uses
  %next.gep393 = getelementptr i8, ptr %i.j, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep393, i64 16
  %wide.load394 = load <4 x i32>, ptr %next.gep393, align 4, !tbaa !505
  %wide.load395 = load <4 x i32>, ptr %i.io, align 4, !tbaa !505
  %i.ip = getelementptr i8, ptr %next.gep392, i64 16
  store <4 x i32> %wide.load394, ptr %next.gep392, align 4, !tbaa !505
  store <4 x i32> %wide.load395, ptr %i.ip, align 4, !tbaa !505
  %index.next396 = add nuw i64 %index391, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next396, %n.vec389
  br i1 %i.iq, label %middle.block397, label %vector.body390, !llvm.loop !11361

middle.block397:                                  ; preds = %vector.body390
  %cmp.n398 = icmp eq i64 %i.ie, %n.vec389
  br i1 %cmp.n398, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152.preheader428

.lr.ph.i.i152.preheader428:                       ; preds = %vector.memcheck384, %.lr.ph.i.i152.preheader, %middle.block397
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck384 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.il, %middle.block397 ]
  %.079.i.i154.ph = phi ptr [ %i.j, %vector.memcheck384 ], [ %i.j, %.lr.ph.i.i152.preheader ], [ %i.im, %middle.block397 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader428, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.it, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader428 ] ; 2 uses
  %.079.i.i154 = phi ptr [ %i.is, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader428 ] ; 2 uses
  %i.ir = load i32, ptr %.079.i.i154, align 4, !tbaa !505
  store i32 %i.ir, ptr %.010.i.i153, align 4, !tbaa !505
  %i.is = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  %.not.i.i155 = icmp eq ptr %i.is, %i.ib
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152, !llvm.loop !11362

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157: ; preds = %.lr.ph.i.i152, %middle.block397, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  store ptr %7, ptr %i.c, align 8, !tbaa !516
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.iu, ptr %i.d, align 8, !tbaa !516
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.iu, ptr %10, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %4
  store ptr %i.iw, ptr %12, align 8, !tbaa !575, !alias.scope !11383
  store ptr %.0190.lcssa284, ptr %13, align 8, !tbaa !575, !alias.scope !11384
  store ptr %i.j, ptr %14, align 8, !tbaa !630, !alias.scope !11385
  store ptr %7, ptr %15, align 8, !tbaa !630, !alias.scope !11386
  store ptr %i.ib, ptr %16, align 8, !tbaa !630, !alias.scope !11387
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.220") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0194.lcssa283, i64 noundef 0, i64 noundef %.0194.lcssa283, i1 noundef zeroext true)
  %i.ix = load ptr, ptr %11, align 8, !tbaa !630  ; 2 uses
  %i.iy = ptrtoaddr ptr %i.ix to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.iz = load ptr, ptr %10, align 8, !tbaa !630  ; 2 uses
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !516 ; 4 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64
  %.not27.i = icmp eq ptr %i.ja, %i.iz
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, %bb.y
  %indvar403 = phi i64 [ %indvar.next404, %bb.y ], [ 0, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 2 uses
  %.030.i = phi ptr [ %.030..i, %bb.y ], [ %i.iz, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 7 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.y ], [ %.0111.lcssa285, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.kc, %bb.y ], [ %i.ix, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 5 uses
  %i.jc = icmp eq ptr %.0108.lcssa286, %.01929.i
  br i1 %i.jc, label %.lr.ph.i.i.i.preheader, label %bb.y

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i158
  %.030.i402.le = ptrtoaddr ptr %.030.i to i64    ; 2 uses
  %i.jd = add i64 %.030.i402.le, -4
  %i.je = sub i64 %i.jd, %i.jb                    ; 2 uses
  %i.jf = lshr i64 %i.je, 2
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check407 = icmp ult i64 %i.je, 76
  br i1 %min.iters.check407, label %.lr.ph.i.i.i.preheader422, label %vector.memcheck401

vector.memcheck401:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.jh = shl i64 %indvar403, 2
  %i.ji = sub i64 %i.jh, %i.iy
  %i.jj = add i64 %i.ji, %.030.i402.le
  %i.jk = add i64 %i.jj, -1
  %diff.check405 = icmp ult i64 %i.jk, 31
  br i1 %diff.check405, label %.lr.ph.i.i.i.preheader422, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck401
  %n.vec409 = and i64 %i.jg, 9223372036854775800  ; 3 uses
  %i.jl = mul i64 %n.vec409, -4                   ; 2 uses
  %i.jm = getelementptr i8, ptr %.02128.i, i64 %i.jl
  %i.jn = getelementptr i8, ptr %.030.i, i64 %i.jl
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.jo = mul i64 %index411, -4                   ; 2 uses
  %next.gep412 = getelementptr i8, ptr %.02128.i, i64 %i.jo ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.030.i, i64 %i.jo ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %next.gep413, i64 -16
  %i.jq = getelementptr inbounds i8, ptr %next.gep413, i64 -32
  %wide.load414 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !505
  %wide.load415 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !505
  %i.jr = getelementptr inbounds i8, ptr %next.gep412, i64 -16
  %i.js = getelementptr inbounds i8, ptr %next.gep412, i64 -32
  store <4 x i32> %wide.load414, ptr %i.jr, align 4, !tbaa !505
  store <4 x i32> %wide.load415, ptr %i.js, align 4, !tbaa !505
  %index.next416 = add nuw i64 %index411, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.jt, label %middle.block417, label %vector.body410, !llvm.loop !11373

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.jg, %n.vec409
  br i1 %cmp.n418, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i.preheader422

.lr.ph.i.i.i.preheader422:                        ; preds = %vector.memcheck401, %.lr.ph.i.i.i.preheader, %middle.block417
  %.010.i.i.i.ph = phi ptr [ %.02128.i, %vector.memcheck401 ], [ %.02128.i, %.lr.ph.i.i.i.preheader ], [ %i.jm, %middle.block417 ]
  %.079.i.i.i.ph = phi ptr [ %.030.i, %vector.memcheck401 ], [ %.030.i, %.lr.ph.i.i.i.preheader ], [ %i.jn, %middle.block417 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader422, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jv, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader422 ]
  %.079.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader422 ]
  %i.ju = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 3 uses
  %i.jv = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !505
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEmNS0_13adaptive_xbufIS5_S6_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_:bb.a
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp ult i64 %i.ba, 4
  br i1 %i.bj, label %.critedge, label %.preheader87

.preheader87:                                     ; preds = %bb.o, %.preheader87
  %storemerge83 = phi i64 [ %i.bl, %.preheader87 ], [ %i.bc, %bb.o ] ; 6 uses
  %i.bk = add i64 %storemerge83, -1
  %i.bl = and i64 %i.bk, %storemerge83            ; 2 uses
  %.not84 = icmp eq i64 %i.bl, 0
  br i1 %.not84, label %.preheader, label %.preheader87, !llvm.loop !11552

.preheader:                                       ; preds = %.preheader87
  store i64 %storemerge83, ptr %2, align 8, !tbaa !375
  %i.bm = icmp ugt i64 %storemerge83, %i.ba
  br i1 %i.bm, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bn = phi i64 [ %i.bo, %.lr.ph ], [ %storemerge83, %.preheader ]
  %i.bo = lshr i64 %i.bn, 1                       ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, %i.ba
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !11553

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.bo, ptr %2, align 8, !tbaa !375
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i64 [ %i.bo, %._crit_edge ], [ %storemerge83, %.preheader ]
  %i.bq = icmp ult i64 %.lcssa, 16
  %i.br = select i1 %i.bq, ptr %2, ptr @_ZN5boost7movelib15detail_adaptiveL34AdaptiveSortInsertionSortThresholdE
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !375
  store i64 %i.bs, ptr %4, align 8, !tbaa !375
  store i64 0, ptr %3, align 8, !tbaa !375
  %i.bt = load i64, ptr %2, align 8, !tbaa !375
  store i64 %i.bt, ptr %5, align 8, !tbaa !375
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.i, %bb.j, %bb.n, %bb.p, %bb.l
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.j ], [ false, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3 ; 9 uses
  %i.c = sub i64 %1, %3                           ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !626  ; 2 uses
  %.sroa.speculated60 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.e) ; 16 uses
  %i.f = icmp ult i64 %.sroa.speculated60, %2
  %.not83 = icmp eq i64 %.sroa.speculated60, 0
  %.not = or i1 %i.f, %.not83
  br i1 %.not, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %.sroa.speculated60
  %i.h = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !624  ; 8 uses
  %.not.i = icmp ugt i64 %.sroa.speculated60, %i.j
  %i.k = load ptr, ptr %4, align 8, !tbaa !625    ; 15 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %.sroa.speculated60, 2    ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i
  %i.n = add i64 %.idx.i, -4                      ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.q = shl i64 %3, 2
  %i.r = add i64 %i.q, %i.a
  %.neg = sub i64 %.idx.i, %i.r
  %i.s = add i64 %.neg, %i.l
  %i.t = add i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u
  %i.w = getelementptr i8, ptr %i.h, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.x ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep94, align 4, !tbaa !505
  %wide.load95 = load <4 x i32>, ptr %i.y, align 4, !tbaa !505
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !505
  store <4 x i32> %wide.load95, ptr %i.z, align 4, !tbaa !505
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !11554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.c, %middle.block
  %.010.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %bb.c ], [ %i.v, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %bb.c ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ab = load i32, ptr %.079.i.i, align 4, !tbaa !505
  store i32 %i.ab, ptr %.010.i.i, align 4, !tbaa !505
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ac, %i.m
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !11555

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.not1730.i = icmp eq i64 %i.j, %.sroa.speculated60
  br i1 %.not1730.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.ae = sub i64 %i.j, %.sroa.speculated60
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.031.i.prol = phi i64 [ %i.af, %.lr.ph.i.prol ], [ %i.j, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.af = add i64 %.031.i.prol, -1                ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.af
  store i32 -2147483648, ptr %i.ag, align 4, !tbaa !505
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !11556

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.031.i.unr = phi i64 [ %i.j, %.lr.ph.i.preheader ], [ %i.af, %.lr.ph.i.prol ]
  %i.aj = sub i64 %.sroa.speculated60, %i.j
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.031.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %.031.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.al = getelementptr [4 x i8], ptr %i.k, i64 %.031.i
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  store i32 -2147483648, ptr %i.am, align 4, !tbaa !505
  %i.an = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ap = getelementptr [4 x i8], ptr %i.k, i64 %.031.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !505
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %.031.i
  %i.au = getelementptr i8, ptr %i.at, i64 -12
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !505
  %i.av = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ax = add i64 %.031.i, -4                     ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ax
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !505
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %.not17.i.3 = icmp eq i64 %i.ax, %.sroa.speculated60
  br i1 %.not17.i.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i, !llvm.loop !188

bb.d:                                             ; preds = %bb.b
  %.idx27.i = shl i64 %i.j, 2                     ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %i.h, i64 %.idx27.i ; 2 uses
  %.not8.i18.i = icmp eq i64 %i.j, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.d
  %i.bc = add i64 %.idx27.i, -4                   ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check100 = icmp ult i64 %i.bc, 92
  br i1 %min.iters.check100, label %.lr.ph.i19.i.preheader152, label %vector.memcheck97

vector.memcheck97:                                ; preds = %.lr.ph.i19.i.preheader
  %i.bf = shl i64 %3, 2
  %5 = shl i64 %.sroa.speculated60, 2
  %6 = add i64 %i.bf, %i.a
  %.neg148 = sub i64 %5, %6
  %i.bg = add i64 %.neg148, %i.l
  %i.bh = add i64 %i.bg, -1
  %diff.check98 = icmp ult i64 %i.bh, 31
  br i1 %diff.check98, label %.lr.ph.i19.i.preheader152, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck97
  %n.vec102 = and i64 %i.be, 9223372036854775800  ; 3 uses
  %i.bi = shl i64 %n.vec102, 2                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.k, i64 %i.bi   ; 2 uses
  %i.bk = getelementptr i8, ptr %i.h, i64 %i.bi
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.bl = shl i64 %index104, 2                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.k, i64 %i.bl ; 2 uses
  %next.gep106 = getelementptr i8, ptr %i.h, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep106, i64 16
  %wide.load107 = load <4 x i32>, ptr %next.gep106, align 4, !tbaa !505
  %wide.load108 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !505
  %i.bn = getelementptr i8, ptr %next.gep105, i64 16
  store <4 x i32> %wide.load107, ptr %next.gep105, align 4, !tbaa !505
  store <4 x i32> %wide.load108, ptr %i.bn, align 4, !tbaa !505
  %index.next109 = add nuw i64 %index104, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.bo, label %middle.block110, label %vector.body103, !llvm.loop !11557

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %i.be, %n.vec102
  br i1 %cmp.n111, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader152

.lr.ph.i19.i.preheader152:                        ; preds = %vector.memcheck97, %.lr.ph.i19.i.preheader, %middle.block110
  %.010.i20.i.ph = phi ptr [ %i.k, %vector.memcheck97 ], [ %i.k, %.lr.ph.i19.i.preheader ], [ %i.bj, %middle.block110 ]
  %.079.i21.i.ph = phi ptr [ %i.h, %vector.memcheck97 ], [ %i.h, %.lr.ph.i19.i.preheader ], [ %i.bk, %middle.block110 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader152, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.br, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader152 ] ; 2 uses
  %.079.i21.i = phi ptr [ %i.bq, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader152 ] ; 2 uses
  %i.bp = load i32, ptr %.079.i21.i, align 4, !tbaa !505
  store i32 %i.bp, ptr %.010.i20.i, align 4, !tbaa !505
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bq, %i.bb
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !11558

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block110, %bb.d
  %.0.lcssa.i23.i = phi ptr [ %i.k, %bb.d ], [ %i.bj, %middle.block110 ], [ %i.br, %.lr.ph.i19.i ]
  %.idx28.i = shl nsw i64 %.sroa.speculated60, 2  ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.h, i64 %.idx28.i
  %.not10.i.i = icmp eq i64 %.idx27.i, %.idx28.i
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i, %.lr.ph.i25.i
  %.012.i.i = phi ptr [ %i.bw, %.lr.ph.i25.i ], [ %i.bb, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bx, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %i.bt = load i32, ptr %.012.i.i, align 4, !tbaa !505
  store i32 %i.bt, ptr %.0911.i.i, align 4, !tbaa !505
  %i.bu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i26.i = icmp eq ptr %i.bw, %i.bs
  br i1 %.not.i26.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, label %.lr.ph.i25.i, !llvm.loop !189

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i
  store i64 %.sroa.speculated60, ptr %i.i, align 8, !tbaa !624
  %i.by = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_T0_T1_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.bz = sub i64 0, %i.by
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bz
  %i.cb = sub i64 %.sroa.speculated60, %i.by
  %i.cc = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.ca, i64 noundef %i.c, i64 noundef %i.by, i64 noundef %3, i64 noundef %i.cb) ; 8 uses
  %.not46.not = icmp ugt i64 %3, %i.e
  br i1 %.not46.not, label %bb.e, label %.lr.ph.i50.preheader

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit
  %i.cd = load ptr, ptr %4, align 8, !tbaa !625   ; 2 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.sroa.speculated60 ; 2 uses
  %i.cg = sub i64 0, %i.cc                        ; 3 uses
  %.not8.i = icmp eq i64 %i.cc, 0
  br i1 %.not8.i, label %.loopexit.thread, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %bb.e
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.c ; 4 uses
  %.idx = shl nsw i64 %i.cg, 2
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %.idx ; 4 uses
  %i.ck = add i64 %i.cc, 4611686018427387903
  %i.cl = and i64 %i.ck, 4611686018427387903      ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check134 = icmp samesign ult i64 %i.cl, 23
  br i1 %min.iters.check134, label %.lr.ph.i47.preheader150, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.i47.preheader
  %i.cn = shl i64 %1, 2
  %7 = shl i64 %.sroa.speculated60, 2
  %8 = add i64 %i.cn, %i.a
  %i.co = add i64 %7, %i.ce
  %i.cp = sub i64 %i.co, %8
  %diff.check132 = icmp ugt i64 %i.cp, -32
  br i1 %diff.check132, label %.lr.ph.i47.preheader150, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck131
  %n.vec136 = and i64 %i.cm, 9223372036854775800  ; 3 uses
  %i.cq = shl i64 %n.vec136, 2                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cj, i64 %i.cq
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %i.ct = shl i64 %index138, 2                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.ci, i64 %i.ct ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.cj, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load141 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !505
  %wide.load142 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !505
  %i.cv = getelementptr i8, ptr %next.gep139, i64 16
  store <4 x i32> %wide.load141, ptr %next.gep139, align 4, !tbaa !505
  store <4 x i32> %wide.load142, ptr %i.cv, align 4, !tbaa !505
  %index.next143 = add nuw i64 %index138, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.cw, label %middle.block144, label %vector.body137, !llvm.loop !11559

middle.block144:                                  ; preds = %vector.body137
  %cmp.n145 = icmp eq i64 %i.cm, %n.vec136
  br i1 %cmp.n145, label %.loopexit.thread, label %.lr.ph.i47.preheader150

.lr.ph.i47.preheader150:                          ; preds = %vector.memcheck131, %.lr.ph.i47.preheader, %middle.block144
  %.010.i.ph = phi ptr [ %i.ci, %vector.memcheck131 ], [ %i.ci, %.lr.ph.i47.preheader ], [ %i.cr, %middle.block144 ]
  %.079.i.ph = phi ptr [ %i.cj, %vector.memcheck131 ], [ %i.cj, %.lr.ph.i47.preheader ], [ %i.cs, %middle.block144 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader150, %.lr.ph.i47
  %.010.i = phi ptr [ %i.cz, %.lr.ph.i47 ], [ %.010.i.ph, %.lr.ph.i47.preheader150 ] ; 2 uses
  %.079.i = phi ptr [ %i.cy, %.lr.ph.i47 ], [ %.079.i.ph, %.lr.ph.i47.preheader150 ] ; 2 uses
  %i.cx = load i32, ptr %.079.i, align 4, !tbaa !505
  store i32 %i.cx, ptr %.010.i, align 4, !tbaa !505
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i48 = icmp eq ptr %i.cy, %i.cf
  br i1 %.not.i48, label %.loopexit.thread, label %.lr.ph.i47, !llvm.loop !11560

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %bb.a
  %i.da = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.db = sub i64 0, %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.de = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test12copyable_intEEET_S6_S6_S6_(ptr noundef %i.dc, ptr noundef %i.b, ptr noundef %i.dd) ; 0 uses
  %i.df = sub i64 %3, %i.da
  %i.dg = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.dc, i64 noundef %i.c, i64 noundef %i.da, i64 noundef %3, i64 noundef %i.df) ; 0 uses
  br label %bb.f

.loopexit.thread:                                 ; preds = %.lr.ph.i47, %middle.block144, %bb.e
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cg
  %i.di = sub i64 %3, %i.cc
  %i.dj = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef nonnull %i.dh, i64 noundef %i.c, i64 noundef %i.cc, i64 noundef %3, i64 noundef %i.di) ; 0 uses
  br label %bb.f

.lr.ph.i50.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit
  %.pre = sub i64 0, %i.cc
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  %i.dl = sub i64 %3, %i.cc
  %i.dm = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.dk, i64 noundef %i.c, i64 noundef %i.cc, i64 noundef %3, i64 noundef %i.dl) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  %i.dn = load ptr, ptr %4, align 8, !tbaa !625   ; 5 uses
  %.idx85 = shl nuw nsw i64 %.sroa.speculated60, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx85
  %i.dp = add nsw i64 %.idx85, -4                 ; 2 uses
  %i.dq = lshr exact i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %i.dp, 44
  %i.ds = ptrtoaddr ptr %i.dn to i64
  %i.dt = sub i64 %i.ds, %i.a
  %diff.check115 = icmp ugt i64 %i.dt, -32
  %or.cond = select i1 %min.iters.check117, i1 true, i1 %diff.check115
  br i1 %or.cond, label %.lr.ph.i50.preheader151, label %vector.ph118

vector.ph118:                                     ; preds = %.lr.ph.i50.preheader
  %n.vec119 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.du = shl i64 %n.vec119, 2                    ; 2 uses
  %i.dv = getelementptr i8, ptr %0, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dn, i64 %i.du
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %i.dx = shl i64 %index121, 2                    ; 2 uses
  %next.gep122 = getelementptr i8, ptr %0, i64 %i.dx ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.dn, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load124 = load <4 x i32>, ptr %next.gep123, align 4, !tbaa !505
  %wide.load125 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !505
  %i.dz = getelementptr i8, ptr %next.gep122, i64 16
  store <4 x i32> %wide.load124, ptr %next.gep122, align 4, !tbaa !505
  store <4 x i32> %wide.load125, ptr %i.dz, align 4, !tbaa !505
  %index.next126 = add nuw i64 %index121, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.ea, label %middle.block127, label %vector.body120, !llvm.loop !11561

middle.block127:                                  ; preds = %vector.body120
  %cmp.n128 = icmp eq i64 %i.dr, %n.vec119
  br i1 %cmp.n128, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50.preheader151

.lr.ph.i50.preheader151:                          ; preds = %.lr.ph.i50.preheader, %middle.block127
  %.010.i51.ph = phi ptr [ %0, %.lr.ph.i50.preheader ], [ %i.dv, %middle.block127 ]
  %.079.i52.ph = phi ptr [ %i.dn, %.lr.ph.i50.preheader ], [ %i.dw, %middle.block127 ]
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader151, %.lr.ph.i50
  %.010.i51 = phi ptr [ %i.ed, %.lr.ph.i50 ], [ %.010.i51.ph, %.lr.ph.i50.preheader151 ] ; 2 uses
  %.079.i52 = phi ptr [ %i.ec, %.lr.ph.i50 ], [ %.079.i52.ph, %.lr.ph.i50.preheader151 ] ; 2 uses
  %i.eb = load i32, ptr %.079.i52, align 4, !tbaa !505
  store i32 %i.eb, ptr %.010.i51, align 4, !tbaa !505
  %i.ec = getelementptr inbounds nuw i8, ptr %.079.i52, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i51, i64 4
  %.not.i53 = icmp eq ptr %i.ec, %i.do
  br i1 %.not.i53, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50, !llvm.loop !11562

bb.f:                                             ; preds = %.loopexit.thread, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  br label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit55

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit55: ; preds = %.lr.ph.i50, %middle.block127, %bb.f
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !624 ; 4 uses
  %.not.i56 = icmp eq i64 %i.ef, 0
  br i1 %.not.i56, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit55
  %i.eg = load ptr, ptr %4, align 8, !tbaa !625   ; 5 uses
  %xtraiter154 = and i64 %i.ef, 3                 ; 3 uses
  %i.eh = icmp ult i64 %i.ef, 4
  br i1 %i.eh, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.ef, -4
  br label %bb.h

.unr-lcssa:                                       ; preds = %bb.h
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.fb, %.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter154, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.el, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.ei, align 4, !tbaa !505
  %i.ej = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ek = add i32 %i.ej, -1
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.el = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter154
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !11563

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  store i64 0, ptr %i.ee, align 8, !tbaa !624
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE5clearEv.exit

bb.h:                                             ; preds = %bb.h, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.fb, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.h ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.07.i.i
  store i32 -2147483648, ptr %i.em, align 4, !tbaa !505
  %i.en = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.eo = add i32 %i.en, -1
  store i32 %i.eo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.07.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 -2147483648, ptr %i.eq, align 4, !tbaa !505
  %i.er = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.07.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 -2147483648, ptr %i.eu, align 4, !tbaa !505
  %i.ev = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ew = add i32 %i.ev, -1
  store i32 %i.ew, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.07.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 -2147483648, ptr %i.ey, align 4, !tbaa !505
  %i.ez = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fa = add i32 %i.ez, -1
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fb = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.h, !llvm.loop !182

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit55, %.epilog-lcssa
  %i.fc = shl i64 %3, 1
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_:bb.a

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %i.eu, %n.vec277
  br i1 %cmp.n286, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i162.preheader366

.lr.ph.i.i162.preheader366:                       ; preds = %.lr.ph.i.i162.preheader, %middle.block285
  %.010.i.i163.ph = phi ptr [ %i.ei, %.lr.ph.i.i162.preheader ], [ %i.ex, %middle.block285 ]
  %.079.i.i164.ph = phi ptr [ %i.ep, %.lr.ph.i.i162.preheader ], [ %i.ey, %middle.block285 ]
  br label %.lr.ph.i.i162

.lr.ph.i.i162:                                    ; preds = %.lr.ph.i.i162.preheader366, %.lr.ph.i.i162
  %.010.i.i163 = phi ptr [ %i.fg, %.lr.ph.i.i162 ], [ %.010.i.i163.ph, %.lr.ph.i.i162.preheader366 ]
  %.079.i.i164 = phi ptr [ %i.ff, %.lr.ph.i.i162 ], [ %.079.i.i164.ph, %.lr.ph.i.i162.preheader366 ]
  %i.ff = getelementptr inbounds i8, ptr %.079.i.i164, i64 -4 ; 3 uses
  %i.fg = getelementptr inbounds i8, ptr %.010.i.i163, i64 -4 ; 2 uses
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !505
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !505
  %.not.i.i165 = icmp eq ptr %i.eo, %i.ff
  br i1 %.not.i.i165, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i162, !llvm.loop !11572

.lr.ph.preheader.i.i153:                          ; preds = %bb.m
  %.pre.i.i155 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fi = add i32 %.pre.i.i155, 1
  br label %.lr.ph.i10.i156

.lr.ph.i10.i156:                                  ; preds = %.lr.ph.i10.i156, %.lr.ph.preheader.i.i153
  %i.fj = phi i32 [ %i.fo, %.lr.ph.i10.i156 ], [ %i.fi, %.lr.ph.preheader.i.i153 ]
  %.08.i.i157 = phi ptr [ %i.fl, %.lr.ph.i10.i156 ], [ %i.ei, %.lr.ph.preheader.i.i153 ]
  %.057.i.i158 = phi ptr [ %i.fk, %.lr.ph.i10.i156 ], [ %i.ep, %.lr.ph.preheader.i.i153 ]
  %i.fk = getelementptr inbounds i8, ptr %.057.i.i158, i64 -4 ; 4 uses
  %i.fl = getelementptr inbounds i8, ptr %.08.i.i157, i64 -4 ; 3 uses
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !505
  store i32 %i.fj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !505
  store i32 %i.fn, ptr %i.fk, align 4, !tbaa !505
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !505
  %i.fo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.fp = add i32 %i.fo, -1
  store i32 %i.fp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %.not.i11.i159 = icmp eq ptr %i.eo, %i.fk
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i156, !llvm.loop !194

bb.n:                                             ; preds = %bb.l
  %i.fq = icmp ult i64 %.0133205, %spec.select15.i
  br i1 %i.fq, label %bb.o, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.o:                                             ; preds = %bb.n
  %i.fr = sub nuw i64 %spec.select15.i, %.0133205
  %.idx14.i = shl nuw nsw i64 %i.fr, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx14.i ; 2 uses
  br i1 %or.cond191, label %.lr.ph.i.i171.preheader, label %.lr.ph.preheader.i.i168

.lr.ph.i.i171.preheader:                          ; preds = %bb.o
  %i.ft = add i64 %i.cn, %.0133205
  %i.fu = add i64 %i.ft, %i.c
  %i.fv = shl i64 %i.fu, 2
  %i.fw = sub i64 %i.by, %i.fv                    ; 2 uses
  %i.fx = lshr exact i64 %i.fw, 2
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check292 = icmp ult i64 %i.fw, 28
  %i.fz = shl i64 %.1.i, 2
  %diff.check290 = icmp ugt i64 %i.fz, -32
  %or.cond361 = select i1 %min.iters.check292, i1 true, i1 %diff.check290
  br i1 %or.cond361, label %.lr.ph.i.i171.preheader368, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph.i.i171.preheader
  %n.vec294 = and i64 %i.fy, 9223372036854775800  ; 3 uses
  %i.ga = shl i64 %n.vec294, 2                    ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ek, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.ei, i64 %i.ga
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.gd = shl i64 %index296, 2                    ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.ek, i64 %i.gd ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.ei, i64 %i.gd ; 2 uses
  %i.ge = getelementptr i8, ptr %next.gep298, i64 16
  %wide.load299 = load <4 x i32>, ptr %next.gep298, align 4, !tbaa !505
  %wide.load300 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !505
  %i.gf = getelementptr i8, ptr %next.gep297, i64 16
  store <4 x i32> %wide.load299, ptr %next.gep297, align 4, !tbaa !505
  store <4 x i32> %wide.load300, ptr %i.gf, align 4, !tbaa !505
  %index.next301 = add nuw i64 %index296, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.gg, label %middle.block302, label %vector.body295, !llvm.loop !11573

middle.block302:                                  ; preds = %vector.body295
  %cmp.n303 = icmp eq i64 %i.fy, %n.vec294
  br i1 %cmp.n303, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i171.preheader368

.lr.ph.i.i171.preheader368:                       ; preds = %.lr.ph.i.i171.preheader, %middle.block302
  %.010.i.i172.ph = phi ptr [ %i.ek, %.lr.ph.i.i171.preheader ], [ %i.gb, %middle.block302 ]
  %.079.i.i173.ph = phi ptr [ %i.ei, %.lr.ph.i.i171.preheader ], [ %i.gc, %middle.block302 ]
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.preheader368, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.gj, %.lr.ph.i.i171 ], [ %.010.i.i172.ph, %.lr.ph.i.i171.preheader368 ] ; 2 uses
  %.079.i.i173 = phi ptr [ %i.gi, %.lr.ph.i.i171 ], [ %.079.i.i173.ph, %.lr.ph.i.i171.preheader368 ] ; 2 uses
  %i.gh = load i32, ptr %.079.i.i173, align 4, !tbaa !505
  store i32 %i.gh, ptr %.010.i.i172, align 4, !tbaa !505
  %i.gi = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 4
  %.not.i.i174 = icmp eq ptr %i.gi, %i.fs
  br i1 %.not.i.i174, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i171, !llvm.loop !11574

.lr.ph.preheader.i.i168:                          ; preds = %bb.o
  %.pre.i.i169 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gk = add i32 %.pre.i.i169, 1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i168
  %i.gl = phi i32 [ %i.go, %.lr.ph.i9.i ], [ %i.gk, %.lr.ph.preheader.i.i168 ]
  %.010.i10.i = phi ptr [ %i.gr, %.lr.ph.i9.i ], [ %i.ek, %.lr.ph.preheader.i.i168 ] ; 3 uses
  %.079.i11.i = phi ptr [ %i.gq, %.lr.ph.i9.i ], [ %i.ei, %.lr.ph.preheader.i.i168 ] ; 3 uses
  %i.gm = load i32, ptr %.079.i11.i, align 4, !tbaa !505
  store i32 %i.gl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gn = load i32, ptr %.010.i10.i, align 4, !tbaa !505
  store i32 %i.gn, ptr %.079.i11.i, align 4, !tbaa !505
  store i32 %i.gm, ptr %.010.i10.i, align 4, !tbaa !505
  %i.go = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.gp = add i32 %i.go, -1
  store i32 %i.gp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gq = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4
  %.not.i12.i = icmp eq ptr %i.gq, %i.fs
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i9.i, !llvm.loop !192

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i148, %.lr.ph.i9.i, %.lr.ph.i.i171, %.lr.ph.i10.i156, %.lr.ph.i.i162, %middle.block319, %middle.block302, %middle.block285, %bb.k, %bb.j, %bb.n, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.cd, 0
  br i1 %.not140, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.gs = udiv i64 %i.ce, %.1.i
  %i.gt = icmp ugt i64 %i.gs, 256
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.cl
  %i.gu = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.gu
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.gv, i64 noundef %i.e, i64 noundef %.0209, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond191, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cl)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.cl
  %i.gw = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.gw
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.b, ptr noundef %i.gx, i64 noundef %i.e, i64 noundef %.0209, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond191, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.t

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test12copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.gy = load i64, ptr %i.bw, align 8, !tbaa !624
  %i.gz = load ptr, ptr %6, align 8, !tbaa !625
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = add i64 %i.hb, 7
  %i.hd = and i64 %i.hc, -8
  %i.he = inttoptr i64 %i.hd to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.cl
  %i.hf = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.hf
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %i.he, ptr noundef %i.hg, i64 noundef %i.e, i64 noundef %.0209, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond191, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.cl)
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %i.hh = add i64 %.0130208, 1
  %i.hi = icmp ugt i64 %i.e, %i.ce
  br i1 %i.hi, label %bb.e, label %._crit_edge, !llvm.loop !11575

bb.u:                                             ; preds = %._crit_edge
  %i.hj = load ptr, ptr %6, align 8, !tbaa !625   ; 9 uses
  %i.hk = ptrtoaddr ptr %i.hj to i64              ; 2 uses
  %i.hl = load i64, ptr %5, align 8, !tbaa !375   ; 2 uses
  %.idx195 = shl i64 %i.hl, 2                     ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx195 ; 2 uses
  %.not8.i = icmp eq i64 %i.hl, 0                 ; 2 uses
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i175.preheader

.lr.ph.i175.preheader:                            ; preds = %bb.v
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.ho = add i64 %.idx195, -4                    ; 2 uses
  %i.hp = lshr exact i64 %i.ho, 2
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %min.iters.check343 = icmp ult i64 %i.ho, 92
  br i1 %min.iters.check343, label %.lr.ph.i175.preheader363, label %vector.memcheck340

vector.memcheck340:                               ; preds = %.lr.ph.i175.preheader
  %i.hr = shl i64 %3, 2
  %7 = shl i64 %i.c, 2
  %8 = add i64 %i.hr, %i.a
  %i.hs = add i64 %7, %i.hk
  %i.ht = sub i64 %i.hs, %8
  %diff.check341 = icmp ugt i64 %i.ht, -32
  br i1 %diff.check341, label %.lr.ph.i175.preheader363, label %vector.ph344

vector.ph344:                                     ; preds = %vector.memcheck340
  %n.vec345 = and i64 %i.hq, 9223372036854775800  ; 3 uses
  %i.hu = shl i64 %n.vec345, 2                    ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hn, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hj, i64 %i.hu
  br label %vector.body346

vector.body346:                                   ; preds = %vector.body346, %vector.ph344
  %index347 = phi i64 [ 0, %vector.ph344 ], [ %index.next352, %vector.body346 ] ; 2 uses
  %i.hx = shl i64 %index347, 2                    ; 2 uses
  %next.gep348 = getelementptr i8, ptr %i.hn, i64 %i.hx ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.hj, i64 %i.hx ; 2 uses
  %i.hy = getelementptr i8, ptr %next.gep349, i64 16
  %wide.load350 = load <4 x i32>, ptr %next.gep349, align 4, !tbaa !505
  %wide.load351 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !505
  %i.hz = getelementptr i8, ptr %next.gep348, i64 16
  store <4 x i32> %wide.load350, ptr %next.gep348, align 4, !tbaa !505
  store <4 x i32> %wide.load351, ptr %i.hz, align 4, !tbaa !505
  %index.next352 = add nuw i64 %index347, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next352, %n.vec345
  br i1 %i.ia, label %middle.block353, label %vector.body346, !llvm.loop !11576

middle.block353:                                  ; preds = %vector.body346
  %cmp.n354 = icmp eq i64 %i.hq, %n.vec345
  br i1 %cmp.n354, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i175.preheader363

.lr.ph.i175.preheader363:                         ; preds = %vector.memcheck340, %.lr.ph.i175.preheader, %middle.block353
  %.010.i.ph = phi ptr [ %i.hn, %vector.memcheck340 ], [ %i.hn, %.lr.ph.i175.preheader ], [ %i.hv, %middle.block353 ]
  %.079.i.ph = phi ptr [ %i.hj, %vector.memcheck340 ], [ %i.hj, %.lr.ph.i175.preheader ], [ %i.hw, %middle.block353 ]
  br label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %.lr.ph.i175.preheader363, %.lr.ph.i175
  %.010.i = phi ptr [ %i.id, %.lr.ph.i175 ], [ %.010.i.ph, %.lr.ph.i175.preheader363 ] ; 2 uses
  %.079.i = phi ptr [ %i.ic, %.lr.ph.i175 ], [ %.079.i.ph, %.lr.ph.i175.preheader363 ] ; 2 uses
  %i.ib = load i32, ptr %.079.i, align 4, !tbaa !505
  store i32 %i.ib, ptr %.010.i, align 4, !tbaa !505
  %i.ic = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i176 = icmp eq ptr %i.ic, %i.hm
  br i1 %.not.i176, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i175, !llvm.loop !11577

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i178.preheader

.lr.ph.i178.preheader:                            ; preds = %bb.w
  %i.ie = add i64 %.idx195, -4                    ; 2 uses
  %i.if = lshr exact i64 %i.ie, 2
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check326 = icmp ult i64 %i.ie, 44
  %i.ih = sub i64 %i.hk, %i.a
  %diff.check324 = icmp ugt i64 %i.ih, -32
  %or.cond362 = select i1 %min.iters.check326, i1 true, i1 %diff.check324
  br i1 %or.cond362, label %.lr.ph.i178.preheader364, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph.i178.preheader
  %n.vec328 = and i64 %i.ig, 9223372036854775800  ; 3 uses
  %i.ii = shl i64 %n.vec328, 2                    ; 2 uses
  %i.ij = getelementptr i8, ptr %2, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.hj, i64 %i.ii
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.il = shl i64 %index330, 2                    ; 2 uses
  %next.gep331 = getelementptr i8, ptr %2, i64 %i.il ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.hj, i64 %i.il ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep332, i64 16
  %wide.load333 = load <4 x i32>, ptr %next.gep332, align 4, !tbaa !505
  %wide.load334 = load <4 x i32>, ptr %i.im, align 4, !tbaa !505
  %i.in = getelementptr i8, ptr %next.gep331, i64 16
  store <4 x i32> %wide.load333, ptr %next.gep331, align 4, !tbaa !505
  store <4 x i32> %wide.load334, ptr %i.in, align 4, !tbaa !505
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.io, label %middle.block336, label %vector.body329, !llvm.loop !11578

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.ig, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i178.preheader364

.lr.ph.i178.preheader364:                         ; preds = %.lr.ph.i178.preheader, %middle.block336
  %.010.i179.ph = phi ptr [ %2, %.lr.ph.i178.preheader ], [ %i.ij, %middle.block336 ]
  %.079.i180.ph = phi ptr [ %i.hj, %.lr.ph.i178.preheader ], [ %i.ik, %middle.block336 ]
  br label %.lr.ph.i178

.lr.ph.i178:                                      ; preds = %.lr.ph.i178.preheader364, %.lr.ph.i178
  %.010.i179 = phi ptr [ %i.ir, %.lr.ph.i178 ], [ %.010.i179.ph, %.lr.ph.i178.preheader364 ] ; 2 uses
  %.079.i180 = phi ptr [ %i.iq, %.lr.ph.i178 ], [ %.079.i180.ph, %.lr.ph.i178.preheader364 ] ; 2 uses
  %i.ip = load i32, ptr %.079.i180, align 4, !tbaa !505
  store i32 %i.ip, ptr %.010.i179, align 4, !tbaa !505
  %i.iq = getelementptr inbounds nuw i8, ptr %.079.i180, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.010.i179, i64 4
  %.not.i181 = icmp eq ptr %i.iq, %i.hm
  br i1 %.not.i181, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i178, !llvm.loop !11579

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.sink.split: ; preds = %.thread, %.thread.thread
  store i64 0, ptr %5, align 8, !tbaa !375
  store i64 %i.g, ptr %1, align 8, !tbaa !375
  br label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i178, %.lr.ph.i175, %middle.block336, %middle.block353, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.sink.split, %bb.w, %bb.v, %._crit_edge
  %i.is = phi i1 [ true, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.sink.split ], [ true, %middle.block353 ], [ %i.ca, %._crit_edge ], [ false, %bb.w ], [ true, %bb.v ], [ false, %middle.block336 ], [ true, %.lr.ph.i175 ], [ false, %.lr.ph.i178 ]
  ret i1 %i.is
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !624  ; 4 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !625    ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.b, 4
  br i1 %i.d, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.b, -4
  br label %bb.c

.unr-lcssa:                                       ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.x, %.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.h, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.e, align 4, !tbaa !505
  %i.f = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.h = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !11580

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  store i64 0, ptr %i.a, align 8, !tbaa !624
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE5clearEv.exit

bb.c:                                             ; preds = %bb.c, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.x, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.c ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07.i.i
  store i32 -2147483648, ptr %i.i, align 4, !tbaa !505
  %i.j = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 -2147483648, ptr %i.m, align 4, !tbaa !505
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 -2147483648, ptr %i.q, align 4, !tbaa !505
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 -2147483648, ptr %i.u, align 4, !tbaa !505
  %i.v = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.x = add nuw i64 %.07.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.c, !llvm.loop !182

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE5clearEv.exit: ; preds = %bb.a, %.epilog-lcssa
  br i1 %0, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE5clearEv.exit
  %.idx108 = shl nuw nsw i64 %4, 2                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.idx108 ; 7 uses
  %.neg = mul i64 %2, -4                          ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.neg ; 4 uses
  %i.aa = lshr i64 %2, 1
  %i.ab = sub nuw i64 %2, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !626
  %.not.i51 = icmp ult i64 %i.ad, %i.ab
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_:bb.a

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit144, %bb.aa
  %.1219 = phi ptr [ %i.ef, %bb.aa ], [ %i.fc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit144 ]
  %storemerge122 = phi ptr [ %i.fe, %bb.aa ], [ %i.fd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit144 ]
  %.1109 = phi ptr [ %i.ao, %bb.aa ], [ %i.fd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit144 ]
  %.1106 = phi i8 [ %i.ee, %bb.aa ], [ %.0105285, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, %bb.m, %bb.ab
  %i.ff = phi i1 [ %i.ed, %bb.ab ], [ %i.bf, %bb.m ], [ %i.bf, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.bf, %bb.n ]
  %.1231 = phi ptr [ %.5235, %bb.ab ], [ %.0102286, %bb.m ], [ %.0230281, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2226 = phi ptr [ %storemerge122, %bb.ab ], [ %.1225, %bb.m ], [ %.1225, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.1225, %bb.n ] ; 2 uses
  %.2220 = phi ptr [ %.1219, %bb.ab ], [ %i.s, %bb.m ], [ %i.s, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.s, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.ao, %bb.m ], [ %i.ao, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.ao, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105285, %bb.m ], [ %.0105285, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0105285, %bb.n ] ; 2 uses
  %not. = xor i1 %i.ff, true
  %i.fg = sext i1 %not. to i64
  %.1 = add i64 %.0289, %i.fg
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !516
  %i.fh = getelementptr inbounds nuw i8, ptr %.0102286, i64 4 ; 2 uses
  %i.fi = icmp ne i64 %.099288, 0
  %.neg = sext i1 %i.fi to i64
  %i.fj = add i64 %.099288, %.neg                 ; 2 uses
  %i.fk = icmp ne i64 %i.ak, 0
  %.neg123 = sext i1 %i.fk to i64
  %i.fl = add i64 %.sroa.speculated208, %.neg123  ; 2 uses
  %i.fm = add i64 %.0236280, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fm, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !11666

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.fn = phi ptr [ %i.ao, %.sink.split.i ], [ %i.s, %bb.f ]
  %.4 = phi i64 [ %i.fl, %.sink.split.i ], [ %.sroa.speculated208, %bb.f ]
  %.0236.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0236280, %bb.f ]
  %.0230.lcssa.ph = phi ptr [ %.1231, %.sink.split.i ], [ %.0230281, %bb.f ]
  %.0224.lcssa.ph = phi ptr [ %.2226, %.sink.split.i ], [ %.0224282, %bb.f ]
  %.0218.lcssa.ph = phi ptr [ %.2220, %.sink.split.i ], [ %.0218283, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108284, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105285, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.fh, %.sink.split.i ], [ %.0102286, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fj, %.sink.split.i ], [ %.099288, %bb.f ]
  %i.fo = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.fp = phi ptr [ %i.i, %bb.a ], [ %i.fn, %.thread.loopexit ] ; 8 uses
  %.1322 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0236.lcssa = phi i64 [ 0, %bb.a ], [ %.0236.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0230.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0230.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0224.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0224.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0218.lcssa = phi ptr [ %1, %bb.a ], [ %.0218.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fo, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fq = ptrtoaddr ptr %i.fp to i64
  %i.fr = icmp eq ptr %.0108.lcssa, %.0224.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr %i.k, ptr %i.d, align 8, !tbaa !516
  %.idx254 = shl nuw nsw i64 %6, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx254 ; 7 uses
  %i.ft = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.ft, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fr, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0218.lcssa, %.0224.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %bb.ad
  %i.fu = load i32, ptr %i.k, align 4, !tbaa !505
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i145
  %.07.i = phi ptr [ %.0218.lcssa, %.lr.ph.i145 ], [ %i.fx, %bb.af ] ; 3 uses
  %i.fv = load i32, ptr %.07.i, align 4, !tbaa !505
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fx = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i146 = icmp eq ptr %i.fx, %.0224.lcssa
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !202

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0218.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fx, %bb.af ] ; 5 uses
  %i.fy = ptrtoint ptr %.0224.lcssa to i64        ; 3 uses
  %i.fz = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 2
  %i.gc = sub nsw i64 0, %i.gb
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.gc ; 5 uses
  %.not8.i.i147 = icmp eq ptr %.0.lcssa.i, %.0224.lcssa
  br i1 %.not8.i.i147, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.ge = add i64 %i.fy, -4
  %i.gf = sub i64 %i.ge, %i.fz                    ; 2 uses
  %i.gg = lshr i64 %i.gf, 2
  %i.gh = add nuw nsw i64 %i.gg, 1                ; 2 uses
  %min.iters.check407 = icmp ult i64 %i.gf, 60
  %i.gi = sub i64 %i.fy, %i.fq
  %diff.check405 = icmp ugt i64 %i.gi, -32
  %or.cond459 = select i1 %min.iters.check407, i1 true, i1 %diff.check405
  br i1 %or.cond459, label %.lr.ph.i.i148.preheader474, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph.i.i148.preheader
  %n.vec409 = and i64 %i.gh, 9223372036854775800  ; 3 uses
  %i.gj = shl i64 %n.vec409, 2                    ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gd, i64 %i.gj
  %i.gl = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gj
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.gm = shl i64 %index411, 2                    ; 2 uses
  %next.gep412 = getelementptr i8, ptr %i.gd, i64 %i.gm ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gm ; 2 uses
  %i.gn = getelementptr i8, ptr %next.gep413, i64 16
  %wide.load414 = load <4 x i32>, ptr %next.gep413, align 4, !tbaa !505
  %wide.load415 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !505
  %i.go = getelementptr i8, ptr %next.gep412, i64 16
  store <4 x i32> %wide.load414, ptr %next.gep412, align 4, !tbaa !505
  store <4 x i32> %wide.load415, ptr %i.go, align 4, !tbaa !505
  %index.next416 = add nuw i64 %index411, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.gp, label %middle.block417, label %vector.body410, !llvm.loop !11667

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.gh, %n.vec409
  br i1 %cmp.n418, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader474

.lr.ph.i.i148.preheader474:                       ; preds = %.lr.ph.i.i148.preheader, %middle.block417
  %.010.i.i149.ph = phi ptr [ %i.gd, %.lr.ph.i.i148.preheader ], [ %i.gk, %middle.block417 ]
  %.079.i.i150.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i148.preheader ], [ %i.gl, %middle.block417 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader474, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.gs, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader474 ] ; 2 uses
  %.079.i.i150 = phi ptr [ %i.gr, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader474 ] ; 2 uses
  %i.gq = load i32, ptr %.079.i.i150, align 4, !tbaa !505
  store i32 %i.gq, ptr %.010.i.i149, align 4, !tbaa !505
  %i.gr = getelementptr inbounds nuw i8, ptr %.079.i.i150, i64 4 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.010.i.i149, i64 4
  %.not.i.i151 = icmp eq ptr %i.gr, %.0224.lcssa
  br i1 %.not.i.i151, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148, !llvm.loop !11668

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153: ; preds = %.lr.ph.i.i148, %middle.block417, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, %bb.ac
  %.5229 = phi ptr [ %i.gt, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0224.lcssa, %bb.ac ] ; 2 uses
  %.5223 = phi ptr [ %i.gd, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0218.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fp, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5425 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5223
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gx, %bb.ai ], [ %.5229, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ha, %bb.ai ], [ %.5223, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gx, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.gy, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.gu = load i32, ptr %.0.i, align 4, !tbaa !505 ; 2 uses
  %i.gv = load i32, ptr %.021.i.ph, align 4, !tbaa !505 ; 2 uses
  %i.gw = icmp slt i32 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.gw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.gu, ptr %.024.i, align 4, !tbaa !505
  %i.gz = icmp eq ptr %i.gy, %i.fs
  br i1 %i.gz, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !204

bb.ai:                                            ; preds = %.preheader.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.gv, ptr %.024.i, align 4, !tbaa !505
  %i.hb = icmp eq ptr %i.ha, %.5
  br i1 %i.hb, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !204

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5229, %bb.ag ], [ %i.gx, %bb.ai ], [ %i.gx, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5223, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ha, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fs, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !516
  %.not8.i.i155 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i155, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %.223.i423 = ptrtoaddr ptr %.226.i to i64
  %.226.i422 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %i.hc = add i64 %.5425, -4
  %i.hd = sub i64 %i.hc, %.226.i422               ; 2 uses
  %i.he = lshr i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check427 = icmp ult i64 %i.hd, 44
  %i.hg = sub i64 %.226.i422, %.223.i423
  %diff.check424 = icmp ugt i64 %i.hg, -32
  %or.cond460 = select i1 %min.iters.check427, i1 true, i1 %diff.check424
  br i1 %or.cond460, label %.lr.ph.i.i156.preheader464, label %vector.ph428

vector.ph428:                                     ; preds = %.lr.ph.i.i156.preheader
  %n.vec429 = and i64 %i.hf, 9223372036854775800  ; 3 uses
  %i.hh = shl i64 %n.vec429, 2                    ; 2 uses
  %i.hi = getelementptr i8, ptr %.226.i, i64 %i.hh ; 2 uses
  %i.hj = getelementptr i8, ptr %.223.i, i64 %i.hh
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.hk = shl i64 %index431, 2                    ; 2 uses
  %next.gep432 = getelementptr i8, ptr %.226.i, i64 %i.hk ; 2 uses
  %next.gep433 = getelementptr i8, ptr %.223.i, i64 %i.hk ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep433, i64 16
  %wide.load434 = load <4 x i32>, ptr %next.gep433, align 4, !tbaa !505
  %wide.load435 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !505
  %i.hm = getelementptr i8, ptr %next.gep432, i64 16
  store <4 x i32> %wide.load434, ptr %next.gep432, align 4, !tbaa !505
  store <4 x i32> %wide.load435, ptr %i.hm, align 4, !tbaa !505
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.hn, label %middle.block437, label %vector.body430, !llvm.loop !11669

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.hf, %n.vec429
  br i1 %cmp.n438, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader464

.lr.ph.i.i156.preheader464:                       ; preds = %.lr.ph.i.i156.preheader, %middle.block437
  %.010.i.i157.ph = phi ptr [ %.226.i, %.lr.ph.i.i156.preheader ], [ %i.hi, %middle.block437 ]
  %.079.i.i158.ph = phi ptr [ %.223.i, %.lr.ph.i.i156.preheader ], [ %i.hj, %middle.block437 ]
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %.lr.ph.i.i156.preheader464, %.lr.ph.i.i156
  %.010.i.i157 = phi ptr [ %i.hq, %.lr.ph.i.i156 ], [ %.010.i.i157.ph, %.lr.ph.i.i156.preheader464 ] ; 2 uses
  %.079.i.i158 = phi ptr [ %i.hp, %.lr.ph.i.i156 ], [ %.079.i.i158.ph, %.lr.ph.i.i156.preheader464 ] ; 2 uses
  %i.ho = load i32, ptr %.079.i.i158, align 4, !tbaa !505
  store i32 %i.ho, ptr %.010.i.i157, align 4, !tbaa !505
  %i.hp = getelementptr inbounds nuw i8, ptr %.079.i.i158, i64 4 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.010.i.i157, i64 4 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.hp, %.5
  br i1 %.not.i.i159, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156, !llvm.loop !11670

bb.aj:                                            ; preds = %.thread
  br i1 %i.fr, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.hr = phi ptr [ %i.fp, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1322, %bb.aj ], [ %.sroa.speculated208, %.thread.thread ] ; 3 uses
  %.0236277 = phi i64 [ %.0236.lcssa, %bb.aj ], [ %.0236280, %.thread.thread ] ; 3 uses
  %.0230274 = phi ptr [ %.0230.lcssa, %bb.aj ], [ %.0230281, %.thread.thread ] ; 3 uses
  %.0224272 = phi ptr [ %.0224.lcssa, %bb.aj ], [ %.0224282, %.thread.thread ] ; 5 uses
  %.0218270 = phi ptr [ %.0218.lcssa, %bb.aj ], [ %.0218283, %.thread.thread ] ; 5 uses
  %.0108268 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108284, %.thread.thread ] ; 3 uses
  %.0102264 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102286, %.thread.thread ] ; 3 uses
  %.099261 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099288, %.thread.thread ] ; 3 uses
  %i.hs = phi ptr [ %i.fs, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0218270, %.0108268
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %.0218270386 = ptrtoaddr ptr %.0224272 to i64
  %.0224272385 = ptrtoaddr ptr %.0218270 to i64   ; 2 uses
  %.0108268388 = ptrtoaddr ptr %.0108268 to i64
  %i.ht = add i64 %.0108268388, -4
  %i.hu = sub i64 %i.ht, %.0224272385             ; 2 uses
  %i.hv = lshr i64 %i.hu, 2
  %i.hw = add nuw nsw i64 %i.hv, 1                ; 2 uses
  %min.iters.check390 = icmp ult i64 %i.hu, 44
  %i.hx = sub i64 %.0224272385, %.0218270386
  %diff.check387 = icmp ugt i64 %i.hx, -32
  %or.cond461 = select i1 %min.iters.check390, i1 true, i1 %diff.check387
  br i1 %or.cond461, label %.lr.ph.i.i163.preheader475, label %vector.ph391

vector.ph391:                                     ; preds = %.lr.ph.i.i163.preheader
  %n.vec392 = and i64 %i.hw, 9223372036854775800  ; 3 uses
  %i.hy = shl i64 %n.vec392, 2                    ; 2 uses
  %i.hz = getelementptr i8, ptr %.0224272, i64 %i.hy ; 2 uses
  %i.ia = getelementptr i8, ptr %.0218270, i64 %i.hy
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph391
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next399, %vector.body393 ] ; 2 uses
  %i.ib = shl i64 %index394, 2                    ; 2 uses
  %next.gep395 = getelementptr i8, ptr %.0224272, i64 %i.ib ; 2 uses
  %next.gep396 = getelementptr i8, ptr %.0218270, i64 %i.ib ; 2 uses
  %i.ic = getelementptr i8, ptr %next.gep396, i64 16
  %wide.load397 = load <4 x i32>, ptr %next.gep396, align 4, !tbaa !505
  %wide.load398 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !505
  %i.id = getelementptr i8, ptr %next.gep395, i64 16
  store <4 x i32> %wide.load397, ptr %next.gep395, align 4, !tbaa !505
  store <4 x i32> %wide.load398, ptr %i.id, align 4, !tbaa !505
  %index.next399 = add nuw i64 %index394, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.ie, label %middle.block400, label %vector.body393, !llvm.loop !11671

middle.block400:                                  ; preds = %vector.body393
  %cmp.n401 = icmp eq i64 %i.hw, %n.vec392
  br i1 %cmp.n401, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader475

.lr.ph.i.i163.preheader475:                       ; preds = %.lr.ph.i.i163.preheader, %middle.block400
  %.010.i.i164.ph = phi ptr [ %.0224272, %.lr.ph.i.i163.preheader ], [ %i.hz, %middle.block400 ]
  %.079.i.i165.ph = phi ptr [ %.0218270, %.lr.ph.i.i163.preheader ], [ %i.ia, %middle.block400 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader475, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.ih, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader475 ] ; 2 uses
  %.079.i.i165 = phi ptr [ %i.ig, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader475 ] ; 2 uses
  %i.if = load i32, ptr %.079.i.i165, align 4, !tbaa !505
  store i32 %i.if, ptr %.010.i.i164, align 4, !tbaa !505
  %i.ig = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.ig, %.0108268
  br i1 %.not.i.i166, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !11672

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i156, %middle.block400, %middle.block437, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.ii = phi ptr [ %i.fp, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fp, %bb.aj ], [ %i.hr, %bb.ak ], [ %i.fp, %middle.block437 ], [ %i.hr, %middle.block400 ], [ %i.fp, %.lr.ph.i.i156 ], [ %i.hr, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1322, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated208, %.thread.thread ], [ %.1322, %bb.aj ], [ %.2, %bb.ak ], [ %.1322, %middle.block437 ], [ %.2, %middle.block400 ], [ %.1322, %.lr.ph.i.i156 ], [ %.2, %.lr.ph.i.i163 ]
  %.0236278 = phi i64 [ %.0236.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0236280, %.thread.thread ], [ %.0236.lcssa, %bb.aj ], [ %.0236277, %bb.ak ], [ %.0236.lcssa, %middle.block437 ], [ %.0236277, %middle.block400 ], [ %.0236.lcssa, %.lr.ph.i.i156 ], [ %.0236277, %.lr.ph.i.i163 ]
  %.0230275 = phi ptr [ %.0230.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0230281, %.thread.thread ], [ %.0230.lcssa, %bb.aj ], [ %.0230274, %bb.ak ], [ %.0230.lcssa, %middle.block437 ], [ %.0230274, %middle.block400 ], [ %.0230.lcssa, %.lr.ph.i.i156 ], [ %.0230274, %.lr.ph.i.i163 ]
  %.0102265 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102286, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102264, %bb.ak ], [ %.0102.lcssa, %middle.block437 ], [ %.0102264, %middle.block400 ], [ %.0102.lcssa, %.lr.ph.i.i156 ], [ %.0102264, %.lr.ph.i.i163 ]
  %.099262 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099288, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099261, %bb.ak ], [ %.099.lcssa, %middle.block437 ], [ %.099261, %middle.block400 ], [ %.099.lcssa, %.lr.ph.i.i156 ], [ %.099261, %.lr.ph.i.i163 ]
  %i.ij = phi ptr [ %i.fs, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fs, %bb.aj ], [ %i.hs, %bb.ak ], [ %i.fs, %middle.block437 ], [ %i.hs, %middle.block400 ], [ %i.fs, %.lr.ph.i.i156 ], [ %i.hs, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0224282, %.thread.thread ], [ %.0224.lcssa, %bb.aj ], [ %.0224272, %bb.ak ], [ %i.hi, %middle.block437 ], [ %i.hz, %middle.block400 ], [ %i.hq, %.lr.ph.i.i156 ], [ %i.ih, %.lr.ph.i.i163 ]
  %i.ik = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_S6_S6_SE_NS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %.0102265, ptr noundef %.0230275, ptr noundef %i.ii, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ij, ptr noundef %.6, i64 noundef %2, i64 noundef %.0236278, i64 noundef %.099262, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.il = load ptr, ptr %i.d, align 8, !tbaa !516 ; 5 uses
  %.not8.i.i169 = icmp eq ptr %i.il, %i.ij
  br i1 %.not8.i.i169, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader

.lr.ph.i.i170.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  %i.im = ptrtoaddr ptr %i.il to i64              ; 2 uses
  %i.in = ptrtoaddr ptr %i.ik to i64
  %i.io = ptrtoaddr ptr %i.ij to i64
  %i.ip = add i64 %i.io, -4
  %i.iq = sub i64 %i.ip, %i.im                    ; 2 uses
  %i.ir = lshr i64 %i.iq, 2
  %i.is = add nuw nsw i64 %i.ir, 1                ; 2 uses
  %min.iters.check444 = icmp ult i64 %i.iq, 44
  %i.it = sub i64 %i.im, %i.in
  %diff.check442 = icmp ugt i64 %i.it, -32
  %or.cond462 = or i1 %min.iters.check444, %diff.check442
  br i1 %or.cond462, label %.lr.ph.i.i170.preheader463, label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph.i.i170.preheader
  %n.vec446 = and i64 %i.is, 9223372036854775800  ; 3 uses
  %i.iu = shl i64 %n.vec446, 2                    ; 2 uses
  %i.iv = getelementptr i8, ptr %i.ik, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.il, i64 %i.iu
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph445
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next453, %vector.body447 ] ; 2 uses
  %i.ix = shl i64 %index448, 2                    ; 2 uses
  %next.gep449 = getelementptr i8, ptr %i.ik, i64 %i.ix ; 2 uses
  %next.gep450 = getelementptr i8, ptr %i.il, i64 %i.ix ; 2 uses
  %i.iy = getelementptr i8, ptr %next.gep450, i64 16
  %wide.load451 = load <4 x i32>, ptr %next.gep450, align 4, !tbaa !505
  %wide.load452 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !505
  %i.iz = getelementptr i8, ptr %next.gep449, i64 16
  store <4 x i32> %wide.load451, ptr %next.gep449, align 4, !tbaa !505
  store <4 x i32> %wide.load452, ptr %i.iz, align 4, !tbaa !505
  %index.next453 = add nuw i64 %index448, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next453, %n.vec446
  br i1 %i.ja, label %middle.block454, label %vector.body447, !llvm.loop !11673

middle.block454:                                  ; preds = %vector.body447
  %cmp.n455 = icmp eq i64 %i.is, %n.vec446
  br i1 %cmp.n455, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader463

.lr.ph.i.i170.preheader463:                       ; preds = %.lr.ph.i.i170.preheader, %middle.block454
  %.010.i.i171.ph = phi ptr [ %i.ik, %.lr.ph.i.i170.preheader ], [ %i.iv, %middle.block454 ]
  %.079.i.i172.ph = phi ptr [ %i.il, %.lr.ph.i.i170.preheader ], [ %i.iw, %middle.block454 ]
  br label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.preheader463, %.lr.ph.i.i170
  %.010.i.i171 = phi ptr [ %i.jd, %.lr.ph.i.i170 ], [ %.010.i.i171.ph, %.lr.ph.i.i170.preheader463 ] ; 2 uses
  %.079.i.i172 = phi ptr [ %i.jc, %.lr.ph.i.i170 ], [ %.079.i.i172.ph, %.lr.ph.i.i170.preheader463 ] ; 2 uses
  %i.jb = load i32, ptr %.079.i.i172, align 4, !tbaa !505
  store i32 %i.jb, ptr %.010.i.i171, align 4, !tbaa !505
  %i.jc = getelementptr inbounds nuw i8, ptr %.079.i.i172, i64 4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.010.i.i171, i64 4
  %.not.i.i173 = icmp eq ptr %i.jc, %i.ij
  br i1 %.not.i.i173, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170, !llvm.loop !11674

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175: ; preds = %.lr.ph.i.i170, %middle.block454, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !516
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not293 = icmp eq i64 %i.e, 0
  br i1 %.not293, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx266 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx266, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fe, %.sink.split.i ] ; 3 uses
  %.0303 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099302 = phi i64 [ %i.m, %.lr.ph ], [ %i.fc, %.sink.split.i ] ; 7 uses
  %.0102300 = phi ptr [ %0, %.lr.ph ], [ %i.fa, %.sink.split.i ] ; 15 uses
  %.0105299 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108298 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 15 uses
  %.0232297 = phi ptr [ %1, %.lr.ph ], [ %.2234, %.sink.split.i ] ; 12 uses
  %.0238296 = phi ptr [ %i.h, %.lr.ph ], [ %.2240, %.sink.split.i ] ; 12 uses
  %.0244295 = phi ptr [ %i.f, %.lr.ph ], [ %.1245, %.sink.split.i ] ; 13 uses
  %.0250294 = phi i64 [ %i.e, %.lr.ph ], [ %i.ff, %.sink.split.i ] ; 5 uses
  %i.t = icmp ult i64 %.099302, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099302, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0102300, i64 %.02226.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0102300, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !505 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !505 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !505
  %i.af = load i32, ptr %i.y, align 4, !tbaa !505
  %i.ag = icmp slt i32 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144, %bb.aa
  %.1219 = phi ptr [ %i.eb, %bb.aa ], [ %i.eu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144 ]
  %storemerge122 = phi ptr [ %i.ew, %bb.aa ], [ %i.ev, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144 ]
  %.1109 = phi ptr [ %i.ao, %bb.aa ], [ %i.ev, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144 ]
  %.1106 = phi i8 [ %i.ea, %bb.aa ], [ %.0105284, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, %bb.m, %bb.n, %bb.ab
  %i.ex = phi i1 [ %i.dz, %bb.ab ], [ %i.bf, %bb.n ], [ %i.bf, %bb.m ], [ %i.bf, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ]
  %.1231 = phi ptr [ %.5235, %bb.ab ], [ %spec.select, %bb.n ], [ %.0102285, %bb.m ], [ %.0230280, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %.2226 = phi ptr [ %storemerge122, %bb.ab ], [ %.1225, %bb.n ], [ %.1225, %bb.m ], [ %.1225, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %.2220 = phi ptr [ %.1219, %bb.ab ], [ %i.s, %bb.n ], [ %i.s, %bb.m ], [ %i.s, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ], [ %i.ao, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105284, %bb.n ], [ %.0105284, %bb.m ], [ %.0105284, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ] ; 2 uses
  %not. = xor i1 %i.ex, true
  %i.ey = sext i1 %not. to i64
  %.1 = add i64 %.0288, %i.ey
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !516
  %i.ez = getelementptr inbounds nuw i8, ptr %.0102285, i64 1 ; 2 uses
  %i.fa = icmp ne i64 %.099287, 0
  %.neg = sext i1 %i.fa to i64
  %i.fb = add i64 %.099287, %.neg                 ; 2 uses
  %i.fc = icmp ne i64 %i.ak, 0
  %.neg123 = sext i1 %i.fc to i64
  %i.fd = add i64 %.sroa.speculated208, %.neg123  ; 2 uses
  %i.fe = add i64 %.0236279, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fe, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !11911

.thread.loopexit:                                 ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.ff = phi ptr [ %i.ao, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %i.s, %bb.f ]
  %.4 = phi i64 [ %i.fd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.sroa.speculated208, %bb.f ]
  %.0236.lcssa.ph = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0236279, %bb.f ]
  %.0230.lcssa.ph = phi ptr [ %.1231, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0230280, %bb.f ]
  %.0224.lcssa.ph = phi ptr [ %.2226, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0224281, %bb.f ]
  %.0218.lcssa.ph = phi ptr [ %.2220, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0218282, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0108283, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0105284, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.ez, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.0102285, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ], [ %.099287, %bb.f ]
  %i.fg = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.fh = phi ptr [ %i.i, %bb.a ], [ %i.ff, %.thread.loopexit ] ; 8 uses
  %.1321 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0236.lcssa = phi i64 [ 0, %bb.a ], [ %.0236.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0230.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0230.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0224.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0224.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0218.lcssa = phi ptr [ %1, %bb.a ], [ %.0218.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fg, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = icmp eq ptr %.0108.lcssa, %.0224.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr %i.k, ptr %i.d, align 8, !tbaa !516
  %.idx253 = shl nuw nsw i64 %6, 2
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx253 ; 7 uses
  %i.fl = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fl, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fj, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0218.lcssa, %.0224.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %bb.ad
  %i.fm = load i32, ptr %i.k, align 4, !tbaa !505
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i145
  %.07.i = phi ptr [ %.0218.lcssa, %.lr.ph.i145 ], [ %i.fp, %bb.af ] ; 3 uses
  %i.fn = load i32, ptr %.07.i, align 4, !tbaa !505
  %i.fo = icmp slt i32 %i.fm, %i.fn
  br i1 %i.fo, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i146 = icmp eq ptr %i.fp, %.0224.lcssa
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !202

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0218.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fp, %bb.af ] ; 5 uses
  %i.fq = ptrtoint ptr %.0224.lcssa to i64        ; 3 uses
  %i.fr = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 2
  %i.fu = sub nsw i64 0, %i.ft
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fu ; 5 uses
  %.not8.i.i147 = icmp eq ptr %.0.lcssa.i, %.0224.lcssa
  br i1 %.not8.i.i147, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.fw = add i64 %i.fq, -4
  %i.fx = sub i64 %i.fw, %i.fr                    ; 2 uses
  %i.fy = lshr i64 %i.fx, 2
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check406 = icmp ult i64 %i.fx, 60
  %i.ga = sub i64 %i.fq, %i.fi
  %diff.check404 = icmp ugt i64 %i.ga, -32
  %or.cond458 = select i1 %min.iters.check406, i1 true, i1 %diff.check404
  br i1 %or.cond458, label %.lr.ph.i.i148.preheader473, label %vector.ph407

vector.ph407:                                     ; preds = %.lr.ph.i.i148.preheader
  %n.vec408 = and i64 %i.fz, 9223372036854775800  ; 3 uses
  %i.gb = shl i64 %n.vec408, 2                    ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fv, i64 %i.gb
  %i.gd = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gb
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph407
  %index410 = phi i64 [ 0, %vector.ph407 ], [ %index.next415, %vector.body409 ] ; 2 uses
  %i.ge = shl i64 %index410, 2                    ; 2 uses
  %next.gep411 = getelementptr i8, ptr %i.fv, i64 %i.ge ; 2 uses
  %next.gep412 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep412, i64 16
  %wide.load413 = load <4 x i32>, ptr %next.gep412, align 4, !tbaa !505
  %wide.load414 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !505
  %i.gg = getelementptr i8, ptr %next.gep411, i64 16
  store <4 x i32> %wide.load413, ptr %next.gep411, align 4, !tbaa !505
  store <4 x i32> %wide.load414, ptr %i.gg, align 4, !tbaa !505
  %index.next415 = add nuw i64 %index410, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next415, %n.vec408
  br i1 %i.gh, label %middle.block416, label %vector.body409, !llvm.loop !11912

middle.block416:                                  ; preds = %vector.body409
  %cmp.n417 = icmp eq i64 %i.fz, %n.vec408
  br i1 %cmp.n417, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader473

.lr.ph.i.i148.preheader473:                       ; preds = %.lr.ph.i.i148.preheader, %middle.block416
  %.010.i.i149.ph = phi ptr [ %i.fv, %.lr.ph.i.i148.preheader ], [ %i.gc, %middle.block416 ]
  %.079.i.i150.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i148.preheader ], [ %i.gd, %middle.block416 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader473, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.gk, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader473 ] ; 2 uses
  %.079.i.i150 = phi ptr [ %i.gj, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader473 ] ; 2 uses
  %i.gi = load i32, ptr %.079.i.i150, align 4, !tbaa !505
  store i32 %i.gi, ptr %.010.i.i149, align 4, !tbaa !505
  %i.gj = getelementptr inbounds nuw i8, ptr %.079.i.i150, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.010.i.i149, i64 4
  %.not.i.i151 = icmp eq ptr %i.gj, %.0224.lcssa
  br i1 %.not.i.i151, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148, !llvm.loop !11913

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153: ; preds = %.lr.ph.i.i148, %middle.block416, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, %bb.ac
  %.5229 = phi ptr [ %i.gl, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0224.lcssa, %bb.ac ] ; 2 uses
  %.5223 = phi ptr [ %i.fv, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0218.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fh, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5424 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5223
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gp, %bb.ai ], [ %.5229, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gs, %bb.ai ], [ %.5223, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gp, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.gq, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.gm = load i32, ptr %.0.i, align 4, !tbaa !505 ; 2 uses
  %i.gn = load i32, ptr %.021.i.ph, align 4, !tbaa !505 ; 2 uses
  %i.go = icmp slt i32 %i.gm, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.go, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.gm, ptr %.024.i, align 4, !tbaa !505
  %i.gr = icmp eq ptr %i.gq, %i.fk
  br i1 %i.gr, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !204

bb.ai:                                            ; preds = %.preheader.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.gn, ptr %.024.i, align 4, !tbaa !505
  %i.gt = icmp eq ptr %i.gs, %.5
  br i1 %i.gt, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !204

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5229, %bb.ag ], [ %i.gp, %bb.ai ], [ %i.gp, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5223, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gs, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fk, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !516
  %.not8.i.i155 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i155, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %.223.i422 = ptrtoaddr ptr %.226.i to i64
  %.226.i421 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %i.gu = add i64 %.5424, -4
  %i.gv = sub i64 %i.gu, %.226.i421               ; 2 uses
  %i.gw = lshr i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check426 = icmp ult i64 %i.gv, 44
  %i.gy = sub i64 %.226.i421, %.223.i422
  %diff.check423 = icmp ugt i64 %i.gy, -32
  %or.cond459 = select i1 %min.iters.check426, i1 true, i1 %diff.check423
  br i1 %or.cond459, label %.lr.ph.i.i156.preheader463, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph.i.i156.preheader
  %n.vec428 = and i64 %i.gx, 9223372036854775800  ; 3 uses
  %i.gz = shl i64 %n.vec428, 2                    ; 2 uses
  %i.ha = getelementptr i8, ptr %.226.i, i64 %i.gz ; 2 uses
  %i.hb = getelementptr i8, ptr %.223.i, i64 %i.gz
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next435, %vector.body429 ] ; 2 uses
  %i.hc = shl i64 %index430, 2                    ; 2 uses
  %next.gep431 = getelementptr i8, ptr %.226.i, i64 %i.hc ; 2 uses
  %next.gep432 = getelementptr i8, ptr %.223.i, i64 %i.hc ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep432, i64 16
  %wide.load433 = load <4 x i32>, ptr %next.gep432, align 4, !tbaa !505
  %wide.load434 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !505
  %i.he = getelementptr i8, ptr %next.gep431, i64 16
  store <4 x i32> %wide.load433, ptr %next.gep431, align 4, !tbaa !505
  store <4 x i32> %wide.load434, ptr %i.he, align 4, !tbaa !505
  %index.next435 = add nuw i64 %index430, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next435, %n.vec428
  br i1 %i.hf, label %middle.block436, label %vector.body429, !llvm.loop !11914

middle.block436:                                  ; preds = %vector.body429
  %cmp.n437 = icmp eq i64 %i.gx, %n.vec428
  br i1 %cmp.n437, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader463

.lr.ph.i.i156.preheader463:                       ; preds = %.lr.ph.i.i156.preheader, %middle.block436
  %.010.i.i157.ph = phi ptr [ %.226.i, %.lr.ph.i.i156.preheader ], [ %i.ha, %middle.block436 ]
  %.079.i.i158.ph = phi ptr [ %.223.i, %.lr.ph.i.i156.preheader ], [ %i.hb, %middle.block436 ]
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %.lr.ph.i.i156.preheader463, %.lr.ph.i.i156
  %.010.i.i157 = phi ptr [ %i.hi, %.lr.ph.i.i156 ], [ %.010.i.i157.ph, %.lr.ph.i.i156.preheader463 ] ; 2 uses
  %.079.i.i158 = phi ptr [ %i.hh, %.lr.ph.i.i156 ], [ %.079.i.i158.ph, %.lr.ph.i.i156.preheader463 ] ; 2 uses
  %i.hg = load i32, ptr %.079.i.i158, align 4, !tbaa !505
  store i32 %i.hg, ptr %.010.i.i157, align 4, !tbaa !505
  %i.hh = getelementptr inbounds nuw i8, ptr %.079.i.i158, i64 4 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.010.i.i157, i64 4 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.hh, %.5
  br i1 %.not.i.i159, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156, !llvm.loop !11915

bb.aj:                                            ; preds = %.thread
  br i1 %i.fj, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.hj = phi ptr [ %i.fh, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1321, %bb.aj ], [ %.sroa.speculated208, %.thread.thread ] ; 3 uses
  %.0236276 = phi i64 [ %.0236.lcssa, %bb.aj ], [ %.0236279, %.thread.thread ] ; 3 uses
  %.0230273 = phi ptr [ %.0230.lcssa, %bb.aj ], [ %.0230280, %.thread.thread ] ; 3 uses
  %.0224271 = phi ptr [ %.0224.lcssa, %bb.aj ], [ %.0224281, %.thread.thread ] ; 5 uses
  %.0218269 = phi ptr [ %.0218.lcssa, %bb.aj ], [ %.0218282, %.thread.thread ] ; 5 uses
  %.0108267 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108283, %.thread.thread ] ; 3 uses
  %.0102263 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102285, %.thread.thread ] ; 3 uses
  %.099260 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099287, %.thread.thread ] ; 3 uses
  %i.hk = phi ptr [ %i.fk, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0218269, %.0108267
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %.0218269385 = ptrtoaddr ptr %.0224271 to i64
  %.0224271384 = ptrtoaddr ptr %.0218269 to i64   ; 2 uses
  %.0108267387 = ptrtoaddr ptr %.0108267 to i64
  %i.hl = add i64 %.0108267387, -4
  %i.hm = sub i64 %i.hl, %.0224271384             ; 2 uses
  %i.hn = lshr i64 %i.hm, 2
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %min.iters.check389 = icmp ult i64 %i.hm, 44
  %i.hp = sub i64 %.0224271384, %.0218269385
  %diff.check386 = icmp ugt i64 %i.hp, -32
  %or.cond460 = select i1 %min.iters.check389, i1 true, i1 %diff.check386
  br i1 %or.cond460, label %.lr.ph.i.i163.preheader474, label %vector.ph390

vector.ph390:                                     ; preds = %.lr.ph.i.i163.preheader
  %n.vec391 = and i64 %i.ho, 9223372036854775800  ; 3 uses
  %i.hq = shl i64 %n.vec391, 2                    ; 2 uses
  %i.hr = getelementptr i8, ptr %.0224271, i64 %i.hq ; 2 uses
  %i.hs = getelementptr i8, ptr %.0218269, i64 %i.hq
  br label %vector.body392

vector.body392:                                   ; preds = %vector.body392, %vector.ph390
  %index393 = phi i64 [ 0, %vector.ph390 ], [ %index.next398, %vector.body392 ] ; 2 uses
  %i.ht = shl i64 %index393, 2                    ; 2 uses
  %next.gep394 = getelementptr i8, ptr %.0224271, i64 %i.ht ; 2 uses
  %next.gep395 = getelementptr i8, ptr %.0218269, i64 %i.ht ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep395, i64 16
  %wide.load396 = load <4 x i32>, ptr %next.gep395, align 4, !tbaa !505
  %wide.load397 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !505
  %i.hv = getelementptr i8, ptr %next.gep394, i64 16
  store <4 x i32> %wide.load396, ptr %next.gep394, align 4, !tbaa !505
  store <4 x i32> %wide.load397, ptr %i.hv, align 4, !tbaa !505
  %index.next398 = add nuw i64 %index393, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next398, %n.vec391
  br i1 %i.hw, label %middle.block399, label %vector.body392, !llvm.loop !11916

middle.block399:                                  ; preds = %vector.body392
  %cmp.n400 = icmp eq i64 %i.ho, %n.vec391
  br i1 %cmp.n400, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader474

.lr.ph.i.i163.preheader474:                       ; preds = %.lr.ph.i.i163.preheader, %middle.block399
  %.010.i.i164.ph = phi ptr [ %.0224271, %.lr.ph.i.i163.preheader ], [ %i.hr, %middle.block399 ]
  %.079.i.i165.ph = phi ptr [ %.0218269, %.lr.ph.i.i163.preheader ], [ %i.hs, %middle.block399 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader474, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.hz, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader474 ] ; 2 uses
  %.079.i.i165 = phi ptr [ %i.hy, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader474 ] ; 2 uses
  %i.hx = load i32, ptr %.079.i.i165, align 4, !tbaa !505
  store i32 %i.hx, ptr %.010.i.i164, align 4, !tbaa !505
  %i.hy = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.hy, %.0108267
  br i1 %.not.i.i166, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !11917

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i156, %middle.block399, %middle.block436, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.ia = phi ptr [ %i.fh, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fh, %bb.aj ], [ %i.hj, %bb.ak ], [ %i.fh, %middle.block436 ], [ %i.hj, %middle.block399 ], [ %i.fh, %.lr.ph.i.i156 ], [ %i.hj, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1321, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated208, %.thread.thread ], [ %.1321, %bb.aj ], [ %.2, %bb.ak ], [ %.1321, %middle.block436 ], [ %.2, %middle.block399 ], [ %.1321, %.lr.ph.i.i156 ], [ %.2, %.lr.ph.i.i163 ]
  %.0236277 = phi i64 [ %.0236.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0236279, %.thread.thread ], [ %.0236.lcssa, %bb.aj ], [ %.0236276, %bb.ak ], [ %.0236.lcssa, %middle.block436 ], [ %.0236276, %middle.block399 ], [ %.0236.lcssa, %.lr.ph.i.i156 ], [ %.0236276, %.lr.ph.i.i163 ]
  %.0230274 = phi ptr [ %.0230.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0230280, %.thread.thread ], [ %.0230.lcssa, %bb.aj ], [ %.0230273, %bb.ak ], [ %.0230.lcssa, %middle.block436 ], [ %.0230273, %middle.block399 ], [ %.0230.lcssa, %.lr.ph.i.i156 ], [ %.0230273, %.lr.ph.i.i163 ]
  %.0102264 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102285, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102263, %bb.ak ], [ %.0102.lcssa, %middle.block436 ], [ %.0102263, %middle.block399 ], [ %.0102.lcssa, %.lr.ph.i.i156 ], [ %.0102263, %.lr.ph.i.i163 ]
  %.099261 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099287, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099260, %bb.ak ], [ %.099.lcssa, %middle.block436 ], [ %.099260, %middle.block399 ], [ %.099.lcssa, %.lr.ph.i.i156 ], [ %.099260, %.lr.ph.i.i163 ]
  %i.ib = phi ptr [ %i.fk, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fk, %bb.aj ], [ %i.hk, %bb.ak ], [ %i.fk, %middle.block436 ], [ %i.hk, %middle.block399 ], [ %i.fk, %.lr.ph.i.i156 ], [ %i.hk, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0224281, %.thread.thread ], [ %.0224.lcssa, %bb.aj ], [ %.0224271, %bb.ak ], [ %i.ha, %middle.block436 ], [ %i.hr, %middle.block399 ], [ %i.hi, %.lr.ph.i.i156 ], [ %i.hz, %.lr.ph.i.i163 ]
  %i.ic = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPNS_9container4test12copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %.0102264, ptr noundef %.0230274, ptr noundef %i.ia, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ib, ptr noundef %.6, i64 noundef %2, i64 noundef %.0236277, i64 noundef %.099261, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !516 ; 5 uses
  %.not8.i.i169 = icmp eq ptr %i.id, %i.ib
  br i1 %.not8.i.i169, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader

.lr.ph.i.i170.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  %i.ie = ptrtoaddr ptr %i.id to i64              ; 2 uses
  %i.if = ptrtoaddr ptr %i.ic to i64
  %i.ig = ptrtoaddr ptr %i.ib to i64
  %i.ih = add i64 %i.ig, -4
  %i.ii = sub i64 %i.ih, %i.ie                    ; 2 uses
  %i.ij = lshr i64 %i.ii, 2
  %i.ik = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %min.iters.check443 = icmp ult i64 %i.ii, 44
  %i.il = sub i64 %i.ie, %i.if
  %diff.check441 = icmp ugt i64 %i.il, -32
  %or.cond461 = or i1 %min.iters.check443, %diff.check441
  br i1 %or.cond461, label %.lr.ph.i.i170.preheader462, label %vector.ph444

vector.ph444:                                     ; preds = %.lr.ph.i.i170.preheader
  %n.vec445 = and i64 %i.ik, 9223372036854775800  ; 3 uses
  %i.im = shl i64 %n.vec445, 2                    ; 2 uses
  %i.in = getelementptr i8, ptr %i.ic, i64 %i.im
  %i.io = getelementptr i8, ptr %i.id, i64 %i.im
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph444
  %index447 = phi i64 [ 0, %vector.ph444 ], [ %index.next452, %vector.body446 ] ; 2 uses
  %i.ip = shl i64 %index447, 2                    ; 2 uses
  %next.gep448 = getelementptr i8, ptr %i.ic, i64 %i.ip ; 2 uses
  %next.gep449 = getelementptr i8, ptr %i.id, i64 %i.ip ; 2 uses
  %i.iq = getelementptr i8, ptr %next.gep449, i64 16
  %wide.load450 = load <4 x i32>, ptr %next.gep449, align 4, !tbaa !505
  %wide.load451 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !505
  %i.ir = getelementptr i8, ptr %next.gep448, i64 16
  store <4 x i32> %wide.load450, ptr %next.gep448, align 4, !tbaa !505
  store <4 x i32> %wide.load451, ptr %i.ir, align 4, !tbaa !505
  %index.next452 = add nuw i64 %index447, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next452, %n.vec445
  br i1 %i.is, label %middle.block453, label %vector.body446, !llvm.loop !11918

middle.block453:                                  ; preds = %vector.body446
  %cmp.n454 = icmp eq i64 %i.ik, %n.vec445
  br i1 %cmp.n454, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader462

.lr.ph.i.i170.preheader462:                       ; preds = %.lr.ph.i.i170.preheader, %middle.block453
  %.010.i.i171.ph = phi ptr [ %i.ic, %.lr.ph.i.i170.preheader ], [ %i.in, %middle.block453 ]
  %.079.i.i172.ph = phi ptr [ %i.id, %.lr.ph.i.i170.preheader ], [ %i.io, %middle.block453 ]
  br label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.preheader462, %.lr.ph.i.i170
  %.010.i.i171 = phi ptr [ %i.iv, %.lr.ph.i.i170 ], [ %.010.i.i171.ph, %.lr.ph.i.i170.preheader462 ] ; 2 uses
  %.079.i.i172 = phi ptr [ %i.iu, %.lr.ph.i.i170 ], [ %.079.i.i172.ph, %.lr.ph.i.i170.preheader462 ] ; 2 uses
  %i.it = load i32, ptr %.079.i.i172, align 4, !tbaa !505
  store i32 %i.it, ptr %.010.i.i171, align 4, !tbaa !505
  %i.iu = getelementptr inbounds nuw i8, ptr %.079.i.i172, i64 4 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.010.i.i171, i64 4
  %.not.i.i173 = icmp eq ptr %i.iu, %i.ib
  br i1 %.not.i.i173, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170, !llvm.loop !11919

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175: ; preds = %.lr.ph.i.i170, %middle.block453, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !516
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not292 = icmp eq i64 %i.e, 0
  br i1 %.not292, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx266 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx266, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ew, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.0302 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.099301 = phi i64 [ %i.m, %.lr.ph ], [ %i.eu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 7 uses
  %.0102299 = phi ptr [ %0, %.lr.ph ], [ %i.es, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 15 uses
  %.0105298 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.0108297 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 15 uses
  %.0232296 = phi ptr [ %1, %.lr.ph ], [ %.2234, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 12 uses
  %.0238295 = phi ptr [ %i.h, %.lr.ph ], [ %.2240, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 12 uses
  %.0244294 = phi ptr [ %i.f, %.lr.ph ], [ %.1245, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 13 uses
  %.0250293 = phi i64 [ %i.e, %.lr.ph ], [ %i.ex, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %i.t = icmp ult i64 %.099301, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099301, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0102299, i64 %.02226.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0102299, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !505 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !505 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !464
  %i.af = load i8, ptr %i.y, align 1, !tbaa !464
  %i.ag = icmp ult i8 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a

bb.ab:                                            ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144, %bb.aa
  %.1219 = phi ptr [ %i.eb, %bb.aa ], [ %i.eu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144 ]
  %storemerge122 = phi ptr [ %i.ew, %bb.aa ], [ %i.ev, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144 ]
  %.1109 = phi ptr [ %i.ao, %bb.aa ], [ %i.ev, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144 ]
  %.1106 = phi i8 [ %i.ea, %bb.aa ], [ %.0105285, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, %bb.m, %bb.ab
  %i.ex = phi i1 [ %i.dz, %bb.ab ], [ %i.bf, %bb.m ], [ %i.bf, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.bf, %bb.n ]
  %.1231 = phi ptr [ %.5235, %bb.ab ], [ %.0102286, %bb.m ], [ %.0230281, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.n ] ; 2 uses
  %.2226 = phi ptr [ %storemerge122, %bb.ab ], [ %.1225, %bb.m ], [ %.1225, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.1225, %bb.n ] ; 2 uses
  %.2220 = phi ptr [ %.1219, %bb.ab ], [ %i.s, %bb.m ], [ %i.s, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.s, %bb.n ] ; 2 uses
  %.2110 = phi ptr [ %.1109, %bb.ab ], [ %i.ao, %bb.m ], [ %i.ao, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %i.ao, %bb.n ] ; 2 uses
  %.2107 = phi i8 [ %.1106, %bb.ab ], [ %.0105285, %bb.m ], [ %.0105285, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0105285, %bb.n ] ; 2 uses
  %not. = xor i1 %i.ex, true
  %i.ey = sext i1 %not. to i64
  %.1 = add i64 %.0289, %i.ey
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !516
  %i.ez = getelementptr inbounds nuw i8, ptr %.0102286, i64 8 ; 2 uses
  %i.fa = icmp ne i64 %.099288, 0
  %.neg = sext i1 %i.fa to i64
  %i.fb = add i64 %.099288, %.neg                 ; 2 uses
  %i.fc = icmp ne i64 %i.ak, 0
  %.neg123 = sext i1 %i.fc to i64
  %i.fd = add i64 %.sroa.speculated208, %.neg123  ; 2 uses
  %i.fe = add i64 %.0236280, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fe, 0
  br i1 %.not, label %.thread.loopexit, label %bb.b, !llvm.loop !12105

.thread.loopexit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ff = phi ptr [ %i.ao, %.sink.split.i ], [ %i.s, %bb.f ]
  %.4 = phi i64 [ %i.fd, %.sink.split.i ], [ %.sroa.speculated208, %bb.f ]
  %.0236.lcssa.ph = phi i64 [ 0, %.sink.split.i ], [ %.0236280, %bb.f ]
  %.0230.lcssa.ph = phi ptr [ %.1231, %.sink.split.i ], [ %.0230281, %bb.f ]
  %.0224.lcssa.ph = phi ptr [ %.2226, %.sink.split.i ], [ %.0224282, %bb.f ]
  %.0218.lcssa.ph = phi ptr [ %.2220, %.sink.split.i ], [ %.0218283, %bb.f ]
  %.0108.lcssa.ph = phi ptr [ %.2110, %.sink.split.i ], [ %.0108284, %bb.f ]
  %.0105.lcssa.ph = phi i8 [ %.2107, %.sink.split.i ], [ %.0105285, %bb.f ]
  %.0102.lcssa.ph = phi ptr [ %i.ez, %.sink.split.i ], [ %.0102286, %bb.f ]
  %.099.lcssa.ph = phi i64 [ %i.fb, %.sink.split.i ], [ %.099288, %bb.f ]
  %i.fg = trunc nuw i8 %.0105.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %i.fh = phi ptr [ %i.i, %bb.a ], [ %i.ff, %.thread.loopexit ] ; 8 uses
  %.1322 = phi i64 [ %.sroa.speculated, %bb.a ], [ %.4, %.thread.loopexit ] ; 5 uses
  %.0236.lcssa = phi i64 [ 0, %bb.a ], [ %.0236.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0230.lcssa = phi ptr [ %i.f, %bb.a ], [ %.0230.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0224.lcssa = phi ptr [ %i.h, %bb.a ], [ %.0224.lcssa.ph, %.thread.loopexit ] ; 9 uses
  %.0218.lcssa = phi ptr [ %1, %bb.a ], [ %.0218.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0108.lcssa = phi ptr [ %i.i, %bb.a ], [ %.0108.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.0105.lcssa = phi i1 [ true, %bb.a ], [ %i.fg, %.thread.loopexit ]
  %.0102.lcssa = phi ptr [ %0, %bb.a ], [ %.0102.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.099.lcssa = phi i64 [ %i.m, %bb.a ], [ %.099.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = icmp eq ptr %.0108.lcssa, %.0224.lcssa  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr %i.k, ptr %i.d, align 8, !tbaa !516
  %.idx254 = shl nuw nsw i64 %6, 2
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx254 ; 7 uses
  %i.fl = icmp ne i64 %6, 0
  %or.cond3 = select i1 %i.fl, i1 %.0105.lcssa, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %.thread
  br i1 %i.fj, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not6.i = icmp eq ptr %.0218.lcssa, %.0224.lcssa
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %bb.ad
  %i.fm = load i32, ptr %i.k, align 4, !tbaa !505
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i145
  %.07.i = phi ptr [ %.0218.lcssa, %.lr.ph.i145 ], [ %i.fp, %bb.af ] ; 3 uses
  %i.fn = load i32, ptr %.07.i, align 4, !tbaa !505
  %i.fo = icmp slt i32 %i.fm, %i.fn
  br i1 %i.fo, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i146 = icmp eq ptr %i.fp, %.0224.lcssa
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !202

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0218.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fp, %bb.af ] ; 5 uses
  %i.fq = ptrtoint ptr %.0224.lcssa to i64        ; 3 uses
  %i.fr = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 2
  %i.fu = sub nsw i64 0, %i.ft
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fu ; 5 uses
  %.not8.i.i147 = icmp eq ptr %.0.lcssa.i, %.0224.lcssa
  br i1 %.not8.i.i147, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.fw = add i64 %i.fq, -4
  %i.fx = sub i64 %i.fw, %i.fr                    ; 2 uses
  %i.fy = lshr i64 %i.fx, 2
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check407 = icmp ult i64 %i.fx, 60
  %i.ga = sub i64 %i.fq, %i.fi
  %diff.check405 = icmp ugt i64 %i.ga, -32
  %or.cond459 = select i1 %min.iters.check407, i1 true, i1 %diff.check405
  br i1 %or.cond459, label %.lr.ph.i.i148.preheader474, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph.i.i148.preheader
  %n.vec409 = and i64 %i.fz, 9223372036854775800  ; 3 uses
  %i.gb = shl i64 %n.vec409, 2                    ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fv, i64 %i.gb
  %i.gd = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gb
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.ge = shl i64 %index411, 2                    ; 2 uses
  %next.gep412 = getelementptr i8, ptr %i.fv, i64 %i.ge ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep413, i64 16
  %wide.load414 = load <4 x i32>, ptr %next.gep413, align 4, !tbaa !505
  %wide.load415 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !505
  %i.gg = getelementptr i8, ptr %next.gep412, i64 16
  store <4 x i32> %wide.load414, ptr %next.gep412, align 4, !tbaa !505
  store <4 x i32> %wide.load415, ptr %i.gg, align 4, !tbaa !505
  %index.next416 = add nuw i64 %index411, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.gh, label %middle.block417, label %vector.body410, !llvm.loop !12106

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.fz, %n.vec409
  br i1 %cmp.n418, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader474

.lr.ph.i.i148.preheader474:                       ; preds = %.lr.ph.i.i148.preheader, %middle.block417
  %.010.i.i149.ph = phi ptr [ %i.fv, %.lr.ph.i.i148.preheader ], [ %i.gc, %middle.block417 ]
  %.079.i.i150.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i148.preheader ], [ %i.gd, %middle.block417 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader474, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.gk, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader474 ] ; 2 uses
  %.079.i.i150 = phi ptr [ %i.gj, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader474 ] ; 2 uses
  %i.gi = load i32, ptr %.079.i.i150, align 4, !tbaa !505
  store i32 %i.gi, ptr %.010.i.i149, align 4, !tbaa !505
  %i.gj = getelementptr inbounds nuw i8, ptr %.079.i.i150, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.010.i.i149, i64 4
  %.not.i.i151 = icmp eq ptr %i.gj, %.0224.lcssa
  br i1 %.not.i.i151, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148, !llvm.loop !12107

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153: ; preds = %.lr.ph.i.i148, %middle.block417, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, %bb.ac
  %.5229 = phi ptr [ %i.gl, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0224.lcssa, %bb.ac ] ; 2 uses
  %.5223 = phi ptr [ %i.fv, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0218.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fh, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.5425 = ptrtoaddr ptr %.5 to i64
  %.not36.i = icmp eq ptr %.5, %.5223
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gp, %bb.ai ], [ %.5229, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gs, %bb.ai ], [ %.5223, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gp, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.gq, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.gm = load i32, ptr %.0.i, align 4, !tbaa !505 ; 2 uses
  %i.gn = load i32, ptr %.021.i.ph, align 4, !tbaa !505 ; 2 uses
  %i.go = icmp slt i32 %i.gm, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.go, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.gm, ptr %.024.i, align 4, !tbaa !505
  %i.gr = icmp eq ptr %i.gq, %i.fk
  br i1 %i.gr, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !204

bb.ai:                                            ; preds = %.preheader.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.gn, ptr %.024.i, align 4, !tbaa !505
  %i.gt = icmp eq ptr %i.gs, %.5
  br i1 %i.gt, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !204

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5229, %bb.ag ], [ %i.gp, %bb.ai ], [ %i.gp, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5223, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gs, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fk, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !516
  %.not8.i.i155 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i155, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %.223.i423 = ptrtoaddr ptr %.226.i to i64
  %.226.i422 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %i.gu = add i64 %.5425, -4
  %i.gv = sub i64 %i.gu, %.226.i422               ; 2 uses
  %i.gw = lshr i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check427 = icmp ult i64 %i.gv, 44
  %i.gy = sub i64 %.226.i422, %.223.i423
  %diff.check424 = icmp ugt i64 %i.gy, -32
  %or.cond460 = select i1 %min.iters.check427, i1 true, i1 %diff.check424
  br i1 %or.cond460, label %.lr.ph.i.i156.preheader464, label %vector.ph428

vector.ph428:                                     ; preds = %.lr.ph.i.i156.preheader
  %n.vec429 = and i64 %i.gx, 9223372036854775800  ; 3 uses
  %i.gz = shl i64 %n.vec429, 2                    ; 2 uses
  %i.ha = getelementptr i8, ptr %.226.i, i64 %i.gz ; 2 uses
  %i.hb = getelementptr i8, ptr %.223.i, i64 %i.gz
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.hc = shl i64 %index431, 2                    ; 2 uses
  %next.gep432 = getelementptr i8, ptr %.226.i, i64 %i.hc ; 2 uses
  %next.gep433 = getelementptr i8, ptr %.223.i, i64 %i.hc ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep433, i64 16
  %wide.load434 = load <4 x i32>, ptr %next.gep433, align 4, !tbaa !505
  %wide.load435 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !505
  %i.he = getelementptr i8, ptr %next.gep432, i64 16
  store <4 x i32> %wide.load434, ptr %next.gep432, align 4, !tbaa !505
  store <4 x i32> %wide.load435, ptr %i.he, align 4, !tbaa !505
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.hf, label %middle.block437, label %vector.body430, !llvm.loop !12108

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.gx, %n.vec429
  br i1 %cmp.n438, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader464

.lr.ph.i.i156.preheader464:                       ; preds = %.lr.ph.i.i156.preheader, %middle.block437
  %.010.i.i157.ph = phi ptr [ %.226.i, %.lr.ph.i.i156.preheader ], [ %i.ha, %middle.block437 ]
  %.079.i.i158.ph = phi ptr [ %.223.i, %.lr.ph.i.i156.preheader ], [ %i.hb, %middle.block437 ]
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %.lr.ph.i.i156.preheader464, %.lr.ph.i.i156
  %.010.i.i157 = phi ptr [ %i.hi, %.lr.ph.i.i156 ], [ %.010.i.i157.ph, %.lr.ph.i.i156.preheader464 ] ; 2 uses
  %.079.i.i158 = phi ptr [ %i.hh, %.lr.ph.i.i156 ], [ %.079.i.i158.ph, %.lr.ph.i.i156.preheader464 ] ; 2 uses
  %i.hg = load i32, ptr %.079.i.i158, align 4, !tbaa !505
  store i32 %i.hg, ptr %.010.i.i157, align 4, !tbaa !505
  %i.hh = getelementptr inbounds nuw i8, ptr %.079.i.i158, i64 4 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.010.i.i157, i64 4 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.hh, %.5
  br i1 %.not.i.i159, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156, !llvm.loop !12109

bb.aj:                                            ; preds = %.thread
  br i1 %i.fj, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.hj = phi ptr [ %i.fh, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1322, %bb.aj ], [ %.sroa.speculated208, %.thread.thread ] ; 3 uses
  %.0236277 = phi i64 [ %.0236.lcssa, %bb.aj ], [ %.0236280, %.thread.thread ] ; 3 uses
  %.0230274 = phi ptr [ %.0230.lcssa, %bb.aj ], [ %.0230281, %.thread.thread ] ; 3 uses
  %.0224272 = phi ptr [ %.0224.lcssa, %bb.aj ], [ %.0224282, %.thread.thread ] ; 5 uses
  %.0218270 = phi ptr [ %.0218.lcssa, %bb.aj ], [ %.0218283, %.thread.thread ] ; 5 uses
  %.0108268 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108284, %.thread.thread ] ; 3 uses
  %.0102264 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102286, %.thread.thread ] ; 3 uses
  %.099261 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099288, %.thread.thread ] ; 3 uses
  %i.hk = phi ptr [ %i.fk, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0218270, %.0108268
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %.0218270386 = ptrtoaddr ptr %.0224272 to i64
  %.0224272385 = ptrtoaddr ptr %.0218270 to i64   ; 2 uses
  %.0108268388 = ptrtoaddr ptr %.0108268 to i64
  %i.hl = add i64 %.0108268388, -4
  %i.hm = sub i64 %i.hl, %.0224272385             ; 2 uses
  %i.hn = lshr i64 %i.hm, 2
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %min.iters.check390 = icmp ult i64 %i.hm, 44
  %i.hp = sub i64 %.0224272385, %.0218270386
  %diff.check387 = icmp ugt i64 %i.hp, -32
  %or.cond461 = select i1 %min.iters.check390, i1 true, i1 %diff.check387
  br i1 %or.cond461, label %.lr.ph.i.i163.preheader475, label %vector.ph391

vector.ph391:                                     ; preds = %.lr.ph.i.i163.preheader
  %n.vec392 = and i64 %i.ho, 9223372036854775800  ; 3 uses
  %i.hq = shl i64 %n.vec392, 2                    ; 2 uses
  %i.hr = getelementptr i8, ptr %.0224272, i64 %i.hq ; 2 uses
  %i.hs = getelementptr i8, ptr %.0218270, i64 %i.hq
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph391
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next399, %vector.body393 ] ; 2 uses
  %i.ht = shl i64 %index394, 2                    ; 2 uses
  %next.gep395 = getelementptr i8, ptr %.0224272, i64 %i.ht ; 2 uses
  %next.gep396 = getelementptr i8, ptr %.0218270, i64 %i.ht ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep396, i64 16
  %wide.load397 = load <4 x i32>, ptr %next.gep396, align 4, !tbaa !505
  %wide.load398 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !505
  %i.hv = getelementptr i8, ptr %next.gep395, i64 16
  store <4 x i32> %wide.load397, ptr %next.gep395, align 4, !tbaa !505
  store <4 x i32> %wide.load398, ptr %i.hv, align 4, !tbaa !505
  %index.next399 = add nuw i64 %index394, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.hw, label %middle.block400, label %vector.body393, !llvm.loop !12110

middle.block400:                                  ; preds = %vector.body393
  %cmp.n401 = icmp eq i64 %i.ho, %n.vec392
  br i1 %cmp.n401, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader475

.lr.ph.i.i163.preheader475:                       ; preds = %.lr.ph.i.i163.preheader, %middle.block400
  %.010.i.i164.ph = phi ptr [ %.0224272, %.lr.ph.i.i163.preheader ], [ %i.hr, %middle.block400 ]
  %.079.i.i165.ph = phi ptr [ %.0218270, %.lr.ph.i.i163.preheader ], [ %i.hs, %middle.block400 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader475, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.hz, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader475 ] ; 2 uses
  %.079.i.i165 = phi ptr [ %i.hy, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader475 ] ; 2 uses
  %i.hx = load i32, ptr %.079.i.i165, align 4, !tbaa !505
  store i32 %i.hx, ptr %.010.i.i164, align 4, !tbaa !505
  %i.hy = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.hy, %.0108268
  br i1 %.not.i.i166, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !12111

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i156, %middle.block400, %middle.block437, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.ia = phi ptr [ %i.fh, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fh, %bb.aj ], [ %i.hj, %bb.ak ], [ %i.fh, %middle.block437 ], [ %i.hj, %middle.block400 ], [ %i.fh, %.lr.ph.i.i156 ], [ %i.hj, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1322, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated208, %.thread.thread ], [ %.1322, %bb.aj ], [ %.2, %bb.ak ], [ %.1322, %middle.block437 ], [ %.2, %middle.block400 ], [ %.1322, %.lr.ph.i.i156 ], [ %.2, %.lr.ph.i.i163 ]
  %.0236278 = phi i64 [ %.0236.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0236280, %.thread.thread ], [ %.0236.lcssa, %bb.aj ], [ %.0236277, %bb.ak ], [ %.0236.lcssa, %middle.block437 ], [ %.0236277, %middle.block400 ], [ %.0236.lcssa, %.lr.ph.i.i156 ], [ %.0236277, %.lr.ph.i.i163 ]
  %.0230275 = phi ptr [ %.0230.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0230281, %.thread.thread ], [ %.0230.lcssa, %bb.aj ], [ %.0230274, %bb.ak ], [ %.0230.lcssa, %middle.block437 ], [ %.0230274, %middle.block400 ], [ %.0230.lcssa, %.lr.ph.i.i156 ], [ %.0230274, %.lr.ph.i.i163 ]
  %.0102265 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102286, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102264, %bb.ak ], [ %.0102.lcssa, %middle.block437 ], [ %.0102264, %middle.block400 ], [ %.0102.lcssa, %.lr.ph.i.i156 ], [ %.0102264, %.lr.ph.i.i163 ]
  %.099262 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099288, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099261, %bb.ak ], [ %.099.lcssa, %middle.block437 ], [ %.099261, %middle.block400 ], [ %.099.lcssa, %.lr.ph.i.i156 ], [ %.099261, %.lr.ph.i.i163 ]
  %i.ib = phi ptr [ %i.fk, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fk, %bb.aj ], [ %i.hk, %bb.ak ], [ %i.fk, %middle.block437 ], [ %i.hk, %middle.block400 ], [ %i.fk, %.lr.ph.i.i156 ], [ %i.hk, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0224282, %.thread.thread ], [ %.0224.lcssa, %bb.aj ], [ %.0224272, %bb.ak ], [ %i.ha, %middle.block437 ], [ %i.hr, %middle.block400 ], [ %i.hi, %.lr.ph.i.i156 ], [ %i.hz, %.lr.ph.i.i163 ]
  %i.ic = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPNS_9container4test12copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %.0102265, ptr noundef %.0230275, ptr noundef %i.ia, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ib, ptr noundef %.6, i64 noundef %2, i64 noundef %.0236278, i64 noundef %.099262, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !516 ; 5 uses
  %.not8.i.i169 = icmp eq ptr %i.id, %i.ib
  br i1 %.not8.i.i169, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader

.lr.ph.i.i170.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  %i.ie = ptrtoaddr ptr %i.id to i64              ; 2 uses
  %i.if = ptrtoaddr ptr %i.ic to i64
  %i.ig = ptrtoaddr ptr %i.ib to i64
  %i.ih = add i64 %i.ig, -4
  %i.ii = sub i64 %i.ih, %i.ie                    ; 2 uses
  %i.ij = lshr i64 %i.ii, 2
  %i.ik = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %min.iters.check444 = icmp ult i64 %i.ii, 44
  %i.il = sub i64 %i.ie, %i.if
  %diff.check442 = icmp ugt i64 %i.il, -32
  %or.cond462 = or i1 %min.iters.check444, %diff.check442
  br i1 %or.cond462, label %.lr.ph.i.i170.preheader463, label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph.i.i170.preheader
  %n.vec446 = and i64 %i.ik, 9223372036854775800  ; 3 uses
  %i.im = shl i64 %n.vec446, 2                    ; 2 uses
  %i.in = getelementptr i8, ptr %i.ic, i64 %i.im
  %i.io = getelementptr i8, ptr %i.id, i64 %i.im
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph445
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next453, %vector.body447 ] ; 2 uses
  %i.ip = shl i64 %index448, 2                    ; 2 uses
  %next.gep449 = getelementptr i8, ptr %i.ic, i64 %i.ip ; 2 uses
  %next.gep450 = getelementptr i8, ptr %i.id, i64 %i.ip ; 2 uses
  %i.iq = getelementptr i8, ptr %next.gep450, i64 16
  %wide.load451 = load <4 x i32>, ptr %next.gep450, align 4, !tbaa !505
  %wide.load452 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !505
  %i.ir = getelementptr i8, ptr %next.gep449, i64 16
  store <4 x i32> %wide.load451, ptr %next.gep449, align 4, !tbaa !505
  store <4 x i32> %wide.load452, ptr %i.ir, align 4, !tbaa !505
  %index.next453 = add nuw i64 %index448, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next453, %n.vec446
  br i1 %i.is, label %middle.block454, label %vector.body447, !llvm.loop !12112

middle.block454:                                  ; preds = %vector.body447
  %cmp.n455 = icmp eq i64 %i.ik, %n.vec446
  br i1 %cmp.n455, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader463

.lr.ph.i.i170.preheader463:                       ; preds = %.lr.ph.i.i170.preheader, %middle.block454
  %.010.i.i171.ph = phi ptr [ %i.ic, %.lr.ph.i.i170.preheader ], [ %i.in, %middle.block454 ]
  %.079.i.i172.ph = phi ptr [ %i.id, %.lr.ph.i.i170.preheader ], [ %i.io, %middle.block454 ]
  br label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.preheader463, %.lr.ph.i.i170
  %.010.i.i171 = phi ptr [ %i.iv, %.lr.ph.i.i170 ], [ %.010.i.i171.ph, %.lr.ph.i.i170.preheader463 ] ; 2 uses
  %.079.i.i172 = phi ptr [ %i.iu, %.lr.ph.i.i170 ], [ %.079.i.i172.ph, %.lr.ph.i.i170.preheader463 ] ; 2 uses
  %i.it = load i32, ptr %.079.i.i172, align 4, !tbaa !505
  store i32 %i.it, ptr %.010.i.i171, align 4, !tbaa !505
  %i.iu = getelementptr inbounds nuw i8, ptr %.079.i.i172, i64 4 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.010.i.i171, i64 4
  %.not.i.i173 = icmp eq ptr %i.iu, %i.ib
  br i1 %.not.i.i173, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170, !llvm.loop !12113

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175: ; preds = %.lr.ph.i.i170, %middle.block454, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !516
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not293 = icmp eq i64 %i.e, 0
  br i1 %.not293, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx266 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx266, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ew, %.sink.split.i ] ; 3 uses
  %.0303 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099302 = phi i64 [ %i.m, %.lr.ph ], [ %i.eu, %.sink.split.i ] ; 7 uses
  %.0102300 = phi ptr [ %0, %.lr.ph ], [ %i.es, %.sink.split.i ] ; 15 uses
  %.0105299 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108298 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 15 uses
  %.0232297 = phi ptr [ %1, %.lr.ph ], [ %.2234, %.sink.split.i ] ; 12 uses
  %.0238296 = phi ptr [ %i.h, %.lr.ph ], [ %.2240, %.sink.split.i ] ; 12 uses
  %.0244295 = phi ptr [ %i.f, %.lr.ph ], [ %.1245, %.sink.split.i ] ; 13 uses
  %.0250294 = phi i64 [ %i.e, %.lr.ph ], [ %i.ex, %.sink.split.i ] ; 5 uses
  %i.t = icmp ult i64 %.099302, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099302, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0102300, i64 %.02226.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0102300, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !505 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !505 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !375
  %i.af = load i64, ptr %i.y, align 8, !tbaa !375
  %i.ag = icmp ult i64 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i
end_hunk_14
begin_hunk_15_@_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test12copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEENS0_7move_opENS0_13adaptive_xbufIS4_S5_mEEEEvT_SJ_SJ_T0_T1_RT2_:bb.a
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4
  store i32 -2147483648, ptr %i.ej, align 4, !tbaa !505
  %i.ek = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.em = getelementptr [4 x i8], ptr %i.dk, i64 %.031.i63
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  store i32 -2147483648, ptr %i.en, align 4, !tbaa !505
  %i.eo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ep = add i32 %i.eo, -1
  store i32 %i.ep, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.eq = getelementptr [4 x i8], ptr %i.dk, i64 %.031.i63
  %i.er = getelementptr i8, ptr %i.eq, i64 -12
  store i32 -2147483648, ptr %i.er, align 4, !tbaa !505
  %i.es = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.et = add i32 %i.es, -1
  store i32 %i.et, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.eu = add i64 %.031.i63, -4                   ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.eu
  store i32 -2147483648, ptr %i.ev, align 4, !tbaa !505
  %i.ew = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %.not17.i64.3 = icmp eq i64 %i.eu, %i.dh
  br i1 %.not17.i64.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, label %.lr.ph.i62, !llvm.loop !188

bb.j:                                             ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.idx27.i65 = shl i64 %i.dj, 2                  ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %1, i64 %.idx27.i65 ; 2 uses
  %.not8.i18.i66 = icmp eq i64 %i.dj, 0
  br i1 %.not8.i18.i66, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i71, label %.lr.ph.i19.i67.preheader

.lr.ph.i19.i67.preheader:                         ; preds = %bb.j
  %i.ez = add i64 %.idx27.i65, -4                 ; 2 uses
  %i.fa = lshr exact i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check214 = icmp ult i64 %i.ez, 44
  %i.fc = sub i64 %i.d, %i.dl
  %diff.check212 = icmp ugt i64 %i.fc, -32
  %or.cond251 = select i1 %min.iters.check214, i1 true, i1 %diff.check212
  br i1 %or.cond251, label %.lr.ph.i19.i67.preheader258, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph.i19.i67.preheader
  %n.vec216 = and i64 %i.fb, 9223372036854775800  ; 3 uses
  %i.fd = shl i64 %n.vec216, 2                    ; 2 uses
  %i.fe = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 2 uses
  %i.ff = getelementptr i8, ptr %1, i64 %i.fd
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body217 ] ; 2 uses
  %i.fg = shl i64 %index218, 2                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.dk, i64 %i.fg ; 2 uses
  %next.gep220 = getelementptr i8, ptr %1, i64 %i.fg ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load221 = load <4 x i32>, ptr %next.gep220, align 4, !tbaa !505
  %wide.load222 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !505
  %i.fi = getelementptr i8, ptr %next.gep219, i64 16
  store <4 x i32> %wide.load221, ptr %next.gep219, align 4, !tbaa !505
  store <4 x i32> %wide.load222, ptr %i.fi, align 4, !tbaa !505
  %index.next223 = add nuw i64 %index218, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.fj, label %middle.block224, label %vector.body217, !llvm.loop !12266

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.fb, %n.vec216
  br i1 %cmp.n225, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i71, label %.lr.ph.i19.i67.preheader258

.lr.ph.i19.i67.preheader258:                      ; preds = %.lr.ph.i19.i67.preheader, %middle.block224
  %.010.i20.i68.ph = phi ptr [ %i.dk, %.lr.ph.i19.i67.preheader ], [ %i.fe, %middle.block224 ]
  %.079.i21.i69.ph = phi ptr [ %1, %.lr.ph.i19.i67.preheader ], [ %i.ff, %middle.block224 ]
  br label %.lr.ph.i19.i67

.lr.ph.i19.i67:                                   ; preds = %.lr.ph.i19.i67.preheader258, %.lr.ph.i19.i67
  %.010.i20.i68 = phi ptr [ %i.fm, %.lr.ph.i19.i67 ], [ %.010.i20.i68.ph, %.lr.ph.i19.i67.preheader258 ] ; 2 uses
  %.079.i21.i69 = phi ptr [ %i.fl, %.lr.ph.i19.i67 ], [ %.079.i21.i69.ph, %.lr.ph.i19.i67.preheader258 ] ; 2 uses
  %i.fk = load i32, ptr %.079.i21.i69, align 4, !tbaa !505
  store i32 %i.fk, ptr %.010.i20.i68, align 4, !tbaa !505
  %i.fl = getelementptr inbounds nuw i8, ptr %.079.i21.i69, i64 4 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.010.i20.i68, i64 4 ; 2 uses
  %.not.i22.i70 = icmp eq ptr %i.fl, %i.ey
  br i1 %.not.i22.i70, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i71, label %.lr.ph.i19.i67, !llvm.loop !12267

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i71: ; preds = %.lr.ph.i19.i67, %middle.block224, %bb.j
  %.0.lcssa.i23.i72 = phi ptr [ %i.dk, %bb.j ], [ %i.fe, %middle.block224 ], [ %i.fm, %.lr.ph.i19.i67 ]
  %.not10.i.i73 = icmp eq i64 %.idx27.i65, %i.dg
  br i1 %.not10.i.i73, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, label %.lr.ph.i25.i74

.lr.ph.i25.i74:                                   ; preds = %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i71, %.lr.ph.i25.i74
  %.012.i.i75 = phi ptr [ %i.fq, %.lr.ph.i25.i74 ], [ %i.ey, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i71 ] ; 2 uses
  %.0911.i.i76 = phi ptr [ %i.fr, %.lr.ph.i25.i74 ], [ %.0.lcssa.i23.i72, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i71 ] ; 2 uses
  %i.fn = load i32, ptr %.012.i.i75, align 4, !tbaa !505
  store i32 %i.fn, ptr %.0911.i.i76, align 4, !tbaa !505
  %i.fo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i75, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i76, i64 4
  %.not.i26.i77 = icmp eq ptr %i.fq, %.114.i50
  br i1 %.not.i26.i77, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, label %.lr.ph.i25.i74, !llvm.loop !189

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78: ; preds = %.lr.ph.i62.prol.loopexit, %.lr.ph.i62, %.lr.ph.i25.i74, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i60, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit24.i71
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !624
  %.not28.i = icmp eq ptr %.114.i50, %1
  br i1 %.not28.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dg
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %bb.k
  %indvar230 = phi i64 [ 0, %.lr.ph.i79.preheader ], [ %indvar.next231, %bb.k ] ; 2 uses
  %.031.i80 = phi ptr [ %1, %.lr.ph.i79.preheader ], [ %.031..i, %bb.k ] ; 3 uses
  %.01930.i = phi ptr [ %i.fs, %.lr.ph.i79.preheader ], [ %..01930.i, %bb.k ] ; 7 uses
  %.02129.i = phi ptr [ %.114.i50, %.lr.ph.i79.preheader ], [ %i.gs, %bb.k ] ; 5 uses
  %i.ft = icmp eq ptr %0, %.031.i80
  br i1 %i.ft, label %.lr.ph.i.i.i83.preheader, label %bb.k

.lr.ph.i.i.i83.preheader:                         ; preds = %.lr.ph.i79
  %.01930.i229.le = ptrtoaddr ptr %.01930.i to i64 ; 2 uses
  %i.fu = add i64 %.01930.i229.le, -4
  %i.fv = sub i64 %i.fu, %i.dl                    ; 2 uses
  %i.fw = lshr i64 %i.fv, 2
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check234 = icmp ult i64 %i.fv, 92
  br i1 %min.iters.check234, label %.lr.ph.i.i.i83.preheader252, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.lr.ph.i.i.i83.preheader
  %i.fy = shl i64 %indvar230, 2
  %i.fz = sub i64 %i.fy, %.114.i50195.le
  %i.ga = add i64 %i.fz, %.01930.i229.le
  %i.gb = add i64 %i.ga, -1
  %diff.check232 = icmp ult i64 %i.gb, 31
  br i1 %diff.check232, label %.lr.ph.i.i.i83.preheader252, label %vector.ph235

vector.ph235:                                     ; preds = %vector.memcheck228
  %n.vec236 = and i64 %i.fx, 9223372036854775800  ; 3 uses
  %i.gc = mul i64 %n.vec236, -4                   ; 2 uses
  %i.gd = getelementptr i8, ptr %.02129.i, i64 %i.gc
  %i.ge = getelementptr i8, ptr %.01930.i, i64 %i.gc
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph235
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next243, %vector.body237 ] ; 2 uses
  %i.gf = mul i64 %index238, -4                   ; 2 uses
  %next.gep239 = getelementptr i8, ptr %.02129.i, i64 %i.gf ; 2 uses
  %next.gep240 = getelementptr i8, ptr %.01930.i, i64 %i.gf ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %next.gep240, i64 -16
  %i.gh = getelementptr inbounds i8, ptr %next.gep240, i64 -32
  %wide.load241 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !505
  %wide.load242 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !505
  %i.gi = getelementptr inbounds i8, ptr %next.gep239, i64 -16
  %i.gj = getelementptr inbounds i8, ptr %next.gep239, i64 -32
  store <4 x i32> %wide.load241, ptr %i.gi, align 4, !tbaa !505
  store <4 x i32> %wide.load242, ptr %i.gj, align 4, !tbaa !505
  %index.next243 = add nuw i64 %index238, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.gk, label %middle.block244, label %vector.body237, !llvm.loop !12268

middle.block244:                                  ; preds = %vector.body237
  %cmp.n245 = icmp eq i64 %i.fx, %n.vec236
  br i1 %cmp.n245, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i83.preheader252

.lr.ph.i.i.i83.preheader252:                      ; preds = %vector.memcheck228, %.lr.ph.i.i.i83.preheader, %middle.block244
  %.010.i.i.i84.ph = phi ptr [ %.02129.i, %vector.memcheck228 ], [ %.02129.i, %.lr.ph.i.i.i83.preheader ], [ %i.gd, %middle.block244 ]
  %.079.i.i.i85.ph = phi ptr [ %.01930.i, %vector.memcheck228 ], [ %.01930.i, %.lr.ph.i.i.i83.preheader ], [ %i.ge, %middle.block244 ]
  br label %.lr.ph.i.i.i83

.lr.ph.i.i.i83:                                   ; preds = %.lr.ph.i.i.i83.preheader252, %.lr.ph.i.i.i83
  %.010.i.i.i84 = phi ptr [ %i.gm, %.lr.ph.i.i.i83 ], [ %.010.i.i.i84.ph, %.lr.ph.i.i.i83.preheader252 ]
  %.079.i.i.i85 = phi ptr [ %i.gl, %.lr.ph.i.i.i83 ], [ %.079.i.i.i85.ph, %.lr.ph.i.i.i83.preheader252 ]
  %i.gl = getelementptr inbounds i8, ptr %.079.i.i.i85, i64 -4 ; 3 uses
  %i.gm = getelementptr inbounds i8, ptr %.010.i.i.i84, i64 -4 ; 2 uses
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !505
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !505
  %.not.i.i.i86 = icmp eq ptr %i.dk, %i.gl
  br i1 %.not.i.i.i86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i.i.i83, !llvm.loop !12269

bb.k:                                             ; preds = %.lr.ph.i79
  %i.go = getelementptr inbounds i8, ptr %.01930.i, i64 -4 ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %.031.i80, i64 -4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !505 ; 2 uses
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !505 ; 2 uses
  %.not24.i81 = icmp slt i32 %i.gq, %i.gr         ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.02129.i, i64 -4 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.gq, i32 %i.gr)
  %..01930.i = select i1 %.not24.i81, ptr %i.go, ptr %.01930.i ; 2 uses
  %.031..i = select i1 %.not24.i81, ptr %.031.i80, ptr %i.gp
  store i32 %..i, ptr %i.gs, align 4, !tbaa !505
  %.not.i82 = icmp eq ptr %i.dk, %..01930.i
  %indvar.next231 = add i64 %indvar230, 1
  br i1 %.not.i82, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %.lr.ph.i79, !llvm.loop !231

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %bb.k, %.lr.ph.i.i.i83, %middle.block189, %middle.block244, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit78, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test12copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %8 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 4 uses
  %9 = alloca %"class.boost::movelib::range_xbuf.224", align 8 ; 6 uses
  %10 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 2 uses
  %11 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 2 uses
  %12 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 2 uses
  %i.c = icmp ne i64 %4, 0
  %i.d = icmp ne i64 %3, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not76 = icmp ugt i64 %4, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %9, align 8, !tbaa !632
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !633
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !634
  %i.h = load ptr, ptr %7, align 8, !tbaa !638, !nonnull !418
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.h, ptr %8, align 8, !tbaa !628
  call void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test12copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEENS0_7move_opENS0_10range_xbufIS5_mSG_EEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %0, align 4, !tbaa !505    ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !505
  %.not91 = icmp slt i32 %i.k, %i.l
  br i1 %.not91, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.o = load i32, ptr %1, align 4, !tbaa !505
  store i32 %i.o, ptr %0, align 4, !tbaa !505
  store i32 %i.k, ptr %1, align 4, !tbaa !505
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %i.i, 16
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %7, align 8, !tbaa !638, !nonnull !418
  store ptr %i.s, ptr %10, align 8, !tbaa !628
  call void @_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container4test12copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %10)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.t = icmp ugt i64 %3, %4
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = lshr i64 %3, 1                           ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %.not16.i = icmp eq ptr %2, %1
  %.pre = ptrtoint ptr %1 to i64                  ; 3 uses
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.w = ptrtoint ptr %2 to i64
  %i.x = sub i64 %i.w, %.pre
  %i.y = ashr exact i64 %i.x, 2
  %i.z = load i32, ptr %i.v, align 4, !tbaa !505
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.018.i = phi i64 [ %i.y, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %.01317.i = phi ptr [ %1, %.lr.ph.i ], [ %.114.i, %bb.k ] ; 2 uses
  %i.aa = lshr i64 %.018.i, 1                     ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !505
  %.not15.i = icmp slt i32 %i.z, %i.ac            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.neg.i = xor i64 %i.aa, -1
  %i.ae = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.ad ; 3 uses
  %.1.i = select i1 %.not15.i, i64 %i.aa, i64 %i.ae ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit, label %bb.k, !llvm.loop !217

_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %bb.k
  %.pre104 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.j, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit
  %.pre-phi105 = phi i64 [ %.pre104, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.j ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %1, %bb.j ]
  %i.af = sub i64 %.pre-phi105, %.pre
  %i.ag = ashr exact i64 %i.af, 2
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ah = lshr i64 %4, 1                          ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah ; 2 uses
  %.not16.i78 = icmp eq ptr %1, %0
  %.pre102 = ptrtoint ptr %0 to i64               ; 3 uses
  br i1 %.not16.i78, label %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.l
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.aj, %.pre102
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !505
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i79
  %.018.i80 = phi i64 [ %i.al, %.lr.ph.i79 ], [ %.1.i85, %bb.m ] ; 2 uses
  %.01317.i81 = phi ptr [ %0, %.lr.ph.i79 ], [ %.114.i84, %bb.m ] ; 2 uses
  %i.an = lshr i64 %.018.i80, 1                   ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.01317.i81, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !505
  %.not15.i82 = icmp slt i32 %i.ap, %i.am         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.neg.i83 = xor i64 %i.an, -1
  %i.ar = add i64 %.018.i80, %.neg.i83
  %.114.i84 = select i1 %.not15.i82, ptr %i.aq, ptr %.01317.i81 ; 3 uses
  %.1.i85 = select i1 %.not15.i82, i64 %i.ar, i64 %i.an ; 2 uses
  %.not.i86 = icmp eq i64 %.1.i85, 0
  br i1 %.not.i86, label %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit, label %bb.m, !llvm.loop !230

_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre106 = ptrtoint ptr %.114.i84 to i64
  br label %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.l, %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit
  %.pre-phi107 = phi i64 [ %.pre106, %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.pre102, %bb.l ]
  %.013.lcssa.i87 = phi ptr [ %.114.i84, %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %0, %bb.l ]
  %i.as = sub i64 %.pre-phi107, %.pre102
  %i.at = ashr exact i64 %i.as, 2
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ai, %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ] ; 11 uses
  %.070 = phi i64 [ %i.u, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.at, %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ] ; 3 uses
  %.069 = phi i64 [ %i.ag, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ah, %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi ptr [ %i.v, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ], [ %.013.lcssa.i87, %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ] ; 18 uses
  %.0133 = ptrtoaddr ptr %.0 to i64               ; 5 uses
  %.071127 = ptrtoaddr ptr %.071 to i64           ; 3 uses
  %i.au = sub i64 %3, %.070                       ; 3 uses
  %i.av = icmp ule i64 %i.au, %.069
  %.not.i88 = icmp ugt i64 %.069, %6
  %or.cond.i = or i1 %i.av, %.not.i88
  br i1 %or.cond.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not8.i.i = icmp eq ptr %1, %.071
  br i1 %.not8.i.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.p
  %i.aw = add i64 %.071127, -4
  %i.ax = sub i64 %i.aw, %i.b                     ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 44
  %i.ba = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond220 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond220, label %.lr.ph.i.i.preheader234, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.bb = shl i64 %n.vec, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %5, i64 %i.bb     ; 2 uses
  %i.bd = getelementptr i8, ptr %1, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.be ; 2 uses
  %next.gep128 = getelementptr i8, ptr %1, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep128, align 4, !tbaa !505
  %wide.load129 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !505
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !505
  store <4 x i32> %wide.load129, ptr %i.bg, align 4, !tbaa !505
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !12270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader234

.lr.ph.i.i.preheader234:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.bc, %middle.block ]
  %.079.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader234, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader234 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader234 ] ; 2 uses
  %i.bi = load i32, ptr %.079.i.i, align 4, !tbaa !505
  store i32 %i.bi, ptr %.010.i.i, align 4, !tbaa !505
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, %.071
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !12271

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.p
  %.0.lcssa.i.i = phi ptr [ %5, %bb.p ], [ %i.bc, %middle.block ], [ %i.bk, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i151 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %.not8.i37.i = icmp eq ptr %.0, %1
  br i1 %.not8.i37.i, label %_ZN5boost13move_backwardIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i.preheader

.lr.ph.i38.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bl = add i64 %i.b, -4
  %i.bm = sub i64 %i.bl, %.0133                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.bm, 44
  %i.bp = sub i64 %.071127, %i.b
  %diff.check132 = icmp ugt i64 %i.bp, -32
  %or.cond221 = select i1 %min.iters.check135, i1 true, i1 %diff.check132
  br i1 %or.cond221, label %.lr.ph.i38.i.preheader233, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i38.i.preheader
  %n.vec137 = and i64 %i.bo, 9223372036854775800  ; 3 uses
  %i.bq = mul i64 %n.vec137, -4                   ; 2 uses
  %i.br = getelementptr i8, ptr %.071, i64 %i.bq
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body138 ] ; 2 uses
  %i.bt = mul i64 %index139, -4                   ; 2 uses
  %next.gep140 = getelementptr i8, ptr %.071, i64 %i.bt ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %next.gep141, i64 -16
  %i.bv = getelementptr inbounds i8, ptr %next.gep141, i64 -32
  %wide.load142 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !505
  %wide.load143 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !505
  %i.bw = getelementptr inbounds i8, ptr %next.gep140, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep140, i64 -32
  store <4 x i32> %wide.load142, ptr %i.bw, align 4, !tbaa !505
  store <4 x i32> %wide.load143, ptr %i.bx, align 4, !tbaa !505
  %index.next144 = add nuw i64 %index139, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next144, %n.vec137
  br i1 %i.by, label %middle.block145, label %vector.body138, !llvm.loop !12272

middle.block145:                                  ; preds = %vector.body138
  %cmp.n146 = icmp eq i64 %i.bo, %n.vec137
  br i1 %cmp.n146, label %_ZN5boost13move_backwardIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i.preheader233

.lr.ph.i38.i.preheader233:                        ; preds = %.lr.ph.i38.i.preheader, %middle.block145
  %.010.i39.i.ph = phi ptr [ %.071, %.lr.ph.i38.i.preheader ], [ %i.br, %middle.block145 ]
  %.079.i40.i.ph = phi ptr [ %1, %.lr.ph.i38.i.preheader ], [ %i.bs, %middle.block145 ]
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader233, %.lr.ph.i38.i
  %.010.i39.i = phi ptr [ %i.ca, %.lr.ph.i38.i ], [ %.010.i39.i.ph, %.lr.ph.i38.i.preheader233 ]
  %.079.i40.i = phi ptr [ %i.bz, %.lr.ph.i38.i ], [ %.079.i40.i.ph, %.lr.ph.i38.i.preheader233 ]
  %i.bz = getelementptr inbounds i8, ptr %.079.i40.i, i64 -4 ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %.010.i39.i, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !505
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !505
  %.not.i41.i = icmp eq ptr %.0, %i.bz
  br i1 %.not.i41.i, label %_ZN5boost13move_backwardIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i38.i, !llvm.loop !12273

_ZN5boost13move_backwardIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i38.i, %middle.block145, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %.not8.i43.i = icmp eq ptr %5, %.0.lcssa.i.i
  br i1 %.not8.i43.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i.preheader

.lr.ph.i44.i.preheader:                           ; preds = %_ZN5boost13move_backwardIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.cc = add i64 %.0.lcssa.i.i151, -4
  %i.cd = sub i64 %i.cc, %i.a                     ; 2 uses
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check153 = icmp ult i64 %i.cd, 44
  %i.cg = sub i64 %i.a, %.0133
  %diff.check150 = icmp ugt i64 %i.cg, -32
  %or.cond222 = select i1 %min.iters.check153, i1 true, i1 %diff.check150
  br i1 %or.cond222, label %.lr.ph.i44.i.preheader230, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.i44.i.preheader
  %n.vec155 = and i64 %i.cf, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec155, 2                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0, i64 %i.ch    ; 2 uses
  %i.cj = getelementptr i8, ptr %5, i64 %i.ch
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 2 uses
  %i.ck = shl i64 %index157, 2                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.0, i64 %i.ck ; 2 uses
  %next.gep159 = getelementptr i8, ptr %5, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep159, i64 16
  %wide.load160 = load <4 x i32>, ptr %next.gep159, align 4, !tbaa !505
  %wide.load161 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !505
  %i.cm = getelementptr i8, ptr %next.gep158, i64 16
  store <4 x i32> %wide.load160, ptr %next.gep158, align 4, !tbaa !505
  store <4 x i32> %wide.load161, ptr %i.cm, align 4, !tbaa !505
  %index.next162 = add nuw i64 %index157, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.cn, label %middle.block163, label %vector.body156, !llvm.loop !12274

middle.block163:                                  ; preds = %vector.body156
  %cmp.n164 = icmp eq i64 %i.cf, %n.vec155
  br i1 %cmp.n164, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i.preheader230

.lr.ph.i44.i.preheader230:                        ; preds = %.lr.ph.i44.i.preheader, %middle.block163
  %.010.i45.i.ph = phi ptr [ %.0, %.lr.ph.i44.i.preheader ], [ %i.ci, %middle.block163 ]
  %.079.i46.i.ph = phi ptr [ %5, %.lr.ph.i44.i.preheader ], [ %i.cj, %middle.block163 ]
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader230, %.lr.ph.i44.i
  %.010.i45.i = phi ptr [ %i.cq, %.lr.ph.i44.i ], [ %.010.i45.i.ph, %.lr.ph.i44.i.preheader230 ] ; 2 uses
  %.079.i46.i = phi ptr [ %i.cp, %.lr.ph.i44.i ], [ %.079.i46.i.ph, %.lr.ph.i44.i.preheader230 ] ; 2 uses
  %i.co = load i32, ptr %.079.i46.i, align 4, !tbaa !505
  store i32 %i.co, ptr %.010.i45.i, align 4, !tbaa !505
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i46.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i45.i, i64 4 ; 2 uses
  %.not.i47.i = icmp eq ptr %i.cp, %.0.lcssa.i.i
  br i1 %.not.i47.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i44.i, !llvm.loop !12275

bb.q:                                             ; preds = %bb.n
  %.not34.i = icmp ugt i64 %i.au, %6
  br i1 %.not34.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not35.i = icmp eq i64 %3, %.070
  br i1 %.not35.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not8.i50.i = icmp eq ptr %.0, %1
  br i1 %.not8.i50.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i.preheader

.lr.ph.i51.i.preheader:                           ; preds = %bb.s
  %i.cr = add i64 %i.b, -4
  %i.cs = sub i64 %i.cr, %.0133                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check170 = icmp ult i64 %i.cs, 44
  %i.cv = sub i64 %.0133, %i.a
  %diff.check168 = icmp ugt i64 %i.cv, -32
  %or.cond223 = or i1 %min.iters.check170, %diff.check168
  br i1 %or.cond223, label %.lr.ph.i51.i.preheader228, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i51.i.preheader
  %n.vec172 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.cw = shl i64 %n.vec172, 2                    ; 2 uses
  %i.cx = getelementptr i8, ptr %5, i64 %i.cw     ; 2 uses
  %i.cy = getelementptr i8, ptr %.0, i64 %i.cw
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.cz = shl i64 %index174, 2                    ; 2 uses
  %next.gep175 = getelementptr i8, ptr %5, i64 %i.cz ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.0, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep176, i64 16
  %wide.load177 = load <4 x i32>, ptr %next.gep176, align 4, !tbaa !505
  %wide.load178 = load <4 x i32>, ptr %i.da, align 4, !tbaa !505
  %i.db = getelementptr i8, ptr %next.gep175, i64 16
  store <4 x i32> %wide.load177, ptr %next.gep175, align 4, !tbaa !505
  store <4 x i32> %wide.load178, ptr %i.db, align 4, !tbaa !505
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.dc, label %middle.block180, label %vector.body173, !llvm.loop !12276

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %i.cu, %n.vec172
  br i1 %cmp.n181, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i.preheader228

.lr.ph.i51.i.preheader228:                        ; preds = %.lr.ph.i51.i.preheader, %middle.block180
  %.010.i52.i.ph = phi ptr [ %5, %.lr.ph.i51.i.preheader ], [ %i.cx, %middle.block180 ]
  %.079.i53.i.ph = phi ptr [ %.0, %.lr.ph.i51.i.preheader ], [ %i.cy, %middle.block180 ]
  br label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.i51.i.preheader228, %.lr.ph.i51.i
  %.010.i52.i = phi ptr [ %i.df, %.lr.ph.i51.i ], [ %.010.i52.i.ph, %.lr.ph.i51.i.preheader228 ] ; 2 uses
  %.079.i53.i = phi ptr [ %i.de, %.lr.ph.i51.i ], [ %.079.i53.i.ph, %.lr.ph.i51.i.preheader228 ] ; 2 uses
  %i.dd = load i32, ptr %.079.i53.i, align 4, !tbaa !505
  store i32 %i.dd, ptr %.010.i52.i, align 4, !tbaa !505
  %i.de = getelementptr inbounds nuw i8, ptr %.079.i53.i, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.010.i52.i, i64 4 ; 2 uses
  %.not.i54.i = icmp eq ptr %i.de, %1
  br i1 %.not.i54.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit56.i, label %.lr.ph.i51.i, !llvm.loop !12277

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit56.i: ; preds = %.lr.ph.i51.i, %middle.block180, %bb.s
  %.0.lcssa.i55.i = phi ptr [ %5, %bb.s ], [ %i.cx, %middle.block180 ], [ %i.df, %.lr.ph.i51.i ] ; 3 uses
  %.0.lcssa.i55.i204 = ptrtoaddr ptr %.0.lcssa.i55.i to i64
  %.not8.i57.i = icmp eq ptr %1, %.071
  br i1 %.not8.i57.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader

.lr.ph.i58.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit56.i
  %i.dg = add i64 %.071127, -4
  %i.dh = sub i64 %i.dg, %i.b                     ; 2 uses
  %i.di = lshr i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check187 = icmp ult i64 %i.dh, 44
  %i.dk = sub i64 %i.b, %.0133
  %diff.check185 = icmp ugt i64 %i.dk, -32
  %or.cond224 = select i1 %min.iters.check187, i1 true, i1 %diff.check185
  br i1 %or.cond224, label %.lr.ph.i58.i.preheader227, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph.i58.i.preheader
  %n.vec189 = and i64 %i.dj, 9223372036854775800  ; 3 uses
  %i.dl = shl i64 %n.vec189, 2                    ; 2 uses
  %i.dm = getelementptr i8, ptr %.0, i64 %i.dl    ; 2 uses
  %i.dn = getelementptr i8, ptr %1, i64 %i.dl
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %i.do = shl i64 %index191, 2                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.0, i64 %i.do ; 2 uses
  %next.gep193 = getelementptr i8, ptr %1, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <4 x i32>, ptr %next.gep193, align 4, !tbaa !505
  %wide.load195 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !505
  %i.dq = getelementptr i8, ptr %next.gep192, i64 16
  store <4 x i32> %wide.load194, ptr %next.gep192, align 4, !tbaa !505
  store <4 x i32> %wide.load195, ptr %i.dq, align 4, !tbaa !505
  %index.next196 = add nuw i64 %index191, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.dr, label %middle.block197, label %vector.body190, !llvm.loop !12278

middle.block197:                                  ; preds = %vector.body190
  %cmp.n198 = icmp eq i64 %i.dj, %n.vec189
  br i1 %cmp.n198, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i.preheader227

.lr.ph.i58.i.preheader227:                        ; preds = %.lr.ph.i58.i.preheader, %middle.block197
  %.010.i59.i.ph = phi ptr [ %.0, %.lr.ph.i58.i.preheader ], [ %i.dm, %middle.block197 ]
  %.079.i60.i.ph = phi ptr [ %1, %.lr.ph.i58.i.preheader ], [ %i.dn, %middle.block197 ]
  br label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph.i58.i.preheader227, %.lr.ph.i58.i
  %.010.i59.i = phi ptr [ %i.du, %.lr.ph.i58.i ], [ %.010.i59.i.ph, %.lr.ph.i58.i.preheader227 ] ; 2 uses
  %.079.i60.i = phi ptr [ %i.dt, %.lr.ph.i58.i ], [ %.079.i60.i.ph, %.lr.ph.i58.i.preheader227 ] ; 2 uses
  %i.ds = load i32, ptr %.079.i60.i, align 4, !tbaa !505
  store i32 %i.ds, ptr %.010.i59.i, align 4, !tbaa !505
  %i.dt = getelementptr inbounds nuw i8, ptr %.079.i60.i, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i59.i, i64 4 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.dt, %.071
  br i1 %.not.i61.i, label %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit63.i, label %.lr.ph.i58.i, !llvm.loop !12279

_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit63.i: ; preds = %.lr.ph.i58.i, %middle.block197, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit56.i
  %.0.lcssa.i62.i = phi ptr [ %.0, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit56.i ], [ %i.dm, %middle.block197 ], [ %i.du, %.lr.ph.i58.i ] ; 7 uses
  %.not8.i64.i = icmp eq ptr %5, %.0.lcssa.i55.i
  br i1 %.not8.i64.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit63.i
  %.0.lcssa.i62.i202 = ptrtoaddr ptr %.0.lcssa.i62.i to i64
  %i.dv = add i64 %.0.lcssa.i55.i204, -4
  %i.dw = sub i64 %i.dv, %i.a                     ; 2 uses
  %i.dx = lshr i64 %i.dw, 2
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check206 = icmp ult i64 %i.dw, 44
  %i.dz = sub i64 %i.a, %.0.lcssa.i62.i202
  %diff.check203 = icmp ugt i64 %i.dz, -32
  %or.cond225 = select i1 %min.iters.check206, i1 true, i1 %diff.check203
  br i1 %or.cond225, label %.lr.ph.i65.i.preheader226, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph.i65.i.preheader
  %n.vec208 = and i64 %i.dy, 9223372036854775800  ; 3 uses
  %i.ea = shl i64 %n.vec208, 2                    ; 2 uses
  %i.eb = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ea
  %i.ec = getelementptr i8, ptr %5, i64 %i.ea
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next215, %vector.body209 ] ; 2 uses
  %i.ed = shl i64 %index210, 2                    ; 2 uses
  %next.gep211 = getelementptr i8, ptr %.0.lcssa.i62.i, i64 %i.ed ; 2 uses
  %next.gep212 = getelementptr i8, ptr %5, i64 %i.ed ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep212, i64 16
  %wide.load213 = load <4 x i32>, ptr %next.gep212, align 4, !tbaa !505
  %wide.load214 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !505
  %i.ef = getelementptr i8, ptr %next.gep211, i64 16
  store <4 x i32> %wide.load213, ptr %next.gep211, align 4, !tbaa !505
  store <4 x i32> %wide.load214, ptr %i.ef, align 4, !tbaa !505
  %index.next215 = add nuw i64 %index210, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next215, %n.vec208
  br i1 %i.eg, label %middle.block216, label %vector.body209, !llvm.loop !12280

middle.block216:                                  ; preds = %vector.body209
  %cmp.n217 = icmp eq i64 %i.dy, %n.vec208
  br i1 %cmp.n217, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i.preheader226

.lr.ph.i65.i.preheader226:                        ; preds = %.lr.ph.i65.i.preheader, %middle.block216
  %.010.i66.i.ph = phi ptr [ %.0.lcssa.i62.i, %.lr.ph.i65.i.preheader ], [ %i.eb, %middle.block216 ]
  %.079.i67.i.ph = phi ptr [ %5, %.lr.ph.i65.i.preheader ], [ %i.ec, %middle.block216 ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader226, %.lr.ph.i65.i
  %.010.i66.i = phi ptr [ %i.ej, %.lr.ph.i65.i ], [ %.010.i66.i.ph, %.lr.ph.i65.i.preheader226 ] ; 2 uses
  %.079.i67.i = phi ptr [ %i.ei, %.lr.ph.i65.i ], [ %.079.i67.i.ph, %.lr.ph.i65.i.preheader226 ] ; 2 uses
  %i.eh = load i32, ptr %.079.i67.i, align 4, !tbaa !505
  store i32 %i.eh, ptr %.010.i66.i, align 4, !tbaa !505
  %i.ei = getelementptr inbounds nuw i8, ptr %.079.i67.i, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.010.i66.i, i64 4
  %.not.i68.i = icmp eq ptr %i.ei, %.0.lcssa.i55.i
  br i1 %.not.i68.i, label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %.lr.ph.i65.i, !llvm.loop !12281

bb.t:                                             ; preds = %bb.q
  %i.ek = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test12copyable_intEEET_S6_S6_S6_(ptr noundef %.0, ptr noundef %1, ptr noundef %.071)
  br label %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit: ; preds = %.lr.ph.i44.i, %.lr.ph.i65.i, %middle.block163, %middle.block216, %bb.o, %_ZN5boost13move_backwardIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, %bb.r, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit63.i, %bb.t
  %.0.i = phi ptr [ %.071, %bb.r ], [ %i.ek, %bb.t ], [ %.0.lcssa.i62.i, %middle.block216 ], [ %.0, %bb.o ], [ %.0, %_ZN5boost13move_backwardIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i ], [ %.0.lcssa.i62.i, %_ZN5boost4moveIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit63.i ], [ %.0.lcssa.i62.i, %.lr.ph.i65.i ], [ %i.ci, %middle.block163 ], [ %i.cq, %.lr.ph.i44.i ] ; 2 uses
  %i.el = load ptr, ptr %7, align 8, !tbaa !638, !nonnull !418
  store ptr %i.el, ptr %11, align 8, !tbaa !628
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test12copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef %0, ptr noundef %.0, ptr noundef %.0.i, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %11)
  %i.em = sub i64 %4, %.069
  %i.en = load ptr, ptr %7, align 8, !tbaa !638, !nonnull !418
  store ptr %i.en, ptr %12, align 8, !tbaa !628
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test12copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef %.0.i, ptr noundef %.071, ptr noundef %2, i64 noundef %i.au, i64 noundef %i.em, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dead_on_return %12)
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.h, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container4test12copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = sub i64 %i.d, %i.a
  %i.f = icmp slt i64 %i.c, %i.e
  br i1 %i.f, label %.preheader74, label %.preheader75

.preheader75:                                     ; preds = %bb.a
  %.not80 = icmp eq ptr %1, %2
  br i1 %.not80, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader75
  %.not16.i54117 = icmp eq ptr %1, %0
  br i1 %.not16.i54117, label %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.thread, label %.lr.ph.i55

.preheader74:                                     ; preds = %bb.a
  %.not5283 = icmp eq ptr %0, %1
  br i1 %.not5283, label %.critedge.thread, label %.lr.ph86

.lr.ph86.loopexit:                                ; preds = %bb.c
  br label %.lr.ph86, !llvm.loop !12282

.lr.ph86:                                         ; preds = %.preheader74, %.lr.ph86.loopexit
  %.04085 = phi ptr [ %i.r, %.lr.ph86.loopexit ], [ %0, %.preheader74 ] ; 2 uses
  %.04584 = phi ptr [ %.013.lcssa.i, %.lr.ph86.loopexit ], [ %1, %.preheader74 ] ; 5 uses
  %.not16.i = icmp eq ptr %2, %.04584
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph86
  %i.g = ptrtoint ptr %.04584 to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = load i32, ptr %.04085, align 4, !tbaa !505
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01317.i = phi ptr [ %.04584, %.lr.ph.i ], [ %.114.i, %bb.b ] ; 2 uses
  %i.k = lshr i64 %.018.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !505
  %.not15.i = icmp slt i32 %i.j, %i.m             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.o = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.n ; 2 uses
  %.1.i = select i1 %.not15.i, i64 %i.k, i64 %i.o ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.b, !llvm.loop !217

_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.b, %.lr.ph86
  %.013.lcssa.i = phi ptr [ %.04584, %.lr.ph86 ], [ %.114.i, %bb.b ] ; 5 uses
  %i.p = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test12copyable_intEEET_S6_S6_S6_(ptr noundef nonnull %.04085, ptr noundef %.04584, ptr noundef %.013.lcssa.i)
  %i.q = icmp eq ptr %.013.lcssa.i, %2
  br i1 %i.q, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %bb.c
  %.141 = phi ptr [ %i.r, %bb.c ], [ %i.p, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.141, i64 4 ; 4 uses
  %.not53 = icmp eq ptr %i.r, %.013.lcssa.i
  br i1 %.not53, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.s = load i32, ptr %i.r, align 4, !tbaa !505
  %i.t = load i32, ptr %.013.lcssa.i, align 4, !tbaa !505
  %.not73 = icmp slt i32 %i.s, %i.t
  br i1 %.not73, label %.preheader, label %.lr.ph86.loopexit, !llvm.loop !12282

.lr.ph.loopexit:                                  ; preds = %bb.g
  br label %.lr.ph.i55, !llvm.loop !12283

_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.thread: ; preds = %.lr.ph.preheader
  %i.u = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test12copyable_intEEET_S6_S6_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge.thread

.lr.ph.i55:                                       ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.14681119 = phi ptr [ %.114.i60, %.lr.ph.loopexit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04282118 = phi ptr [ %i.ai, %.lr.ph.loopexit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.04282118, i64 -4
  %i.w = ptrtoint ptr %.14681119 to i64
  %i.x = sub i64 %i.w, %i.b
  %i.y = ashr exact i64 %i.x, 2
  %i.z = load i32, ptr %i.v, align 4, !tbaa !505
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i55
  %.018.i56 = phi i64 [ %i.y, %.lr.ph.i55 ], [ %.1.i61, %bb.d ] ; 2 uses
  %.01317.i57 = phi ptr [ %0, %.lr.ph.i55 ], [ %.114.i60, %bb.d ] ; 2 uses
  %i.aa = lshr i64 %.018.i56, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.01317.i57, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !505
  %.not15.i58 = icmp slt i32 %i.ac, %i.z          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.neg.i59 = xor i64 %i.aa, -1
  %i.ae = add i64 %.018.i56, %.neg.i59
  %.114.i60 = select i1 %.not15.i58, ptr %i.ad, ptr %.01317.i57 ; 6 uses
  %.1.i61 = select i1 %.not15.i58, i64 %i.ae, i64 %i.aa ; 2 uses
  %.not.i62 = icmp eq i64 %.1.i61, 0
  br i1 %.not.i62, label %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, label %bb.d, !llvm.loop !230

_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %bb.d
  %i.af = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test12copyable_intEEET_S6_S6_S6_(ptr noundef %.114.i60, ptr noundef %.14681119, ptr noundef nonnull %.04282118)
  %i.ag = icmp eq ptr %.114.i60, %0
  br i1 %i.ag, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit
  %i.ah = getelementptr inbounds i8, ptr %.114.i60, i64 -4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.143 = phi ptr [ %i.af, %bb.e ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.143, i64 -4 ; 3 uses
  %.not51 = icmp eq ptr %.114.i60, %i.ai
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %.143, i64 -8
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !505
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !505
  %.not72 = icmp slt i32 %i.ak, %i.al
  br i1 %.not72, label %bb.f, label %.lr.ph.loopexit, !llvm.loop !12283

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit, %.preheader, %.preheader75, %.preheader74, %_ZN5boost7movelib11upper_boundIPNS_9container4test12copyable_intES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEET_SG_SG_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test12copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEENS0_7move_opENS0_10range_xbufIS5_mSG_EEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
end_hunk_15
