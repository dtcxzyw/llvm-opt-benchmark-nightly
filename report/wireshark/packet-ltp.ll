Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ltp?download=true
inline.NumInlined: 54
inline.NumDeleted: 12
begin_hunk_0_@dissect_ltp_segment:bb.a
  %i.eh = getelementptr i8, ptr %i.dh, i64 80
  store ptr %i.eg, ptr %i.eh, align 8
  %i.ei = load i32, ptr @proto_ltp, align 4
  call void @conversation_add_proto_data(ptr noundef %i.dd, i32 noundef %i.ei, ptr noundef %i.dh)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %proto_item_set_generated.exit
  %.1177 = phi ptr [ null, %proto_item_set_generated.exit ], [ %i.df, %bb.e ], [ %i.dh, %bb.f ]
  store ptr %.1177, ptr %i.as, align 8
  %i.ej = load i32, ptr @hf_ltp_hdr_extn_cnt, align 4
  %i.ek = shl i32 %i.bs, 3                        ; 2 uses
  %i.el = call ptr @proto_tree_add_bits_ret_val(ptr noundef %i.au, i32 noundef %i.ej, ptr noundef %0, i32 noundef %i.ek, i32 noundef 4, ptr noundef nonnull %i.ah, i32 noundef 0) ; 0 uses
  %i.em = load i64, ptr %i.ah, align 8
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = load i32, ptr @hf_ltp_trl_extn_cnt, align 4
  %i.ep = or disjoint i32 %i.ek, 4
  %i.eq = call ptr @proto_tree_add_bits_ret_val(ptr noundef %i.au, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.ep, i32 noundef 4, ptr noundef nonnull %i.ah, i32 noundef 0) ; 0 uses
  %i.er = load i64, ptr %i.ah, align 8
  %i.es = trunc i64 %i.er to i32                  ; 2 uses
  %i.et = add i32 %i.bs, 1                        ; 7 uses
  call void @proto_item_set_end(ptr noundef %i.av, ptr noundef %0, i32 noundef %i.et)
  %i.eu = getelementptr i8, ptr %2, i64 8         ; 10 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call ptr @val_to_str_const(i32 noundef %i.bc, ptr noundef @ltp_type_col_info, ptr noundef @.str.223)
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.ev, i32 noundef 25, ptr noundef @.str.222, ptr noundef %i.bw, ptr noundef %i.ew)
  %i.ex = icmp sgt i32 %i.en, 0
  br i1 %i.ex, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #13
  %i.ey = load i32, ptr @ett_hdr_extn, align 4
  %i.ez = call ptr @proto_tree_add_subtree(ptr noundef %i.ap, ptr noundef %0, i32 noundef %i.et, i32 noundef -1, i32 noundef %i.ey, ptr noundef nonnull %i.ag, ptr noundef @.str.231) ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.028.i = phi i32 [ 0, %bb.h ], [ %i.fs, %bb.k ]
  %.02427.i = phi i32 [ 0, %bb.h ], [ %i.fr, %bb.k ] ; 2 uses
  %i.fa = load i32, ptr @hf_ltp_hdr_extn_tag, align 4
  %i.fb = add i32 %.02427.i, %i.et
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %i.ez, i32 noundef %i.fa, ptr noundef %0, i32 noundef %i.fb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fd = add i32 %.02427.i, 1                    ; 2 uses
  %i.fe = add i32 %i.fd, %i.et
  %i.ff = load i32, ptr @hf_ltp_hdr_extn_len, align 4
  %i.fg = call ptr @proto_tree_add_item_ret_varint(ptr noundef %i.ez, i32 noundef %i.ff, ptr noundef %0, i32 noundef %i.fe, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af) ; 0 uses
  %i.fh = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.fi = icmp ugt i64 %i.fh, 2147483647
  br i1 %i.fi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.fj = load i32, ptr %i.af, align 4
  %i.fk = add i32 %i.fj, %i.fd                    ; 2 uses
  %i.fl = load i32, ptr @hf_ltp_hdr_extn_val, align 4
  %i.fm = add i32 %i.fk, %i.et
  %i.fn = trunc nuw nsw i64 %i.fh to i32
  %i.fo = call ptr @proto_tree_add_item(ptr noundef %i.ez, i32 noundef %i.fl, ptr noundef %0, i32 noundef %i.fm, i32 noundef %i.fn, i32 noundef 0) ; 0 uses
  %i.fp = load i64, ptr %i.ae, align 8
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = add i32 %i.fk, %i.fq                    ; 2 uses
  %i.fs = add nuw nsw i32 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fs, %i.en
  br i1 %exitcond.not.i, label %dissect_header_extn.exit, label %bb.i, !llvm.loop !12

