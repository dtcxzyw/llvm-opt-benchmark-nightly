Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-signal-pdu?download=true
inline.NumInlined: 46
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@create_hf_entry:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.sink.split
  %i.ae = icmp eq i32 %8, 1
  %i.af = icmp ne ptr %.0137, null
  %or.cond9 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond9, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ag = add i32 %6, -4
  %or.cond13 = icmp ult i32 %i.ag, 3
  br i1 %or.cond13, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.142, i32 noundef 5, ptr noundef nonnull @.str.292, i64 noundef 996, ptr noundef nonnull @__func__.create_hf_entry, ptr noundef nonnull @.str.293, i32 noundef %2, i32 noundef %3)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %i.l, i64 32
  store ptr %.0137, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.l, i64 28      ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = or i32 %i.aj, 33792
  store i32 %i.ak, ptr %i.ai, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.l, i64 32
  store ptr null, ptr %i.al, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.am = getelementptr i8, ptr %i.l, i64 56
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 -1>, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.l, i64 72
  store ptr null, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.f
}

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_delete_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_get_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dlt_ecu_id_to_int32(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_spdu_payload(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %5 = alloca %struct.nstime_t, align 8           ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i32, ptr @proto_signal_pdu, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 4 uses
  %i.e = load i32, ptr @ett_spdu_payload, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 18 uses
  %i.g = load ptr, ptr @data_spdu_messages, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %proto_item_set_hidden.exit, label %get_message_name.exit

get_message_name.exit:                            ; preds = %bb.a
  %i.i = zext i32 %3 to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.g, ptr noundef %i.j) ; 4 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %proto_item_set_hidden.exit, label %bb.b

bb.b:                                             ; preds = %get_message_name.exit
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.d, ptr noundef nonnull @.str.319, ptr noundef nonnull %i.k)
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.m, i32 noundef 25, ptr noundef nonnull @.str.320, ptr noundef nonnull %i.k)
  %i.n = load ptr, ptr %i.l, align 8
  tail call void @col_set_str(ptr noundef %i.n, i32 noundef 35, ptr noundef nonnull @.str.134)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = load i32, ptr @hf_pdu_name, align 4
  %i.p = tail call ptr @proto_tree_add_string(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %i.k) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.p, i64 40       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.r, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.r, i64 28       ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = or i32 %i.t, 2
  store i32 %i.u, ptr %i.s, align 4
  %.pre = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not5.i92 = icmp eq ptr %.pre, null
  br i1 %.not5.i92, label %proto_item_set_hidden.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %.pre, i64 28      ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = or i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.e, %bb.a, %bb.g, %bb.f, %bb.d, %get_message_name.exit
  %.not100 = phi i1 [ false, %bb.g ], [ true, %get_message_name.exit ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.a ], [ false, %bb.e ]
  %i.y = load ptr, ptr @data_spdu_signal_list, align 8 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %get_parameter_config.exit, label %bb.h

bb.h:                                             ; preds = %proto_item_set_hidden.exit
  %i.aa = zext i32 %3 to i64
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.y, ptr noundef %i.ab)
  br label %get_parameter_config.exit

