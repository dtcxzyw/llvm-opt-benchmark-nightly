inline.NumInlined: 32
inline.NumDeleted: 24
begin_hunk_0_@dissect_mka:bb.a
mka_add_ckn_info.exit.thread.i:                   ; preds = %ckn_info_lookup.exit.i.i, %ckn_info_lookup.exit.thread.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  br label %dissect_basic_paramset.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  %i.co = load ptr, ptr %i.bd, align 8
  %i.cp = load i32, ptr @proto_mka, align 4
  call void @p_add_proto_data(ptr noundef %i.co, ptr noundef %1, i32 noundef %i.cp, i32 noundef 0, ptr noundef nonnull %i.ce)
  br label %dissect_basic_paramset.exit

dissect_basic_paramset.exit:                      ; preds = %mka_add_ckn_info.exit.thread.i, %bb.l
  %i.cq = sub nsw i32 0, %i.aa
  %i.cr = and i32 %i.cq, 3                        ; 3 uses
  %.not13.i = icmp eq i32 %i.cr, 0
  br i1 %.not13.i, label %finalize_parameter_set.exit, label %bb.m

bb.m:                                             ; preds = %dissect_basic_paramset.exit
  %i.cs = load i32, ptr @hf_mka_padding, align 4
  %i.ct = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.cr, i32 noundef 0) ; 0 uses
  %i.cu = add nuw nsw i32 %i.ab, %i.cr
  br label %finalize_parameter_set.exit

finalize_parameter_set.exit:                      ; preds = %dissect_basic_paramset.exit, %bb.m
  %.1.i = phi i32 [ %i.ab, %dissect_basic_paramset.exit ], [ %i.cu, %bb.m ] ; 3 uses
  %i.cv = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.1.i)
  %i.cw = icmp ugt i32 %i.cv, 16
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %finalize_parameter_set.exit
  %i.cx = getelementptr i8, ptr %1, i64 20        ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cz = getelementptr i8, ptr %1, i64 80        ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.de = icmp eq i8 %i.w, 3
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %finalize_parameter_set.exit115
  %.0159 = phi i32 [ %.1.i, %.lr.ph ], [ %.1.i114, %finalize_parameter_set.exit115 ] ; 50 uses
  %.084158 = phi i16 [ 16, %.lr.ph ], [ %.1137, %finalize_parameter_set.exit115 ] ; 3 uses
  %i.df = load ptr, ptr %i.n, align 8
  %i.dg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0159)
  %i.dh = zext i8 %i.dg to i32
  %i.di = call ptr @val_to_str_const(i32 noundef %i.dh, ptr noundef nonnull @param_set_type_vals, ptr noundef nonnull @.str.187)
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.df, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef %i.di)
  %i.dj = add i32 %.0159, 2                       ; 14 uses
  %i.dk = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.dj)
  %i.dl = and i16 %i.dk, 4095                     ; 21 uses
  %i.dm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0159) ; 3 uses
  switch i8 %i.dm, label %bb.di [
    i8 1, label %bb.o
    i8 2, label %bb.am
    i8 3, label %bb.ao
    i8 4, label %bb.be
    i8 5, label %bb.ck
    i8 6, label %bb.cp
    i8 7, label %bb.cq
    i8 8, label %bb.cx
    i8 -1, label %dissect_live_peer_list.exit.thread139
  ]

