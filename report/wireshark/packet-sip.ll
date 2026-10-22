Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sip?download=true
inline.NumInlined: 48
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_sip_via_header:bb.a
; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_sip_reason_header(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct._sip_reason_code_info_t, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.f = sub i32 %4, %3
  %i.g = tail call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %3, i32 noundef %i.f) ; 6 uses
  %.not = icmp ult i32 %i.g, %4
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.a, align 4
  %i.h = sub nuw i32 %4, %i.g
  %i.i = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.h, i8 noundef zeroext 59, ptr noundef nonnull %i.b)
  br i1 %i.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.b, align 4
  %i.k = sub i32 %i.j, %i.g
  %i.l = load i32, ptr @hf_sip_reason_protocols, align 4
  %i.m = getelementptr i8, ptr %2, i64 416
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr @proto_tree_add_item_ret_string(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.g, i32 noundef %i.k, i32 noundef 2, ptr noundef %i.n, ptr noundef nonnull %i.d) ; 0 uses
  %i.p = load i32, ptr %i.b, align 4              ; 2 uses
  %i.q = sub i32 %4, %i.p
  %i.r = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.q, i8 noundef zeroext 61, ptr noundef nonnull %i.a) ; 0 uses
  %i.s = load i32, ptr %i.a, align 4
  %i.t = add i32 %i.s, 1                          ; 3 uses
  store i32 %i.t, ptr %i.a, align 4
  %i.u = sub i32 %4, %i.t
  %i.v = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i8 noundef zeroext 59, ptr noundef nonnull %i.b) ; 0 uses
  %i.w = load i32, ptr %i.a, align 4              ; 2 uses
  %i.x = sub i32 %4, %i.w
  %i.y = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.w, i32 noundef %i.x, i8 noundef zeroext 59, ptr noundef nonnull %i.b) ; 2 uses
  %i.z = load i32, ptr %i.b, align 4
  %.sink = select i1 %i.y, i32 %i.z, i32 %4
  %i.aa = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ab = sub i32 %.sink, %i.aa                   ; 4 uses
  %i.ac = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef 67108864, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) ; 0 uses
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = call i32 @g_ascii_strcasecmp(ptr noundef %i.ad, ptr noundef @.str.1088)
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr @hf_sip_reason_cause_q850, align 4
  %i.ah = load i32, ptr %i.a, align 4
  %i.ai = load i32, ptr %i.e, align 4
  %i.aj = call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ah, i32 noundef %i.ab, i32 noundef %i.ai) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = call i32 @g_ascii_strcasecmp(ptr noundef %i.ak, ptr noundef @.str.803)
  %i.am = icmp eq i32 %i.al, 0
  %i.an = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ao = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr @hf_sip_reason_cause_sip, align 4
  %i.aq = call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.an, i32 noundef %i.ab, i32 noundef %i.ao) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = load i32, ptr @hf_sip_reason_cause_other, align 4
  %i.as = call ptr @proto_tree_add_uint(ptr noundef %1, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.an, i32 noundef %i.ab, i32 noundef %i.ao) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.sink50 = phi i32 [ 1, %bb.f ], [ 0, %bb.g ], [ 2, %bb.d ]
  store i32 %.sink50, ptr %5, align 4
  br i1 %i.y, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.b, align 4             ; 2 uses
  %i.au = sub i32 %4, %i.at
  %i.av = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.at, i32 noundef %i.au, i8 noundef zeroext 34, ptr noundef nonnull %i.a)
  br i1 %i.av, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = add i32 %i.aw, 1                        ; 3 uses
  store i32 %i.ax, ptr %i.a, align 4
  %i.ay = sub i32 %4, %i.ax
  %i.az = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.ay, i8 noundef zeroext 34, ptr noundef nonnull %i.c)
  br i1 %i.az, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %i.c, align 4
  %i.bb = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bc = sub i32 %i.ba, %i.bb                    ; 2 uses
  %i.bd = load i32, ptr @hf_sip_reason_text, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef 2) ; 0 uses
  %i.bf = load ptr, ptr @sip_reason_code_handle, align 8
  %.not47 = icmp eq ptr %i.bf, null
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %i.e, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = load i32, ptr %i.a, align 4
  %i.bj = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bc)
  %i.bk = load ptr, ptr @sip_reason_code_handle, align 8
  %i.bl = call i32 @call_dissector_with_data(ptr noundef %i.bk, ptr noundef %i.bj, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %5) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.i, %bb.h, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_sip_sec_mechanism(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.e = sub i32 %4, %3
  %i.f = tail call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %3, i32 noundef %i.e) ; 5 uses
  %.not = icmp ult i32 %i.f, %4
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i32 %4, %i.f                     ; 2 uses
  %i.h = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.g, i8 noundef zeroext 59, ptr noundef nonnull %i.a)
  br i1 %i.h, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  %.pre75 = sub i32 %.pre, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %4, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i32 [ %.pre75, %._crit_edge ], [ %i.g, %bb.c ]
  %i.i = phi i32 [ %.pre, %._crit_edge ], [ %4, %bb.c ]
  %i.j = load i32, ptr @hf_sip_sec_mechanism, align 4
  %i.k = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.f, i32 noundef %.pre-phi, i32 noundef 2) ; 0 uses
  %.06169 = add i32 %i.i, 1                       ; 2 uses
  %i.l = icmp ult i32 %.06169, %4
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr i8, ptr %1, i64 416
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.x
  %.06170 = phi i32 [ %.06169, %.lr.ph ], [ %.061, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.n = sub nuw i32 %4, %.06170
  %i.o = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %.06170, i32 noundef %i.n) ; 8 uses
  %i.p = sub i32 %4, %i.o                         ; 2 uses
  %i.q = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i8 noundef zeroext 59, ptr noundef nonnull %i.a)
  br i1 %i.q, label %._crit_edge73, label %bb.f

