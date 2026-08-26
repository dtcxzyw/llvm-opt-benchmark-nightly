Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-umts_rlc?download=true
inline.NumInlined: 46
inline.NumDeleted: 18
begin_hunk_0_@rlc_decode_li:bb.a
.split181.us:                                     ; preds = %bb.c
  %i.ak = trunc nuw nsw i64 %indvars.iv211 to i8
  %i.al = tail call fastcc ptr @tree_add_li(i32 noundef 2, ptr noundef %i.q, i8 noundef zeroext %i.ak, i32 noundef %i.b, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3)
  %i.am = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.al, ptr noundef nonnull @ei_rlc_li_reserved) ; 0 uses
  br label %bb.n

.split185.us:                                     ; preds = %bb.d
  %i.an = trunc nuw nsw i64 %indvars.iv211 to i8
  %i.ao = getelementptr i8, ptr %i.q, i64 2
  store i16 0, ptr %i.ao, align 2
  %i.ap = tail call fastcc ptr @tree_add_li(i32 noundef %0, ptr noundef %i.q, i8 noundef zeroext %i.an, i32 noundef %i.b, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3)
  %i.aq = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.ap, ptr noundef nonnull @ei_rlc_li_incorrect_warn) ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.ar = getelementptr i8, ptr %i.ag, i64 2
  store i16 0, ptr %i.ar, align 2
  br label %bb.m

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.as = getelementptr i8, ptr %i.ag, i64 2
  store i16 0, ptr %i.as, align 2
  br i1 %i.k, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc nuw nsw i64 %indvars.iv to i8
  %i.au = tail call fastcc ptr @tree_add_li(i32 noundef 2, ptr noundef %i.ag, i8 noundef zeroext %i.at, i32 noundef %i.b, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3)
  %i.av = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.au, ptr noundef nonnull @ei_rlc_li_reserved) ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.aw = sub nsw i16 %i.aj, %.0139
  %i.ax = getelementptr i8, ptr %i.ag, i64 2
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = zext nneg i8 %i.ai to i32
  %i.az = icmp samesign uge i32 %i.l, %i.ay
  %i.ba = load i8, ptr @global_rlc_headers_expected, align 1, !range !6
  %i.bb = trunc nuw i8 %i.ba to i1
  %or.cond3 = select i1 %i.az, i1 true, i1 %i.bb
  %i.bc = icmp ule i16 %.0139, %i.aj
  %or.cond156.not = select i1 %or.cond3, i1 %i.bc, i1 false
  br i1 %or.cond156.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr i8, ptr %i.ag, i64 2
  %i.be = trunc nuw nsw i64 %indvars.iv to i8
  store i16 0, ptr %i.bd, align 2
  %i.bf = tail call fastcc ptr @tree_add_li(i32 noundef %0, ptr noundef %i.ag, i8 noundef zeroext %i.be, i32 noundef %i.b, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3)
  %i.bg = load i16, ptr %i.ag, align 8
  %i.bh = zext i16 %i.bg to i32
  %i.bi = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.bf, ptr noundef nonnull @ei_rlc_li_incorrect_mal, ptr noundef nonnull @.str.200, i32 noundef %i.bh) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.h, %bb.i
  %.1 = phi i16 [ %i.aj, %bb.k ], [ %.0139, %bb.h ], [ %.0139, %bb.i ]
  %i.bj = trunc nuw nsw i64 %indvars.iv to i8
  %i.bk = tail call fastcc ptr @tree_add_li(i32 noundef %0, ptr noundef %i.ag, i8 noundef zeroext %i.bj, i32 noundef %i.b, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond, label %.split189.us, label %.split, !llvm.loop !12

.split189.us:                                     ; preds = %bb.m, %bb.f
  %.us-phi190 = phi ptr [ %i.ab, %bb.f ], [ %i.bk, %bb.m ]
  %i.bm = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %.us-phi190, ptr noundef nonnull @ei_rlc_li_too_many) ; 0 uses
  br label %bb.n

.split178.us:                                     ; preds = %.split, %.split.us
  %.us-phi179.in = phi i64 [ %indvars.iv211, %.split.us ], [ %indvars.iv, %.split ]
  %.us-phi179 = trunc i64 %.us-phi179.in to i16
  %i.bn = and i16 %.us-phi179, 255
  br label %bb.n