get_parameter_config.exit:                        ; preds = %proto_item_set_hidden.exit, %bb.h
  %.0.i93 = phi ptr [ %i.ac, %bb.h ], [ null, %proto_item_set_hidden.exit ] ; 5 uses
  %i.ad = icmp eq ptr %.0.i93, null               ; 2 uses
  %or.cond = select i1 %.not100, i1 %i.ad, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %get_parameter_config.exit
  %i.ae = load i8, ptr @spdu_deserializer_activated, align 1, !range !6, !noundef !7
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.d, ptr noundef nonnull @ei_spdu_payload_disabled) ; 0 uses
  %i.ah = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ai = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.aj = icmp ne i32 %i.ai, 0
  %or.cond3 = select i1 %i.aj, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.d, ptr noundef nonnull @ei_spdu_payload_not_configured) ; 0 uses
  %i.al = tail call i32 @call_data_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %i.f)
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.am = icmp eq ptr %2, null
  br i1 %i.am, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr @proto_signal_pdu, align 4
  %i.ao = tail call zeroext i1 @proto_field_is_referenced(ptr noundef null, i32 noundef %i.an)
  br i1 %i.ao, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %.0.i93, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !range !6, !noundef !7
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %.loopexit

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.at = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.au = getelementptr i8, ptr %.0.i93, i64 4    ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %.not135 = icmp eq i32 %i.av, 0
  br i1 %.not135, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %.0.i93, i64 16   ; 4 uses
  %i.ax = getelementptr i8, ptr %1, i64 8         ; 6 uses
  %i.ay = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.az = getelementptr i8, ptr %1, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.cs
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cs ] ; 5 uses
  %.082130 = phi i32 [ 0, %.lr.ph ], [ %i.mv, %bb.cs ] ; 9 uses
  %.083129 = phi i32 [ 0, %.lr.ph ], [ %i.mt, %bb.cs ] ; 34 uses
  %.097128 = phi i32 [ -1, %.lr.ph ], [ %.5106, %bb.cs ] ; 10 uses
  %i.bb = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.bc = getelementptr [136 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 128
  %i.be = load i8, ptr %i.bd, align 8, !range !6, !noundef !7
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr @data_spdu_signal_value_names, align 8 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %get_signal_value_name_config.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.bc, align 8
  %i.bj = load i32, ptr %.0.i93, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bk = zext i32 %i.bj to i64
  %i.bl = and i32 %i.bi, 65535
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 32
  %i.bo = or disjoint i64 %i.bn, %i.bk
  store i64 %i.bo, ptr %i.b, align 8
  %i.bp = call ptr @g_hash_table_lookup(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %.pre151 = load ptr, ptr %i.aw, align 8
  br label %get_signal_value_name_config.exit

get_signal_value_name_config.exit:                ; preds = %bb.s, %bb.t
  %i.bq = phi ptr [ %.pre151, %bb.t ], [ %i.bb, %bb.s ]
  %.0.i94 = phi ptr [ %i.bp, %bb.t ], [ null, %bb.s ]
  %i.br = getelementptr [136 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 120
  store ptr %.0.i94, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.aw, align 8
  %i.bu = getelementptr [136 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = getelementptr i8, ptr %i.bu, i64 128
  store i8 1, ptr %i.bv, align 8
  %.pre152 = load ptr, ptr %i.aw, align 8
  br label %bb.u

bb.u:                                             ; preds = %get_signal_value_name_config.exit, %bb.r
  %i.bw = phi ptr [ %.pre152, %get_signal_value_name_config.exit ], [ %i.bb, %bb.r ]
  %i.bx = getelementptr [136 x i8], ptr %i.bw, i64 %indvars.iv ; 29 uses
  %.not.i95 = icmp eq ptr %i.bx, null
  br i1 %.not.i95, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.292, i32 noundef 2163, ptr noundef nonnull @.str.321) #20
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.by = getelementptr i8, ptr %i.bx, i64 80     ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %.not281.i = icmp eq ptr %i.bz, null
  br i1 %.not281.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.292, i32 noundef 2164, ptr noundef nonnull @.str.322) #20
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ca = shl nuw i32 %.083129, 3
  %i.cb = or disjoint i32 %i.ca, %.082130         ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bx, i64 28     ; 5 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = add i32 %i.cd, %i.cb                    ; 2 uses
  %i.cf = lshr i32 %i.ce, 3                       ; 8 uses
  %i.cg = and i32 %i.ce, 7                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.ch = sub nsw i32 %i.cf, %.083129
  %.not282.i = icmp ne i32 %i.cg, 0               ; 3 uses
  %i.ci = zext i1 %.not282.i to i32
  %spec.select.i = add nsw i32 %i.ch, %i.ci       ; 16 uses
  %i.cj = getelementptr i8, ptr %i.bx, i64 60
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %.not283.i = icmp eq i32 %i.ck, -1
  %.not284.i = icmp eq i32 %i.ck, %.097128
  %or.cond108 = select i1 %.not283.i, i1 true, i1 %.not284.i
  br i1 %or.cond108, label %bb.z, label %dissect_spdu_payload_signal.exit.thread103

dissect_spdu_payload_signal.exit.thread103:       ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.cs

bb.z:                                             ; preds = %bb.y
  %i.cl = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129)
  %i.cm = icmp ult i32 %i.cl, %spec.select.i
  br i1 %i.cm, label %dissect_spdu_payload_signal.exit.thread, label %bb.aa

dissect_spdu_payload_signal.exit.thread:          ; preds = %bb.z
  %i.cn = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129)
  %i.co = call ptr @proto_tree_add_expert(ptr noundef %i.f, ptr noundef %1, ptr noundef nonnull @ei_spdu_payload_truncated, ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129, i32 noundef %i.cn) ; 0 uses
  %i.cp = load ptr, ptr %i.ax, align 8
  call void @col_append_str(ptr noundef %i.cp, i32 noundef 25, ptr noundef nonnull @.str.326)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i8, ptr @spdu_deserializer_show_hidden, align 1, !range !6, !noundef !7
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = getelementptr i8, ptr %i.bx, i64 64
  %i.ct = load i8, ptr %i.cs, align 8, !range !6, !noundef !7
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load i32, ptr %i.cc, align 4
  br label %dissect_spdu_payload_signal.exit

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cw = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not285.i = icmp eq ptr %i.cw, null
  br i1 %.not285.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i32, ptr %i.cw, align 4
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cy = call ptr @proto_tree_add_expert(ptr noundef %i.f, ptr noundef %1, ptr noundef nonnull @ei_spdu_config_error, ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129, i32 noundef range(i32 -536870911, 536870913) %spec.select.i) ; 0 uses
  %i.cz = load ptr, ptr %i.ax, align 8
  call void @col_append_str(ptr noundef %i.cz, i32 noundef 25, ptr noundef nonnull @.str.327)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0265.i = phi i32 [ %i.cx, %bb.ae ], [ 0, %bb.af ] ; 8 uses
  %i.da = getelementptr i8, ptr %i.bx, i64 88
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not286.i = icmp eq ptr %i.db, null
  br i1 %.not286.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load i32, ptr %i.db, align 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dd = call ptr @proto_tree_add_expert(ptr noundef %i.f, ptr noundef %1, ptr noundef nonnull @ei_spdu_config_error, ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129, i32 noundef range(i32 -536870911, 536870913) %spec.select.i) ; 0 uses
  %i.de = load ptr, ptr %i.ax, align 8
  call void @col_append_str(ptr noundef %i.de, i32 noundef 25, ptr noundef nonnull @.str.327)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0264.i = phi i32 [ %i.dc, %bb.ah ], [ 0, %bb.ai ] ; 3 uses
  %i.df = getelementptr i8, ptr %i.bx, i64 20     ; 2 uses
  %i.dg = load i8, ptr %i.df, align 4, !range !6, !noundef !7
  %i.dh = trunc nuw i8 %i.dg to i1
  %.not6066.i.i = icmp samesign ugt i32 %.083129, %i.cf ; 2 uses
  br i1 %i.dh, label %.lr.ph69.i.i.a, label %.preheader61.i.i

