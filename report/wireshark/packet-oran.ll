Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-oran?download=true
inline.NumInlined: 214
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@dissect_oran_c_section:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea) #14
  %i.bae = load i32, ptr @hf_oran_disable_bfws, align 4
  %i.baf = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.zq, i32 noundef %i.bae, ptr noundef %0, i32 noundef %i.aas, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.dy) ; 0 uses
  %i.bag = load i8, ptr %i.dy, align 1, !range !6, !noundef !7
  %i.bah = trunc nuw i8 %i.bag to i1
  br i1 %i.bah, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.zk, ptr noundef nonnull @.str.1638)
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.bai = load i32, ptr @hf_oran_rad, align 4
  %i.baj = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.zq, i32 noundef %i.bai, ptr noundef %0, i32 noundef %i.aas, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.ea) ; 0 uses
  %i.bak = load i32, ptr @hf_oran_bundle_offset, align 4
  %i.bal = call ptr @proto_tree_add_item(ptr noundef %i.zq, i32 noundef %i.bak, ptr noundef %0, i32 noundef %i.aas, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bam = add i32 %i.aas, 1
  %i.ban = load i32, ptr @hf_oran_num_bund_prbs, align 4
  %i.bao = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.zq, i32 noundef %i.ban, ptr noundef %0, i32 noundef %i.bam, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.dz)
  %i.bap = add i32 %i.aas, 2                      ; 6 uses
  %i.baq = load i32, ptr %i.dz, align 4
  %i.bar = icmp eq i32 %i.baq, 0
  br i1 %i.bar, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.bas = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.bao, ptr noundef nonnull @ei_oran_reserved_numBundPrb) ; 0 uses
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.bat = load i8, ptr %i.dy, align 1, !range !6, !noundef !7
  %i.bau = trunc nuw i8 %i.bat to i1
  br i1 %i.bau, label %bb.jb, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec) #14
  %i.bav = load i32, ptr @hf_oran_bfwCompHdr, align 4
  %i.baw = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.zq, i32 noundef %i.bav, ptr noundef %0, i32 noundef %i.bap, i32 noundef 1, ptr noundef nonnull @.str.1086, ptr noundef nonnull @.str.215) ; 2 uses
  %i.bax = load i32, ptr @ett_oran_bfwcomphdr, align 4
  %i.bay = call ptr @proto_item_add_subtree(ptr noundef %i.baw, i32 noundef %i.bax) ; 2 uses
  %i.baz = load i32, ptr @hf_oran_bfwCompHdr_iqWidth, align 4
  %i.bba = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bay, i32 noundef %i.baz, ptr noundef %0, i32 noundef %i.bap, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.eb) ; 0 uses
  %i.bbb = load i32, ptr %i.eb, align 4           ; 2 uses
  %i.bbc = icmp eq i32 %i.bbb, 0
  %spec.select.i2265 = select i1 %i.bbc, i32 16, i32 %i.bbb
  store i32 %spec.select.i2265, ptr %i.eb, align 4
  %i.bbd = load i32, ptr @hf_oran_bfwCompHdr_compMeth, align 4
  %i.bbe = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bay, i32 noundef %i.bbd, ptr noundef %0, i32 noundef %i.bap, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.ec)
  %i.bbf = add i32 %i.aas, 3                      ; 3 uses
  %i.bbg = load i32, ptr %i.eb, align 4
  %i.bbh = load i32, ptr %i.ec, align 4
  %i.bbi = call ptr @val_to_str_const(i32 noundef %i.bbh, ptr noundef nonnull @bfw_comp_headers_comp_meth, ptr noundef nonnull @.str.207)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.baw, ptr noundef nonnull @.str.1591, i32 noundef %i.bbg, ptr noundef %i.bbi)
  %i.bbj = load i32, ptr %i.dz, align 4           ; 2 uses
  %.not2123 = icmp eq i32 %i.bbj, 0
  br i1 %.not2123, label %.thread2465, label %bb.hs

.thread2465:                                      ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb) #14
  br label %bb.jt