bb.n:                                             ; preds = %.split178.us, %.split189.us, %bb.l, %bb.j, %.split185.us, %.split181.us
  %.0 = phi i16 [ %i.bn, %.split178.us ], [ -1, %.split185.us ], [ -1, %.split189.us ], [ -1, %.split181.us ], [ -1, %bb.l ], [ -1, %bb.j ]
  ret i16 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @rlc_is_duplicate(i32 noundef range(i32 1, 3) %0, ptr noundef %1, i16 noundef zeroext range(i16 0, 4096) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.rlc_seqlist, align 8        ; 16 uses
  %6 = alloca %struct.rlc_seq, align 8            ; 9 uses
  %7 = alloca %struct.nstime_t, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = load i32, ptr @proto_fp, align 4
  %i.c = tail call ptr @p_get_proto_data(ptr noundef %i.a, ptr noundef %1, i32 noundef %i.b, i32 noundef 0) ; 2 uses
  %i.d = tail call ptr @wmem_file_scope()
  %i.e = load i32, ptr @proto_umts_rlc, align 4
  %i.f = tail call ptr @p_get_proto_data(ptr noundef %i.d, ptr noundef %1, i32 noundef %i.e, i32 noundef 0) ; 4 uses
  %i.g = icmp ne ptr %i.c, null
  %i.h = icmp ne ptr %i.f, null
  %or.cond.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %rlc_channel_assign.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 692
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.m, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 0, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 0, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 0, ptr %i.q, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not38.i = icmp eq ptr %4, null
  br i1 %.not38.i, label %rlc_channel_assign.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %5, align 8
  %i.r = getelementptr i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.t = load <2 x i16>, ptr %i.r, align 4
  store <2 x i16> %i.t, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %4, i64 12
  %i.v = load i8, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.v, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %1, i64 386
  %i.y = load i16, ptr %i.x, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %i.y, ptr %i.z, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.aa = getelementptr i8, ptr %i.f, i64 320
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.k
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.ac, ptr %i.ad, align 4
  %i.ae = getelementptr i8, ptr %1, i64 392
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  store i32 %0, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %i.f, i64 384
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.k
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr @sequence_table, align 8
  %i.ao = call ptr @g_hash_table_lookup(ptr noundef %i.an, ptr noundef nonnull %5) ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = call ptr @wmem_file_scope()
  %i.aq = call noalias dereferenceable_or_null(40) ptr @wmem_alloc0(ptr noundef %i.ap, i64 noundef 40) #16 ; 4 uses
  %i.ar = call fastcc i32 @rlc_channel_assign(ptr noundef %i.aq, i32 noundef %0, ptr noundef %1, ptr noundef %4) ; 0 uses
  %i.as = load ptr, ptr @sequence_table, align 8
  %i.at = call i32 @g_hash_table_insert(ptr noundef %i.as, ptr noundef %i.aq, ptr noundef %i.aq) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.056 = phi ptr [ %i.ao, %bb.f ], [ %i.aq, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %2, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %1, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %.056, i64 24     ; 6 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call ptr @g_list_first(ptr noundef %i.az) ; 3 uses
  %.not65 = icmp eq ptr %i.ba, null
  br i1 %.not65, label %._crit_edge79, label %bb.i

._crit_edge79:                                    ; preds = %bb.h
  %.pre = load ptr, ptr %i.ay, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %.val = load i32, ptr %i.ai, align 4
  %i.bb = icmp eq i32 %.val, 1
  %i.bc = load ptr, ptr %i.ba, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 20
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = zext i16 %i.be to i32                   ; 2 uses
  %i.bg = zext nneg i16 %2 to i32                 ; 2 uses
  %i.bh = select i1 %i.bb, i32 128, i32 4096      ; 5 uses
  %8 = sub nsw i32 %i.bh, %i.bg
  %9 = add nsw i32 %8, %i.bf
  %i.bi = srem i32 %9, %i.bh
  %i.bj = add nuw nsw i32 %i.bh, %i.bg
  %10 = sub nsw i32 %i.bj, %i.bf
  %i.bk = srem i32 %10, %i.bh
  %. = call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bk)
  %i.bl = lshr exact i32 %i.bh, 2
  %.not66 = icmp slt i32 %., %i.bl
  %.pre80 = load ptr, ptr %i.ay, align 8          ; 2 uses
  br i1 %.not66, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = call ptr @g_list_remove_link(ptr noundef %.pre80, ptr noundef nonnull %i.ba) ; 2 uses
  store ptr %i.bm, ptr %i.ay, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge79, %bb.i, %bb.j
  %i.bn = phi ptr [ %.pre, %._crit_edge79 ], [ %.pre80, %bb.i ], [ %i.bm, %bb.j ]
  %i.bo = call ptr @g_list_find_custom(ptr noundef %i.bn, ptr noundef nonnull %6, ptr noundef nonnull @rlc_cmp_seq) ; 3 uses
  %.not6771 = icmp eq ptr %i.bo, null
  br i1 %.not6771, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bp = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %.not68 = icmp eq ptr %3, null
  br i1 %.not68, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.n
  %.074.us = phi i1 [ %.1.us, %bb.n ], [ true, %.lr.ph ] ; 2 uses
  %.05373.us = phi i1 [ %.154.us, %bb.n ], [ false, %.lr.ph ] ; 2 uses
  %.05772.us = phi ptr [ %i.ca, %bb.n ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bq = load ptr, ptr %.05772.us, align 8       ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.bu = icmp ult i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.bv = icmp ne i32 %i.bs, %i.bt
  %spec.select.us = select i1 %i.bv, i1 %.074.us, i1 false
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.split.us
  call void @nstime_delta(ptr noundef nonnull %7, ptr noundef %i.bp, ptr noundef %i.bq)
  %i.bw = load i64, ptr %7, align 8
  %i.bx = icmp slt i64 %i.bw, 5
  %spec.select77 = select i1 %i.bx, i1 true, i1 %.05373.us
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.154.us = phi i1 [ %.05373.us, %bb.l ], [ %spec.select77, %bb.m ] ; 2 uses
  %.1.us = phi i1 [ %spec.select.us, %bb.l ], [ %.074.us, %bb.m ] ; 2 uses
  %i.by = getelementptr i8, ptr %.05772.us, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call ptr @g_list_find_custom(ptr noundef %i.bz, ptr noundef nonnull %6, ptr noundef nonnull @rlc_cmp_seq) ; 2 uses
  %.not67.us = icmp eq ptr %i.ca, null
  br i1 %.not67.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !13

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %.074 = phi i1 [ %.1, %bb.r ], [ true, %.lr.ph ] ; 3 uses
  %.05373 = phi i1 [ %.154, %bb.r ], [ false, %.lr.ph ] ; 2 uses
  %.05772 = phi ptr [ %i.cm, %bb.r ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.cb = load ptr, ptr %.05772, align 8          ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.ce = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.cf = icmp ult i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph.split
  call void @nstime_delta(ptr noundef nonnull %7, ptr noundef %i.bp, ptr noundef %i.cb)
  %i.cg = load i64, ptr %7, align 8
  %i.ch = icmp slt i64 %i.cg, 5
  br i1 %i.ch, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.cc, align 8
  store i32 %i.ci, ptr %3, align 4
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.split
  %i.cj = icmp ne i32 %i.cd, %i.ce
  %spec.select = select i1 %i.cj, i1 %.074, i1 false
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.154 = phi i1 [ %.05373, %bb.q ], [ %.05373, %bb.o ], [ true, %bb.p ] ; 2 uses
  %.1 = phi i1 [ %spec.select, %bb.q ], [ %.074, %bb.o ], [ %.074, %bb.p ] ; 2 uses
  %i.ck = getelementptr i8, ptr %.05772, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call ptr @g_list_find_custom(ptr noundef %i.cl, ptr noundef nonnull %6, ptr noundef nonnull @rlc_cmp_seq) ; 2 uses
  %.not67 = icmp eq ptr %i.cm, null
  br i1 %.not67, label %._crit_edge, label %.lr.ph.split, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.r, %bb.n
  %.053.lcssa = phi i1 [ %.154.us, %bb.n ], [ %.154, %bb.r ] ; 2 uses
  %.0.lcssa = phi i1 [ %.1.us, %bb.n ], [ %.1, %bb.r ]
  br i1 %.0.lcssa, label %._crit_edge.thread, label %rlc_channel_assign.exit.thread

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge
  %.053.lcssa96 = phi i1 [ %.053.lcssa, %._crit_edge ], [ false, %bb.k ]
  %i.cn = getelementptr i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef align 8 dereferenceable(16) %i.cn, i64 16, i1 false)
  %i.co = call ptr @wmem_file_scope()
  %i.cp = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.co, i64 noundef 24) #16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.cq = load ptr, ptr %i.ay, align 8
  %i.cr = call ptr @g_list_append(ptr noundef %i.cq, ptr noundef %i.cp)
  store ptr %i.cr, ptr %i.ay, align 8
  br label %rlc_channel_assign.exit.thread

rlc_channel_assign.exit.thread:                   ; preds = %._crit_edge, %._crit_edge.thread, %bb.d, %bb.a
  %.055 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ %.053.lcssa96, %._crit_edge.thread ], [ %.053.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i1 %.055
}

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_tree_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @tree_add_li(i32 noundef range(i32 1, 3) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2, i32 noundef range(i32 1, 3) %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %proto_item_set_hidden.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %2 to i32                        ; 2 uses
  br i1 %4, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw nsw i32 %i.b, 1
  %i.d = add nuw nsw i32 %i.c, %3                 ; 2 uses
  %i.e = load i32, ptr @hf_rlc_li, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef nonnull %6, i32 noundef %i.e, ptr noundef %5, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 13 uses
  %i.g = load i32, ptr @ett_rlc_frag, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 3 uses
  %i.i = load i32, ptr @hf_rlc_li_value, align 4
  %i.j = shl nuw nsw i32 %i.d, 3                  ; 2 uses
  %i.k = call ptr @proto_tree_add_bits_ret_val(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %5, i32 noundef %i.j, i32 noundef 15, ptr noundef nonnull %i.a, i32 noundef 0) ; 12 uses
  %i.l = load i16, ptr %1, align 8
  switch i16 %i.l, label %bb.s [
    i16 0, label %bb.d
    i16 32762, label %bb.e
    i16 32763, label %bb.h
    i16 32764, label %bb.i
    i16 32765, label %bb.l
    i16 32766, label %bb.o
    i16 32767, label %bb.r
  ]

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ptr, ...) @add_description(ptr noundef %i.f, ptr noundef %i.k, ptr noundef nonnull @.str.201)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %0, 1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ptr, ...) @add_description(ptr noundef %i.f, ptr noundef %i.k, ptr noundef nonnull @.str.202)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  call void (ptr, ptr, ptr, ...) @add_description(ptr noundef %i.f, ptr noundef %i.k, ptr noundef nonnull @.str.203)
  br label %bb.t

bb.h:                                             ; preds = %bb.c
  call void (ptr, ptr, ptr, ...) @add_description(ptr noundef %i.f, ptr noundef %i.k, ptr noundef nonnull @.str.204)
  br label %bb.t

bb.i:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %0, 1
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, ptr, ...) @add_description(ptr noundef %i.f, ptr noundef %i.k, ptr noundef nonnull @.str.205)
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  call void (ptr, ptr, ptr, ...) @add_description(ptr noundef %i.f, ptr noundef %i.k, ptr noundef nonnull @.str.203)
  br label %bb.t

bb.l:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %0, 1
  br i1 %i.o, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, ptr, ptr, ...) @add_description(ptr noundef %i.f, ptr noundef %i.k, ptr noundef nonnull @.str.206)
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  call void (ptr, ptr, ptr, ...) @add_description(ptr noundef %i.f, ptr noundef %i.k, ptr noundef nonnull @.str.203)
  br label %bb.t

