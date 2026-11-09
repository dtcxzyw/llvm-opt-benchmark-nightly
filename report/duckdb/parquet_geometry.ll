Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parquet_geometry?download=true
inline.NumInlined: 1156
inline.NumDeleted: 644
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6duckdb22GeoParquetFileMetadata5WriteERN14duckdb_parquet12FileMetaDataE:bb.a
  %i.fg = load ptr, ptr %4, align 8, !tbaa !73    ; 2 uses
  %i.fh = load i64, ptr %i.ao, align 8, !tbaa !72 ; 5 uses
  %.not.i183 = icmp eq ptr %i.fg, null
  br i1 %.not.i183, label %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit, label %bb.ah, !prof !104

bb.ah:                                            ; preds = %_ZN13duckdb_yyjsonL25yyjson_mut_obj_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit182
  br i1 %.not.i164, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194, label %bb.ai, !prof !104

bb.ai:                                            ; preds = %bb.ah
  %.not.i328 = icmp eq ptr %.1.i809, null
  br i1 %.not.i328, label %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread, label %.noexc185, !prof !226

.noexc185:                                        ; preds = %bb.ai
  %i.fi = load i64, ptr %.1.i809, align 8, !tbaa !79
  %i.fj = and i64 %i.fi, 7
  %i.fk = icmp eq i64 %i.fj, 7
  br i1 %i.fk, label %bb.aj, label %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread, !prof !221

bb.aj:                                            ; preds = %.noexc185
  %i.fl = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !211
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !212 ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = sdiv exact i64 %i.fr, 24
  %i.ft = icmp ult i64 %i.fs, 2
  br i1 %i.ft, label %bb.ak, label %.noexc186, !prof !104

bb.ak:                                            ; preds = %bb.aj
  %i.fu = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.fv = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fu, i64 noundef 2)
          to label %.noexc306 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc306:                                        ; preds = %bb.ak
  br i1 %i.fv, label %.noexc306..noexc186_crit_edge, label %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread, !prof !97

.noexc306..noexc186_crit_edge:                    ; preds = %.noexc306
  %.pre1704 = load ptr, ptr %i.fl, align 8, !tbaa !212
  br label %.noexc186

.noexc186:                                        ; preds = %.noexc306..noexc186_crit_edge, %bb.aj
  %i.fw = phi ptr [ %.pre1704, %.noexc306..noexc186_crit_edge ], [ %i.fo, %bb.aj ] ; 12 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store ptr %i.fx, ptr %i.fl, align 8, !tbaa !212
  %.not33.i.not = icmp eq ptr %i.fw, null
  br i1 %.not33.i.not, label %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread, label %bb.al, !prof !224

bb.al:                                            ; preds = %.noexc186
  %i.fy = load i64, ptr %.1.i809, align 8, !tbaa !79 ; 2 uses
  store i64 3597, ptr %i.fw, align 8, !tbaa !215
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr @.str.27, ptr %i.fz, align 8, !tbaa !98
  %i.ga = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !222
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !223 ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %.not.i457 = icmp ugt i64 %i.gg, %i.fh
  br i1 %.not.i457, label %.noexc423, label %bb.am, !prof !97

bb.am:                                            ; preds = %bb.al
  %i.gh = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gi = add i64 %i.fh, 1
  %i.gj = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_str_pool_growEPNS_15yyjson_str_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gh, i64 noundef %i.gi)
          to label %.noexc459 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc459:                                        ; preds = %bb.am
  br i1 %i.gj, label %.noexc423thread-pre-split, label %.noexc187.thread, !prof !97

.noexc423thread-pre-split:                        ; preds = %.noexc459
  %.pr835 = load ptr, ptr %i.ga, align 8, !tbaa !223
  br label %.noexc423

.noexc423:                                        ; preds = %.noexc423thread-pre-split, %bb.al
  %i.gk = phi ptr [ %.pr835, %.noexc423thread-pre-split ], [ %i.gd, %bb.al ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.fh ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store ptr %i.gm, ptr %i.ga, align 8, !tbaa !223
  %.not.i421 = icmp eq ptr %i.gk, null
  br i1 %.not.i421, label %.noexc187.thread, label %bb.an, !prof !213

.noexc187.thread:                                 ; preds = %.noexc423, %.noexc459
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr null, ptr %i.gn, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread

bb.an:                                            ; preds = %.noexc423
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr nonnull align 1 %i.fg, i64 %i.fh, i1 false)
  store i8 0, ptr %i.gl, align 1, !tbaa !98
  %i.go = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %i.gk, ptr %i.go, align 8, !tbaa !98
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 2 uses
  %i.gq = shl i64 %i.fh, 8
  %i.gr = or disjoint i64 %i.gq, 5
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !215
  %.not.i444 = icmp ult i64 %i.fy, 256
  br i1 %.not.i444, label %.noexc188, label %bb.ao, !prof !104

bb.ao:                                            ; preds = %bb.an
  %i.gs = getelementptr inbounds nuw i8, ptr %.1.i809, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !98
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !225
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !225
  store ptr %i.fw, ptr %i.gw, align 8, !tbaa !225
  br label %.noexc188

.noexc188:                                        ; preds = %bb.an, %bb.ao
  %.sink1683 = phi ptr [ %i.gx, %bb.ao ], [ %i.fw, %bb.an ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  store ptr %.sink1683, ptr %i.gy, align 8, !tbaa !225
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store ptr %i.gp, ptr %i.gz, align 8, !tbaa !225
  %i.ha = getelementptr inbounds nuw i8, ptr %.1.i809, i64 8
  store ptr %i.fw, ptr %i.ha, align 8, !tbaa !98
  %i.hb = load i64, ptr %.1.i809, align 8, !tbaa !79
  %i.hc = and i64 %i.hb, 255
  %i.hd = and i64 %i.fy, -256
  %i.he = add i64 %i.hd, 256
  %i.hf = or disjoint i64 %i.hc, %i.he
  store i64 %i.hf, ptr %.1.i809, align 8, !tbaa !79
  br label %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread

_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit: ; preds = %_ZN13duckdb_yyjsonL25yyjson_mut_obj_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit182
  br i1 %.not.i164, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194, label %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread, !prof !227

_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread: ; preds = %.noexc306, %.noexc186, %bb.ai, %.noexc185, %.noexc188, %.noexc187.thread, %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !211
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !212 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %bb.ap, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i518, !prof !104

bb.ap:                                            ; preds = %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread
  %i.hl = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.hm = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.hg, ptr noundef nonnull %i.hl, i64 noundef 1)
          to label %.noexc554 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc554:                                        ; preds = %bb.ap
  %.pre1707 = load ptr, ptr %i.hg, align 8, !tbaa !212 ; 2 uses
  br i1 %i.hm, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i518, label %.noexc196, !prof !97

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i518: ; preds = %.noexc554, %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread
  %i.hn = phi ptr [ %i.hj, %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit.thread ], [ %.pre1707, %.noexc554 ] ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24 ; 2 uses
  store ptr %i.ho, ptr %i.hg, align 8, !tbaa !212
  %.not.i520.not = icmp eq ptr %i.hn, null
  br i1 %.not.i520.not, label %.noexc196, label %bb.aq, !prof !224

bb.aq:                                            ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i518
  store i64 1805, ptr %i.hn, align 8, !tbaa !215
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr @.str.6, ptr %i.hp, align 8, !tbaa !98
  %.pre1706 = load ptr, ptr %i.hg, align 8, !tbaa !212
  br label %.noexc196

.noexc196:                                        ; preds = %.noexc554, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i518, %bb.aq
  %i.hq = phi ptr [ %.pre1706, %bb.aq ], [ %i.ho, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i518 ], [ %.pre1707, %.noexc554 ] ; 2 uses
  %.1.i514 = phi ptr [ %i.hn, %bb.aq ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i518 ], [ null, %.noexc554 ] ; 3 uses
  %i.hr = load ptr, ptr %i.hh, align 8, !tbaa !211
  %i.hs = icmp eq ptr %i.hr, %i.hq
  br i1 %i.hs, label %bb.ar, label %.noexc197, !prof !104

bb.ar:                                            ; preds = %.noexc196
  %i.ht = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.hu = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.hg, ptr noundef nonnull %i.ht, i64 noundef 1)
          to label %.noexc300 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc300:                                        ; preds = %bb.ar
  br i1 %i.hu, label %.noexc300..noexc197_crit_edge, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194, !prof !97

.noexc300..noexc197_crit_edge:                    ; preds = %.noexc300
  %.pre1708 = load ptr, ptr %i.hg, align 8, !tbaa !212
  br label %.noexc197

.noexc197:                                        ; preds = %.noexc300..noexc197_crit_edge, %.noexc196
  %i.hv = phi ptr [ %.pre1708, %.noexc300..noexc197_crit_edge ], [ %i.hq, %.noexc196 ] ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr %i.hw, ptr %i.hg, align 8, !tbaa !212
  %.not9.i.i193.not = icmp eq ptr %i.hv, null
  br i1 %.not9.i.i193.not, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194, label %bb.as, !prof !224

bb.as:                                            ; preds = %.noexc197
  store i64 7, ptr %i.hv, align 8, !tbaa !215
  br label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194

_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194: ; preds = %.noexc300, %.noexc197, %bb.ah, %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit, %bb.as
  %.1.i514851 = phi ptr [ %.1.i514, %bb.as ], [ null, %bb.ah ], [ null, %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit ], [ %.1.i514, %.noexc197 ], [ %.1.i514, %.noexc300 ] ; 6 uses
  %i.hx = phi i1 [ true, %bb.as ], [ false, %bb.ah ], [ false, %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit ], [ true, %.noexc197 ], [ true, %.noexc300 ] ; 6 uses
  %.1.i.i195 = phi ptr [ %i.hv, %bb.as ], [ null, %bb.ah ], [ null, %_ZN13duckdb_yyjsonL26yyjson_mut_obj_add_strncpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_m.exit ], [ null, %.noexc197 ], [ null, %.noexc300 ] ; 4 uses
  %.not.i320 = icmp eq ptr %.1.i809, null
  br i1 %.not.i320, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_objEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit199.thread, label %.noexc280, !prof !226

