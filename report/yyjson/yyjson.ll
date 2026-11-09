Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@unsafe_yyjson_mut_ptr_putx:bb.a
  %.1187796 = phi ptr [ %.0186, %.lr.ph799 ], [ %.2188, %ptr_next_token.exit ] ; 4 uses
  %.1191795 = phi ptr [ %.0190, %.lr.ph799 ], [ %i.hv, %ptr_next_token.exit ] ; 5 uses
  %.1194794 = phi ptr [ %.0193, %.lr.ph799 ], [ %i.ip, %ptr_next_token.exit ] ; 3 uses
  %.2425793 = phi i64 [ %.1424, %.lr.ph799 ], [ %.4427, %ptr_next_token.exit ] ; 3 uses
  %.2430792 = phi i64 [ %.1429, %.lr.ph799 ], [ %.4432, %ptr_next_token.exit ] ; 7 uses
  %.2437791 = phi ptr [ %.1436, %.lr.ph799 ], [ %.3438, %ptr_next_token.exit ] ; 3 uses
  %.2437791913 = ptrtoaddr ptr %.2437791 to i64
  %.not.i293 = icmp eq i64 %.2425793, 0
  br i1 %.not.i293, label %bb.az, label %bb.be, !prof !62

bb.az:                                            ; preds = %bb.ay
  br i1 %.not599, label %ptr_new_key.exit301.thread, label %bb.ba, !prof !45

bb.ba:                                            ; preds = %bb.az
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !86 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %bb.bb, label %unsafe_yyjson_mut_val.exit.i341, !prof !45

bb.bb:                                            ; preds = %bb.ba
  %i.fy = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fs, i64 noundef 1)
  br i1 %i.fy, label %.unsafe_yyjson_mut_val.exit.i341_crit_edge, label %ptr_new_key.exit301.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i341_crit_edge:       ; preds = %bb.bb
  %.pre926 = load ptr, ptr %i.ft, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i341