end_hunk_0
begin_hunk_1_@tree_add_li:bb.a
  %i.at = icmp ult i32 %i.as, %i.ar
  br i1 %i.at, label %proto_item_set_hidden.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.au = load i16, ptr %i.ao, align 2            ; 2 uses
  %i.av = load i16, ptr %1, align 8               ; 2 uses
  %i.aw = icmp ugt i16 %i.au, %i.av
  br i1 %i.aw, label %proto_item_set_hidden.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ax = zext i16 %i.av to i32
  %i.ay = zext i16 %i.au to i32                   ; 2 uses
  %i.az = load i32, ptr @hf_rlc_li_data, align 4
  %i.ba = sub nsw i32 %3, %i.ay
  %i.bb = add nsw i32 %i.ba, %i.ax
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %.0, i32 noundef %i.az, ptr noundef %5, i32 noundef %i.bb, i32 noundef %i.ay, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.be, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bf = getelementptr i8, ptr %i.be, i64 28     ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.an, %bb.am, %bb.al, %bb.ai, %bb.ak, %bb.aj, %bb.a
  %.093 = phi ptr [ null, %bb.a ], [ %.0, %bb.aj ], [ %.0, %bb.ak ], [ %.0, %bb.ai ], [ %.0, %bb.al ], [ %.0, %bb.am ], [ %.0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.093
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_ret_val(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @add_description(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @__vsnprintf_chk(ptr noundef nonnull @add_description.info_buffer, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef %2, ptr noundef nonnull %3) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %0, ptr noundef nonnull @.str.211, ptr noundef nonnull @add_description.info_buffer)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %1, ptr noundef nonnull @.str.211, ptr noundef nonnull @add_description.info_buffer)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__vsnprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_find_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rlc_cmp_seq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 20
  %i.d = load i16, ptr %i.c, align 4
  %i.e = tail call i32 @llvm.ucmp.i32.i16(i16 %i.b, i16 %i.d)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @add_fragment(i32 noundef range(i32 1, 3) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, i16 noundef zeroext range(i16 0, 4096) %5, i16 noundef zeroext %6, i16 noundef zeroext %7, i1 noundef zeroext %8, ptr nofree noundef readonly captures(address_is_null) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %struct.rlc_channel, align 4       ; 19 uses
  %11 = alloca %struct.rlc_frag, align 8          ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8
  %i.d = tail call ptr @wmem_file_scope()
  %i.e = load i32, ptr @proto_fp, align 4
  %i.f = tail call ptr @p_get_proto_data(ptr noundef %i.d, ptr noundef %2, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %i.g = tail call ptr @wmem_file_scope()
  %i.h = load i32, ptr @proto_umts_rlc, align 4
  %i.i = tail call ptr @p_get_proto_data(ptr noundef %i.g, ptr noundef %2, i32 noundef %i.h, i32 noundef 0) ; 4 uses
  %i.j = icmp ne ptr %i.f, null
  %i.k = icmp ne ptr %i.i, null
  %or.cond.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.b, label %.critedge266

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.f, i64 692
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = getelementptr [4 x i8], ptr %i.i, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.p, ptr %10, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i16 0, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 6
  store i16 0, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 0, ptr %i.t, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not38.i = icmp eq ptr %9, null
  br i1 %.not38.i, label %.critedge266, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %10, align 4
  %i.u = getelementptr i8, ptr %9, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.w = load <2 x i16>, ptr %i.u, align 4
  store <2 x i16> %i.w, ptr %i.v, align 4
  %i.x = getelementptr i8, ptr %9, i64 12
  %i.y = load i8, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %2, i64 386
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i16 %i.ab, ptr %i.ac, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ad = getelementptr i8, ptr %i.i, i64 320
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.n
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i8 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %2, i64 392
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 13
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  store i32 %0, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %i.i, i64 384
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.n
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %2, i64 20        ; 7 uses
  %i.ar = load i32, ptr %i.aq, align 4
  store i32 %i.ar, ptr %11, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i16 %5, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 30
  store i16 %6, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i16 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ax = call fastcc i32 @rlc_channel_assign(ptr noundef nonnull %i.aw, i32 noundef range(i32 1, 3) %0, ptr noundef %2, ptr noundef readonly %9) ; 0 uses
  %.val = load i32, ptr %i.al, align 4
  %i.ay = icmp eq i32 %.val, 1
  %..i = select i1 %i.ay, i16 128, i16 4096       ; 9 uses
  %i.az = zext nneg i16 %..i to i32               ; 16 uses
  %i.ba = load ptr, ptr @reassembled_table, align 8
  %i.bb = call i32 @g_hash_table_lookup_extended(ptr noundef %i.ba, ptr noundef nonnull %11, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not259 = icmp eq ptr %3, null
  br i1 %.not259, label %.critedge266, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.c, align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 28
  %i.bf = load i16, ptr %i.be, align 4
  %i.bg = getelementptr i8, ptr %i.bd, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 28
  %i.bj = load i16, ptr %i.bi, align 4
  %.not260 = icmp eq i16 %i.bf, %i.bj
  br i1 %.not260, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr i8, ptr %i.bc, i64 30
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = getelementptr i8, ptr %i.bh, i64 30
  %i.bn = load i16, ptr %i.bm, align 2
  %.not261 = icmp eq i16 %i.bl, %i.bn
  br i1 %.not261, label %.critedge266, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = load i32, ptr @hf_rlc_reassembled_in, align 4
  %i.bp = load i32, ptr %i.bh, align 8
  %i.bq = call ptr @proto_tree_add_uint(ptr noundef nonnull %3, i32 noundef %i.bo, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.bp) ; 0 uses
  br label %.critedge266

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  %i.br = load ptr, ptr @fragment_table, align 8
  %i.bs = call i32 @g_hash_table_lookup_extended(ptr noundef %i.br, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %i.a)
  %.not.i267 = icmp eq i32 %i.bs, 0
  br i1 %.not.i267, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.a, align 8
  br label %get_frags.exit

bb.m:                                             ; preds = %bb.k
  %.not11.i = icmp eq ptr %2, null
  br i1 %.not11.i, label %get_frags.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.al, align 4
  %i.bv = call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #17 ; 3 uses
  %i.bw = call fastcc i32 @rlc_channel_assign(ptr noundef %i.bv, i32 noundef %i.bu, ptr noundef nonnull %2, ptr noundef readonly %9)
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %rlc_channel_create.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @g_free(ptr noundef %i.bv)
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.163) #18
  unreachable

rlc_channel_create.exit.i:                        ; preds = %bb.n
  %i.bx = call ptr @wmem_file_scope()
  %i.by = call noalias dereferenceable_or_null(32768) ptr @wmem_alloc0(ptr noundef %i.bx, i64 noundef 32768) #16 ; 2 uses
  %i.bz = load ptr, ptr @fragment_table, align 8
  %i.ca = call i32 @g_hash_table_insert(ptr noundef %i.bz, ptr noundef %i.bv, ptr noundef %i.by) ; 0 uses
  br label %get_frags.exit

get_frags.exit:                                   ; preds = %bb.l, %bb.m, %rlc_channel_create.exit.i
  %.0.i268 = phi ptr [ null, %bb.m ], [ %i.bt, %bb.l ], [ %i.by, %rlc_channel_create.exit.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.cb = call fastcc ptr @get_endlist(ptr noundef %2, ptr noundef nonnull %10, ptr noundef %9) ; 6 uses
  %i.cc = getelementptr i8, ptr %2, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 53
  %i.cf = load i16, ptr %i.ce, align 1
  %i.cg = and i16 %i.cf, 8
  %.not237 = icmp eq i16 %i.cg, 0
  br i1 %.not237, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %get_frags.exit
  %i.ch = icmp ne ptr %3, null
  %i.ci = icmp ne i16 %7, 0
  %or.cond = and i1 %i.ch, %i.ci
  br i1 %or.cond, label %bb.q, label %.critedge266

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %i.cb, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  %.not252 = icmp eq ptr %i.ck, null
  br i1 %.not252, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not253 = icmp eq ptr %i.cm, null
  br i1 %.not253, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.ck, align 8
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = trunc i64 %i.co to i32
  %i.cq = add i32 %i.cp, 1
  %i.cr = srem i32 %i.cq, %i.az                   ; 3 uses
  %i.cs = trunc nsw i32 %i.cr to i16              ; 3 uses
  %i.ct = load ptr, ptr %i.cm, align 8
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = trunc i64 %i.cu to i16                  ; 5 uses
  %12 = add nsw i16 %..i, -1                      ; 3 uses
  %i.cw = and i16 %12, %i.cv                      ; 3 uses
  %i.cx = zext nneg i16 %i.cw to i32              ; 2 uses
  %i.cy = sub nsw i32 1, %i.az                    ; 2 uses
  %i.cz = and i16 %12, %i.cs                      ; 2 uses
  %.not.i269293 = icmp samesign ugt i16 %i.cz, %i.cw
  %i.da = select i1 %.not.i269293, i32 %i.az, i32 0
  %i.db = zext nneg i16 %i.cz to i32
  %i.dc = add nuw nsw i32 %i.da, %i.cx
  %.0.i270296 = sub nsw i32 %i.db, %i.dc          ; 2 uses
  %i.dd = icmp eq i32 %.0.i270296, %i.cy
  %i.de = icmp sgt i32 %.0.i270296, 0
  %i.df = or i1 %i.dd, %i.de
  br i1 %i.df, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.0213297 = phi i16 [ %i.dn, %bb.t ], [ %i.cs, %bb.s ] ; 4 uses
  %i.dg = sext i16 %.0213297 to i64
  %i.dh = getelementptr [8 x i8], ptr %.0.i268, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.dk = sext i16 %.0213297 to i32
  %i.dl = add nsw i32 %i.dk, 1
  %i.dm = srem i32 %i.dl, %i.az
  %i.dn = trunc nsw i32 %i.dm to i16              ; 2 uses
  %i.do = and i16 %12, %i.dn                      ; 2 uses
  %.not.i269 = icmp samesign ugt i16 %i.do, %i.cw
  %i.dp = select i1 %.not.i269, i32 %i.az, i32 0
  %i.dq = zext nneg i16 %i.do to i32
  %i.dr = add nuw nsw i32 %i.dp, %i.cx
  %.0.i270 = sub nsw i32 %i.dq, %i.dr             ; 2 uses
  %i.ds = icmp eq i32 %.0.i270, %i.cy
  %i.dt = icmp sgt i32 %.0.i270, 0
  %i.du = or i1 %i.ds, %i.dt
  br i1 %i.du, label %.critedge, label %.lr.ph, !llvm.loop !14

.critedge:                                        ; preds = %bb.t, %bb.s
  call fastcc void @reassemble_sequence(ptr noundef %.0.i268, ptr noundef %i.cb, ptr noundef nonnull %10, i16 noundef zeroext %i.cs, i16 noundef zeroext %i.cv)
  br label %.critedge266

bb.u:                                             ; preds = %.lr.ph
  %i.dv = sext i16 %i.cv to i32                   ; 2 uses
  %i.dw = icmp sgt i16 %i.cv, -1
  %i.dx = icmp sgt i16 %..i, %i.cv
  %or.cond262 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond262, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dy = and i64 %i.cu, 32767
  %i.dz = getelementptr [8 x i8], ptr %.0.i268, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not258 = icmp eq ptr %i.ea, null
  br i1 %.not258, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = sext i16 %.0213297 to i32
  %i.ed = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_fail_unfinished_sequence, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.215, i32 noundef %i.cr, i32 noundef %i.dv, i32 noundef %i.eb, i32 noundef %i.ec) ; 0 uses
  br label %.critedge266

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ee = sext i16 %.0213297 to i32
  %i.ef = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_fail_unfinished_sequence, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.216, i32 noundef %i.cr, i32 noundef %i.dv, i32 noundef %i.ee) ; 0 uses
  br label %.critedge266

bb.y:                                             ; preds = %bb.r
  %i.eg = getelementptr i8, ptr %i.cb, i64 32
  %i.eh = load i32, ptr %i.eg, align 8            ; 3 uses
  %.not255 = icmp eq i32 %i.eh, 0
  br i1 %.not255, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = load i32, ptr %i.aq, align 4
  %.not256 = icmp ugt i32 %i.eh, %i.ei
  br i1 %.not256, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_fail_flag_set, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.217, i32 noundef %i.eh) ; 0 uses
  br label %.critedge266

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.ek = load ptr, ptr %i.ck, align 8
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.em = trunc i64 %i.el to i16                  ; 3 uses
  %i.en = sext i16 %i.em to i32                   ; 2 uses
  %i.eo = icmp sgt i16 %i.em, -1
  %i.ep = icmp sgt i16 %..i, %i.em
  %or.cond263 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond263, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.eq = and i64 %i.el, 32767
  %i.er = getelementptr [8 x i8], ptr %.0.i268, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not257 = icmp eq ptr %i.es, null
  br i1 %.not257, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_lingering_endpoint, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.218, i32 noundef %i.en, i32 noundef %i.et) ; 0 uses
  br label %.critedge266

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.ev = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_reassembly_lingering_endpoint, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.219, i32 noundef %i.en) ; 0 uses
  br label %.critedge266

