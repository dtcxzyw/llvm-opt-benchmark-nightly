Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-scte35?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0_@dissect_scte35_splice_insert:bb.a
.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.q
  %.2148.us = phi i32 [ %i.bv, %bb.q ], [ 7, %.lr.ph ] ; 4 uses
  %.0122147.us = phi i32 [ %i.bw, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %i.bb = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2148.us) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.bc = call i32 @tvb_reported_length(ptr noundef %i.bb) ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.ba
  br i1 %i.bd, label %dissect_component.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.be = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bb, i32 noundef 1)
  %.not43.i.us = icmp sgt i8 %i.be, -1            ; 2 uses
  br i1 %.not43.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp samesign ult i32 %i.bc, 6
  br i1 %i.bf, label %dissect_component.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.us = phi i32 [ 2, %bb.m ], [ 6, %bb.n ]
  %i.bg = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bb, i32 noundef 0)
  %i.bh = zext i8 %i.bg to i32
  %i.bi = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.n, ptr noundef %i.bb, i32 noundef 0, i32 noundef %.0.i.us, i32 noundef range(i32 -2147483648, 255) %.0122147.us, ptr noundef nonnull %i.a, ptr noundef @.str.181, i32 noundef range(i32 -2147483648, 255) %.0122147.us, i32 noundef %i.bh) ; 0 uses
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = load i32, ptr @hf_component_tag, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.bj, i32 noundef %i.bk, ptr noundef %i.bb, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = load i32, ptr @hf_component_splice_time_tsf, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bn, ptr noundef %i.bb, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = load i32, ptr @hf_component_splice_time_reserved, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef %i.bp, i32 noundef %i.bq, ptr noundef %i.bb, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not43.i.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.a, align 8
  %i.bt = load i32, ptr @hf_component_splice_time_pts_time, align 4
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %i.bs, i32 noundef %i.bt, ptr noundef %i.bb, i32 noundef 1, i32 noundef 5, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.036.i.ph.us = phi i32 [ 6, %bb.p ], [ 2, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.bv = add i32 %.036.i.ph.us, %.2148.us        ; 2 uses
  %i.bw = add nuw nsw i32 %.0122147.us, 1         ; 2 uses
  %exitcond159.not = icmp eq i32 %i.bw, %i.av
  br i1 %exitcond159.not, label %.thread, label %.lr.ph.split.us, !llvm.loop !7

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.i
  %.2148 = phi i32 [ %i.cg, %.critedge.i ], [ 7, %.lr.ph ] ; 3 uses
  %.0122147 = phi i32 [ %i.ch, %.critedge.i ], [ 0, %.lr.ph ] ; 3 uses
  %i.bx = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2148) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.by = call i32 @tvb_reported_length(ptr noundef %i.bx)
  %i.bz = icmp slt i32 %i.by, %i.ba
  br i1 %i.bz, label %dissect_component.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.split
  %i.ca = call zeroext i8 @tvb_get_uint8(ptr noundef %i.bx, i32 noundef 0)
  %i.cb = zext i8 %i.ca to i32
  %i.cc = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.n, ptr noundef %i.bx, i32 noundef 0, i32 noundef 1, i32 noundef range(i32 -2147483648, 255) %.0122147, ptr noundef nonnull %i.a, ptr noundef @.str.181, i32 noundef range(i32 -2147483648, 255) %.0122147, i32 noundef %i.cb) ; 0 uses
  %i.cd = load ptr, ptr %i.a, align 8
  %i.ce = load i32, ptr @hf_component_tag, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.cd, i32 noundef %i.ce, ptr noundef %i.bx, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.cg = add nuw nsw i32 %.2148, 1               ; 2 uses
  %i.ch = add nuw nsw i32 %.0122147, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.av
  br i1 %exitcond.not, label %.thread, label %.lr.ph.split, !llvm.loop !7