bb.o:                                             ; preds = %bb.n
  %i.dn = load ptr, ptr %i.bd, align 8
  %i.do = load i32, ptr @proto_mka, align 4
  %i.dp = call ptr @p_get_proto_data(ptr noundef %i.dn, ptr noundef %1, i32 noundef %i.do, i32 noundef 3) ; 3 uses
  %i.dq = load ptr, ptr %i.bd, align 8
  %i.dr = load i32, ptr @proto_mka, align 4
  %i.ds = call ptr @p_get_proto_data(ptr noundef %i.dq, ptr noundef %1, i32 noundef %i.dr, i32 noundef 2) ; 2 uses
  %i.dt = load ptr, ptr @mka_mi_sci_map, align 8
  %i.du = call ptr @wmem_map_lookup(ptr noundef %i.dt, ptr noundef %i.ds) ; 3 uses
  %.not.i86 = icmp eq ptr %i.du, null
  br i1 %.not.i86, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189, i32 noundef 753, ptr noundef nonnull @.str.190) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %.not130.i = icmp eq ptr %i.dp, null
  br i1 %.not130.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr i8, ptr %i.dp, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr i8, ptr %i.dp, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dz = load ptr, ptr %i.bd, align 8
  %i.ea = call ptr @wmem_map_new(ptr noundef %i.dz, ptr noundef nonnull @mka_sci_hash, ptr noundef nonnull @mka_sci_equal) ; 2 uses
  %i.eb = load ptr, ptr %i.bd, align 8
  %i.ec = load i32, ptr @proto_mka, align 4
  call void @p_add_proto_data(ptr noundef %i.eb, ptr noundef %1, i32 noundef %i.ec, i32 noundef 4, ptr noundef %i.ea)
  %i.ed = load ptr, ptr %i.bd, align 8
  %i.ee = call ptr @wmem_array_new(ptr noundef %i.ed, i64 noundef 12) ; 2 uses
  %i.ef = load ptr, ptr %i.bd, align 8
  %i.eg = load i32, ptr @proto_mka, align 4
  call void @p_add_proto_data(ptr noundef %i.ef, ptr noundef %1, i32 noundef %i.eg, i32 noundef 5, ptr noundef %i.ee)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0116.i = phi ptr [ %i.dw, %bb.r ], [ %i.ea, %bb.s ] ; 5 uses
  %.0115.i = phi ptr [ %i.dy, %bb.r ], [ %i.ee, %bb.s ] ; 11 uses
  %i.eh = load i32, ptr @hf_mka_live_peer_list_set, align 4
  %i.ei = zext nneg i16 %i.dl to i32              ; 5 uses
  %i.ej = add nuw nsw i32 %i.ei, 4
  %i.ek = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.eh, ptr noundef %0, i32 noundef %.0159, i32 noundef %i.ej, i32 noundef 0)
  %i.el = load i32, ptr @ett_mka_live_peer_list_set, align 4
  %i.em = call ptr @proto_item_add_subtree(ptr noundef %i.ek, i32 noundef %i.el) ; 10 uses
  %i.en = load i32, ptr @hf_mka_param_set_type, align 4
  %i.eo = call ptr @proto_tree_add_uint(ptr noundef %i.em, i32 noundef %i.en, ptr noundef %0, i32 noundef %.0159, i32 noundef 1, i32 noundef 1) ; 0 uses
  %i.ep = add i32 %.0159, 1                       ; 2 uses
  br i1 %i.de, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.eq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ep) ; 2 uses
  %.not131.i = icmp eq i8 %i.eq, 0
  br i1 %.not131.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.er = load i32, ptr @hf_mka_key_server_ssci, align 4
  %i.es = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.er, ptr noundef %0, i32 noundef %i.ep, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.0117.i = phi i8 [ %i.eq, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ] ; 7 uses
  %.not132.i = icmp ne ptr %.0116.i, null         ; 3 uses
  br i1 %.not132.i, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %.not133.i = icmp eq i8 %.0117.i, 0
  br i1 %.not133.i, label %.thread.i, label %bb.y

