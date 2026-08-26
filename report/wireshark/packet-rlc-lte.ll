Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-rlc-lte?download=true
inline.NumInlined: 100
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_rlc_lte_common:bb.a
  %i.xo = getelementptr i8, ptr %.069.i.i.i, i64 2 ; 4 uses
  %narrow.i.i.i = call i16 @llvm.umin.i16(i16 %.pre, i16 512)
  %i.xp = zext nneg i16 %narrow.i.i.i to i64      ; 5 uses
  %min.iters.check = icmp ult i16 %.pre, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i
  %i.xq = shl nuw nsw i64 %i.xp, 1
  %i.xr = getelementptr i8, ptr %.069.i.i.i, i64 %i.xq
  %scevgep = getelementptr i8, ptr %i.xr, i64 2
  %i.xs = shl nuw nsw i64 %i.xp, 2
  %i.xt = getelementptr i8, ptr %i.x, i64 %i.xs
  %scevgep316 = getelementptr i8, ptr %i.xt, i64 52 ; 2 uses
  %bound0 = icmp ult ptr %i.xo, %scevgep316
  %bound1 = icmp ult ptr %i.pz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0317 = icmp ult ptr %.069.i.i.i, %scevgep316
  %bound1318 = icmp ult ptr %i.pz, %i.xo
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx = or i1 %found.conflict, %found.conflict319
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.xp, 1016                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.xu = getelementptr [4 x i8], ptr %i.pz, i64 %index ; 2 uses
  %i.xv = getelementptr i8, ptr %i.xu, i64 16
  %wide.load = load <4 x i32>, ptr %i.xu, align 4, !alias.scope !24
  %wide.load320 = load <4 x i32>, ptr %i.xv, align 4, !alias.scope !24
  %i.xw = trunc <4 x i32> %wide.load to <4 x i16>
  %i.xx = trunc <4 x i32> %wide.load320 to <4 x i16>
  %i.xy = bitcast <4 x i64> %vec.ind to <16 x i16>
  %i.xz = extractelement <16 x i16> %i.xy, i64 12
  %i.ya = add i16 %i.xz, 5
  store i16 %i.ya, ptr %.069.i.i.i, align 4, !alias.scope !27, !noalias !24
  %i.yb = getelementptr [2 x i8], ptr %i.xo, i64 %index ; 2 uses
  %i.yc = getelementptr i8, ptr %i.yb, i64 8
  store <4 x i16> %i.xw, ptr %i.yb, align 2, !alias.scope !29, !noalias !24
  store <4 x i16> %i.xx, ptr %i.yc, align 2, !alias.scope !29, !noalias !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.yd = icmp eq i64 %index.next, %n.vec
  br i1 %i.yd, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.xp
  br i1 %cmp.n, label %._crit_edge.i.i.i.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i, %middle.block
  %indvars.iv106.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv106.i.i.i = phi i64 [ %indvars.iv.next107.i.i.i, %scalar.ph ], [ %indvars.iv106.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ye = getelementptr [4 x i8], ptr %i.pz, i64 %indvars.iv106.i.i.i
  %i.yf = load i32, ptr %i.ye, align 4
  %i.yg = trunc i32 %i.yf to i16
  %indvars.iv.next107.i.i.i = add nuw nsw i64 %indvars.iv106.i.i.i, 1 ; 3 uses
  %i.yh = trunc nuw nsw i64 %indvars.iv.next107.i.i.i to i16
  store i16 %i.yh, ptr %.069.i.i.i, align 4
  %i.yi = getelementptr [2 x i8], ptr %i.xo, i64 %indvars.iv106.i.i.i
  store i16 %i.yg, ptr %i.yi, align 2
  %i.yj = icmp samesign ult i64 %indvars.iv.next107.i.i.i, %i.xp
  br i1 %i.yj, label %scalar.ph, label %._crit_edge.i.i.i.loopexit, !llvm.loop !32

._crit_edge.i.i.i.loopexit:                       ; preds = %scalar.ph, %middle.block
  %i.yk = call i16 @llvm.umin.i16(i16 %.pre, i16 512)
  %i.yl = shl nuw nsw i16 %i.yk, 1
  %i.ym = zext nneg i16 %i.yl to i64
  %i.yn = add nuw nsw i64 %i.ym, 8589934590
  %i.yo = and i64 %i.yn, 8589934590
  %i.yp = add nuw nsw i64 %i.yo, 2
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %._crit_edge88.i.i.i
  %narrow82.i.i.i = phi i64 [ 8589934592, %._crit_edge88.i.i.i ], [ %i.yp, %._crit_edge.i.i.i.loopexit ]
  %.not77.i.i.i = icmp eq i16 %.067.lcssa.i.i.i, 0
  br i1 %.not77.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i.i.i
  %i.yq = call ptr @wmem_file_scope()
  %i.yr = call noalias dereferenceable_or_null(1032) ptr @wmem_alloc(ptr noundef %i.yq, i64 noundef 1032) #16 ; 5 uses
  br i1 %.not99.i.i.i, label %._crit_edge96.i.i.i, label %.lr.ph95.i.i.i

.lr.ph95.i.i.i:                                   ; preds = %bb.ec
  %i.ys = getelementptr i8, ptr %i.yr, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 %i.ys, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %narrow82.i.i.i, i1 false)
  br label %._crit_edge96.i.i.i

