Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-iso7816?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
begin_hunk_0_@dissect_iso7816:bb.a
  %.pre.i38 = load i32, ptr %i.fd, align 4        ; 2 uses
  br i1 %i.fi, label %.thread.i, label %bb.as

.thread.i:                                        ; preds = %bb.ar
  store i32 %.pre.i38, ptr %i.fg, align 4
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fj = icmp eq i32 %i.fh, %.pre.i38
  br i1 %i.fj, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as, %.thread.i
  %i.fk = getelementptr i8, ptr %i.ff, i64 8
  %i.fl = load i8, ptr %i.fk, align 8
  %i.fm = zext i8 %i.fl to i32
  %i.fn = tail call ptr @val_to_str_const(i32 noundef %i.fm, ptr noundef nonnull @iso7816_ins, ptr noundef nonnull @.str.162) ; 2 uses
  %i.fo = load i32, ptr @hf_iso7816_resp_to, align 4
  %i.fp = load i32, ptr %i.ff, align 8            ; 2 uses
  %i.fq = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.m, i32 noundef %i.fo, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %i.fp, ptr noundef nonnull @.str.175, i32 noundef %i.fp, ptr noundef %i.fn) ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i40, label %proto_item_set_generated.exit.i42, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fr = getelementptr i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not5.i.i41 = icmp eq ptr %i.fs, null
  br i1 %.not5.i.i41, label %proto_item_set_generated.exit.i42, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = getelementptr i8, ptr %i.fs, i64 28     ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = or i32 %i.fu, 2
  store i32 %i.fv, ptr %i.ft, align 4
  br label %proto_item_set_generated.exit.i42

proto_item_set_generated.exit.i42:                ; preds = %bb.av, %bb.au, %bb.at
  %i.fw = load ptr, ptr %i.f, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.fw, i32 noundef 25, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177, ptr noundef %i.fn)
  br label %bb.aw

bb.aw:                                            ; preds = %proto_item_set_generated.exit.i42, %bb.as
  %i.fx = getelementptr i8, ptr %i.ff, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  %.not45.i = icmp eq ptr %i.fy, null
  br i1 %.not45.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fz = tail call i32 @call_dissector(ptr noundef nonnull %i.fy, ptr noundef %0, ptr noundef %1, ptr noundef %i.m) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.aq, %.thread
  %i.ga = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.gb = add i32 %i.ga, -2                       ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gd = load i32, ptr @hf_iso7816_body, align 4
  %i.ge = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.gd, ptr noundef %0, i32 noundef 0, i32 noundef %i.gb, i32 noundef 0) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i = phi i32 [ %i.gb, %bb.az ], [ 0, %bb.ay ] ; 5 uses
  %i.gf = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0.i)
  %i.gg = icmp ugt i32 %i.gf, 1
  br i1 %i.gg, label %bb.bb, label %dissect_iso7816_resp_apdu.exit

bb.bb:                                            ; preds = %bb.ba
  %i.gh = load i32, ptr @hf_iso7816_sw1, align 4
  %i.gi = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.gh, ptr noundef %0, i32 noundef %.0.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gj = add nuw i32 %.0.i, 1
  %i.gk = load i32, ptr @hf_iso7816_sw2, align 4
  %i.gl = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.gj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gm = add nuw i32 %.0.i, 2
  br label %dissect_iso7816_resp_apdu.exit