bb.hs:                                            ; preds = %bb.hr
  %i.bbk = load i32, ptr %i.cl, align 4
  %i.bbl = load i32, ptr %i.cn, align 4
  call fastcc void @ext11_work_out_bundles(i32 noundef %i.bbk, i32 noundef %i.bbl, i32 noundef %i.bbj, ptr noundef nonnull %15)
  %i.bbm = load i32, ptr %i.yk, align 4           ; 4 uses
  %.not2817 = icmp eq i32 %i.bbm, 0
  br i1 %.not2817, label %dissect_bfw_bundle.exit._crit_edge.thread, label %.lr.ph2712.preheader

.lr.ph2712.preheader:                             ; preds = %bb.hs
  %wide.trip.count2904 = zext i32 %i.bbm to i64
  br label %.lr.ph2712

.lr.ph2712:                                       ; preds = %dissect_bfw_bundle.exit, %.lr.ph2712.preheader
  %indvars.iv2901 = phi i64 [ 0, %.lr.ph2712.preheader ], [ %indvars.iv.next2902, %dissect_bfw_bundle.exit ] ; 4 uses
  %.152710 = phi i32 [ %i.bbf, %.lr.ph2712.preheader ], [ %.pre-phi17.i, %dissect_bfw_bundle.exit ] ; 3 uses
  %i.bbn = load i32, ptr %i.ec, align 4
  %i.bbo = load i8, ptr %i.xw, align 4, !range !6, !noundef !7
  %i.bbp = trunc nuw i8 %i.bbo to i1
  %i.bbq = load i32, ptr %i.cn, align 4
  %i.bbr = load i32, ptr @pref_num_bf_antennas, align 4
  %i.bbs = select i1 %i.bbp, i32 %i.bbq, i32 %i.bbr ; 2 uses
  %i.bbt = load i32, ptr %i.eb, align 4
  %i.bbu = getelementptr [12 x i8], ptr %i.yl, i64 %indvars.iv2901 ; 3 uses
  %i.bbv = load i32, ptr %i.bbu, align 4          ; 16 uses
  %i.bbw = getelementptr i8, ptr %i.bbu, i64 4
  %i.bbx = load i32, ptr %i.bbw, align 4          ; 6 uses
  %i.bby = getelementptr i8, ptr %i.bbu, i64 8
  %i.bbz = load i8, ptr %i.bby, align 4, !range !6, !noundef !7
  %i.bca = trunc nuw i8 %i.bbz to i1
  %i.bcb = load i8, ptr @link_planes_together, align 1, !range !6, !noundef !7
  %i.bcc = trunc nuw i8 %i.bcb to i1
  %or.cond28 = and i1 %i.ym, %i.bcc
  %i.bcd = select i1 %or.cond28, ptr %i.yo, ptr null ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i32 %i.bbn, ptr %i.bi, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #14
  br i1 %i.bca, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph2712
  %i.bce = trunc nuw i64 %indvars.iv2901 to i32
  %i.bcf = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.bj, i64 noundef 32, i32 noundef 2, i64 noundef 32, ptr noundef nonnull @.str.1705, i32 noundef %i.bce) ; 0 uses
  br label %bb.hv

