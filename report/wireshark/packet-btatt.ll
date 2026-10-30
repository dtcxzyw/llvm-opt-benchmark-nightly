Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-btatt?download=true
inline.NumInlined: 731
inline.NumDeleted: 17
begin_hunk_0_@dissect_btatt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, i8 noundef 0, i64 noundef 20, i1 noundef false) #14
  %i.u = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %proto_item_set_generated.exit967, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %3, ptr %9, align 8
  %i.w = load i32, ptr @proto_btatt, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 4 uses
  %i.y = load i32, ptr @ett_btatt, align 4
  %i.z = tail call ptr @proto_item_add_subtree(ptr noundef %i.x, i32 noundef %i.y) ; 64 uses
  %i.aa = getelementptr i8, ptr %1, i64 8         ; 17 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @col_set_str(ptr noundef %i.ab, i32 noundef 35, ptr noundef @.str.3201)
  %i.ac = getelementptr i8, ptr %1, i64 356       ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = load ptr, ptr %i.aa, align 8
  %switch.selectcmp = icmp eq i32 %i.ad, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.3203, ptr @.str.3204
  %switch.selectcmp1104 = icmp eq i32 %i.ad, 0
  %switch.select1105 = select i1 %switch.selectcmp1104, ptr @.str.3202, ptr %switch.select
  tail call void @col_set_str(ptr noundef %i.ae, i32 noundef 25, ptr noundef %switch.select1105)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %.not.i = icmp ne ptr %3, null                  ; 17 uses
  br i1 %.not.i, label %bb.c, label %get_mtu.exit

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr i8, ptr %3, i64 48
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = icmp eq i16 %i.ag, 4
  %i.ai = select i1 %i.ah, i32 23, i32 48
  %i.aj = getelementptr i8, ptr %3, i64 32
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = icmp eq i16 %i.ak, 39
  %spec.store.select.i = select i1 %i.al, i32 64, i32 %i.ai ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %3, i64 16
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = zext i16 %i.ap to i32
  store i32 %i.aq, ptr %i.p, align 4
  store i32 1, ptr %8, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.as, align 16
  %i.at = getelementptr i8, ptr %3, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.av, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.p, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.ay, align 8
  %i.az = load ptr, ptr @mtus, align 8
  %i.ba = call ptr @wmem_tree_lookup32_array(ptr noundef %i.az, ptr noundef nonnull %8) ; 2 uses
  %.not15.i = icmp eq ptr %i.ba, null
  br i1 %.not15.i, label %get_mtu.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = call ptr @wmem_tree_lookup32_le(ptr noundef nonnull %i.ba, i32 noundef %i.an) ; 2 uses
  %.not16.i = icmp eq ptr %i.bb, null
  br i1 %.not16.i, label %get_mtu.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i32, ptr %i.bb, align 4
  br label %get_mtu.exit

