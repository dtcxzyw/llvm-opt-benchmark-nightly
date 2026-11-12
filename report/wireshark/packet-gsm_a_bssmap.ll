Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gsm_a_bssmap?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@bssmap_dissect_cause:bb.a
  %i.d = zext i8 %i.a to i32                      ; 3 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.d, 15
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @hf_gsm_a_bssmap_cause_class, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_gsm_a_bssmap_national_cause, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.i, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = add i32 %3, 1
  %i.l = load i32, ptr @hf_gsm_a_bssmap_cause_value, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.k, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = add i32 %3, 2                            ; 2 uses
  %.not57 = icmp eq ptr %5, null
  br i1 %.not57, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sext i32 %6 to i64
  %i.p = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef %i.o, i32 noundef 2, i64 noundef -1, ptr noundef @.str.93) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.q = load i32, ptr @hf_gsm_a_bssmap_cause16, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.q, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = add i32 %3, 2
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.t = load i32, ptr @hf_gsm_a_bssmap_cause, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.t, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = add i32 %3, 1                            ; 2 uses
  %.not56 = icmp eq ptr %5, null
  br i1 %.not56, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = sext i32 %6 to i64
  %i.x = tail call ptr @rval_to_str_const(i32 noundef %i.d, ptr noundef @gsm_a_bssap_cause_rvals, ptr noundef @.str.95)
  %i.y = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef %i.w, i32 noundef 2, i64 noundef -1, ptr noundef @.str.94, i32 noundef %i.d, ptr noundef %i.x) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.n, %bb.d ], [ %i.n, %bb.c ], [ %i.s, %bb.e ], [ %i.v, %bb.g ], [ %i.v, %bb.f ] ; 3 uses
  %i.z = sub i32 %.0, %3                          ; 3 uses
  %i.aa = icmp ugt i32 %4, %i.z
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = sub nuw i32 %4, %i.z                    ; 2 uses
  %i.ac = tail call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef @ei_gsm_a_bssmap_extraneous_data, ptr noundef %0, i32 noundef %.0, i32 noundef %i.ab) ; 0 uses
  %i.ad = add i32 %i.ab, %.0
  %.pre = sub i32 %i.ad, %3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi i32 [ %.pre, %bb.i ], [ %i.z, %bb.h ]
  %i.ae = trunc i32 %.pre-phi to i16
  ret i16 %i.ae
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @rval_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden zeroext i16 @be_chan_type(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = and i8 %i.a, 15
  %i.c = load i32, ptr @hf_gsm_a_bssmap_spare_bits, align 4
  %i.d = shl i32 %3, 3
  %i.e = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.d, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_gsm_a_bssmap_speech_data_ind, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %6 to i64
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.j = and i8 %i.i, 15
  %i.k = zext nneg i8 %i.j to i32
  %i.l = tail call ptr @val_to_str_const(i32 noundef %i.k, ptr noundef @gsm_a_bssap_speech_data_ind_vals, ptr noundef @.str.95)
  %i.m = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef %i.h, i32 noundef 2, i64 noundef -1, ptr noundef @.str.96, ptr noundef %i.l) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = add i32 %3, 1                            ; 6 uses
  %i.o = icmp ult i32 %4, 2
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i32 %4 to i16
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.n) ; 4 uses
  switch i8 %i.b, label %bb.w [
    i8 4, label %bb.f
    i8 1, label %bb.f
    i8 2, label %bb.h
    i8 3, label %bb.u
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.r = load i32, ptr @hf_gsm_a_bssmap_channel_rate_and_type, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = icmp eq i32 %4, 2
  br i1 %i.t, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.u = add i32 %3, 2
  %i.v = sub i32 0, %4
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.g
  %.0175 = phi i32 [ %i.aa, %bb.g ], [ %i.u, %.preheader ] ; 3 uses
  %i.w = load i32, ptr @hf_gsm_a_bssmap_chan_type_extension, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.w, ptr noundef %0, i32 noundef %.0175, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_gsm_a_bssmap_perm_speech_v_ind, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.y, ptr noundef %0, i32 noundef %.0175, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %.0175, 1                       ; 3 uses
  %.neg = sub i32 %3, %i.aa
  %.not189 = icmp eq i32 %.neg, %i.v
  br i1 %.not189, label %.loopexit, label %bb.g, !llvm.loop !7

bb.h:                                             ; preds = %bb.e
  %i.ab = zext i8 %i.q to i32                     ; 2 uses
  %i.ac = and i8 %i.q, -8                         ; 2 uses
  %or.cond5 = icmp eq i8 %i.ac, 32
  br i1 %or.cond5, label %.thread194, label %bb.i

.thread194:                                       ; preds = %bb.h
  %i.ad = add nsw i8 %i.q, -31
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %or.cond8 = icmp ne i8 %i.ac, 48
  %i.ae = add nsw i8 %i.q, -47                    ; 2 uses
  %.not186 = icmp eq i8 %i.ae, 0
  %or.cond = select i1 %or.cond8, i1 true, i1 %.not186
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread194
  %.0176197 = phi i8 [ %i.ad, %.thread194 ], [ %i.ae, %bb.i ]
  %i.af = zext nneg i8 %.0176197 to i32
  %i.ag = load i32, ptr @hf_gsm_a_bssmap_data_channel_rate_and_type, align 4
  %i.ah = tail call ptr @rval_to_str_const(i32 noundef %i.ab, ptr noundef @gsm_a_bssap_channel_rate_and_type_rvals, ptr noundef @.str.28)
  %i.ai = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef %i.ab, ptr noundef @.str.97, i32 noundef %i.af, ptr noundef %i.ah) ; 0 uses
  br label %bb.k