.thread.i:                                        ; preds = %bb.x
  %i.et = call ptr @wmem_map_insert(ptr noundef nonnull %.0116.i, ptr noundef nonnull %i.du, ptr noundef nonnull inttoptr (i64 4294967295 to ptr)) ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.eu = zext i8 %.0117.i to i64
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = call ptr @wmem_map_insert(ptr noundef nonnull %.0116.i, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ev) ; 0 uses
  %.not141.i = icmp eq i8 %.0117.i, 1
  br i1 %.not141.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = zext i8 %.0117.i to i32
  %i.ey = load ptr, ptr %i.bd, align 8
  %i.ez = add nsw i32 %i.ex, -1                   ; 2 uses
  %i.fa = mul nuw nsw i32 %i.ez, 12
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = call noalias ptr @wmem_alloc0(ptr noundef %i.ey, i64 noundef %i.fb) #18
  %i.fd = call zeroext i1 @wmem_array_append(ptr noundef %.0115.i, ptr noundef %i.fc, i32 noundef %i.ez) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.thread.i
  %i.fe = call zeroext i1 @wmem_array_append(ptr noundef %.0115.i, ptr noundef %i.ds, i32 noundef 1) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.ff = load i32, ptr @hf_mka_param_body_length, align 4
  %i.fg = call ptr @proto_tree_add_uint(ptr noundef %i.em, i32 noundef %i.ff, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %i.ei) ; 0 uses
  %.0113145.i = add i32 %.0159, 4                 ; 3 uses
  %i.fh = icmp samesign ugt i16 %i.dl, 15
  br i1 %i.fh, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.fi = zext i8 %.0117.i to i32
  %.not140.i = icmp eq i8 %.0117.i, 0
  br i1 %.not132.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.0113150.us.i = phi i32 [ %.0113.us.i, %.lr.ph.split.us.i ], [ %.0113145.i, %.lr.ph.i ]
  %.0113.in148.us.i = phi i32 [ %i.fl, %.lr.ph.split.us.i ], [ %.0159, %.lr.ph.i ] ; 2 uses
  %.0120146.us.i = phi i32 [ %i.fo, %.lr.ph.split.us.i ], [ %i.ei, %.lr.ph.i ] ; 2 uses
  %i.fj = load i32, ptr @hf_mka_peer_mi, align 4
  %i.fk = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.fj, ptr noundef %0, i32 noundef %.0113150.us.i, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.fl = add i32 %.0113.in148.us.i, 16           ; 2 uses
  %i.fm = load i32, ptr @hf_mka_peer_mn, align 4
  %i.fn = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.fm, ptr noundef %0, i32 noundef %i.fl, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fo = add nsw i32 %.0120146.us.i, -16         ; 2 uses
  %.0113.us.i = add i32 %.0113.in148.us.i, 20     ; 2 uses
  %i.fp = icmp samesign ugt i32 %.0120146.us.i, 31
  br i1 %i.fp, label %.lr.ph.split.us.i, label %.loopexit.i, !llvm.loop !6

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ah
  %.0113150.i = phi i32 [ %.0113.i, %bb.ah ], [ %.0113145.i, %.lr.ph.i ] ; 2 uses
  %.0149.i = phi i32 [ %i.gm, %bb.ah ], [ 1, %.lr.ph.i ] ; 3 uses
  %.0113.in148.i = phi i32 [ %i.gi, %bb.ah ], [ %.0159, %.lr.ph.i ] ; 2 uses
  %.1147.i = phi i1 [ %.2.i, %bb.ah ], [ true, %.lr.ph.i ]
  %.0120146.i = phi i32 [ %i.gl, %bb.ah ], [ %i.ei, %.lr.ph.i ] ; 2 uses
  %i.fq = load i32, ptr @hf_mka_peer_mi, align 4
  %i.fr = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.fq, ptr noundef %0, i32 noundef %.0113150.i, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.fs = load ptr, ptr %i.bd, align 8
  %i.ft = call ptr @tvb_memdup(ptr noundef %i.fs, ptr noundef %0, i32 noundef %.0113150.i, i64 noundef 12) ; 3 uses
  %.not138.i = icmp samesign uge i32 %.0149.i, %i.fi
  %i.fu = zext i1 %.not138.i to i32
  %.0118.i = add nuw i32 %.0149.i, %i.fu          ; 4 uses
  %i.fv = load ptr, ptr @mka_mi_sci_map, align 8
  %i.fw = call ptr @wmem_map_lookup(ptr noundef %i.fv, ptr noundef %i.ft) ; 2 uses
  %.not139.i = icmp eq ptr %i.fw, null
  br i1 %.not139.i, label %bb.ac, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.split.i
  %i.fx = zext i32 %.0118.i to i64
  %i.fy = inttoptr i64 %i.fx to ptr
  %.sink.i = select i1 %.not140.i, ptr inttoptr (i64 4294967295 to ptr), ptr %i.fy
  %i.fz = call ptr @wmem_map_insert(ptr noundef nonnull %.0116.i, ptr noundef nonnull %i.fw, ptr noundef nonnull %.sink.i) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i, %.lr.ph.split.i
  %.2.i = phi i1 [ false, %.lr.ph.split.i ], [ %.1147.i, %.sink.split.i ] ; 2 uses
  %i.ga = call i32 @wmem_array_get_count(ptr noundef %.0115.i)
  %i.gb = add i32 %i.ga, 1
  %i.gc = icmp eq i32 %.0118.i, %i.gb
  br i1 %i.gc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gd = call zeroext i1 @wmem_array_append(ptr noundef %.0115.i, ptr noundef %i.ft, i32 noundef 1) ; 0 uses
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ge = call i32 @wmem_array_get_count(ptr noundef %.0115.i)
  %i.gf = icmp ult i32 %.0118.i, %i.ge
  br i1 %i.gf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gg = add i32 %.0118.i, -1
  %i.gh = call ptr @wmem_array_index(ptr noundef %.0115.i, i32 noundef %i.gg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(12) %i.gh, ptr noundef align 1 dereferenceable(12) %i.ft, i64 noundef 12, i1 noundef false) #16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.189, i32 noundef 876) #17
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ad
  %i.gi = add i32 %.0113.in148.i, 16              ; 2 uses
  %i.gj = load i32, ptr @hf_mka_peer_mn, align 4
  %i.gk = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.gj, ptr noundef %0, i32 noundef %i.gi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gl = add nsw i32 %.0120146.i, -16            ; 2 uses
  %i.gm = add nuw nsw i32 %.0149.i, 1
  %.0113.i = add i32 %.0113.in148.i, 20           ; 2 uses
  %i.gn = icmp sgt i32 %.0120146.i, 31
  br i1 %i.gn, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %bb.ah, %bb.ab
  %.0120.lcssa.i = phi i32 [ %i.ei, %bb.ab ], [ %i.gl, %bb.ah ] ; 3 uses
  %.1.lcssa.i = phi i1 [ %.not132.i, %bb.ab ], [ %.2.i, %bb.ah ]
  %.0113.lcssa.i = phi i32 [ %.0113145.i, %bb.ab ], [ %.0113.i, %bb.ah ] ; 3 uses
  %i.go = icmp ne ptr %.0115.i, null
  %or.cond.i = select i1 %i.go, i1 %.1.lcssa.i, i1 false
  %i.gp = icmp eq i8 %.0117.i, 0
  %or.cond3.not.i = and i1 %i.gp, %or.cond.i
  br i1 %or.cond3.not.i, label %bb.ai, label %.loopexit.i