bb.af:                                            ; preds = %bb.q
  %i.ew = call ptr @expert_add_info(ptr noundef %2, ptr noundef null, ptr noundef nonnull @ei_rlc_reassembly_unknown_error) ; 0 uses
  br label %.critedge266

bb.ag:                                            ; preds = %get_frags.exit
  %i.ex = getelementptr i8, ptr %i.cb, i64 32     ; 5 uses
  %i.ey = load i32, ptr %i.ex, align 8
  %.not238 = icmp eq i32 %i.ey, 0
  br i1 %.not238, label %bb.ah, label %.critedge266

bb.ah:                                            ; preds = %bb.ag
  %i.ez = call ptr @wmem_file_scope()
  %i.fa = call noalias dereferenceable_or_null(56) ptr @wmem_alloc0(ptr noundef %i.ez, i64 noundef 56) #16 ; 8 uses
  %i.fb = load i32, ptr %i.aq, align 4
  store i32 %i.fb, ptr %i.fa, align 8
  %i.fc = getelementptr i8, ptr %i.fa, i64 28
  store i16 %5, ptr %i.fc, align 4
  %i.fd = getelementptr i8, ptr %i.fa, i64 30
  store i16 %6, ptr %i.fd, align 2
  %i.fe = getelementptr i8, ptr %i.fa, i64 32
  %i.ff = getelementptr i8, ptr %i.fa, i64 40
  %i.fg = getelementptr i8, ptr %i.fa, i64 4
  %i.fh = call fastcc i32 @rlc_channel_assign(ptr noundef %i.fg, i32 noundef range(i32 1, 3) %0, ptr noundef %2, ptr noundef readonly %9) ; 0 uses
  store i16 %7, ptr %i.fe, align 8
  %i.fi = call ptr @wmem_file_scope()
  %i.fj = zext i16 %4 to i32
  %i.fk = zext i16 %7 to i64
  %i.fl = call ptr @tvb_memdup(ptr noundef %i.fi, ptr noundef %1, i32 noundef %i.fj, i64 noundef %i.fk)
  store ptr %i.fl, ptr %i.ff, align 8
  %i.fm = zext nneg i16 %5 to i64                 ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %.0.i268, i64 %i.fm ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not239 = icmp eq ptr %i.fo, null
  br i1 %.not239, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not240 = icmp eq i16 %6, 0
  br i1 %.not240, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.ai, %.preheader
  %.0211 = phi ptr [ %i.fq, %.preheader ], [ %i.fo, %bb.ai ] ; 2 uses
  %i.fp = getelementptr i8, ptr %.0211, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %.not241 = icmp eq ptr %i.fq, null
  br i1 %.not241, label %bb.aj, label %.preheader, !llvm.loop !15

bb.aj:                                            ; preds = %.preheader
  %i.fr = getelementptr i8, ptr %.0211, i64 48
  store ptr %i.fa, ptr %i.fr, align 8
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.fs = load i32, ptr %i.aq, align 4
  store i32 %i.fs, ptr %i.ex, align 8
  br label %.critedge266

bb.al:                                            ; preds = %bb.ah
  store ptr %i.fa, ptr %i.fn, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.ft = getelementptr i8, ptr %i.cb, i64 24     ; 6 uses
  %i.fu = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.fv = icmp ne ptr %i.fu, null
  %i.fw = icmp ne i16 %6, 0
  %or.cond6 = and i1 %i.fw, %i.fv
  br i1 %or.cond6, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fx = load ptr, ptr %i.fu, align 8
  %i.fy = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.fz = trunc i64 %i.fy to i16
  %i.ga = icmp eq i16 %5, %i.fz
  br i1 %i.ga, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %sext = shl i64 %i.fy, 48
  %i.gb = ashr exact i64 %sext, 48
  %i.gc = add nsw i64 %i.gb, -1
  %i.gd = inttoptr i64 %i.gc to ptr
  store ptr %i.gd, ptr %i.fu, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %i.ge = load ptr, ptr %i.ft, align 8            ; 2 uses
  br i1 %8, label %bb.aq, label %thread-pre-split