._crit_edge96.i.i.i:                              ; preds = %.lr.ph95.i.i.i, %bb.ec
  store i16 %.067.lcssa.i.i.i, ptr %i.yr, align 4
  %i.yt = getelementptr i8, ptr %.069.i.i.i, i64 1028
  %i.yu = load i32, ptr %i.yt, align 4
  %i.yv = getelementptr i8, ptr %i.yr, i64 1028
  store i32 %i.yu, ptr %i.yv, align 4
  %i.yw = load ptr, ptr @repeated_nack_report_hash, align 8
  %i.yx = getelementptr i8, ptr %1, i64 20
  %i.yy = load i32, ptr %i.yx, align 4
  %i.yz = call ptr @wmem_file_scope()
  %i.za = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.yz, i64 noundef 8) #16 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %i.za, i64 4 ; 2 uses
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4
  store i32 %i.yy, ptr %i.za, align 4
  %i.zb = load i16, ptr %i.ci, align 2
  %i.zc = shl i16 %i.zb, 10
  %i.zd = and i32 %.pre.i.i.i.i, -262144
  %i.ze = load i16, ptr %i.ew, align 4
  %i.zf = and i16 %i.ze, 31
  %i.zg = zext nneg i16 %i.zf to i32
  %i.zh = shl nuw nsw i32 %i.zg, 12
  %i.zi = and i16 %i.zc, 3072
  %.masked.i.i.i = zext nneg i16 %i.zi to i32
  %i.zj = or disjoint i32 %i.zd, %.masked.i.i.i
  %i.zk = or disjoint i32 %i.zj, %i.zh
  %i.zl = load i8, ptr %i.au, align 1
  %i.zm = and i8 %i.zl, 1
  %i.zn = zext nneg i8 %i.zm to i32
  %i.zo = shl nuw nsw i32 %i.zn, 17
  %i.zp = or disjoint i32 %i.zk, %i.zo
  store i32 %i.zp, ptr %.phi.trans.insert.i.i.i.i, align 4
  %i.zq = call ptr @wmem_map_insert(ptr noundef %i.yw, ptr noundef %i.za, ptr noundef %i.yr) ; 0 uses
  call fastcc void @addChannelRepeatedNACKInfo(ptr noundef %i.yr, ptr noundef nonnull readonly %i.ag, ptr noundef %1, ptr noundef %i.ou, ptr noundef %0)
  br label %bb.ed

bb.ed:                                            ; preds = %._crit_edge.i.i.i.thread, %._crit_edge96.i.i.i, %._crit_edge.i.i.i
  %i.zr = getelementptr i8, ptr %1, i64 20
  %i.zs = load i32, ptr %i.zr, align 4
  %i.zt = getelementptr i8, ptr %.069.i.i.i, i64 1028
  store i32 %i.zs, ptr %i.zt, align 4
  br label %checkChannelRepeatedNACKInfo.exit.i.i

checkChannelRepeatedNACKInfo.exit.i.i:            ; preds = %bb.ed, %bb.du, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.zu = load i64, ptr %i.c, align 8             ; 2 uses
  %i.zv = trunc i64 %i.zu to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.zw = load ptr, ptr %i.va, align 8
  %i.zx = getelementptr i8, ptr %i.zw, i64 53
  %i.zy = load i16, ptr %i.zx, align 1
  %i.zz = and i16 %i.zy, 8
  %.not.i128.i.i = icmp eq i16 %i.zz, 0
  br i1 %.not.i128.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %checkChannelRepeatedNACKInfo.exit.i.i
  %i.aaa = load ptr, ptr @sequence_analysis_report_hash, align 8
  %i.aab = getelementptr i8, ptr %1, i64 20
  %i.aac = load i32, ptr %i.aab, align 4
  store i32 %i.aac, ptr @get_report_hash_key.key, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aad = load i16, ptr %i.ci, align 2
  %i.aae = shl i16 %i.aad, 10
  %i.aaf = and i16 %i.aae, 3072
  %i.aag = zext nneg i16 %i.aaf to i32            ; 2 uses
  store i32 %i.aag, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aah = load i16, ptr %i.ew, align 4
  %i.aai = and i16 %i.aah, 31
  %i.aaj = zext nneg i16 %i.aai to i32
  %i.aak = shl nuw nsw i32 %i.aaj, 12
  %i.aal = or disjoint i32 %i.aak, %i.aag         ; 2 uses
  store i32 %i.aal, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aam = load i8, ptr %i.au, align 1
  %i.aan = and i8 %i.aam, 1
  %i.aao = zext nneg i8 %i.aan to i32
  %i.aap = shl nuw nsw i32 %i.aao, 17
  %i.aaq = or disjoint i32 %i.aap, %i.aal
  store i32 %i.aaq, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aar = call ptr @wmem_map_lookup(ptr noundef %i.aaa, ptr noundef nonnull @get_report_hash_key.key) ; 2 uses
  %.not37.i.i.i = icmp eq ptr %i.aar, null
  br i1 %.not37.i.i.i, label %checkChannelACKWindow.exit.i.i, label %checkChannelACKWindow.exit.sink.split.i.i