bb.ai:                                            ; preds = %._crit_edge.i
  call void @wmem_array_sort(ptr noundef nonnull %.0115.i, ptr noundef nonnull @sort_mi_by_sci)
  %i.gq = call i32 @wmem_array_get_count(ptr noundef nonnull %.0115.i)
  %.not135155.i = icmp eq i32 %i.gq, 0
  br i1 %.not135155.i, label %.loopexit.i, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %bb.ai, %bb.ak
  %.1119156.i = phi i32 [ %i.gy, %bb.ak ], [ 1, %bb.ai ] ; 3 uses
  %i.gr = add i32 %.1119156.i, -1
  %i.gs = call ptr @wmem_array_index(ptr noundef nonnull %.0115.i, i32 noundef %i.gr)
  %i.gt = load ptr, ptr @mka_mi_sci_map, align 8
  %i.gu = call ptr @wmem_map_lookup(ptr noundef %i.gt, ptr noundef %i.gs) ; 2 uses
  %.not136.i = icmp eq ptr %i.gu, null
  br i1 %.not136.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph158.i
  %i.gv = zext i32 %.1119156.i to i64
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = call ptr @wmem_map_insert(ptr noundef %.0116.i, ptr noundef nonnull %i.gu, ptr noundef %i.gw) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph158.i
  %i.gy = add i32 %.1119156.i, 1                  ; 2 uses
  %i.gz = call i32 @wmem_array_get_count(ptr noundef nonnull %.0115.i)
  %.not135.i = icmp ugt i32 %i.gy, %i.gz
  br i1 %.not135.i, label %.loopexit.i, label %.lr.ph158.i, !llvm.loop !8

.loopexit.i:                                      ; preds = %.lr.ph.split.us.i, %bb.ak, %bb.ai, %._crit_edge.i
  %.0113.lcssa174.i = phi i32 [ %.0113.lcssa.i, %bb.ak ], [ %.0113.lcssa.i, %._crit_edge.i ], [ %.0113.lcssa.i, %bb.ai ], [ %.0113.us.i, %.lr.ph.split.us.i ]
  %.0120.lcssa173.i = phi i32 [ %.0120.lcssa.i, %bb.ak ], [ %.0120.lcssa.i, %._crit_edge.i ], [ %.0120.lcssa.i, %bb.ai ], [ %i.fo, %.lr.ph.split.us.i ] ; 2 uses
  %.not137.i = icmp eq i32 %.0120.lcssa173.i, 0
  br i1 %.not137.i, label %dissect_live_peer_list.exit, label %bb.al

bb.al:                                            ; preds = %.loopexit.i
  %i.ha = call ptr @proto_tree_add_expert(ptr noundef %i.em, ptr noundef %1, ptr noundef nonnull @ei_mka_undecoded, ptr noundef %0, i32 noundef %.0113.lcssa174.i, i32 noundef %.0120.lcssa173.i) ; 0 uses
  br label %dissect_live_peer_list.exit