bb.aq:                                            ; preds = %bb.ap
  %i.gf = inttoptr i64 %i.fm to ptr
  %i.gg = call ptr @g_list_append(ptr noundef %i.ge, ptr noundef %i.gf) ; 2 uses
  store ptr %i.gg, ptr %i.ft, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ap, %bb.aq
  %i.gh = phi ptr [ %i.gg, %bb.aq ], [ %i.ge, %bb.ap ] ; 4 uses
  %.not242 = icmp eq ptr %i.gh, null
  br i1 %.not242, label %.critedge266, label %bb.ar

bb.ar:                                            ; preds = %thread-pre-split
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %.not243 = icmp eq ptr %i.gj, null
  %i.gk = load ptr, ptr %i.gh, align 8
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = add i32 %i.gm, 1
  %i.go = srem i32 %i.gn, %i.az                   ; 6 uses
  br i1 %.not243, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gp = load ptr, ptr %i.gj, align 8
  %i.gq = ptrtoint ptr %i.gp to i64               ; 2 uses
  %i.gr = trunc i64 %i.gq to i16                  ; 3 uses
  %sext246 = shl i64 %i.gq, 48
  %i.gs = ashr exact i64 %sext246, 45
  %i.gt = getelementptr i8, ptr %.0.i268, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gw = load i32, ptr %i.aq, align 4
  store i32 %i.gw, ptr %i.ex, align 8
  br label %.critedge266

bb.au:                                            ; preds = %bb.as
  %i.gx = sext i16 %i.gr to i32
  %i.gy = icmp eq i32 %i.go, %i.gx
  br i1 %i.gy, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.gz = sext i32 %i.go to i64
  %i.ha = getelementptr [8 x i8], ptr %.0.i268, i64 %i.gz ; 3 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr i8, ptr %i.hb, i64 32
  %i.hd = load i16, ptr %i.hc, align 8
  %i.he = icmp eq i16 %i.hd, 0
  br i1 %i.he, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.hf = call ptr @g_list_first(ptr noundef nonnull %i.gh) ; 2 uses
  %.not250 = icmp eq ptr %i.hf, null
  br i1 %.not250, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hg = load ptr, ptr %i.ft, align 8
  %i.hh = call ptr @g_list_delete_link(ptr noundef %i.hg, ptr noundef nonnull %i.hf)
  store ptr %i.hh, ptr %i.ft, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hi = load ptr, ptr %i.ha, align 8
  %i.hj = getelementptr i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  store ptr %i.hk, ptr %i.ha, align 8
  %.not251 = icmp eq ptr %i.hk, null
  br i1 %.not251, label %.critedge266, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hl = add nsw i32 %i.go, -1
  %i.hm = sext i32 %i.hl to i64
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = load ptr, ptr %i.ft, align 8
  store ptr %i.hn, ptr %i.ho, align 8
  br label %.critedge266

bb.ba:                                            ; preds = %bb.av, %bb.au
  %13 = add nsw i16 %..i, -1                      ; 3 uses
  %i.hp = and i16 %13, %i.gr                      ; 3 uses
  %i.hq = zext nneg i16 %i.hp to i32              ; 2 uses
  %i.hr = sub nsw i32 1, %i.az                    ; 2 uses
  %.0210298 = trunc nsw i32 %i.go to i16          ; 3 uses
  %i.hs = and i16 %13, %.0210298                  ; 2 uses
  %.not.i271299 = icmp samesign ugt i16 %i.hs, %i.hp
  %i.ht = select i1 %.not.i271299, i32 %i.az, i32 0
  %i.hu = zext nneg i16 %i.hs to i32
  %i.hv = add nuw nsw i32 %i.ht, %i.hq
  %.0.i272302 = sub nsw i32 %i.hu, %i.hv          ; 2 uses
  %i.hw = icmp ne i32 %.0.i272302, %i.hr
  %i.hx = icmp slt i32 %.0.i272302, 0
  %i.hy = and i1 %i.hw, %i.hx
  br i1 %i.hy, label %.lr.ph305, label %._crit_edge

.lr.ph305:                                        ; preds = %bb.ba, %bb.bd
  %.0210304 = phi i16 [ %.0210, %bb.bd ], [ %.0210298, %bb.ba ]
  %.0210.in303 = phi i32 [ %i.in, %bb.bd ], [ %i.go, %bb.ba ] ; 3 uses
  %i.hz = sext i16 %.0210304 to i64
  %i.ia = getelementptr [8 x i8], ptr %.0.i268, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %.lr.ph305
  %i.id = zext nneg i16 %5 to i32                 ; 2 uses
  %i.ie = sub nsw i32 %i.az, %i.id
  %i.if = add nsw i32 %i.ie, %.0210.in303
  %i.ig = srem i32 %i.if, %i.az
  %i.ih = add nuw nsw i32 %i.az, %i.id
  %i.ii = sub nsw i32 %i.ih, %.0210.in303
  %i.ij = srem i32 %i.ii, %i.az
  %. = call i32 @llvm.smin.i32(i32 %i.ig, i32 %i.ij)
  %i.ik = lshr exact i32 %i.az, 2
  %.not249 = icmp slt i32 %., %i.ik
  br i1 %.not249, label %.critedge266, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.il = load i32, ptr %i.aq, align 4
  store i32 %i.il, ptr %i.ex, align 8
  br label %.critedge266

bb.bd:                                            ; preds = %.lr.ph305
  %i.im = add nsw i32 %.0210.in303, 1
  %i.in = srem i32 %i.im, %i.az                   ; 2 uses
  %.0210 = trunc nsw i32 %i.in to i16             ; 2 uses
  %i.io = and i16 %13, %.0210                     ; 2 uses
  %.not.i271 = icmp samesign ugt i16 %i.io, %i.hp
  %i.ip = select i1 %.not.i271, i32 %i.az, i32 0
  %i.iq = zext nneg i16 %i.io to i32
  %i.ir = add nuw nsw i32 %i.ip, %i.hq
  %.0.i272 = sub nsw i32 %i.iq, %i.ir             ; 2 uses
  %i.is = icmp ne i32 %.0.i272, %i.hr
  %i.it = icmp slt i32 %.0.i272, 0
  %i.iu = and i1 %i.is, %i.it
  br i1 %i.iu, label %.lr.ph305, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.bd, %bb.ba
  call fastcc void @reassemble_sequence(ptr noundef %.0.i268, ptr noundef %i.cb, ptr noundef nonnull %10, i16 noundef zeroext %.0210298, i16 noundef zeroext %i.gr)
  br label %.critedge266

bb.be:                                            ; preds = %bb.ar
  %i.iv = trunc nsw i32 %i.go to i16              ; 2 uses
  %i.iw = sub nsw i16 %..i, %5
  %.lhs.trunc = add nsw i16 %i.iw, %i.iv
  %i.ix = srem i16 %.lhs.trunc, %..i
  %i.iy = add nuw nsw i16 %..i, %5
  %.lhs.trunc279 = sub nsw i16 %i.iy, %i.iv
  %i.iz = srem i16 %.lhs.trunc279, %..i
  %i.ja = call i16 @llvm.smin.i16(i16 %i.ix, i16 %i.iz)
  %.264 = sext i16 %i.ja to i32
  %i.jb = lshr exact i32 %i.az, 2
  %.not245 = icmp sgt i32 %i.jb, %.264
  br i1 %.not245, label %.critedge266, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jc = load i32, ptr %i.aq, align 4
  store i32 %i.jc, ptr %i.ex, align 8
  br label %.critedge266

