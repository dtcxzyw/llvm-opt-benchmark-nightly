Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ncp2222?download=true
inline.NumInlined: 225
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@process_ptvc_record:bb.a
bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq ptr %i.j, @ptvc_struct_int_storage
  br i1 %i.aa, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.ab = getelementptr i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i38 = icmp eq ptr %i.ac, null
  br i1 %.not.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = call ptr @ptvcursor_tree(ptr noundef %0), !inline_history !24 ; 2 uses
  %i.ag = call i32 @ptvcursor_current_offset(ptr noundef %0), !inline_history !24 ; 2 uses
  %i.ah = call ptr @ptvcursor_tvbuff(ptr noundef %0), !inline_history !24
  %i.ai = load ptr, ptr %i.t, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call ptr @proto_tree_add_subtree(ptr noundef %i.af, ptr noundef %i.ah, i32 noundef %i.ag, i32 noundef -1, i32 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef %i.ak), !inline_history !24
  call void @ptvcursor_set_tree(ptr noundef %0, ptr noundef %i.al), !inline_history !24
  %.pre66 = load ptr, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = phi ptr [ %.pre66, %bb.j ], [ %i.u, %bb.i ]
  %.025.i39 = phi ptr [ %i.af, %bb.j ], [ null, %bb.i ]
  %.0.i40 = phi i32 [ %i.ag, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call fastcc void @process_ptvc_record(ptr noundef %0, ptr noundef %1, ptr noundef %i.ao, ptr noundef %3, i1 noundef zeroext %.0.shrunk45, ptr noundef %5, i1 noundef zeroext %6), !inline_history !24
  %i.ap = load ptr, ptr %i.t, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not26.i41 = icmp eq ptr %i.ar, null
  br i1 %.not26.i41, label %process_struct_sub_ptvc_record.exit43, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = call i32 @ptvcursor_current_offset(ptr noundef %0), !inline_history !24
  %.not27.i42 = icmp ugt i32 %i.as, %.0.i40
  br i1 %.not27.i42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #16, !inline_history !24
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = call i32 @ptvcursor_current_offset(ptr noundef %0), !inline_history !24
  %i.av = sub i32 %i.au, %.0.i40
  call void @proto_item_set_len(ptr noundef %i.at, i32 noundef %i.av), !inline_history !24
  call void @ptvcursor_set_tree(ptr noundef %0, ptr noundef %.025.i39), !inline_history !24
  br label %process_struct_sub_ptvc_record.exit43

process_struct_sub_ptvc_record.exit43:            ; preds = %bb.k, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_process_ptvc_record.exit

bb.o:                                             ; preds = %bb.h
  call fastcc void @process_bitfield_sub_ptvc_record(ptr noundef %0, ptr noundef %1, ptr noundef %.03155, i1 noundef zeroext %.0.shrunk45), !inline_history !25
  br label %_process_ptvc_record.exit

bb.p:                                             ; preds = %bb.g
  %i.aw = zext nneg i16 %i.y to i64
  %i.ax = getelementptr [4 x i8], ptr @repeat_vars, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %.not59 = icmp eq i32 %i.ay, 0
  br i1 %.not59, label %_process_ptvc_record.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.x
  %.0.i49 = phi i32 [ %i.bx, %bb.x ], [ 0, %bb.p ]
  %i.az = load ptr, ptr %.03155, align 8
  %i.ba = icmp eq ptr %i.az, @ptvc_struct_int_storage
  br i1 %i.ba, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8
  %i.bb = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not.i36 = icmp eq ptr %i.bd, null
  br i1 %.not.i36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.bb, align 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = call ptr @ptvcursor_tree(ptr noundef %0), !inline_history !24 ; 2 uses
  %i.bh = call i32 @ptvcursor_current_offset(ptr noundef %0), !inline_history !24 ; 2 uses
  %i.bi = call ptr @ptvcursor_tvbuff(ptr noundef %0), !inline_history !24
  %i.bj = load ptr, ptr %i.t, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call ptr @proto_tree_add_subtree(ptr noundef %i.bg, ptr noundef %i.bi, i32 noundef %i.bh, i32 noundef -1, i32 noundef %i.bf, ptr noundef nonnull %i.b, ptr noundef %i.bl), !inline_history !24
  call void @ptvcursor_set_tree(ptr noundef %0, ptr noundef %i.bm), !inline_history !24
  %.pre = load ptr, ptr %i.t, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = phi ptr [ %.pre, %bb.r ], [ %i.bb, %bb.q ]
  %.025.i = phi ptr [ %i.bg, %bb.r ], [ null, %bb.q ]
  %.0.i37 = phi i32 [ %i.bh, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call fastcc void @process_ptvc_record(ptr noundef %0, ptr noundef %1, ptr noundef %i.bp, ptr noundef %3, i1 noundef zeroext %.0.shrunk45, ptr noundef %5, i1 noundef zeroext %6), !inline_history !24
  %i.bq = load ptr, ptr %i.t, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %.not26.i = icmp eq ptr %i.bs, null
  br i1 %.not26.i, label %process_struct_sub_ptvc_record.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = call i32 @ptvcursor_current_offset(ptr noundef %0), !inline_history !24
  %.not27.i = icmp ugt i32 %i.bt, %.0.i37
  br i1 %.not27.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #16, !inline_history !24
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %i.b, align 8
  %i.bv = call i32 @ptvcursor_current_offset(ptr noundef %0), !inline_history !24
  %i.bw = sub i32 %i.bv, %.0.i37
  call void @proto_item_set_len(ptr noundef %i.bu, i32 noundef %i.bw), !inline_history !24
  call void @ptvcursor_set_tree(ptr noundef %0, ptr noundef %.025.i), !inline_history !24
  br label %process_struct_sub_ptvc_record.exit

process_struct_sub_ptvc_record.exit:              ; preds = %bb.s, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  call fastcc void @process_bitfield_sub_ptvc_record(ptr noundef %0, ptr noundef %1, ptr noundef %.03155, i1 noundef zeroext %.0.shrunk45), !inline_history !25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %process_struct_sub_ptvc_record.exit
  %i.bx = add nuw i32 %.0.i49, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %i.ay
  br i1 %exitcond.not, label %_process_ptvc_record.exit, label %.lr.ph, !llvm.loop !26

bb.y:                                             ; preds = %bb.f
  br i1 %i.z, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  br i1 %.0.shrunk45, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.c, align 4
  call fastcc void @add_ptvc_field(ptr noundef %1, ptr noundef %0, ptr noundef %.03155, i1 noundef zeroext %6, i1 noundef zeroext false, ptr noundef nonnull %i.c)
  %i.by = load i16, ptr %i.v, align 4
  %i.bz = and i16 %i.by, 3                        ; 2 uses
  %.not64.i = icmp eq i16 %i.bz, 3
  br i1 %.not64.i, label %_process_ptvc_record.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load i32, ptr %i.c, align 4
  %i.cb = zext nneg i16 %i.bz to i64
  %i.cc = getelementptr [4 x i8], ptr @repeat_vars, i64 %i.cb
  store i32 %i.ca, ptr %i.cc, align 4
  br label %_process_ptvc_record.exit

bb.ac:                                            ; preds = %bb.z
  %i.cd = and i16 %i.w, 3
  %i.ce = icmp eq i16 %i.cd, 3
  br i1 %i.ce, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.6854, ptr noundef nonnull @.str.4282, i32 noundef 2615, ptr noundef nonnull @.str.6855) #16, !inline_history !25
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cf = getelementptr i8, ptr %.03155, i64 8    ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ci = load i32, ptr %i.j, align 4
  %i.cj = call ptr @proto_registrar_get_nth(i32 noundef %i.ci), !inline_history !25
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 8
  %.not63.i = icmp eq i32 %i.cl, 28
  br i1 %.not63.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.6854, ptr noundef nonnull @.str.4282, i32 noundef 2620, ptr noundef nonnull @.str.6856) #16, !inline_history !25
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cm = load i32, ptr %i.cf, align 8
  call void @ptvcursor_advance(ptr noundef %0, i32 noundef %i.cm), !inline_history !25
  br label %_process_ptvc_record.exit