bb.ef:                                            ; preds = %checkChannelRepeatedNACKInfo.exit.i.i
  %i.aas = load i16, ptr %i.bm, align 4
  %i.aat = zext i16 %i.aas to i32
  %i.aau = load i16, ptr %i.ci, align 2
  %i.aav = and i16 %i.aau, 7
  %i.aaw = zext nneg i16 %i.aav to i32
  %i.aax = shl nuw nsw i32 %i.aaw, 16
  %i.aay = or disjoint i32 %i.aax, %i.aat
  %i.aaz = load i16, ptr %i.ew, align 4
  %i.aba = and i16 %i.aaz, 31
  %i.abb = zext nneg i16 %i.aba to i32
  %i.abc = shl nuw nsw i32 %i.abb, 19
  %i.abd = or disjoint i32 %i.aay, %i.abc
  %i.abe = load i8, ptr %i.au, align 1
  %i.abf = icmp eq i8 %i.abe, 0
  %i.abg = select i1 %i.abf, i32 16777216, i32 0
  %i.abh = or disjoint i32 %i.abd, %i.abg
  store i32 %i.abh, ptr %4, align 4
  %i.abi = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.abj = call ptr @wmem_map_lookup(ptr noundef %i.abi, ptr noundef nonnull %4) ; 3 uses
  %i.abk = icmp eq ptr %i.abj, null
  br i1 %i.abk, label %checkChannelACKWindow.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.abl = load i8, ptr %i.fs, align 1
  %i.abm = icmp eq i8 %i.abl, 16                  ; 2 uses
  %i.abn = select i1 %i.abm, i32 65536, i32 1024  ; 2 uses
  %i.abo = getelementptr i8, ptr %i.abj, i64 2    ; 2 uses
  %i.abp = load i16, ptr %i.abo, align 2
  %i.abq = zext i16 %i.abp to i32
  %i.abr = trunc i64 %i.zu to i32
  %reass.sub = sub i32 %i.abq, %i.abr
  %i.abs = add i32 %reass.sub, 1
  %i.abt = add i32 %i.abs, %i.abn
  %.v.i.i.i = select i1 %i.abm, i32 65535, i32 1023
  %i.abu = and i32 %i.abt, %.v.i.i.i
  %i.abv = lshr exact i32 %i.abn, 1
  %i.abw = icmp samesign ugt i32 %i.abu, %i.abv
  br i1 %i.abw, label %bb.eh, label %checkChannelACKWindow.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.abx = call ptr @wmem_file_scope()
  %i.aby = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.abx, i64 noundef 24) #16 ; 6 uses
  %i.abz = getelementptr i8, ptr %i.aby, i64 20
  store i32 5, ptr %i.abz, align 4
  %i.aca = getelementptr i8, ptr %i.abj, i64 4
  %i.acb = load i32, ptr %i.aca, align 4
  %i.acc = getelementptr i8, ptr %i.aby, i64 4
  store i32 %i.acb, ptr %i.acc, align 4
  %i.acd = load i16, ptr %i.abo, align 2
  %i.ace = getelementptr i8, ptr %i.aby, i64 2
  store i16 %i.acd, ptr %i.ace, align 2
  %i.acf = getelementptr i8, ptr %i.aby, i64 16
  store i16 %i.zv, ptr %i.acf, align 4
  %i.acg = load ptr, ptr @sequence_analysis_report_hash, align 8
  %i.ach = getelementptr i8, ptr %1, i64 20
  %i.aci = load i32, ptr %i.ach, align 4
  %i.acj = call ptr @wmem_file_scope()
  %i.ack = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.acj, i64 noundef 8) #16 ; 3 uses
  %.phi.trans.insert.i.i129.i.i = getelementptr i8, ptr %i.ack, i64 4 ; 2 uses
  %.pre.i.i130.i.i = load i32, ptr %.phi.trans.insert.i.i129.i.i, align 4
  store i32 %i.aci, ptr %i.ack, align 4
  %i.acl = load i16, ptr %i.ci, align 2
  %i.acm = shl i16 %i.acl, 10
  %i.acn = and i32 %.pre.i.i130.i.i, -262144
  %i.aco = load i16, ptr %i.ew, align 4
  %i.acp = and i16 %i.aco, 31
  %i.acq = zext nneg i16 %i.acp to i32
  %i.acr = shl nuw nsw i32 %i.acq, 12
  %i.acs = and i16 %i.acm, 3072
  %.masked.i131.i.i = zext nneg i16 %i.acs to i32
  %i.act = or disjoint i32 %i.acn, %.masked.i131.i.i
  %i.acu = or disjoint i32 %i.act, %i.acr
  %i.acv = load i8, ptr %i.au, align 1
  %i.acw = and i8 %i.acv, 1
  %i.acx = zext nneg i8 %i.acw to i32
  %i.acy = shl nuw nsw i32 %i.acx, 17
  %i.acz = or disjoint i32 %i.acu, %i.acy
  store i32 %i.acz, ptr %.phi.trans.insert.i.i129.i.i, align 4
  %i.ada = call ptr @wmem_map_insert(ptr noundef %i.acg, ptr noundef %i.ack, ptr noundef %i.aby) ; 0 uses
  br label %checkChannelACKWindow.exit.sink.split.i.i

checkChannelACKWindow.exit.sink.split.i.i:        ; preds = %bb.eh, %bb.ee
  %.sink.i.i = phi ptr [ %i.aby, %bb.eh ], [ %i.aar, %bb.ee ]
  call fastcc void @addChannelSequenceInfo(ptr noundef %.sink.i.i, i1 noundef zeroext true, ptr noundef nonnull %i.ag, i16 noundef zeroext 0, i1 noundef zeroext false, ptr noundef %i.x, ptr noundef %1, ptr noundef %i.ou, ptr noundef %0)
  br label %checkChannelACKWindow.exit.i.i

checkChannelACKWindow.exit.i.i:                   ; preds = %checkChannelACKWindow.exit.sink.split.i.i, %bb.eg, %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %dissect_rlc_lte_am_status_pdu.exit.i

dissect_rlc_lte_am_status_pdu.exit.i:             ; preds = %checkChannelACKWindow.exit.i.i, %bb.dr, %bb.dq, %bb.dp, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %dissect_rlc_lte_am.exit

bb.ei:                                            ; preds = %proto_item_set_hidden.exit.i172
  %i.adb = load i32, ptr @hf_rlc_lte_am_rf, align 4
  %i.adc = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ou, i32 noundef %i.adb, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.j) ; 0 uses
  %i.add = load i32, ptr %i.j, align 4            ; 2 uses
  %i.ade = trunc i32 %i.add to i8
  %i.adf = getelementptr i8, ptr %i.x, i64 40
  store i8 %i.ade, ptr %i.adf, align 8
  %.not.i173 = icmp eq i32 %i.add, 0
  %i.adg = select i1 %.not.i173, ptr @.str.372, ptr @.str.371 ; 2 uses
  %.val224.i = load ptr, ptr %i.y, align 8
  call void @col_append_str(ptr noundef %.val224.i, i32 noundef 25, ptr noundef nonnull %i.adg)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ab, ptr noundef nonnull @.str.322, ptr noundef nonnull %i.adg)
  %i.adh = load i32, ptr @hf_rlc_lte_am_p, align 4
  %i.adi = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ou, i32 noundef %i.adh, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  %i.adj = load i32, ptr %i.k, align 4
  %.not210.i = icmp eq i32 %i.adj, 0
  %i.adk = select i1 %.not210.i, ptr @.str.374, ptr @.str.373 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8
  call void @col_append_str(ptr noundef %.val.i, i32 noundef 25, ptr noundef nonnull %i.adk)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ab, ptr noundef nonnull @.str.322, ptr noundef nonnull %i.adk)
  %i.adl = load i32, ptr %i.k, align 4
  %.not211.i = icmp eq i32 %i.adl, 0
  br i1 %.not211.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.os, ptr noundef nonnull @.str.373)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.adm = load i32, ptr @hf_rlc_lte_am_fi, align 4
  %i.adn = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ou, i32 noundef %i.adm, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.m) ; 0 uses
  %i.ado = load i32, ptr @hf_rlc_lte_am_fixed_e, align 4
  %i.adp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ou, i32 noundef %i.ado, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.l) ; 0 uses
  %i.adq = load i8, ptr %i.fs, align 1
  %i.adr = icmp eq i8 %i.adq, 16
  br i1 %i.adr, label %bb.el, label %bb.eq

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #15
  %i.ads = load i32, ptr %i.j, align 4
  %.not212.i = icmp eq i32 %i.ads, 0
  br i1 %.not212.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.adt = load i32, ptr @hf_rlc_lte_am_segment_lsf16, align 4
  %i.adu = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.adt, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %hf_rlc_lte_am_fixed_reserved.sink.i = phi ptr [ @hf_rlc_lte_am_fixed_reserved2, %bb.em ], [ @hf_rlc_lte_am_fixed_reserved, %bb.el ]
  %i.adv = load i32, ptr %hf_rlc_lte_am_fixed_reserved.sink.i, align 4
  %i.adw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ou, i32 noundef %i.adv, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.p)
  %i.adx = load i32, ptr %i.p, align 4            ; 2 uses
  %.not213.i = icmp eq i32 %i.adx, 0
  br i1 %.not213.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ady = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.adw, ptr noundef nonnull @ei_rlc_lte_reserved_bits_not_zero, ptr noundef nonnull @.str.375, i32 noundef %i.adx) ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.adz = load i32, ptr @hf_rlc_lte_am_fixed_sn16, align 4
  %i.aea = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ou, i32 noundef %i.adz, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.n) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  br label %bb.er