bb.hu:                                            ; preds = %.lr.ph2712
  %i.bcg = call i64 @g_strlcpy(ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.1706, i64 noundef 32) ; 0 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.not.i2266 = icmp eq i32 %i.bbv, %i.bbx
  %i.bch = load i32, ptr @hf_oran_bfw_bundle, align 4 ; 2 uses
  br i1 %.not.i2266, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bci = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.zq, i32 noundef %i.bch, ptr noundef %0, i32 noundef %.152710, i32 noundef 0, ptr noundef nonnull @.str.1086, ptr noundef nonnull @.str.1707, ptr noundef nonnull %i.bj, i32 noundef %i.bbv, i32 noundef %i.bbx)
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hv
  %i.bcj = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.zq, i32 noundef %i.bch, ptr noundef %0, i32 noundef %.152710, i32 noundef 0, ptr noundef nonnull @.str.1086, ptr noundef nonnull @.str.1708, ptr noundef nonnull %i.bj, i32 noundef %i.bbv)
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.0120.i = phi ptr [ %i.bci, %bb.hw ], [ %i.bcj, %bb.hx ] ; 3 uses
  %i.bck = load i32, ptr @ett_oran_bfw_bundle, align 4
  %i.bcl = call ptr @proto_item_add_subtree(ptr noundef %.0120.i, i32 noundef %i.bck) ; 7 uses
  %i.bcm = load i32, ptr @hf_oran_bfw_bundle_id, align 4
  %i.bcn = trunc nuw i64 %indvars.iv2901 to i32
  %i.bco = call ptr @proto_tree_add_uint(ptr noundef %i.bcl, i32 noundef %i.bcm, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bcn) ; 2 uses
  %.not.i.i2267 = icmp eq ptr %i.bco, null
  br i1 %.not.i.i2267, label %proto_item_set_hidden.exit.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.bcp = getelementptr i8, ptr %i.bco, i64 40   ; 2 uses
  %i.bcq = load ptr, ptr %i.bcp, align 8          ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bcq, null
  br i1 %.not5.i.i, label %proto_item_set_hidden.exit.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.bcr = getelementptr i8, ptr %i.bcq, i64 28   ; 2 uses
  %i.bcs = load i32, ptr %i.bcr, align 4
  %i.bct = or i32 %i.bcs, 2
  store i32 %i.bct, ptr %i.bcr, align 4
  %.pre.i = load ptr, ptr %i.bcp, align 8         ; 2 uses
  %.not5.i142.i = icmp eq ptr %.pre.i, null
  br i1 %.not5.i142.i, label %proto_item_set_hidden.exit.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bcu = getelementptr i8, ptr %.pre.i, i64 28  ; 2 uses
  %i.bcv = load i32, ptr %i.bcu, align 4
  %i.bcw = or i32 %i.bcv, 1
  store i32 %i.bcw, ptr %i.bcu, align 4
  br label %proto_item_set_hidden.exit.i

proto_item_set_hidden.exit.i:                     ; preds = %bb.ib, %bb.ia, %bb.hz, %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #14
  store i32 0, ptr %i.bl, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #14
  %i.bcx = call fastcc i32 @dissect_bfwCompParam(ptr noundef %0, ptr noundef %i.bcl, ptr noundef %2, i32 noundef %.152710, ptr noundef %i.bbe, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn) ; 3 uses
  %i.bcy = shl i32 %i.bcx, 3
  %i.bcz = load i32, ptr @hf_oran_cont_ind, align 4
  %i.bda = call ptr @proto_tree_add_item(ptr noundef %i.bcl, i32 noundef %i.bcz, ptr noundef %0, i32 noundef %i.bcx, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #14
  %i.bdb = load i32, ptr @hf_oran_beam_id, align 4
  %i.bdc = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.bcl, i32 noundef %i.bdb, ptr noundef %0, i32 noundef %i.bcx, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.bo) ; 0 uses
  %i.bdd = load i32, ptr %i.bo, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0120.i, ptr noundef nonnull @.str.1709, i32 noundef %i.bdd)
  %i.bde = add i32 %i.bcy, 16                     ; 4 uses
  %i.bdf = load i32, ptr %i.bo, align 4
  %i.bdg = trunc i32 %i.bdf to i16                ; 22 uses
  %i.bdh = load i8, ptr %i.yp, align 4            ; 3 uses
  %i.bdi = icmp ult i8 %i.bdh, 32
  br i1 %i.bdi, label %bb.ic, label %add_beam_id_to_tap.exit.i

bb.ic:                                            ; preds = %proto_item_set_hidden.exit.i
  %i.bdj = add nuw nsw i8 %i.bdh, 1
  store i8 %i.bdj, ptr %i.yp, align 4
  %i.bdk = zext nneg i8 %i.bdh to i64
  %i.bdl = getelementptr [2 x i8], ptr %i.yq, i64 %i.bdk
  store i16 %i.bdg, ptr %i.bdl, align 2
  br label %add_beam_id_to_tap.exit.i

add_beam_id_to_tap.exit.i:                        ; preds = %bb.ic, %proto_item_set_hidden.exit.i
  %i.bdm = load ptr, ptr %i.xr, align 8
  %i.bdn = getelementptr i8, ptr %i.bdm, i64 53
  %i.bdo = load i16, ptr %i.bdn, align 1          ; 2 uses
  %i.bdp = and i16 %i.bdo, 8
  %i.bdq = icmp ne i16 %i.bdp, 0
  %i.bdr = icmp eq ptr %i.bcd, null
  %or.cond.not11.i = or i1 %i.bdr, %i.bdq
  %.not1351.i = icmp ugt i32 %i.bbv, %i.bbx
  %or.cond8.i = or i1 %.not1351.i, %or.cond.not11.i
  br i1 %or.cond8.i, label %.loopexit.i, label %iter.check3412