dissect_component.exit:                           ; preds = %.lr.ph.split.us, %bb.n, %.lr.ph.split
  %.us-phi = phi i32 [ %.2148, %.lr.ph.split ], [ %.2148.us, %bb.n ], [ %.2148.us, %.lr.ph.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.u

.thread:                                          ; preds = %bb.q, %.critedge.i, %.preheader, %bb.i, %bb.g, %bb.j
  %.3126 = phi i32 [ %.0123, %bb.j ], [ %i.am, %bb.i ], [ %i.ac, %bb.g ], [ %i.ay, %.preheader ], [ %i.ay, %.critedge.i ], [ %i.ay, %bb.q ]
  %.3 = phi i32 [ 6, %bb.j ], [ 11, %bb.i ], [ 7, %bb.g ], [ 7, %.preheader ], [ %i.cg, %.critedge.i ], [ %i.bv, %bb.q ] ; 6 uses
  %.not141 = icmp eq i8 %i.x, 0
  br i1 %.not141, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.ci = add nuw nsw i32 %.3126, 5
  %i.cj = icmp slt i32 %i.c, %i.ci
  br i1 %i.cj, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load i32, ptr @hf_break_duration_auto_return, align 4
  %i.cl = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.ck, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cm = load i32, ptr @hf_break_duration_reserved, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cm, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_break_duration_duration, align 4
  %i.cp = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.co, ptr noundef %0, i32 noundef %.3, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.cq = add i32 %.3, 5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  %.4 = phi i32 [ %i.cq, %bb.s ], [ %.3, %.thread ] ; 4 uses
  %i.cr = load i32, ptr @hf_unique_program_id, align 4
  %i.cs = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cr, ptr noundef %0, i32 noundef %.4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ct = add i32 %.4, 2
  %i.cu = load i32, ptr @hf_avail_num, align 4
  %i.cv = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.ct, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cw = add i32 %.4, 3
  %i.cx = load i32, ptr @hf_avails_expected, align 4
  %i.cy = call ptr @proto_tree_add_item(ptr noundef %i.n, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.cw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cz = add i32 %.4, 4
  br label %bb.u

bb.u:                                             ; preds = %dissect_component.exit, %bb.d, %bb.t, %bb.r, %bb.l, %bb.k, %bb.h, %bb.f, %bb.c, %bb.a
  %.0127 = phi i32 [ 0, %bb.a ], [ %.3, %bb.r ], [ %.us-phi, %dissect_component.exit ], [ 6, %bb.h ], [ 6, %bb.k ], [ 7, %bb.l ], [ 0, %bb.c ], [ 6, %bb.f ], [ 5, %bb.d ], [ %i.cz, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret i32 %.0127
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_scte35_splice_insert() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @scte35_si_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.9, i32 noundef 5, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_scte35_splice_schedule() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.80, ptr noundef @.str.81, ptr noundef @.str.82)
  store i32 %i.a, ptr @proto_scte35_splice_schedule, align 4
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_scte35_splice_schedule.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_scte35_splice_schedule, align 4
  tail call void @proto_register_field_array(i32 noundef %i.b, ptr noundef @proto_register_scte35_splice_schedule.hf, i32 noundef 18)
  %i.c = load i32, ptr @proto_scte35_splice_schedule, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef @.str.82, ptr noundef @dissect_scte35_splice_schedule, i32 noundef %i.c)
  store ptr %i.d, ptr @scte35_ss_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_scte35_splice_schedule(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0) ; 6 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit165, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = mul nuw nsw i32 %i.f, 5                  ; 2 uses
  %.not = icmp samesign ugt i32 %i.c, %i.g
  br i1 %.not, label %bb.c, label %.loopexit165

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.i, i32 noundef 25, ptr noundef @.str.182, i32 noundef %i.f)
  %i.j = load i32, ptr @proto_scte35_splice_schedule, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.l = load i32, ptr @ett_scte35_splice_schedule, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 14 uses
  %i.n = load i32, ptr @hf_splice_count, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not181 = icmp eq i8 %i.e, 0
  br i1 %.not181, label %.loopexit165, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.c
  %i.p = add nuw nsw i32 %i.g, 1
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %bb.m
  %.0144170 = phi i32 [ %i.cm, %bb.m ], [ 1, %.lr.ph171.preheader ] ; 9 uses
  %.0148169 = phi i32 [ %i.cn, %bb.m ], [ 0, %.lr.ph171.preheader ] ; 3 uses
  %.0150168 = phi i32 [ %.2152, %bb.m ], [ %i.p, %.lr.ph171.preheader ] ; 2 uses
  %i.q = shl i32 %.0144170, 3                     ; 3 uses
  %i.r = add i32 %i.q, 32
  %i.s = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.r, i32 noundef 1)
  %.not160 = icmp eq i8 %i.s, 0                   ; 4 uses
  br i1 %.not160, label %bb.d, label %.thread162