unsafe_yyjson_mut_val.exit.i341:                  ; preds = %.unsafe_yyjson_mut_val.exit.i341_crit_edge, %bb.ba
  %i.fz = phi ptr [ %.pre926, %.unsafe_yyjson_mut_val.exit.i341_crit_edge ], [ %i.fw, %bb.ba ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store ptr %i.ga, ptr %i.ft, align 8, !tbaa !86
  %.not.i343.not = icmp eq ptr %i.fz, null
  br i1 %.not.i343.not, label %ptr_new_key.exit301.thread, label %bb.bc, !prof !103

bb.bc:                                            ; preds = %unsafe_yyjson_mut_val.exit.i341
  %i.gb = load ptr, ptr %i.fr, align 8, !tbaa !78
  %i.gc = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %.not.i21.i = icmp ugt i64 %i.gf, %.2430792
  br i1 %.not.i21.i, label %unsafe_yyjson_mut_str_alc.exit.i, label %bb.bd, !prof !62

bb.bd:                                            ; preds = %bb.bc
  %i.gg = add i64 %.2430792, 1
  %i.gh = tail call zeroext i1 @unsafe_yyjson_str_pool_grow(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.fs, i64 noundef %i.gg)
  br i1 %i.gh, label %unsafe_yyjson_mut_str_alc.exit.ithread-pre-split, label %ptr_new_key.exit301.thread, !prof !62

unsafe_yyjson_mut_str_alc.exit.ithread-pre-split: ; preds = %bb.bd
  %.pr = load ptr, ptr %i.fq, align 8, !tbaa !77
  br label %unsafe_yyjson_mut_str_alc.exit.i

unsafe_yyjson_mut_str_alc.exit.i:                 ; preds = %unsafe_yyjson_mut_str_alc.exit.ithread-pre-split, %bb.bc
  %i.gi = phi ptr [ %.pr, %unsafe_yyjson_mut_str_alc.exit.ithread-pre-split ], [ %i.gc, %bb.bc ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.2430792 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  store ptr %i.gk, ptr %i.fq, align 8, !tbaa !77
  %.not.i.i344 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i344, label %ptr_new_key.exit301.thread, label %ptr_new_key.exit301, !prof !103

bb.be:                                            ; preds = %bb.ay
  %i.gl = getelementptr inbounds nuw i8, ptr %.1194794, i64 %.2430792
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.2425793
  %i.gn = add i64 %.2425793, %.2430792            ; 3 uses
  %i.go = load ptr, ptr %i.fr, align 8, !tbaa !78
  %i.gp = load ptr, ptr %i.fq, align 8, !tbaa !77 ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %.not.i327 = icmp ugt i64 %i.gs, %i.gn
  br i1 %.not.i327, label %unsafe_yyjson_mut_str_alc.exit, label %bb.bf, !prof !62

bb.bf:                                            ; preds = %bb.be
  %i.gt = add i64 %i.gn, 1
  %i.gu = tail call zeroext i1 @unsafe_yyjson_str_pool_grow(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.fs, i64 noundef %i.gt)
  br i1 %i.gu, label %unsafe_yyjson_mut_str_alc.exitthread-pre-split, label %ptr_new_key.exit301.thread, !prof !62

unsafe_yyjson_mut_str_alc.exitthread-pre-split:   ; preds = %bb.bf
  %.pr508 = load ptr, ptr %i.fq, align 8, !tbaa !77
  br label %unsafe_yyjson_mut_str_alc.exit

unsafe_yyjson_mut_str_alc.exit:                   ; preds = %unsafe_yyjson_mut_str_alc.exitthread-pre-split, %bb.be
  %i.gv = phi ptr [ %.pr508, %unsafe_yyjson_mut_str_alc.exitthread-pre-split ], [ %i.gp, %bb.be ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.gx, ptr %i.fq, align 8, !tbaa !77
  %.not29.i294 = icmp eq ptr %i.gv, null
  br i1 %.not29.i294, label %ptr_new_key.exit301.thread, label %.lr.ph773, !prof !450

.lr.ph773:                                        ; preds = %unsafe_yyjson_mut_str_alc.exit, %bb.bh
  %.0.i296772 = phi ptr [ %i.he, %bb.bh ], [ %i.gv, %unsafe_yyjson_mut_str_alc.exit ] ; 2 uses
  %.026.i295771 = phi ptr [ %i.hd, %bb.bh ], [ %.1194794, %unsafe_yyjson_mut_str_alc.exit ] ; 3 uses
  %i.gy = load i8, ptr %.026.i295771, align 1, !tbaa !100 ; 2 uses
  %.not30.i298 = icmp eq i8 %i.gy, 126
  br i1 %.not30.i298, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph773
  %i.gz = getelementptr inbounds nuw i8, ptr %.026.i295771, i64 1 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !100
  %i.hb = icmp eq i8 %i.ha, 48
  %i.hc = select i1 %i.hb, i8 126, i8 47
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph773
  %storemerge.i299 = phi i8 [ %i.hc, %bb.bg ], [ %i.gy, %.lr.ph773 ]
  %.1.i300 = phi ptr [ %i.gz, %bb.bg ], [ %.026.i295771, %.lr.ph773 ]
  store i8 %storemerge.i299, ptr %.0.i296772, align 1, !tbaa !100
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.i300, i64 1 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i296772, i64 1 ; 2 uses
  %i.hf = icmp ult ptr %i.hd, %i.gm
  br i1 %i.hf, label %.lr.ph773, label %._crit_edge, !llvm.loop !448

._crit_edge:                                      ; preds = %bb.bh
  store i8 0, ptr %i.he, align 1, !tbaa !100
  br i1 %.not599, label %ptr_new_key.exit301.thread, label %bb.bi, !prof !45

bb.bi:                                            ; preds = %._crit_edge
  %i.hg = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.hh = load ptr, ptr %i.ft, align 8, !tbaa !86 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %bb.bj, label %unsafe_yyjson_mut_val.exit.i361, !prof !45

bb.bj:                                            ; preds = %bb.bi
  %i.hj = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fs, i64 noundef 1)
  br i1 %i.hj, label %.unsafe_yyjson_mut_val.exit.i361_crit_edge, label %ptr_new_key.exit301.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i361_crit_edge:       ; preds = %bb.bj
  %.pre925 = load ptr, ptr %i.ft, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i361

unsafe_yyjson_mut_val.exit.i361:                  ; preds = %.unsafe_yyjson_mut_val.exit.i361_crit_edge, %bb.bi
  %i.hk = phi ptr [ %.pre925, %.unsafe_yyjson_mut_val.exit.i361_crit_edge ], [ %i.hh, %bb.bi ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store ptr %i.hl, ptr %i.ft, align 8, !tbaa !86
  %.not.i363.not = icmp eq ptr %i.hk, null
  br i1 %.not.i363.not, label %ptr_new_key.exit301.thread, label %ptr_new_key.exit301.thread519, !prof !451

ptr_new_key.exit301:                              ; preds = %unsafe_yyjson_mut_str_alc.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gi, ptr nonnull align 1 %.1194794, i64 %.2430792, i1 false)
  store i8 0, ptr %i.gj, align 1, !tbaa !100
  br label %ptr_new_key.exit301.thread519

ptr_new_key.exit301.thread:                       ; preds = %bb.bd, %unsafe_yyjson_mut_str_alc.exit.i, %bb.bj, %unsafe_yyjson_mut_val.exit.i361, %bb.bf, %bb.bb, %._crit_edge, %bb.az, %unsafe_yyjson_mut_val.exit.i341, %unsafe_yyjson_mut_str_alc.exit
  %.not242 = icmp eq ptr %8, null
  br i1 %.not242, label %yyjson_mut_obj_add.exit, label %bb.bk

bb.bk:                                            ; preds = %ptr_new_key.exit301.thread
  store i32 6, ptr %8, align 8, !tbaa !156
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.34, ptr %i.hm, align 8, !tbaa !157
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.hn, align 8, !tbaa !158
  br label %yyjson_mut_obj_add.exit

ptr_new_key.exit301.thread519:                    ; preds = %unsafe_yyjson_mut_val.exit.i361, %ptr_new_key.exit301
  %.sink1109 = phi ptr [ %i.fz, %ptr_new_key.exit301 ], [ %i.hk, %unsafe_yyjson_mut_val.exit.i361 ] ; 8 uses
  %.sink1105 = phi ptr [ %i.gi, %ptr_new_key.exit301 ], [ %i.gv, %unsafe_yyjson_mut_val.exit.i361 ]
  %i.ho = shl i64 %.2430792, 8
  %i.hp = or disjoint i64 %i.ho, 5
  store i64 %i.hp, ptr %.sink1109, align 8, !tbaa !99
  %i.hq = getelementptr inbounds nuw i8, ptr %.sink1109, i64 8
  store ptr %.sink1105, ptr %i.hq, align 8, !tbaa !100
  %i.hr = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.hs = load ptr, ptr %i.ft, align 8, !tbaa !86 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %bb.bl, label %unsafe_yyjson_mut_val.exit.i, !prof !45

bb.bl:                                            ; preds = %ptr_new_key.exit301.thread519
  %i.hu = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fs, i64 noundef 1)
  br i1 %i.hu, label %.unsafe_yyjson_mut_val.exit.i_crit_edge, label %unsafe_yyjson_mut_val.exit.i.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i_crit_edge:          ; preds = %bb.bl
  %.pre927 = load ptr, ptr %i.ft, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i

unsafe_yyjson_mut_val.exit.i:                     ; preds = %.unsafe_yyjson_mut_val.exit.i_crit_edge, %ptr_new_key.exit301.thread519
  %i.hv = phi ptr [ %.pre927, %.unsafe_yyjson_mut_val.exit.i_crit_edge ], [ %i.hs, %ptr_new_key.exit301.thread519 ] ; 9 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr %i.hw, ptr %i.ft, align 8, !tbaa !86
  %.not9.i.not = icmp eq ptr %i.hv, null
  br i1 %.not9.i.not, label %unsafe_yyjson_mut_val.exit.i.thread, label %bb.bn, !prof !103

unsafe_yyjson_mut_val.exit.i.thread:              ; preds = %bb.bl, %unsafe_yyjson_mut_val.exit.i
  %.not244 = icmp eq ptr %8, null
  br i1 %.not244, label %yyjson_mut_obj_add.exit, label %bb.bm

bb.bm:                                            ; preds = %unsafe_yyjson_mut_val.exit.i.thread
  store i32 6, ptr %8, align 8, !tbaa !156
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.34, ptr %i.hx, align 8, !tbaa !157
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.hy, align 8, !tbaa !158
  br label %yyjson_mut_obj_add.exit

bb.bn:                                            ; preds = %unsafe_yyjson_mut_val.exit.i
  store i64 7, ptr %i.hv, align 8, !tbaa !102
  %.not245 = icmp eq ptr %.1187796, null
  br i1 %.not245, label %yyjson_mut_obj_add.exit303, label %yyjson_mut_is_obj.exit316

yyjson_mut_is_obj.exit316:                        ; preds = %bb.bn
  %i.hz = load i64, ptr %.1191795, align 8, !tbaa !99 ; 4 uses
  %i.ia = and i64 %i.hz, 7
  %i.ib = icmp eq i64 %i.ia, 7
  br i1 %i.ib, label %bb.bo, label %yyjson_mut_obj_add.exit303, !prof !62

bb.bo:                                            ; preds = %yyjson_mut_is_obj.exit316
  %i.ic = load i64, ptr %.sink1109, align 8, !tbaa !99
  %i.id = and i64 %i.ic, 7
  %i.ie = icmp eq i64 %i.id, 5
  br i1 %i.ie, label %bb.bp, label %yyjson_mut_obj_add.exit303, !prof !137

bb.bp:                                            ; preds = %bb.bo
  %.not.i304 = icmp ult i64 %i.hz, 256
  br i1 %.not.i304, label %unsafe_yyjson_mut_obj_add.exit, label %bb.bq, !prof !45

bb.bq:                                            ; preds = %bb.bp
  %i.if = getelementptr inbounds nuw i8, ptr %.1191795, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !100
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !104
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !104
  store ptr %.sink1109, ptr %i.ij, align 8, !tbaa !104
  br label %unsafe_yyjson_mut_obj_add.exit

unsafe_yyjson_mut_obj_add.exit:                   ; preds = %bb.bp, %bb.bq
  %.sink = phi ptr [ %i.ik, %bb.bq ], [ %.sink1109, %bb.bp ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %.sink, ptr %i.il, align 8, !tbaa !104
  %i.im = getelementptr inbounds nuw i8, ptr %.sink1109, i64 16
  store ptr %i.hv, ptr %i.im, align 8, !tbaa !104
  %i.in = getelementptr inbounds nuw i8, ptr %.1191795, i64 8
  store ptr %.sink1109, ptr %i.in, align 8, !tbaa !100
  %9 = and i64 %i.hz, 255
  %10 = and i64 %i.hz, -256
  %i.io = add i64 %10, 256
  %11 = or disjoint i64 %i.io, %9
  store i64 %11, ptr %.1191795, align 8, !tbaa !99
  br label %yyjson_mut_obj_add.exit303

yyjson_mut_obj_add.exit303:                       ; preds = %yyjson_mut_is_obj.exit316, %unsafe_yyjson_mut_obj_add.exit, %bb.bo, %bb.bn
  %.2188 = phi ptr [ %.1191795, %bb.bn ], [ %.1187796, %unsafe_yyjson_mut_obj_add.exit ], [ %.1187796, %bb.bo ], [ %.1187796, %yyjson_mut_is_obj.exit316 ] ; 2 uses
  %.2184 = phi ptr [ %.sink1109, %bb.bn ], [ %.1183797, %unsafe_yyjson_mut_obj_add.exit ], [ %.1183797, %bb.bo ], [ %.1183797, %yyjson_mut_is_obj.exit316 ] ; 2 uses
  %.2 = phi ptr [ %i.hv, %bb.bn ], [ %.1181798, %unsafe_yyjson_mut_obj_add.exit ], [ %.1181798, %bb.bo ], [ %.1181798, %yyjson_mut_is_obj.exit316 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.2437791, i64 1 ; 7 uses
  %i.iq = icmp ult ptr %i.ip, %i.b
  br i1 %i.iq, label %.lr.ph776.preheader, label %.critedge.i

.lr.ph776.preheader:                              ; preds = %yyjson_mut_obj_add.exit303
  %scevgep912 = getelementptr i8, ptr %.2437791, i64 %i.c
  %i.ir = sub i64 0, %.2437791913
  %scevgep914 = getelementptr i8, ptr %scevgep912, i64 %i.ir ; 2 uses
  br label %.lr.ph776

.lr.ph776:                                        ; preds = %.lr.ph776.preheader, %bb.br
  %.039.i775 = phi ptr [ %i.it, %bb.br ], [ %i.ip, %.lr.ph776.preheader ] ; 4 uses
  %i.is = load i8, ptr %.039.i775, align 1, !tbaa !100
  switch i8 %i.is, label %bb.br [
    i8 47, label %.critedge.i
    i8 126, label %.critedge.i
  ]

bb.br:                                            ; preds = %.lr.ph776
  %i.it = getelementptr inbounds nuw i8, ptr %.039.i775, i64 1 ; 2 uses
  %exitcond915.not = icmp eq ptr %i.it, %scevgep914
  br i1 %exitcond915.not, label %.critedge.i, label %.lr.ph776, !llvm.loop !28

.critedge.i:                                      ; preds = %bb.br, %.lr.ph776, %.lr.ph776, %yyjson_mut_obj_add.exit303
  %.039.i.lcssa = phi ptr [ %i.ip, %yyjson_mut_obj_add.exit303 ], [ %.039.i775, %.lr.ph776 ], [ %.039.i775, %.lr.ph776 ], [ %scevgep914, %bb.br ] ; 9 uses
  %.039.i.lcssa917 = ptrtoaddr ptr %.039.i.lcssa to i64
  %i.iu = icmp eq ptr %.039.i.lcssa, %i.b
  br i1 %i.iu, label %.critedge53.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i
  %i.iv = load i8, ptr %.039.i.lcssa, align 1, !tbaa !100
  %.not601 = icmp eq i8 %i.iv, 126
  br i1 %.not601, label %.preheader611, label %.critedge53.i, !prof !45

.preheader611:                                    ; preds = %bb.bs
  %i.iw = icmp ult ptr %.039.i.lcssa, %i.b
  br i1 %i.iw, label %.lr.ph784.preheader, label %.critedge2.i

.lr.ph784.preheader:                              ; preds = %.preheader611
  %scevgep916 = getelementptr i8, ptr %.039.i.lcssa, i64 %i.c
  %i.ix = sub i64 0, %.039.i.lcssa917
  %scevgep918 = getelementptr i8, ptr %scevgep916, i64 %i.ix ; 2 uses
  br label %.lr.ph784

.critedge53.i:                                    ; preds = %bb.bs, %.critedge.i
  %i.iy = ptrtoint ptr %.039.i.lcssa to i64
  %i.iz = ptrtoint ptr %i.ip to i64
  %i.ja = sub i64 %i.iy, %i.iz
  br label %ptr_next_token.exit

.lr.ph784:                                        ; preds = %.lr.ph784.preheader, %bb.bx
  %.0.i783 = phi i64 [ %.1.i, %bb.bx ], [ 0, %.lr.ph784.preheader ] ; 3 uses
  %.140.i782 = phi ptr [ %i.jc, %bb.bx ], [ %.039.i.lcssa, %.lr.ph784.preheader ] ; 4 uses
  %i.jb = load i8, ptr %.140.i782, align 1, !tbaa !100 ; 2 uses
  %.not49.i = icmp eq i8 %i.jb, 47
  br i1 %.not49.i, label %.critedge2.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph784
  %i.jc = getelementptr inbounds nuw i8, ptr %.140.i782, i64 1 ; 4 uses
  %i.jd = icmp eq i8 %i.jb, 126
  br i1 %i.jd, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.je = icmp eq ptr %i.jc, %i.b
  br i1 %i.je, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jf = load i8, ptr %i.jc, align 1, !tbaa !100
  %i.jg = and i8 %i.jf, -2
  %switch.i = icmp eq i8 %i.jg, 48
  br i1 %switch.i, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.jh = add i64 %.0.i783, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.1.i = phi i64 [ %i.jh, %bb.bw ], [ %.0.i783, %bb.bt ] ; 2 uses
  %exitcond919.not = icmp eq ptr %i.jc, %scevgep918
  br i1 %exitcond919.not, label %.critedge2.i, label %.lr.ph784, !llvm.loop !29

.critedge2.i:                                     ; preds = %bb.bx, %.lr.ph784, %.preheader611
  %.140.i.lcssa = phi ptr [ %.039.i.lcssa, %.preheader611 ], [ %.140.i782, %.lr.ph784 ], [ %scevgep918, %bb.bx ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %.preheader611 ], [ %.0.i783, %.lr.ph784 ], [ %.1.i, %bb.bx ] ; 2 uses
  %i.ji = ptrtoint ptr %.140.i.lcssa to i64
  %i.jj = ptrtoint ptr %i.ip to i64
  %i.jk = add i64 %.0.i.lcssa, %i.jj
  %i.jl = sub i64 %i.ji, %i.jk
  br label %ptr_next_token.exit

ptr_next_token.exit:                              ; preds = %.critedge53.i, %.critedge2.i
  %.3438 = phi ptr [ %.039.i.lcssa, %.critedge53.i ], [ %.140.i.lcssa, %.critedge2.i ] ; 2 uses
  %.4432 = phi i64 [ %i.ja, %.critedge53.i ], [ %i.jl, %.critedge2.i ] ; 2 uses
  %.4427 = phi i64 [ 0, %.critedge53.i ], [ %.0.i.lcssa, %.critedge2.i ] ; 2 uses
  %.not228 = icmp eq ptr %.3438, %i.b
  br i1 %.not228, label %.loopexit.loopexit, label %bb.ay, !llvm.loop !449

bb.by:                                            ; preds = %bb.bv, %bb.bu
  %.not247 = icmp eq ptr %8, null
  br i1 %.not247, label %yyjson_mut_obj_add.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 2, ptr %8, align 8, !tbaa !156
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.32, ptr %i.jm, align 8, !tbaa !157
  %i.jn = ptrtoint ptr %.140.i782 to i64
  %i.jo = ptrtoint ptr %1 to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.jp, ptr %i.jq, align 8, !tbaa !158
  br label %yyjson_mut_obj_add.exit

.loopexit.loopexit:                               ; preds = %ptr_next_token.exit
  %.pre928 = load i64, ptr %i.hv, align 8, !tbaa !99
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %ptr_next_token.exit265, %ptr_mut_obj_get.exit.thread, %bb.ac
  %i.jr = phi i64 [ %i.af, %bb.ac ], [ %i.af, %ptr_mut_obj_get.exit.thread ], [ %i.fp, %ptr_next_token.exit265 ], [ %.pre928, %.loopexit.loopexit ] ; 11 uses
  %.0419468475 = phi ptr [ %.0419, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ %.0419468474, %ptr_next_token.exit265 ], [ %.0419468474, %.loopexit.loopexit ] ; 8 uses
  %.1417469473 = phi i8 [ %.1417, %bb.ac ], [ %.1417.ph, %ptr_mut_obj_get.exit.thread ], [ %.1417469472, %ptr_next_token.exit265 ], [ %.1417469472, %.loopexit.loopexit ] ; 2 uses
  %.3431 = phi i64 [ %.6434, %bb.ac ], [ %.6434890, %ptr_mut_obj_get.exit.thread ], [ %.1429, %ptr_next_token.exit265 ], [ %.4432, %.loopexit.loopexit ] ; 7 uses
  %.3426 = phi i64 [ %.6, %bb.ac ], [ %.6, %ptr_mut_obj_get.exit.thread ], [ %.1424, %ptr_next_token.exit265 ], [ %.4427, %.loopexit.loopexit ] ; 3 uses
  %.4 = phi ptr [ %.1198, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ %.2199, %ptr_next_token.exit265 ], [ null, %.loopexit.loopexit ] ; 9 uses
  %.2195 = phi ptr [ %i.d, %bb.ac ], [ %i.d, %ptr_mut_obj_get.exit.thread ], [ %.0193, %ptr_next_token.exit265 ], [ %i.ip, %.loopexit.loopexit ] ; 5 uses
  %.2192 = phi ptr [ %.0197, %bb.ac ], [ %.0197, %ptr_mut_obj_get.exit.thread ], [ %.0190, %ptr_next_token.exit265 ], [ %i.hv, %.loopexit.loopexit ] ; 20 uses
  %.3189 = phi ptr [ null, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ %.0186, %ptr_next_token.exit265 ], [ %.2188, %.loopexit.loopexit ] ; 8 uses
  %.3185 = phi ptr [ null, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ null, %ptr_next_token.exit265 ], [ %.2184, %.loopexit.loopexit ] ; 6 uses
  %.3 = phi ptr [ null, %bb.ac ], [ null, %ptr_mut_obj_get.exit.thread ], [ %.0180, %ptr_next_token.exit265 ], [ %.2, %.loopexit.loopexit ] ; 8 uses
  %.1 = phi i8 [ %i.ah, %bb.ac ], [ %i.dn, %ptr_mut_obj_get.exit.thread ], [ %.0, %ptr_next_token.exit265 ], [ %.0, %.loopexit.loopexit ]
  %i.js = lshr i64 %i.jr, 8                       ; 6 uses
  %i.jt = icmp eq i8 %.1, 7
  %.not235 = icmp eq ptr %7, null                 ; 6 uses
  br i1 %i.jt, label %bb.ca, label %bb.df

bb.ca:                                            ; preds = %.loopexit
  br i1 %.not235, label %bb.cb, label %.thread580

bb.cb:                                            ; preds = %bb.ca
  %i.ju = icmp eq ptr %.4, null
  %or.cond3 = or i1 %6, %i.ju
  br i1 %or.cond3, label %bb.cc, label %bb.cu

.thread580:                                       ; preds = %bb.ca
  store ptr %.2192, ptr %7, align 8, !tbaa !160
  %i.jv = icmp eq ptr %.4, null
  %or.cond3581 = or i1 %6, %i.jv
  br i1 %or.cond3581, label %bb.cc, label %bb.cv

bb.cc:                                            ; preds = %.thread580, %bb.cb
  %.not.i289 = icmp eq i64 %.3426, 0
  br i1 %.not.i289, label %bb.cd, label %bb.ci, !prof !62

bb.cd:                                            ; preds = %bb.cc
  %.not605 = icmp eq ptr %4, null
  br i1 %.not605, label %ptr_new_key.exit.thread, label %bb.ce, !prof !45

bb.ce:                                            ; preds = %bb.cd
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !87
  %i.jz = load ptr, ptr %i.jw, align 8, !tbaa !86 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %bb.cf, label %unsafe_yyjson_mut_val.exit.i347, !prof !45

bb.cf:                                            ; preds = %bb.ce
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kc = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.jw, ptr noundef nonnull %i.kb, i64 noundef 1)
  br i1 %i.kc, label %.unsafe_yyjson_mut_val.exit.i347_crit_edge, label %ptr_new_key.exit.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i347_crit_edge:       ; preds = %bb.cf
  %.pre931 = load ptr, ptr %i.jw, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i347

unsafe_yyjson_mut_val.exit.i347:                  ; preds = %.unsafe_yyjson_mut_val.exit.i347_crit_edge, %bb.ce
  %i.kd = phi ptr [ %.pre931, %.unsafe_yyjson_mut_val.exit.i347_crit_edge ], [ %i.jz, %bb.ce ] ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.ke, ptr %i.jw, align 8, !tbaa !86
  %.not.i349.not = icmp eq ptr %i.kd, null
  br i1 %.not.i349.not, label %ptr_new_key.exit.thread, label %bb.cg, !prof !103

bb.cg:                                            ; preds = %unsafe_yyjson_mut_val.exit.i347
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !78
  %i.ki = load ptr, ptr %i.kf, align 8, !tbaa !77 ; 2 uses
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %.not.i21.i351 = icmp ugt i64 %i.kl, %.3431
  br i1 %.not.i21.i351, label %unsafe_yyjson_mut_str_alc.exit.i352, label %bb.ch, !prof !62

bb.ch:                                            ; preds = %bb.cg
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kn = add i64 %.3431, 1
  %i.ko = tail call zeroext i1 @unsafe_yyjson_str_pool_grow(ptr noundef nonnull %i.kf, ptr noundef nonnull %i.km, i64 noundef %i.kn)
  br i1 %i.ko, label %unsafe_yyjson_mut_str_alc.exit.i352thread-pre-split, label %ptr_new_key.exit.thread, !prof !62

unsafe_yyjson_mut_str_alc.exit.i352thread-pre-split: ; preds = %bb.ch
  %.pr549 = load ptr, ptr %i.kf, align 8, !tbaa !77
  br label %unsafe_yyjson_mut_str_alc.exit.i352

unsafe_yyjson_mut_str_alc.exit.i352:              ; preds = %unsafe_yyjson_mut_str_alc.exit.i352thread-pre-split, %bb.cg
  %i.kp = phi ptr [ %.pr549, %unsafe_yyjson_mut_str_alc.exit.i352thread-pre-split ], [ %i.ki, %bb.cg ] ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.3431 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store ptr %i.kr, ptr %i.kf, align 8, !tbaa !77
  %.not.i.i354 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i354, label %ptr_new_key.exit.thread, label %ptr_new_key.exit, !prof !103

bb.ci:                                            ; preds = %bb.cc
  %i.ks = getelementptr inbounds nuw i8, ptr %.2195, i64 %.3431
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.3426
  %i.ku = add i64 %.3426, %.3431                  ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !78
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !77 ; 2 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %.not.i329 = icmp ugt i64 %i.lb, %i.ku
  br i1 %.not.i329, label %unsafe_yyjson_mut_str_alc.exit331, label %bb.cj, !prof !62

bb.cj:                                            ; preds = %bb.ci
  %i.lc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ld = add i64 %i.ku, 1
  %i.le = tail call zeroext i1 @unsafe_yyjson_str_pool_grow(ptr noundef nonnull %i.kv, ptr noundef nonnull %i.lc, i64 noundef %i.ld)
  br i1 %i.le, label %unsafe_yyjson_mut_str_alc.exit331thread-pre-split, label %ptr_new_key.exit.thread, !prof !62

unsafe_yyjson_mut_str_alc.exit331thread-pre-split: ; preds = %bb.cj
  %.pr561 = load ptr, ptr %i.kv, align 8, !tbaa !77
  br label %unsafe_yyjson_mut_str_alc.exit331

unsafe_yyjson_mut_str_alc.exit331:                ; preds = %unsafe_yyjson_mut_str_alc.exit331thread-pre-split, %bb.ci
  %i.lf = phi ptr [ %.pr561, %unsafe_yyjson_mut_str_alc.exit331thread-pre-split ], [ %i.ky, %bb.ci ] ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ku
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  store ptr %i.lh, ptr %i.kv, align 8, !tbaa !77
  %.not29.i = icmp eq ptr %i.lf, null
  br i1 %.not29.i, label %ptr_new_key.exit.thread, label %.lr.ph818, !prof !103

.lr.ph818:                                        ; preds = %unsafe_yyjson_mut_str_alc.exit331, %bb.cl
  %.0.i290817 = phi ptr [ %i.lo, %bb.cl ], [ %i.lf, %unsafe_yyjson_mut_str_alc.exit331 ] ; 2 uses
  %.026.i816 = phi ptr [ %i.ln, %bb.cl ], [ %.2195, %unsafe_yyjson_mut_str_alc.exit331 ] ; 3 uses
  %i.li = load i8, ptr %.026.i816, align 1, !tbaa !100 ; 2 uses
  %.not30.i291 = icmp eq i8 %i.li, 126
  br i1 %.not30.i291, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph818
  %i.lj = getelementptr inbounds nuw i8, ptr %.026.i816, i64 1 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !100
  %i.ll = icmp eq i8 %i.lk, 48
  %i.lm = select i1 %i.ll, i8 126, i8 47
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph818
  %storemerge.i = phi i8 [ %i.lm, %bb.ck ], [ %i.li, %.lr.ph818 ]
  %.1.i292 = phi ptr [ %i.lj, %bb.ck ], [ %.026.i816, %.lr.ph818 ]
  store i8 %storemerge.i, ptr %.0.i290817, align 1, !tbaa !100
  %i.ln = getelementptr inbounds nuw i8, ptr %.1.i292, i64 1 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i290817, i64 1 ; 2 uses
  %i.lp = icmp ult ptr %i.ln, %i.kt
  br i1 %i.lp, label %.lr.ph818, label %._crit_edge819, !llvm.loop !448

._crit_edge819:                                   ; preds = %bb.cl
  store i8 0, ptr %i.lo, align 1, !tbaa !100
  %.not604 = icmp eq ptr %4, null
  br i1 %.not604, label %ptr_new_key.exit.thread, label %bb.cm, !prof !45

bb.cm:                                            ; preds = %._crit_edge819
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !87
  %i.lt = load ptr, ptr %i.lq, align 8, !tbaa !86 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %bb.cn, label %unsafe_yyjson_mut_val.exit.i365, !prof !45

bb.cn:                                            ; preds = %bb.cm
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lw = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.lq, ptr noundef nonnull %i.lv, i64 noundef 1)
  br i1 %i.lw, label %.unsafe_yyjson_mut_val.exit.i365_crit_edge, label %ptr_new_key.exit.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i365_crit_edge:       ; preds = %bb.cn
  %.pre930 = load ptr, ptr %i.lq, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i365

unsafe_yyjson_mut_val.exit.i365:                  ; preds = %.unsafe_yyjson_mut_val.exit.i365_crit_edge, %bb.cm
  %i.lx = phi ptr [ %.pre930, %.unsafe_yyjson_mut_val.exit.i365_crit_edge ], [ %i.lt, %bb.cm ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store ptr %i.ly, ptr %i.lq, align 8, !tbaa !86
  %.not.i367.not = icmp eq ptr %i.lx, null
  br i1 %.not.i367.not, label %ptr_new_key.exit.thread, label %ptr_new_key.exit.thread572, !prof !103

ptr_new_key.exit:                                 ; preds = %unsafe_yyjson_mut_str_alc.exit.i352
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kp, ptr nonnull align 1 %.2195, i64 %.3431, i1 false)
  store i8 0, ptr %i.kq, align 1, !tbaa !100
  br label %ptr_new_key.exit.thread572

ptr_new_key.exit.thread:                          ; preds = %bb.ch, %unsafe_yyjson_mut_str_alc.exit.i352, %bb.cn, %unsafe_yyjson_mut_val.exit.i365, %bb.cj, %bb.cf, %._crit_edge819, %bb.cd, %unsafe_yyjson_mut_val.exit.i347, %unsafe_yyjson_mut_str_alc.exit331
  %.not240 = icmp eq ptr %8, null
  br i1 %.not240, label %yyjson_mut_obj_add.exit, label %bb.co

bb.co:                                            ; preds = %ptr_new_key.exit.thread
  store i32 6, ptr %8, align 8, !tbaa !156
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.34, ptr %i.lz, align 8, !tbaa !157
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.ma, align 8, !tbaa !158
  br label %yyjson_mut_obj_add.exit

ptr_new_key.exit.thread572:                       ; preds = %unsafe_yyjson_mut_val.exit.i365, %ptr_new_key.exit
  %.sink1115 = phi ptr [ %i.kd, %ptr_new_key.exit ], [ %i.lx, %unsafe_yyjson_mut_val.exit.i365 ] ; 7 uses
  %.sink1111 = phi ptr [ %i.kp, %ptr_new_key.exit ], [ %i.lf, %unsafe_yyjson_mut_val.exit.i365 ]
  %i.mb = shl i64 %.3431, 8
  %i.mc = or disjoint i64 %i.mb, 5
  store i64 %i.mc, ptr %.sink1115, align 8, !tbaa !99
  %i.md = getelementptr inbounds nuw i8, ptr %.sink1115, i64 8
  store ptr %.sink1111, ptr %i.md, align 8, !tbaa !100
end_hunk_0
begin_hunk_1_@unsafe_yyjson_mut_ptr_putx:bb.a
  store i64 %i.mv, ptr %.2192, align 8, !tbaa !99
  br label %.critedge253

bb.cu:                                            ; preds = %bb.cb
  %i.mw = getelementptr inbounds nuw i8, ptr %.0419468475, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !104
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !104
  br label %yyjson_mut_is_obj.exit314

bb.cv:                                            ; preds = %.thread580
  %i.na = getelementptr inbounds nuw i8, ptr %.0419468475, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !104
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !104
  %i.ne = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0419468475, ptr %i.ne, align 8, !tbaa !161
  %i.nf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.4, ptr %i.nf, align 8, !tbaa !162
  br label %yyjson_mut_is_obj.exit314

yyjson_mut_is_obj.exit314:                        ; preds = %bb.cu, %bb.cv
  %i.ng = phi ptr [ %i.mz, %bb.cu ], [ %i.nd, %bb.cv ] ; 8 uses
  %i.nh = and i64 %i.jr, 7
  %i.ni = icmp ne i64 %i.nh, 7
  %.not.i322 = icmp eq ptr %i.ng, null
  %or.cond597 = select i1 %i.ni, i1 true, i1 %.not.i322, !prof !138
  br i1 %or.cond597, label %.critedge253, label %bb.cw, !prof !138

bb.cw:                                            ; preds = %yyjson_mut_is_obj.exit314
  %i.nj = load i64, ptr %i.ng, align 8, !tbaa !99 ; 2 uses
  %i.nk = and i64 %i.nj, 7
  %.not602 = icmp eq i64 %i.nk, 5
  br i1 %.not602, label %yyjson_mut_is_obj.exit, label %.critedge253, !prof !137

yyjson_mut_is_obj.exit:                           ; preds = %bb.cw
  %i.nl = lshr i64 %i.nj, 8                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.js, 0
  br i1 %.not.i.i, label %yyjson_mut_obj_iter_next.exit.thread.thread, label %yyjson_mut_obj_iter_next.exit.lr.ph

yyjson_mut_obj_iter_next.exit.lr.ph:              ; preds = %yyjson_mut_is_obj.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !100
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.np = icmp eq ptr %3, null
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  br label %yyjson_mut_obj_iter_next.exit

yyjson_mut_obj_iter_next.exit:                    ; preds = %yyjson_mut_obj_iter_next.exit.lr.ph, %yyjson_mut_obj_iter_remove.exit
  %i.ns = phi i64 [ %i.jr, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %i.or, %yyjson_mut_obj_iter_remove.exit ] ; 5 uses
  %.0.i309811 = phi i8 [ 0, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %.1.i310, %yyjson_mut_obj_iter_remove.exit ] ; 5 uses
  %.sroa.18.1810 = phi ptr [ %i.nn, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %.sroa.18.2, %yyjson_mut_obj_iter_remove.exit ] ; 3 uses
  %.sroa.11.1809 = phi i64 [ %i.js, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %.sroa.11.2, %yyjson_mut_obj_iter_remove.exit ] ; 6 uses
  %.sroa.0.1808 = phi i64 [ 0, %yyjson_mut_obj_iter_next.exit.lr.ph ], [ %.sroa.0.2, %yyjson_mut_obj_iter_remove.exit ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.18.1810, i64 16 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !104 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !104 ; 7 uses
  %i.nx = add nuw i64 %.sroa.0.1808, 1            ; 4 uses
  %.not26.i = icmp eq ptr %i.nw, null
  br i1 %.not26.i, label %yyjson_mut_obj_iter_next.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %yyjson_mut_obj_iter_next.exit
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !99
  %i.nz = lshr i64 %i.ny, 8
  %i.oa = icmp eq i64 %i.nz, %i.nl
  br i1 %i.oa, label %unsafe_yyjson_equals_strn.exit, label %yyjson_mut_obj_iter_remove.exit

unsafe_yyjson_equals_strn.exit:                   ; preds = %bb.cx
  %i.ob = load ptr, ptr %i.no, align 8, !tbaa !100
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !100
  %bcmp.i = tail call i32 @bcmp(ptr %i.od, ptr %i.ob, i64 %i.nl)
  %i.oe = icmp eq i32 %bcmp.i, 0
  br i1 %i.oe, label %bb.cy, label %yyjson_mut_obj_iter_remove.exit

bb.cy:                                            ; preds = %unsafe_yyjson_equals_strn.exit
  %i.of = trunc nuw i8 %.0.i309811 to i1
  %or.cond.not.i = or i1 %i.np, %i.of
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !104
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !104 ; 2 uses
  br i1 %or.cond.not.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store ptr %i.oj, ptr %i.nq, align 8, !tbaa !104
  store ptr %3, ptr %i.og, align 8, !tbaa !104
  br label %yyjson_mut_obj_iter_remove.exit

bb.da:                                            ; preds = %bb.cy
  %i.ok = icmp eq i64 %i.nx, %.sroa.11.1809
  br i1 %i.ok, label %bb.db, label %bb.dc, !prof !45

bb.db:                                            ; preds = %bb.da
  store ptr %.sroa.18.1810, ptr %i.nr, align 8, !tbaa !100
  %.pre929 = load ptr, ptr %i.nt, align 8, !tbaa !104
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ol = phi ptr [ %.pre929, %bb.db ], [ %i.nu, %bb.da ]
  %i.om = add i64 %.sroa.11.1809, -1              ; 2 uses
  %i.on = and i64 %i.ns, 255
  %i.oo = shl i64 %i.om, 8
  %i.op = or disjoint i64 %i.on, %i.oo            ; 2 uses
  store i64 %i.op, ptr %.2192, align 8, !tbaa !99
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  store ptr %i.oj, ptr %i.oq, align 8, !tbaa !104
  br label %yyjson_mut_obj_iter_remove.exit

yyjson_mut_obj_iter_remove.exit:                  ; preds = %bb.cx, %bb.dc, %bb.cz, %unsafe_yyjson_equals_strn.exit
  %i.or = phi i64 [ %i.op, %bb.dc ], [ %i.ns, %bb.cz ], [ %i.ns, %unsafe_yyjson_equals_strn.exit ], [ %i.ns, %bb.cx ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.1808, %bb.dc ], [ %i.nx, %bb.cz ], [ %i.nx, %unsafe_yyjson_equals_strn.exit ], [ %i.nx, %bb.cx ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %i.om, %bb.dc ], [ %.sroa.11.1809, %bb.cz ], [ %.sroa.11.1809, %unsafe_yyjson_equals_strn.exit ], [ %.sroa.11.1809, %bb.cx ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.1810, %bb.dc ], [ %i.nw, %bb.cz ], [ %i.nw, %unsafe_yyjson_equals_strn.exit ], [ %i.nw, %bb.cx ]
  %.1.i310 = phi i8 [ %.0.i309811, %bb.dc ], [ 1, %bb.cz ], [ %.0.i309811, %unsafe_yyjson_equals_strn.exit ], [ %.0.i309811, %bb.cx ] ; 2 uses
  %i.os = icmp ult i64 %.sroa.0.2, %.sroa.11.2
  br i1 %i.os, label %yyjson_mut_obj_iter_next.exit, label %yyjson_mut_obj_iter_next.exit.thread, !llvm.loop !34

yyjson_mut_obj_iter_next.exit.thread:             ; preds = %yyjson_mut_obj_iter_next.exit, %yyjson_mut_obj_iter_remove.exit
  %i.ot = phi i64 [ %i.ns, %yyjson_mut_obj_iter_next.exit ], [ %i.or, %yyjson_mut_obj_iter_remove.exit ] ; 2 uses
  %.sroa.11.1.lcssa.ph = phi i64 [ %.sroa.11.1809, %yyjson_mut_obj_iter_next.exit ], [ %.sroa.11.2, %yyjson_mut_obj_iter_remove.exit ] ; 2 uses
  %.0.i309.lcssa.ph = phi i8 [ %.0.i309811, %yyjson_mut_obj_iter_next.exit ], [ %.1.i310, %yyjson_mut_obj_iter_remove.exit ]
  %i.ou = trunc nuw i8 %.0.i309.lcssa.ph to i1
  %i.ov = icmp eq ptr %3, null
  %or.cond4.not.i = or i1 %i.ov, %i.ou
  br i1 %or.cond4.not.i, label %.critedge253, label %bb.dd

yyjson_mut_obj_iter_next.exit.thread.thread:      ; preds = %yyjson_mut_is_obj.exit
  %i.ow = icmp eq ptr %3, null
  br i1 %i.ow, label %.critedge253, label %unsafe_yyjson_mut_obj_add.exit.i

bb.dd:                                            ; preds = %yyjson_mut_obj_iter_next.exit.thread
  %.not.i29.i = icmp eq i64 %.sroa.11.1.lcssa.ph, 0
  br i1 %.not.i29.i, label %unsafe_yyjson_mut_obj_add.exit.i, label %bb.de, !prof !124

bb.de:                                            ; preds = %bb.dd
  %i.ox = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !100
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !104
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !104
  store ptr %i.ng, ptr %i.pb, align 8, !tbaa !104
  %i.pd = shl i64 %.sroa.11.1.lcssa.ph, 8
  %i.pe = add i64 %i.pd, 256
  br label %unsafe_yyjson_mut_obj_add.exit.i

unsafe_yyjson_mut_obj_add.exit.i:                 ; preds = %yyjson_mut_obj_iter_next.exit.thread.thread, %bb.dd, %bb.de
  %i.pf = phi i64 [ %i.ot, %bb.de ], [ %i.ot, %bb.dd ], [ %i.jr, %yyjson_mut_obj_iter_next.exit.thread.thread ]
  %.sroa.11.1.lcssa10171021 = phi i64 [ %i.pe, %bb.de ], [ 256, %bb.dd ], [ 256, %yyjson_mut_obj_iter_next.exit.thread.thread ]
  %.sink921 = phi ptr [ %i.pc, %bb.de ], [ %i.ng, %bb.dd ], [ %i.ng, %yyjson_mut_obj_iter_next.exit.thread.thread ]
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sink921, ptr %i.pg, align 8, !tbaa !104
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store ptr %3, ptr %i.ph, align 8, !tbaa !104
  %i.pi = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  store ptr %i.ng, ptr %i.pi, align 8, !tbaa !100
  %i.pj = and i64 %i.pf, 255
  %i.pk = or disjoint i64 %i.pj, %.sroa.11.1.lcssa10171021
  store i64 %i.pk, ptr %.2192, align 8, !tbaa !99
  br label %.critedge253

bb.df:                                            ; preds = %.loopexit
  br i1 %.not235, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pl = icmp ne ptr %.4, null
  %i.pm = trunc nuw i8 %.1417469473 to i1
  %or.cond5 = select i1 %i.pl, i1 true, i1 %i.pm
  br i1 %or.cond5, label %bb.dh, label %.thread590

bb.dh:                                            ; preds = %bb.dg
  store ptr %.2192, ptr %7, align 8, !tbaa !160
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.df
  %.not232 = icmp eq ptr %.4, null                ; 2 uses
  br i1 %6, label %bb.dj, label %bb.dw

.thread590:                                       ; preds = %bb.dg
  br i1 %6, label %.thread593, label %.thread594

bb.dj:                                            ; preds = %bb.di
  br i1 %.not232, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pn = getelementptr inbounds nuw i8, ptr %.0419468475, i64 16
  store ptr %3, ptr %i.pn, align 8, !tbaa !104
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.4, ptr %i.po, align 8, !tbaa !104
  br i1 %.not235, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0419468475, ptr %i.pp, align 8, !tbaa !161
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %12 = and i64 %i.jr, 255
  %13 = and i64 %i.jr, -256
  %i.pq = add i64 %13, 256
  %14 = or disjoint i64 %i.pq, %12
  store i64 %14, ptr %.2192, align 8, !tbaa !99
  br label %.critedge253

bb.dn:                                            ; preds = %bb.dj
  %i.pr = trunc nuw i8 %.1417469473 to i1
  br i1 %i.pr, label %bb.do, label %.thread593

bb.do:                                            ; preds = %bb.dn
  br i1 %.not235, label %yyjson_mut_is_arr.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not234 = icmp eq i64 %i.js, 0
  br i1 %.not234, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ps = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !100
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  %i.pu = phi ptr [ %i.pt, %bb.dq ], [ %3, %bb.dp ]
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.pu, ptr %i.pv, align 8, !tbaa !161
  br label %yyjson_mut_is_arr.exit

yyjson_mut_is_arr.exit:                           ; preds = %bb.dr, %bb.do
  %i.pw = and i64 %i.jr, 7
  %i.px = icmp eq i64 %i.pw, 6
  %i.py = icmp ne ptr %3, null
  %i.pz = and i1 %i.py, %i.px
  br i1 %i.pz, label %bb.ds, label %.critedge253, !prof !62

bb.ds:                                            ; preds = %yyjson_mut_is_arr.exit
  %i.qa = and i64 %i.jr, 254
  %i.qb = and i64 %i.jr, -256
  %i.qc = add i64 %i.qb, 256
  %i.qd = or disjoint i64 %i.qc, %i.qa
  store i64 %i.qd, ptr %.2192, align 8, !tbaa !99
  %i.qe = icmp eq i64 %i.js, 0
  br i1 %i.qe, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qf = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !104
  store ptr %3, ptr %i.qh, align 8, !tbaa !104
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %.sink922 = phi ptr [ %i.qi, %bb.dt ], [ %3, %bb.ds ]
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sink922, ptr %i.qj, align 8, !tbaa !104
  %i.qk = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  store ptr %3, ptr %i.qk, align 8, !tbaa !100
  br label %.critedge253

.thread593:                                       ; preds = %.thread590, %bb.dn
  %.not233 = icmp eq ptr %8, null
  br i1 %.not233, label %yyjson_mut_obj_add.exit, label %bb.dv

bb.dv:                                            ; preds = %.thread593
  store i32 3, ptr %8, align 8, !tbaa !156
  %i.ql = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.ql, align 8, !tbaa !157
  %i.qm = ptrtoint ptr %.2195 to i64
  %i.qn = ptrtoint ptr %1 to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.qo, ptr %i.qp, align 8, !tbaa !158
  br label %yyjson_mut_obj_add.exit

bb.dw:                                            ; preds = %bb.di
  br i1 %.not232, label %.thread594, label %bb.dy

.thread594:                                       ; preds = %.thread590, %bb.dw
  %.not231 = icmp eq ptr %8, null
  br i1 %.not231, label %yyjson_mut_obj_add.exit, label %bb.dx

bb.dx:                                            ; preds = %.thread594
  store i32 3, ptr %8, align 8, !tbaa !156
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.qq, align 8, !tbaa !157
  %i.qr = ptrtoint ptr %.2195 to i64
  %i.qs = ptrtoint ptr %1 to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.qt, ptr %i.qu, align 8, !tbaa !158
  br label %yyjson_mut_obj_add.exit

bb.dy:                                            ; preds = %bb.dw
  %i.qv = icmp ugt i64 %i.jr, 511
  br i1 %i.qv, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.qw = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !104
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !104
  %i.qz = getelementptr inbounds nuw i8, ptr %.0419468475, i64 16
  store ptr %3, ptr %i.qz, align 8, !tbaa !104
  %i.ra = getelementptr inbounds nuw i8, ptr %.2192, i64 8 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !100
  %i.rc = icmp eq ptr %i.rb, %.4
  br i1 %i.rc, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  store ptr %3, ptr %i.ra, align 8, !tbaa !100
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dy
  %i.rd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %3, ptr %i.rd, align 8, !tbaa !104
  %i.re = getelementptr inbounds nuw i8, ptr %.2192, i64 8
  store ptr %3, ptr %i.re, align 8, !tbaa !100
  br label %bb.ec

bb.ec:                                            ; preds = %bb.dz, %bb.ea, %bb.eb
  %.1420 = phi ptr [ %.0419468475, %bb.ea ], [ %.0419468475, %bb.dz ], [ %3, %bb.eb ]
  br i1 %.not235, label %.critedge253, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.1420, ptr %i.rf, align 8, !tbaa !161
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.4, ptr %i.rg, align 8, !tbaa !162
  br label %.critedge253

.critedge253:                                     ; preds = %yyjson_mut_obj_iter_next.exit.thread.thread, %yyjson_mut_is_obj.exit314, %bb.du, %yyjson_mut_is_arr.exit, %unsafe_yyjson_mut_obj_add.exit.i, %yyjson_mut_obj_iter_next.exit.thread, %bb.cw, %bb.ec, %bb.dm, %bb.ed, %unsafe_yyjson_mut_obj_add.exit308
  %.not238 = icmp eq ptr %.3189, null
  br i1 %.not238, label %yyjson_mut_obj_add.exit, label %bb.ee, !prof !62

bb.ee:                                            ; preds = %.critedge253
  %.not239 = icmp eq ptr %.3185, null
  %i.rh = load i64, ptr %.3189, align 8, !tbaa !99 ; 7 uses
  %i.ri = and i64 %i.rh, 7                        ; 2 uses
  br i1 %.not239, label %yyjson_mut_is_arr.exit321, label %yyjson_mut_is_obj.exit318

yyjson_mut_is_obj.exit318:                        ; preds = %bb.ee
  %i.rj = icmp eq i64 %i.ri, 7
  br i1 %i.rj, label %bb.ef, label %yyjson_mut_obj_add.exit, !prof !62

bb.ef:                                            ; preds = %yyjson_mut_is_obj.exit318
  %i.rk = load i64, ptr %.3185, align 8, !tbaa !99
  %i.rl = and i64 %i.rk, 7
  %i.rm = icmp eq i64 %i.rl, 5
  %i.rn = icmp ne ptr %.3, null
  %spec.select.i = select i1 %i.rm, i1 %i.rn, i1 false, !prof !62
  br i1 %spec.select.i, label %bb.eg, label %yyjson_mut_obj_add.exit, !prof !137

bb.eg:                                            ; preds = %bb.ef
  %.not.i305 = icmp ult i64 %i.rh, 256
  br i1 %.not.i305, label %unsafe_yyjson_mut_obj_add.exit306, label %bb.eh, !prof !45

bb.eh:                                            ; preds = %bb.eg
  %i.ro = getelementptr inbounds nuw i8, ptr %.3189, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !100
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !104
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !104
  store ptr %.3185, ptr %i.rs, align 8, !tbaa !104
  br label %unsafe_yyjson_mut_obj_add.exit306

unsafe_yyjson_mut_obj_add.exit306:                ; preds = %bb.eg, %bb.eh
  %.sink923 = phi ptr [ %i.rt, %bb.eh ], [ %.3185, %bb.eg ]
  %i.ru = getelementptr inbounds nuw i8, ptr %.3, i64 16
  store ptr %.sink923, ptr %i.ru, align 8, !tbaa !104
  %i.rv = getelementptr inbounds nuw i8, ptr %.3185, i64 16
  store ptr %.3, ptr %i.rv, align 8, !tbaa !104
  %i.rw = getelementptr inbounds nuw i8, ptr %.3189, i64 8
  store ptr %.3185, ptr %i.rw, align 8, !tbaa !100
  %15 = and i64 %i.rh, 255
  %16 = and i64 %i.rh, -256
  %i.rx = add i64 %16, 256
  %17 = or disjoint i64 %i.rx, %15
  store i64 %17, ptr %.3189, align 8, !tbaa !99
  br label %yyjson_mut_obj_add.exit

yyjson_mut_is_arr.exit321:                        ; preds = %bb.ee
  %i.ry = icmp eq i64 %i.ri, 6
  %i.rz = icmp ne ptr %.3, null
  %i.sa = and i1 %i.rz, %i.ry
  br i1 %i.sa, label %bb.ei, label %yyjson_mut_obj_add.exit, !prof !62

bb.ei:                                            ; preds = %yyjson_mut_is_arr.exit321
  %18 = and i64 %i.rh, 254
  %19 = and i64 %i.rh, -256
  %i.sb = add i64 %19, 256
  %20 = or disjoint i64 %i.sb, %18
  store i64 %20, ptr %.3189, align 8, !tbaa !99
  %i.sc = icmp ult i64 %i.rh, 256
  br i1 %i.sc, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.sd = getelementptr inbounds nuw i8, ptr %.3189, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !100
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !104
  store ptr %.3, ptr %i.sf, align 8, !tbaa !104
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ei, %bb.ej
  %.sink924 = phi ptr [ %i.sg, %bb.ej ], [ %.3, %bb.ei ]
  %i.sh = getelementptr inbounds nuw i8, ptr %.3, i64 16
  store ptr %.sink924, ptr %i.sh, align 8, !tbaa !104
  %i.si = getelementptr inbounds nuw i8, ptr %.3189, i64 8
  store ptr %.3, ptr %i.si, align 8, !tbaa !100
  br label %yyjson_mut_obj_add.exit

yyjson_mut_obj_add.exit:                          ; preds = %yyjson_mut_is_obj.exit318, %bb.ek, %yyjson_mut_is_arr.exit321, %unsafe_yyjson_mut_obj_add.exit306, %bb.ef, %.critedge253, %.thread594, %bb.dx, %.thread593, %bb.dv, %ptr_new_key.exit.thread, %bb.co, %bb.by, %bb.bz, %unsafe_yyjson_mut_val.exit.i.thread, %bb.bm, %ptr_new_key.exit301.thread, %bb.bk, %bb.aw, %bb.ax, %.thread, %bb.an, %bb.ai, %bb.aj, %bb.ae, %bb.af, %bb.aa, %bb.ab, %bb.j, %bb.k
  %.0196 = phi i1 [ false, %bb.j ], [ false, %.thread ], [ false, %unsafe_yyjson_mut_val.exit.i.thread ], [ false, %ptr_new_key.exit301.thread ], [ false, %bb.aw ], [ false, %bb.by ], [ false, %.thread594 ], [ false, %ptr_new_key.exit.thread ], [ false, %.thread593 ], [ false, %bb.ai ], [ false, %bb.ae ], [ false, %bb.aa ], [ false, %bb.k ], [ false, %bb.ab ], [ false, %bb.af ], [ false, %bb.aj ], [ false, %bb.an ], [ false, %bb.ax ], [ false, %bb.bk ], [ false, %bb.bm ], [ false, %bb.bz ], [ false, %bb.co ], [ false, %bb.dv ], [ false, %bb.dx ], [ true, %.critedge253 ], [ true, %unsafe_yyjson_mut_obj_add.exit306 ], [ true, %bb.ek ], [ true, %bb.ef ], [ true, %yyjson_mut_is_arr.exit321 ], [ true, %yyjson_mut_is_obj.exit318 ]
  ret i1 %.0196
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @unsafe_yyjson_mut_ptr_replacex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.yyjson_ptr_ctx, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %4, null                    ; 3 uses
  %spec.store.select = select i1 %.not, ptr %6, ptr %4 ; 2 uses
  %i.a = call ptr @unsafe_yyjson_mut_ptr_getx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %spec.store.select, ptr noundef %5) ; 3 uses
  %.not18 = icmp eq ptr %i.a, null
  br i1 %.not18, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %spec.store.select, align 8, !tbaa !160 ; 11 uses
  %.not.i21 = icmp eq ptr %i.b, null
  br i1 %.not.i21, label %yyjson_mut_obj_put.exit, label %yyjson_mut_is_obj.exit22

yyjson_mut_is_obj.exit22:                         ; preds = %bb.b
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99   ; 5 uses
  %i.d = and i64 %i.c, 7
  %i.e = icmp eq i64 %i.d, 7
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %6, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8 ; 2 uses
  %i.f = load ptr, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !161 ; 4 uses
  br i1 %i.e, label %yyjson_mut_is_obj.exit20, label %bb.q

yyjson_mut_is_obj.exit20:                         ; preds = %yyjson_mut_is_obj.exit22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104  ; 8 uses
  %.not.i26 = icmp eq ptr %i.j, null
  br i1 %.not.i26, label %yyjson_mut_obj_put.exit, label %bb.c, !prof !138

bb.c:                                             ; preds = %yyjson_mut_is_obj.exit20
  %i.k = load i64, ptr %i.j, align 8, !tbaa !99   ; 2 uses
  %i.l = and i64 %i.k, 7
  %.not68 = icmp eq i64 %i.l, 5
  br i1 %.not68, label %bb.d, label %yyjson_mut_obj_put.exit, !prof !137

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %i.k, 8                         ; 4 uses
  %i.n = lshr i64 %i.c, 8                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %yyjson_mut_obj_iter_next.exit.thread.thread, label %yyjson_mut_obj_iter_next.exit.lr.ph

yyjson_mut_obj_iter_next.exit.lr.ph:              ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.r = icmp eq ptr %3, null
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.r, label %yyjson_mut_obj_iter_next.exit.us, label %yyjson_mut_obj_iter_next.exit

yyjson_mut_obj_iter_next.exit.us:                 ; preds = %yyjson_mut_obj_iter_next.exit.lr.ph, %yyjson_mut_obj_iter_remove.exit.us
  %i.u = phi i64 [ %i.as, %yyjson_mut_obj_iter_remove.exit.us ], [ %i.c, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 4 uses
  %.sroa.18.172.us = phi ptr [ %.sroa.18.2.us, %yyjson_mut_obj_iter_remove.exit.us ], [ %i.p, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 3 uses
  %.sroa.11.171.us = phi i64 [ %.sroa.11.2.us, %yyjson_mut_obj_iter_remove.exit.us ], [ %i.n, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 5 uses
  %.sroa.0.170.us = phi i64 [ %.sroa.0.2.us, %yyjson_mut_obj_iter_remove.exit.us ], [ 0, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.18.172.us, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !104  ; 6 uses
  %i.z = add nuw i64 %.sroa.0.170.us, 1           ; 3 uses
  %.not26.i.us = icmp eq ptr %i.y, null
  br i1 %.not26.i.us, label %yyjson_mut_obj_iter_next.exit.thread, label %bb.e

bb.e:                                             ; preds = %yyjson_mut_obj_iter_next.exit.us
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !99
  %i.ab = lshr i64 %i.aa, 8
  %i.ac = icmp eq i64 %i.ab, %i.m
  br i1 %i.ac, label %unsafe_yyjson_equals_strn.exit.us, label %yyjson_mut_obj_iter_remove.exit.us

unsafe_yyjson_equals_strn.exit.us:                ; preds = %bb.e
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %bcmp.i.us = call i32 @bcmp(ptr %i.af, ptr %i.ad, i64 %i.m)
  %i.ag = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.ag, label %bb.f, label %yyjson_mut_obj_iter_remove.exit.us

bb.f:                                             ; preds = %unsafe_yyjson_equals_strn.exit.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !104
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = icmp eq i64 %i.z, %.sroa.11.171.us
  br i1 %i.al, label %bb.g, label %bb.h, !prof !45

bb.g:                                             ; preds = %bb.f
  store ptr %.sroa.18.172.us, ptr %i.t, align 8, !tbaa !100
  %.pre92 = load ptr, ptr %i.v, align 8, !tbaa !104
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre92, %bb.g ], [ %i.w, %bb.f ]
  %i.an = add i64 %.sroa.11.171.us, -1            ; 2 uses
  %i.ao = and i64 %i.u, 255
  %i.ap = shl i64 %i.an, 8
  %i.aq = or disjoint i64 %i.ao, %i.ap            ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !104
  br label %yyjson_mut_obj_iter_remove.exit.us

yyjson_mut_obj_iter_remove.exit.us:               ; preds = %bb.h, %unsafe_yyjson_equals_strn.exit.us, %bb.e
  %i.as = phi i64 [ %i.aq, %bb.h ], [ %i.u, %bb.e ], [ %i.u, %unsafe_yyjson_equals_strn.exit.us ] ; 2 uses
  %.sroa.0.2.us = phi i64 [ %.sroa.0.170.us, %bb.h ], [ %i.z, %bb.e ], [ %i.z, %unsafe_yyjson_equals_strn.exit.us ] ; 2 uses
  %.sroa.11.2.us = phi i64 [ %i.an, %bb.h ], [ %.sroa.11.171.us, %bb.e ], [ %.sroa.11.171.us, %unsafe_yyjson_equals_strn.exit.us ] ; 3 uses
  %.sroa.18.2.us = phi ptr [ %.sroa.18.172.us, %bb.h ], [ %i.y, %bb.e ], [ %i.y, %unsafe_yyjson_equals_strn.exit.us ]
  %i.at = icmp ult i64 %.sroa.0.2.us, %.sroa.11.2.us
  br i1 %i.at, label %yyjson_mut_obj_iter_next.exit.us, label %yyjson_mut_obj_iter_next.exit.thread, !llvm.loop !34

yyjson_mut_obj_iter_next.exit:                    ; preds = %yyjson_mut_obj_iter_next.exit.lr.ph, %yyjson_mut_obj_iter_remove.exit
  %i.au = phi i64 [ %i.bt, %yyjson_mut_obj_iter_remove.exit ], [ %i.c, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 5 uses
  %.0.i73 = phi i8 [ %.1.i, %yyjson_mut_obj_iter_remove.exit ], [ 0, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 4 uses
  %.sroa.18.172 = phi ptr [ %.sroa.18.2, %yyjson_mut_obj_iter_remove.exit ], [ %i.p, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 3 uses
  %.sroa.11.171 = phi i64 [ %.sroa.11.2, %yyjson_mut_obj_iter_remove.exit ], [ %i.n, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 6 uses
  %.sroa.0.170 = phi i64 [ %.sroa.0.2, %yyjson_mut_obj_iter_remove.exit ], [ 0, %yyjson_mut_obj_iter_next.exit.lr.ph ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.18.172, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !104 ; 7 uses
  %i.az = add nuw i64 %.sroa.0.170, 1             ; 4 uses
  %.not26.i = icmp eq ptr %i.ay, null
  br i1 %.not26.i, label %yyjson_mut_obj_iter_next.exit.thread.loopexit81, label %bb.i

bb.i:                                             ; preds = %yyjson_mut_obj_iter_next.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !99
  %i.bb = lshr i64 %i.ba, 8
  %i.bc = icmp eq i64 %i.bb, %i.m
  br i1 %i.bc, label %unsafe_yyjson_equals_strn.exit, label %yyjson_mut_obj_iter_remove.exit

unsafe_yyjson_equals_strn.exit:                   ; preds = %bb.i
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !100
  %bcmp.i = call i32 @bcmp(ptr %i.bf, ptr %i.bd, i64 %i.m)
  %i.bg = icmp eq i32 %bcmp.i, 0
  br i1 %i.bg, label %bb.j, label %yyjson_mut_obj_iter_remove.exit

bb.j:                                             ; preds = %unsafe_yyjson_equals_strn.exit
  %i.bh = trunc nuw i8 %.0.i73 to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !104
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104 ; 2 uses
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.bl, ptr %i.s, align 8, !tbaa !104
  store ptr %3, ptr %i.bi, align 8, !tbaa !104
  br label %yyjson_mut_obj_iter_remove.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = icmp eq i64 %i.az, %.sroa.11.171
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !45

bb.m:                                             ; preds = %bb.l
  store ptr %.sroa.18.172, ptr %i.t, align 8, !tbaa !100
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !104
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = phi ptr [ %.pre, %bb.m ], [ %i.aw, %bb.l ]
  %i.bo = add i64 %.sroa.11.171, -1               ; 2 uses
  %i.bp = and i64 %i.au, 255
  %i.bq = shl i64 %i.bo, 8
  %i.br = or disjoint i64 %i.bp, %i.bq            ; 2 uses
  store i64 %i.br, ptr %i.b, align 8, !tbaa !99
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bl, ptr %i.bs, align 8, !tbaa !104
  br label %yyjson_mut_obj_iter_remove.exit

yyjson_mut_obj_iter_remove.exit:                  ; preds = %bb.i, %bb.n, %bb.k, %unsafe_yyjson_equals_strn.exit
end_hunk_1
begin_hunk_2_@yyjson_mut_patch:bb.a
yyjson_mut_ptr_getx.exit.thread.thread.sink.split: ; preds = %bb.bu, %bb.bs
  %.sink1392 = phi i32 [ 1, %bb.bs ], [ 2, %bb.bu ]
  %.str.35.sink1391 = phi ptr [ @.str.35, %bb.bs ], [ @.str.125, %bb.bu ]
  store i32 %.sink1392, ptr %.0255.sroa.phi752, align 8, !tbaa !156
  store ptr %.str.35.sink1391, ptr %i.s, align 8, !tbaa !157
  store i64 0, ptr %i.t, align 8, !tbaa !158
  br label %yyjson_mut_ptr_getx.exit.thread.thread

yyjson_mut_ptr_getx.exit.thread.thread:           ; preds = %yyjson_mut_ptr_getx.exit.thread.thread.sink.split, %yyjson_mut_ptr_getx.exit.thread
  store i32 7, ptr %.0255, align 8, !tbaa !165
  store ptr @.str.55, ptr %.0255.sroa.phi758, align 8, !tbaa !166
  store i64 %.sroa.0.01209, ptr %.0255.sroa.phi761, align 8, !tbaa !167
  br label %.critedge

yyjson_mut_ptr_getx.exit.thread1001:              ; preds = %bb.bt, %yyjson_mut_ptr_getx.exit
  %.0.i8321004 = phi ptr [ %i.fl, %yyjson_mut_ptr_getx.exit ], [ %.02541211, %bb.bt ]
  %.not.i = icmp eq ptr %.0251, null
  br i1 %.not.i, label %yyjson_mut_equals.exit.thread, label %yyjson_mut_equals.exit, !prof !45

yyjson_mut_equals.exit:                           ; preds = %yyjson_mut_ptr_getx.exit.thread1001
  %i.fn = call zeroext i1 @unsafe_yyjson_mut_equals(ptr noundef nonnull %.0251, ptr noundef nonnull %.0.i8321004)
  br i1 %i.fn, label %bb.cb, label %yyjson_mut_equals.exit.thread, !prof !137

yyjson_mut_equals.exit.thread:                    ; preds = %yyjson_mut_ptr_getx.exit.thread1001, %yyjson_mut_equals.exit
  %i.fo = load i32, ptr %.0255.sroa.phi752, align 8, !tbaa !164
  %i.fp = icmp eq i32 %i.fo, 6
  br i1 %i.fp, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %yyjson_mut_equals.exit.thread
  store i32 2, ptr %.0255, align 8, !tbaa !165
  store ptr @.str.56, ptr %.0255.sroa.phi758, align 8, !tbaa !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0255.sroa.phi752, i8 0, i64 24, i1 false)
  br label %.critedge

bb.bx:                                            ; preds = %yyjson_mut_equals.exit.thread
  store i32 6, ptr %.0255, align 8, !tbaa !165
  store ptr @.str.56, ptr %.0255.sroa.phi758, align 8, !tbaa !166
  store i64 %.sroa.0.01209, ptr %.0255.sroa.phi761, align 8, !tbaa !167
  br label %.critedge

bb.by:                                            ; preds = %bb.ao
  %i.fq = load i32, ptr %.0255.sroa.phi752, align 8, !tbaa !164
  %i.fr = icmp eq i32 %i.fq, 6
  br i1 %i.fr, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 2, ptr %.0255, align 8, !tbaa !165
  store ptr @.str.57, ptr %.0255.sroa.phi758, align 8, !tbaa !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0255.sroa.phi752, i8 0, i64 24, i1 false)
  br label %.critedge

bb.ca:                                            ; preds = %bb.by
  store i32 5, ptr %.0255, align 8, !tbaa !165
  store ptr @.str.57, ptr %.0255.sroa.phi758, align 8, !tbaa !166
  store i64 %.sroa.0.01209, ptr %.0255.sroa.phi761, align 8, !tbaa !167
  br label %.critedge

bb.cb:                                            ; preds = %yyjson_mut_ptr_addx.exit819, %yyjson_mut_ptr_removex.exit827, %yyjson_mut_ptr_replacex.exit, %bb.bb, %yyjson_mut_ptr_addx.exit812, %yyjson_mut_ptr_addx.exit, %yyjson_mut_equals.exit, %bb.ap, %bb.ax, %bb.bf, %yyjson_mut_ptr_getx.exit838.thread992
  %.2 = phi ptr [ %.02541211, %yyjson_mut_ptr_replacex.exit ], [ %.02541211, %bb.bb ], [ %.0251, %bb.ax ], [ %.02541211, %yyjson_mut_ptr_addx.exit812 ], [ %i.el, %bb.bf ], [ %.02541211, %yyjson_mut_ptr_addx.exit ], [ %.0.i837995, %yyjson_mut_ptr_getx.exit838.thread992 ], [ %.02541211, %yyjson_mut_equals.exit ], [ %.02541211, %yyjson_mut_ptr_addx.exit819 ], [ %.02541211, %yyjson_mut_ptr_removex.exit827 ], [ %.0251, %bb.ap ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.p
  br i1 %exitcond.not, label %.critedge, label %yyjson_mut_arr_iter_next.exit, !llvm.loop !453

.critedge:                                        ; preds = %yyjson_mut_arr_iter_next.exit, %bb.cb, %yyjson_mut_is_arr.exit.i, %bb.k, %bb.n, %bb.r, %bb.u, %bb.y, %bb.bw, %bb.bz, %bb.al, %bb.as, %bb.aw, %bb.ba, %bb.be, %bb.bi, %bb.bm, %bb.bn, %bb.br, %bb.bv, %bb.ab, %bb.ae, %bb.ag, %bb.ai, %bb.o, %bb.s, %bb.v, %bb.z, %bb.ac, %bb.af, %bb.ah, %bb.aj, %bb.am, %yyjson_mut_ptr_addx.exit819.thread.thread, %yyjson_mut_ptr_removex.exit827.thread.thread, %yyjson_mut_ptr_replacex.exit.thread.thread, %yyjson_mut_ptr_removex.exit.thread.thread, %yyjson_mut_ptr_addx.exit812.thread.thread, %yyjson_mut_ptr_getx.exit838.thread.thread, %bb.bo, %yyjson_mut_ptr_addx.exit.thread.thread, %yyjson_mut_ptr_getx.exit.thread.thread, %bb.bx, %bb.ca, %bb.i, %bb.j, %bb.g, %bb.h, %bb.e, %bb.f
  %.2258 = phi ptr [ null, %bb.i ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.n ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.ca ], [ null, %bb.bx ], [ null, %yyjson_mut_ptr_getx.exit.thread.thread ], [ null, %yyjson_mut_ptr_addx.exit.thread.thread ], [ null, %bb.bo ], [ null, %yyjson_mut_ptr_getx.exit838.thread.thread ], [ null, %yyjson_mut_ptr_addx.exit812.thread.thread ], [ null, %yyjson_mut_ptr_removex.exit.thread.thread ], [ null, %yyjson_mut_ptr_replacex.exit.thread.thread ], [ null, %yyjson_mut_ptr_removex.exit827.thread.thread ], [ null, %yyjson_mut_ptr_addx.exit819.thread.thread ], [ null, %bb.am ], [ null, %bb.aj ], [ null, %bb.ah ], [ null, %bb.af ], [ null, %bb.ac ], [ null, %bb.z ], [ null, %bb.v ], [ null, %bb.s ], [ null, %bb.o ], [ null, %bb.ai ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ab ], [ null, %bb.bv ], [ null, %bb.br ], [ null, %bb.bn ], [ null, %bb.bm ], [ null, %bb.bi ], [ null, %bb.be ], [ null, %bb.ba ], [ null, %bb.aw ], [ null, %bb.as ], [ null, %bb.al ], [ null, %bb.bz ], [ null, %bb.bw ], [ null, %bb.y ], [ null, %bb.u ], [ null, %bb.r ], [ %i.j, %bb.k ], [ %i.j, %yyjson_mut_is_arr.exit.i ], [ %.2, %bb.cb ], [ %.02541211, %yyjson_mut_arr_iter_next.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret ptr %.2258
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_merge_patch(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.yyjson_val, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.not.i76 = icmp eq ptr %2, null
  %.058.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.058.sroa.gep95 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br i1 %.not.i76, label %yyjson_is_obj.exit77.thread, label %yyjson_is_obj.exit77, !prof !169

yyjson_is_obj.exit77:                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8, !tbaa !99
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 7
  br i1 %i.c, label %bb.b, label %yyjson_is_obj.exit77.thread, !prof !137

yyjson_is_obj.exit77.thread:                      ; preds = %bb.a, %yyjson_is_obj.exit77
  %i.d = tail call ptr @yyjson_val_mut_copy(ptr noundef %0, ptr noundef %2)
  br label %yyjson_mut_obj.exit.thread

bb.b:                                             ; preds = %yyjson_is_obj.exit77
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %yyjson_mut_obj.exit.thread, label %bb.c, !prof !45

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.d, label %unsafe_yyjson_mut_val.exit.i, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j, i64 noundef 1)
  br i1 %i.k, label %.unsafe_yyjson_mut_val.exit.i_crit_edge, label %yyjson_mut_obj.exit.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i_crit_edge:          ; preds = %bb.d
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i

unsafe_yyjson_mut_val.exit.i:                     ; preds = %.unsafe_yyjson_mut_val.exit.i_crit_edge, %bb.c
  %i.l = phi ptr [ %.pre, %.unsafe_yyjson_mut_val.exit.i_crit_edge ], [ %i.h, %bb.c ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.e, align 8, !tbaa !86
  %.not9.i.not = icmp eq ptr %i.l, null
  br i1 %.not9.i.not, label %yyjson_mut_obj.exit.thread, label %bb.e, !prof !105

bb.e:                                             ; preds = %unsafe_yyjson_mut_val.exit.i
  store i64 7, ptr %i.l, align 8, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.not.i75 = icmp eq ptr %1, null
  br i1 %.not.i75, label %.thread107, label %yyjson_is_obj.exit

yyjson_is_obj.exit:                               ; preds = %bb.e
  %i.n = load i64, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 7
  br i1 %i.p, label %bb.f, label %.thread107

.thread107:                                       ; preds = %yyjson_is_obj.exit, %bb.e
  store i64 7, ptr %3, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !100
  store i64 %i.s, ptr %i.q, align 8, !tbaa !100
  br label %yyjson_is_obj.exit.i

bb.f:                                             ; preds = %yyjson_is_obj.exit
  %.not60 = icmp eq ptr %1, %3
  br i1 %.not60, label %yyjson_is_obj.exit.i, label %yyjson_obj_size.exit80

yyjson_obj_size.exit80:                           ; preds = %bb.f
  %i.t = lshr i64 %i.n, 8                         ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %yyjson_is_obj.exit.i, label %yyjson_is_obj.exit.i86.lr.ph

yyjson_is_obj.exit.i86.lr.ph:                     ; preds = %yyjson_obj_size.exit80
  %.053150 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %yyjson_is_obj.exit.i86

yyjson_is_obj.exit.i86:                           ; preds = %yyjson_is_obj.exit.i86.lr.ph, %yyjson_obj_getn.exit92
  %.053153 = phi ptr [ %.053150, %yyjson_is_obj.exit.i86.lr.ph ], [ %.053, %yyjson_obj_getn.exit92 ] ; 3 uses
  %.054152 = phi ptr [ %.058.sroa.gep, %yyjson_is_obj.exit.i86.lr.ph ], [ %i.bs, %yyjson_obj_getn.exit92 ] ; 4 uses
  %.055151 = phi i64 [ 0, %yyjson_is_obj.exit.i86.lr.ph ], [ %i.bl, %yyjson_obj_getn.exit92 ]
  %i.w = getelementptr inbounds nuw i8, ptr %.054152, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100  ; 2 uses
  %i.y = load i64, ptr %.054152, align 8, !tbaa !99
  %i.z = lshr i64 %i.y, 8                         ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.ab = and i64 %i.aa, 7
  %i.ac = icmp ne i64 %i.ab, 7
  %i.ad = icmp eq ptr %i.x, null
  %.not202 = or i1 %i.ad, %i.ac
  %i.ae = lshr i64 %i.aa, 8                       ; 2 uses
  %.not.i90.not148 = icmp eq i64 %i.ae, 0
  %or.cond197 = or i1 %.not202, %.not.i90.not148
  br i1 %or.cond197, label %yyjson_mut_is_obj.exit, label %.lr.ph, !prof !139

.lr.ph:                                           ; preds = %yyjson_is_obj.exit.i86, %unsafe_yyjson_equals_strn.exit.thread
  %.in = phi i64 [ %i.af, %unsafe_yyjson_equals_strn.exit.thread ], [ %i.ae, %yyjson_is_obj.exit.i86 ]
  %.011.i89149 = phi ptr [ %i.at, %unsafe_yyjson_equals_strn.exit.thread ], [ %i.u, %yyjson_is_obj.exit.i86 ] ; 4 uses
  %i.af = add nsw i64 %.in, -1                    ; 2 uses
  %i.ag = load i64, ptr %.011.i89149, align 8, !tbaa !99
  %i.ah = lshr i64 %i.ag, 8
  %i.ai = icmp eq i64 %i.ah, %i.z
  br i1 %i.ai, label %unsafe_yyjson_equals_strn.exit, label %unsafe_yyjson_equals_strn.exit.thread

unsafe_yyjson_equals_strn.exit:                   ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i89149, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !100
  %bcmp.i = call i32 @bcmp(ptr %i.ak, ptr nonnull %i.x, i64 %i.z)
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %yyjson_obj_getn.exit92, label %unsafe_yyjson_equals_strn.exit.thread

unsafe_yyjson_equals_strn.exit.thread:            ; preds = %.lr.ph, %unsafe_yyjson_equals_strn.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.011.i89149, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !99
  %i.ao = and i64 %i.an, 6
  %i.ap = icmp eq i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i89149, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !100
  %i.as = select i1 %i.ap, i64 %i.ar, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as
  %.not.i90.not = icmp eq i64 %i.af, 0
  br i1 %.not.i90.not, label %yyjson_mut_is_obj.exit, label %.lr.ph, !llvm.loop !35

yyjson_mut_is_obj.exit:                           ; preds = %unsafe_yyjson_equals_strn.exit.thread, %yyjson_is_obj.exit.i86
  %i.au = call ptr @yyjson_val_mut_copy(ptr noundef nonnull %0, ptr noundef nonnull %.054152) ; 6 uses
  %i.av = call ptr @yyjson_val_mut_copy(ptr noundef nonnull %0, ptr noundef nonnull %.053153) ; 3 uses
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !99  ; 4 uses
  %i.ax = and i64 %i.aw, 7
  %i.ay = icmp ne i64 %i.ax, 7
  %.not.i72 = icmp eq ptr %i.au, null
  %or.cond = select i1 %i.ay, i1 true, i1 %.not.i72, !prof !138
  br i1 %or.cond, label %yyjson_mut_obj.exit.thread, label %bb.g, !prof !138

bb.g:                                             ; preds = %yyjson_mut_is_obj.exit
  %i.az = load i64, ptr %i.au, align 8, !tbaa !99
  %i.ba = and i64 %i.az, 7
  %i.bb = icmp eq i64 %i.ba, 5
  %i.bc = icmp ne ptr %i.av, null
  %spec.select.i64 = select i1 %i.bb, i1 %i.bc, i1 false, !prof !62
  br i1 %spec.select.i64, label %bb.h, label %yyjson_mut_obj.exit.thread, !prof !137

bb.h:                                             ; preds = %bb.g
  %.not.i66 = icmp ult i64 %i.aw, 256
  br i1 %.not.i66, label %yyjson_mut_obj_add.exit65, label %bb.i, !prof !45

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !104
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104
  store ptr %i.au, ptr %i.bg, align 8, !tbaa !104
  br label %yyjson_mut_obj_add.exit65

yyjson_mut_obj_add.exit65:                        ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.bh, %bb.i ], [ %i.au, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %.sink, ptr %i.bi, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.av, ptr %i.bj, align 8, !tbaa !104
  store ptr %i.au, ptr %i.v, align 8, !tbaa !100
  %4 = and i64 %i.aw, 255
  %5 = and i64 %i.aw, -256
  %i.bk = add i64 %5, 256
  %6 = or disjoint i64 %i.bk, %4
  store i64 %6, ptr %i.l, align 8, !tbaa !99
  br label %yyjson_obj_getn.exit92

yyjson_obj_getn.exit92:                           ; preds = %unsafe_yyjson_equals_strn.exit, %yyjson_mut_obj_add.exit65
  %i.bl = add nuw nsw i64 %.055151, 1             ; 2 uses
  %i.bm = load i64, ptr %.053153, align 8, !tbaa !99
  %i.bn = and i64 %i.bm, 6
  %i.bo = icmp eq i64 %i.bn, 6
  %i.bp = getelementptr inbounds nuw i8, ptr %.054152, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !100
  %i.br = select i1 %i.bo, i64 %i.bq, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.053153, i64 %i.br ; 2 uses
  %.053 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %exitcond.not = icmp eq i64 %i.bl, %i.t
  br i1 %exitcond.not, label %yyjson_is_obj.exit.i, label %yyjson_is_obj.exit.i86, !llvm.loop !454

yyjson_is_obj.exit.i:                             ; preds = %yyjson_obj_getn.exit92, %yyjson_obj_size.exit80, %bb.f, %.thread107
  %.058.sroa.phi96112127 = phi ptr [ %.058.sroa.gep95, %.thread107 ], [ %.058.sroa.gep, %bb.f ], [ %.058.sroa.gep, %yyjson_obj_size.exit80 ], [ %.058.sroa.gep, %yyjson_obj_getn.exit92 ]
  %.058113125 = phi ptr [ %3, %.thread107 ], [ %1, %bb.f ], [ %1, %yyjson_obj_size.exit80 ], [ %1, %yyjson_obj_getn.exit92 ]
  %i.bt = load i64, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.bu = and i64 %i.bt, 7
  %i.bv = icmp eq i64 %i.bu, 7
  br i1 %i.bv, label %yyjson_obj_size.exit, label %yyjson_mut_obj.exit.thread

yyjson_obj_size.exit:                             ; preds = %yyjson_is_obj.exit.i
  %i.bw = lshr i64 %i.bt, 8                       ; 2 uses
  %.not165 = icmp eq i64 %i.bw, 0
  br i1 %.not165, label %yyjson_mut_obj.exit.thread, label %.lr.ph161

.lr.ph161:                                        ; preds = %yyjson_obj_size.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0157 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph161, %bb.o
  %.0160 = phi ptr [ %.0157, %.lr.ph161 ], [ %.0, %bb.o ] ; 4 uses
  %.1159 = phi ptr [ %i.bx, %.lr.ph161 ], [ %i.dz, %bb.o ] ; 4 uses
  %.156158 = phi i64 [ 0, %.lr.ph161 ], [ %i.dt, %bb.o ]
  %i.bz = load i64, ptr %.0160, align 8, !tbaa !99 ; 2 uses
  %i.ca = and i64 %i.bz, 7
  %i.cb = icmp eq i64 %i.ca, 2
  br i1 %i.cb, label %bb.o, label %yyjson_is_obj.exit.i82

yyjson_is_obj.exit.i82:                           ; preds = %bb.j
  %i.cc = call ptr @yyjson_val_mut_copy(ptr noundef nonnull %0, ptr noundef nonnull %.1159) ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1159, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !100 ; 2 uses
  %i.cf = load i64, ptr %.1159, align 8, !tbaa !99
  %i.cg = lshr i64 %i.cf, 8                       ; 2 uses
  %i.ch = load i64, ptr %.058113125, align 8, !tbaa !99 ; 2 uses
  %i.ci = and i64 %i.ch, 7
  %i.cj = icmp ne i64 %i.ci, 7
  %i.ck = icmp eq ptr %i.ce, null
  %.not205 = or i1 %i.ck, %i.cj
  %i.cl = lshr i64 %i.ch, 8                       ; 2 uses
  %.not.i84.not154 = icmp eq i64 %i.cl, 0
  %or.cond199 = or i1 %.not205, %.not.i84.not154
  br i1 %or.cond199, label %yyjson_mut_is_obj.exit71, label %.lr.ph156, !prof !139

.lr.ph156:                                        ; preds = %yyjson_is_obj.exit.i82, %unsafe_yyjson_equals_strn.exit94.thread
  %.in166 = phi i64 [ %i.cm, %unsafe_yyjson_equals_strn.exit94.thread ], [ %i.cl, %yyjson_is_obj.exit.i82 ]
  %.011.i155 = phi ptr [ %i.da, %unsafe_yyjson_equals_strn.exit94.thread ], [ %.058.sroa.phi96112127, %yyjson_is_obj.exit.i82 ] ; 5 uses
  %i.cm = add nsw i64 %.in166, -1                 ; 2 uses
  %i.cn = load i64, ptr %.011.i155, align 8, !tbaa !99
  %i.co = lshr i64 %i.cn, 8
  %i.cp = icmp eq i64 %i.co, %i.cg
  br i1 %i.cp, label %unsafe_yyjson_equals_strn.exit94, label %unsafe_yyjson_equals_strn.exit94.thread

unsafe_yyjson_equals_strn.exit94:                 ; preds = %.lr.ph156
  %i.cq = getelementptr inbounds nuw i8, ptr %.011.i155, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !100
  %bcmp.i93 = call i32 @bcmp(ptr %i.cr, ptr nonnull %i.ce, i64 %i.cg)
  %i.cs = icmp eq i32 %bcmp.i93, 0
  br i1 %i.cs, label %bb.k, label %unsafe_yyjson_equals_strn.exit94.thread

unsafe_yyjson_equals_strn.exit94.thread:          ; preds = %.lr.ph156, %unsafe_yyjson_equals_strn.exit94
  %i.ct = getelementptr inbounds nuw i8, ptr %.011.i155, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !99
  %i.cv = and i64 %i.cu, 6
  %i.cw = icmp eq i64 %i.cv, 6
  %i.cx = getelementptr inbounds nuw i8, ptr %.011.i155, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !100
  %i.cz = select i1 %i.cw, i64 %i.cy, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cz
  %.not.i84.not = icmp eq i64 %i.cm, 0
  br i1 %.not.i84.not, label %yyjson_mut_is_obj.exit71, label %.lr.ph156, !llvm.loop !35

bb.k:                                             ; preds = %unsafe_yyjson_equals_strn.exit94
  %i.db = getelementptr inbounds nuw i8, ptr %.011.i155, i64 16
  br label %yyjson_mut_is_obj.exit71

yyjson_mut_is_obj.exit71:                         ; preds = %unsafe_yyjson_equals_strn.exit94.thread, %yyjson_is_obj.exit.i82, %bb.k
  %.1.i83 = phi ptr [ %i.db, %bb.k ], [ null, %yyjson_is_obj.exit.i82 ], [ null, %unsafe_yyjson_equals_strn.exit94.thread ]
  %i.dc = call ptr @yyjson_merge_patch(ptr noundef nonnull %0, ptr noundef %.1.i83, ptr noundef nonnull %.0160) ; 3 uses
  %i.dd = load i64, ptr %i.l, align 8, !tbaa !99  ; 4 uses
  %i.de = and i64 %i.dd, 7
  %i.df = icmp ne i64 %i.de, 7
  %.not.i73 = icmp eq ptr %i.cc, null
  %or.cond145 = select i1 %i.df, i1 true, i1 %.not.i73, !prof !138
  br i1 %or.cond145, label %yyjson_mut_obj.exit.thread, label %bb.l, !prof !138

bb.l:                                             ; preds = %yyjson_mut_is_obj.exit71
  %i.dg = load i64, ptr %i.cc, align 8, !tbaa !99
  %i.dh = and i64 %i.dg, 7
  %i.di = icmp eq i64 %i.dh, 5
  %i.dj = icmp ne ptr %i.dc, null
  %spec.select.i = select i1 %i.di, i1 %i.dj, i1 false, !prof !62
  br i1 %spec.select.i, label %bb.m, label %yyjson_mut_obj.exit.thread, !prof !137

bb.m:                                             ; preds = %bb.l
  %.not.i67 = icmp ult i64 %i.dd, 256
  br i1 %.not.i67, label %yyjson_mut_obj_add.exit, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  %i.dk = load ptr, ptr %i.by, align 8, !tbaa !100
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !104
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !104
  store ptr %i.cc, ptr %i.dn, align 8, !tbaa !104
  br label %yyjson_mut_obj_add.exit

yyjson_mut_obj_add.exit:                          ; preds = %bb.m, %bb.n
  %.sink170 = phi ptr [ %i.do, %bb.n ], [ %i.cc, %bb.m ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %.sink170, ptr %i.dp, align 8, !tbaa !104
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.dc, ptr %i.dq, align 8, !tbaa !104
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !100
  %7 = and i64 %i.dd, 255
  %8 = and i64 %i.dd, -256
  %i.dr = add i64 %8, 256
  %9 = or disjoint i64 %i.dr, %7
  store i64 %9, ptr %i.l, align 8, !tbaa !99
  %.pre171 = load i64, ptr %.0160, align 8, !tbaa !99
  br label %bb.o

bb.o:                                             ; preds = %yyjson_mut_obj_add.exit, %bb.j
  %i.ds = phi i64 [ %.pre171, %yyjson_mut_obj_add.exit ], [ %i.bz, %bb.j ]
  %i.dt = add nuw nsw i64 %.156158, 1             ; 2 uses
  %i.du = and i64 %i.ds, 6
  %i.dv = icmp eq i64 %i.du, 6
  %i.dw = getelementptr inbounds nuw i8, ptr %.1159, i64 24
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !100
  %i.dy = select i1 %i.dv, i64 %i.dx, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.0160, i64 %i.dy ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %exitcond169.not = icmp eq i64 %i.dt, %i.bw
  br i1 %exitcond169.not, label %yyjson_mut_obj.exit.thread, label %bb.j, !llvm.loop !455

yyjson_mut_obj.exit.thread:                       ; preds = %yyjson_mut_is_obj.exit, %bb.g, %bb.o, %bb.l, %yyjson_mut_is_obj.exit71, %yyjson_is_obj.exit.i, %yyjson_obj_size.exit, %bb.d, %unsafe_yyjson_mut_val.exit.i, %bb.b, %yyjson_is_obj.exit77.thread
  %.057 = phi ptr [ %i.d, %yyjson_is_obj.exit77.thread ], [ null, %unsafe_yyjson_mut_val.exit.i ], [ %i.l, %yyjson_obj_size.exit ], [ null, %bb.d ], [ null, %bb.b ], [ null, %yyjson_mut_is_obj.exit71 ], [ %i.l, %yyjson_is_obj.exit.i ], [ %i.l, %bb.o ], [ null, %bb.l ], [ null, %bb.g ], [ null, %yyjson_mut_is_obj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret ptr %.057
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_mut_merge_patch(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 5 uses
  %.sroa.5 = alloca i64, align 8                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.not.i80 = icmp eq ptr %2, null
  %.060.sroa.gep115 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not.i80, label %yyjson_mut_val_mut_copy.exit, label %yyjson_mut_is_obj.exit81, !prof !169

yyjson_mut_is_obj.exit81:                         ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8, !tbaa !99
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 7
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.b, !prof !137

bb.b:                                             ; preds = %yyjson_mut_is_obj.exit81
  br i1 %.not.i, label %yyjson_mut_val_mut_copy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc ptr @unsafe_yyjson_mut_val_mut_copy(ptr noundef %0, ptr noundef nonnull readonly %2)
  br label %yyjson_mut_val_mut_copy.exit

bb.d:                                             ; preds = %yyjson_mut_is_obj.exit81
  br i1 %.not.i, label %yyjson_mut_val_mut_copy.exit, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.f, label %unsafe_yyjson_mut_val.exit.i, !prof !45

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j, i64 noundef 1)
  br i1 %i.k, label %.unsafe_yyjson_mut_val.exit.i_crit_edge, label %yyjson_mut_val_mut_copy.exit, !prof !62

.unsafe_yyjson_mut_val.exit.i_crit_edge:          ; preds = %bb.f
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i

unsafe_yyjson_mut_val.exit.i:                     ; preds = %.unsafe_yyjson_mut_val.exit.i_crit_edge, %bb.e
  %i.l = phi ptr [ %.pre, %.unsafe_yyjson_mut_val.exit.i_crit_edge ], [ %i.h, %bb.e ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.e, align 8, !tbaa !86
  %.not9.i.not = icmp eq ptr %i.l, null
  br i1 %.not9.i.not, label %yyjson_mut_val_mut_copy.exit, label %bb.g, !prof !105

bb.g:                                             ; preds = %unsafe_yyjson_mut_val.exit.i
  store i64 7, ptr %i.l, align 8, !tbaa !102
  store i64 0, ptr %.sroa.0, align 8
  store i64 0, ptr %.sroa.5, align 8
  %.not.i78 = icmp eq ptr %1, null
  br i1 %.not.i78, label %.thread127, label %yyjson_mut_is_obj.exit79

yyjson_mut_is_obj.exit79:                         ; preds = %bb.g
  %i.n = load i64, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 7
  br i1 %i.p, label %yyjson_mut_obj_size.exit87, label %.thread127

.thread127:                                       ; preds = %yyjson_mut_is_obj.exit79, %bb.g
  store i64 7, ptr %.sroa.0, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !100
  store i64 %i.r, ptr %.sroa.5, align 8, !tbaa !100
  br label %yyjson_mut_is_obj.exit.i

yyjson_mut_obj_size.exit87:                       ; preds = %yyjson_mut_is_obj.exit79
  %i.s = lshr i64 %i.n, 8                         ; 2 uses
  %.not65 = icmp eq i64 %i.s, 0
  br i1 %.not65, label %yyjson_mut_is_obj.exit.i, label %bb.h

bb.h:                                             ; preds = %yyjson_mut_obj_size.exit87
  %i.t = load ptr, ptr %.060.sroa.gep115, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 3 uses
  %.not66 = icmp eq ptr %i.x, null
  br i1 %.not66, label %yyjson_mut_is_obj.exit.i.i91.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104
  br label %yyjson_mut_is_obj.exit.i.i91.lr.ph

yyjson_mut_is_obj.exit.i.i91.lr.ph:               ; preds = %bb.i, %bb.h
  %.ph256 = phi ptr [ null, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %yyjson_mut_is_obj.exit.i.i91

yyjson_mut_is_obj.exit.i.i91:                     ; preds = %yyjson_mut_is_obj.exit.i.i91.lr.ph, %bb.p
  %.055212 = phi ptr [ %.ph256, %yyjson_mut_is_obj.exit.i.i91.lr.ph ], [ %i.bs, %bb.p ] ; 3 uses
  %.056211 = phi ptr [ %i.x, %yyjson_mut_is_obj.exit.i.i91.lr.ph ], [ %i.bq, %bb.p ] ; 3 uses
  %.057210 = phi i64 [ 0, %yyjson_mut_is_obj.exit.i.i91.lr.ph ], [ %i.bo, %bb.p ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.056211, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 2 uses
  %i.ae = load i64, ptr %.056211, align 8, !tbaa !99
  %i.af = lshr i64 %i.ae, 8                       ; 2 uses
  %i.ag = load i64, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %i.ai = icmp eq i64 %i.ah, 7
  br i1 %i.ai, label %yyjson_mut_obj_size.exit.i92, label %yyjson_mut_val_mut_copy.exit107

yyjson_mut_obj_size.exit.i92:                     ; preds = %yyjson_mut_is_obj.exit.i.i91
  %i.aj = lshr i64 %i.ag, 8                       ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = icmp ne ptr %i.ad, null
  %i.am = and i1 %i.al, %i.ak
  br i1 %i.am, label %bb.j, label %yyjson_mut_val_mut_copy.exit107, !prof !137

bb.j:                                             ; preds = %yyjson_mut_obj_size.exit.i92
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !100
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %unsafe_yyjson_equals_strn.exit.backedge
  %.in = phi i64 [ %i.aj, %bb.j ], [ %i.ao, %unsafe_yyjson_equals_strn.exit.backedge ]
  %.pn = phi ptr [ %i.an, %bb.j ], [ %.011.i99209, %unsafe_yyjson_equals_strn.exit.backedge ]
  %.pn.i97206.pn.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.pn.i97206.pn = load ptr, ptr %.pn.i97206.pn.in, align 8, !tbaa !104
  %.011.i99209.in = getelementptr inbounds nuw i8, ptr %.pn.i97206.pn, i64 16
  %.011.i99209 = load ptr, ptr %.011.i99209.in, align 8, !tbaa !104 ; 4 uses
  %i.ao = add nsw i64 %.in, -1                    ; 2 uses
  %i.ap = load i64, ptr %.011.i99209, align 8, !tbaa !99
  %i.aq = lshr i64 %i.ap, 8
  %i.ar = icmp eq i64 %i.aq, %i.af
  br i1 %i.ar, label %.split, label %unsafe_yyjson_equals_strn.exit.backedge

.split:                                           ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i99209, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !100
  %bcmp.i = tail call i32 @bcmp(ptr %i.at, ptr nonnull %i.ad, i64 %i.af)
  %i.au = icmp eq i32 %bcmp.i, 0
  br i1 %i.au, label %yyjson_mut_obj_getn.exit102, label %unsafe_yyjson_equals_strn.exit.backedge

unsafe_yyjson_equals_strn.exit.backedge:          ; preds = %.split, %bb.k
  %.not.i100 = icmp eq i64 %i.ao, 0
  br i1 %.not.i100, label %yyjson_mut_val_mut_copy.exit107, label %bb.k, !llvm.loop !36

yyjson_mut_obj_getn.exit102:                      ; preds = %.split
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i99209, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104
  %.not69 = icmp eq ptr %i.aw, null
  br i1 %.not69, label %yyjson_mut_val_mut_copy.exit107, label %bb.p

yyjson_mut_val_mut_copy.exit107:                  ; preds = %unsafe_yyjson_equals_strn.exit.backedge, %yyjson_mut_obj_getn.exit102, %yyjson_mut_obj_size.exit.i92, %yyjson_mut_is_obj.exit.i.i91
  %i.ax = tail call fastcc ptr @unsafe_yyjson_mut_val_mut_copy(ptr noundef %0, ptr noundef nonnull readonly %.056211) ; 6 uses
  %.not199 = icmp eq ptr %.055212, null
  br i1 %.not199, label %yyjson_mut_is_obj.exit, label %bb.l

bb.l:                                             ; preds = %yyjson_mut_val_mut_copy.exit107
  %i.ay = tail call fastcc ptr @unsafe_yyjson_mut_val_mut_copy(ptr noundef %0, ptr noundef nonnull readonly %.055212)
  br label %yyjson_mut_is_obj.exit

yyjson_mut_is_obj.exit:                           ; preds = %yyjson_mut_val_mut_copy.exit107, %bb.l
  %.0.i109 = phi ptr [ %i.ay, %bb.l ], [ null, %yyjson_mut_val_mut_copy.exit107 ] ; 3 uses
  %i.az = load i64, ptr %i.l, align 8, !tbaa !99  ; 4 uses
  %i.ba = and i64 %i.az, 7
  %i.bb = icmp ne i64 %i.ba, 7
  %.not.i82 = icmp eq ptr %i.ax, null
  %or.cond = select i1 %i.bb, i1 true, i1 %.not.i82, !prof !138
  br i1 %or.cond, label %yyjson_mut_val_mut_copy.exit, label %bb.m, !prof !138

bb.m:                                             ; preds = %yyjson_mut_is_obj.exit
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !99
  %i.bd = and i64 %i.bc, 7
  %i.be = icmp eq i64 %i.bd, 5
  %i.bf = icmp ne ptr %.0.i109, null
  %spec.select.i70 = select i1 %i.be, i1 %i.bf, i1 false, !prof !62
  br i1 %spec.select.i70, label %bb.n, label %yyjson_mut_val_mut_copy.exit, !prof !137

bb.n:                                             ; preds = %bb.m
  %.not.i72 = icmp ult i64 %i.az, 256
  br i1 %.not.i72, label %yyjson_mut_obj_add.exit71, label %bb.o, !prof !45

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !104
  store ptr %i.ax, ptr %i.bj, align 8, !tbaa !104
  br label %yyjson_mut_obj_add.exit71

yyjson_mut_obj_add.exit71:                        ; preds = %bb.n, %bb.o
  %.sink = phi ptr [ %i.bk, %bb.o ], [ %i.ax, %bb.n ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i109, i64 16
  store ptr %.sink, ptr %i.bl, align 8, !tbaa !104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %.0.i109, ptr %i.bm, align 8, !tbaa !104
  store ptr %i.ax, ptr %i.ab, align 8, !tbaa !100
  %3 = and i64 %i.az, 255
  %4 = and i64 %i.az, -256
  %i.bn = add i64 %4, 256
  %5 = or disjoint i64 %i.bn, %3
  store i64 %5, ptr %i.l, align 8, !tbaa !99
  br label %bb.p

bb.p:                                             ; preds = %yyjson_mut_obj_add.exit71, %yyjson_mut_obj_getn.exit102
  %i.bo = add nuw nsw i64 %.057210, 1             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.055212, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !104
  %exitcond.not = icmp eq i64 %i.bo, %i.s
  br i1 %exitcond.not, label %yyjson_mut_is_obj.exit.i, label %yyjson_mut_is_obj.exit.i.i91, !llvm.loop !456

yyjson_mut_is_obj.exit.i:                         ; preds = %bb.p, %yyjson_mut_obj_size.exit87, %.thread127
  %.060.sroa.phi114132173 = phi ptr [ %.sroa.5, %.thread127 ], [ %.060.sroa.gep115, %yyjson_mut_obj_size.exit87 ], [ %.060.sroa.gep115, %bb.p ]
  %.060133171 = phi ptr [ %.sroa.0, %.thread127 ], [ %1, %yyjson_mut_obj_size.exit87 ], [ %1, %bb.p ]
  %i.bt = load i64, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.bu = and i64 %i.bt, 7
  %i.bv = icmp eq i64 %i.bu, 7
  br i1 %i.bv, label %yyjson_mut_obj_size.exit, label %yyjson_mut_val_mut_copy.exit

yyjson_mut_obj_size.exit:                         ; preds = %yyjson_mut_is_obj.exit.i
  %i.bw = lshr i64 %i.bt, 8                       ; 2 uses
  %.not67 = icmp eq i64 %i.bw, 0
  br i1 %.not67, label %yyjson_mut_val_mut_copy.exit, label %bb.q

bb.q:                                             ; preds = %yyjson_mut_obj_size.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !104
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !104 ; 3 uses
  %.not68 = icmp eq ptr %i.cc, null
  br i1 %.not68, label %.lr.ph, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !104
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.q
  %i.cf = phi ptr [ %i.ce, %bb.r ], [ null, %bb.q ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.ab
  %.0221 = phi ptr [ %i.cf, %.lr.ph ], [ %i.ea, %bb.ab ] ; 3 uses
  %.1220 = phi ptr [ %i.cc, %.lr.ph ], [ %i.dy, %bb.ab ] ; 4 uses
  %.158219 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.ab ]
  %i.ch = load i64, ptr %.0221, align 8, !tbaa !99
  %i.ci = and i64 %i.ch, 7
  %i.cj = icmp eq i64 %i.ci, 2
  br i1 %i.cj, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not200 = icmp eq ptr %.1220, null
  br i1 %.not200, label %yyjson_mut_val_mut_copy.exit113, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call fastcc ptr @unsafe_yyjson_mut_val_mut_copy(ptr noundef %0, ptr noundef nonnull readonly %.1220)
  br label %yyjson_mut_val_mut_copy.exit113

yyjson_mut_val_mut_copy.exit113:                  ; preds = %bb.t, %bb.u
  %.0.i112 = phi ptr [ %i.ck, %bb.u ], [ null, %bb.t ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1220, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !100 ; 2 uses
  %i.cn = load i64, ptr %.1220, align 8, !tbaa !99
  %i.co = lshr i64 %i.cn, 8                       ; 2 uses
  %i.cp = load i64, ptr %.060133171, align 8, !tbaa !99 ; 2 uses
  %i.cq = and i64 %i.cp, 7
  %i.cr = icmp eq i64 %i.cq, 7
  br i1 %i.cr, label %yyjson_mut_obj_size.exit.i, label %yyjson_mut_is_obj.exit77

yyjson_mut_obj_size.exit.i:                       ; preds = %yyjson_mut_val_mut_copy.exit113
  %i.cs = lshr i64 %i.cp, 8                       ; 2 uses
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = icmp ne ptr %i.cm, null
  %i.cv = and i1 %i.cu, %i.ct
  br i1 %i.cv, label %bb.v, label %yyjson_mut_is_obj.exit77, !prof !137

bb.v:                                             ; preds = %yyjson_mut_obj_size.exit.i
  %i.cw = load ptr, ptr %.060.sroa.phi114132173, align 8, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %unsafe_yyjson_equals_strn.exit104.backedge
  %.in227 = phi i64 [ %i.cs, %bb.v ], [ %i.cx, %unsafe_yyjson_equals_strn.exit104.backedge ]
  %.pn228 = phi ptr [ %i.cw, %bb.v ], [ %.011.i218, %unsafe_yyjson_equals_strn.exit104.backedge ]
  %.pn.i215.pn.in = getelementptr inbounds nuw i8, ptr %.pn228, i64 16
  %.pn.i215.pn = load ptr, ptr %.pn.i215.pn.in, align 8, !tbaa !104
  %.011.i218.in = getelementptr inbounds nuw i8, ptr %.pn.i215.pn, i64 16
  %.011.i218 = load ptr, ptr %.011.i218.in, align 8, !tbaa !104 ; 4 uses
  %i.cx = add nsw i64 %.in227, -1                 ; 2 uses
  %i.cy = load i64, ptr %.011.i218, align 8, !tbaa !99
  %i.cz = lshr i64 %i.cy, 8
  %i.da = icmp eq i64 %i.cz, %i.co
  br i1 %i.da, label %.split192, label %unsafe_yyjson_equals_strn.exit104.backedge

.split192:                                        ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %.011.i218, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !100
  %bcmp.i103 = tail call i32 @bcmp(ptr %i.dc, ptr nonnull %i.cm, i64 %i.co)
  %i.dd = icmp eq i32 %bcmp.i103, 0
  br i1 %i.dd, label %bb.x, label %unsafe_yyjson_equals_strn.exit104.backedge

unsafe_yyjson_equals_strn.exit104.backedge:       ; preds = %.split192, %bb.w
  %.not.i89 = icmp eq i64 %i.cx, 0
  br i1 %.not.i89, label %yyjson_mut_is_obj.exit77, label %bb.w, !llvm.loop !36

bb.x:                                             ; preds = %.split192
  %i.de = getelementptr inbounds nuw i8, ptr %.011.i218, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !104
  br label %yyjson_mut_is_obj.exit77

yyjson_mut_is_obj.exit77:                         ; preds = %unsafe_yyjson_equals_strn.exit104.backedge, %yyjson_mut_val_mut_copy.exit113, %yyjson_mut_obj_size.exit.i, %bb.x
  %.1.i88 = phi ptr [ %i.df, %bb.x ], [ null, %yyjson_mut_val_mut_copy.exit113 ], [ null, %yyjson_mut_obj_size.exit.i ], [ null, %unsafe_yyjson_equals_strn.exit104.backedge ]
  %i.dg = tail call ptr @yyjson_mut_merge_patch(ptr noundef nonnull %0, ptr noundef %.1.i88, ptr noundef nonnull %.0221) ; 3 uses
  %i.dh = load i64, ptr %i.l, align 8, !tbaa !99  ; 4 uses
  %i.di = and i64 %i.dh, 7
  %i.dj = icmp ne i64 %i.di, 7
  %.not.i83 = icmp eq ptr %.0.i112, null
  %or.cond201 = select i1 %i.dj, i1 true, i1 %.not.i83, !prof !138
  br i1 %or.cond201, label %yyjson_mut_val_mut_copy.exit, label %bb.y, !prof !138

bb.y:                                             ; preds = %yyjson_mut_is_obj.exit77
  %i.dk = load i64, ptr %.0.i112, align 8, !tbaa !99
  %i.dl = and i64 %i.dk, 7
  %i.dm = icmp eq i64 %i.dl, 5
  %i.dn = icmp ne ptr %i.dg, null
  %spec.select.i = select i1 %i.dm, i1 %i.dn, i1 false, !prof !62
  br i1 %spec.select.i, label %bb.z, label %yyjson_mut_val_mut_copy.exit, !prof !137

bb.z:                                             ; preds = %bb.y
  %.not.i73 = icmp ult i64 %i.dh, 256
  br i1 %.not.i73, label %yyjson_mut_obj_add.exit, label %bb.aa, !prof !45

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.cg, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !104
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !104
  store ptr %.0.i112, ptr %i.dr, align 8, !tbaa !104
  br label %yyjson_mut_obj_add.exit

yyjson_mut_obj_add.exit:                          ; preds = %bb.z, %bb.aa
  %.sink233 = phi ptr [ %i.ds, %bb.aa ], [ %.0.i112, %bb.z ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %.sink233, ptr %i.dt, align 8, !tbaa !104
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i112, i64 16
  store ptr %i.dg, ptr %i.du, align 8, !tbaa !104
  store ptr %.0.i112, ptr %i.cg, align 8, !tbaa !100
  %6 = and i64 %i.dh, 255
  %7 = and i64 %i.dh, -256
  %i.dv = add i64 %7, 256
  %8 = or disjoint i64 %i.dv, %6
  store i64 %8, ptr %i.l, align 8, !tbaa !99
  br label %bb.ab

bb.ab:                                            ; preds = %yyjson_mut_obj_add.exit, %bb.s
  %i.dw = add nuw nsw i64 %.158219, 1             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0221, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !104 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !104
  %exitcond232.not = icmp eq i64 %i.dw, %i.bw
  br i1 %exitcond232.not, label %yyjson_mut_val_mut_copy.exit, label %bb.s, !llvm.loop !457

yyjson_mut_val_mut_copy.exit:                     ; preds = %yyjson_mut_is_obj.exit, %bb.m, %bb.ab, %bb.y, %yyjson_mut_is_obj.exit77, %yyjson_mut_is_obj.exit.i, %yyjson_mut_obj_size.exit, %bb.f, %unsafe_yyjson_mut_val.exit.i, %bb.d, %bb.a, %bb.c, %bb.b
  %.059 = phi ptr [ null, %unsafe_yyjson_mut_val.exit.i ], [ %i.l, %yyjson_mut_is_obj.exit.i ], [ null, %bb.a ], [ null, %bb.f ], [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.d ], [ null, %yyjson_mut_is_obj.exit77 ], [ %i.l, %yyjson_mut_obj_size.exit ], [ %i.l, %bb.ab ], [ null, %bb.y ], [ null, %bb.m ], [ null, %yyjson_mut_is_obj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret ptr %.059
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @null_malloc(ptr nofree readnone captures(none) %0, i64 %1) #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @null_realloc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @null_free(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @read_str_sq(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #26 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 5 uses
  %i.c = and i32 %2, 64
  %.not370 = icmp eq i32 %i.c, 0                  ; 3 uses
  br label %.backedge396

.backedge396:                                     ; preds = %.backedge396.backedge, %bb.a
  %.0338 = phi ptr [ %i.b, %bb.a ], [ %.0338.be, %.backedge396.backedge ] ; 18 uses
  %i.d = load i8, ptr %.0338, align 1, !tbaa !100 ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !100
  %i.h = and i8 %i.g, 2
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.r, label %bb.b, !prof !45

bb.b:                                             ; preds = %.backedge396
  %i.i = getelementptr inbounds nuw i8, ptr %.0338, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !100   ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !100
  %i.n = and i8 %i.m, 2
  %.not355 = icmp eq i8 %i.n, 0
  br i1 %.not355, label %bb.r, label %bb.c, !prof !45

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.0338, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !100   ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !100
  %i.t = and i8 %i.s, 2
  %.not356 = icmp eq i8 %i.t, 0
  br i1 %.not356, label %bb.r, label %bb.d, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0338, i64 3 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !100   ; 2 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !100
  %i.z = and i8 %i.y, 2
  %.not357 = icmp eq i8 %i.z, 0
  br i1 %.not357, label %bb.r, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.0338, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !100 ; 2 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !100
  %i.af = and i8 %i.ae, 2
  %.not358 = icmp eq i8 %i.af, 0
  br i1 %.not358, label %bb.r, label %bb.f, !prof !45

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.0338, i64 5 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !100 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !100
  %i.al = and i8 %i.ak, 2
  %.not359 = icmp eq i8 %i.al, 0
  br i1 %.not359, label %bb.r, label %bb.g, !prof !45

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.0338, i64 6 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !100 ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !100
  %i.ar = and i8 %i.aq, 2
  %.not360 = icmp eq i8 %i.ar, 0
  br i1 %.not360, label %bb.r, label %bb.h, !prof !45

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.0338, i64 7 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !100 ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !100
  %i.ax = and i8 %i.aw, 2
  %.not361 = icmp eq i8 %i.ax, 0
  br i1 %.not361, label %bb.r, label %bb.i, !prof !45

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.0338, i64 8 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !100 ; 2 uses
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !100
  %i.bd = and i8 %i.bc, 2
  %.not362 = icmp eq i8 %i.bd, 0
  br i1 %.not362, label %bb.r, label %bb.j, !prof !45

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0338, i64 9 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !100 ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !100
  %i.bj = and i8 %i.bi, 2
  %.not363 = icmp eq i8 %i.bj, 0
  br i1 %.not363, label %bb.r, label %bb.k, !prof !45

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.0338, i64 10 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !100 ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !100
  %i.bp = and i8 %i.bo, 2
  %.not364 = icmp eq i8 %i.bp, 0
  br i1 %.not364, label %bb.r, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %.0338, i64 11 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !100 ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !100
  %i.bv = and i8 %i.bu, 2
  %.not365 = icmp eq i8 %i.bv, 0
  br i1 %.not365, label %bb.r, label %bb.m, !prof !45

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %.0338, i64 12 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !100 ; 2 uses
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !100
  %i.cb = and i8 %i.ca, 2
  %.not366 = icmp eq i8 %i.cb, 0
  br i1 %.not366, label %bb.r, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.0338, i64 13 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !100 ; 2 uses
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !100
  %i.ch = and i8 %i.cg, 2
  %.not367 = icmp eq i8 %i.ch, 0
  br i1 %.not367, label %bb.r, label %bb.o, !prof !45

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %.0338, i64 14 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !100 ; 2 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !100
end_hunk_2