iter.check3412:                                   ; preds = %add_beam_id_to_tap.exit.i
  %i.bds = getelementptr i8, ptr %i.bcd, i64 36   ; 21 uses
  %i.bdt = add i32 %i.bbv, 1
  %i.bdu = add i32 %i.bbx, 1
  %umax3365 = call i32 @llvm.umax.i32(i32 %i.bdt, i32 %i.bdu)
  %i.bdv = sub i32 %umax3365, %i.bbv              ; 7 uses
  %min.iters.check3366 = icmp ult i32 %i.bdv, 4
  br i1 %min.iters.check3366, label %vec.epilog.scalar.ph3413.preheader, label %vector.scevcheck3364

vector.scevcheck3364:                             ; preds = %iter.check3412
  %i.bdw = add i32 %i.bbv, 1
  %i.bdx = add i32 %i.bbx, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.bdw, i32 %i.bdx)
  %i.bdy = add i32 %umax, -1
  %i.bdz = icmp ult i32 %i.bdy, %i.bbv
  br i1 %i.bdz, label %vec.epilog.scalar.ph3413.preheader, label %vector.main.loop.iter.check3367

vector.main.loop.iter.check3367:                  ; preds = %vector.scevcheck3364
  %min.iters.check3368 = icmp ult i32 %i.bdv, 16
  br i1 %min.iters.check3368, label %vec.epilog.ph3416, label %vector.ph3369

vector.ph3369:                                    ; preds = %vector.main.loop.iter.check3367
  %i.bea = and i32 %i.bdv, 12
  %n.vec3370 = and i32 %i.bdv, -16                ; 4 uses
  %i.beb = add i32 %i.bbv, %n.vec3370             ; 2 uses
  %broadcast.splatinsert3371 = insertelement <8 x i32> poison, i32 %i.bbv, i64 0
  %broadcast.splat3372 = shufflevector <8 x i32> %broadcast.splatinsert3371, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat3372, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body3373

vector.body3373:                                  ; preds = %vector.ph3369, %pred.store.continue3406
  %index3374 = phi i32 [ 0, %vector.ph3369 ], [ %index.next3407, %pred.store.continue3406 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph3369 ], [ %vec.ind.next, %pred.store.continue3406 ] ; 3 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bec = add i32 %i.bbv, %index3374             ; 16 uses
  %i.bed = icmp ult <8 x i32> %vec.ind, splat (i32 273) ; 8 uses
  %i.bee = icmp ult <8 x i32> %step.add, splat (i32 273) ; 8 uses
  %i.bef = extractelement <8 x i1> %i.bed, i64 0
  br i1 %i.bef, label %pred.store.if3375, label %pred.store.continue3376

pred.store.if3375:                                ; preds = %vector.body3373
  %i.beg = zext nneg i32 %i.bec to i64
  %i.beh = getelementptr [2 x i8], ptr %i.bds, i64 %i.beg
  store i16 %i.bdg, ptr %i.beh, align 2
  br label %pred.store.continue3376

pred.store.continue3376:                          ; preds = %pred.store.if3375, %vector.body3373
  %i.bei = extractelement <8 x i1> %i.bed, i64 1
  br i1 %i.bei, label %pred.store.if3377, label %pred.store.continue3378

pred.store.if3377:                                ; preds = %pred.store.continue3376
  %i.bej = add i32 %i.bec, 1
  %i.bek = zext nneg i32 %i.bej to i64
  %i.bel = getelementptr [2 x i8], ptr %i.bds, i64 %i.bek
  store i16 %i.bdg, ptr %i.bel, align 2
  br label %pred.store.continue3378

pred.store.continue3378:                          ; preds = %pred.store.if3377, %pred.store.continue3376
  %i.bem = extractelement <8 x i1> %i.bed, i64 2
  br i1 %i.bem, label %pred.store.if3379, label %pred.store.continue3380

pred.store.if3379:                                ; preds = %pred.store.continue3378
  %i.ben = add i32 %i.bec, 2
  %i.beo = zext nneg i32 %i.ben to i64
  %i.bep = getelementptr [2 x i8], ptr %i.bds, i64 %i.beo
  store i16 %i.bdg, ptr %i.bep, align 2
  br label %pred.store.continue3380