.noexc280:                                        ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194
  %i.hy = load i64, ptr %.1.i809, align 8, !tbaa !79 ; 4 uses
  %i.hz = and i64 %i.hy, 7
  %i.ia = icmp ne i64 %i.hz, 7
  %.not.i734 = icmp eq ptr %.1.i514851, null
  %or.cond1565 = or i1 %.not.i734, %i.ia
  br i1 %or.cond1565, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_objEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit199.thread, label %bb.at, !prof !103

bb.at:                                            ; preds = %.noexc280
  %i.ib = load i64, ptr %.1.i514851, align 8, !tbaa !79
  %i.ic = and i64 %i.ib, 7
  %i.id = icmp eq i64 %i.ic, 5
  %i.ie = icmp ne ptr %.1.i.i195, null
  %spec.select.i279 = and i1 %i.ie, %i.id
  br i1 %spec.select.i279, label %bb.au, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_objEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit199.thread, !prof !221

bb.au:                                            ; preds = %bb.at
  %.not.i436 = icmp ult i64 %i.hy, 256
  br i1 %.not.i436, label %bb.aw, label %bb.av, !prof !104

bb.av:                                            ; preds = %bb.au
  %i.if = getelementptr inbounds nuw i8, ptr %.1.i809, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !98
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !225
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !225
  store ptr %.1.i514851, ptr %i.ij, align 8, !tbaa !225
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %.sink1684 = phi ptr [ %i.ik, %bb.av ], [ %.1.i514851, %bb.au ]
  %i.il = getelementptr inbounds nuw i8, ptr %.1.i.i195, i64 16
  store ptr %.sink1684, ptr %i.il, align 8, !tbaa !225
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i514851, i64 16
  store ptr %.1.i.i195, ptr %i.im, align 8, !tbaa !225
  %i.in = getelementptr inbounds nuw i8, ptr %.1.i809, i64 8
  store ptr %.1.i514851, ptr %i.in, align 8, !tbaa !98
  %16 = and i64 %i.hy, 255
  %17 = and i64 %i.hy, -256
  %i.io = add i64 %17, 256
  %18 = or disjoint i64 %i.io, %16
  store i64 %18, ptr %.1.i809, align 8, !tbaa !79
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_objEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit199.thread

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_objEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit199.thread: ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194, %.noexc280, %bb.at, %bb.aw
  %i.ip = phi ptr [ %.1.i.i195, %bb.aw ], [ null, %bb.at ], [ null, %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i194 ], [ null, %.noexc280 ] ; 4 uses
  %.sroa.0785.01603 = load ptr, ptr %i.k, align 8, !tbaa !122 ; 2 uses
  %.not12741604 = icmp eq ptr %.sroa.0785.01603, null
  br i1 %.not12741604, label %._crit_edge1607, label %.lr.ph1606

.lr.ph1606:                                       ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_objEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit199.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 76 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 19 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 21 uses
  %.not.i318 = icmp eq ptr %i.ip, null
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 8 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  br label %bb.ax

._crit_edge1607:                                  ; preds = %_ZN13duckdb_yyjsonL15yyjson_doc_freeEPNS_10yyjson_docE.exit, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_objEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit199.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.ix = invoke noundef ptr @_ZN13duckdb_yyjson21yyjson_mut_write_optsEPKNS_14yyjson_mut_docEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef %i.at, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %10)
          to label %bb.fb unwind label %bb.fg     ; 4 uses

bb.ax:                                            ; preds = %.lr.ph1606, %_ZN13duckdb_yyjsonL15yyjson_doc_freeEPNS_10yyjson_docE.exit
  %.sroa.0785.01605 = phi ptr [ %.sroa.0785.01603, %.lr.ph1606 ], [ %.sroa.0785.0, %_ZN13duckdb_yyjsonL15yyjson_doc_freeEPNS_10yyjson_docE.exit ] ; 12 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !73 ; 3 uses
  %i.ja = icmp ne ptr %i.iz, null
  %i.jb = and i1 %i.hx, %i.ja
  br i1 %i.jb, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i558, label %.noexc189, !prof !97

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i558: ; preds = %bb.ax
  %i.jc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iz) #26
  %i.jd = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.je = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %bb.ay, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560, !prof !104

bb.ay:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i558
  %i.jg = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc596 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc596:                                        ; preds = %bb.ay
  br i1 %i.jg, label %.noexc596._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560_crit_edge, label %.noexc189.thread, !prof !97

.noexc596._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560_crit_edge: ; preds = %.noexc596
  %.pre1709 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560: ; preds = %.noexc596._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560_crit_edge, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i558
  %i.jh = phi ptr [ %.pre1709, %.noexc596._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560_crit_edge ], [ %i.je, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i558 ] ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  store ptr %i.ji, ptr %i.iq, align 8, !tbaa !212
  %.not.i562.not = icmp eq ptr %i.jh, null
  br i1 %.not.i562.not, label %.noexc189.thread, label %bb.az, !prof !224

bb.az:                                            ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560
  %i.jj = shl i64 %i.jc, 8
  %i.jk = or disjoint i64 %i.jj, 5
  store i64 %i.jk, ptr %i.jh, align 8, !tbaa !215
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr %i.iz, ptr %i.jl, align 8, !tbaa !98
  br label %.noexc189.thread

.noexc189:                                        ; preds = %bb.ax
  br i1 %.not.i164, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i, label %.noexc189.thread, !prof !228

.noexc189.thread:                                 ; preds = %.noexc596, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560, %bb.az, %.noexc189
  %.1.i556938 = phi ptr [ null, %.noexc189 ], [ %i.jh, %bb.az ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i560 ], [ null, %.noexc596 ] ; 3 uses
  %i.jm = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.jn = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.ba, label %.noexc190, !prof !104

bb.ba:                                            ; preds = %.noexc189.thread
  %i.jp = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc303 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc303:                                        ; preds = %bb.ba
  br i1 %i.jp, label %.noexc303..noexc190_crit_edge, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i, !prof !97

.noexc303..noexc190_crit_edge:                    ; preds = %.noexc303
  %.pre1710 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %.noexc190

.noexc190:                                        ; preds = %.noexc303..noexc190_crit_edge, %.noexc189.thread
  %i.jq = phi ptr [ %.pre1710, %.noexc303..noexc190_crit_edge ], [ %i.jn, %.noexc189.thread ] ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  store ptr %i.jr, ptr %i.iq, align 8, !tbaa !212
  %.not9.i.i.not = icmp eq ptr %i.jq, null
  br i1 %.not9.i.i.not, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i, label %bb.bb, !prof !224

bb.bb:                                            ; preds = %.noexc190
  store i64 7, ptr %i.jq, align 8, !tbaa !215
  br label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i

_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i: ; preds = %.noexc303, %.noexc190, %.noexc189, %bb.bb
  %.1.i556936 = phi ptr [ %.1.i556938, %bb.bb ], [ null, %.noexc189 ], [ %.1.i556938, %.noexc190 ], [ %.1.i556938, %.noexc303 ] ; 6 uses
  %.1.i.i = phi ptr [ %i.jq, %bb.bb ], [ null, %.noexc189 ], [ null, %.noexc190 ], [ null, %.noexc303 ] ; 15 uses
  br i1 %.not.i318, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit, label %.noexc284, !prof !226

.noexc284:                                        ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i
  %i.js = load i64, ptr %i.ip, align 8, !tbaa !79 ; 4 uses
  %i.jt = and i64 %i.js, 7
  %i.ju = icmp ne i64 %i.jt, 7
  %.not.i732 = icmp eq ptr %.1.i556936, null
  %or.cond1566 = or i1 %.not.i732, %i.ju
  br i1 %or.cond1566, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit, label %bb.bc, !prof !103

bb.bc:                                            ; preds = %.noexc284
  %i.jv = load i64, ptr %.1.i556936, align 8, !tbaa !79
  %i.jw = and i64 %i.jv, 7
  %i.jx = icmp eq i64 %i.jw, 5
  %i.jy = icmp ne ptr %.1.i.i, null
  %spec.select.i283 = and i1 %i.jy, %i.jx
  br i1 %spec.select.i283, label %bb.bd, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit, !prof !221

bb.bd:                                            ; preds = %bb.bc
  %.not.i434 = icmp ult i64 %i.js, 256
  br i1 %.not.i434, label %bb.bf, label %bb.be, !prof !104

bb.be:                                            ; preds = %bb.bd
  %i.jz = load ptr, ptr %i.it, align 8, !tbaa !98
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !225
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !225
  store ptr %.1.i556936, ptr %i.kc, align 8, !tbaa !225
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink1685 = phi ptr [ %i.kd, %bb.be ], [ %.1.i556936, %bb.bd ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store ptr %.sink1685, ptr %i.ke, align 8, !tbaa !225
  %i.kf = getelementptr inbounds nuw i8, ptr %.1.i556936, i64 16
  store ptr %.1.i.i, ptr %i.kf, align 8, !tbaa !225
  store ptr %.1.i556936, ptr %i.it, align 8, !tbaa !98
  %19 = and i64 %i.js, 255
  %20 = and i64 %i.js, -256
  %i.kg = add i64 %20, 256
  %21 = or disjoint i64 %i.kg, %19
  store i64 %21, ptr %i.ip, align 8, !tbaa !79
  br i1 %.not.i164, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.thread, label %.noexc204, !prof !104

.noexc204:                                        ; preds = %bb.bf
  %i.kh = load i64, ptr %.1.i.i, align 8, !tbaa !79
  %i.ki = and i64 %i.kh, 7
  %i.kj = icmp eq i64 %i.ki, 7
  br i1 %i.kj, label %bb.bg, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit, !prof !221

bb.bg:                                            ; preds = %.noexc204
  %i.kk = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.kl = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = sdiv exact i64 %i.ko, 24
  %i.kq = icmp ult i64 %i.kp, 2
  br i1 %i.kq, label %bb.bh, label %.noexc205, !prof !104

bb.bh:                                            ; preds = %bb.bg
  %i.kr = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 2)
          to label %.noexc297 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc297:                                        ; preds = %bb.bh
  br i1 %i.kr, label %.noexc297..noexc205_crit_edge, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit, !prof !97

.noexc297..noexc205_crit_edge:                    ; preds = %.noexc297
  %.pre1711 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %.noexc205