.thread:                                          ; preds = %bb.i
  %i.aj = load i32, ptr @hf_gsm_a_bssmap_data_channel_rate_and_type, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %.not186192 = phi i1 [ true, %.thread ], [ false, %bb.j ] ; 4 uses
  %i.al = add i32 %3, 2                           ; 4 uses
  %i.am = icmp eq i32 %4, 2
  br i1 %i.am, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.al) ; 2 uses
  %i.ao = load i32, ptr @hf_gsm_a_bssmap_chan_type_extension, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_gsm_a_bssmap_transparent_service, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.as = zext i8 %i.an to i32                    ; 2 uses
  %i.at = and i32 %i.as, 64
  %.not188 = icmp eq i32 %i.at, 0                 ; 2 uses
  %i.au = and i32 %i.as, 63                       ; 4 uses
  br i1 %.not186192, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not188, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = icmp samesign ult i32 %i.au, 53
  br i1 %i.av, label %switch.lookup, label %bb.s

bb.o:                                             ; preds = %bb.m
  %switch.tableidx = add nsw i32 %i.au, -16       ; 2 uses
  %i.aw = icmp ult i32 %switch.tableidx, 43
  br i1 %i.aw, label %switch.lookup206, label %bb.s

bb.p:                                             ; preds = %bb.l
  %switch.tableidx213 = add nsw i32 %i.au, -16    ; 4 uses
  br i1 %.not188, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp ult i32 %switch.tableidx213, 7
  br i1 %i.ax, label %switch.lookup210, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ay = icmp ult i32 %switch.tableidx213, 16
  br i1 %i.ay, label %switch.lookup214, label %bb.s

switch.lookup:                                    ; preds = %bb.n
  %7 = zext nneg i32 %i.au to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.be_chan_type, i64 %7
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.s

switch.lookup206:                                 ; preds = %bb.o
  %8 = zext nneg i32 %switch.tableidx to i64
  %switch.gep207 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.be_chan_type.1, i64 %8
  %switch.load208 = load ptr, ptr %switch.gep207, align 8
  br label %bb.s

switch.lookup210:                                 ; preds = %bb.q
  %9 = zext nneg i32 %switch.tableidx213 to i64
  %switch.gep211 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.be_chan_type.2, i64 %9
  %switch.load212 = load ptr, ptr %switch.gep211, align 8
  br label %bb.s