dissect_iso7816_resp_apdu.exit:                   ; preds = %bb.bb, %bb.ba, %bb.a, %dissect_iso7816_cmd_apdu.exit, %bb.ap, %bb.b
  %.029 = phi i32 [ 0, %bb.a ], [ %.081.i, %dissect_iso7816_cmd_apdu.exit ], [ %i.ez, %bb.ap ], [ 0, %bb.b ], [ %i.gm, %bb.bb ], [ %.0.i, %bb.ba ]
  ret i32 %.029
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new_autoreset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol_in_name_only(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_iso7816_atr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 2
  br i1 %i.b, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.d = and i8 %i.c, -5
  %or.cond.not = icmp eq i8 %i.d, 59
  br i1 %or.cond.not, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @proto_iso7816_atr, align 4
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.178) ; 2 uses
  %i.g = load i32, ptr @ett_iso7816_atr, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 9 uses
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @col_append_sep_str(ptr noundef %i.j, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.179)
  %i.k = load i32, ptr @hf_iso7816_atr_init_char, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.t, %bb.c
  %.0124 = phi i32 [ 1, %bb.c ], [ %.3, %bb.t ]   ; 10 uses
  %.0123 = phi i32 [ 0, %bb.c ], [ %i.y, %bb.t ]  ; 3 uses
  %.0122 = phi i8 [ 0, %bb.c ], [ %.1, %bb.t ]
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0124) ; 3 uses
  %i.n = icmp eq i32 %.0123, 0                    ; 3 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr @hf_iso7816_atr_t0, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.o, ptr noundef %0, i32 noundef %.0124, i32 noundef 1, i32 noundef 0)
  %.pre = zext i8 %i.m to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = load i32, ptr @hf_iso7816_atr_td, align 4
  %i.r = zext i8 %i.m to i32                      ; 3 uses
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.h, i32 noundef %i.q, ptr noundef %0, i32 noundef %.0124, i32 noundef 1, i32 noundef %i.r, ptr noundef nonnull @.str.180, i32 noundef %.0123, i32 noundef %i.r)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %hf_iso7816_atr_t.sink = phi ptr [ @hf_iso7816_atr_t, %bb.f ], [ @hf_iso7816_atr_k, %bb.e ]
  %.pre-phi = phi i32 [ %i.r, %bb.f ], [ %.pre, %bb.e ] ; 4 uses
  %.0 = phi ptr [ %i.s, %bb.f ], [ %i.p, %bb.e ]
  %i.t = load i32, ptr @ett_iso7816_atr_td, align 4
  %i.u = tail call ptr @proto_item_add_subtree(ptr noundef %.0, i32 noundef %i.t) ; 5 uses
  %i.v = load i32, ptr @hf_iso7816_atr_next_ta_present, align 4
  %i.w = and i32 %.pre-phi, 16                    ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = add i32 %.0123, 1                        ; 12 uses
  %.not = icmp eq i32 %i.w, 0                     ; 2 uses
  %i.z = select i1 %.not, ptr @.str.183, ptr @.str.182 ; 2 uses
  %i.aa = tail call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_boolean_format(ptr noundef %i.u, i32 noundef %i.v, ptr noundef %0, i32 noundef %.0124, i32 noundef 1, i64 noundef %i.x, ptr noundef nonnull @.str.181, i32 noundef %i.y, ptr noundef nonnull %i.z) ; 0 uses
  %i.ab = load i32, ptr @hf_iso7816_atr_next_tb_present, align 4
  %i.ac = and i32 %.pre-phi, 32                   ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %.not129 = icmp eq i32 %i.ac, 0                 ; 2 uses
  %i.ae = select i1 %.not129, ptr @.str.183, ptr @.str.182 ; 2 uses
  %i.af = tail call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_boolean_format(ptr noundef %i.u, i32 noundef %i.ab, ptr noundef %0, i32 noundef %.0124, i32 noundef 1, i64 noundef %i.ad, ptr noundef nonnull @.str.184, i32 noundef %i.y, ptr noundef nonnull %i.ae) ; 0 uses
  %i.ag = load i32, ptr @hf_iso7816_atr_next_tc_present, align 4
  %i.ah = and i32 %.pre-phi, 64                   ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %.not130 = icmp eq i32 %i.ah, 0                 ; 2 uses
  %i.aj = select i1 %.not130, ptr @.str.183, ptr @.str.182 ; 2 uses
  %i.ak = tail call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_boolean_format(ptr noundef %i.u, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.0124, i32 noundef 1, i64 noundef %i.ai, ptr noundef nonnull @.str.185, i32 noundef %i.y, ptr noundef nonnull %i.aj) ; 0 uses
  %i.al = load i32, ptr @hf_iso7816_atr_next_td_present, align 4
  %i.am = and i32 %.pre-phi, 128                  ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %.not131 = icmp eq i32 %i.am, 0                 ; 2 uses
  %i.ao = select i1 %.not131, ptr @.str.183, ptr @.str.182 ; 2 uses
  %i.ap = tail call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_boolean_format(ptr noundef %i.u, i32 noundef %i.al, ptr noundef %0, i32 noundef %.0124, i32 noundef 1, i64 noundef %i.an, ptr noundef nonnull @.str.186, i32 noundef %i.y, ptr noundef nonnull %i.ao) ; 0 uses
  %i.aq = load ptr, ptr %i.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.aq, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.187, i32 noundef %i.y, ptr noundef nonnull %i.z, i32 noundef %i.y, ptr noundef nonnull %i.ae, i32 noundef %i.y, ptr noundef nonnull %i.aj, i32 noundef %i.y, ptr noundef nonnull %i.ao)
  %i.ar = and i8 %i.m, 15
  %.1 = select i1 %i.n, i8 %i.ar, i8 %.0122       ; 3 uses
  %i.as = load i32, ptr %hf_iso7816_atr_t.sink, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.as, ptr noundef %0, i32 noundef %.0124, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = add i32 %.0124, 1                       ; 7 uses
  br i1 %.not, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.au)
  %i.aw = load i32, ptr @hf_iso7816_atr_ta, align 4
  %i.ax = zext i8 %i.av to i32                    ; 2 uses
  %i.ay = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.h, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef %i.ax, ptr noundef nonnull @.str.190, i32 noundef %i.y, i32 noundef %i.ax)
  %i.az = load i32, ptr @ett_iso7816_atr_ta, align 4
  %i.ba = tail call ptr @proto_item_add_subtree(ptr noundef %i.ay, i32 noundef %i.az) ; 2 uses
  br i1 %i.n, label %bb.i, label %dissect_iso7816_atr_ta.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.au) ; 3 uses
  %i.bc = lshr i8 %i.bb, 4                        ; 2 uses
  %i.bd = zext nneg i8 %i.bc to i32               ; 2 uses
  %i.be = icmp ult i8 %i.bb, 32
  br i1 %i.be, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp ult i8 %i.bb, 112
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = mul nuw nsw i32 %i.bd, 372
  %i.bh = add nuw nsw i32 %i.bg, 65164
  %4 = and i32 %i.bh, 65532
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %switch.tableidx = add nsw i8 %i.bc, -9         ; 2 uses
  %i.bi = icmp ult i8 %switch.tableidx, 5
  br i1 %i.bi, label %switch.lookup, label %FI_to_Fi.exit.i