.noexc205:                                        ; preds = %.noexc297..noexc205_crit_edge, %bb.bg
  %i.ks = phi ptr [ %.pre1711, %.noexc297..noexc205_crit_edge ], [ %i.kl, %bb.bg ] ; 11 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  store ptr %i.kt, ptr %i.iq, align 8, !tbaa !212
  %.not34.i203.not = icmp eq ptr %i.ks, null
  br i1 %.not34.i203.not, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit, label %bb.bi, !prof !224

bb.bi:                                            ; preds = %.noexc205
  %i.ku = load i64, ptr %.1.i.i, align 8, !tbaa !79 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 24 ; 2 uses
  store i64 2061, ptr %i.ks, align 8, !tbaa !215
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr @.str.9, ptr %i.kw, align 8, !tbaa !98
  store i64 781, ptr %i.kv, align 8, !tbaa !215
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  store ptr @.str.11, ptr %i.kx, align 8, !tbaa !98
  %.not.i442 = icmp ult i64 %i.ku, 256
  br i1 %.not.i442, label %bb.bk, label %bb.bj, !prof !104

bb.bj:                                            ; preds = %bb.bi
  %i.ky = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !98
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !225
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !225
  store ptr %i.ks, ptr %i.lc, align 8, !tbaa !225
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %.sink1686 = phi ptr [ %i.ld, %bb.bj ], [ %i.ks, %bb.bi ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  store ptr %.sink1686, ptr %i.le, align 8, !tbaa !225
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.kv, ptr %i.lf, align 8, !tbaa !225
  %i.lg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store ptr %i.ks, ptr %i.lg, align 8, !tbaa !98
  %i.lh = load i64, ptr %.1.i.i, align 8, !tbaa !79
  %i.li = and i64 %i.lh, 255
  %i.lj = and i64 %i.ku, -256
  %i.lk = add i64 %i.lj, 256
  %i.ll = or disjoint i64 %i.li, %i.lk
  store i64 %i.ll, ptr %.1.i.i, align 8, !tbaa !79
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit: ; preds = %bb.bc, %.noexc284, %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i, %.noexc297, %.noexc205, %bb.bk, %.noexc204
  %i.lm = phi ptr [ %.1.i.i, %bb.bk ], [ %.1.i.i, %.noexc205 ], [ %.1.i.i, %.noexc297 ], [ %.1.i.i, %.noexc204 ], [ null, %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit.i ], [ null, %.noexc284 ], [ null, %bb.bc ] ; 3 uses
  br i1 %i.hx, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i, label %.noexc210, !prof !97

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.thread: ; preds = %bb.bf
  br i1 %i.hx, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit213.thread, !prof !97

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i: ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.thread, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit
  %i.ln = phi ptr [ %.1.i.i, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.thread ], [ %i.lm, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit ] ; 3 uses
  %i.lo = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.lp = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %bb.bl, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i, !prof !104

bb.bl:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i
  %i.lr = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc472 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc472:                                        ; preds = %bb.bl
  br i1 %i.lr, label %.noexc472._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i_crit_edge, label %.noexc210.thread, !prof !97

.noexc472._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i_crit_edge: ; preds = %.noexc472
  %.pre1712 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i: ; preds = %.noexc472._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i_crit_edge, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i
  %i.ls = phi ptr [ %.pre1712, %.noexc472._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i_crit_edge ], [ %i.lp, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i ] ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  store ptr %i.lt, ptr %i.iq, align 8, !tbaa !212
  %.not.i470.not = icmp eq ptr %i.ls, null
  br i1 %.not.i470.not, label %.noexc210.thread, label %bb.bm, !prof !224

bb.bm:                                            ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i
  store i64 3597, ptr %i.ls, align 8, !tbaa !215
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr @.str.19, ptr %i.lu, align 8, !tbaa !98
  br label %.noexc210.thread

.noexc210:                                        ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit
  br i1 %.not.i164, label %.noexc211, label %.noexc210.thread, !prof !228

.noexc210.thread:                                 ; preds = %.noexc472, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i, %bb.bm, %.noexc210
  %i.lv = phi ptr [ %i.lm, %.noexc210 ], [ %i.ln, %bb.bm ], [ %i.ln, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i ], [ %i.ln, %.noexc472 ] ; 3 uses
  %.1.i469972 = phi ptr [ null, %.noexc210 ], [ %i.ls, %bb.bm ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i ], [ null, %.noexc472 ] ; 3 uses
  %i.lw = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.lx = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %bb.bn, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599, !prof !104

bb.bn:                                            ; preds = %.noexc210.thread
  %i.lz = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc603 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc603:                                        ; preds = %bb.bn
  br i1 %i.lz, label %.noexc603._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599_crit_edge, label %.noexc211, !prof !97

.noexc603._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599_crit_edge: ; preds = %.noexc603
  %.pre1713 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599: ; preds = %.noexc603._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599_crit_edge, %.noexc210.thread
  %i.ma = phi ptr [ %.pre1713, %.noexc603._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599_crit_edge ], [ %i.lx, %.noexc210.thread ] ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store ptr %i.mb, ptr %i.iq, align 8, !tbaa !212
  %.not9.i601.not = icmp eq ptr %i.ma, null
  br i1 %.not9.i601.not, label %.noexc211, label %bb.bo, !prof !224

bb.bo:                                            ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599
  store i64 6, ptr %i.ma, align 8, !tbaa !215
  br label %.noexc211

.noexc211:                                        ; preds = %.noexc603, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599, %bb.bo, %.noexc210
  %i.mc = phi ptr [ %i.lv, %bb.bo ], [ %i.lv, %.noexc603 ], [ %i.lm, %.noexc210 ], [ %i.lv, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599 ] ; 8 uses
  %.1.i469970 = phi ptr [ %.1.i469972, %bb.bo ], [ %.1.i469972, %.noexc603 ], [ null, %.noexc210 ], [ %.1.i469972, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599 ] ; 6 uses
  %.1.i602 = phi ptr [ %i.ma, %bb.bo ], [ null, %.noexc603 ], [ null, %.noexc210 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i599 ] ; 4 uses
  %.not.i324 = icmp eq ptr %i.mc, null
  br i1 %.not.i324, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit213.thread, label %.noexc273, !prof !229

.noexc273:                                        ; preds = %.noexc211
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !79 ; 4 uses
  %i.me = and i64 %i.md, 7
  %i.mf = icmp ne i64 %i.me, 7
  %.not.i738 = icmp eq ptr %.1.i469970, null
  %or.cond1567 = or i1 %.not.i738, %i.mf
  br i1 %or.cond1567, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit213.thread, label %bb.bp, !prof !103

bb.bp:                                            ; preds = %.noexc273
  %i.mg = load i64, ptr %.1.i469970, align 8, !tbaa !79
  %i.mh = and i64 %i.mg, 7
  %i.mi = icmp eq i64 %i.mh, 5
  %i.mj = icmp ne ptr %.1.i602, null
  %spec.select.i = and i1 %i.mj, %i.mi
  br i1 %spec.select.i, label %bb.bq, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit213.thread, !prof !221

bb.bq:                                            ; preds = %bb.bp
  %.not.i440 = icmp ult i64 %i.md, 256
  br i1 %.not.i440, label %bb.bs, label %bb.br, !prof !104

bb.br:                                            ; preds = %bb.bq
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !98
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !225
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !225
  store ptr %.1.i469970, ptr %i.mo, align 8, !tbaa !225
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.sink1687 = phi ptr [ %i.mp, %bb.br ], [ %.1.i469970, %bb.bq ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.1.i602, i64 16
  store ptr %.sink1687, ptr %i.mq, align 8, !tbaa !225
  %i.mr = getelementptr inbounds nuw i8, ptr %.1.i469970, i64 16
  store ptr %.1.i602, ptr %i.mr, align 8, !tbaa !225
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %.1.i469970, ptr %i.ms, align 8, !tbaa !98
  %22 = and i64 %i.md, 255
  %23 = and i64 %i.md, -256
  %i.mt = add i64 %23, 256
  %24 = or disjoint i64 %i.mt, %22
  store i64 %24, ptr %i.mc, align 8, !tbaa !79
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit213.thread

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit213.thread: ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.thread, %.noexc211, %.noexc273, %bb.bp, %bb.bs
  %.not.i3241242 = phi i1 [ false, %bb.bs ], [ false, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.thread ], [ false, %bb.bp ], [ false, %.noexc273 ], [ true, %.noexc211 ] ; 2 uses
  %i.mu = phi ptr [ %i.mc, %bb.bs ], [ %.1.i.i, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.thread ], [ %i.mc, %bb.bp ], [ %i.mc, %.noexc273 ], [ null, %.noexc211 ] ; 8 uses
  %i.mv = phi ptr [ %.1.i602, %bb.bs ], [ null, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.thread ], [ null, %bb.bp ], [ null, %.noexc273 ], [ null, %.noexc211 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 48
  invoke void @_ZNK6duckdb15GeometryTypeSet8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.145") align 8 %7, ptr noundef nonnull align 1 dereferenceable(4) %i.mw, i1 noundef zeroext false)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit213.thread
  %i.mx = load ptr, ptr %7, align 8, !tbaa !132   ; 3 uses
  %i.my = load ptr, ptr %i.iu, align 8, !tbaa !132 ; 2 uses
  %.not13871598 = icmp eq ptr %i.mx, %i.my
  br i1 %.not13871598, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph1601

.lr.ph1601:                                       ; preds = %bb.bt
  %.not.i630 = icmp eq ptr %i.mv, null
  %or.cond1264 = or i1 %.not.i164, %.not.i630
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  br label %bb.bx

._crit_edge1602:                                  ; preds = %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit
  %.pre1715 = load ptr, ptr %7, align 8, !tbaa !134 ; 3 uses
  %.pre1716 = load ptr, ptr %i.iu, align 8, !tbaa !135 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre1715, %.pre1716
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge1602, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre1715, %._crit_edge1602 ] ; 3 uses
  %i.na = load ptr, ptr %.05.i.i.i, align 8, !tbaa !73 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.na) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nd, %.pre1716
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.bt, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge1602
  %i.ne = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre1715, %._crit_edge1602 ], [ %i.mx, %bb.bt ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ne, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ne) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 56 ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !230
  %i.nh = call double @llvm.fabs.f64(double %i.ng)
  %i.ni = fcmp ueq double %i.nh, +inf
  br i1 %i.ni, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 64 ; 3 uses
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !231
  %i.nl = call double @llvm.fabs.f64(double %i.nk)
  %i.nm = fcmp ueq double %i.nl, +inf
  br i1 %i.nm, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 88 ; 3 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !232
  %i.np = call double @llvm.fabs.f64(double %i.no)
  %i.nq = fcmp ueq double %i.np, +inf
  br i1 %i.nq, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, label %_ZNK6duckdb14GeometryExtent5HasXYEv.exit

