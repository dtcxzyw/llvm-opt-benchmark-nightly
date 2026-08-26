Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/partbounds?download=true
inline.NumInlined: 222
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@check_partitions_for_split:bb.a
  %i.xm = getelementptr inbounds nuw [48 x i8], ptr %i.wr, i64 %indvars.iv.i.i150
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %indvars.iv.i.i150
  %i.xo = load i32, ptr %i.xn, align 4
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv.i.i150
  %i.xq = load i64, ptr %i.xp, align 8
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.i.i150
  %i.xs = load i64, ptr %i.xr, align 8
  %i.xt = tail call i64 @FunctionCall2Coll(ptr noundef %i.xm, i32 noundef %i.xo, i64 noundef %i.xq, i64 noundef %i.xs) #11
  %.fr81.i = freeze i64 %i.xt
  %i.xu = trunc i64 %.fr81.i to i32               ; 2 uses
  %.not44.i.i155 = icmp eq i32 %i.xu, 0
  br i1 %.not44.i.i155, label %bb.bj, label %.loopexit54.i.i156

._crit_edge.loopexit.split.loop.exit.i.i153:      ; preds = %bb.bm
  %indvars73.le.i.i154 = trunc i64 %indvars.iv.next.i.i151 to i32
  br label %._crit_edge.i.i141

._crit_edge.i.i141:                               ; preds = %bb.bj, %._crit_edge.loopexit.split.loop.exit.i.i153, %bb.bi
  %.138.ph.i.i142 = phi i32 [ 0, %bb.bi ], [ %indvars73.le.i.i154, %._crit_edge.loopexit.split.loop.exit.i.i153 ], [ %i.wp, %bb.bj ]
  %.not4548.i.not.i143 = icmp eq i8 %i.xd, 0
  br i1 %.not4548.i.not.i143, label %partition_rbound_cmp.exit.i145, label %partition_rbound_cmp.exit.thread.i144

.loopexit54.i.i156:                               ; preds = %bb.bn
  %indvars73.le86.i.i157 = trunc i64 %indvars.iv.next.i.i151 to i32 ; 2 uses
  %i.xv = icmp slt i32 %i.xu, 0
  %i.xw = sub i32 0, %indvars73.le86.i.i157
  %spec.select.i158 = select i1 %i.xv, i32 %i.xw, i32 %indvars73.le86.i.i157
  br label %partition_rbound_cmp.exit.i145

.loopexit.loopexit.i.i160:                        ; preds = %bb.bl
  %indvars73.le88.i.i161 = trunc i64 %indvars.iv.next.i.i151 to i32
  br label %partition_rbound_cmp.exit.i145

partition_rbound_cmp.exit.i145:                   ; preds = %.loopexit.loopexit.i.i160, %.loopexit54.i.i156, %._crit_edge.i.i141, %bb.bk
  %.039.i.i146 = phi i32 [ %i.xk, %bb.bk ], [ %spec.select.i158, %.loopexit54.i.i156 ], [ %indvars73.le88.i.i161, %.loopexit.loopexit.i.i160 ], [ %.138.ph.i.i142, %._crit_edge.i.i141 ]
  %.not31.i = icmp eq i32 %.039.i.i146, 0
  br i1 %.not31.i, label %partition_rbound_cmp.exit.thread.i144, label %check_split_partition_not_same_bound.exit

partition_rbound_cmp.exit.thread.i144:            ; preds = %partition_rbound_cmp.exit.i145, %._crit_edge.i.i141
  %i.xx = load i16, ptr %i.wn, align 4            ; 2 uses
  %i.xy = sext i16 %i.xx to i32                   ; 2 uses
  %i.xz = load ptr, ptr %i.wq, align 8
  %i.ya = load ptr, ptr %i.ws, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %i.ye = load ptr, ptr %i.yd, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.yk = load i8, ptr %i.yj, align 8, !range !6, !noundef !7
  %i.yl = icmp sgt i16 %i.xx, 0
  br i1 %i.yl, label %.lr.ph.preheader.i40.i, label %._crit_edge.i33.i

.lr.ph.preheader.i40.i:                           ; preds = %partition_rbound_cmp.exit.thread.i144
  %wide.trip.count.i41.i = zext nneg i32 %i.xy to i64
  br label %.lr.ph.i42.i