get_mtu.exit:                                     ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.bc, %bb.e ], [ %spec.store.select.i, %bb.d ], [ 23, %bb.b ], [ %spec.store.select.i, %bb.c ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.bd = call i32 @tvb_reported_length(ptr noundef %0)
  %i.be = icmp ugt i32 %i.bd, %.0.i
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %get_mtu.exit
  %i.bf = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.x, ptr noundef @ei_btatt_mtu_exceeded) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %get_mtu.exit
  %i.bg = load i32, ptr @hf_btatt_opcode, align 4
  %i.bh = load i32, ptr @ett_btatt_opcode, align 4
  %i.bi = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.z, ptr noundef %0, i32 noundef 0, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef @hfx_btatt_opcode, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 34 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 %i.bj, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  br i1 %.not.i, label %bb.h, label %get_request.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr i8, ptr %1, i64 384
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = zext i8 %i.bm to i32
  store i32 %i.bn, ptr %i.l, align 4
  %i.bo = getelementptr i8, ptr %3, i64 16
  %i.bp = load i16, ptr %i.bo, align 8
  %i.bq = zext i16 %i.bp to i32
  store i32 %i.bq, ptr %i.o, align 4
  %i.br = getelementptr i8, ptr %3, i64 48
  %i.bs = load i16, ptr %i.br, align 8
  %i.bt = icmp eq i16 %i.bs, 4
  br i1 %i.bt, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr i8, ptr %3, i64 52
  %i.bv = load i32, ptr %i.bu, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bw = phi i32 [ %i.bv, %bb.i ], [ 4, %bb.h ]
  store i32 %i.bw, ptr %i.n, align 4
  store i32 1, ptr %7, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %3, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i32 1, ptr %i.by, align 16
  %i.bz = getelementptr i8, ptr %3, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i32 1, ptr %i.cb, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store ptr %i.o, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 1, ptr %i.cd, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.n, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 1, ptr %i.cf, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.l, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i32 0, ptr %i.ch, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr null, ptr %i.ci, align 8
  %i.cj = load ptr, ptr @requests, align 8
  %i.ck = call ptr @wmem_tree_lookup32_array(ptr noundef %i.cj, ptr noundef nonnull %7) ; 3 uses
  %.not33.i = icmp eq ptr %i.ck, null
  br i1 %.not33.i, label %get_request.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = load i32, ptr %i.ac, align 4            ; 2 uses
  switch i8 %i.bj, label %is_request.exit.i [
    i8 24, label %bb.l
    i8 22, label %bb.l
    i8 18, label %bb.l
    i8 16, label %bb.l
    i8 14, label %bb.l
    i8 12, label %bb.l
    i8 10, label %bb.l
    i8 8, label %bb.l
    i8 6, label %bb.l
    i8 4, label %bb.l
    i8 2, label %bb.l
    i8 29, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  store i32 %i.cl, ptr %i.m, align 4
  %i.cm = getelementptr i8, ptr %1, i64 20
  %i.cn = load i32, ptr %i.cm, align 4
  store i32 %i.cn, ptr %i.k, align 4
  store i32 1, ptr %7, align 16
  store ptr %i.m, ptr %i.bx, align 8
  store i32 1, ptr %i.by, align 16
  store ptr %i.k, ptr %i.ca, align 8
  store i32 0, ptr %i.cb, align 16
  store ptr null, ptr %i.cc, align 8
  %i.co = call ptr @wmem_tree_lookup32_array(ptr noundef nonnull %i.ck, ptr noundef nonnull %7)
  br label %get_request.exit

is_request.exit.i:                                ; preds = %bb.k
  %i.cp = icmp eq i32 %i.cl, 0
  %i.cq = zext i1 %i.cp to i32
  store i32 %i.cq, ptr %i.m, align 4
  %i.cr = getelementptr i8, ptr %1, i64 20
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.ct, ptr %i.k, align 4
  store i32 1, ptr %7, align 16
  store ptr %i.m, ptr %i.bx, align 8
  store i32 0, ptr %i.by, align 16
  store ptr null, ptr %i.ca, align 8
  %i.cu = call ptr @wmem_tree_lookup32_array(ptr noundef nonnull %i.ck, ptr noundef nonnull %7) ; 2 uses
  %.not34.i = icmp eq ptr %i.cu, null
  br i1 %.not34.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %is_request.exit.i
  %i.cv = call ptr @wmem_tree_lookup32_le(ptr noundef nonnull %i.cu, i32 noundef %i.ct) ; 2 uses
  %28 = icmp eq ptr %i.cv, null
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %is_request.exit.i
  %.not35.i = phi i1 [ %28, %bb.m ], [ true, %is_request.exit.i ]
  %i.cw = phi ptr [ %i.cv, %bb.m ], [ null, %is_request.exit.i ] ; 2 uses
  switch i8 %i.bj, label %bb.s [
    i8 1, label %bb.o
    i8 3, label %bb.q
    i8 5, label %bb.q
    i8 7, label %bb.q
    i8 9, label %bb.q
    i8 11, label %bb.q
    i8 13, label %bb.q
    i8 15, label %bb.q
    i8 17, label %bb.q
    i8 19, label %bb.q
    i8 23, label %bb.q
    i8 25, label %bb.q
    i8 33, label %bb.q
    i8 30, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.cx = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 1)
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %get_request.exit.thread, label %bb.p

get_request.exit.thread:                          ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.cz = load ptr, ptr %i.aa, align 8
  %i.da = call ptr @val_to_str_const(i32 noundef 1, ptr noundef @opcode_vals, ptr noundef @.str.3205)
  call void @col_append_str(ptr noundef %i.cz, i32 noundef 25, ptr noundef %i.da)
  br label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.db = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.dc = add i8 %i.db, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %.027.i = phi i8 [ %i.dc, %bb.p ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ], [ %i.bj, %bb.n ]
  br i1 %.not35.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = load i8, ptr %i.cw, align 8
  %i.de = zext i8 %i.dd to i32
  %i.df = zext i8 %.027.i to i32
  %i.dg = add nsw i32 %i.df, -1
  %i.dh = icmp eq i32 %i.dg, %i.de
  br i1 %i.dh, label %get_request.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.n
  br label %get_request.exit

get_request.exit:                                 ; preds = %bb.g, %bb.j, %bb.l, %bb.r, %bb.s
  %.0.i952 = phi ptr [ %i.co, %bb.l ], [ null, %bb.s ], [ null, %bb.j ], [ %i.cw, %bb.r ], [ null, %bb.g ] ; 56 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.di = load ptr, ptr %i.aa, align 8
  %i.dj = zext i8 %i.bj to i32                    ; 3 uses
  %i.dk = call ptr @val_to_str_const(i32 noundef %i.dj, ptr noundef @opcode_vals, ptr noundef @.str.3205)
  call void @col_append_str(ptr noundef %i.di, i32 noundef 25, ptr noundef %i.dk)
  switch i8 %i.bj, label %proto_item_set_generated.exit [
    i8 1, label %bb.t
    i8 2, label %bb.ar
    i8 3, label %bb.at
    i8 4, label %bb.av
    i8 5, label %bb.ax
    i8 6, label %bb.az
    i8 7, label %.preheader1000
    i8 8, label %bb.bf
    i8 16, label %bb.bf
    i8 9, label %bb.bm
    i8 10, label %bb.bv
    i8 11, label %bb.by
    i8 12, label %bb.ci
    i8 13, label %bb.ck
    i8 14, label %bb.cx
    i8 32, label %bb.cx
    i8 15, label %bb.db
    i8 33, label %bb.db
    i8 17, label %bb.di
    i8 18, label %bb.ds
    i8 29, label %bb.ds
    i8 82, label %bb.ds
    i8 27, label %bb.ds
    i8 19, label %bb.dw
    i8 22, label %bb.dz
    i8 23, label %bb.dz
    i8 24, label %bb.el
    i8 -46, label %bb.eq
    i8 30, label %bb.en
  ]

.preheader1000:                                   ; preds = %get_request.exit
  %i.dl = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1)
  %.not9371027 = icmp eq i32 %i.dl, 0
  br i1 %.not9371027, label %proto_item_set_generated.exit, label %.lr.ph1029