_ZNK6duckdb14GeometryExtent5HasXYEv.exit:         ; preds = %bb.bw
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 96 ; 3 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !233
  %i.nt = call double @llvm.fabs.f64(double %i.ns)
  %i.nu = fcmp ueq double %i.nt, +inf
  br i1 %i.nu, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, label %bb.cf

bb.bx:                                            ; preds = %.lr.ph1601, %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit
  %.sroa.0781.01599 = phi ptr [ %i.mx, %.lr.ph1601 ], [ %i.pe, %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit ] ; 2 uses
  %i.nv = load ptr, ptr %.sroa.0781.01599, align 8, !tbaa !73 ; 3 uses
  br i1 %or.cond1264, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit631, !prof !220

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit631: ; preds = %bb.bx
  %i.nw = load i64, ptr %i.mv, align 8, !tbaa !79
  %i.nx = and i64 %i.nw, 7
  %i.ny = icmp eq i64 %i.nx, 6
  %i.nz = icmp ne ptr %i.nv, null
  %i.oa = and i1 %i.hx, %i.nz
  %or.cond1266 = select i1 %i.ny, i1 %i.oa, i1 false, !prof !234
  br i1 %or.cond1266, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit369, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, !prof !234

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit369: ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit631
  %i.ob = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nv) #26 ; 5 uses
  %i.oc = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.od = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %bb.by, label %bb.bz, !prof !104

bb.by:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit369
  %i.of = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc294 unwind label %bb.ce

.noexc294:                                        ; preds = %bb.by
  br i1 %i.of, label %.noexc294._crit_edge, label %.noexc267, !prof !97

.noexc294._crit_edge:                             ; preds = %.noexc294
  %.pre1714 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc294._crit_edge, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit369
  %i.og = phi ptr [ %.pre1714, %.noexc294._crit_edge ], [ %i.od, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit369 ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  store ptr %i.oh, ptr %i.iq, align 8, !tbaa !212
  br label %.noexc267

.noexc267:                                        ; preds = %bb.bz, %.noexc294
  %.0.i293 = phi ptr [ %i.og, %bb.bz ], [ null, %.noexc294 ] ; 7 uses
  %i.oi = load ptr, ptr %i.iw, align 8, !tbaa !222
  %i.oj = load ptr, ptr %i.iv, align 8, !tbaa !223 ; 2 uses
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %.not.i461 = icmp ugt i64 %i.om, %i.ob
  br i1 %.not.i461, label %.noexc419, label %bb.ca, !prof !97

bb.ca:                                            ; preds = %.noexc267
  %i.on = add i64 %i.ob, 1
  %i.oo = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_str_pool_growEPNS_15yyjson_str_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iv, ptr noundef nonnull %i.is, i64 noundef %i.on)
          to label %.noexc463 unwind label %bb.ce

.noexc463:                                        ; preds = %bb.ca
  br i1 %i.oo, label %.noexc419thread-pre-split, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, !prof !97

.noexc419thread-pre-split:                        ; preds = %.noexc463
  %.pr1049 = load ptr, ptr %i.iv, align 8, !tbaa !223
  br label %.noexc419

.noexc419:                                        ; preds = %.noexc419thread-pre-split, %.noexc267
  %i.op = phi ptr [ %.pr1049, %.noexc419thread-pre-split ], [ %i.oj, %.noexc267 ] ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.ob ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 1
  store ptr %i.or, ptr %i.iv, align 8, !tbaa !223
  %.not.i417 = icmp eq ptr %i.op, null
  br i1 %.not.i417, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, label %.noexc268, !prof !224

.noexc268:                                        ; preds = %.noexc419
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.op, ptr nonnull align 1 %i.nv, i64 %i.ob, i1 false)
  store i8 0, ptr %i.oq, align 1, !tbaa !98
  %.not1501 = icmp eq ptr %.0.i293, null
  br i1 %.not1501, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i661, !prof !235

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i661: ; preds = %.noexc268
  %i.os = shl i64 %i.ob, 8
  %i.ot = or disjoint i64 %i.os, 5
  store i64 %i.ot, ptr %.0.i293, align 8, !tbaa !215
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i293, i64 8
  store ptr %i.op, ptr %i.ou, align 8, !tbaa !98
  %i.ov = load i64, ptr %i.mv, align 8, !tbaa !79 ; 4 uses
  %i.ow = and i64 %i.ov, 7
  %i.ox = icmp eq i64 %i.ow, 6
  br i1 %i.ox, label %bb.cb, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, !prof !221

