Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mswsp?download=true
inline.NumInlined: 128
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_mswsp:bb.a
  %i.mj = load i32, ptr %i.ar, align 4
  %i.mk = icmp ult i32 %i.mi, %i.mj
  br i1 %i.mk, label %.lr.ph.i.i.i, label %parse_CAggregSet.exit.i.i, !llvm.loop !15

parse_CAggregSet.exit.i.i:                        ; preds = %.lr.ph.i.i.i, %parse_CCategSpec.exit.i.i
  %.018.lcssa.i.i.i = phi i32 [ %i.md, %parse_CCategSpec.exit.i.i ], [ %i.mh, %.lr.ph.i.i.i ] ; 4 uses
  %i.ml = load ptr, ptr %i.as, align 8
  call void @proto_item_set_end(ptr noundef %i.ml, ptr noundef %0, i32 noundef %.018.lcssa.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #9
  %i.mm = load i32, ptr @ett_CSortAggregSet, align 4
  %i.mn = call ptr @proto_tree_add_subtree(ptr noundef %i.if, ptr noundef %0, i32 noundef %.018.lcssa.i.i.i, i32 noundef 0, i32 noundef %i.mm, ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.1335) ; 2 uses
  %i.mo = load i32, ptr @hf_mswsp_csortaggregset_count, align 4
  %i.mp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.mn, i32 noundef %i.mo, ptr noundef %0, i32 noundef %.018.lcssa.i.i.i, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.ap) ; 0 uses
  %i.mq = add i32 %.018.lcssa.i.i.i, 4            ; 2 uses
  %i.mr = load i32, ptr %i.ap, align 4
  %.not.i34.i.i = icmp eq i32 %i.mr, 0
  br i1 %.not.i34.i.i, label %parse_CCategorizationSpec.exit.i, label %.lr.ph.i35.i.i