.preheader61.i.i:                                 ; preds = %bb.aj
  br i1 %.not6066.i.i, label %dissect_shifted_and_shortened_uint.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader61.i.i
  %i.di = sub nuw nsw i32 8, %.082130             ; 2 uses
  br i1 %.not282.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.peel.next.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %i.dj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 0, 536870912) %i.cf)
  %6 = sub nuw nsw i32 8, %i.cg
  %i.dk = lshr i32 255, %6
  %i.dl = trunc nuw nsw i32 %i.dk to i8
  %.052.us.peel.i.i = and i8 %i.dj, %i.dl
  %i.dm = zext nneg i8 %.052.us.peel.i.i to i64
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.preheader.i.i, %.lr.ph.split.us.i.i
  %.05465.us.i.i = phi i64 [ %i.dv, %.lr.ph.split.us.i.i ], [ %i.dm, %.lr.ph.split.us.preheader.i.i ]
  %.05664.us.in.i.i = phi i32 [ %.05664.us.i.i, %.lr.ph.split.us.i.i ], [ %i.cf, %.lr.ph.split.us.preheader.i.i ]
  %.05664.us.i.i = add nsw i32 %.05664.us.in.i.i, -1 ; 4 uses
  %i.dn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.05664.us.i.i) ; 2 uses
  %i.do = icmp eq i32 %.05664.us.i.i, %.083129    ; 2 uses
  %i.dp = zext i8 %i.dn to i32
  %i.dq = lshr i32 %i.dp, %.082130
  %i.dr = trunc nuw i32 %i.dq to i8
  %.153.us.i.i = select i1 %i.do, i8 %i.dr, i8 %i.dn
  %.151.us.i.i = select i1 %i.do, i32 %i.di, i32 8
  %i.ds = zext nneg i32 %.151.us.i.i to i64
  %i.dt = shl i64 %.05465.us.i.i, %i.ds
  %i.du = zext i8 %.153.us.i.i to i64
  %i.dv = or i64 %i.dt, %i.du                     ; 2 uses
  %.not.us.not.i.i = icmp samesign ugt i32 %.05664.us.i.i, %.083129
  br i1 %.not.us.not.i.i, label %.lr.ph.split.us.i.i, label %dissect_shifted_and_shortened_uint.exit.i, !llvm.loop !32