bb.eq:                                            ; preds = %bb.ek
  %i.aeb = load i32, ptr @hf_rlc_lte_am_fixed_sn, align 4
  %i.aec = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ou, i32 noundef %i.aeb, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.0200.i = phi i32 [ 3, %bb.ep ], [ 2, %bb.eq ] ; 4 uses
  %i.aed = getelementptr i8, ptr %i.x, i64 33
  store i8 1, ptr %i.aed, align 1
  %i.aee = load i32, ptr %i.n, align 4            ; 2 uses
  %i.aef = getelementptr i8, ptr %i.x, i64 36
  store i32 %i.aee, ptr %i.aef, align 4
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %i.ab, ptr noundef %i.os, ptr noundef %1, ptr noundef nonnull @.str.376, i32 noundef %i.aee)
  %i.aeg = load i32, ptr %i.j, align 4
  %.not214.i = icmp eq i32 %i.aeg, 0
  br i1 %.not214.i, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  %i.aeh = load i8, ptr %i.fs, align 1
  %i.aei = icmp eq i8 %i.aeh, 16
  br i1 %i.aei, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aej = load i32, ptr @hf_rlc_lte_am_segment_lsf, align 4
  %i.aek = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.aej, ptr noundef %0, i32 noundef %.0200.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %hf_rlc_lte_am_segment_so.sink.i = phi ptr [ @hf_rlc_lte_am_segment_so, %bb.et ], [ @hf_rlc_lte_am_segment_so16, %bb.es ]
  %i.ael = load i32, ptr %hf_rlc_lte_am_segment_so.sink.i, align 4
  %i.aem = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ou, i32 noundef %i.ael, ptr noundef %0, i32 noundef %.0200.i, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.q) ; 0 uses
  %i.aen = load i32, ptr %i.q, align 4
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %i.ab, ptr noundef %i.os, ptr noundef %1, ptr noundef nonnull @.str.377, i32 noundef %i.aen)
  %i.aeo = add nuw nsw i32 %.0200.i, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.er
  %.1201.i = phi i32 [ %i.aeo, %bb.eu ], [ %.0200.i, %bb.er ] ; 2 uses
  %i.aep = load i32, ptr %i.l, align 4
  %.not215.i = icmp eq i32 %i.aep, 0
  br i1 %.not215.i, label %bb.fb, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aeq = getelementptr i8, ptr %1, i64 80
  %i.aer = load ptr, ptr %i.aeq, align 8
  %i.aes = getelementptr i8, ptr %i.aer, i64 53
  %i.aet = load i16, ptr %i.aes, align 1
  %i.aeu = and i16 %i.aet, 8
  %.not216.i = icmp eq i16 %i.aeu, 0
  br i1 %.not216.i, label %bb.ex, label %bb.fa

bb.ex:                                            ; preds = %bb.ew
  %i.aev = load i16, ptr %i.ew, align 4
  %i.aew = zext i16 %i.aev to i32
  %i.aex = shl nuw i32 %i.aew, 16
  %i.aey = load i16, ptr %i.bm, align 4
  %i.aez = zext i16 %i.aey to i32
  %i.afa = or disjoint i32 %i.aex, %i.aez
  store i32 %i.afa, ptr %i.o, align 4
  store i32 1, ptr %6, align 16
  %i.afb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.o, ptr %i.afb, align 8
  %i.afc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 1, ptr %i.afc, align 16
  %i.afd = getelementptr i8, ptr %1, i64 20
  %i.afe = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.afd, ptr %i.afe, align 8
end_hunk_0
begin_hunk_1_@addChannelSequenceInfo:bb.a
  %i.ev = tail call ptr @val_to_str_const(i32 noundef %i.eu, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.317)
  %i.ew = getelementptr i8, ptr %2, i64 4
  %i.ex = load i16, ptr %i.ew, align 4
  %i.ey = zext i16 %i.ex to i32
  %i.ez = getelementptr i8, ptr %2, i64 6
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = zext i16 %i.fa to i32
  %i.fc = tail call ptr @val_to_str_const(i32 noundef %i.fb, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.fd = getelementptr i8, ptr %2, i64 8
  %i.fe = load i16, ptr %i.fd, align 4
  %i.ff = zext i16 %i.fe to i32
  %i.fg = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.eg, ptr noundef nonnull @ei_rlc_lte_am_sn_missing, ptr noundef nonnull @.str.347, i32 noundef %i.eq, i32 noundef %i.er, ptr noundef %i.ev, i32 noundef %i.ey, ptr noundef %i.fc, i32 noundef %i.ff) ; 0 uses
  %i.fh = load i16, ptr %i.eo, align 4
  %i.fi = zext i16 %i.fh to i32
  %i.fj = load i16, ptr %i.em, align 2
  %i.fk = zext i16 %i.fj to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.348, i32 noundef %i.fi, i32 noundef %i.fk)
  %i.fl = getelementptr i8, ptr %2, i64 3
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = icmp eq i8 %i.fm, 16
  %i.fo = load i16, ptr %i.em, align 2            ; 2 uses
  br i1 %i.fn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fp = load i16, ptr %i.eo, align 4
  %.narrow = add i16 %i.fo, 1
  %i.fq = sub i16 %.narrow, %i.fp
  %i.fr = getelementptr i8, ptr %5, i64 2100
  store i16 %i.fq, ptr %i.fr, align 4
  br label %proto_item_set_generated.exit294