bb.ai:                                            ; preds = %bb.y
  %i.cn = zext nneg i16 %i.y to i64
  %i.co = getelementptr [4 x i8], ptr @repeat_vars, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4            ; 3 uses
  %.not61 = icmp eq i32 %i.cp, 0                  ; 2 uses
  br i1 %.0.shrunk45, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.ai
  br i1 %.not61, label %_process_ptvc_record.exit, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader46
  %i.cq = getelementptr i8, ptr %.03155, i64 8    ; 2 uses
  br label %bb.aj

.preheader:                                       ; preds = %bb.ai
  br i1 %.not61, label %_process_ptvc_record.exit, label %.lr.ph53

.lr.ph53:                                         ; preds = %.preheader, %.lr.ph53
  %.1.i52 = phi i32 [ %i.cs, %.lr.ph53 ], [ 0, %.preheader ] ; 2 uses
  %i.cr = icmp ne i32 %.1.i52, 0
  call fastcc void @add_ptvc_field(ptr noundef %1, ptr noundef %0, ptr noundef %.03155, i1 noundef zeroext %6, i1 noundef zeroext %i.cr, ptr noundef nonnull %i.c)
  %i.cs = add nuw i32 %.1.i52, 1                  ; 2 uses
  %exitcond65.not = icmp eq i32 %i.cs, %i.cp
  br i1 %exitcond65.not, label %_process_ptvc_record.exit, label %.lr.ph53, !llvm.loop !27