.lr.ph69.i.i.a:                                   ; preds = %bb.aj
  br i1 %.not6066.i.i, label %dissect_shifted_and_shortened_uint.exit.i, label %.lr.ph69.split.us.preheader.i.i

.lr.ph69.split.us.preheader.i.i:                  ; preds = %.lr.ph69.i.i.a
  %7 = lshr i32 255, %.082130
  %8 = trunc nuw i32 %7 to i8
  %9 = sub nuw nsw i32 8, %i.cg
  %10 = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129)
  %.048.us.peel.i.i = and i8 %10, %8
  %i.dw = zext i8 %.048.us.peel.i.i to i64        ; 3 uses
  br i1 %.not282.i, label %.lr.ph69.split.us.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph69.split.us.preheader.i.i
  %.15767.i311.i = add nuw nsw i32 %.083129, 1    ; 2 uses
  %.not74.i312.i = icmp eq i32 %.15767.i311.i, %i.cf
  br i1 %.not74.i312.i, label %dissect_shifted_and_shortened_uint.exit.i, label %.lr.ph69.split.i.i

.lr.ph69.split.us.i.i:                            ; preds = %.lr.ph69.split.us.preheader.i.i, %.lr.ph69.split.us.i.i
  %.268.us.i.i = phi i64 [ %i.ef, %.lr.ph69.split.us.i.i ], [ %i.dw, %.lr.ph69.split.us.preheader.i.i ]
  %.15767.us.in.i.i = phi i32 [ %.15767.us.i.i, %.lr.ph69.split.us.i.i ], [ %.083129, %.lr.ph69.split.us.preheader.i.i ]
  %.15767.us.i.i = add nuw nsw i32 %.15767.us.in.i.i, 1 ; 3 uses
  %i.dx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.15767.us.i.i) ; 2 uses
  %i.dy = icmp eq i32 %.15767.us.i.i, %i.cf       ; 3 uses
  %i.dz = zext i8 %i.dx to i32
  %i.ea = lshr i32 %i.dz, %9
  %i.eb = trunc nuw nsw i32 %i.ea to i8
  %.149.us.i.i = select i1 %i.dy, i8 %i.eb, i8 %i.dx
  %.1.us.i.i = select i1 %i.dy, i32 %i.cg, i32 8
  %i.ec = zext nneg i32 %.1.us.i.i to i64
  %i.ed = shl i64 %.268.us.i.i, %i.ec
  %i.ee = zext i8 %.149.us.i.i to i64
  %i.ef = or i64 %i.ed, %i.ee                     ; 2 uses
  br i1 %i.dy, label %dissect_shifted_and_shortened_uint.exit.i, label %.lr.ph69.split.us.i.i, !llvm.loop !33