bb.am:                                            ; preds = %bb.ak
  %i.fs = zext i16 %i.fo to i32
  %i.ft = add nuw nsw i32 %i.fs, 1024
  %i.fu = load i16, ptr %i.eo, align 4
  %i.fv = zext i16 %i.fu to i32
  %i.fw = sub nsw i32 %i.ft, %i.fv
  %i.fx = srem i32 %i.fw, 1024
  %i.fy = trunc nsw i32 %i.fx to i16
  %i.fz = add nsw i16 %i.fy, 1
  %i.ga = getelementptr i8, ptr %5, i64 2100
  store i16 %i.fz, ptr %i.ga, align 4
  br label %proto_item_set_generated.exit294

bb.an:                                            ; preds = %proto_item_set_generated.exit256
  %i.gb = getelementptr i8, ptr %2, i64 1
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i32
  %i.ge = tail call ptr @val_to_str_const(i32 noundef %i.gd, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.317)
  %i.gf = getelementptr i8, ptr %2, i64 4
  %i.gg = load i16, ptr %i.gf, align 4
  %i.gh = zext i16 %i.gg to i32
  %i.gi = getelementptr i8, ptr %2, i64 6
  %i.gj = load i16, ptr %i.gi, align 2
  %i.gk = zext i16 %i.gj to i32
  %i.gl = tail call ptr @val_to_str_const(i32 noundef %i.gk, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.gm = getelementptr i8, ptr %2, i64 8
  %i.gn = load i16, ptr %i.gm, align 4
  %i.go = zext i16 %i.gn to i32
  %i.gp = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.eg, ptr noundef nonnull @ei_rlc_lte_am_sn_missing, ptr noundef nonnull @.str.349, i32 noundef %i.eq, ptr noundef %i.ge, i32 noundef %i.gh, ptr noundef %i.gl, i32 noundef %i.go) ; 0 uses
  %i.gq = load i16, ptr %i.eo, align 4
  %i.gr = zext i16 %i.gq to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.350, i32 noundef %i.gr)
  %i.gs = getelementptr i8, ptr %5, i64 2100
  store i16 1, ptr %i.gs, align 4
  br label %proto_item_set_generated.exit294

bb.ao:                                            ; preds = %bb.g
  br i1 %1, label %bb.ap, label %proto_item_set_generated.exit294

bb.ap:                                            ; preds = %bb.ao
  %i.gt = load i32, ptr @hf_rlc_lte_sequence_analysis_ok, align 4
  %i.gu = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.gt, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i257 = icmp eq ptr %i.gu, null
  br i1 %.not.i257, label %proto_item_set_generated.exit259, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gv = getelementptr i8, ptr %i.gu, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %.not5.i258 = icmp eq ptr %i.gw, null
  br i1 %.not5.i258, label %proto_item_set_generated.exit259, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = getelementptr i8, ptr %i.gw, i64 28     ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = or i32 %i.gy, 2
  store i32 %i.gz, ptr %i.gx, align 4
  br label %proto_item_set_generated.exit259

proto_item_set_generated.exit259:                 ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.ha = load i32, ptr @hf_rlc_lte_sequence_analysis_ack_out_of_range, align 4
  %i.hb = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.ha, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 2 uses
  %.not.i260 = icmp eq ptr %i.hb, null
  br i1 %.not.i260, label %proto_item_set_generated.exit262, label %bb.as

bb.as:                                            ; preds = %proto_item_set_generated.exit259
  %i.hc = getelementptr i8, ptr %i.hb, i64 40
  %i.hd = load ptr, ptr %i.hc, align 8            ; 2 uses
  %.not5.i261 = icmp eq ptr %i.hd, null
  br i1 %.not5.i261, label %proto_item_set_generated.exit262, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr i8, ptr %i.hd, i64 28     ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = or i32 %i.hf, 2
  store i32 %i.hg, ptr %i.he, align 4
  br label %proto_item_set_generated.exit262

proto_item_set_generated.exit262:                 ; preds = %proto_item_set_generated.exit259, %bb.as, %bb.at
  %i.hh = load i32, ptr @hf_rlc_lte_sequence_analysis_ack_out_of_range_opposite_frame, align 4
  %i.hi = load i32, ptr %i.j, align 4
  %i.hj = tail call ptr @proto_tree_add_uint(ptr noundef %i.d, i32 noundef %i.hh, ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef %i.hi) ; 3 uses
  %.not.i263 = icmp eq ptr %i.hj, null
  br i1 %.not.i263, label %proto_item_set_generated.exit265, label %bb.au

bb.au:                                            ; preds = %proto_item_set_generated.exit262
  %i.hk = getelementptr i8, ptr %i.hj, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %.not5.i264 = icmp eq ptr %i.hl, null
  br i1 %.not5.i264, label %proto_item_set_generated.exit265, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hm = getelementptr i8, ptr %i.hl, i64 28     ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = or i32 %i.hn, 2
  store i32 %i.ho, ptr %i.hm, align 4
  br label %proto_item_set_generated.exit265