._crit_edge73:                                    ; preds = %bb.e
  %.pre74 = load i32, ptr %i.a, align 4
  %.pre76 = sub i32 %.pre74, %i.o
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %4, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge73, %bb.f
  %.pre-phi77 = phi i32 [ %.pre76, %._crit_edge73 ], [ %i.p, %bb.f ] ; 2 uses
  %i.r = add i32 %i.o, 1
  %i.s = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.r, i32 noundef %.pre-phi77, i8 noundef zeroext 61, ptr noundef nonnull %i.b)
  br i1 %i.s, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.b, align 4
  %i.u = load ptr, ptr %i.m, align 8
  %i.v = sub i32 %i.t, %i.o
  %i.w = call ptr @tvb_get_string_enc(ptr noundef %i.u, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.v, i32 noundef 2) ; 10 uses
  %i.x = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.715)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.717)
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.719)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.721)
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.723)
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.725)
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.727)
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.729)
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.731)
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.733)
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = call ptr @proto_tree_add_format_text(ptr noundef %2, ptr noundef %0, i32 noundef %i.o, i32 noundef %.pre-phi77) ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.lcssa = phi ptr [ @sec_mechanism_parameters_hf_array, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 24), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 48), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 72), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 96), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 120), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 168), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 192), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @sec_mechanism_parameters_hf_array, i64 216), %bb.q ] ; 3 uses
  %i.as = getelementptr i8, ptr %.lcssa, i64 8
  %i.at = load i32, ptr %i.as, align 8
  switch i32 %i.at, label %bb.x [
    i32 0, label %bb.t
    i32 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr i8, ptr %.lcssa, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ay = add i32 %i.ax, 1
  %i.az = load i32, ptr %i.a, align 4
  %i.ba = xor i32 %i.ax, -1
  %i.bb = add i32 %i.az, %i.ba
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef 2) ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.b, align 4             ; 2 uses
  %i.be = add i32 %i.bd, 1
  %i.bf = load i32, ptr %i.a, align 4
  %reass.sub = sub i32 %i.bf, %i.bd
  %i.bg = add i32 %reass.sub, 1
  %i.bh = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef 67108864, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  br i1 %i.bh, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef @ei_sip_sipsec_malformed, ptr noundef %0, i32 noundef %i.o, i32 noundef -1) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bj = getelementptr i8, ptr %.lcssa, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = load i32, ptr %i.b, align 4             ; 2 uses
  %i.bn = add i32 %i.bm, 1
  %i.bo = load i32, ptr %i.a, align 4
  %i.bp = xor i32 %i.bm, -1
  %i.bq = add i32 %i.bo, %i.bp
  %i.br = load i32, ptr %i.d, align 4
  %i.bs = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %i.br) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.v, %bb.w, %bb.t, %bb.r
  %i.bt = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %.061 = add i32 %i.bt, 1                        ; 2 uses
  %i.bu = icmp ult i32 %.061, %4
  br i1 %i.bu, label %bb.e, label %.loopexit, !llvm.loop !49

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.d, %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_sip_session_id_header(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct._e_guid_t, align 4          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = sub i32 %3, %2                           ; 2 uses
  %i.d = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %2, i32 noundef %i.c, i8 noundef zeroext 59, ptr noundef nonnull %i.a)
  br i1 %i.d, label %._crit_edge119, label %bb.b