dissect_header_extn.exit:                         ; preds = %bb.k
  %i.ft = load ptr, ptr %i.ag, align 8
  %i.fu = add i32 %i.fr, %i.et                    ; 2 uses
  call void @proto_item_set_end(ptr noundef %i.ft, ptr noundef %0, i32 noundef %i.fu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #13
  br label %bb.l

bb.l:                                             ; preds = %dissect_header_extn.exit, %bb.g
  %.0179 = phi i32 [ %i.fu, %dissect_header_extn.exit ], [ %i.et, %bb.g ] ; 21 uses
  %or.cond3 = icmp ult i32 %i.bc, 8
  br i1 %or.cond3, label %bb.m, label %bb.bq

bb.m:                                             ; preds = %bb.l
  %i.fv = load ptr, ptr %i.as, align 8            ; 14 uses
  %i.fw = load i8, ptr %i.be, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #13
  store i64 0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #13
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #13
  %i.fx = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.0179)
  %i.fy = load i32, ptr @ett_data_segm, align 4
  %i.fz = call ptr @proto_tree_add_subtree(ptr noundef %i.ap, ptr noundef %0, i32 noundef %.0179, i32 noundef %i.fx, i32 noundef %i.fy, ptr noundef null, ptr noundef @.str.232) ; 8 uses
  %i.ga = load i32, ptr @hf_ltp_data_clid, align 4
  %i.gb = call ptr @proto_tree_add_item_ret_varint(ptr noundef %i.fz, i32 noundef %i.ga, ptr noundef %0, i32 noundef %.0179, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ad) ; 0 uses
  %i.gc = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.gd = add i32 %i.gc, %.0179                   ; 2 uses
  %i.ge = load ptr, ptr %i.eu, align 8
  %i.gf = load i64, ptr %i.y, align 8
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.ge, i32 noundef 25, ptr noundef null, ptr noundef @.str.233, i64 noundef %i.gf)
  %i.gg = load i32, ptr @hf_ltp_data_offset, align 4
  %i.gh = call ptr @proto_tree_add_item_ret_varint(ptr noundef %i.fz, i32 noundef %i.gg, ptr noundef %0, i32 noundef %i.gd, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ad) ; 0 uses
  %i.gi = load i32, ptr %i.ad, align 4            ; 3 uses
  %.not.i189 = icmp eq i32 %i.gi, 0
  br i1 %.not.i189, label %dissect_data_segment.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gj = add i32 %i.gi, %i.gd                    ; 2 uses
  %i.gk = load i32, ptr @hf_ltp_data_length, align 4
  %i.gl = call ptr @proto_tree_add_item_ret_varint(ptr noundef %i.fz, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.gj, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ad) ; 0 uses
  %i.gm = load i32, ptr %i.ad, align 4            ; 3 uses
  %.not209.i = icmp eq i32 %i.gm, 0
  br i1 %.not209.i, label %dissect_data_segment.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gn = add i32 %i.gi, %i.gc
  %i.go = add i32 %i.gm, %i.gj                    ; 3 uses
  %i.gp = add i32 %i.gn, %i.gm
  %i.gq = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.gr = trunc i64 %i.gq to i32                  ; 2 uses
  %i.gs = add i32 %i.gp, %i.gr                    ; 2 uses
  %i.gt = load i64, ptr %i.z, align 8             ; 6 uses
  %i.gu = add i64 %i.gq, -1
  %i.gv = add i64 %i.gu, %i.gt                    ; 5 uses
  %i.gw = load i8, ptr @ltp_analyze_sequence, align 1, !range !7, !noundef !8
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = icmp ne ptr %i.fv, null                 ; 5 uses
  %or.cond.i = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %or.cond.i, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %.not210.i = icmp ugt i64 %i.gt, %i.gv
  br i1 %.not210.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gz = load ptr, ptr %i.fv, align 8
  %i.ha = load ptr, ptr %i.aq, align 8
  %i.hb = call ptr @wmem_itree_find_intervals(ptr noundef %i.gz, ptr noundef %i.ha, i64 noundef %i.gt, i64 noundef %i.gv)
  %i.hc = call ptr @wmem_list_head(ptr noundef %i.hb) ; 2 uses
  %.not211248.i = icmp eq ptr %i.hc, null
  br i1 %.not211248.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.hd = getelementptr i8, ptr %2, i64 20
  br label %bb.r