bb.am:                                            ; preds = %bb.n
  %i.hb = load i32, ptr @hf_mka_potential_peer_list_set, align 4
  %i.hc = zext nneg i16 %i.dl to i32              ; 6 uses
  %i.hd = add nuw nsw i32 %i.hc, 4
  %i.he = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.hb, ptr noundef %0, i32 noundef %.0159, i32 noundef %i.hd, i32 noundef 0)
  %i.hf = load i32, ptr @ett_mka_potential_peer_list_set, align 4
  %i.hg = call ptr @proto_item_add_subtree(ptr noundef %i.he, i32 noundef %i.hf) ; 7 uses
  %i.hh = load i32, ptr @hf_mka_param_set_type, align 4
  %i.hi = call ptr @proto_tree_add_uint(ptr noundef %i.hg, i32 noundef %i.hh, ptr noundef %0, i32 noundef %.0159, i32 noundef 1, i32 noundef 2) ; 0 uses
  %i.hj = load i32, ptr @hf_mka_param_body_length, align 4
  %i.hk = call ptr @proto_tree_add_uint(ptr noundef %i.hg, i32 noundef %i.hj, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %i.hc) ; 0 uses
  %.03032.i = add i32 %.0159, 4                   ; 4 uses
  %i.hl = icmp samesign ugt i16 %i.dl, 15
  br i1 %i.hl, label %.lr.ph.i89, label %._crit_edge.i87