bb.aj:                                            ; preds = %.lr.ph51, %bb.am
  %.2.i50 = phi i32 [ 0, %.lr.ph51 ], [ %i.db, %bb.am ]
  %i.ct = load i32, ptr %i.cq, align 8
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cv = load ptr, ptr %.03155, align 8
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = call ptr @proto_registrar_get_nth(i32 noundef %i.cw), !inline_history !25
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %i.cz = load i32, ptr %i.cy, align 8
  %.not62.i = icmp eq i32 %i.cz, 28
  br i1 %.not62.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.6854, ptr noundef nonnull @.str.4282, i32 noundef 2635, ptr noundef nonnull @.str.6856) #16, !inline_history !25
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = load i32, ptr %i.cq, align 8
  call void @ptvcursor_advance(ptr noundef %0, i32 noundef %i.da), !inline_history !25
  %i.db = add nuw i32 %.2.i50, 1                  ; 2 uses
  %exitcond64.not = icmp eq i32 %i.db, %i.cp
  br i1 %exitcond64.not, label %_process_ptvc_record.exit, label %bb.aj, !llvm.loop !28

_process_ptvc_record.exit:                        ; preds = %bb.x, %bb.am, %.lr.ph53, %bb.p, %.preheader46, %.preheader, %process_struct_sub_ptvc_record.exit43, %bb.o, %bb.aa, %bb.ab, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.an

bb.an:                                            ; preds = %_process_ptvc_record.exit, %bb.e
  %i.dc = getelementptr i8, ptr %.03155, i64 40   ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.an, %bb.a
  %i.de = getelementptr i8, ptr %5, i64 64        ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8
  %.not34 = icmp eq ptr %i.df, null
  br i1 %.not34, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  %i.dg = getelementptr i8, ptr %1, i64 416
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call ptr @ptvcursor_new(ptr noundef %i.dh, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.dj = load ptr, ptr %i.de, align 8
  call void %i.dj(ptr noundef %i.di, ptr noundef %1, ptr noundef %5, i1 noundef zeroext %6)
  call void @ptvcursor_free(ptr noundef %i.di)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_rethrow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @except_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @except_pop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ptvcursor_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dfilter_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissect_sss_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissect_nmas_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ncp_8x20req(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 26, 29) %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  store volatile ptr %2, ptr %i.a, align 8
  %i.b = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.c = icmp eq i32 %4, 87
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.e = zext i8 %i.d to i32
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.g = zext i8 %i.f to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %3)
  %i.i = zext i16 %i.h to i32
  %i.j = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %3)
  %i.k = zext i16 %i.j to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0126 = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  %.0124 = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = icmp sgt i32 %.0124, %i.b
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %1, i64 416
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @wmem_strbuf_new(ptr noundef %i.n, ptr noundef null) ; 14 uses
  %i.p = add nuw nsw i32 %3, 1                    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.aa
  %.0142 = phi i32 [ %i.b, %bb.f ], [ %i.az, %bb.aa ] ; 6 uses
  %.0120141 = phi i32 [ 0, %bb.f ], [ %i.bd, %bb.aa ] ; 16 uses
  %.0122140 = phi i32 [ %i.p, %bb.f ], [ %i.bc, %bb.aa ] ; 12 uses
  %.1125139 = phi i32 [ %.0124, %bb.f ], [ %.2, %bb.aa ] ; 16 uses
  %.0127138 = phi i32 [ %i.p, %bb.f ], [ %.1128, %bb.aa ] ; 16 uses
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0122140) ; 3 uses
  %i.r = add i8 %i.q, -127
  %or.cond = icmp ult i8 %i.r, -95
  br i1 %or.cond, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  switch i8 %i.q, label %bb.w [
    i8 -1, label %bb.i
    i8 -17, label %bb.p
    i8 0, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = add i32 %.0122140, 1                     ; 7 uses
  %i.t = add i32 %.0142, -1                       ; 6 uses
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.s)
  switch i8 %i.u, label %bb.o [
    i8 63, label %bb.j
    i8 42, label %bb.k
    i8 -65, label %bb.l
    i8 -86, label %bb.m
    i8 -82, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 63)
  %.0..0..0..0.88 = load volatile ptr, ptr %i.a, align 8
  %i.v = load i32, ptr @hf_search_modifier, align 4
  %i.w = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0..0..0..0.88, i32 noundef %i.v, ptr noundef %0, i32 noundef %.0122140, i32 noundef 2, i32 noundef 63, ptr noundef nonnull @.str.6860) ; 0 uses
  br label %bb.z