._crit_edge.i:                                    ; preds = %proto_item_set_generated.exit.i
  br i1 %.1189.i, label %.critedge.i, label %bb.v

bb.r:                                             ; preds = %proto_item_set_generated.exit.i, %.lr.ph.i
  %.0187250.i = phi ptr [ %i.hc, %.lr.ph.i ], [ %i.hp, %proto_item_set_generated.exit.i ] ; 2 uses
  %.0188249.i = phi i1 [ true, %.lr.ph.i ], [ %.1189.i, %proto_item_set_generated.exit.i ]
  %i.he = call ptr @wmem_list_frame_data(ptr noundef nonnull %.0187250.i)
  %i.hf = load i32, ptr %i.he, align 8            ; 2 uses
  %i.hg = load i32, ptr %i.hd, align 4
  %i.hh = icmp eq i32 %i.hf, %i.hg
  br i1 %i.hh, label %proto_item_set_generated.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hi = load i32, ptr @hf_ltp_data_retrans, align 4
  %i.hj = call ptr @proto_tree_add_uint(ptr noundef %i.fz, i32 noundef %i.hi, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %i.hf) ; 2 uses
  %.not.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hk = getelementptr i8, ptr %i.hj, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.hl, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hm = getelementptr i8, ptr %i.hl, i64 28     ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = or i32 %i.hn, 2
  store i32 %i.ho, ptr %i.hm, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.1189.i = phi i1 [ %.0188249.i, %bb.r ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ] ; 2 uses
  %i.hp = call ptr @wmem_list_frame_next(ptr noundef nonnull %.0187250.i) ; 2 uses
  %.not211.i = icmp eq ptr %i.hp, null
  br i1 %.not211.i, label %._crit_edge.i, label %bb.r, !llvm.loop !13

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.q
  %i.hq = call ptr @wmem_file_scope()
  %i.hr = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.hq, i64 noundef 24) #10 ; 3 uses
  %i.hs = getelementptr i8, ptr %2, i64 20
  %i.ht = load i32, ptr %i.hs, align 4
  store i32 %i.ht, ptr %i.hr, align 8
  %i.hu = getelementptr i8, ptr %i.hr, i64 8
  %i.hv = getelementptr i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.hu, ptr noundef readonly align 8 dereferenceable(16) %i.hv, i64 16, i1 false)
  %i.hw = load ptr, ptr %i.fv, align 8
  call void @wmem_itree_insert(ptr noundef %i.hw, i64 noundef %i.gt, i64 noundef %i.gv, ptr noundef %i.hr)
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i, %._crit_edge.i, %bb.p
  %.2.i.a = phi i1 [ true, %bb.p ], [ true, %.critedge.i ], [ false, %._crit_edge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %2, ptr %4, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.fz, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.gt, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.gv, ptr %i.hz, align 8
  %i.ia = getelementptr i8, ptr %i.fv, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void @wmem_map_foreach(ptr noundef %i.ib, ptr noundef @ltp_data_seg_find_report, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %.3.i.a = phi i1 [ %.2.i.a, %bb.v ], [ true, %bb.o ] ; 3 uses
  %i.ic = getelementptr i8, ptr %i.as, i64 48
  %6 = zext i1 %.3.i.a to i8
  store i8 %6, ptr %i.ic, align 8
  %i.id = add i8 %i.fw, -1
  %or.cond3.i = icmp ult i8 %i.id, 3
  br i1 %or.cond3.i, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.ie = load i32, ptr @hf_ltp_data_chkp, align 4
  %i.if = call ptr @proto_tree_add_item_ret_varint(ptr noundef %i.fz, i32 noundef %i.ie, ptr noundef %0, i32 noundef %i.go, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad) ; 2 uses
  %i.ig = load i32, ptr %i.ad, align 4            ; 3 uses
  %.not212.i = icmp eq i32 %i.ig, 0
  br i1 %.not212.i, label %dissect_data_segment.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ih = add i32 %i.ig, %i.go                    ; 2 uses
  %i.ii = add i32 %i.ig, %i.gs
  %i.ij = load i64, ptr %i.ab, align 8
  %i.ik = icmp ugt i64 %i.ij, 4294967295
  br i1 %i.ik, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.il = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.if, ptr noundef @ei_ltp_sno_larger_than_ccsds) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.im = load i8, ptr @ltp_analyze_sequence, align 1, !range !7, !noundef !8
  %i.in = trunc nuw i8 %i.im to i1
  %or.cond5.i = select i1 %i.in, i1 %i.gy, i1 false
  br i1 %or.cond5.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.io = load i32, ptr @ett_frame_ref, align 4
  %i.ip = call ptr @proto_item_add_subtree(ptr noundef %i.if, i32 noundef %i.io)
  %i.iq = getelementptr i8, ptr %i.fv, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = load i64, ptr %i.ab, align 8
  call fastcc void @ltp_ref_src(ptr noundef %i.ir, i64 noundef %i.is, ptr noundef %2)
  %i.it = getelementptr i8, ptr %i.fv, i64 40
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = load i64, ptr %i.ab, align 8
  %i.iw = load i32, ptr @hf_ltp_data_chkp_rpt_ref, align 4
  %i.ix = load i32, ptr @hf_ltp_data_chkp_rpt_time, align 4
  call fastcc void @ltp_ref_use(ptr noundef %i.iu, i64 noundef %i.iv, ptr noundef %2, ptr noundef %i.ip, i32 noundef %i.iw, ptr noundef @ei_ltp_data_chkp_norpt, i32 noundef %i.ix, ptr noundef null)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.iy = load i32, ptr @hf_ltp_data_rpt, align 4
  %i.iz = call ptr @proto_tree_add_item_ret_varint(ptr noundef %i.fz, i32 noundef %i.iy, ptr noundef %0, i32 noundef %i.ih, i32 noundef -1, i32 noundef 16, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) ; 2 uses
  %i.ja = load i32, ptr %i.ad, align 4            ; 3 uses
  %.not213.i = icmp eq i32 %i.ja, 0
  br i1 %.not213.i, label %dissect_data_segment.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jb = add i32 %i.ja, %i.ih                    ; 2 uses
  %i.jc = add i32 %i.ii, %i.ja                    ; 2 uses
  %i.jd = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.je = icmp ugt i64 %i.jd, 4294967295
  br i1 %i.je, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jf = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.iz, ptr noundef @ei_ltp_sno_larger_than_ccsds) ; 0 uses
  %.pre.i = load i64, ptr %i.ac, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jg = phi i64 [ %i.jd, %bb.ad ], [ %.pre.i, %bb.ae ] ; 2 uses
  %i.jh = load i8, ptr @ltp_analyze_sequence, align 1, !range !7, !noundef !8
  %i.ji = trunc nuw i8 %i.jh to i1
  %or.cond7.i = select i1 %i.ji, i1 %i.gy, i1 false
  %i.jj = icmp ne i64 %i.jg, 0
  %or.cond9.i = select i1 %or.cond7.i, i1 %i.jj, i1 false
  br i1 %or.cond9.i, label %.thread.i, label %bb.ag