._crit_edge119:                                   ; preds = %bb.a
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  %.pre120 = sub i32 %.pre, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %3, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge119, %bb.b
  %.pre-phi = phi i32 [ %.pre120, %._crit_edge119 ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = phi i32 [ %.pre, %._crit_edge119 ], [ %3, %bb.b ] ; 2 uses
  %i.f = call ptr @g_byte_array_sized_new(i32 noundef 16) ; 4 uses
  %.not = icmp eq i32 %i.e, %2
  %i.g = load i32, ptr @hf_sip_session_id_sess_id, align 4 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @proto_tree_add_bytes_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %2, i32 noundef %.pre-phi, i32 noundef 33619970, ptr noundef %i.f, ptr noundef null, ptr noundef null)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %2, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.j = call ptr @expert_add_info(ptr noundef %4, ptr noundef %i.i, ptr noundef @ei_sip_session_id_sess_id) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]  ; 2 uses
  %i.k = add i32 %i.e, 1                          ; 2 uses
  %i.l = sub i32 %3, %i.k
  %i.m = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.k, i32 noundef %i.l) ; 10 uses
  %i.n = icmp ult i32 %i.m, %3
  br i1 %i.n, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %i.m, 1
  %i.p = call zeroext i1 @tvb_find_uint8_length(ptr noundef %0, i32 noundef %i.o, i32 noundef %.pre-phi, i8 noundef zeroext 61, ptr noundef nonnull %i.b)
  br i1 %i.p, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = call ptr @g_byte_array_sized_new(i32 noundef 16) ; 4 uses
  %i.r = getelementptr i8, ptr %4, i64 416        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i32, ptr %i.b, align 4
  %i.u = add i32 %i.t, -1
  %i.v = call i32 @tvb_skip_wsp_return(ptr noundef %0, i32 noundef %i.u)
  %i.w = sub i32 %i.v, %i.m
  %i.x = call ptr @tvb_get_string_enc(ptr noundef %i.s, ptr noundef %0, i32 noundef %i.m, i32 noundef %i.w, i32 noundef 2)
  %i.y = getelementptr i8, ptr %i.f, i64 8
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.z, 16
  br i1 %i.aa, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @g_ascii_strcasecmp(ptr noundef %i.x, ptr noundef @.str.1090)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ae = add i32 %i.ad, 1
  %i.af = xor i32 %i.ad, -1
  %i.ag = add i32 %3, %i.af
  %i.ah = call ptr @tvb_get_string_bytes(ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef 33619970, ptr noundef %i.q, ptr noundef null)
  %.not116 = icmp eq ptr %i.ah, null
  br i1 %.not116, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.q, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 16
  br i1 %i.ak, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %.not.i = icmp eq ptr %.0, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr i8, ptr %.0, i64 40
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.am, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %i.am, i64 28     ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = or i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.l, %bb.m, %bb.n
  %i.aq = load ptr, ptr %i.f, align 8             ; 9 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw i32 %i.as, 24
  %i.au = getelementptr i8, ptr %i.aq, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = or disjoint i32 %i.ax, %i.at
  %i.az = getelementptr i8, ptr %i.aq, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = or disjoint i32 %i.ay, %i.bc
  %i.be = getelementptr i8, ptr %i.aq, i64 3
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg
  store i32 %i.bh, ptr %5, align 4
  %i.bi = getelementptr i8, ptr %i.aq, i64 4
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %i.bm = getelementptr i8, ptr %i.aq, i64 5
end_hunk_0