bb.bo:                                            ; preds = %bb.bs
  %exitcond.not.i51.i = icmp eq i64 %indvars.iv.next.i44.i, %wide.trip.count.i41.i
  br i1 %exitcond.not.i51.i, label %._crit_edge.i33.i, label %.lr.ph.i42.i, !llvm.loop !88

.lr.ph.i42.i:                                     ; preds = %bb.bo, %.lr.ph.preheader.i40.i
  %indvars.iv.i43.i = phi i64 [ 0, %.lr.ph.preheader.i40.i ], [ %indvars.iv.next.i44.i, %bb.bo ] ; 8 uses
  %indvars.iv.next.i44.i = add nuw nsw i64 %indvars.iv.i43.i, 1 ; 5 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.i43.i
  %i.yn = load i32, ptr %i.ym, align 4            ; 3 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %indvars.iv.i43.i
  %i.yp = load i32, ptr %i.yo, align 4            ; 2 uses
  %i.yq = icmp slt i32 %i.yn, %i.yp
  br i1 %i.yq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i42.i
  %indvars74.i54.i = trunc i64 %indvars.iv.i43.i to i32
  %i.yr = xor i32 %indvars74.i54.i, -1
  br label %partition_rbound_cmp.exit55.i

bb.bq:                                            ; preds = %.lr.ph.i42.i
  %i.ys = icmp sgt i32 %i.yn, %i.yp
  br i1 %i.ys, label %.loopexit.loopexit.i52.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not.i45.i = icmp eq i32 %i.yn, 0
  br i1 %.not.i45.i, label %bb.bs, label %._crit_edge.loopexit.split.loop.exit.i46.i

bb.bs:                                            ; preds = %bb.br
  %i.yt = getelementptr inbounds nuw [48 x i8], ptr %i.xz, i64 %indvars.iv.i43.i
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv.i43.i
  %i.yv = load i32, ptr %i.yu, align 4
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %indvars.iv.i43.i
  %i.yx = load i64, ptr %i.yw, align 8
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %indvars.iv.i43.i
  %i.yz = load i64, ptr %i.yy, align 8
  %i.za = tail call i64 @FunctionCall2Coll(ptr noundef %i.yt, i32 noundef %i.yv, i64 noundef %i.yx, i64 noundef %i.yz) #11
  %.fr82.i = freeze i64 %i.za
  %i.zb = trunc i64 %.fr82.i to i32               ; 2 uses
  %.not44.i48.i = icmp eq i32 %i.zb, 0
  br i1 %.not44.i48.i, label %bb.bo, label %.loopexit54.i37.i

._crit_edge.loopexit.split.loop.exit.i46.i:       ; preds = %bb.br
  %indvars73.le.i47.i = trunc i64 %indvars.iv.next.i44.i to i32
  br label %._crit_edge.i33.i

._crit_edge.i33.i:                                ; preds = %bb.bo, %._crit_edge.loopexit.split.loop.exit.i46.i, %partition_rbound_cmp.exit.thread.i144
  %.138.ph.i34.i = phi i32 [ 0, %partition_rbound_cmp.exit.thread.i144 ], [ %indvars73.le.i47.i, %._crit_edge.loopexit.split.loop.exit.i46.i ], [ %i.xy, %bb.bo ]
  %.not4548.i35.i = icmp eq i8 %i.yk, 0
  br i1 %.not4548.i35.i, label %split_partition_values_contained_in_new_part.exit.i, label %.thread76.i

.thread76.i:                                      ; preds = %._crit_edge.i33.i
  %i.zc = sub i32 0, %.138.ph.i34.i
  br label %partition_rbound_cmp.exit55.i

.loopexit54.i37.i:                                ; preds = %bb.bs
  %indvars73.le86.i50.i = trunc i64 %indvars.iv.next.i44.i to i32 ; 2 uses
  %i.zd = icmp slt i32 %i.zb, 0
  %i.ze = sub i32 0, %indvars73.le86.i50.i
  %spec.select80.i = select i1 %i.zd, i32 %i.ze, i32 %indvars73.le86.i50.i
  br label %partition_rbound_cmp.exit55.i

.loopexit.loopexit.i52.i:                         ; preds = %bb.bq
  %indvars73.le88.i53.i = trunc i64 %indvars.iv.next.i44.i to i32
  br label %partition_rbound_cmp.exit55.i