.lr.ph.split.peel.next.i.i:                       ; preds = %.lr.ph.i.i, %.lr.ph.split.peel.next.i.i
  %.05465.i.i = phi i64 [ %i.eo, %.lr.ph.split.peel.next.i.i ], [ 0, %.lr.ph.i.i ]
  %.05664.in.i.i = phi i32 [ %.05664.i.i, %.lr.ph.split.peel.next.i.i ], [ %i.cf, %.lr.ph.i.i ]
  %.05664.i.i = add nsw i32 %.05664.in.i.i, -1    ; 4 uses
  %i.eg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.05664.i.i) ; 2 uses
  %i.eh = icmp eq i32 %.05664.i.i, %.083129       ; 2 uses
  %i.ei = zext i8 %i.eg to i32
  %i.ej = lshr i32 %i.ei, %.082130
  %i.ek = trunc nuw i32 %i.ej to i8
  %.153.i.i = select i1 %i.eh, i8 %i.ek, i8 %i.eg
  %.151.i.i = select i1 %i.eh, i32 %i.di, i32 8
  %i.el = zext nneg i32 %.151.i.i to i64
  %i.em = shl i64 %.05465.i.i, %i.el
  %i.en = zext i8 %.153.i.i to i64
  %i.eo = or i64 %i.em, %i.en                     ; 2 uses
  %.not.not.i.i = icmp samesign ugt i32 %.05664.i.i, %.083129
  br i1 %.not.not.i.i, label %.lr.ph.split.peel.next.i.i, label %dissect_shifted_and_shortened_uint.exit.i, !llvm.loop !34

.lr.ph69.split.i.i:                               ; preds = %bb.ak, %.lr.ph69.split.i.i
  %.15767.i314.i = phi i32 [ %.15767.i.i, %.lr.ph69.split.i.i ], [ %.15767.i311.i, %bb.ak ] ; 2 uses
  %.268.i313.i = phi i64 [ %i.es, %.lr.ph69.split.i.i ], [ %i.dw, %bb.ak ]
  %i.ep = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.15767.i314.i)
  %i.eq = shl i64 %.268.i313.i, 8
  %i.er = zext i8 %i.ep to i64
  %i.es = or disjoint i64 %i.eq, %i.er            ; 2 uses
  %.15767.i.i = add nuw nsw i32 %.15767.i314.i, 1 ; 2 uses
  %.not74.i.i = icmp eq i32 %.15767.i.i, %i.cf
  br i1 %.not74.i.i, label %dissect_shifted_and_shortened_uint.exit.i, label %.lr.ph69.split.i.i

dissect_shifted_and_shortened_uint.exit.i:        ; preds = %.lr.ph.split.peel.next.i.i, %.lr.ph.split.us.i.i, %.lr.ph69.split.i.i, %.lr.ph69.split.us.i.i, %bb.ak, %.lr.ph69.i.i.a, %.preheader61.i.i
  %.4.i.i = phi i64 [ %i.ef, %.lr.ph69.split.us.i.i ], [ 0, %.lr.ph69.i.i.a ], [ %i.dw, %bb.ak ], [ 0, %.preheader61.i.i ], [ %i.dv, %.lr.ph.split.us.i.i ], [ %i.es, %.lr.ph69.split.i.i ], [ %i.eo, %.lr.ph.split.peel.next.i.i ] ; 23 uses
  %i.et = getelementptr i8, ptr %i.bx, i64 16
  %i.eu = load i32, ptr %i.et, align 8
  switch i32 %i.eu, label %proto_item_set_hidden.exit.i [
    i32 1, label %bb.al
    i32 2, label %bb.bb
    i32 3, label %bb.bg
    i32 4, label %bb.bk
    i32 5, label %bb.bn
    i32 6, label %bb.bq
  ]

bb.al:                                            ; preds = %dissect_shifted_and_shortened_uint.exit.i
  %i.ev = uitofp i64 %.4.i.i to double            ; 2 uses
  %i.ew = getelementptr i8, ptr %i.bx, i64 56
  %i.ex = load i8, ptr %i.ew, align 8, !range !6, !noundef !7
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = trunc i64 %.4.i.i to i32
  %spec.select = select i1 %i.ey, i32 %i.ez, i32 %.097128
  %i.fa = getelementptr i8, ptr %i.bx, i64 120
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  %.not290.i = icmp eq ptr %i.fb, null
  br i1 %.not290.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.al
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4            ; 4 uses
  %.not319.i = icmp eq i32 %i.fd, 0
  br i1 %.not319.i, label %.loopexit.i, label %.lr.ph317.i