.lr.ph1029:                                       ; preds = %.preheader1000
  %.not938 = icmp eq ptr %.0.i952, null
  %i.dm = getelementptr i8, ptr %.0.i952, i64 20
  br label %bb.bc

bb.t:                                             ; preds = %get_request.exit.thread, %get_request.exit
  %.0.i952977 = phi ptr [ null, %get_request.exit.thread ], [ %.0.i952, %get_request.exit ] ; 6 uses
  %i.dn = load i32, ptr @hf_btatt_error_code, align 4
  %i.do = load i32, ptr @hf_btatt_req_opcode_in_error, align 4
  %i.dp = load i32, ptr @ett_btatt_opcode, align 4
  %i.dq = call ptr @proto_tree_add_bitmask_with_flags(ptr noundef %i.z, ptr noundef %0, i32 noundef 1, i32 noundef %i.do, i32 noundef %i.dp, ptr noundef @hfx_btatt_opcode, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.ds = load i32, ptr @hf_btatt_handle_in_error, align 4
  %i.dt = call fastcc i32 @dissect_handle(ptr noundef %i.z, ptr noundef %1, i32 noundef %i.ds, ptr noundef %0, i32 noundef 2, ptr noundef %3, ptr noundef null, i32 noundef -1, i8 noundef zeroext %i.bj, ptr noundef nonnull %i.q) ; 3 uses
  %i.du = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dt) ; 2 uses
  %i.dv = zext i8 %i.du to i32
  %or.cond = icmp slt i8 %i.du, -96
  %.pre1062 = load i16, ptr %i.q, align 2         ; 2 uses
  br i1 %or.cond, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.dw = zext i16 %.pre1062 to i32
  call fastcc void @get_service_uuid_from_handle(ptr dead_on_unwind noalias nonnull writable align 2 %11, ptr noundef %1, i32 noundef %i.dw, i8 noundef zeroext %i.bj, ptr noundef %3)
  %.sroa.0.0.copyload = load i16, ptr %11, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  switch i16 %.sroa.0.0.copyload, label %bb.al [
    i16 6165, label %bb.v
    i16 6161, label %bb.w
    i16 6174, label %bb.x
    i16 6175, label %bb.y
    i16 6168, label %bb.z
    i16 6166, label %bb.aa
    i16 6149, label %bb.ab
    i16 6170, label %bb.ac
    i16 6152, label %bb.ad
    i16 6179, label %bb.ae
    i16 6157, label %bb.af
    i16 6153, label %bb.ag
    i16 6177, label %bb.ah
    i16 6181, label %bb.ai
    i16 6164, label %bb.aj
    i16 6172, label %bb.ak
  ]