pred.store.continue3380:                          ; preds = %pred.store.if3379, %pred.store.continue3378
  %i.beq = extractelement <8 x i1> %i.bed, i64 3
  br i1 %i.beq, label %pred.store.if3381, label %pred.store.continue3382

pred.store.if3381:                                ; preds = %pred.store.continue3380
  %i.ber = add i32 %i.bec, 3
  %i.bes = zext nneg i32 %i.ber to i64
  %i.bet = getelementptr [2 x i8], ptr %i.bds, i64 %i.bes
  store i16 %i.bdg, ptr %i.bet, align 2
  br label %pred.store.continue3382

pred.store.continue3382:                          ; preds = %pred.store.if3381, %pred.store.continue3380
  %i.beu = extractelement <8 x i1> %i.bed, i64 4
  br i1 %i.beu, label %pred.store.if3383, label %pred.store.continue3384

pred.store.if3383:                                ; preds = %pred.store.continue3382
  %i.bev = add i32 %i.bec, 4
  %i.bew = zext nneg i32 %i.bev to i64
  %i.bex = getelementptr [2 x i8], ptr %i.bds, i64 %i.bew
  store i16 %i.bdg, ptr %i.bex, align 2
  br label %pred.store.continue3384

pred.store.continue3384:                          ; preds = %pred.store.if3383, %pred.store.continue3382
  %i.bey = extractelement <8 x i1> %i.bed, i64 5
  br i1 %i.bey, label %pred.store.if3385, label %pred.store.continue3386

pred.store.if3385:                                ; preds = %pred.store.continue3384
  %i.bez = add i32 %i.bec, 5
  %i.bfa = zext nneg i32 %i.bez to i64
  %i.bfb = getelementptr [2 x i8], ptr %i.bds, i64 %i.bfa
  store i16 %i.bdg, ptr %i.bfb, align 2
  br label %pred.store.continue3386

pred.store.continue3386:                          ; preds = %pred.store.if3385, %pred.store.continue3384
  %i.bfc = extractelement <8 x i1> %i.bed, i64 6
  br i1 %i.bfc, label %pred.store.if3387, label %pred.store.continue3388

pred.store.if3387:                                ; preds = %pred.store.continue3386
  %i.bfd = add i32 %i.bec, 6
  %i.bfe = zext nneg i32 %i.bfd to i64
  %i.bff = getelementptr [2 x i8], ptr %i.bds, i64 %i.bfe
  store i16 %i.bdg, ptr %i.bff, align 2
  br label %pred.store.continue3388

pred.store.continue3388:                          ; preds = %pred.store.if3387, %pred.store.continue3386
  %i.bfg = extractelement <8 x i1> %i.bed, i64 7
  br i1 %i.bfg, label %pred.store.if3389, label %pred.store.continue3390

pred.store.if3389:                                ; preds = %pred.store.continue3388
  %i.bfh = add i32 %i.bec, 7
  %i.bfi = zext nneg i32 %i.bfh to i64
  %i.bfj = getelementptr [2 x i8], ptr %i.bds, i64 %i.bfi
  store i16 %i.bdg, ptr %i.bfj, align 2
  br label %pred.store.continue3390

pred.store.continue3390:                          ; preds = %pred.store.if3389, %pred.store.continue3388
  %i.bfk = extractelement <8 x i1> %i.bee, i64 0
  br i1 %i.bfk, label %pred.store.if3391, label %pred.store.continue3392

pred.store.if3391:                                ; preds = %pred.store.continue3390
  %i.bfl = add i32 %i.bec, 8
  %i.bfm = zext nneg i32 %i.bfl to i64
  %i.bfn = getelementptr [2 x i8], ptr %i.bds, i64 %i.bfm
  store i16 %i.bdg, ptr %i.bfn, align 2
  br label %pred.store.continue3392

pred.store.continue3392:                          ; preds = %pred.store.if3391, %pred.store.continue3390
  %i.bfo = extractelement <8 x i1> %i.bee, i64 1
  br i1 %i.bfo, label %pred.store.if3393, label %pred.store.continue3394