switch.lookup:                                    ; preds = %bb.l
  %i.bj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.dissect_iso7816_atr, i64 %i.bj
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.m

bb.m:                                             ; preds = %switch.lookup, %bb.k, %bb.i
  %.0.i.ph.i = phi i32 [ %switch.ext, %switch.lookup ], [ 372, %bb.i ], [ %4, %bb.k ] ; 2 uses
  %i.bk = load i32, ptr @hf_iso7816_atr_ta1_fi, align 4
  %i.bl = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.ba, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef %.0.i.ph.i, ptr noundef nonnull @.str.191, i32 noundef %.0.i.ph.i, i32 noundef %i.bd) ; 0 uses
  br label %FI_to_Fi.exit.i

FI_to_Fi.exit.i:                                  ; preds = %bb.l, %bb.m
  %i.bm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.au)
  %i.bn = and i8 %i.bm, 15                        ; 4 uses
  %i.bo = add nsw i8 %i.bn, -1
  %or.cond.i.i = icmp ult i8 %i.bo, 6
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %FI_to_Fi.exit.i
  %i.bp = zext nneg i8 %i.bn to i32
  %i.bq = add nsw i32 %i.bp, -1
  %i.br = shl nuw nsw i32 1, %i.bq
  br label %DI_to_Di.exit.thread.i

bb.o:                                             ; preds = %FI_to_Fi.exit.i
  switch i8 %i.bn, label %dissect_iso7816_atr_ta.exit [
    i8 8, label %DI_to_Di.exit.thread.i
    i8 9, label %DI_to_Di.exit.thread.fold.split.i
  ]

DI_to_Di.exit.thread.fold.split.i:                ; preds = %bb.o
  br label %DI_to_Di.exit.thread.i