.critedge266:                                     ; preds = %bb.bb, %bb.az, %bb.ay, %bb.bc, %bb.at, %thread-pre-split, %bb.d, %bb.a, %bb.be, %._crit_edge, %bb.bf, %bb.ag, %bb.p, %bb.af, %bb.aa, %bb.w, %bb.x, %.critedge, %bb.ae, %bb.ad, %bb.g, %bb.j, %bb.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @get_reassembled_data(i32 noundef range(i32 1, 3) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext range(i16 0, 4096) %4, i16 noundef zeroext %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.rlc_frag, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.c = getelementptr i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %4, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %5, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.j = call fastcc i32 @rlc_channel_assign(ptr noundef nonnull %i.i, i32 noundef range(i32 1, 3) %0, ptr noundef %2, ptr noundef readonly %6) ; 0 uses
  %i.k = load ptr, ptr @reassembled_table, align 8
  %i.l = call i32 @g_hash_table_lookup_extended(ptr noundef %i.k, ptr noundef nonnull %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %tree_add_fragment_list_incomplete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8              ; 10 uses
  %.not36 = icmp eq ptr %i.m, null
  br i1 %.not36, label %tree_add_fragment_list_incomplete.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not37 = icmp eq ptr %i.o, null
  br i1 %.not37, label %tree_add_fragment_list_incomplete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.m, i64 32       ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0 = phi ptr [ %i.q, %bb.d ], [ %i.s, %bb.f ]  ; 2 uses
  %i.r = getelementptr i8, ptr %.0, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not38 = icmp eq ptr %i.s, null
  br i1 %.not38, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.s, i64 28
  %i.u = load i16, ptr %i.t, align 4
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr i8, ptr %.0, i64 28
  %i.x = load i16, ptr %i.w, align 4
  %i.y = zext i16 %i.x to i32
  %i.z = sub nsw i32 %i.v, %i.y
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.e, !llvm.loop !17

bb.g:                                             ; preds = %bb.f
  %i.ab = call ptr @proto_tree_add_expert(ptr noundef %3, ptr noundef %2, ptr noundef nonnull @ei_rlc_incomplete_sequence, ptr noundef %1, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_rlc_frags, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ac, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 4 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.af, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %i.af, i64 28     ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = or i32 %i.ah, 2
  store i32 %i.ai, ptr %i.ag, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.i, %bb.h, %bb.g
  %i.aj = load i32, ptr @ett_rlc_fragments, align 4
  %i.ak = call ptr @proto_item_add_subtree(ptr noundef %i.ad, i32 noundef %i.aj)
  %i.al = getelementptr i8, ptr %i.m, i64 8
  %i.am = load i16, ptr %i.al, align 8
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.m, i64 10
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ad, ptr noundef nonnull @.str.221, i32 noundef %i.an, i32 noundef %i.aq)
  %.021.i = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not22.i = icmp eq ptr %.021.i, null
  br i1 %.not22.i, label %tree_add_fragment_list_incomplete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %proto_item_set_generated.exit.i, %.lr.ph.i
  %.024.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.021.i, %proto_item_set_generated.exit.i ] ; 4 uses
  %.02023.i = phi i32 [ %i.bf, %.lr.ph.i ], [ 0, %proto_item_set_generated.exit.i ]
  %i.ar = load i32, ptr @hf_rlc_frag, align 4
  %i.as = load i32, ptr %.024.i, align 8          ; 2 uses
  %i.at = and i32 %.02023.i, 65535                ; 3 uses
  %i.au = getelementptr i8, ptr %.024.i, i64 32   ; 2 uses
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = add nsw i32 %i.at, -1
  %i.ay = add nsw i32 %i.ax, %i.aw
  %i.az = getelementptr i8, ptr %.024.i, i64 28
  %i.ba = load i16, ptr %i.az, align 4
  %i.bb = zext i16 %i.ba to i32
  %i.bc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.ak, i32 noundef %i.ar, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.as, ptr noundef nonnull @.str.222, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.ay, i32 noundef %i.aw, i32 noundef %i.bb) ; 0 uses
  %i.bd = load i16, ptr %i.au, align 8
  %i.be = zext i16 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.at, %i.be
  %i.bg = getelementptr i8, ptr %.024.i, i64 48
  %.0.i = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %tree_add_fragment_list_incomplete.exit, label %.lr.ph.i, !llvm.loop !18

bb.j:                                             ; preds = %bb.e
  %i.bh = getelementptr i8, ptr %i.m, i64 8       ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 8
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = call ptr @tvb_new_child_real_data(ptr noundef %1, ptr noundef nonnull %i.o, i32 noundef %i.bj, i32 noundef %i.bj) ; 2 uses
  store ptr %i.bk, ptr %i.m, align 8
  %i.bl = call ptr @add_new_data_source(ptr noundef %2, ptr noundef %i.bk, ptr noundef nonnull @.str.220) ; 0 uses
  %.not39 = icmp eq ptr %3, null
  br i1 %.not39, label %tree_add_fragment_list.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr i8, ptr %i.m, i64 10      ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = icmp ugt i16 %i.bn, 1
  br i1 %i.bo, label %bb.l, label %tree_add_fragment_list.exit

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.bq = load i32, ptr @hf_rlc_frags, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef nonnull %3, i32 noundef %i.bq, ptr noundef %i.bp, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 5 uses
  %.not.i.i40 = icmp eq ptr %i.br, null
  br i1 %.not.i.i40, label %proto_item_set_generated.exit.i42, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not5.i.i41 = icmp eq ptr %i.bt, null
  br i1 %.not5.i.i41, label %proto_item_set_generated.exit.i42, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr i8, ptr %i.bt, i64 28     ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = or i32 %i.bv, 2
  store i32 %i.bw, ptr %i.bu, align 4
  br label %proto_item_set_generated.exit.i42

proto_item_set_generated.exit.i42:                ; preds = %bb.n, %bb.m, %bb.l
  %i.bx = load i32, ptr @ett_rlc_fragments, align 4
  %i.by = call ptr @proto_item_add_subtree(ptr noundef %i.br, i32 noundef %i.bx) ; 2 uses
  %i.bz = load i16, ptr %i.bh, align 8
  %i.ca = zext i16 %i.bz to i32
  %i.cb = load i16, ptr %i.bm, align 2
  %i.cc = zext i16 %i.cb to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.br, ptr noundef nonnull @.str.221, i32 noundef %i.ca, i32 noundef %i.cc)
  %.041.i = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not42.i = icmp eq ptr %.041.i, null
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %proto_item_set_generated.exit.i42
  %i.cd = getelementptr i8, ptr %2, i64 80
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i43
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i43 ], [ %.0.i44, %bb.r ] ; 7 uses
  %.03543.i = phi i16 [ 0, %.lr.ph.i43 ], [ %i.da, %bb.r ] ; 3 uses
  %i.ce = getelementptr i8, ptr %.044.i, i64 32   ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8            ; 2 uses
  %.not37.i = icmp eq i16 %i.cf, 0
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = zext i16 %i.cf to i32                   ; 3 uses
  %i.ch = load i32, ptr @hf_rlc_frag, align 4
  %i.ci = zext i16 %.03543.i to i32               ; 3 uses
  %i.cj = load i32, ptr %.044.i, align 8          ; 2 uses
  %i.ck = add nsw i32 %i.ci, -1
  %i.cl = add nsw i32 %i.ck, %i.cg
  %i.cm = getelementptr i8, ptr %.044.i, i64 28
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = zext i16 %i.cn to i32
  %i.cp = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.by, i32 noundef %i.ch, ptr noundef %i.bp, i32 noundef %i.ci, i32 noundef %i.cg, i32 noundef %i.cj, ptr noundef nonnull @.str.223, i32 noundef %i.cj, i32 noundef %i.ci, i32 noundef %i.cl, i32 noundef %i.cg, i32 noundef %i.co) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cq = load i32, ptr @hf_rlc_frag, align 4
  %i.cr = zext i16 %.03543.i to i32
  %i.cs = load i32, ptr %.044.i, align 8          ; 2 uses
  %i.ct = getelementptr i8, ptr %.044.i, i64 28
  %i.cu = load i16, ptr %i.ct, align 4
  %i.cv = zext i16 %i.cu to i32
  %i.cw = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.by, i32 noundef %i.cq, ptr noundef %i.bp, i32 noundef %i.cr, i32 noundef 0, i32 noundef %i.cs, ptr noundef nonnull @.str.224, i32 noundef %i.cs, i32 noundef %i.cv) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cx = load ptr, ptr %i.cd, align 8
  %i.cy = load i32, ptr %.044.i, align 8
  call void @mark_frame_as_depended_upon(ptr noundef %i.cx, i32 noundef %i.cy)
  %i.cz = load i16, ptr %i.ce, align 8
  %i.da = add i16 %i.cz, %.03543.i
  %i.db = getelementptr i8, ptr %.044.i, i64 48
  %.0.i44 = load ptr, ptr %i.db, align 8          ; 2 uses
  %.not.i45 = icmp eq ptr %.0.i44, null
  br i1 %.not.i45, label %._crit_edge.i, label %bb.o, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.r, %proto_item_set_generated.exit.i42
  %i.dc = load i32, ptr @hf_rlc_reassembled_data, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.br, i32 noundef %i.dc, ptr noundef %i.bp, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %.not.i38.i = icmp eq ptr %i.dd, null
  br i1 %.not.i38.i, label %tree_add_fragment_list.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.de = getelementptr i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not5.i39.i = icmp eq ptr %i.df, null
  br i1 %.not5.i39.i, label %tree_add_fragment_list.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr i8, ptr %i.df, i64 28     ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = or i32 %i.dh, 2
  store i32 %i.di, ptr %i.dg, align 4
  br label %tree_add_fragment_list.exit