partition_rbound_cmp.exit55.i:                    ; preds = %.loopexit.loopexit.i52.i, %.loopexit54.i37.i, %.thread76.i, %bb.bp
  %.039.i39.i = phi i32 [ %i.yr, %bb.bp ], [ %spec.select80.i, %.loopexit54.i37.i ], [ %indvars73.le88.i53.i, %.loopexit.loopexit.i52.i ], [ %i.zc, %.thread76.i ]
  %.not32.i = icmp eq i32 %.039.i39.i, 0
  br i1 %.not32.i, label %split_partition_values_contained_in_new_part.exit.i, label %check_split_partition_not_same_bound.exit

bb.bt:                                            ; preds = %bb.bh
  %i.zf = load ptr, ptr %.0104465, align 8        ; 2 uses
  %i.zg = tail call ptr @RelationGetPartitionKey(ptr noundef %0) #11 ; 2 uses
  %i.zh = tail call ptr @RelationGetPartitionDesc(ptr noundef %0, i1 noundef zeroext false) #11 ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  %i.zj = load ptr, ptr %i.zi, align 8            ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 48
  %i.zl = load i32, ptr %i.zk, align 8            ; 2 uses
  %.not.i56.i = icmp eq i32 %i.zl, -1
  br i1 %.not.i56.i, label %find_value_in_new_partitions_list.exit.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zn = load ptr, ptr %i.zm, align 8
  %i.zo = sext i32 %i.zl to i64
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.zn, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4
  %i.zr = icmp eq i32 %i.zq, %1
  br i1 %i.zr, label %.lr.ph57.i.preheader.i.i, label %find_value_in_new_partitions_list.exit.thread.i.i

.lr.ph57.i.preheader.i.i:                         ; preds = %bb.bu
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zt = load ptr, ptr %i.zs, align 8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.zv = load ptr, ptr %i.zu, align 8            ; 3 uses
  %i.zw = icmp eq ptr %i.zv, null
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  br i1 %i.zw, label %check_split_partition_not_same_bound.exit, label %.lr.ph57.i.preheader.split.i.i

.lr.ph57.i.preheader.split.i.i:                   ; preds = %.lr.ph57.i.preheader.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  %i.zz = load i32, ptr %i.zy, align 4            ; 2 uses
  %i.aaa = icmp sgt i32 %i.zz, 0
  %wide.trip.count.i.i.i = zext nneg i32 %i.zz to i64
  br i1 %i.aaa, label %.lr.ph57.i.preheader.split.split.i.i, label %check_split_partition_not_same_bound.exit

.lr.ph57.i.preheader.split.split.i.i:             ; preds = %.lr.ph57.i.preheader.split.i.i
  %i.aab = load ptr, ptr %i.zx, align 8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bw
  %indvars.iv.next63.i.i.i = add nuw nsw i64 %indvars.iv62.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next63.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %check_split_partition_not_same_bound.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph57.i.preheader.split.split.i.i
  %indvars.iv62.i.i.i = phi i64 [ 0, %.lr.ph57.i.preheader.split.split.i.i ], [ %indvars.iv.next63.i.i.i, %bb.bv ] ; 2 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %indvars.iv62.i.i.i
  %i.aad = load ptr, ptr %i.aac, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 32
  %i.aaf = load i8, ptr %i.aae, align 8, !range !6, !noundef !7
  %i.aag = trunc nuw i8 %i.aaf to i1
  br i1 %i.aag, label %find_value_in_new_partitions_list.exit.thread.i.i, label %bb.bv

find_value_in_new_partitions_list.exit.thread.i.i: ; preds = %bb.bw, %bb.bu, %bb.bt
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zj, i64 4 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 4          ; 2 uses
  %.not2739.i.i = icmp slt i32 %i.aai, 1
  br i1 %.not2739.i.i, label %split_partition_values_contained_in_new_part.exit.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %find_value_in_new_partitions_list.exit.thread.i.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zj, i64 40
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zg, i64 40
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  br label %bb.bx

bb.bx:                                            ; preds = %find_value_in_new_partitions_list.exit34.thread.i.i, %.lr.ph.i57.i
  %4 = phi i32 [ %i.aai, %.lr.ph.i57.i ], [ %i.acb, %find_value_in_new_partitions_list.exit34.thread.i.i ]
  %indvars.iv.i58.i = phi i64 [ 0, %.lr.ph.i57.i ], [ %indvars.iv.next.i139, %find_value_in_new_partitions_list.exit34.thread.i.i ] ; 3 uses
  %i.aap = load ptr, ptr %i.aaj, align 8
  %i.aaq = load ptr, ptr %i.aak, align 8
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %indvars.iv.i58.i
  %i.aas = load i32, ptr %i.aar, align 4
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [4 x i8], ptr %i.aap, i64 %i.aat
  %i.aav = load i32, ptr %i.aau, align 4
  %i.aaw = icmp eq i32 %i.aav, %1
  br i1 %i.aaw, label %bb.by, label %find_value_in_new_partitions_list.exit34.thread.i.i