.thread.i:                                        ; preds = %bb.af
  %i.jk = getelementptr i8, ptr %i.fv, i64 64
  %i.jl = load ptr, ptr %i.jk, align 8
  call fastcc void @ltp_ref_src(ptr noundef %i.jl, i64 noundef %i.jg, ptr noundef %2)
  %i.jm = getelementptr i8, ptr %i.fv, i64 48
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = load i64, ptr %i.ac, align 8
  %i.jp = load i32, ptr @ett_frame_ref, align 4
  %i.jq = call ptr @proto_item_add_subtree(ptr noundef %i.iz, i32 noundef %i.jp)
  %i.jr = load i32, ptr @hf_ltp_data_rpt_ref, align 4
  %i.js = load i32, ptr @hf_ltp_data_rpt_time, align 4
  call fastcc void @ltp_ref_use(ptr noundef %i.jn, i64 noundef %i.jo, ptr noundef %2, ptr noundef %i.jq, i32 noundef %i.jr, ptr noundef @ei_ltp_data_rptno_norpt, i32 noundef %i.js, ptr noundef %i.as)
  %i.jt = icmp samesign ugt i8 %i.fw, 1
  %i.ju = icmp eq i8 %i.fw, 3
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.w
  %.0192.i = phi i32 [ %i.gs, %bb.w ], [ %i.jc, %bb.af ] ; 2 uses
  %.0186.i = phi i32 [ %i.go, %bb.w ], [ %i.jb, %bb.af ] ; 2 uses
  %i.jv = and i8 %i.fw, -2
  %i.jw = icmp eq i8 %i.jv, 2
  %i.jx = and i8 %i.fw, -5
  %i.jy = icmp eq i8 %i.jx, 3                     ; 2 uses
  br i1 %i.gy, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag, %.thread.i
  %i.jz = phi i1 [ %i.ju, %.thread.i ], [ %i.jy, %bb.ag ]
  %i.ka = phi i1 [ %i.jt, %.thread.i ], [ %i.jw, %bb.ag ]
  %.0186234.i = phi i32 [ %i.jb, %.thread.i ], [ %.0186.i, %bb.ag ] ; 3 uses
  %.0192232.i = phi i32 [ %i.jc, %.thread.i ], [ %.0192.i, %bb.ag ] ; 3 uses
  %i.kb = and i8 %i.fw, -4
  %i.kc = icmp eq i8 %i.kb, 4
  %i.kd = load i64, ptr %i.z, align 8
  %i.ke = icmp eq i64 %i.kd, 0
  %or.cond11.i = select i1 %i.kc, i1 %i.ke, i1 false
  br i1 %or.cond11.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.kf = getelementptr i8, ptr %i.fv, i64 16     ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8
  %.not214.i = icmp eq ptr %i.kg, null
  br i1 %.not214.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kh = call ptr @wmem_file_scope()
  %i.ki = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.kh, i64 noundef 8) #10 ; 2 uses
  store ptr %i.ki, ptr %i.kf, align 8
  store i64 0, ptr %i.ki, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  br i1 %i.ka, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.kj = getelementptr i8, ptr %i.fv, i64 16     ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8
  %.not215.i = icmp eq ptr %i.kk, null
  br i1 %.not215.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kl = call ptr @wmem_file_scope()
  %i.km = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.kl, i64 noundef 8) #10 ; 2 uses
  store ptr %i.km, ptr %i.kj, align 8
  %i.kn = load i64, ptr %i.z, align 8
  %i.ko = load i64, ptr %i.aa, align 8
  %i.kp = add i64 %i.ko, %i.kn
  store i64 %i.kp, ptr %i.km, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  br i1 %i.jz, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.kq = getelementptr i8, ptr %i.fv, i64 24     ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8
  %.not216.i = icmp eq ptr %i.kr, null
  br i1 %.not216.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ks = call ptr @wmem_file_scope()
  %i.kt = call noalias dereferenceable_or_null(8) ptr @wmem_alloc(ptr noundef %i.ks, i64 noundef 8) #10 ; 2 uses
  store ptr %i.kt, ptr %i.kq, align 8
  %i.ku = load i64, ptr %i.z, align 8
  %i.kv = load i64, ptr %i.aa, align 8
  %i.kw = add i64 %i.kv, %i.ku
  store i64 %i.kw, ptr %i.kt, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.ag
  %i.kx = phi i1 [ false, %bb.an ], [ true, %bb.ao ], [ true, %bb.ap ], [ %i.jy, %bb.ag ] ; 2 uses
  %.0186233.i = phi i32 [ %.0186234.i, %bb.an ], [ %.0186234.i, %bb.ao ], [ %.0186234.i, %bb.ap ], [ %.0186.i, %bb.ag ] ; 4 uses
  %.0192231.i = phi i32 [ %.0192232.i, %bb.an ], [ %.0192232.i, %bb.ao ], [ %.0192232.i, %bb.ap ], [ %.0192.i, %bb.ag ] ; 2 uses
  %i.ky = load i32, ptr @hf_ltp_data_clidata, align 4
  %i.kz = load i64, ptr %i.aa, align 8
  %i.la = trunc i64 %i.kz to i32
  %i.lb = call ptr @proto_tree_add_item(ptr noundef %i.fz, i32 noundef %i.ky, ptr noundef %0, i32 noundef %.0186233.i, i32 noundef %i.la, i32 noundef 0) ; 0 uses
  %i.lc = load ptr, ptr %i.eu, align 8
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.lc, i32 noundef 25, ptr noundef null, ptr noundef @.str.234, i64 noundef %i.gt, i64 noundef %i.gv)
  %i.ld = load i8, ptr @ltp_reassemble_block, align 1, !range !7, !noundef !8
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.ar, label %.thread238.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.lf = load i64, ptr %i.z, align 8
  %i.lg = trunc i64 %i.lf to i32
  %i.lh = load i64, ptr %i.aa, align 8
  %i.li = trunc i64 %i.lh to i32
  %i.lj = xor i1 %i.kx, true
  %i.lk = call ptr @fragment_add_check(ptr noundef @ltp_reassembly_table, ptr noundef %0, i32 noundef %.0186233.i, ptr noundef %2, i32 noundef 0, ptr noundef %i.bk, i32 noundef %i.lg, i32 noundef %i.li, i1 noundef zeroext %i.lj) ; 4 uses
  %.not247.i = icmp eq ptr %i.lk, null
  br i1 %.not247.i, label %..thread238.thread_crit_edge.i, label %bb.as

..thread238.thread_crit_edge.i:                   ; preds = %bb.ar
  %.pre251.i = load i8, ptr @ltp_reassemble_block, align 1, !range !7
  %i.ll = trunc nuw i8 %.pre251.i to i1
  br label %.thread238.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.lm = getelementptr i8, ptr %i.lk, i64 48     ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8
  %i.lo = and i32 %i.ln, 64
  %.not217.i = icmp eq i32 %i.lo, 0
  br i1 %.not217.i, label %bb.at, label %.thread238.i

bb.at:                                            ; preds = %bb.as
  %i.lp = load i64, ptr %i.z, align 8
  %i.lq = icmp eq i64 %i.lp, 0
  %or.cond13.i = select i1 %i.kx, i1 %i.lq, i1 false
  br i1 %or.cond13.i, label %bb.au, label %bb.av
end_hunk_0