bb.cb:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i661
  %25 = and i64 %i.ov, 254
  %26 = and i64 %i.ov, -256
  %i.oy = add i64 %26, 256
  %27 = or disjoint i64 %i.oy, %25
  store i64 %27, ptr %i.mv, align 8, !tbaa !79
  %i.oz = icmp ult i64 %i.ov, 256
  br i1 %i.oz, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pa = load ptr, ptr %i.mz, align 8, !tbaa !98
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !225
  store ptr %.0.i293, ptr %i.pb, align 8, !tbaa !225
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.sink1688 = phi ptr [ %i.pc, %bb.cc ], [ %.0.i293, %bb.cb ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i293, i64 16
  store ptr %.sink1688, ptr %i.pd, align 8, !tbaa !225
  store ptr %.0.i293, ptr %i.mz, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit

_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit: ; preds = %.noexc463, %.noexc419, %.noexc268, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit631, %bb.bx, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i661, %bb.cd
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0781.01599, i64 32 ; 2 uses
  %.not1387 = icmp eq ptr %i.pe, %i.my
  br i1 %.not1387, label %._crit_edge1602, label %bb.bx

bb.ce:                                            ; preds = %bb.ca, %bb.by
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %_ZNK6duckdb14GeometryExtent5HasXYEv.exit
  br i1 %i.hx, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i475, label %.noexc207, !prof !97

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i475: ; preds = %bb.cf
  %i.pg = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.ph = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.pi = icmp eq ptr %i.pg, %i.ph
  br i1 %i.pi, label %bb.cg, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477, !prof !104

bb.cg:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i475
  %i.pj = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc512 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc512:                                        ; preds = %bb.cg
  br i1 %i.pj, label %.noexc512._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477_crit_edge, label %.noexc207.thread, !prof !97

.noexc512._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477_crit_edge: ; preds = %.noexc512
  %.pre1717 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477: ; preds = %.noexc512._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477_crit_edge, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i475
  %i.pk = phi ptr [ %.pre1717, %.noexc512._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477_crit_edge ], [ %i.ph, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit.i475 ] ; 5 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  store ptr %i.pl, ptr %i.iq, align 8, !tbaa !212
  %.not.i479.not = icmp eq ptr %i.pk, null
  br i1 %.not.i479.not, label %.noexc207.thread, label %bb.ch, !prof !224

bb.ch:                                            ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477
  store i64 1037, ptr %i.pk, align 8, !tbaa !215
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store ptr @.str.28, ptr %i.pm, align 8, !tbaa !98
  br label %.noexc207.thread

.noexc207:                                        ; preds = %bb.cf
  br i1 %.not.i164, label %.noexc208, label %.noexc207.thread, !prof !228

.noexc207.thread:                                 ; preds = %.noexc512, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477, %bb.ch, %.noexc207
  %.1.i4731066 = phi ptr [ null, %.noexc207 ], [ %i.pk, %bb.ch ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i477 ], [ null, %.noexc512 ] ; 3 uses
  %i.pn = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.po = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %bb.ci, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605, !prof !104

bb.ci:                                            ; preds = %.noexc207.thread
  %i.pq = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc609 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc609:                                        ; preds = %bb.ci
  br i1 %i.pq, label %.noexc609._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605_crit_edge, label %.noexc208, !prof !97

.noexc609._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605_crit_edge: ; preds = %.noexc609
  %.pre1718 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605: ; preds = %.noexc609._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605_crit_edge, %.noexc207.thread
  %i.pr = phi ptr [ %.pre1718, %.noexc609._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605_crit_edge ], [ %i.po, %.noexc207.thread ] ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store ptr %i.ps, ptr %i.iq, align 8, !tbaa !212
  %.not9.i607.not = icmp eq ptr %i.pr, null
  br i1 %.not9.i607.not, label %.noexc208, label %bb.cj, !prof !224

bb.cj:                                            ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605
  store i64 6, ptr %i.pr, align 8, !tbaa !215
  br label %.noexc208

.noexc208:                                        ; preds = %.noexc609, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605, %bb.cj, %.noexc207
  %.1.i4731064 = phi ptr [ %.1.i4731066, %bb.cj ], [ null, %.noexc207 ], [ %.1.i4731066, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605 ], [ %.1.i4731066, %.noexc609 ] ; 6 uses
  %.1.i608 = phi ptr [ %i.pr, %bb.cj ], [ null, %.noexc207 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i605 ], [ null, %.noexc609 ] ; 4 uses
  br i1 %.not.i3241242, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit.thread, label %.noexc276, !prof !226

.noexc276:                                        ; preds = %.noexc208
  %i.pt = load i64, ptr %i.mu, align 8, !tbaa !79 ; 4 uses
  %i.pu = and i64 %i.pt, 7
  %i.pv = icmp ne i64 %i.pu, 7
  %.not.i736 = icmp eq ptr %.1.i4731064, null
  %or.cond1571 = or i1 %.not.i736, %i.pv
  br i1 %or.cond1571, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit.thread, label %bb.ck, !prof !103

bb.ck:                                            ; preds = %.noexc276
  %i.pw = load i64, ptr %.1.i4731064, align 8, !tbaa !79
  %i.px = and i64 %i.pw, 7
  %i.py = icmp eq i64 %i.px, 5
  %i.pz = icmp ne ptr %.1.i608, null
  %spec.select.i275 = and i1 %i.pz, %i.py
  br i1 %spec.select.i275, label %bb.cl, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit.thread, !prof !221

bb.cl:                                            ; preds = %bb.ck
  %.not.i438 = icmp ult i64 %i.pt, 256
  br i1 %.not.i438, label %bb.cn, label %bb.cm, !prof !104

bb.cm:                                            ; preds = %bb.cl
  %i.qa = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !98
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !225
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !225
  store ptr %.1.i4731064, ptr %i.qe, align 8, !tbaa !225
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %.sink1689 = phi ptr [ %i.qf, %bb.cm ], [ %.1.i4731064, %bb.cl ]
  %i.qg = getelementptr inbounds nuw i8, ptr %.1.i608, i64 16
  store ptr %.sink1689, ptr %i.qg, align 8, !tbaa !225
  %i.qh = getelementptr inbounds nuw i8, ptr %.1.i4731064, i64 16
  store ptr %.1.i608, ptr %i.qh, align 8, !tbaa !225
  %i.qi = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store ptr %.1.i4731064, ptr %i.qi, align 8, !tbaa !98
  %28 = and i64 %i.pt, 255
  %29 = and i64 %i.pt, -256
  %i.qj = add i64 %29, 256
  %30 = or disjoint i64 %i.qj, %28
  store i64 %30, ptr %i.mu, align 8, !tbaa !79
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit.thread

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit.thread: ; preds = %.noexc208, %.noexc276, %bb.ck, %bb.cn
  %i.qk = phi ptr [ %.1.i608, %bb.cn ], [ null, %bb.ck ], [ null, %.noexc208 ], [ null, %.noexc276 ] ; 49 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 72 ; 2 uses
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !236
  %i.qn = call double @llvm.fabs.f64(double %i.qm)
  %i.qo = fcmp one double %i.qn, +inf
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 104 ; 2 uses
  %i.qq = load double, ptr %i.qp, align 8
  %i.qr = call double @llvm.fabs.f64(double %i.qq)
  %i.qs = fcmp one double %i.qr, +inf
  %i.qt = select i1 %i.qo, i1 %i.qs, i1 false
  %i.qu = load double, ptr %i.nf, align 8, !tbaa !230 ; 2 uses
  %.not.i618 = icmp eq ptr %i.qk, null
  %or.cond1573 = or i1 %.not.i164, %.not.i618     ; 2 uses
  br i1 %i.qt, label %bb.dh, label %bb.co

bb.co:                                            ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit.thread
  br i1 %or.cond1573, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit, !prof !220

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit: ; preds = %bb.co
  %i.qv = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.qw = and i64 %i.qv, 7
  %i.qx = icmp eq i64 %i.qw, 6
  br i1 %i.qx, label %bb.cp, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit613, !prof !221

bb.cp:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit
  %i.qy = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.qz = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.ra = icmp eq ptr %i.qy, %i.qz
  br i1 %i.ra, label %bb.cq, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664, !prof !104

bb.cq:                                            ; preds = %bb.cp
  %i.rb = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc667 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc667:                                        ; preds = %bb.cq
  br i1 %i.rb, label %.noexc667._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664_crit_edge, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit613, !prof !97

.noexc667._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664_crit_edge: ; preds = %.noexc667
  %.pre1719 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664: ; preds = %.noexc667._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664_crit_edge, %bb.cp
  %i.rc = phi ptr [ %.pre1719, %.noexc667._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664_crit_edge ], [ %i.qz, %bb.cp ] ; 8 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  store ptr %i.rd, ptr %i.iq, align 8, !tbaa !212
  %.not11.i.not = icmp eq ptr %i.rc, null
  br i1 %.not11.i.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit613, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664
  store i64 20, ptr %i.rc, align 8, !tbaa !215
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  store double %i.qu, ptr %i.re, align 8, !tbaa !98
  %i.rf = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.rg = and i64 %i.rf, 7
  %i.rh = icmp eq i64 %i.rg, 6
  br i1 %i.rh, label %bb.cr, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit613, !prof !237

bb.cr:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i
  %31 = and i64 %i.rf, 254
  %32 = and i64 %i.rf, -256
  %i.ri = add i64 %32, 256
  %33 = or disjoint i64 %i.ri, %31
  store i64 %33, ptr %i.qk, align 8, !tbaa !79
  %i.rj = icmp ult i64 %i.rf, 256
  br i1 %i.rj, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !98
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !225
  store ptr %i.rc, ptr %i.rm, align 8, !tbaa !225
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %.sink1690 = phi ptr [ %i.rn, %bb.cs ], [ %i.rc, %bb.cr ]
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store ptr %.sink1690, ptr %i.ro, align 8, !tbaa !225
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.rc, ptr %i.rp, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit613

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit613: ; preds = %.noexc667, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i664, %bb.ct, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit
  %i.rq = load double, ptr %i.nj, align 8, !tbaa !231
  %i.rr = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.rs = and i64 %i.rr, 7
  %i.rt = icmp eq i64 %i.rs, 6
  br i1 %i.rt, label %bb.cu, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit615, !prof !221

bb.cu:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit613
  %i.ru = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.rv = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %bb.cv, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669, !prof !104

bb.cv:                                            ; preds = %bb.cu
  %i.rx = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc673 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc673:                                        ; preds = %bb.cv
  br i1 %i.rx, label %.noexc673._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669_crit_edge, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit615, !prof !97

.noexc673._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669_crit_edge: ; preds = %.noexc673
  %.pre1720 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669: ; preds = %.noexc673._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669_crit_edge, %bb.cu
  %i.ry = phi ptr [ %.pre1720, %.noexc673._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669_crit_edge ], [ %i.rv, %bb.cu ] ; 8 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  store ptr %i.rz, ptr %i.iq, align 8, !tbaa !212
  %.not11.i671.not = icmp eq ptr %i.ry, null
  br i1 %.not11.i671.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit615, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i634, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i634: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669
  store i64 20, ptr %i.ry, align 8, !tbaa !215
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store double %i.rq, ptr %i.sa, align 8, !tbaa !98
  %i.sb = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.sc = and i64 %i.sb, 7
  %i.sd = icmp eq i64 %i.sc, 6
  br i1 %i.sd, label %bb.cw, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit615, !prof !237

bb.cw:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i634
  %34 = and i64 %i.sb, 254
  %35 = and i64 %i.sb, -256
  %i.se = add i64 %35, 256
  %36 = or disjoint i64 %i.se, %34
  store i64 %36, ptr %i.qk, align 8, !tbaa !79
  %i.sf = icmp ult i64 %i.sb, 256
  br i1 %i.sf, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !98
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !225
  store ptr %i.ry, ptr %i.si, align 8, !tbaa !225
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %.sink1691 = phi ptr [ %i.sj, %bb.cx ], [ %i.ry, %bb.cw ]
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store ptr %.sink1691, ptr %i.sk, align 8, !tbaa !225
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.ry, ptr %i.sl, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit615

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit615: ; preds = %.noexc673, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i669, %bb.cy, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i634, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit613
  %i.sm = load double, ptr %i.nn, align 8, !tbaa !232
  %i.sn = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.so = and i64 %i.sn, 7
  %i.sp = icmp eq i64 %i.so, 6
  br i1 %i.sp, label %bb.cz, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit617, !prof !221

bb.cz:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit615
  %i.sq = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.sr = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %bb.da, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676, !prof !104

bb.da:                                            ; preds = %bb.cz
  %i.st = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc680 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc680:                                        ; preds = %bb.da
  br i1 %i.st, label %.noexc680._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676_crit_edge, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit617, !prof !97

.noexc680._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676_crit_edge: ; preds = %.noexc680
  %.pre1721 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676: ; preds = %.noexc680._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676_crit_edge, %bb.cz
  %i.su = phi ptr [ %.pre1721, %.noexc680._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676_crit_edge ], [ %i.sr, %bb.cz ] ; 8 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  store ptr %i.sv, ptr %i.iq, align 8, !tbaa !212
  %.not11.i678.not = icmp eq ptr %i.su, null
  br i1 %.not11.i678.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit617, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i637, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i637: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676
  store i64 20, ptr %i.su, align 8, !tbaa !215
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store double %i.sm, ptr %i.sw, align 8, !tbaa !98
  %i.sx = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.sy = and i64 %i.sx, 7
  %i.sz = icmp eq i64 %i.sy, 6
  br i1 %i.sz, label %bb.db, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit617, !prof !237

bb.db:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i637
  %37 = and i64 %i.sx, 254
  %38 = and i64 %i.sx, -256
  %i.ta = add i64 %38, 256
  %39 = or disjoint i64 %i.ta, %37
  store i64 %39, ptr %i.qk, align 8, !tbaa !79
  %i.tb = icmp ult i64 %i.sx, 256
  br i1 %i.tb, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tc = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !98
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !225
  store ptr %i.su, ptr %i.te, align 8, !tbaa !225
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %.sink1692 = phi ptr [ %i.tf, %bb.dc ], [ %i.su, %bb.db ]
  %i.tg = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  store ptr %.sink1692, ptr %i.tg, align 8, !tbaa !225
  %i.th = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.su, ptr %i.th, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit617

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit617: ; preds = %.noexc680, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i676, %bb.dd, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i637, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit615
  %i.ti = load double, ptr %i.nr, align 8, !tbaa !233
  %i.tj = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.tk = and i64 %i.tj, 7
  %i.tl = icmp eq i64 %i.tk, 6
  br i1 %i.tl, label %bb.de, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, !prof !221

bb.de:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit617
  %i.tm = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.tn = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.to = icmp eq ptr %i.tm, %i.tn
  br i1 %i.to, label %bb.df, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683, !prof !104

bb.df:                                            ; preds = %bb.de
  %i.tp = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc687 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc687:                                        ; preds = %bb.df
  br i1 %i.tp, label %.noexc687._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683_crit_edge, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, !prof !97

.noexc687._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683_crit_edge: ; preds = %.noexc687
  %.pre1722 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683: ; preds = %.noexc687._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683_crit_edge, %bb.de
  %i.tq = phi ptr [ %.pre1722, %.noexc687._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683_crit_edge ], [ %i.tn, %bb.de ] ; 7 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  store ptr %i.tr, ptr %i.iq, align 8, !tbaa !212
  %.not11.i685.not = icmp eq ptr %i.tq, null
  br i1 %.not11.i685.not, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i640, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i640: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683
  store i64 20, ptr %i.tq, align 8, !tbaa !215
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store double %i.ti, ptr %i.ts, align 8, !tbaa !98
  %i.tt = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.tu = and i64 %i.tt, 7
  %i.tv = icmp eq i64 %i.tu, 6
  br i1 %i.tv, label %bb.dg, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, !prof !237

bb.dg:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i640
  %40 = and i64 %i.tt, 254
  %41 = and i64 %i.tt, -256
  %i.tw = add i64 %41, 256
  %42 = or disjoint i64 %i.tw, %40
  store i64 %42, ptr %i.qk, align 8, !tbaa !79
  %i.tx = icmp ult i64 %i.tt, 256
  br i1 %i.tx, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split.sink.split

bb.dh:                                            ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit.thread
  br i1 %or.cond1573, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit619, !prof !220

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit619: ; preds = %bb.dh
  %i.ty = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.tz = and i64 %i.ty, 7
  %i.ua = icmp eq i64 %i.tz, 6
  br i1 %i.ua, label %bb.di, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit621, !prof !221

bb.di:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit619
  %i.ub = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.uc = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %bb.dj, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690, !prof !104

bb.dj:                                            ; preds = %bb.di
  %i.ue = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc694 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc694:                                        ; preds = %bb.dj
  br i1 %i.ue, label %.noexc694._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690_crit_edge, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit621, !prof !97

.noexc694._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690_crit_edge: ; preds = %.noexc694
  %.pre1723 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690: ; preds = %.noexc694._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690_crit_edge, %bb.di
  %i.uf = phi ptr [ %.pre1723, %.noexc694._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690_crit_edge ], [ %i.uc, %bb.di ] ; 8 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  store ptr %i.ug, ptr %i.iq, align 8, !tbaa !212
  %.not11.i692.not = icmp eq ptr %i.uf, null
  br i1 %.not11.i692.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit621, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i643, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i643: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690
  store i64 20, ptr %i.uf, align 8, !tbaa !215
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store double %i.qu, ptr %i.uh, align 8, !tbaa !98
  %i.ui = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.uj = and i64 %i.ui, 7
  %i.uk = icmp eq i64 %i.uj, 6
  br i1 %i.uk, label %bb.dk, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit621, !prof !237

bb.dk:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i643
  %43 = and i64 %i.ui, 254
  %44 = and i64 %i.ui, -256
  %i.ul = add i64 %44, 256
  %45 = or disjoint i64 %i.ul, %43
  store i64 %45, ptr %i.qk, align 8, !tbaa !79
  %i.um = icmp ult i64 %i.ui, 256
  br i1 %i.um, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.un = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !98
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !225
  store ptr %i.uf, ptr %i.up, align 8, !tbaa !225
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %.sink1694 = phi ptr [ %i.uq, %bb.dl ], [ %i.uf, %bb.dk ]
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store ptr %.sink1694, ptr %i.ur, align 8, !tbaa !225
  %i.us = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.uf, ptr %i.us, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit621

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit621: ; preds = %.noexc694, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i690, %bb.dm, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i643, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit619
  %i.ut = load double, ptr %i.nj, align 8, !tbaa !231
  %i.uu = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.uv = and i64 %i.uu, 7
  %i.uw = icmp eq i64 %i.uv, 6
  br i1 %i.uw, label %bb.dn, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit623, !prof !221

bb.dn:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit621
  %i.ux = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.uy = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %bb.do, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697, !prof !104

bb.do:                                            ; preds = %bb.dn
  %i.va = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc701 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc701:                                        ; preds = %bb.do
  br i1 %i.va, label %.noexc701._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697_crit_edge, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit623, !prof !97

.noexc701._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697_crit_edge: ; preds = %.noexc701
  %.pre1724 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697: ; preds = %.noexc701._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697_crit_edge, %bb.dn
  %i.vb = phi ptr [ %.pre1724, %.noexc701._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697_crit_edge ], [ %i.uy, %bb.dn ] ; 8 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
  store ptr %i.vc, ptr %i.iq, align 8, !tbaa !212
  %.not11.i699.not = icmp eq ptr %i.vb, null
  br i1 %.not11.i699.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit623, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i646, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i646: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697
  store i64 20, ptr %i.vb, align 8, !tbaa !215
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store double %i.ut, ptr %i.vd, align 8, !tbaa !98
  %i.ve = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.vf = and i64 %i.ve, 7
  %i.vg = icmp eq i64 %i.vf, 6
  br i1 %i.vg, label %bb.dp, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit623, !prof !237

bb.dp:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i646
  %46 = and i64 %i.ve, 254
  %47 = and i64 %i.ve, -256
  %i.vh = add i64 %47, 256
  %48 = or disjoint i64 %i.vh, %46
  store i64 %48, ptr %i.qk, align 8, !tbaa !79
  %i.vi = icmp ult i64 %i.ve, 256
  br i1 %i.vi, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.vj = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !98
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !225
  store ptr %i.vb, ptr %i.vl, align 8, !tbaa !225
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  %.sink1695 = phi ptr [ %i.vm, %bb.dq ], [ %i.vb, %bb.dp ]
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  store ptr %.sink1695, ptr %i.vn, align 8, !tbaa !225
  %i.vo = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.vb, ptr %i.vo, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit623

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit623: ; preds = %.noexc701, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i697, %bb.dr, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i646, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit621
  %i.vp = load double, ptr %i.ql, align 8, !tbaa !236
  %i.vq = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.vr = and i64 %i.vq, 7
  %i.vs = icmp eq i64 %i.vr, 6
  br i1 %i.vs, label %bb.ds, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit625, !prof !221

bb.ds:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit623
  %i.vt = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.vu = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.vv = icmp eq ptr %i.vt, %i.vu
  br i1 %i.vv, label %bb.dt, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704, !prof !104

bb.dt:                                            ; preds = %bb.ds
  %i.vw = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc708 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc708:                                        ; preds = %bb.dt
  br i1 %i.vw, label %.noexc708._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704_crit_edge, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit625, !prof !97

.noexc708._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704_crit_edge: ; preds = %.noexc708
  %.pre1725 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704: ; preds = %.noexc708._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704_crit_edge, %bb.ds
  %i.vx = phi ptr [ %.pre1725, %.noexc708._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704_crit_edge ], [ %i.vu, %bb.ds ] ; 8 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  store ptr %i.vy, ptr %i.iq, align 8, !tbaa !212
  %.not11.i706.not = icmp eq ptr %i.vx, null
  br i1 %.not11.i706.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit625, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i649, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i649: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704
  store i64 20, ptr %i.vx, align 8, !tbaa !215
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  store double %i.vp, ptr %i.vz, align 8, !tbaa !98
  %i.wa = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.wb = and i64 %i.wa, 7
  %i.wc = icmp eq i64 %i.wb, 6
  br i1 %i.wc, label %bb.du, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit625, !prof !237

bb.du:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i649
  %49 = and i64 %i.wa, 254
  %50 = and i64 %i.wa, -256
  %i.wd = add i64 %50, 256
  %51 = or disjoint i64 %i.wd, %49
  store i64 %51, ptr %i.qk, align 8, !tbaa !79
  %i.we = icmp ult i64 %i.wa, 256
  br i1 %i.we, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wf = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !98
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16 ; 2 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !225
  store ptr %i.vx, ptr %i.wh, align 8, !tbaa !225
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv
  %.sink1696 = phi ptr [ %i.wi, %bb.dv ], [ %i.vx, %bb.du ]
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store ptr %.sink1696, ptr %i.wj, align 8, !tbaa !225
  %i.wk = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.vx, ptr %i.wk, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit625

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit625: ; preds = %.noexc708, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i704, %bb.dw, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i649, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit623
  %i.wl = load double, ptr %i.nn, align 8, !tbaa !232
  %i.wm = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.wn = and i64 %i.wm, 7
  %i.wo = icmp eq i64 %i.wn, 6
  br i1 %i.wo, label %bb.dx, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit627, !prof !221

bb.dx:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit625
  %i.wp = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.wq = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.wr = icmp eq ptr %i.wp, %i.wq
  br i1 %i.wr, label %bb.dy, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711, !prof !104

bb.dy:                                            ; preds = %bb.dx
  %i.ws = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc715 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc715:                                        ; preds = %bb.dy
  br i1 %i.ws, label %.noexc715._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711_crit_edge, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit627, !prof !97

.noexc715._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711_crit_edge: ; preds = %.noexc715
  %.pre1726 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711: ; preds = %.noexc715._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711_crit_edge, %bb.dx
  %i.wt = phi ptr [ %.pre1726, %.noexc715._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711_crit_edge ], [ %i.wq, %bb.dx ] ; 8 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  store ptr %i.wu, ptr %i.iq, align 8, !tbaa !212
  %.not11.i713.not = icmp eq ptr %i.wt, null
  br i1 %.not11.i713.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit627, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i652, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i652: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711
  store i64 20, ptr %i.wt, align 8, !tbaa !215
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store double %i.wl, ptr %i.wv, align 8, !tbaa !98
  %i.ww = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.wx = and i64 %i.ww, 7
  %i.wy = icmp eq i64 %i.wx, 6
  br i1 %i.wy, label %bb.dz, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit627, !prof !237

bb.dz:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i652
  %52 = and i64 %i.ww, 254
  %53 = and i64 %i.ww, -256
  %i.wz = add i64 %53, 256
  %54 = or disjoint i64 %i.wz, %52
  store i64 %54, ptr %i.qk, align 8, !tbaa !79
  %i.xa = icmp ult i64 %i.ww, 256
  br i1 %i.xa, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xb = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !98
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16 ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !225
  store ptr %i.wt, ptr %i.xd, align 8, !tbaa !225
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %.sink1697 = phi ptr [ %i.xe, %bb.ea ], [ %i.wt, %bb.dz ]
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store ptr %.sink1697, ptr %i.xf, align 8, !tbaa !225
  %i.xg = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.wt, ptr %i.xg, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit627

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit627: ; preds = %.noexc715, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i711, %bb.eb, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i652, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit625
  %i.xh = load double, ptr %i.nr, align 8, !tbaa !233
  %i.xi = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.xj = and i64 %i.xi, 7
  %i.xk = icmp eq i64 %i.xj, 6
  br i1 %i.xk, label %bb.ec, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit629, !prof !221

bb.ec:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit627
  %i.xl = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.xm = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.xn = icmp eq ptr %i.xl, %i.xm
  br i1 %i.xn, label %bb.ed, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718, !prof !104

bb.ed:                                            ; preds = %bb.ec
  %i.xo = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc722 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc722:                                        ; preds = %bb.ed
  br i1 %i.xo, label %.noexc722._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718_crit_edge, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit629, !prof !97

.noexc722._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718_crit_edge: ; preds = %.noexc722
  %.pre1727 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718: ; preds = %.noexc722._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718_crit_edge, %bb.ec
  %i.xp = phi ptr [ %.pre1727, %.noexc722._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718_crit_edge ], [ %i.xm, %bb.ec ] ; 8 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  store ptr %i.xq, ptr %i.iq, align 8, !tbaa !212
  %.not11.i720.not = icmp eq ptr %i.xp, null
  br i1 %.not11.i720.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit629, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i655, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i655: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718
  store i64 20, ptr %i.xp, align 8, !tbaa !215
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  store double %i.xh, ptr %i.xr, align 8, !tbaa !98
  %i.xs = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.xt = and i64 %i.xs, 7
  %i.xu = icmp eq i64 %i.xt, 6
  br i1 %i.xu, label %bb.ee, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit629, !prof !237

bb.ee:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i655
  %55 = and i64 %i.xs, 254
  %56 = and i64 %i.xs, -256
  %i.xv = add i64 %56, 256
  %57 = or disjoint i64 %i.xv, %55
  store i64 %57, ptr %i.qk, align 8, !tbaa !79
  %i.xw = icmp ult i64 %i.xs, 256
  br i1 %i.xw, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xx = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !98
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16 ; 2 uses
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !225
  store ptr %i.xp, ptr %i.xz, align 8, !tbaa !225
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ee, %bb.ef
  %.sink1698 = phi ptr [ %i.ya, %bb.ef ], [ %i.xp, %bb.ee ]
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  store ptr %.sink1698, ptr %i.yb, align 8, !tbaa !225
  %i.yc = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.xp, ptr %i.yc, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit629

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit629: ; preds = %.noexc722, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i718, %bb.eg, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i655, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit627
  %i.yd = load double, ptr %i.qp, align 8, !tbaa !238
  %i.ye = load i64, ptr %i.qk, align 8, !tbaa !79
  %i.yf = and i64 %i.ye, 7
  %i.yg = icmp eq i64 %i.yf, 6
  br i1 %i.yg, label %bb.eh, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, !prof !221

bb.eh:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit629
  %i.yh = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.yi = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.yj = icmp eq ptr %i.yh, %i.yi
  br i1 %i.yj, label %bb.ei, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725, !prof !104

bb.ei:                                            ; preds = %bb.eh
  %i.yk = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc729 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc729:                                        ; preds = %bb.ei
  br i1 %i.yk, label %.noexc729._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725_crit_edge, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, !prof !97

.noexc729._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725_crit_edge: ; preds = %.noexc729
  %.pre1728 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725: ; preds = %.noexc729._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725_crit_edge, %bb.eh
  %i.yl = phi ptr [ %.pre1728, %.noexc729._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725_crit_edge ], [ %i.yi, %bb.eh ] ; 7 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  store ptr %i.ym, ptr %i.iq, align 8, !tbaa !212
  %.not11.i727.not = icmp eq ptr %i.yl, null
  br i1 %.not11.i727.not, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i658, !prof !224

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i658: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725
  store i64 20, ptr %i.yl, align 8, !tbaa !215
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  store double %i.yd, ptr %i.yn, align 8, !tbaa !98
  %i.yo = load i64, ptr %i.qk, align 8, !tbaa !79 ; 4 uses
  %i.yp = and i64 %i.yo, 7
  %i.yq = icmp eq i64 %i.yp, 6
  br i1 %i.yq, label %bb.ej, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250, !prof !237

bb.ej:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i658
  %58 = and i64 %i.yo, 254
  %59 = and i64 %i.yo, -256
  %i.yr = add i64 %59, 256
  %60 = or disjoint i64 %i.yr, %58
  store i64 %60, ptr %i.qk, align 8, !tbaa !79
  %i.ys = icmp ult i64 %i.yo, 256
  br i1 %i.ys, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split, label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split.sink.split

_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split.sink.split: ; preds = %bb.ej, %bb.dg
  %.sink1833 = phi ptr [ %i.tq, %bb.dg ], [ %i.yl, %bb.ej ] ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !98
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16 ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !225
  store ptr %.sink1833, ptr %i.yv, align 8, !tbaa !225
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split

_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split: ; preds = %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split.sink.split, %bb.ej, %bb.dg
  %.sink1832 = phi ptr [ %i.yl, %bb.ej ], [ %i.tq, %bb.dg ], [ %.sink1833, %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split.sink.split ] ; 2 uses
  %.sink1699.sink = phi ptr [ %i.yl, %bb.ej ], [ %i.tq, %bb.dg ], [ %i.yw, %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split.sink.split ]
  %i.yx = getelementptr inbounds nuw i8, ptr %.sink1832, i64 16
  store ptr %.sink1699.sink, ptr %i.yx, align 8, !tbaa !225
  %i.yy = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %.sink1832, ptr %i.yy, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250

_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250: ; preds = %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250.sink.split, %bb.dh, %bb.co, %.noexc729, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i725, %.noexc687, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i683, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.bv, %bb.bw, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit629, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i658, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit617, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i640, %_ZNK6duckdb14GeometryExtent5HasXYEv.exit
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 136
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !72 ; 2 uses
  %i.zb = icmp eq i64 %i.za, 0
  br i1 %i.zb, label %_ZN13duckdb_yyjsonL15yyjson_doc_freeEPNS_10yyjson_docE.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 128
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !73
  %i.ze = invoke noundef ptr @_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE(ptr noundef %i.zd, i64 noundef %i.za, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZN13duckdb_yyjsonL11yyjson_readEPKcmj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

_ZN13duckdb_yyjsonL11yyjson_readEPKcmj.exit:      ; preds = %bb.ek
  %.not141 = icmp eq ptr %i.ze, null
  br i1 %.not141, label %bb.ev, label %bb.el

bb.el:                                            ; preds = %_ZN13duckdb_yyjsonL11yyjson_readEPKcmj.exit
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !77
  %i.zg = invoke noundef ptr @_ZN13duckdb_yyjson19yyjson_val_mut_copyEPNS_14yyjson_mut_docEPNS_10yyjson_valE(ptr noundef %i.at, ptr noundef %i.zf)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.em:                                            ; preds = %bb.el
  br i1 %i.hx, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_strcpyEPNS_14yyjson_mut_docEPKc.exit272, !prof !97

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit: ; preds = %bb.em
  %i.zh = load ptr, ptr %i.ir, align 8, !tbaa !211
  %i.zi = load ptr, ptr %i.iq, align 8, !tbaa !212 ; 2 uses
  %i.zj = icmp eq ptr %i.zh, %i.zi
  br i1 %i.zj, label %bb.en, label %bb.eo, !prof !104

bb.en:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit
  %i.zk = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.is, i64 noundef 1)
          to label %.noexc292 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc292:                                        ; preds = %bb.en
  br i1 %i.zk, label %.noexc292._crit_edge, label %.noexc270, !prof !97

.noexc292._crit_edge:                             ; preds = %.noexc292
  %.pre1729 = load ptr, ptr %i.iq, align 8, !tbaa !212
  br label %bb.eo

bb.eo:                                            ; preds = %.noexc292._crit_edge, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit
  %i.zl = phi ptr [ %.pre1729, %.noexc292._crit_edge ], [ %i.zi, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit ] ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 24
  store ptr %i.zm, ptr %i.iq, align 8, !tbaa !212
  br label %.noexc270

.noexc270:                                        ; preds = %bb.eo, %.noexc292
  %.0.i291 = phi ptr [ %i.zl, %bb.eo ], [ null, %.noexc292 ] ; 4 uses
  %i.zn = load ptr, ptr %i.iw, align 8, !tbaa !222
  %i.zo = load ptr, ptr %i.iv, align 8, !tbaa !223 ; 2 uses
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = ptrtoint ptr %i.zo to i64
  %i.zr = sub i64 %i.zp, %i.zq
  %.not.i465 = icmp ugt i64 %i.zr, 3
  br i1 %.not.i465, label %.noexc416, label %bb.ep, !prof !97

bb.ep:                                            ; preds = %.noexc270
  %i.zs = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_str_pool_growEPNS_15yyjson_str_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.iv, ptr noundef nonnull %i.is, i64 noundef 4)
          to label %.noexc467 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc467:                                        ; preds = %bb.ep
  br i1 %i.zs, label %.noexc416thread-pre-split, label %_ZN13duckdb_yyjsonL17yyjson_mut_strcpyEPNS_14yyjson_mut_docEPKc.exit272, !prof !97