bb.by:                                            ; preds = %bb.bx
  %i.aax = load ptr, ptr %i.aal, align 8
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %indvars.iv.i58.i
  %i.aaz = load ptr, ptr %i.aay, align 8
  %i.aba = load i64, ptr %i.aaz, align 8
  %i.abb = load ptr, ptr %i.aam, align 8
  %i.abc = load ptr, ptr %i.aan, align 8
  %i.abd = load ptr, ptr %i.aao, align 8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.abf = load ptr, ptr %i.abe, align 8          ; 3 uses
  %i.abg = icmp eq ptr %i.abf, null
  br i1 %i.abg, label %check_split_partition_not_same_bound.exit, label %.lr.ph.i30.i.i

.lr.ph.i30.i.i:                                   ; preds = %bb.by
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 4 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abj = load i32, ptr %i.abh, align 4          ; 2 uses
  %i.abk = icmp sgt i32 %i.abj, 0
  br i1 %i.abk, label %.critedge33.i.i.i, label %check_split_partition_not_same_bound.exit

.critedge33.i.i.i:                                ; preds = %.lr.ph.i30.i.i, %bb.ca
  %i.abl = phi i32 [ %i.aby, %bb.ca ], [ %i.abj, %.lr.ph.i30.i.i ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ca ], [ 0, %.lr.ph.i30.i.i ] ; 2 uses
  %i.abm = load ptr, ptr %i.abi, align 8
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv.i.i.i
  %i.abo = load ptr, ptr %i.abn, align 8          ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 32
  %i.abq = load i8, ptr %i.abp, align 8, !range !6, !noundef !7
  %i.abr = trunc nuw i8 %i.abq to i1
  br i1 %i.abr, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.critedge33.i.i.i
  %i.abs = load i32, ptr %i.abc, align 4
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abo, i64 24
  %i.abu = load i64, ptr %i.abt, align 8
  %i.abv = tail call i64 @FunctionCall2Coll(ptr noundef %i.abb, i32 noundef %i.abs, i64 noundef %i.abu, i64 noundef %i.aba) #11
  %i.abw = and i64 %i.abv, 4294967295
  %i.abx = icmp eq i64 %i.abw, 0
  br i1 %i.abx, label %find_value_in_new_partitions_list.exit34.thread.loopexit.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bz
  %.pre.i.i.i = load i32, ptr %i.abh, align 4
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i.i.i, %.critedge33.i.i.i
  %i.aby = phi i32 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.abl, %.critedge33.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.abz = sext i32 %i.aby to i64
  %i.aca = icmp slt i64 %indvars.iv.next.i.i.i, %i.abz
  br i1 %i.aca, label %.critedge33.i.i.i, label %check_split_partition_not_same_bound.exit

find_value_in_new_partitions_list.exit34.thread.loopexit.i.i: ; preds = %bb.bz
  %.pre.i.i140 = load i32, ptr %i.aah, align 4
  br label %find_value_in_new_partitions_list.exit34.thread.i.i

find_value_in_new_partitions_list.exit34.thread.i.i: ; preds = %find_value_in_new_partitions_list.exit34.thread.loopexit.i.i, %bb.bx
  %i.acb = phi i32 [ %.pre.i.i140, %find_value_in_new_partitions_list.exit34.thread.loopexit.i.i ], [ %4, %bb.bx ] ; 2 uses
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i58.i, 1 ; 2 uses
  %i.acc = sext i32 %i.acb to i64
  %.not27.not.i.i = icmp slt i64 %indvars.iv.next.i139, %i.acc
  br i1 %.not27.not.i.i, label %bb.bx, label %split_partition_values_contained_in_new_part.exit.i, !llvm.loop !114