.lr.ph.i35.i.i:                                   ; preds = %parse_CAggregSet.exit.i.i, %.lr.ph.i35.i.i
  %.02.i36.i.i = phi i32 [ %i.nb, %.lr.ph.i35.i.i ], [ 0, %parse_CAggregSet.exit.i.i ] ; 2 uses
  %.0181.i37.i.i = phi i32 [ %i.mz, %.lr.ph.i35.i.i ], [ %i.mq, %parse_CAggregSet.exit.i.i ] ; 3 uses
  %i.ms = load ptr, ptr %i.cm, align 8
  %i.mt = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ms, ptr noundef nonnull @.str.1348, i32 noundef %.02.i36.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #9
  %i.mu = load i32, ptr @ett_CAggregSortKey, align 4
  %i.mv = call ptr @proto_tree_add_subtree(ptr noundef %i.mn, ptr noundef %0, i32 noundef %.0181.i37.i.i, i32 noundef 0, i32 noundef %i.mu, ptr noundef nonnull %i.ao, ptr noundef %i.mt) ; 2 uses
  %i.mw = load i32, ptr @hf_mswsp_caggregsortkey_order, align 4
  %i.mx = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.mv, i32 noundef %i.mw, ptr noundef %0, i32 noundef %.0181.i37.i.i, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.an) ; 0 uses
  %i.my = add i32 %.0181.i37.i.i, 4
  %i.mz = call fastcc i32 @parse_CAggregSpec(ptr noundef %0, i32 noundef %i.my, ptr noundef %i.mv, ptr noundef %i.fr, ptr noundef nonnull @.str.1349) ; 3 uses
  %i.na = load ptr, ptr %i.ao, align 8
  call void @proto_item_set_end(ptr noundef %i.na, ptr noundef %0, i32 noundef %i.mz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #9
  %i.nb = add nuw i32 %.02.i36.i.i, 1             ; 2 uses
  %i.nc = load i32, ptr %i.ap, align 4
  %i.nd = icmp ult i32 %i.nb, %i.nc
  br i1 %i.nd, label %.lr.ph.i35.i.i, label %parse_CCategorizationSpec.exit.i, !llvm.loop !16

parse_CCategorizationSpec.exit.i:                 ; preds = %.lr.ph.i35.i.i, %parse_CAggregSet.exit.i.i
  %.018.lcssa.i38.i.i = phi i32 [ %i.mq, %parse_CAggregSet.exit.i.i ], [ %i.mz, %.lr.ph.i35.i.i ] ; 2 uses
  %i.ne = load ptr, ptr %i.aq, align 8
  call void @proto_item_set_end(ptr noundef %i.ne, ptr noundef %0, i32 noundef %.018.lcssa.i38.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #9
  %i.nf = call fastcc i32 @parse_CInGroupSortAggregSets(ptr noundef %0, ptr noundef %1, i32 noundef %.018.lcssa.i38.i.i, ptr noundef %i.if, ptr noundef %i.fr, ptr noundef nonnull @.str.1336) ; 2 uses
  %i.ng = load i32, ptr @hf_mswsp_categorizationspec_cmaxres, align 4
  %i.nh = call ptr @proto_tree_add_item(ptr noundef %i.if, i32 noundef %i.ng, ptr noundef %0, i32 noundef %i.nf, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ni = add i32 %i.nf, 4                        ; 3 uses
  %i.nj = load ptr, ptr %i.bd, align 8
  call void @proto_item_set_end(ptr noundef %i.nj, ptr noundef %0, i32 noundef %i.ni)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #9
  %i.nk = add nuw i32 %.05.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.nk, %i.hy
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !17

.loopexit.i:                                      ; preds = %parse_CCategorizationSpec.exit.i, %parse_padding.exit123.i, %bb.y
  %.4.i = phi i32 [ %i.hr, %bb.y ], [ %i.ib, %parse_padding.exit123.i ], [ %i.ni, %parse_CCategorizationSpec.exit.i ] ; 4 uses
  %i.nl = srem i32 %.4.i, 4                       ; 2 uses
  %.not.i126.i = icmp eq i32 %i.nl, 0
  br i1 %.not.i126.i, label %parse_padding.exit128.i, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i
  %i.nm = sub nsw i32 4, %i.nl                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #9
  %i.nn = load i32, ptr @ett_mswsp_msg_padding, align 4
  %i.no = call ptr @proto_tree_add_subtree(ptr noundef %i.fn, ptr noundef %0, i32 noundef %.4.i, i32 noundef %i.nm, i32 noundef %i.nn, ptr noundef nonnull %i.am, ptr noundef nonnull @.str.1252) ; 0 uses
  %i.np = load ptr, ptr %i.am, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.np, ptr noundef nonnull @.str.1166, i32 noundef %i.nm)
  %i.nq = add i32 %i.nm, %.4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #9
  br label %parse_padding.exit128.i

parse_padding.exit128.i:                          ; preds = %bb.ae, %.loopexit.i
  %.0.i127.i = phi i32 [ %i.nq, %bb.ae ], [ %.4.i, %.loopexit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #9
  %i.nr = load i32, ptr @ett_CRowsetProperties, align 4
  %i.ns = call ptr @proto_tree_add_subtree(ptr noundef %i.fn, ptr noundef %0, i32 noundef %.0.i127.i, i32 noundef 0, i32 noundef %i.nr, ptr noundef nonnull %i.al, ptr noundef nonnull @.str.1253) ; 5 uses
  %i.nt = load i32, ptr @hf_mswsp_bool_options, align 4
  %i.nu = load i32, ptr @ett_mswsp_bool_options, align 4
  %i.nv = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.ns, ptr noundef %0, i32 noundef %.0.i127.i, i32 noundef %i.nt, i32 noundef %i.nu, ptr noundef nonnull @mswsp_bool_options, i32 noundef -2147483648, i32 noundef 1) ; 0 uses
  %i.nw = add i32 %.0.i127.i, 4
  %i.nx = load i32, ptr @hf_mswsp_crowsetprops_ulmaxopenrows, align 4
  %i.ny = call ptr @proto_tree_add_item(ptr noundef %i.ns, i32 noundef %i.nx, ptr noundef %0, i32 noundef %i.nw, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.nz = add i32 %.0.i127.i, 8
  %i.oa = load i32, ptr @hf_mswsp_crowsetprops_ulmemusage, align 4
  %i.ob = call ptr @proto_tree_add_item(ptr noundef %i.ns, i32 noundef %i.oa, ptr noundef %0, i32 noundef %i.nz, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.oc = add i32 %.0.i127.i, 12
  %i.od = load i32, ptr @hf_mswsp_crowsetprops_cmaxresults, align 4
  %i.oe = call ptr @proto_tree_add_item(ptr noundef %i.ns, i32 noundef %i.od, ptr noundef %0, i32 noundef %i.oc, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.of = add i32 %.0.i127.i, 16
  %i.og = load i32, ptr @hf_mswsp_crowsetprops_ccmdtimeout, align 4
  %i.oh = call ptr @proto_tree_add_item(ptr noundef %i.ns, i32 noundef %i.og, ptr noundef %0, i32 noundef %i.of, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.oi = add i32 %.0.i127.i, 20                  ; 3 uses
  %i.oj = load ptr, ptr %i.al, align 8
  call void @proto_item_set_end(ptr noundef %i.oj, ptr noundef %0, i32 noundef %i.oi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #9
  %i.ok = load i32, ptr @ett_CPidMapper, align 4
  %i.ol = call ptr @proto_tree_add_subtree(ptr noundef %i.fn, ptr noundef %0, i32 noundef %i.oi, i32 noundef 0, i32 noundef %i.ok, ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.1254) ; 2 uses
  %i.om = load i32, ptr @hf_mswsp_cpidmapper_count, align 4
  %i.on = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ol, i32 noundef %i.om, ptr noundef %0, i32 noundef %i.oi, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.ak) ; 0 uses
  %i.oo = add i32 %.0.i127.i, 24                  ; 4 uses
  %i.op = srem i32 %i.oo, 8                       ; 2 uses
  %.not.i.i129.i = icmp eq i32 %i.op, 0
  br i1 %.not.i.i129.i, label %parse_padding.exit.i130.i, label %bb.af

bb.af:                                            ; preds = %parse_padding.exit128.i
  %i.oq = sub nsw i32 8, %i.op                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #9
  %i.or = load i32, ptr @ett_mswsp_msg_padding, align 4
  %i.os = call ptr @proto_tree_add_subtree(ptr noundef %i.fr, ptr noundef %0, i32 noundef %i.oo, i32 noundef %i.oq, i32 noundef %i.or, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.1350) ; 0 uses
  %i.ot = load ptr, ptr %i.ai, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ot, ptr noundef nonnull @.str.1166, i32 noundef %i.oq)
  %i.ou = add i32 %i.oq, %i.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #9
  br label %parse_padding.exit.i130.i

parse_padding.exit.i130.i:                        ; preds = %bb.af, %parse_padding.exit128.i
  %.0.i.i131.i = phi i32 [ %i.ou, %bb.af ], [ %i.oo, %parse_padding.exit128.i ] ; 2 uses
  %i.ov = load i32, ptr %i.ak, align 4
  %.not.i132.i = icmp eq i32 %i.ov, 0
  br i1 %.not.i132.i, label %parse_CPidMapper.exit.i, label %.lr.ph.i133.i

.lr.ph.i133.i:                                    ; preds = %parse_padding.exit.i130.i, %parse_padding.exit30.i.i
  %.02.i134.i = phi i32 [ %i.ph, %parse_padding.exit30.i.i ], [ 0, %parse_padding.exit.i130.i ] ; 3 uses
  %.0271.i135.i = phi i32 [ %i.pg, %parse_padding.exit30.i.i ], [ %.0.i.i131.i, %parse_padding.exit.i130.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 noundef 0, i64 noundef 32, i1 noundef false) #9
  %i.ow = load ptr, ptr %i.cm, align 8
  %i.ox = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ow, ptr noundef nonnull @.str.1351, i32 noundef %.02.i134.i)
  %i.oy = srem i32 %.0271.i135.i, 4               ; 2 uses
  %.not.i28.i.i = icmp eq i32 %i.oy, 0
  br i1 %.not.i28.i.i, label %parse_padding.exit30.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i133.i
  %i.oz = sub nsw i32 4, %i.oy                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #9
  %i.pa = load i32, ptr @ett_mswsp_msg_padding, align 4
  %i.pb = call ptr @proto_tree_add_subtree(ptr noundef %i.fr, ptr noundef %0, i32 noundef %.0271.i135.i, i32 noundef %i.oz, i32 noundef %i.pa, ptr noundef nonnull %i.ah, ptr noundef %i.ox) ; 0 uses
  %i.pc = load ptr, ptr %i.ah, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.pc, ptr noundef nonnull @.str.1166, i32 noundef %i.oz)
  %i.pd = add i32 %i.oz, %.0271.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #9
  br label %parse_padding.exit30.i.i

parse_padding.exit30.i.i:                         ; preds = %bb.ag, %.lr.ph.i133.i
  %.0.i29.i.i = phi i32 [ %i.pd, %bb.ag ], [ %.0271.i135.i, %.lr.ph.i133.i ]
  %i.pe = load ptr, ptr %i.cm, align 8
  %i.pf = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.pe, ptr noundef nonnull @.str.1352, i32 noundef %.02.i134.i)
  %i.pg = call fastcc i32 @parse_CFullPropSpec(ptr noundef %0, ptr noundef readonly %1, i32 noundef %.0.i29.i.i, ptr noundef %i.ol, ptr noundef %i.fr, ptr noundef nonnull %10, ptr noundef %i.pf) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.ph = add nuw i32 %.02.i134.i, 1              ; 2 uses
  %i.pi = load i32, ptr %i.ak, align 4
  %i.pj = icmp ult i32 %i.ph, %i.pi
  br i1 %i.pj, label %.lr.ph.i133.i, label %parse_CPidMapper.exit.i, !llvm.loop !18

parse_CPidMapper.exit.i:                          ; preds = %parse_padding.exit30.i.i, %parse_padding.exit.i130.i
  %.027.lcssa.i.i = phi i32 [ %.0.i.i131.i, %parse_padding.exit.i130.i ], [ %i.pg, %parse_padding.exit30.i.i ] ; 4 uses
  %i.pk = load ptr, ptr %i.aj, align 8
  call void @proto_item_set_end(ptr noundef %i.pk, ptr noundef %0, i32 noundef %.027.lcssa.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #9
  %i.pl = load i32, ptr @ett_CColumnGroupArray, align 4
  %i.pm = call ptr @proto_tree_add_subtree(ptr noundef %i.fn, ptr noundef %0, i32 noundef %.027.lcssa.i.i, i32 noundef 0, i32 noundef %i.pl, ptr noundef nonnull %i.af, ptr noundef nonnull @.str.1255) ; 2 uses
  %i.pn = load i32, ptr @hf_mswsp_ccolumngrouparray_count, align 4
  %i.po = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.pm, i32 noundef %i.pn, ptr noundef %0, i32 noundef %.027.lcssa.i.i, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.ag) ; 0 uses
  %i.pp = add i32 %.027.lcssa.i.i, 4              ; 2 uses
  %i.pq = load i32, ptr %i.ag, align 4
  %.not.i136.i = icmp eq i32 %i.pq, 0
  br i1 %.not.i136.i, label %parse_CColumnGroupArray.exit.i, label %.lr.ph.i137.i

.lr.ph.i137.i:                                    ; preds = %parse_CPidMapper.exit.i, %parse_CColumnGroup.exit.i.i
  %.02.i138.i = phi i32 [ %i.qw, %parse_CColumnGroup.exit.i.i ], [ 0, %parse_CPidMapper.exit.i ] ; 3 uses
  %.0231.i.i = phi i32 [ %.0.lcssa.i.i.i, %parse_CColumnGroup.exit.i.i ], [ %i.pp, %parse_CPidMapper.exit.i ] ; 4 uses
  %i.pr = load ptr, ptr %i.cm, align 8
  %i.ps = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.pr, ptr noundef nonnull @.str.1353, i32 noundef %.02.i138.i)
  %i.pt = srem i32 %.0231.i.i, 4                  ; 2 uses
  %.not.i.i139.i = icmp eq i32 %i.pt, 0
  br i1 %.not.i.i139.i, label %parse_padding.exit.i140.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i137.i
  %i.pu = sub nsw i32 4, %i.pt                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #9
  %i.pv = load i32, ptr @ett_mswsp_msg_padding, align 4
  %i.pw = call ptr @proto_tree_add_subtree(ptr noundef %i.fr, ptr noundef %0, i32 noundef %.0231.i.i, i32 noundef %i.pu, i32 noundef %i.pv, ptr noundef nonnull %i.ae, ptr noundef %i.ps) ; 0 uses
  %i.px = load ptr, ptr %i.ae, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.px, ptr noundef nonnull @.str.1166, i32 noundef %i.pu)
  %i.py = add i32 %i.pu, %.0231.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #9
  br label %parse_padding.exit.i140.i