switch.lookup214:                                 ; preds = %bb.r
  %i.az = zext nneg i32 %switch.tableidx213 to i64
  %switch.gep215 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.be_chan_type.3, i64 %i.az
  %switch.load216 = load ptr, ptr %switch.gep215, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.q, %bb.r, %switch.lookup214, %switch.lookup210, %switch.lookup206, %switch.lookup
  %.0 = phi ptr [ %switch.load216, %switch.lookup214 ], [ %switch.load208, %switch.lookup206 ], [ %switch.load, %switch.lookup ], [ %switch.load212, %switch.lookup210 ], [ @.str.28, %bb.r ], [ @.str.28, %bb.q ], [ @.str.28, %bb.o ], [ @.str.28, %bb.n ]
  %i.ba = load i32, ptr @hf_gsm_a_bssmap_rate, align 4
  %i.bb = and i8 %i.an, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef %i.bc, ptr noundef @.str.127, ptr noundef nonnull %.0) ; 0 uses
  %i.be = icmp ult i32 %4, 4
  br i1 %i.be, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add i32 %3, 3                           ; 5 uses
  %i.bg = load i32, ptr @hf_gsm_a_bssmap_chan_type_extension, align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.bf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bi = load i32, ptr @hf_gsm_a_bssmap_spare_bits, align 4
  %i.bj = shl i32 %i.bf, 3                        ; 2 uses
  %i.bk = or disjoint i32 %i.bj, 1
  %i.bl = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bk, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bm = or disjoint i32 %i.bj, 6
  %hf_gsm_a_bssmap_tch_14_5kb.val = load i32, ptr @hf_gsm_a_bssmap_tch_14_5kb, align 4
  %hf_gsm_a_bssmap_tch_14_5_14_4kb.val = load i32, ptr @hf_gsm_a_bssmap_tch_14_5_14_4kb, align 4
  %i.bn = select i1 %.not186192, i32 %hf_gsm_a_bssmap_tch_14_5kb.val, i32 %hf_gsm_a_bssmap_tch_14_5_14_4kb.val
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = load i32, ptr @hf_gsm_a_bssmap_spare_bits, align 4
  %i.bq = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.bp, ptr noundef %0, i32 noundef %i.bm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %hf_gsm_a_bssmap_tch_12kb.val = load i32, ptr @hf_gsm_a_bssmap_tch_12kb, align 4
  %hf_gsm_a_bssmap_tch_12_9kb.val = load i32, ptr @hf_gsm_a_bssmap_tch_12_9kb, align 4
  %i.br = select i1 %.not186192, i32 %hf_gsm_a_bssmap_tch_12kb.val, i32 %hf_gsm_a_bssmap_tch_12_9kb.val
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %hf_gsm_a_bssmap_tch_6kb.val = load i32, ptr @hf_gsm_a_bssmap_tch_6kb, align 4
  %hf_gsm_a_bssmap_tch_6_4_8kb.val = load i32, ptr @hf_gsm_a_bssmap_tch_6_4_8kb, align 4
  %i.bt = select i1 %.not186192, i32 %hf_gsm_a_bssmap_tch_6kb.val, i32 %hf_gsm_a_bssmap_tch_6_4_8kb.val
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.bf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bv = add i32 %3, 4
  br label %.loopexit

bb.u:                                             ; preds = %bb.e
  %i.bw = load i32, ptr @hf_gsm_a_bssmap_data_channel_rate_and_type, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.by = icmp eq i32 %4, 2
  br i1 %i.by, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = add i32 %3, 2
  %i.ca = load i32, ptr @hf_gsm_a_bssmap_spare, align 4
  %i.cb = add i32 %4, -2
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.cb, i32 noundef 0) ; 0 uses
  %i.cd = add i32 %4, %3
  br label %.loopexit