bb.d:                                             ; preds = %.lr.ph171
  %i.t = add i32 %i.q, 41
  %i.u = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.t, i32 noundef 1)
  %.not164 = icmp eq i8 %i.u, 0
  %i.v = add i32 %i.q, 42
  %i.w = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.v, i32 noundef 1)
  %i.x = icmp ne i8 %i.w, 0                       ; 2 uses
  br i1 %.not164, label %bb.e, label %.thread162

bb.e:                                             ; preds = %bb.d
  %i.y = add i32 %.0144170, 6
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.y)
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.aa, 5
  %i.ac = add nuw nsw i32 %i.ab, 1
  br label %.thread162

.thread162:                                       ; preds = %.lr.ph171, %bb.e, %bb.d
  %spec.select = phi i32 [ 10, %bb.d ], [ 10, %bb.e ], [ 5, %.lr.ph171 ]
  %or.cond7 = phi i1 [ %i.x, %bb.d ], [ %i.x, %bb.e ], [ false, %.lr.ph171 ]
  %i.ad = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ false, %.lr.ph171 ] ; 4 uses
  %i.ae = phi i32 [ 1, %bb.d ], [ %i.ac, %bb.e ], [ 1, %.lr.ph171 ]
  %.not160.not = xor i1 %.not160, true
  %or.cond = and i1 %.not160, %i.ad
  %.1 = select i1 %or.cond, i32 14, i32 %spec.select
  %or.cond4 = or i1 %i.ad, %.not160.not
  %i.af = select i1 %or.cond4, i32 0, i32 %i.ae
  %.2 = add nuw nsw i32 %.1, %i.af                ; 2 uses
  %i.ag = add nuw nsw i32 %.2, 5
  %cond.fr = freeze i1 %or.cond7
  %spec.select190 = select i1 %cond.fr, i32 %i.ag, i32 %.2
  %i.ah = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.m, ptr noundef %0, i32 noundef %.0144170, i32 noundef %spec.select190, i32 noundef %.0148169, ptr noundef nonnull %i.a, ptr noundef @.str.183, i32 noundef %.0148169) ; 0 uses
  %i.ai = load i32, ptr @hf_splice_event_id, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ai, ptr noundef %0, i32 noundef %.0144170, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %.0144170, 4                    ; 2 uses
  %i.al = load i32, ptr @hf_splice_event_cancel_indicator, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_splice_reserved0, align 4
  %i.ao = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = add i32 %.0144170, 5                    ; 4 uses
  br i1 %.not160, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.thread162
  %i.aq = add i32 %.0150168, 5                    ; 2 uses
  %i.ar = icmp slt i32 %i.c, %i.aq
  br i1 %i.ar, label %.loopexit165, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = shl i32 %i.ap, 3
  %i.at = or disjoint i32 %i.as, 2
  %i.au = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.at, i32 noundef 1)
  call void @proto_tree_add_bitmask_list(ptr noundef %i.m, ptr noundef %0, i32 noundef %i.ap, i32 noundef 1, ptr noundef @dissect_scte35_splice_schedule.splice_event_flags, i32 noundef 0)
  %i.av = add i32 %.0144170, 6                    ; 4 uses
  %i.aw = select i1 %i.ad, i32 4, i32 1
  %i.ax = add i32 %i.aw, %i.aq                    ; 3 uses
  %i.ay = icmp slt i32 %i.c, %i.ax
  br i1 %i.ay, label %.loopexit165, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = load i32, ptr @hf_splice_utc_splice_time, align 4
  %i.ba = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.av, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bb = add i32 %.0144170, 10
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.av) ; 2 uses
  %i.bd = load i32, ptr @hf_splice_component_count, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.av, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bf = add i32 %.0144170, 7                    ; 3 uses
  %i.bg = zext i8 %i.bc to i32                    ; 2 uses
  %i.bh = mul nuw nsw i32 %i.bg, 5
  %i.bi = add i32 %i.bh, %i.ax                    ; 3 uses
  %i.bj = icmp slt i32 %i.c, %i.bi
  br i1 %i.bj, label %.loopexit165, label %.preheader