.noexc416thread-pre-split:                        ; preds = %.noexc467
  %.pr1220 = load ptr, ptr %i.iv, align 8, !tbaa !223
  br label %.noexc416

.noexc416:                                        ; preds = %.noexc416thread-pre-split, %.noexc270
  %i.zt = phi ptr [ %.pr1220, %.noexc416thread-pre-split ], [ %i.zo, %.noexc270 ] ; 5 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  store ptr %i.zu, ptr %i.iv, align 8, !tbaa !223
  %.not.i414 = icmp eq ptr %i.zt, null
  br i1 %.not.i414, label %_ZN13duckdb_yyjsonL17yyjson_mut_strcpyEPNS_14yyjson_mut_docEPKc.exit272, label %.noexc271, !prof !213

.noexc271:                                        ; preds = %.noexc416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.zt, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 3
  store i8 0, ptr %i.zv, align 1, !tbaa !98
  %.not1388 = icmp eq ptr %.0.i291, null
  br i1 %.not1388, label %_ZN13duckdb_yyjsonL17yyjson_mut_strcpyEPNS_14yyjson_mut_docEPKc.exit272, label %bb.eq, !prof !239

bb.eq:                                            ; preds = %.noexc271
  store i64 781, ptr %.0.i291, align 8, !tbaa !215
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i291, i64 8
  store ptr %i.zt, ptr %i.zw, align 8, !tbaa !98
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_strcpyEPNS_14yyjson_mut_docEPKc.exit272