bb.w:                                             ; preds = %bb.e
  %i.ce = load i32, ptr @hf_gsm_a_bssmap_unknown_format, align 4
  %i.cf = add i32 %4, -1
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ce, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.cf, i32 noundef 0) ; 0 uses
  %i.ch = add i32 %4, %3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.t, %bb.w, %bb.v
  %.1 = phi i32 [ %i.ch, %bb.w ], [ %i.bv, %bb.t ], [ %i.cd, %bb.v ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ci = sub i32 %.1, %3                         ; 3 uses
  %i.cj = icmp ugt i32 %4, %i.ci
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  %i.ck = sub nuw i32 %4, %i.ci                   ; 2 uses
  %i.cl = tail call ptr @proto_tree_add_expert(ptr noundef %1, ptr noundef %2, ptr noundef @ei_gsm_a_bssmap_extraneous_data, ptr noundef %0, i32 noundef %.1, i32 noundef %i.ck) ; 0 uses
  %i.cm = add i32 %i.ck, %.1
  %.pre = sub i32 %i.cm, %3
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %.pre-phi = phi i32 [ %.pre, %bb.x ], [ %i.ci, %.loopexit ]
  %i.cn = trunc i32 %.pre-phi to i16
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.s, %bb.k, %bb.f, %bb.y, %bb.d
  %.0177 = phi i16 [ %i.p, %bb.d ], [ 3, %bb.s ], [ %i.cn, %bb.y ], [ 2, %bb.f ], [ 2, %bb.k ], [ 2, %bb.u ]
  ret i16 %.0177
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i16 @be_cell_id_type(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %5, null                    ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %5, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i8 %7, label %bb.s [
    i8 2, label %bb.o
    i8 9, label %.thread
    i8 10, label %bb.e
    i8 5, label %bb.e
    i8 1, label %bb.e
    i8 11, label %bb.d
    i8 0, label %.sink.split
    i8 4, label %.sink.split
    i8 8, label %.sink.split
    i8 12, label %.sink.split
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d
  %.sink = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ]
  %i.a = tail call i32 @dissect_e212_mcc_mnc(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %3, i32 noundef %8, i1 noundef zeroext %.sink)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.c, %bb.c
  %.0 = phi i32 [ %3, %bb.c ], [ %3, %bb.c ], [ %3, %bb.c ], [ %i.a, %.sink.split ] ; 4 uses
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0)
  %i.c = load i32, ptr @hf_gsm_a_bssmap_cell_lac, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %.0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = add i32 %.0, 2                           ; 8 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = zext i16 %i.b to i32
  %i.g = sext i32 %6 to i64
  %i.h = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef %i.g, i32 noundef 2, i64 noundef -1, ptr noundef @.str.128, i32 noundef %i.f) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i8 %7, label %bb.n [
    i8 11, label %bb.h
    i8 12, label %.thread
    i8 10, label %.thread
    i8 9, label %.thread
    i8 8, label %.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.e)
  %i.j = load i32, ptr @hf_gsm_a_bssmap_sac, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef 0) ; 0 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = zext i16 %i.i to i32
  %i.m = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.129, ptr noundef nonnull %5, i32 noundef %i.l) ; 2 uses
  %i.n = sext i32 %6 to i64
  %i.o = tail call i64 @g_strlcpy(ptr noundef nonnull %5, ptr noundef %i.m, i64 noundef %i.n) ; 0 uses
  tail call void @g_free(ptr noundef %i.m)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = add i32 %.0, 4
  br label %bb.t

.thread:                                          ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.c
  %.1114 = phi i32 [ %i.e, %bb.g ], [ %i.e, %bb.g ], [ %i.e, %bb.g ], [ %i.e, %bb.g ], [ %3, %bb.c ] ; 3 uses
  %i.q = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.1114)
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = load i32, ptr @hf_gsm_a_bssmap_be_rnc_id, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.s, ptr noundef %0, i32 noundef %.1114, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = add i32 %.1114, 2                        ; 3 uses
  br i1 %.not, label %bb.t, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.v = load i8, ptr %5, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = sext i32 %6 to i64
  %i.y = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %5, i64 noundef %i.x, i32 noundef 2, i64 noundef -1, ptr noundef @.str.130, i32 noundef %i.r) ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.z = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.131, ptr noundef nonnull %5, i32 noundef %i.r) ; 2 uses
  %i.aa = sext i32 %6 to i64
  %i.ab = tail call i64 @g_strlcpy(ptr noundef nonnull %5, ptr noundef %i.z, i64 noundef %i.aa) ; 0 uses
  tail call void @g_free(ptr noundef %i.z)
  br label %bb.t

bb.n:                                             ; preds = %bb.g
  %i.ac = and i8 %7, -2
  %or.cond11 = icmp eq i8 %i.ac, 4
  br i1 %or.cond11, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n
  %.2 = phi i32 [ %i.e, %bb.n ], [ %3, %bb.c ]    ; 3 uses
  %i.ad = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.2)
  %i.ae = zext i16 %i.ad to i32                   ; 3 uses
  %i.af = load i32, ptr @hf_gsm_a_bssmap_cell_ci, align 4
  %i.ag = tail call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.af, ptr noundef %0, i32 noundef %.2, i32 noundef 2, i32 noundef %i.ae) ; 0 uses
  %i.ah = add i32 %.2, 2                          ; 3 uses
  br i1 %.not, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