split_partition_values_contained_in_new_part.exit.i: ; preds = %find_value_in_new_partitions_list.exit34.thread.i.i, %find_value_in_new_partitions_list.exit.thread.i.i, %partition_rbound_cmp.exit55.i, %._crit_edge.i33.i
  %i.acd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ace = tail call i32 @errcode(i32 noundef 117833860) #11 ; 0 uses
  %i.acf = tail call ptr @get_rel_name(i32 noundef %1) #11
  %i.acg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.50, ptr noundef %i.acf) #11 ; 0 uses
  %i.ach = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.51) #11 ; 0 uses
  %i.aci = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.52) #11 ; 0 uses
  %i.acj = load ptr, ptr %.0104465, align 8
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.acl = load ptr, ptr %i.ack, align 8
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 48
  %i.acn = load i32, ptr %i.acm, align 8
  %i.aco = tail call i32 @parser_errposition(ptr noundef %3, i32 noundef %i.acn) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5852, ptr noundef nonnull @__func__.check_split_partition_not_same_bound) #11
  unreachable

check_split_partition_not_same_bound.exit:        ; preds = %bb.bv, %.lr.ph.i30.i.i, %bb.by, %bb.ca, %.lr.ph57.i.preheader.split.i.i, %.lr.ph57.i.preheader.i.i, %partition_rbound_cmp.exit55.i, %partition_rbound_cmp.exit.i145, %bb.bg, %check_parent_values_in_new_partitions.exit
  tail call void @pfree(ptr noundef %.0104465) #11
  ret void
}

declare i32 @get_default_oid_from_partdesc(ptr noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @qsort_partition_hbound_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = load i32, ptr %1, align 4                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.a, %i.d
  br i1 %i.g, label %partition_hbound_cmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.a, %i.d
  br i1 %i.h, label %partition_hbound_cmp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.c, %i.f
  br i1 %.not.i, label %partition_hbound_cmp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i32 %i.c, %i.f
  %i.j = select i1 %i.i, i32 1, i32 -1
  br label %partition_hbound_cmp.exit

partition_hbound_cmp.exit:                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ %i.j, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal i32 @qsort_partition_list_value_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call i64 @FunctionCall2Coll(ptr noundef %i.f, i32 noundef %i.i, i64 noundef %i.b, i64 noundef %i.d) #11
  %i.k = trunc i64 %i.j to i32
  ret i32 %i.k
}

declare ptr @bms_add_member(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @merge_matching_partitions(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %2 to i64                       ; 8 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.c ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !6, !noundef !7 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %3 to i64                       ; 9 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.m ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noundef !7 ; 2 uses
  %i.t = icmp sgt i32 %i.e, -1                    ; 2 uses
  %i.u = icmp sgt i32 %i.o, -1                    ; 2 uses
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %i.e, %i.o
  br i1 %i.v, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = or i8 %i.s, %i.i
  %or.cond3.not = icmp eq i8 %i.w, 0
  br i1 %or.cond3.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.x = icmp samesign ult i32 %i.e, %i.o
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.h, align 1
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.m
  store i32 %i.e, ptr %i.z, align 4
  %i.aa = load ptr, ptr %i.p, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.m
  store i8 1, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.m
  store i32 %i.o, ptr %i.af, align 4
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 1
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.c
  store i32 %i.o, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.f, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.c
  store i8 1, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.c
  store i32 %i.e, ptr %i.an, align 4
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.ao = icmp eq i32 %i.e, -1
  %i.ap = icmp eq i32 %i.o, -1
  %or.cond5 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %4, align 4               ; 3 uses
  store i32 %i.aq, ptr %i.d, align 4
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.c
  store i8 1, ptr %i.as, align 1
  %i.at = load ptr, ptr %i.k, align 8
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.m
  store i32 %i.aq, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.p, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.m
  store i8 1, ptr %i.aw, align 1
  %i.ax = load i32, ptr %4, align 4
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %4, align 4
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %.not = xor i1 %i.t, true
  %brmerge = or i1 %.not, %i.j
  br i1 %brmerge, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.e, ptr %i.n, align 4
  %i.az = load ptr, ptr %i.p, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.m
  store i8 1, ptr %i.ba, align 1
  %i.bb = load ptr, ptr %i.f, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.c
  store i8 1, ptr %i.bc, align 1
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not86 = xor i1 %i.u, true
  %i.bd = trunc nuw i8 %i.s to i1
  %or.cond87 = or i1 %.not86, %i.bd
  br i1 %or.cond87, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.o, ptr %i.d, align 4
  %i.be = load ptr, ptr %i.f, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.c
end_hunk_0