parse_padding.exit.i140.i:                        ; preds = %bb.ah, %.lr.ph.i137.i
  %.0.i.i141.i = phi i32 [ %i.py, %bb.ah ], [ %.0231.i.i, %.lr.ph.i137.i ] ; 5 uses
  %i.pz = load ptr, ptr %i.cm, align 8
  %i.qa = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.pz, ptr noundef nonnull @.str.1353, i32 noundef %.02.i138.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #9
  %i.qb = load i32, ptr @ett_CColumnGroup, align 4
  %i.qc = call ptr @proto_tree_add_subtree(ptr noundef %i.pm, ptr noundef %0, i32 noundef %.0.i.i141.i, i32 noundef 0, i32 noundef %i.qb, ptr noundef nonnull %i.ab, ptr noundef %i.qa) ; 3 uses
  %i.qd = load i32, ptr @hf_mswsp_ccolumngroup_count, align 4
  %i.qe = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.qc, i32 noundef %i.qd, ptr noundef %0, i32 noundef %.0.i.i141.i, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.ac) ; 0 uses
  %i.qf = add i32 %.0.i.i141.i, 4
  %i.qg = load i32, ptr @hf_mswsp_ccolumngroup_grouppid, align 4
  %i.qh = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.qc, i32 noundef %i.qg, ptr noundef %0, i32 noundef %i.qf, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.ad) ; 2 uses
  %i.qi = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.qj = and i32 %i.qi, -65536
  %i.qk = icmp eq i32 %i.qj, 2147418112
  br i1 %i.qk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %parse_padding.exit.i140.i
  %i.ql = and i32 %i.qi, 65535
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.qh, ptr noundef nonnull @.str.1354, i32 noundef %i.ql)
  br label %bb.ak