_ZN13duckdb_yyjsonL17yyjson_mut_strcpyEPNS_14yyjson_mut_docEPKc.exit272: ; preds = %.noexc467, %.noexc416, %.noexc271, %bb.eq, %bb.em
  %.1.i269 = phi ptr [ %.0.i291, %bb.eq ], [ null, %bb.em ], [ null, %.noexc271 ], [ null, %.noexc416 ], [ null, %.noexc467 ] ; 6 uses
  br i1 %.not.i3241242, label %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit290, label %.noexc288, !prof !226

.noexc288:                                        ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_strcpyEPNS_14yyjson_mut_docEPKc.exit272
  %i.zx = load i64, ptr %i.mu, align 8, !tbaa !79 ; 4 uses
  %i.zy = and i64 %i.zx, 7
  %i.zz = icmp ne i64 %i.zy, 7
  %.not.i731 = icmp eq ptr %.1.i269, null
  %or.cond1269 = select i1 %i.zz, i1 true, i1 %.not.i731, !prof !103
  br i1 %or.cond1269, label %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit290, label %bb.er, !prof !103

bb.er:                                            ; preds = %.noexc288
  %i.aaa = load i64, ptr %.1.i269, align 8, !tbaa !79
  %i.aab = and i64 %i.aaa, 7
  %i.aac = icmp eq i64 %i.aab, 5
  %i.aad = icmp ne ptr %i.zg, null
  %spec.select.i287 = and i1 %i.aad, %i.aac
  br i1 %spec.select.i287, label %bb.es, label %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit290, !prof !221