tree_add_fragment_list.exit:                      ; preds = %bb.t, %bb.s, %._crit_edge.i, %bb.k, %bb.j
  %i.dj = load ptr, ptr %i.m, align 8
  br label %tree_add_fragment_list_incomplete.exit

tree_add_fragment_list_incomplete.exit:           ; preds = %.lr.ph.i, %proto_item_set_generated.exit.i, %bb.b, %bb.c, %bb.a, %tree_add_fragment_list.exit
  %.032 = phi ptr [ null, %bb.b ], [ %i.dj, %tree_add_fragment_list.exit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %proto_item_set_generated.exit.i ], [ null, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.032
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @reassemble_sequence(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext range(i16 -4095, 4096) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = tail call noalias noundef dereferenceable_or_null(48) ptr @wmem_alloc0(ptr noundef %i.a, i64 noundef 48) #16 ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val = load i32, ptr %i.c, align 4
  %i.d = icmp eq i32 %.val, 1
  %..i = select i1 %i.d, i16 128, i16 4096        ; 2 uses
  %5 = zext nneg i16 %..i to i32                  ; 5 uses
  %6 = add nsw i16 %..i, -1                       ; 3 uses
  %i.e = and i16 %6, %4                           ; 3 uses
  %i.f = zext nneg i16 %i.e to i32                ; 2 uses
  %i.g = sub nsw i32 1, %5                        ; 2 uses
  %i.h = and i16 %3, %6                           ; 2 uses
  %.not.i47 = icmp samesign ugt i16 %i.h, %i.e
  %i.i = select i1 %.not.i47, i32 %5, i32 0
  %i.j = zext nneg i16 %i.h to i32
  %7 = add nuw nsw i32 %i.i, %i.f
  %.0.i50 = sub nsw i32 %i.j, %7                  ; 2 uses
  %i.k = icmp ne i32 %.0.i50, %i.g
  %i.l = icmp slt i32 %.0.i50, 1
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  %i.o = getelementptr i8, ptr %i.b, i64 40       ; 6 uses
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 4 uses
  %i.q = getelementptr i8, ptr %i.b, i64 10       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %rlc_sdu_add_fragment.exit
  %.051 = phi i16 [ %3, %.lr.ph ], [ %i.bx, %rlc_sdu_add_fragment.exit ] ; 2 uses
  %i.r = zext i16 %.051 to i64
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 48       ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  store ptr null, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.s, align 8              ; 18 uses
  %i.x = load ptr, ptr %i.n, align 8              ; 5 uses
  %.not.i34 = icmp eq ptr %i.x, null
  br i1 %.not.i34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.n, align 8
  store ptr %i.w, ptr %i.o, align 8
  %i.y = load i16, ptr %i.q, align 2
  %i.z = add i16 %i.y, 1
  store i16 %i.z, ptr %i.q, align 2
  %i.aa = getelementptr i8, ptr %i.w, i64 32
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = load i16, ptr %i.p, align 8
  %i.ad = add i16 %i.ac, %i.ab
  store i16 %i.ad, ptr %i.p, align 8
  br label %rlc_sdu_add_fragment.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.c, align 4
  switch i32 %i.ae, label %rlc_sdu_add_fragment.exit [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.o, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 48
  store ptr %i.w, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.w, i64 48
  store ptr null, ptr %i.ah, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %i.w, i64 28
  %i.aj = load i16, ptr %i.ai, align 4            ; 4 uses
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ak, 2048             ; 2 uses
  %i.am = getelementptr i8, ptr %i.x, i64 28
  %i.an = load i16, ptr %i.am, align 4            ; 2 uses
  %i.ao = zext i16 %i.an to i32
  %i.ap = icmp samesign ult i32 %i.al, %i.ao
  br i1 %i.ap, label %.preheader.preheader.i, label %bb.k

.preheader.preheader.i:                           ; preds = %bb.f
  %i.aq = trunc nuw i32 %i.al to i16
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.preheader.i
  %.0.i35 = phi ptr [ %i.as, %bb.g ], [ %i.x, %.preheader.preheader.i ] ; 4 uses
  %i.ar = getelementptr i8, ptr %.0.i35, i64 48
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not70.i = icmp eq ptr %i.as, null
  br i1 %.not70.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.at = getelementptr i8, ptr %.0.i35, i64 28
  %i.au = load i16, ptr %i.at, align 4
  %i.av = icmp ugt i16 %i.au, %i.aq
  br i1 %i.av, label %.preheader.i, label %.critedge.i, !llvm.loop !20

bb.h:                                             ; preds = %.preheader.i
  %i.aw = getelementptr i8, ptr %.0.i35, i64 48
  store ptr %i.w, ptr %i.aw, align 8
  store ptr %i.w, ptr %i.o, align 8
  br label %bb.o

.critedge.i:                                      ; preds = %bb.g, %bb.i
  %.1.i = phi ptr [ %i.ay, %bb.i ], [ %.0.i35, %bb.g ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.1.i, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8            ; 4 uses
  %.not71.i = icmp eq ptr %i.ay, null
  br i1 %.not71.i, label %.critedge2.i, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.az = getelementptr i8, ptr %i.ay, i64 28
  %i.ba = load i16, ptr %i.az, align 4
  %i.bb = icmp ult i16 %i.ba, %i.aj
  br i1 %i.bb, label %.critedge.i, label %.critedge2.i, !llvm.loop !21

.critedge2.i:                                     ; preds = %bb.i, %.critedge.i
  %i.bc = getelementptr i8, ptr %.1.i, i64 48
  %i.bd = getelementptr i8, ptr %i.w, i64 48      ; 2 uses
  store ptr %i.ay, ptr %i.bd, align 8
  store ptr %i.w, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.critedge2.i
  store ptr %i.w, ptr %i.o, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  %i.bg = icmp ult i16 %i.aj, %i.an
  br i1 %i.bg, label %bb.l, label %.preheader72.i

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %i.w, i64 48
  store ptr %i.x, ptr %i.bh, align 8
  store ptr %i.w, ptr %i.n, align 8
  br label %bb.o

.preheader72.i:                                   ; preds = %bb.k, %bb.m
  %.2.i = phi ptr [ %i.bj, %bb.m ], [ %i.x, %bb.k ] ; 2 uses
  %i.bi = getelementptr i8, ptr %.2.i, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8            ; 4 uses
  %.not69.i = icmp eq ptr %i.bj, null
  br i1 %.not69.i, label %.critedge4.i, label %bb.m

bb.m:                                             ; preds = %.preheader72.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 28
  %i.bl = load i16, ptr %i.bk, align 4
  %i.bm = icmp ult i16 %i.bl, %i.aj
  br i1 %i.bm, label %.preheader72.i, label %.critedge4.i, !llvm.loop !22

.critedge4.i:                                     ; preds = %bb.m, %.preheader72.i
  %i.bn = getelementptr i8, ptr %.2.i, i64 48
  %i.bo = getelementptr i8, ptr %i.w, i64 48      ; 2 uses
  store ptr %i.bj, ptr %i.bo, align 8
  store ptr %i.w, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge4.i
  store ptr %i.w, ptr %i.o, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge4.i, %bb.l, %bb.j, %.critedge2.i, %bb.h, %bb.e
  %i.br = getelementptr i8, ptr %i.w, i64 32
  %i.bs = load i16, ptr %i.br, align 8
  %i.bt = load <2 x i16>, ptr %i.p, align 8
  %i.bu = insertelement <2 x i16> <i16 poison, i16 1>, i16 %i.bs, i64 0
  %i.bv = add <2 x i16> %i.bt, %i.bu
  store <2 x i16> %i.bv, ptr %i.p, align 8
  br label %rlc_sdu_add_fragment.exit

rlc_sdu_add_fragment.exit:                        ; preds = %bb.c, %bb.d, %bb.o
  store ptr %i.v, ptr %i.s, align 8
  %i.bw = add nsw i16 %.051, 1
  %i.bx = and i16 %i.bw, %6                       ; 3 uses
  %.not.i = icmp samesign ugt i16 %i.bx, %i.e
  %i.by = select i1 %.not.i, i32 %5, i32 0
  %i.bz = zext nneg i16 %i.bx to i32
  %8 = add nuw nsw i32 %i.by, %i.f
  %.0.i = sub nsw i32 %i.bz, %8                   ; 2 uses
  %i.ca = icmp ne i32 %.0.i, %i.g
  %i.cb = icmp slt i32 %.0.i, 1
  %i.cc = and i1 %i.ca, %i.cb
  br i1 %i.cc, label %bb.b, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %rlc_sdu_add_fragment.exit, %bb.a
  %i.cd = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call ptr @g_list_first(ptr noundef %i.ce) ; 2 uses
  %.not = icmp eq ptr %i.cf, null
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.cd, align 8
  %i.ch = tail call ptr @g_list_delete_link(ptr noundef %i.cg, ptr noundef nonnull %i.cf) ; 4 uses
  store ptr %i.ch, ptr %i.cd, align 8
  %i.ci = zext i16 %4 to i64
  %i.cj = getelementptr [8 x i8], ptr %0, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8
  %.not32 = icmp eq ptr %i.ck, null
  %.not33 = icmp eq ptr %i.ch, null
  %or.cond = select i1 %.not32, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.ch, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = trunc i64 %i.cm to i32
  %i.co = add nsw i32 %5, -1
  %i.cp = add i32 %i.co, %i.cn
  %i.cq = srem i32 %i.cp, %5
  %i.cr = sext i32 %i.cq to i64
  %i.cs = inttoptr i64 %i.cr to ptr
  store ptr %i.cs, ptr %i.ch, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %._crit_edge
  %i.ct = icmp ne ptr %i.b, null
  %i.cu = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.cu, %i.ct
  br i1 %or.cond.i, label %bb.s, label %reassemble_data.exit

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr i8, ptr %i.b, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i37 = icmp eq ptr %i.cw, null
  br i1 %.not.i37, label %reassemble_data.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr i8, ptr %i.b, i64 16      ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %.not32.i = icmp eq ptr %i.cy, null
  br i1 %.not32.i, label %.lr.ph.i.preheader, label %reassemble_data.exit

.lr.ph.i.preheader:                               ; preds = %bb.t
  %i.cz = getelementptr i8, ptr %i.b, i64 40
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.b, i64 24
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = tail call ptr @wmem_file_scope()
  %i.dd = getelementptr i8, ptr %i.b, i64 8       ; 2 uses
  %i.de = load i16, ptr %i.dd, align 8
  %i.df = zext i16 %i.de to i64
  %i.dg = tail call noalias ptr @wmem_alloc(ptr noundef %i.dc, i64 noundef %i.df) #16
  store ptr %i.dg, ptr %i.cx, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.w
  %.0284.i = phi ptr [ %.028.i, %bb.w ], [ %i.cw, %.lr.ph.i.preheader ] ; 4 uses
  %.03.i = phi i32 [ %i.ea, %bb.w ], [ 0, %.lr.ph.i.preheader ]
  %i.dh = and i32 %.03.i, 65535                   ; 3 uses
  %i.di = getelementptr i8, ptr %.0284.i, i64 32  ; 2 uses
  %i.dj = load i16, ptr %i.di, align 8            ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dh, %i.dk
  %i.dm = load i16, ptr %i.dd, align 8
  %i.dn = zext i16 %i.dm to i32
  %.not34.i = icmp samesign ugt i32 %i.dl, %i.dn
  br i1 %.not34.i, label %reassemble_data.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.do = getelementptr i8, ptr %.0284.i, i64 40  ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.dp, null
  br i1 %.not35.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %i.cx, align 8
  %i.dr = zext nneg i32 %i.dh to i64
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = zext i16 %i.dj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ds, ptr noundef nonnull align 1 %i.dp, i64 noundef range(i64 0, 65536) %i.dt, i1 noundef false) #15
  %i.du = tail call ptr @wmem_file_scope()
  %i.dv = load ptr, ptr %i.do, align 8
  tail call void @wmem_free(ptr noundef %i.du, ptr noundef %i.dv)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr null, ptr %i.do, align 8
  %i.dw = load ptr, ptr @reassembled_table, align 8
  %i.dx = tail call i32 @g_hash_table_insert(ptr noundef %i.dw, ptr noundef nonnull %.0284.i, ptr noundef nonnull %i.b) ; 0 uses
  %i.dy = load i16, ptr %i.di, align 8
  %i.dz = zext i16 %i.dy to i32
  %i.ea = add nuw nsw i32 %i.dh, %i.dz
  %i.eb = getelementptr i8, ptr %.0284.i, i64 48
  %.028.i = load ptr, ptr %i.eb, align 8          ; 2 uses
  %.not33.i = icmp eq ptr %.028.i, null
  br i1 %.not33.i, label %reassemble_data.exit, label %.lr.ph.i, !llvm.loop !24

reassemble_data.exit:                             ; preds = %.lr.ph.i, %bb.w, %bb.r, %bb.s, %bb.t
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_delete_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @mark_frame_as_depended_upon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_rlc_am(i32 noundef range(i32 4, 9) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %6 = alloca [16 x %struct.rlc_li], align 16     ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = tail call ptr @wmem_file_scope()
  %i.g = load i32, ptr @proto_fp, align 4
  %i.h = tail call ptr @p_get_proto_data(ptr noundef %i.f, ptr noundef %2, i32 noundef %i.g, i32 noundef 0) ; 5 uses
  %i.i = tail call ptr @wmem_file_scope()
  %i.j = load i32, ptr @proto_umts_rlc, align 4
  %i.k = tail call ptr @p_get_proto_data(ptr noundef %i.i, ptr noundef %2, i32 noundef %i.j, i32 noundef 0) ; 8 uses
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 0) ; 2 uses
  %i.m = icmp ne ptr %4, null                     ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ne ptr %i.h, null
  %i.o = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @add_channel_info(ptr noundef %2, ptr noundef %4, ptr noundef %i.h, ptr noundef %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = load i32, ptr @hf_rlc_dc, align 4
  %i.q = tail call ptr @proto_tree_add_bits_item(ptr noundef nonnull %4, i32 noundef %i.p, ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.r = icmp sgt i8 %i.l, -1
  br i1 %i.r, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @col_set_str(ptr noundef %i.t, i32 noundef 25, ptr noundef nonnull @.str.228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef 0)
  %i.v = lshr i8 %i.u, 4
  %i.w = and i8 %i.v, 7                           ; 3 uses
  %i.x = load i32, ptr @hf_rlc_ctrl_type, align 4
  %i.y = tail call ptr @proto_tree_add_bits_item(ptr noundef %4, i32 noundef %i.x, ptr noundef %1, i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 2 uses
  switch i8 %i.w, label %bb.k [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @dissect_rlc_status(ptr noundef %1, ptr noundef %2, ptr noundef %4, i16 noundef zeroext 0)
  br label %dissect_rlc_control.exit

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.z = load ptr, ptr %i.s, align 8
  %i.aa = icmp eq i8 %i.w, 1
  %i.ab = select i1 %i.aa, ptr @.str.232, ptr @.str.233
  tail call void @col_append_str(ptr noundef %i.z, i32 noundef 25, ptr noundef nonnull %i.ab)
  %i.ac = load i32, ptr @hf_rlc_rsn, align 4
  %i.ad = call ptr @proto_tree_add_bits_ret_val(ptr noundef %4, i32 noundef %i.ac, ptr noundef %1, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_rlc_r1, align 4
  %i.af = call ptr @proto_tree_add_bits_ret_val(ptr noundef %4, i32 noundef %i.ae, ptr noundef %1, i32 noundef 5, i32 noundef 3, ptr noundef nonnull %i.a, i32 noundef 0) ; 0 uses
  %i.ag = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.y, ptr noundef nonnull @ei_rlc_reserved_bits_not_zero) ; 0 uses
  br label %dissect_rlc_control.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i32, ptr @hf_rlc_hfni, align 4
  %i.aj = call ptr @proto_tree_add_bits_ret_val(ptr noundef %4, i32 noundef %i.ai, ptr noundef %1, i32 noundef 8, i32 noundef 20, ptr noundef nonnull %i.c, i32 noundef 0) ; 0 uses
  %i.ak = load ptr, ptr %i.s, align 8
  %i.al = load i64, ptr %i.b, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 65535
  %i.ao = load i64, ptr %i.c, align 8
  %i.ap = trunc i64 %i.ao to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ak, i32 noundef 25, ptr noundef nonnull @.str.234, i32 noundef %i.an, i32 noundef %i.ap)
  br label %dissect_rlc_control.exit
end_hunk_1