bb.aj:                                            ; preds = %parse_padding.exit.i140.i
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.qh, ptr noundef nonnull @.str.1355)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.01.i.i.i = add i32 %.0.i.i141.i, 8            ; 2 uses
  %i.qm = load i32, ptr %i.ac, align 4
  %.not.i24.i.i = icmp eq i32 %i.qm, 0
  br i1 %.not.i24.i.i, label %parse_CColumnGroup.exit.i.i, label %.lr.ph.i.i142.i

.lr.ph.i.i142.i:                                  ; preds = %bb.ak, %.lr.ph.i.i142.i
  %.04.i.i.i = phi i32 [ %.0.i25.i.i, %.lr.ph.i.i142.i ], [ %.01.i.i.i, %bb.ak ] ; 4 uses
  %.0.in3.i.i.i = phi i32 [ %.04.i.i.i, %.lr.ph.i.i142.i ], [ %.0.i.i141.i, %bb.ak ]
  %.0302.i.i.i = phi i32 [ %i.qs, %.lr.ph.i.i142.i ], [ 0, %bb.ak ] ; 2 uses
  %i.qn = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %.04.i.i.i) ; 2 uses
  %i.qo = add i32 %.0.in3.i.i.i, 12
  %i.qp = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.qo)
  %i.qq = load i32, ptr @hf_mswsp_ccolumngroup_pid, align 4
  %i.qr = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.qc, i32 noundef %i.qq, ptr noundef %0, i32 noundef %.04.i.i.i, i32 noundef 8, i32 noundef %i.qn, ptr noundef nonnull @.str.1356, i32 noundef %.0302.i.i.i, i32 noundef %i.qn, i32 noundef %i.qp) ; 0 uses
  %i.qs = add nuw i32 %.0302.i.i.i, 1             ; 2 uses
  %.0.i25.i.i = add i32 %.04.i.i.i, 8             ; 2 uses
  %i.qt = load i32, ptr %i.ac, align 4
  %i.qu = icmp ult i32 %i.qs, %i.qt
  br i1 %i.qu, label %.lr.ph.i.i142.i, label %parse_CColumnGroup.exit.i.i, !llvm.loop !19