pred.store.if3393:                                ; preds = %pred.store.continue3392
  %i.bfp = add i32 %i.bec, 9
  %i.bfq = zext nneg i32 %i.bfp to i64
  %i.bfr = getelementptr [2 x i8], ptr %i.bds, i64 %i.bfq
  store i16 %i.bdg, ptr %i.bfr, align 2
  br label %pred.store.continue3394

pred.store.continue3394:                          ; preds = %pred.store.if3393, %pred.store.continue3392
  %i.bfs = extractelement <8 x i1> %i.bee, i64 2
  br i1 %i.bfs, label %pred.store.if3395, label %pred.store.continue3396

pred.store.if3395:                                ; preds = %pred.store.continue3394
  %i.bft = add i32 %i.bec, 10
  %i.bfu = zext nneg i32 %i.bft to i64
  %i.bfv = getelementptr [2 x i8], ptr %i.bds, i64 %i.bfu
  store i16 %i.bdg, ptr %i.bfv, align 2
  br label %pred.store.continue3396

pred.store.continue3396:                          ; preds = %pred.store.if3395, %pred.store.continue3394
  %i.bfw = extractelement <8 x i1> %i.bee, i64 3
  br i1 %i.bfw, label %pred.store.if3397, label %pred.store.continue3398

pred.store.if3397:                                ; preds = %pred.store.continue3396
  %i.bfx = add i32 %i.bec, 11
  %i.bfy = zext nneg i32 %i.bfx to i64
  %i.bfz = getelementptr [2 x i8], ptr %i.bds, i64 %i.bfy
  store i16 %i.bdg, ptr %i.bfz, align 2
  br label %pred.store.continue3398

pred.store.continue3398:                          ; preds = %pred.store.if3397, %pred.store.continue3396
  %i.bga = extractelement <8 x i1> %i.bee, i64 4
  br i1 %i.bga, label %pred.store.if3399, label %pred.store.continue3400

pred.store.if3399:                                ; preds = %pred.store.continue3398
  %i.bgb = add i32 %i.bec, 12
  %i.bgc = zext nneg i32 %i.bgb to i64
  %i.bgd = getelementptr [2 x i8], ptr %i.bds, i64 %i.bgc
  store i16 %i.bdg, ptr %i.bgd, align 2
  br label %pred.store.continue3400

pred.store.continue3400:                          ; preds = %pred.store.if3399, %pred.store.continue3398
  %i.bge = extractelement <8 x i1> %i.bee, i64 5
  br i1 %i.bge, label %pred.store.if3401, label %pred.store.continue3402

pred.store.if3401:                                ; preds = %pred.store.continue3400
  %i.bgf = add i32 %i.bec, 13
  %i.bgg = zext nneg i32 %i.bgf to i64
  %i.bgh = getelementptr [2 x i8], ptr %i.bds, i64 %i.bgg
  store i16 %i.bdg, ptr %i.bgh, align 2
  br label %pred.store.continue3402

pred.store.continue3402:                          ; preds = %pred.store.if3401, %pred.store.continue3400
  %i.bgi = extractelement <8 x i1> %i.bee, i64 6
  br i1 %i.bgi, label %pred.store.if3403, label %pred.store.continue3404

pred.store.if3403:                                ; preds = %pred.store.continue3402
  %i.bgj = add i32 %i.bec, 14
  %i.bgk = zext nneg i32 %i.bgj to i64
  %i.bgl = getelementptr [2 x i8], ptr %i.bds, i64 %i.bgk
  store i16 %i.bdg, ptr %i.bgl, align 2
  br label %pred.store.continue3404

pred.store.continue3404:                          ; preds = %pred.store.if3403, %pred.store.continue3402
  %i.bgm = extractelement <8 x i1> %i.bee, i64 7
  br i1 %i.bgm, label %pred.store.if3405, label %pred.store.continue3406

pred.store.if3405:                                ; preds = %pred.store.continue3404
  %i.bgn = add i32 %i.bec, 15
  %i.bgo = zext nneg i32 %i.bgn to i64
  %i.bgp = getelementptr [2 x i8], ptr %i.bds, i64 %i.bgo
  store i16 %i.bdg, ptr %i.bgp, align 2
  br label %pred.store.continue3406

pred.store.continue3406:                          ; preds = %pred.store.if3405, %pred.store.continue3404
end_hunk_0