proto_item_set_generated.exit265:                 ; preds = %proto_item_set_generated.exit262, %bb.au, %bb.av
  %i.hp = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 4
  %i.hr = zext i16 %i.hq to i32
  %i.hs = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = zext i16 %i.ht to i32
  %i.hv = getelementptr i8, ptr %2, i64 4
  %i.hw = load i16, ptr %i.hv, align 4
  %i.hx = zext i16 %i.hw to i32
  %i.hy = getelementptr i8, ptr %2, i64 6
  %i.hz = load i16, ptr %i.hy, align 2
  %i.ia = zext i16 %i.hz to i32
  %i.ib = tail call ptr @val_to_str_const(i32 noundef %i.ia, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.ic = getelementptr i8, ptr %2, i64 8
  %i.id = load i16, ptr %i.ic, align 4
  %i.ie = zext i16 %i.id to i32
  %i.if = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.hj, ptr noundef nonnull @ei_rlc_lte_sequence_analysis_ack_out_of_range_opposite_frame, ptr noundef nonnull @.str.351, i32 noundef %i.hr, i32 noundef %i.hu, i32 noundef %i.hx, ptr noundef %i.ib, i32 noundef %i.ie) ; 0 uses
  %i.ig = load i16, ptr %i.hp, align 4
  %i.ih = zext i16 %i.ig to i32
  %i.ii = load i16, ptr %i.hs, align 2
  %i.ij = zext i16 %i.ii to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.352, i32 noundef %i.ih, i32 noundef %i.ij)
  br label %proto_item_set_generated.exit294

bb.aw:                                            ; preds = %proto_item_set_generated.exit229
  %i.ik = load i32, ptr @hf_rlc_lte_sequence_analysis_expected_sn, align 4
  %i.il = getelementptr i8, ptr %0, i64 2         ; 2 uses
  %i.im = load i16, ptr %i.il, align 2
  %i.in = zext i16 %i.im to i32
  %i.io = tail call ptr @proto_tree_add_uint(ptr noundef %i.d, i32 noundef %i.ik, ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef %i.in) ; 3 uses
  %.not.i266 = icmp eq ptr %i.io, null
  br i1 %.not.i266, label %proto_item_set_hidden.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ip = getelementptr i8, ptr %i.io, i64 40     ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8            ; 2 uses
  %.not5.i267 = icmp eq ptr %i.iq, null
  br i1 %.not5.i267, label %proto_item_set_generated.exit268, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ir = getelementptr i8, ptr %i.iq, i64 28     ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = or i32 %i.is, 2
  store i32 %i.it, ptr %i.ir, align 4
  br label %proto_item_set_generated.exit268

proto_item_set_generated.exit268:                 ; preds = %bb.ax, %bb.ay
  %i.iu = load i8, ptr %0, align 4, !range !9, !noundef !10
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.az, label %proto_item_set_hidden.exit

bb.az:                                            ; preds = %proto_item_set_generated.exit268
  %i.iw = load ptr, ptr %i.ip, align 8            ; 2 uses
  %.not5.i270 = icmp eq ptr %i.iw, null
  br i1 %.not5.i270, label %proto_item_set_hidden.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ix = getelementptr i8, ptr %i.iw, i64 28     ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = or i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %proto_item_set_generated.exit268, %bb.aw, %bb.ba, %bb.az
  %i.ja = load i8, ptr %0, align 4, !range !9, !noundef !10
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.bu, label %bb.bb

bb.bb:                                            ; preds = %proto_item_set_hidden.exit
  %i.jc = getelementptr i8, ptr %2, i64 3
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = icmp eq i8 %i.jd, 5                     ; 2 uses
  %. = select i1 %i.je, i32 32, i32 1024
  %i.jf = getelementptr i8, ptr %0, i64 20
  %i.jg = load i32, ptr %i.jf, align 4
  switch i32 %i.jg, label %bb.bt [
    i32 4, label %bb.bc
    i32 1, label %bb.bj
    i32 2, label %bb.bo
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.jh = load i32, ptr @hf_rlc_lte_sequence_analysis_ok, align 4
  %i.ji = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.jh, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i271 = icmp eq ptr %i.ji, null
  br i1 %.not.i271, label %proto_item_set_generated.exit273, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jj = getelementptr i8, ptr %i.ji, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8            ; 2 uses
  %.not5.i272 = icmp eq ptr %i.jk, null
  br i1 %.not5.i272, label %proto_item_set_generated.exit273, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jl = getelementptr i8, ptr %i.jk, i64 28     ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = or i32 %i.jm, 2
  store i32 %i.jn, ptr %i.jl, align 4
  br label %proto_item_set_generated.exit273

proto_item_set_generated.exit273:                 ; preds = %bb.bc, %bb.bd, %bb.be
  %i.jo = load i32, ptr @hf_rlc_lte_sequence_analysis_skipped, align 4
  %i.jp = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.jo, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 4 uses
  %.not.i274 = icmp eq ptr %i.jp, null
  br i1 %.not.i274, label %proto_item_set_generated.exit276, label %bb.bf

bb.bf:                                            ; preds = %proto_item_set_generated.exit273
  %i.jq = getelementptr i8, ptr %i.jp, i64 40
  %i.jr = load ptr, ptr %i.jq, align 8            ; 2 uses
  %.not5.i275 = icmp eq ptr %i.jr, null
  br i1 %.not5.i275, label %proto_item_set_generated.exit276, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.js = getelementptr i8, ptr %i.jr, i64 28     ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = or i32 %i.jt, 2
  store i32 %i.ju, ptr %i.js, align 4
  br label %proto_item_set_generated.exit276

proto_item_set_generated.exit276:                 ; preds = %proto_item_set_generated.exit273, %bb.bf, %bb.bg
  %i.jv = getelementptr i8, ptr %0, i64 18        ; 3 uses
  %i.jw = load i16, ptr %i.jv, align 2            ; 2 uses
  %i.jx = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.jy = load i16, ptr %i.jx, align 4            ; 2 uses
  %i.jz = zext i16 %i.jy to i32                   ; 2 uses
  %.not223 = icmp eq i16 %i.jw, %i.jy
  br i1 %.not223, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %proto_item_set_generated.exit276
  %i.ka = zext i16 %i.jw to i32
  %i.kb = getelementptr i8, ptr %2, i64 1
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = zext i8 %i.kc to i32
  %i.ke = tail call ptr @val_to_str_const(i32 noundef %i.kd, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.317)
  %i.kf = getelementptr i8, ptr %2, i64 4
  %i.kg = load i16, ptr %i.kf, align 4
  %i.kh = zext i16 %i.kg to i32
  %i.ki = getelementptr i8, ptr %2, i64 6
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = zext i16 %i.kj to i32
  %i.kl = tail call ptr @val_to_str_const(i32 noundef %i.kk, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.km = getelementptr i8, ptr %2, i64 8
  %i.kn = load i16, ptr %i.km, align 4
  %i.ko = zext i16 %i.kn to i32
  %i.kp = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.jp, ptr noundef nonnull @ei_rlc_lte_um_sn_missing, ptr noundef nonnull @.str.353, i32 noundef %i.jz, i32 noundef %i.ka, ptr noundef %i.ke, i32 noundef %i.kh, ptr noundef %i.kl, i32 noundef %i.ko) ; 0 uses
  %i.kq = load i16, ptr %i.jx, align 4
  %i.kr = zext i16 %i.kq to i32
  %i.ks = load i16, ptr %i.jv, align 2
  %i.kt = zext i16 %i.ks to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.348, i32 noundef %i.kr, i32 noundef %i.kt)
  %i.ku = load i16, ptr %i.jv, align 2
  %i.kv = zext i16 %i.ku to i32
  %i.kw = add nuw nsw i32 %., %i.kv
  %i.kx = load i16, ptr %i.jx, align 4
  %i.ky = zext i16 %i.kx to i32
  %i.kz = sub nsw i32 %i.kw, %i.ky                ; 2 uses
  %9 = srem i32 %i.kz, 32
  %i.la = srem i32 %i.kz, 1024
  %10 = select i1 %i.je, i32 %9, i32 %i.la
  %i.lb = trunc nsw i32 %10 to i16
  %i.lc = add nsw i16 %i.lb, 1
  %i.ld = getelementptr i8, ptr %5, i64 2100
  store i16 %i.lc, ptr %i.ld, align 4
  br label %bb.cg