parse_CColumnGroup.exit.i.i:                      ; preds = %.lr.ph.i.i142.i, %bb.ak
  %.0.lcssa.i.i.i = phi i32 [ %.01.i.i.i, %bb.ak ], [ %.0.i25.i.i, %.lr.ph.i.i142.i ] ; 3 uses
  %i.qv = load ptr, ptr %i.ab, align 8
  call void @proto_item_set_end(ptr noundef %i.qv, ptr noundef %0, i32 noundef %.0.lcssa.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #9
  %i.qw = add nuw i32 %.02.i138.i, 1              ; 2 uses
  %i.qx = load i32, ptr %i.ag, align 4
  %i.qy = icmp ult i32 %i.qw, %i.qx
  br i1 %i.qy, label %.lr.ph.i137.i, label %parse_CColumnGroupArray.exit.i, !llvm.loop !20

parse_CColumnGroupArray.exit.i:                   ; preds = %parse_CColumnGroup.exit.i.i, %parse_CPidMapper.exit.i
  %.023.lcssa.i.i = phi i32 [ %i.pp, %parse_CPidMapper.exit.i ], [ %.0.lcssa.i.i.i, %parse_CColumnGroup.exit.i.i ]
  %i.qz = load ptr, ptr %i.af, align 8
  call void @proto_item_set_end(ptr noundef %i.qz, ptr noundef %0, i32 noundef %.023.lcssa.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #9
  br label %dissect_CPMCreateQuery.exit

bb.al:                                            ; preds = %bb.o
  %i.ra = load i32, ptr @hf_mswsp_msg_cpmcreatequery_trueseq, align 4
  %i.rb = call ptr @proto_tree_add_item(ptr noundef %i.fn, i32 noundef %i.ra, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.rc = load i32, ptr @hf_mswsp_msg_cpmcreatequery_workid, align 4
  %i.rd = call ptr @proto_tree_add_item(ptr noundef %i.fn, i32 noundef %i.rc, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.re = load i32, ptr @hf_mswsp_msg_cpmcreatequery_cursors, align 4
  %i.rf = call ptr @proto_tree_add_item(ptr noundef %i.fn, i32 noundef %i.re, ptr noundef %0, i32 noundef 24, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %dissect_CPMCreateQuery.exit

dissect_CPMCreateQuery.exit:                      ; preds = %parse_CColumnGroupArray.exit.i, %bb.al
  %i.rg = call i32 @tvb_reported_length(ptr noundef %0) ; 0 uses
  br label %dissect_CPMSetBindings.exit

bb.am:                                            ; preds = %bb.d
  %.val133 = load ptr, ptr %i.bx, align 8
  call void @col_append_str(ptr noundef %.val133, i32 noundef 25, ptr noundef nonnull @.str.1357)
  %i.rh = call i32 @tvb_reported_length(ptr noundef %0) ; 0 uses
  br label %dissect_CPMSetBindings.exit

bb.an:                                            ; preds = %bb.d
  %i.ri = load i32, ptr @hf_mswsp_msg, align 4
  %not..i = xor i1 %3, true
  %i.rj = sext i1 %not..i to i32
  %i.rk = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ri, ptr noundef %0, i32 noundef 16, i32 noundef %i.rj, i32 noundef 0) ; 2 uses
  %i.rl = load i32, ptr @ett_mswsp_msg, align 4
  %i.rm = call ptr @proto_item_add_subtree(ptr noundef %i.rk, i32 noundef %i.rl) ; 20 uses
  %i.rn = select i1 %3, ptr @.str.1153, ptr @.str.1154
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.rk, ptr noundef nonnull @.str.1358, ptr noundef nonnull %i.rn)
  %i.ro = load ptr, ptr %i.bx, align 8
  call void @col_append_str(ptr noundef %i.ro, i32 noundef 25, ptr noundef nonnull @.str.1359)
  %i.rp = call ptr @find_or_create_conversation(ptr noundef %1) ; 3 uses
  %.not.i.i146 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i146, label %get_create_converstation_data.exit.i148, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rq = load i32, ptr @proto_mswsp, align 4
  %i.rr = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.rp, i32 noundef %i.rq) ; 2 uses
  %.not12.i.i147 = icmp eq ptr %i.rr, null
  br i1 %.not12.i.i147, label %bb.ap, label %get_create_converstation_data.exit.i148

bb.ap:                                            ; preds = %bb.ao
  %i.rs = call ptr @wmem_file_scope()
  %i.rt = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.rs, i64 noundef 8) #10 ; 3 uses
  store ptr null, ptr %i.rt, align 8
  %i.ru = load i32, ptr @proto_mswsp, align 4
  call void @conversation_add_proto_data(ptr noundef nonnull %i.rp, i32 noundef %i.ru, ptr noundef %i.rt)
  br label %get_create_converstation_data.exit.i148

get_create_converstation_data.exit.i148:          ; preds = %bb.ap, %bb.ao, %bb.an
  %.09.i.i = phi ptr [ null, %bb.an ], [ %i.rr, %bb.ao ], [ %i.rt, %bb.ap ] ; 5 uses
  br i1 %3, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %get_create_converstation_data.exit.i148
  %i.rv = load i32, ptr @hf_mswsp_msg_cpmgetrows_hcursor, align 4
  %i.rw = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.rv, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.rx = load i32, ptr @hf_mswsp_msg_cpmgetrows_rowstotransfer, align 4
  %i.ry = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.rx, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.rz = load i32, ptr @hf_mswsp_msg_cpmgetrows_rowwidth, align 4
  %i.sa = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.rz, ptr noundef %0, i32 noundef 24, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.sb = load i32, ptr @hf_mswsp_msg_cpmgetrows_cbseek, align 4
  %i.sc = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.sb, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.sd = call fastcc ptr @find_or_create_message_data(ptr noundef %.09.i.i, ptr noundef %1, i16 noundef zeroext 204, i1 noundef zeroext true, ptr noundef readonly %4) ; 3 uses
  %.not.i155 = icmp eq ptr %i.sd, null
  br i1 %.not.i155, label %.critedge.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.se = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 32)
  %i.sf = getelementptr i8, ptr %i.sd, i64 20
  store i32 %i.se, ptr %i.sf, align 4
  %i.sg = load i32, ptr @hf_mswsp_msg_cpmgetrows_cbreserved, align 4
  %i.sh = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.sg, ptr noundef %0, i32 noundef 32, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.si = load i32, ptr @hf_mswsp_msg_cpmgetrows_cbreadbuffer, align 4
  %i.sj = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.si, ptr noundef %0, i32 noundef 36, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.sk = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 40)
  %i.sl = getelementptr i8, ptr %i.sd, i64 16
  store i32 %i.sk, ptr %i.sl, align 8
  br label %bb.as