.lr.ph.i89:                                       ; preds = %bb.am, %.lr.ph.i89
  %.03035.i = phi i32 [ %.030.i, %.lr.ph.i89 ], [ %.03032.i, %bb.am ]
  %.034.i = phi i32 [ %i.hr, %.lr.ph.i89 ], [ %i.hc, %bb.am ] ; 2 uses
  %.030.in33.i = phi i32 [ %i.ho, %.lr.ph.i89 ], [ %.0159, %bb.am ] ; 2 uses
  %i.hm = load i32, ptr @hf_mka_peer_mi, align 4
  %i.hn = call ptr @proto_tree_add_item(ptr noundef %i.hg, i32 noundef %i.hm, ptr noundef %0, i32 noundef %.03035.i, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.ho = add i32 %.030.in33.i, 16                ; 2 uses
  %i.hp = load i32, ptr @hf_mka_peer_mn, align 4
  %i.hq = call ptr @proto_tree_add_item(ptr noundef %i.hg, i32 noundef %i.hp, ptr noundef %0, i32 noundef %i.ho, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hr = add nsw i32 %.034.i, -16                ; 2 uses
  %.030.i = add i32 %.030.in33.i, 20              ; 2 uses
  %i.hs = icmp samesign ugt i32 %.034.i, 31
  br i1 %i.hs, label %.lr.ph.i89, label %._crit_edge.i87, !llvm.loop !9

._crit_edge.i87:                                  ; preds = %.lr.ph.i89, %bb.am
  %.0.lcssa.i = phi i32 [ %i.hc, %bb.am ], [ %i.hr, %.lr.ph.i89 ] ; 2 uses
  %.030.lcssa.i = phi i32 [ %.03032.i, %bb.am ], [ %.030.i, %.lr.ph.i89 ]
  %.not.i88 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i88, label %dissect_live_peer_list.exit.thread, label %bb.an

bb.an:                                            ; preds = %._crit_edge.i87
  %i.ht = call ptr @proto_tree_add_expert(ptr noundef %i.hg, ptr noundef %1, ptr noundef nonnull @ei_mka_undecoded, ptr noundef %0, i32 noundef %.030.lcssa.i, i32 noundef %.0.lcssa.i) ; 0 uses
  br label %dissect_live_peer_list.exit.thread

bb.ao:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  %i.hu = load i32, ptr @hf_mka_macsec_sak_use_set, align 4
  %i.hv = zext nneg i16 %i.dl to i32              ; 4 uses
  %i.hw = add nuw nsw i32 %i.hv, 4
  %i.hx = call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.hu, ptr noundef %0, i32 noundef %.0159, i32 noundef %i.hw, i32 noundef 0)
  %i.hy = load i32, ptr @ett_mka_sak_use_set, align 4
  %i.hz = call ptr @proto_item_add_subtree(ptr noundef %i.hx, i32 noundef %i.hy) ; 21 uses
  %i.ia = load i32, ptr @hf_mka_param_set_type, align 4
  %i.ib = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.ia, ptr noundef %0, i32 noundef %.0159, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ic = add i32 %.0159, 1                       ; 6 uses
  %i.id = load i32, ptr @hf_mka_latest_key_an, align 4
  %i.ie = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.id, ptr noundef %0, i32 noundef %i.ic, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.if = load i32, ptr @hf_mka_latest_key_tx, align 4
  %i.ig = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.if, ptr noundef %0, i32 noundef %i.ic, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ih = load i32, ptr @hf_mka_latest_key_rx, align 4
  %i.ii = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.hz, i32 noundef %i.ih, ptr noundef %0, i32 noundef %i.ic, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.i) ; 0 uses
  %i.ij = load i32, ptr @hf_mka_old_key_an, align 4
  %i.ik = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.ij, ptr noundef %0, i32 noundef %i.ic, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.il = load i32, ptr @hf_mka_old_key_tx, align 4
  %i.im = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.il, ptr noundef %0, i32 noundef %i.ic, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.in = load i32, ptr @hf_mka_old_key_rx, align 4
  %i.io = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.hz, i32 noundef %i.in, ptr noundef %0, i32 noundef %i.ic, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.j) ; 0 uses
  %i.ip = load i32, ptr @hf_mka_plain_tx, align 4
  %i.iq = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.ip, ptr noundef %0, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ir = load i32, ptr @hf_mka_plain_rx, align 4
  %i.is = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.ir, ptr noundef %0, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.it = load i32, ptr @hf_mka_delay_protect, align 4
  %i.iu = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.it, ptr noundef %0, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.iv = load i32, ptr @hf_mka_param_body_length, align 4
  %i.iw = call ptr @proto_tree_add_uint(ptr noundef %i.hz, i32 noundef %i.iv, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %i.hv) ; 0 uses
  %i.ix = add i32 %.0159, 4                       ; 4 uses
  switch i16 %i.dl, label %bb.bd [
    i16 0, label %dissect_sak_use.exit
    i16 40, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.iy = load i32, ptr @hf_mka_latest_key_server_mi, align 4
  %i.iz = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.iy, ptr noundef %0, i32 noundef %i.ix, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.ja = load i8, ptr %i.i, align 1, !range !10, !noundef !11
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.jc = load ptr, ptr %i.cz, align 8
  %i.jd = getelementptr i8, ptr %i.jc, i64 53
  %i.je = load i16, ptr %i.jd, align 1
  %i.jf = and i16 %i.je, 8
  %.not.i90 = icmp eq i16 %i.jf, 0
  br i1 %.not.i90, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jg = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.l, i32 noundef %i.ix, i64 noundef 16) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.jh = add i32 %.0159, 16
  %i.ji = load i32, ptr @hf_mka_latest_key_number, align 4
  %i.jj = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.ji, ptr noundef %0, i32 noundef %i.jh, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.jk = add i32 %.0159, 20                      ; 2 uses
  %i.jl = load i8, ptr %i.i, align 1, !range !10, !noundef !11
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.jn = load ptr, ptr %i.cz, align 8
  %i.jo = getelementptr i8, ptr %i.jn, i64 53
  %i.jp = load i16, ptr %i.jo, align 1
  %i.jq = and i16 %i.jp, 8
  %.not98.i = icmp eq i16 %i.jq, 0
  br i1 %.not98.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jr = load i32, ptr @hf_mka_latest_lowest_acceptable_pn, align 4
  %i.js = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.hz, i32 noundef %i.jr, ptr noundef %0, i32 noundef %i.jk, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  %i.jt = load ptr, ptr %i.bd, align 8
  %i.ju = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.jt, i64 noundef 24) #18 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.ju, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 noundef 16, i1 noundef false) #16
  %i.jv = load i32, ptr %i.k, align 4
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr i8, ptr %i.ju, i64 16
  store i64 %i.jw, ptr %i.jx, align 8
  %i.jy = load ptr, ptr %i.bd, align 8
  %i.jz = load i32, ptr @proto_mka, align 4
  call void @p_add_proto_data(ptr noundef %i.jy, ptr noundef %1, i32 noundef %i.jz, i32 noundef 6, ptr noundef %i.ju)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.ka = load i32, ptr @hf_mka_latest_lowest_acceptable_pn, align 4
  %i.kb = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.ka, ptr noundef %0, i32 noundef %i.jk, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.aw

end_hunk_0