bb.bi:                                            ; preds = %proto_item_set_generated.exit276
  %i.le = getelementptr i8, ptr %2, i64 1
  %i.lf = load i8, ptr %i.le, align 1
  %i.lg = zext i8 %i.lf to i32
  %i.lh = tail call ptr @val_to_str_const(i32 noundef %i.lg, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.317)
  %i.li = getelementptr i8, ptr %2, i64 4
  %i.lj = load i16, ptr %i.li, align 4
  %i.lk = zext i16 %i.lj to i32
  %i.ll = getelementptr i8, ptr %2, i64 6
  %i.lm = load i16, ptr %i.ll, align 2
  %i.ln = zext i16 %i.lm to i32
  %i.lo = tail call ptr @val_to_str_const(i32 noundef %i.ln, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.lp = getelementptr i8, ptr %2, i64 8
  %i.lq = load i16, ptr %i.lp, align 4
  %i.lr = zext i16 %i.lq to i32
  %i.ls = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.jp, ptr noundef nonnull @ei_rlc_lte_um_sn_missing, ptr noundef nonnull @.str.354, i32 noundef %i.jz, ptr noundef %i.lh, i32 noundef %i.lk, ptr noundef %i.lo, i32 noundef %i.lr) ; 0 uses
  %i.lt = load i16, ptr %i.jx, align 4
  %i.lu = zext i16 %i.lt to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.350, i32 noundef %i.lu)
  %i.lv = getelementptr i8, ptr %5, i64 2100
  store i16 1, ptr %i.lv, align 4
  br label %bb.cg

bb.bj:                                            ; preds = %bb.bb
  %i.lw = load i32, ptr @hf_rlc_lte_sequence_analysis_ok, align 4
  %i.lx = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.lw, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i277 = icmp eq ptr %i.lx, null
  br i1 %.not.i277, label %proto_item_set_generated.exit279, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ly = getelementptr i8, ptr %i.lx, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %.not5.i278 = icmp eq ptr %i.lz, null
  br i1 %.not5.i278, label %proto_item_set_generated.exit279, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ma = getelementptr i8, ptr %i.lz, i64 28     ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = or i32 %i.mb, 2
  store i32 %i.mc, ptr %i.ma, align 4
  br label %proto_item_set_generated.exit279

proto_item_set_generated.exit279:                 ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.md = load i32, ptr @hf_rlc_lte_sequence_analysis_repeated, align 4
  %i.me = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.md, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 3 uses
  %.not.i280 = icmp eq ptr %i.me, null
  br i1 %.not.i280, label %proto_item_set_generated.exit282, label %bb.bm

bb.bm:                                            ; preds = %proto_item_set_generated.exit279
  %i.mf = getelementptr i8, ptr %i.me, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  %.not5.i281 = icmp eq ptr %i.mg, null
  br i1 %.not5.i281, label %proto_item_set_generated.exit282, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mh = getelementptr i8, ptr %i.mg, i64 28     ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4
  %i.mj = or i32 %i.mi, 2
  store i32 %i.mj, ptr %i.mh, align 4
  br label %proto_item_set_generated.exit282

proto_item_set_generated.exit282:                 ; preds = %proto_item_set_generated.exit279, %bb.bm, %bb.bn
  %i.mk = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 4
  %i.mm = zext i16 %i.ml to i32
  %i.mn = getelementptr i8, ptr %2, i64 1
  %i.mo = load i8, ptr %i.mn, align 1
  %i.mp = zext i8 %i.mo to i32
  %i.mq = tail call ptr @val_to_str_const(i32 noundef %i.mp, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.317)
  %i.mr = getelementptr i8, ptr %2, i64 4
  %i.ms = load i16, ptr %i.mr, align 4
  %i.mt = zext i16 %i.ms to i32
  %i.mu = getelementptr i8, ptr %2, i64 6
  %i.mv = load i16, ptr %i.mu, align 2
  %i.mw = zext i16 %i.mv to i32
  %i.mx = tail call ptr @val_to_str_const(i32 noundef %i.mw, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.my = getelementptr i8, ptr %2, i64 8
  %i.mz = load i16, ptr %i.my, align 4
  %i.na = zext i16 %i.mz to i32
  %i.nb = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.me, ptr noundef nonnull @ei_rlc_lte_um_sn_repeated, ptr noundef nonnull @.str.355, i32 noundef %i.mm, ptr noundef %i.mq, i32 noundef %i.mt, ptr noundef %i.mx, i32 noundef %i.na) ; 0 uses
  %i.nc = load i16, ptr %i.mk, align 4
  %i.nd = zext i16 %i.nc to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.346, i32 noundef %i.nd)
  br label %bb.cg