bb.k:                                             ; preds = %bb.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 42)
  %.0..0..0..0.89 = load volatile ptr, ptr %i.a, align 8
  %i.x = load i32, ptr @hf_search_modifier, align 4
  %i.y = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0..0..0..0.89, i32 noundef %i.x, ptr noundef %0, i32 noundef %.0122140, i32 noundef 2, i32 noundef 42, ptr noundef nonnull @.str.6861) ; 0 uses
  br label %bb.z

bb.l:                                             ; preds = %bb.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 63)
  %.0..0..0..0.90 = load volatile ptr, ptr %i.a, align 8
  %i.z = load i32, ptr @hf_search_modifier, align 4
  %i.aa = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0..0..0..0.90, i32 noundef %i.z, ptr noundef %0, i32 noundef %.0122140, i32 noundef 2, i32 noundef 191, ptr noundef nonnull @.str.6862) ; 0 uses
  br label %bb.z

bb.m:                                             ; preds = %bb.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 42)
  %.0..0..0..0.91 = load volatile ptr, ptr %i.a, align 8
  %i.ab = load i32, ptr @hf_search_modifier, align 4
  %i.ac = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0..0..0..0.91, i32 noundef %i.ab, ptr noundef %0, i32 noundef %.0122140, i32 noundef 2, i32 noundef 42, ptr noundef nonnull @.str.6863) ; 0 uses
  br label %bb.z

bb.n:                                             ; preds = %bb.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 46)
  %.0..0..0..0.92 = load volatile ptr, ptr %i.a, align 8
  %i.ad = load i32, ptr @hf_search_modifier, align 4
  %i.ae = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0..0..0..0.92, i32 noundef %i.ad, ptr noundef %0, i32 noundef %.0122140, i32 noundef 2, i32 noundef 174, ptr noundef nonnull @.str.6864) ; 0 uses
  br label %bb.z

bb.o:                                             ; preds = %bb.i
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 46)
  br label %bb.z

bb.p:                                             ; preds = %bb.h
  %i.af = add i32 %.0122140, 1                    ; 7 uses
  %i.ag = add i32 %.0142, -1
  %i.ah = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.af)
  %i.ai = icmp eq i8 %i.ah, -93
  br i1 %i.ai, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.aj = add i32 %.0122140, 2                    ; 7 uses
  %i.ak = add i32 %.0142, -2                      ; 6 uses
  %i.al = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aj)
  switch i8 %i.al, label %bb.z [
    i8 -69, label %bb.r
    i8 -68, label %bb.s
    i8 -67, label %bb.t
    i8 -66, label %bb.u
    i8 -65, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 63)
  %.0..0..0..0.93 = load volatile ptr, ptr %i.a, align 8
  %i.am = load i32, ptr @hf_search_modifier, align 4
  %i.an = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0..0..0..0.93, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.af, i32 noundef 2, i32 noundef 187, ptr noundef nonnull @.str.6860) ; 0 uses
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 42)
  %.0..0..0..0.94 = load volatile ptr, ptr %i.a, align 8
  %i.ao = load i32, ptr @hf_search_modifier, align 4
  %i.ap = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0..0..0..0.94, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.af, i32 noundef 2, i32 noundef 188, ptr noundef nonnull @.str.6861) ; 0 uses
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  tail call void @wmem_strbuf_append_c(ptr noundef %i.o, i8 noundef signext 63)
  %.0..0..0..0.95 = load volatile ptr, ptr %i.a, align 8
end_hunk_0