bb.v:                                             ; preds = %bb.u
  %i.dx = load i32, ptr @hf_btatt_error_code_aios, align 4
  br label %bb.am

bb.w:                                             ; preds = %bb.u
  %i.dy = load i32, ptr @hf_btatt_error_code_ans, align 4
  br label %bb.am

bb.x:                                             ; preds = %bb.u
  %i.dz = load i32, ptr @hf_btatt_error_code_bms, align 4
  br label %bb.am

bb.y:                                             ; preds = %bb.u
  %i.ea = load i32, ptr @hf_btatt_error_code_cgms, align 4
  br label %bb.am

bb.z:                                             ; preds = %bb.u
  %i.eb = load i32, ptr @hf_btatt_error_code_cps, align 4
  br label %bb.am

bb.aa:                                            ; preds = %bb.u
  %i.ec = load i32, ptr @hf_btatt_error_code_cscs, align 4
  br label %bb.am

bb.ab:                                            ; preds = %bb.u
  %i.ed = load i32, ptr @hf_btatt_error_code_cts, align 4
  br label %bb.am

bb.ac:                                            ; preds = %bb.u
  %i.ee = load i32, ptr @hf_btatt_error_code_ess, align 4
  br label %bb.am

bb.ad:                                            ; preds = %bb.u
  %i.ef = load i32, ptr @hf_btatt_error_code_gls, align 4
  br label %bb.am

bb.ae:                                            ; preds = %bb.u
  %i.eg = load i32, ptr @hf_btatt_error_code_hps, align 4
  br label %bb.am

bb.af:                                            ; preds = %bb.u
  %i.eh = load i32, ptr @hf_btatt_error_code_hrs, align 4
  br label %bb.am

bb.ag:                                            ; preds = %bb.u
  %i.ei = load i32, ptr @hf_btatt_error_code_hts, align 4
  br label %bb.am