.lr.ph317.i:                                      ; preds = %.preheader.i
  %i.fe = getelementptr i8, ptr %i.fb, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8            ; 3 uses
  %wide.trip.count.i = zext i32 %i.fd to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.fg = icmp eq i32 %i.fd, 1
  br i1 %i.fg, label %.epil.preheader, label %.lr.ph317.i.new

.lr.ph317.i.new:                                  ; preds = %.lr.ph317.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.am

bb.am:                                            ; preds = %bb.as, %.lr.ph317.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph317.i.new ], [ %indvars.iv.next.i.1, %bb.as ] ; 3 uses
  %.0266315.i = phi ptr [ null, %.lr.ph317.i.new ], [ %.1267.i.1, %bb.as ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph317.i.new ], [ %niter.next.1, %bb.as ]
  %i.fh = getelementptr [24 x i8], ptr %i.ff, i64 %indvars.iv.i ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8
  %.not292.i = icmp ugt i64 %i.fi, %.4.i.i
  br i1 %.not292.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fj = getelementptr i8, ptr %i.fh, i64 8
  %i.fk = load i64, ptr %i.fj, align 8
  %.not293.i = icmp ugt i64 %.4.i.i, %i.fk
  br i1 %.not293.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fl = getelementptr i8, ptr %i.fh, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.1267.i = phi ptr [ %i.fm, %bb.ao ], [ %.0266315.i, %bb.an ], [ %.0266315.i, %bb.am ] ; 2 uses
  %i.fn = getelementptr [24 x i8], ptr %i.ff, i64 %indvars.iv.i ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 24
  %i.fp = load i64, ptr %i.fo, align 8
  %.not292.i.1 = icmp ugt i64 %i.fp, %.4.i.i
  br i1 %.not292.i.1, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fq = getelementptr i8, ptr %i.fn, i64 32
  %i.fr = load i64, ptr %i.fq, align 8
  %.not293.i.1 = icmp ugt i64 %.4.i.i, %i.fr
  br i1 %.not293.i.1, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fs = getelementptr i8, ptr %i.fn, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1267.i.1 = phi ptr [ %i.ft, %bb.ar ], [ %.1267.i, %bb.aq ], [ %.1267.i, %bb.ap ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.am, !llvm.loop !35

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.as
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph317.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph317.i ], [ %indvars.iv.next.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.0266315.i.epil.init = phi ptr [ null, %.lr.ph317.i ], [ %.1267.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod228 = trunc i32 %i.fd to i1
  call void @llvm.assume(i1 %lcmp.mod228)
  %i.fu = getelementptr [24 x i8], ptr %i.ff, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.fv = load i64, ptr %i.fu, align 8
  %.not292.i.epil = icmp ugt i64 %i.fv, %.4.i.i
  br i1 %.not292.i.epil, label %.loopexit.i, label %bb.at

bb.at:                                            ; preds = %.epil.preheader
  %i.fw = getelementptr i8, ptr %i.fu, i64 8
  %i.fx = load i64, ptr %i.fw, align 8
  %.not293.i.epil = icmp ugt i64 %.4.i.i, %i.fx
  br i1 %.not293.i.epil, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = getelementptr i8, ptr %i.fu, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.au, %bb.at, %.epil.preheader, %.preheader.i, %bb.al
  %.2268.i = phi ptr [ null, %bb.al ], [ null, %.preheader.i ], [ %.1267.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %i.fz, %bb.au ], [ %.0266315.i.epil.init, %bb.at ], [ %.0266315.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.ga = getelementptr i8, ptr %i.bx, i64 32
  %i.gb = load i8, ptr %i.ga, align 8, !range !6, !noundef !7
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.loopexit.i
  %i.gd = getelementptr i8, ptr %i.bx, i64 40
  %i.ge = load double, ptr %i.gd, align 8
  %i.gf = getelementptr i8, ptr %i.bx, i64 48
  %i.gg = load double, ptr %i.gf, align 8
  %i.gh = call double @llvm.fmuladd.f64(double %i.ge, double %i.ev, double %i.gg) ; 2 uses
  %i.gi = call ptr @proto_tree_add_double(ptr noundef %i.f, i32 noundef %.0265.i, ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129, i32 noundef %spec.select.i, double noundef %i.gh)
  br label %bb.ax

bb.aw:                                            ; preds = %.loopexit.i
  %i.gj = call ptr @proto_tree_add_uint64(ptr noundef %i.f, i32 noundef %.0265.i, ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129, i32 noundef %spec.select.i, i64 noundef %.4.i.i)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0270.i = phi ptr [ %i.gi, %bb.av ], [ %i.gj, %bb.aw ] ; 3 uses
  %.0261.i = phi double [ %i.gh, %bb.av ], [ %i.ev, %bb.aw ]
  %.not291.i = icmp eq ptr %.2268.i, null
  br i1 %.not291.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0270.i, ptr noundef nonnull @.str.323, i64 noundef %.4.i.i, ptr noundef nonnull %.2268.i)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0270.i, ptr noundef nonnull @.str.324, i64 noundef %.4.i.i)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gk = load i32, ptr @ett_spdu_signal, align 4
  %i.gl = call ptr @proto_item_add_subtree(ptr noundef %.0270.i, i32 noundef %i.gk) ; 2 uses
  %i.gm = call ptr @proto_tree_add_uint64(ptr noundef %i.gl, i32 noundef %.0264.i, ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129, i32 noundef %spec.select.i, i64 noundef %.4.i.i) ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gm, ptr noundef nonnull @.str.325, i64 noundef %.4.i.i)
  br label %bb.bt