bb.bo:                                            ; preds = %bb.bb
  %i.ne = load i32, ptr @hf_rlc_lte_sequence_analysis_ok, align 4
  %i.nf = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.ne, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i283 = icmp eq ptr %i.nf, null
  br i1 %.not.i283, label %proto_item_set_generated.exit285, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ng = getelementptr i8, ptr %i.nf, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8            ; 2 uses
  %.not5.i284 = icmp eq ptr %i.nh, null
  br i1 %.not5.i284, label %proto_item_set_generated.exit285, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ni = getelementptr i8, ptr %i.nh, i64 28     ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4
  %i.nk = or i32 %i.nj, 2
  store i32 %i.nk, ptr %i.ni, align 4
  br label %proto_item_set_generated.exit285

proto_item_set_generated.exit285:                 ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.nl = load i32, ptr @hf_rlc_lte_sequence_analysis_mac_retx, align 4
  %i.nm = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.nl, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 3 uses
  %.not.i286 = icmp eq ptr %i.nm, null
  br i1 %.not.i286, label %proto_item_set_generated.exit288, label %bb.br

bb.br:                                            ; preds = %proto_item_set_generated.exit285
  %i.nn = getelementptr i8, ptr %i.nm, i64 40
  %i.no = load ptr, ptr %i.nn, align 8            ; 2 uses
  %.not5.i287 = icmp eq ptr %i.no, null
  br i1 %.not5.i287, label %proto_item_set_generated.exit288, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.np = getelementptr i8, ptr %i.no, i64 28     ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4
  %i.nr = or i32 %i.nq, 2
  store i32 %i.nr, ptr %i.np, align 4
  br label %proto_item_set_generated.exit288

proto_item_set_generated.exit288:                 ; preds = %proto_item_set_generated.exit285, %bb.br, %bb.bs
  %i.ns = getelementptr i8, ptr %2, i64 1
  %i.nt = load i8, ptr %i.ns, align 1
  %i.nu = zext i8 %i.nt to i32
  %i.nv = tail call ptr @val_to_str_const(i32 noundef %i.nu, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.317)
  %i.nw = getelementptr i8, ptr %2, i64 4
  %i.nx = load i16, ptr %i.nw, align 4
  %i.ny = zext i16 %i.nx to i32
  %i.nz = getelementptr i8, ptr %2, i64 6
  %i.oa = load i16, ptr %i.nz, align 2
  %i.ob = zext i16 %i.oa to i32
  %i.oc = tail call ptr @val_to_str_const(i32 noundef %i.ob, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.od = getelementptr i8, ptr %2, i64 8
  %i.oe = load i16, ptr %i.od, align 4
  %i.of = zext i16 %i.oe to i32
  %i.og = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.nm, ptr noundef nonnull @ei_rlc_lte_sequence_analysis_mac_retx, ptr noundef nonnull @.str.356, ptr noundef %i.nv, i32 noundef %i.ny, ptr noundef %i.oc, i32 noundef %i.of) ; 0 uses
  br label %bb.cg

bb.bt:                                            ; preds = %bb.bb
  %i.oh = getelementptr i8, ptr %2, i64 1
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = zext i8 %i.oi to i32
  %i.ok = tail call ptr @val_to_str_const(i32 noundef %i.oj, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.317)
  %i.ol = getelementptr i8, ptr %2, i64 4
  %i.om = load i16, ptr %i.ol, align 4
  %i.on = zext i16 %i.om to i32
  %i.oo = zext i16 %3 to i32
  %i.op = load i16, ptr %i.il, align 2
  %i.oq = zext i16 %i.op to i32
  %i.or = getelementptr i8, ptr %2, i64 6
  %i.os = load i16, ptr %i.or, align 2
  %i.ot = zext i16 %i.os to i32
  %i.ou = tail call ptr @val_to_str_const(i32 noundef %i.ot, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.ov = getelementptr i8, ptr %2, i64 8
  %i.ow = load i16, ptr %i.ov, align 4
  %i.ox = zext i16 %i.ow to i32
  %i.oy = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.io, ptr noundef nonnull @ei_rlc_lte_wrong_sequence_number, ptr noundef nonnull @.str.357, ptr noundef %i.ok, i32 noundef %i.on, i32 noundef %i.oo, i32 noundef %i.oq, ptr noundef %i.ou, i32 noundef %i.ox) ; 0 uses
  br label %bb.cg

bb.bu:                                            ; preds = %proto_item_set_hidden.exit
  %i.oz = getelementptr i8, ptr %0, i64 8
  %.val = load i8, ptr %i.oz, align 4, !range !9, !noundef !10
  %i.pa = trunc nuw i8 %.val to i1
  %i.pb = load i32, ptr @hf_rlc_lte_sequence_analysis_framing_info_correct, align 4 ; 4 uses
  br i1 %i.pa, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  br i1 %4, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.pc = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.pb, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %i.pd = getelementptr i8, ptr %2, i64 4
  %i.pe = load i16, ptr %i.pd, align 4
  %i.pf = zext i16 %i.pe to i32
  %i.pg = getelementptr i8, ptr %2, i64 6
  %i.ph = load i16, ptr %i.pg, align 2
  %i.pi = zext i16 %i.ph to i32
  %i.pj = tail call ptr @val_to_str_const(i32 noundef %i.pi, ptr noundef nonnull @rlc_channel_type_vals, ptr noundef nonnull @.str.317)
  %i.pk = getelementptr i8, ptr %2, i64 8
  %i.pl = load i16, ptr %i.pk, align 4
  %i.pm = zext i16 %i.pl to i32
  %i.pn = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %6, ptr noundef %i.pc, ptr noundef nonnull @ei_rlc_lte_sequence_analysis_last_segment_not_continued, ptr noundef nonnull @.str.358, i32 noundef %i.pf, ptr noundef %i.pj, i32 noundef %i.pm) ; 0 uses
  br label %proto_item_set_hidden.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.po = tail call ptr @proto_tree_add_boolean(ptr noundef %i.d, i32 noundef %i.pb, ptr noundef %8, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 4 uses
  %.not.i.i = icmp eq ptr %i.po, null
  br i1 %.not.i.i, label %checkFIconsistency.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pp = getelementptr i8, ptr %i.po, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8            ; 2 uses
end_hunk_1