.critedge.i:                                      ; preds = %bb.aq
  %i.sm = load i32, ptr @hf_mswsp_msg_cpmgetrows_cbreserved, align 4
  %i.sn = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.sm, ptr noundef %0, i32 noundef 32, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.so = load i32, ptr @hf_mswsp_msg_cpmgetrows_cbreadbuffer, align 4
  %i.sp = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.so, ptr noundef %0, i32 noundef 36, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %.critedge.i, %bb.ar
  %i.sq = load i32, ptr @hf_mswsp_msg_cpmgetrows_ulclientbase, align 4
  %i.sr = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.sq, ptr noundef %0, i32 noundef 40, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ss = load i32, ptr @hf_mswsp_msg_cpmgetrows_fbwdfetch, align 4
  %i.st = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.ss, ptr noundef %0, i32 noundef 44, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.su = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 48)
  %i.sv = load i32, ptr @hf_mswsp_msg_cpmgetrows_etype, align 4
  %i.sw = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.sv, ptr noundef %0, i32 noundef 48, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.sx = load i32, ptr @hf_mswsp_msg_cpmgetrows_chapt, align 4
  %i.sy = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.sx, ptr noundef %0, i32 noundef 52, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.sz = load i32, ptr @ett_SeekDescription, align 4
  %i.ta = call ptr @proto_tree_add_subtree(ptr noundef %i.rm, ptr noundef %0, i32 noundef 56, i32 noundef 0, i32 noundef %i.sz, ptr noundef null, ptr noundef nonnull @.str.1360) ; 4 uses
  switch i32 %i.su, label %dissect_CPMGetRows.exit [
    i32 4, label %bb.aw
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #9
  %i.tb = load i32, ptr @ett_CRowsSeekNext, align 4
  %i.tc = call ptr @proto_tree_add_subtree(ptr noundef %i.ta, ptr noundef %0, i32 noundef 56, i32 noundef 0, i32 noundef %i.tb, ptr noundef nonnull %i.z, ptr noundef nonnull @.str.1361)
  %i.td = load i32, ptr @hf_mswsp_crowseeknext_cskip, align 4
  %i.te = call ptr @proto_tree_add_item(ptr noundef %i.tc, i32 noundef %i.td, ptr noundef %0, i32 noundef 56, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.tf = load ptr, ptr %i.z, align 8
  call void @proto_item_set_end(ptr noundef %i.tf, ptr noundef %0, i32 noundef 60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #9
  br label %dissect_CPMGetRows.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #9
  %i.tg = load i32, ptr @ett_CRowsSeekAt, align 4
  %i.th = call ptr @proto_tree_add_subtree(ptr noundef %i.ta, ptr noundef %0, i32 noundef 56, i32 noundef 0, i32 noundef %i.tg, ptr noundef nonnull %i.y, ptr noundef nonnull @.str.1362) ; 3 uses
  %i.ti = load i32, ptr @hf_mswsp_crowseekat_bmkoffset, align 4
  %i.tj = call ptr @proto_tree_add_item(ptr noundef %i.th, i32 noundef %i.ti, ptr noundef %0, i32 noundef 56, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.tk = load i32, ptr @hf_mswsp_crowseekat_skip, align 4
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %i.th, i32 noundef %i.tk, ptr noundef %0, i32 noundef 60, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.tm = load i32, ptr @hf_mswsp_crowseekat_hregion, align 4
  %i.tn = call ptr @proto_tree_add_item(ptr noundef %i.th, i32 noundef %i.tm, ptr noundef %0, i32 noundef 64, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.to = load ptr, ptr %i.y, align 8
  call void @proto_item_set_end(ptr noundef %i.to, ptr noundef %0, i32 noundef 68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #9
  br label %dissect_CPMGetRows.exit

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #9
  %i.tp = load i32, ptr @ett_CRowsSeekAtRatio, align 4
  %i.tq = call ptr @proto_tree_add_subtree(ptr noundef %i.ta, ptr noundef %0, i32 noundef 56, i32 noundef 0, i32 noundef %i.tp, ptr noundef nonnull %i.x, ptr noundef nonnull @.str.1363) ; 3 uses
  %i.tr = load i32, ptr @hf_mswsp_crowseekatratio_ulnumerator, align 4
  %i.ts = call ptr @proto_tree_add_item(ptr noundef %i.tq, i32 noundef %i.tr, ptr noundef %0, i32 noundef 56, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.tt = load i32, ptr @hf_mswsp_crowseekatratio_uldenominator, align 4
  %i.tu = call ptr @proto_tree_add_item(ptr noundef %i.tq, i32 noundef %i.tt, ptr noundef %0, i32 noundef 60, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.tv = load i32, ptr @hf_mswsp_crowseekatratio_hregion, align 4
  %i.tw = call ptr @proto_tree_add_item(ptr noundef %i.tq, i32 noundef %i.tv, ptr noundef %0, i32 noundef 64, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.tx = load ptr, ptr %i.x, align 8
  call void @proto_item_set_end(ptr noundef %i.tx, ptr noundef %0, i32 noundef 68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #9
  br label %dissect_CPMGetRows.exit

bb.aw:                                            ; preds = %bb.as
  call fastcc void @parse_CRowSeekByBookmark(ptr noundef %0, i32 noundef 56, ptr noundef %i.ta)
  br label %dissect_CPMGetRows.exit

bb.ax:                                            ; preds = %get_create_converstation_data.exit.i148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #9
  %i.ty = load i32, ptr @ett_mswsp_pad, align 4
  %i.tz = call ptr @proto_tree_add_subtree(ptr noundef %i.rm, ptr noundef %0, i32 noundef 16, i32 noundef 0, i32 noundef %i.ty, ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #9
  store i32 0, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #9
  store i32 0, ptr %i.w, align 4
  %i.ua = call ptr @wmem_file_scope()
  %i.ub = load i32, ptr @proto_mswsp, align 4
  %i.uc = call ptr @p_get_proto_data(ptr noundef %i.ua, ptr noundef %1, i32 noundef %i.ub, i32 noundef 0)
  %i.ud = call fastcc zeroext i1 @get_fid_and_frame(ptr noundef %1, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef readonly %4) ; 0 uses
  %.01822.i.i.i = load ptr, ptr %.09.i.i, align 8 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.01822.i.i.i, null
  br i1 %.not23.i.i.i, label %find_binding_msg_data.exit.i, label %.lr.ph.i.i.i149

.lr.ph.i.i.i149:                                  ; preds = %bb.ax
  %i.ue = load i32, ptr %i.w, align 4
  %i.uf = load i32, ptr %i.v, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bd, %.lr.ph.i.i.i149
  %.01824.i.i.i = phi ptr [ %.01822.i.i.i, %.lr.ph.i.i.i149 ], [ %.018.i.i.i, %bb.bd ] ; 2 uses
  %i.ug = load ptr, ptr %.01824.i.i.i, align 8    ; 6 uses
  %i.uh = getelementptr i8, ptr %i.ug, i64 4
  %i.ui = load i32, ptr %i.uh, align 4
end_hunk_0