bb.ah:                                            ; preds = %bb.u
  %i.ej = load i32, ptr @hf_btatt_error_code_ips, align 4
  br label %bb.am

bb.ai:                                            ; preds = %bb.u
  %i.ek = load i32, ptr @hf_btatt_error_code_ots, align 4
  br label %bb.am

bb.aj:                                            ; preds = %bb.u
  %i.el = load i32, ptr @hf_btatt_error_code_rscs, align 4
  br label %bb.am

bb.ak:                                            ; preds = %bb.u
  %i.em = load i32, ptr @hf_btatt_error_code_uds, align 4
  br label %bb.am

bb.al:                                            ; preds = %bb.u
  %i.en = load i32, ptr @hf_btatt_error_code, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.t
  %.0869 = phi ptr [ @error_code_vals, %bb.al ], [ @error_code_aios_vals, %bb.v ], [ @error_code_ans_vals, %bb.w ], [ @error_code_bms_vals, %bb.x ], [ @error_code_cgms_vals, %bb.y ], [ @error_code_cps_vals, %bb.z ], [ @error_code_cscs_vals, %bb.aa ], [ @error_code_cts_vals, %bb.ab ], [ @error_code_ess_vals, %bb.ac ], [ @error_code_gls_vals, %bb.ad ], [ @error_code_hps_vals, %bb.ae ], [ @error_code_hrs_vals, %bb.af ], [ @error_code_hts_vals, %bb.ag ], [ @error_code_ips_vals, %bb.ah ], [ @error_code_ots_vals, %bb.ai ], [ @error_code_rscs_vals, %bb.aj ], [ @error_code_uds_vals, %bb.ak ], [ @error_code_vals, %bb.t ]
  %.0868 = phi i32 [ %i.en, %bb.al ], [ %i.dx, %bb.v ], [ %i.dy, %bb.w ], [ %i.dz, %bb.x ], [ %i.ea, %bb.y ], [ %i.eb, %bb.z ], [ %i.ec, %bb.aa ], [ %i.ed, %bb.ab ], [ %i.ee, %bb.ac ], [ %i.ef, %bb.ad ], [ %i.eg, %bb.ae ], [ %i.eh, %bb.af ], [ %i.ei, %bb.ag ], [ %i.ej, %bb.ah ], [ %i.ek, %bb.ai ], [ %i.el, %bb.aj ], [ %i.em, %bb.ak ], [ %i.dn, %bb.t ]
  %i.eo = load ptr, ptr %i.aa, align 8
  %i.ep = call ptr @val_to_str_const(i32 noundef %i.dv, ptr noundef nonnull %.0869, ptr noundef @.str.3205)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.eo, i32 noundef 25, ptr noundef @.str.3206, ptr noundef %i.ep)
  call fastcc void @col_append_info_by_handle(ptr noundef %1, i16 noundef zeroext %.pre1062, i8 noundef zeroext %i.bj, ptr noundef %3)
  %i.eq = call ptr @proto_tree_add_item(ptr noundef %i.z, i32 noundef %.0868, ptr noundef %0, i32 noundef %i.dt, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.er = add i32 %i.dt, 1                        ; 5 uses
  %.not941 = icmp eq ptr %.0.i952977, null
  br i1 %.not941, label %proto_item_set_generated.exit967, label %bb.an

bb.an:                                            ; preds = %bb.am
  switch i8 %i.dr, label %proto_item_set_generated.exit.thread [
    i8 16, label %bb.ao
    i8 8, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.es = load i32, ptr @hf_btatt_uuid16, align 4
  %i.et = getelementptr i8, ptr %.0.i952977, i64 20
  %i.eu = load i16, ptr %i.et, align 4
  %i.ev = zext i16 %i.eu to i32
  %i.ew = call ptr @proto_tree_add_uint(ptr noundef %i.z, i32 noundef %i.es, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ev) ; 2 uses
  %.not.i953 = icmp eq ptr %i.ew, null
end_hunk_0