bb.bb:                                            ; preds = %dissect_shifted_and_shortened_uint.exit.i
  %i.gn = load i32, ptr %i.cc, align 4            ; 3 uses
  %i.go = and i32 %i.gn, -65
  %or.cond.i.i = icmp eq i32 %i.go, 0
  br i1 %or.cond.i.i, label %ws_sign_ext64.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gp = add i32 %i.gn, -1
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl nuw i64 1, %i.gq
  %i.gs = and i64 %i.gr, %.4.i.i
  %.not.i298.i = icmp eq i64 %i.gs, 0
  %i.gt = zext nneg i32 %i.gn to i64
  %i.gu = shl nsw i64 -1, %i.gt
  %i.gv = select i1 %.not.i298.i, i64 0, i64 %i.gu
  %.010.i.i = or i64 %i.gv, %.4.i.i
  br label %ws_sign_ext64.exit.i

ws_sign_ext64.exit.i:                             ; preds = %bb.bc, %bb.bb
  %.0.i.i = phi i64 [ %.010.i.i, %bb.bc ], [ %.4.i.i, %bb.bb ] ; 3 uses
  %i.gw = sitofp i64 %.0.i.i to double            ; 2 uses
  %i.gx = getelementptr i8, ptr %i.bx, i64 56
  %i.gy = load i8, ptr %i.gx, align 8, !range !6, !noundef !7
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = trunc i64 %.0.i.i to i32
  %spec.select109 = select i1 %i.gz, i32 %i.ha, i32 %.097128
  %i.hb = getelementptr i8, ptr %i.bx, i64 32
  %i.hc = load i8, ptr %i.hb, align 8, !range !6, !noundef !7
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %ws_sign_ext64.exit.i
  %i.he = getelementptr i8, ptr %i.bx, i64 40
  %i.hf = load double, ptr %i.he, align 8
  %i.hg = getelementptr i8, ptr %i.bx, i64 48
  %i.hh = load double, ptr %i.hg, align 8
  %i.hi = call double @llvm.fmuladd.f64(double %i.hf, double %i.gw, double %i.hh) ; 2 uses
  %i.hj = call ptr @proto_tree_add_double(ptr noundef %i.f, i32 noundef %.0265.i, ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129, i32 noundef %spec.select.i, double noundef %i.hi)
  br label %bb.bf

bb.be:                                            ; preds = %ws_sign_ext64.exit.i
  %i.hk = call ptr @proto_tree_add_int64(ptr noundef %i.f, i32 noundef %.0265.i, ptr noundef %0, i32 noundef range(i32 0, 536870912) %.083129, i32 noundef %spec.select.i, i64 noundef %.0.i.i)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.1271.i = phi ptr [ %i.hj, %bb.bd ], [ %i.hk, %bb.be ] ; 2 uses
  %.1262.i = phi double [ %i.hi, %bb.bd ], [ %i.gw, %bb.be ]
end_hunk_0