bb.es:                                            ; preds = %bb.er
  %.not.i433 = icmp ult i64 %i.zx, 256
  br i1 %.not.i433, label %.noexc289, label %bb.et, !prof !104

bb.et:                                            ; preds = %bb.es
  %i.aae = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !98
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !225
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16 ; 2 uses
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !225
  store ptr %.1.i269, ptr %i.aai, align 8, !tbaa !225
  br label %.noexc289

.noexc289:                                        ; preds = %bb.es, %bb.et
  %.sink1700 = phi ptr [ %i.aaj, %bb.et ], [ %.1.i269, %bb.es ]
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  store ptr %.sink1700, ptr %i.aak, align 8, !tbaa !225
  %i.aal = getelementptr inbounds nuw i8, ptr %.1.i269, i64 16
  store ptr %i.zg, ptr %i.aal, align 8, !tbaa !225
  %i.aam = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store ptr %.1.i269, ptr %i.aam, align 8, !tbaa !98
  %61 = and i64 %i.zx, 255
  %62 = and i64 %i.zx, -256
  %i.aan = add i64 %62, 256
  %63 = or disjoint i64 %i.aan, %61
  store i64 %63, ptr %i.mu, align 8, !tbaa !79
  br label %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit290

_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit290: ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_strcpyEPNS_14yyjson_mut_docEPKc.exit272, %.noexc288, %.noexc289, %bb.er
  %i.aao = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !115 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !115 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aao, i8 0, i64 32, i1 false)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.ze, i64 56
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !116 ; 2 uses
  %.not.i = icmp eq ptr %i.aaq, null
  br i1 %.not.i, label %.noexc, label %bb.eu

bb.eu:                                            ; preds = %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit290
  invoke void %.sroa.3.0.copyload.i(ptr noundef %.sroa.5.0.copyload.i, ptr noundef nonnull %i.aaq)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc:                                           ; preds = %bb.eu, %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit290
  invoke void %.sroa.3.0.copyload.i(ptr noundef %.sroa.5.0.copyload.i, ptr noundef nonnull %i.ze)
          to label %_ZN13duckdb_yyjsonL15yyjson_doc_freeEPNS_10yyjson_docE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ei, %bb.ed, %bb.dy, %bb.dt, %bb.do, %bb.dj, %bb.df, %bb.da, %bb.cv, %bb.cq, %bb.ci, %bb.bn, %bb.ay, %bb.cg, %bb.bl, %bb.ep, %bb.ba, %bb.bh, %bb.en, %.noexc, %bb.eu, %bb.ek, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_arrEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit213.thread, %bb.el, %bb.i, %._crit_edge1597, %bb.ab, %bb.ar, %bb.ak, %bb.p, %bb.w, %bb.l, %bb.y, %bb.r, %bb.am, %bb.ap
  %lpad.loopexit.split-lp1851 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ev:                                            ; preds = %_ZN13duckdb_yyjsonL11yyjson_readEPKcmj.exit
  %i.aar = load i8, ptr %i.bi, align 8, !tbaa !95
  %.not142 = icmp eq i8 %i.aar, 1
  br i1 %.not142, label %_ZN13duckdb_yyjsonL15yyjson_doc_freeEPNS_10yyjson_docE.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aas = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ex unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746.thread

bb.ex:                                            ; preds = %bb.ew
  %i.aat = getelementptr inbounds nuw i8, ptr %.sroa.0785.01605, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !73
  store ptr %i.aau, ptr %i.c, align 8, !tbaa !100
  invoke void @_ZN6duckdb22SerializationExceptionC2IJPKcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aas, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  invoke void @__cxa_throw(ptr nonnull %i.aas, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.fz unwind label %bb.ez

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746.thread: ; preds = %bb.ew
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.0103 = phi i1 [ false, %bb.ey ], [ true, %bb.ex ] ; 2 uses
  %i.aaw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.aax = load ptr, ptr %8, align 8, !tbaa !73   ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aaz = icmp eq ptr %i.aax, %i.aay
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744: ; preds = %bb.ez
  call void @_ZdlPv(ptr noundef %i.aax) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0103, label %bb.fa, label %.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746: ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.0103, label %bb.fa, label %.loopexit.split-lp.loopexit.split-lp

bb.fa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746
  %.pn1431231 = phi { ptr, i32 } [ %i.aav, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746.thread ], [ %i.aaw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746 ], [ %i.aaw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744 ]
  call void @__cxa_free_exception(ptr %i.aas) #22
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN13duckdb_yyjsonL15yyjson_doc_freeEPNS_10yyjson_docE.exit: ; preds = %.noexc, %bb.ev, %_ZN13duckdb_yyjsonL23yyjson_mut_arr_add_realEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEd.exit250
  %.sroa.0785.0 = load ptr, ptr %.sroa.0785.01605, align 8, !tbaa !122 ; 2 uses
  %.not1274 = icmp eq ptr %.sroa.0785.0, null
  br i1 %.not1274, label %._crit_edge1607, label %bb.ax

bb.fb:                                            ; preds = %._crit_edge1607
  %.not = icmp eq ptr %i.ix, null
  br i1 %.not, label %bb.fc, label %._crit_edge.i.i750

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN13duckdb_yyjson19yyjson_mut_doc_freeEPNS_14yyjson_mut_docE(ptr noundef %i.at)
          to label %bb.fd unwind label %bb.fg

bb.fd:                                            ; preds = %bb.fc
  %i.aba = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.fe unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749.thread

bb.fe:                                            ; preds = %bb.fd
  %i.abb = getelementptr inbounds nuw i8, ptr %10, i64 8
  invoke void @_ZN6duckdb22SerializationExceptionC2IJRPKcEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aba, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.abb)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  invoke void @__cxa_throw(ptr nonnull %i.aba, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.fz unwind label %bb.fh

bb.fg:                                            ; preds = %bb.fc, %._crit_edge1607
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749.thread: ; preds = %bb.fd
  %i.abd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fe
  %.0 = phi i1 [ false, %bb.ff ], [ true, %bb.fe ] ; 2 uses
  %i.abe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abf = load ptr, ptr %11, align 8, !tbaa !73  ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.abh = icmp eq ptr %i.abf, %i.abg
  br i1 %i.abh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i747

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i747: ; preds = %bb.fh
  call void @_ZdlPv(ptr noundef %i.abf) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.0, label %bb.fi, label %bb.fy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.0, label %bb.fi, label %bb.fy

bb.fi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749
  %.pn1234 = phi { ptr, i32 } [ %i.abd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749.thread ], [ %i.abe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749 ], [ %i.abe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i747 ]
  call void @__cxa_free_exception(ptr %i.aba) #22
  br label %bb.fy

._crit_edge.i.i750:                               ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZN14duckdb_parquet8KeyValueC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.abi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.abi, ptr %14, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.abi, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.abj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 3, ptr %i.abj, align 8, !tbaa !72
  %i.abk = getelementptr inbounds nuw i8, ptr %14, i64 19
  store i8 0, ptr %i.abk, align 1, !tbaa !98
  invoke void @_ZN14duckdb_parquet8KeyValue9__set_keyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.fj unwind label %bb.ft

bb.fj:                                            ; preds = %._crit_edge.i.i750
  %i.abl = load ptr, ptr %14, align 8, !tbaa !73  ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.abi
  br i1 %i.abm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i754, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i753

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i753: ; preds = %bb.fj
  call void @_ZdlPv(ptr noundef %i.abl) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i754

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i754: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i753
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.abn = load i64, ptr %i.d, align 8, !tbaa !102 ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.abo, ptr %15, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.abn, ptr %i.a, align 8, !tbaa !102
  %i.abp = icmp ugt i64 %i.abn, 15
  br i1 %i.abp, label %.noexc.i758, label %._crit_edge.i.i757

.noexc.i758:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i754
  %i.abq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc760 unwind label %bb.fu ; 2 uses

.noexc760:                                        ; preds = %.noexc.i758
  store ptr %i.abq, ptr %15, align 8, !tbaa !73
  %i.abr = load i64, ptr %i.a, align 8, !tbaa !102
  store i64 %i.abr, ptr %i.abo, align 8, !tbaa !98
  br label %._crit_edge.i.i757

._crit_edge.i.i757:                               ; preds = %.noexc760, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i754
  %i.abs = phi ptr [ %i.abq, %.noexc760 ], [ %i.abo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i754 ] ; 2 uses
  switch i64 %i.abn, label %bb.fl [
    i64 1, label %bb.fk
    i64 0, label %bb.fm
  ]
end_hunk_0