DI_to_Di.exit.thread.i:                           ; preds = %DI_to_Di.exit.thread.fold.split.i, %bb.o, %bb.n
  %.0.i316.i = phi i32 [ 12, %bb.o ], [ %i.br, %bb.n ], [ 20, %DI_to_Di.exit.thread.fold.split.i ] ; 2 uses
  %i.bs = load i32, ptr @hf_iso7816_atr_ta1_di, align 4
  %i.bt = zext nneg i8 %i.bn to i32
  %i.bu = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.ba, i32 noundef %i.bs, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef %.0.i316.i, ptr noundef nonnull @.str.192, i32 noundef %.0.i316.i, i32 noundef %i.bt) ; 0 uses
  br label %dissect_iso7816_atr_ta.exit

dissect_iso7816_atr_ta.exit:                      ; preds = %bb.h, %bb.o, %DI_to_Di.exit.thread.i
  %i.bv = add i32 %.0124, 2
  br label %bb.p

bb.p:                                             ; preds = %dissect_iso7816_atr_ta.exit, %bb.g
  %.1125 = phi i32 [ %i.bv, %dissect_iso7816_atr_ta.exit ], [ %i.au, %bb.g ] ; 4 uses
  br i1 %.not129, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1125)
  %i.bx = load i32, ptr @hf_iso7816_atr_tb, align 4
  %i.by = zext i8 %i.bw to i32                    ; 2 uses
  %i.bz = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.h, i32 noundef %i.bx, ptr noundef %0, i32 noundef %.1125, i32 noundef 1, i32 noundef %i.by, ptr noundef nonnull @.str.188, i32 noundef %i.y, i32 noundef %i.by) ; 0 uses
  %i.ca = add i32 %.1125, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2 = phi i32 [ %i.ca, %bb.q ], [ %.1125, %bb.p ] ; 4 uses
  br i1 %.not130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2)
  %i.cc = load i32, ptr @hf_iso7816_atr_tc, align 4
  %i.cd = zext i8 %i.cb to i32                    ; 2 uses
  %i.ce = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.h, i32 noundef %i.cc, ptr noundef %0, i32 noundef %.2, i32 noundef 1, i32 noundef %i.cd, ptr noundef nonnull @.str.189, i32 noundef %i.y, i32 noundef %i.cd) ; 0 uses
  %i.cf = add i32 %.2, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.3 = phi i32 [ %i.cf, %bb.s ], [ %.2, %bb.r ]  ; 4 uses
  br i1 %.not131, label %bb.u, label %bb.d, !llvm.loop !6

bb.u:                                             ; preds = %bb.t
  %.not132 = icmp eq i8 %.1, 0
  br i1 %.not132, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = zext nneg i8 %.1 to i32                 ; 2 uses
  %i.ch = load i32, ptr @hf_iso7816_atr_hist_bytes, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.ch, ptr noundef %0, i32 noundef %.3, i32 noundef %i.cg, i32 noundef 0) ; 0 uses
  %i.cj = add i32 %.3, %i.cg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.4 = phi i32 [ %i.cj, %bb.v ], [ %.3, %bb.u ]  ; 6 uses
  %i.ck = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.4) ; 3 uses
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cm = load i32, ptr @hf_iso7816_atr_tck, align 4
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.cm, ptr noundef %0, i32 noundef %.4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.co = add i32 %.4, 1
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cp = icmp sgt i32 %i.ck, 1
  br i1 %i.cp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cq = tail call ptr @proto_tree_add_expert(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull @ei_iso7816_atr_tck_not1, ptr noundef %0, i32 noundef %.4, i32 noundef %i.ck) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.5 = phi i32 [ %i.co, %bb.x ], [ %.4, %bb.z ], [ %.4, %bb.y ] ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.f, i32 noundef %.5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.a, %bb.aa
  %.0126 = phi i32 [ %.5, %bb.aa ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0126
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_decode_as_next_proto(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_iso7816() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @iso7816_handle, align 8
  tail call void @dissector_add_for_decode_as(ptr noundef nonnull @.str.88, ptr noundef %i.a)
  %i.b = load ptr, ptr @iso7816_handle, align 8
  tail call void @dissector_add_for_decode_as(ptr noundef nonnull @.str.89, ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_payload_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_fstr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_le(ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