.preheader:                                       ; preds = %bb.j
  %.not182 = icmp eq i8 %i.bc, 0
  br i1 %.not182, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.1145167 = phi i32 [ %i.bt, %.lr.ph ], [ %i.bf, %.preheader ] ; 4 uses
  %.0149166 = phi i32 [ %i.bu, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bk, ptr noundef %0, i32 noundef %.1145167, i32 noundef 5, i32 noundef %.0149166, ptr noundef nonnull %i.b, ptr noundef @.str.184, i32 noundef %.0149166) ; 0 uses
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = load i32, ptr @hf_splice_component_tag, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.bn, ptr noundef %0, i32 noundef %.1145167, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %.1145167, 1
  %i.bq = load ptr, ptr %i.b, align 8
  %i.br = load i32, ptr @hf_splice_component_utc_splice_time, align 4
  %i.bs = call ptr @proto_tree_add_item(ptr noundef %i.bq, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bp, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %.1145167, 5                    ; 2 uses
  %i.bu = add nuw nsw i32 %.0149166, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %i.bg
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.i
  %.1151 = phi i32 [ %i.ax, %bb.i ], [ %i.bi, %.preheader ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.2146 = phi i32 [ %i.bb, %bb.i ], [ %i.bf, %.preheader ], [ %i.bt, %.lr.ph ] ; 6 uses
  %.not161 = icmp eq i8 %i.au, 0
  br i1 %.not161, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bv = add i32 %.1151, 5                       ; 2 uses
  %i.bw = icmp slt i32 %i.c, %i.bv
  br i1 %i.bw, label %.loopexit165, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load i32, ptr @hf_splice_break_duration_auto_return, align 4
  %i.by = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.bx, ptr noundef %0, i32 noundef %.2146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bz = load i32, ptr @hf_splice_break_duration_reserved, align 4
  %i.ca = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.bz, ptr noundef %0, i32 noundef %.2146, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cb = load i32, ptr @hf_splice_break_duration_duration, align 4
  %i.cc = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.cb, ptr noundef %0, i32 noundef %.2146, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.cd = add i32 %.2146, 5
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.l, %.thread162
  %.2152 = phi i32 [ %.0150168, %.thread162 ], [ %i.bv, %bb.l ], [ %.1151, %.loopexit ]
  %.3147 = phi i32 [ %i.ap, %.thread162 ], [ %i.cd, %bb.l ], [ %.2146, %.loopexit ] ; 4 uses
  %i.ce = load i32, ptr @hf_splice_unique_program_id, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ce, ptr noundef %0, i32 noundef %.3147, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cg = add i32 %.3147, 2
  %i.ch = load i32, ptr @hf_splice_avail_num, align 4
  %i.ci = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ch, ptr noundef %0, i32 noundef %i.cg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cj = add i32 %.3147, 3
  %i.ck = load i32, ptr @hf_splice_avails_expected, align 4
  %i.cl = call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.cj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cm = add i32 %.3147, 4                       ; 2 uses
  %i.cn = add nuw nsw i32 %.0148169, 1            ; 2 uses
  %exitcond183.not = icmp eq i32 %i.cn, %i.f
  br i1 %exitcond183.not, label %.loopexit165, label %.lr.ph171, !llvm.loop !9

.loopexit165:                                     ; preds = %bb.f, %bb.g, %bb.j, %bb.k, %bb.m, %bb.c, %bb.b, %bb.a
  %.0153 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ %.2146, %bb.k ], [ %i.ap, %bb.f ], [ %i.av, %bb.g ], [ %i.bf, %bb.j ], [ %i.cm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0153
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_scte35_splice_schedule() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @scte35_ss_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.9, i32 noundef 4, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_scte35() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.168, ptr noundef @.str.169, ptr noundef @.str.170) ; 2 uses
  store i32 %i.a, ptr @proto_scte35, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef @.str.170, ptr noundef @dissect_scte35_splice_info, i32 noundef %i.a)
  store ptr %i.b, ptr @scte35_handle, align 8
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_scte35.ett, i32 noundef 1)
  %i.c = load i32, ptr @proto_scte35, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef @proto_register_scte35.hf, i32 noundef 46)
  %i.d = load i32, ptr @proto_scte35, align 4
  %i.e = tail call ptr @register_dissector_table(ptr noundef @.str.9, ptr noundef @.str.171, i32 noundef %i.d, i32 noundef 4, i32 noundef 2)
  store ptr %i.e, ptr @scte35_cmd_dissector_table, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 69655) i32 @dissect_scte35_splice_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.d = icmp slt i32 %i.c, 20
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 13)
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 11)
  %i.i = and i16 %i.h, 4095
  %i.j = zext nneg i16 %i.i to i32                ; 4 uses
  %i.k = add nuw nsw i32 %i.j, 20                 ; 2 uses
  %i.l = icmp samesign ult i32 %i.c, %i.k
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw nsw i32 %i.j, 14                 ; 2 uses
  %i.n = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.m) ; 2 uses
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = add nuw nsw i32 %i.k, %i.o               ; 2 uses
  %i.q = icmp samesign ult i32 %i.c, %i.p
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp slt i8 %i.f, 0                     ; 2 uses
  %i.r = add nuw nsw i32 %i.p, 4
  %i.s = icmp samesign ult i32 %i.c, %i.r
  %.0104 = select i1 %.not, i1 %i.s, i1 false
  br i1 %.0104, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @col_set_str(ptr noundef %i.u, i32 noundef 35, ptr noundef @.str.255)
  %i.v = load ptr, ptr %i.t, align 8
  %i.w = zext i8 %i.e to i32
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.v, i32 noundef 25, ptr noundef @.str.256, i32 noundef %i.w)
  %i.x = load i32, ptr @proto_scte35, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.z = load i32, ptr @ett_scte35_splice_info_section, align 4
  %i.aa = tail call ptr @proto_item_add_subtree(ptr noundef %i.y, i32 noundef %i.z) ; 12 uses
  %i.ab = load i32, ptr @hf_table_id, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.aa, ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef @dissect_scte35_splice_info.section_flags, i32 noundef 0)
  %i.ad = load i32, ptr @hf_protocol_version, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ad, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.aa, ptr noundef %0, i32 noundef 4, i32 noundef 5, ptr noundef @dissect_scte35_splice_info.encrypt_flags, i32 noundef 0)
  %i.af = load i32, ptr @hf_cw_index, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.af, ptr noundef %0, i32 noundef 9, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = load i32, ptr @hf_tier, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ah, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_splice_command_length, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.aj, ptr noundef %0, i32 noundef 11, i32 noundef 2, i32 noundef 0) ; 0 uses
end_hunk_0
