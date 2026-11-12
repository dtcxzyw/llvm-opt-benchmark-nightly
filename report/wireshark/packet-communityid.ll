Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-communityid?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@communityid_dissector:bb.a
  %i.dg = getelementptr i8, ptr %1, i64 188
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = icmp eq i32 %i.dh, 4
  br i1 %i.di, label %communityid_calc_wrapper.exit99, label %.thread101

bb.w:                                             ; preds = %bb.u
  %i.dj = getelementptr i8, ptr %1, i64 188
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp eq i32 %i.dk, 16
  br i1 %i.dl, label %communityid_calc_wrapper.exit99, label %.thread101

communityid_calc_wrapper.exit99:                  ; preds = %bb.v, %bb.w
  %.sink.i98 = phi i8 [ 4, %bb.v ], [ 16, %bb.w ]
  %i.dm = getelementptr i8, ptr %1, i64 168
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr i8, ptr %1, i64 192
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call fastcc zeroext i1 @communityid_calc(i8 noundef zeroext %.369, i8 noundef zeroext %.sink.i98, ptr noundef %i.dn, ptr noundef %i.dp, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a)
  br i1 %i.dq, label %.critedge87, label %.thread101

.critedge87:                                      ; preds = %communityid_calc_wrapper.exit99
  %.pr113.pre = load ptr, ptr %i.a, align 8       ; 2 uses
  %.not83 = icmp eq ptr %.pr113.pre, null
  br i1 %.not83, label %.critedge87.thread143, label %.critedge87.thread

.critedge87.thread:                               ; preds = %thread-pre-split, %bb.p, %.critedge87
  %i.dr = phi ptr [ %.pr113.pre, %.critedge87 ], [ %.pre123.pre, %bb.p ], [ %.pre123126, %thread-pre-split ] ; 2 uses
  %i.ds = load i32, ptr @hf_communityid_hash, align 4
  %i.dt = call ptr @proto_tree_add_string(ptr noundef nonnull %2, i32 noundef %i.ds, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.dr) ; 2 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.x

bb.x:                                             ; preds = %.critedge87.thread
  %i.du = getelementptr i8, ptr %i.dt, i64 40
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.dv, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr i8, ptr %i.dv, i64 28     ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = or i32 %i.dx, 2
  store i32 %i.dy, ptr %i.dw, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %.critedge87.thread, %bb.x, %bb.y
  call void @g_free(ptr noundef nonnull %i.dr)
  br label %.critedge87.thread143

.critedge87.thread143:                            ; preds = %.loopexit, %proto_item_set_generated.exit, %.critedge87
  %i.dz = call i32 @tvb_reported_length(ptr noundef %0)
  br label %.thread101

.thread101:                                       ; preds = %bb.b, %.thread, %bb.w, %bb.v, %bb.u, %bb.c, %communityid_calc_wrapper.exit91.thread, %communityid_calc_wrapper.exit.thread, %communityid_calc_wrapper.exit99, %communityid_calc_wrapper.exit95.thread, %select.unfold, %bb.a, %communityid_calc_wrapper.exit, %communityid_calc_wrapper.exit91, %.critedge87.thread143
  %.7 = phi i32 [ 0, %communityid_calc_wrapper.exit ], [ 0, %bb.a ], [ %i.dz, %.critedge87.thread143 ], [ 0, %select.unfold ], [ 0, %communityid_calc_wrapper.exit95.thread ], [ 0, %communityid_calc_wrapper.exit91 ], [ 0, %communityid_calc_wrapper.exit99 ], [ 0, %bb.w ], [ 0, %communityid_calc_wrapper.exit.thread ], [ 0, %communityid_calc_wrapper.exit91.thread ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.7
}

; Function Attrs: null_pointer_is_valid
declare void @register_postdissector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uint_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_communityid() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_get_id_by_filter_name(ptr noundef @.str.12)
  store i32 %i.a, ptr @proto_ip, align 4
  %i.b = tail call i32 @proto_get_id_by_filter_name(ptr noundef @.str.13)
  store i32 %i.b, ptr @proto_ipv6, align 4
  %i.c = tail call i32 @proto_get_id_by_filter_name(ptr noundef @.str.14)
  store i32 %i.c, ptr @proto_icmp, align 4
  %i.d = tail call i32 @proto_get_id_by_filter_name(ptr noundef @.str.15)
  store i32 %i.d, ptr @proto_icmpv6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_get_id_by_filter_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_frame_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_frame_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @communityid_calc(i8 noundef zeroext %0, i8 noundef zeroext range(i8 4, 17) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca i16, align 2                      ; 10 uses
  %i.f = alloca i16, align 2                      ; 10 uses
  store i8 %0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.g = tail call i32 @gcry_md_get_algo_dlen(i32 noundef 2) ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef @__func__.communityid_calc, ptr noundef @.str.17)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %.off = add nsw i8 %1, -5
  %switch = icmp ult i8 %.off, 11
  br i1 %switch, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef @__func__.communityid_calc, ptr noundef @.str.18)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %2, null
  %i.j = icmp eq ptr %3, null
  %or.cond4.not = or i1 %i.i, %i.j
  br i1 %or.cond4.not, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %bb.e
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef @__func__.communityid_calc, ptr noundef @.str.19)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.k = icmp ne ptr %4, null
  %i.l = icmp ne ptr %5, null
  %or.cond6 = and i1 %i.k, %i.l
  br i1 %or.cond6, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.m = load i16, ptr %4, align 2                ; 6 uses
  store i16 %i.m, ptr %i.e, align 2
  %i.n = load i16, ptr %5, align 2                ; 3 uses
  store i16 %i.n, ptr %i.f, align 2
  switch i8 %0, label %.thread [
    i8 1, label %bb.i
    i8 58, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %rev106 = tail call i16 @llvm.bswap.i16(i16 %i.m) ; 3 uses
  %i.o = icmp ult i16 %rev106, 19
  br i1 %i.o, label %switch.hole_check, label %.split

.split:                                           ; preds = %switch.hole_check, %bb.i
  store i16 %i.m, ptr %i.e, align 2
  store i16 %i.n, ptr %i.f, align 2
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %rev = tail call i16 @llvm.bswap.i16(i16 %i.m)
  %switch.tableidx = add i16 %rev, -128           ; 3 uses
  %i.p = icmp ult i16 %switch.tableidx, 18
  br i1 %i.p, label %switch.hole_check20, label %bb.k

bb.k:                                             ; preds = %switch.hole_check20, %bb.j
  store i16 %i.m, ptr %i.e, align 2
  store i16 %i.n, ptr %i.f, align 2
  br label %bb.n

switch.hole_check:                                ; preds = %bb.i
  %switch.maskindex = zext nneg i16 %rev106 to i32
  %switch.shifted = lshr i32 517889, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %.thread.sink.split, label %.split

switch.hole_check20:                              ; preds = %bb.j
  %switch.maskindex22 = zext nneg i16 %switch.tableidx to i32
  %switch.shifted23 = lshr i32 203247, %switch.maskindex22
  %switch.lobit24 = trunc i32 %switch.shifted23 to i1
  br i1 %switch.lobit24, label %.thread.sink.split, label %bb.k

.thread.sink.split:                               ; preds = %switch.hole_check20, %switch.hole_check
  %switch.tableidx.sink = phi i16 [ %rev106, %switch.hole_check ], [ %switch.tableidx, %switch.hole_check20 ]
  %.sink.in = phi ptr [ @switch.table.communityid_calc, %switch.hole_check ], [ @switch.table.communityid_calc.3, %switch.hole_check20 ]
  %7 = zext nneg i16 %switch.tableidx.sink to i64
  %switch.gep25 = getelementptr inbounds nuw [2 x i8], ptr %.sink.in, i64 %7
  %.sink = load i16, ptr %switch.gep25, align 2
  store i16 %i.m, ptr %i.e, align 2
  store i16 %.sink, ptr %i.f, align 2
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %bb.g
  %.0835 = phi ptr [ %i.e, %bb.h ], [ %4, %bb.g ], [ %i.e, %.thread.sink.split ] ; 5 uses
  %.0854 = phi ptr [ %i.f, %bb.h ], [ %5, %bb.g ], [ %i.f, %.thread.sink.split ] ; 5 uses
  %i.q = zext nneg i8 %1 to i64
  %i.r = tail call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %3, i64 noundef %i.q) #10 ; 2 uses
  %i.s = icmp ne ptr %.0835, null
  %i.t = icmp ne ptr %.0854, null
  %or.cond.i = and i1 %i.s, %i.t                  ; 3 uses
  br i1 %or.cond.i, label %bb.l, label %communityid_tuple_lt.exit

bb.l:                                             ; preds = %.thread
  %i.u = load i16, ptr %.0835, align 2
  %rev.i = call i16 @llvm.bswap.i16(i16 %i.u)
  %i.v = load i16, ptr %.0854, align 2
  %rev13.i = call i16 @llvm.bswap.i16(i16 %i.v)
  %i.w = icmp ult i16 %rev.i, %rev13.i
  br label %communityid_tuple_lt.exit

communityid_tuple_lt.exit:                        ; preds = %.thread, %bb.l
  %i.x = phi i1 [ %i.w, %bb.l ], [ true, %.thread ]
  %i.y = icmp slt i32 %i.r, 0
  %i.z = icmp eq i32 %i.r, 0
  %i.aa = select i1 %i.z, i1 %i.x, i1 false
  %i.ab = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %communityid_tuple_lt.exit
  %spec.select = select i1 %or.cond.i, ptr %.0835, ptr %.0854
  %spec.select112 = select i1 %or.cond.i, ptr %.0854, ptr %.0835
  br label %bb.n

bb.n:                                             ; preds = %.split, %bb.k, %communityid_tuple_lt.exit, %bb.m
  %.287 = phi ptr [ %i.f, %bb.k ], [ %.0854, %communityid_tuple_lt.exit ], [ %spec.select, %bb.m ], [ %i.f, %.split ] ; 2 uses
  %.2 = phi ptr [ %i.e, %bb.k ], [ %.0835, %communityid_tuple_lt.exit ], [ %spec.select112, %bb.m ], [ %i.e, %.split ] ; 2 uses
  %.082 = phi ptr [ %3, %bb.k ], [ %3, %communityid_tuple_lt.exit ], [ %2, %bb.m ], [ %3, %.split ]
  %.081 = phi ptr [ %2, %bb.k ], [ %2, %communityid_tuple_lt.exit ], [ %3, %bb.m ], [ %2, %.split ]
  %i.ac = load i16, ptr @cid_cfg.1, align 2
  %rev110 = call i16 @llvm.bswap.i16(i16 %i.ac)
  store i16 %rev110, ptr %i.c, align 2
  %i.ad = call i32 @gcry_md_open(ptr noundef nonnull %i.d, i32 noundef 2, i32 noundef 0)
  %.not111 = icmp eq i32 %i.ad, 0
  br i1 %.not111, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.d, align 8
  call void @gcry_md_write(ptr noundef %i.ae, ptr noundef nonnull %i.c, i64 noundef 2)
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = zext nneg i8 %1 to i64                  ; 2 uses
  call void @gcry_md_write(ptr noundef %i.af, ptr noundef nonnull %.081, i64 noundef %i.ag)
  %i.ah = load ptr, ptr %i.d, align 8
  call void @gcry_md_write(ptr noundef %i.ah, ptr noundef nonnull %.082, i64 noundef %i.ag)
  %i.ai = load ptr, ptr %i.d, align 8
  call void @gcry_md_write(ptr noundef %i.ai, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.aj = load ptr, ptr %i.d, align 8
  call void @gcry_md_write(ptr noundef %i.aj, ptr noundef nonnull %i.b, i64 noundef 1)
  %i.ak = icmp ne ptr %.2, null
  %i.al = icmp ne ptr %.287, null
  %or.cond10 = and i1 %i.al, %i.ak
  br i1 %or.cond10, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.d, align 8
  call void @gcry_md_write(ptr noundef %i.am, ptr noundef nonnull %.2, i64 noundef 2)
  %i.an = load ptr, ptr %i.d, align 8
  call void @gcry_md_write(ptr noundef %i.an, ptr noundef nonnull %.287, i64 noundef 2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = call noalias ptr @g_malloc(i64 noundef %i.h) #11 ; 4 uses
  %i.ap = load ptr, ptr %i.d, align 8
  %i.aq = call ptr @gcry_md_read(ptr noundef %i.ap, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ao, ptr noundef align 1 %i.aq, i64 noundef range(i64 0, 4294967296) %i.h, i1 noundef false) #9
  %i.ar = load ptr, ptr %i.d, align 8
  call void @gcry_md_close(ptr noundef %i.ar)
  %i.as = load i8, ptr @cid_cfg.0, align 2, !range !6, !noundef !7
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = call noalias ptr @g_base64_encode(ptr noundef %i.ao, i64 noundef %i.h) ; 3 uses
  %i.av = call i64 @strlen(ptr noundef %i.au) #10
  %i.aw = add i64 %i.av, 3                        ; 4 uses
  %i.ax = call noalias ptr @g_malloc(i64 noundef %i.aw) #11 ; 2 uses
  store ptr %i.ax, ptr %6, align 8
  %i.ay = icmp ne i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ay)
  %i.az = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.ax, i64 noundef %i.aw, i32 noundef 2, i64 noundef %i.aw, ptr noundef @.str.20, ptr noundef @.str.21, ptr noundef %i.au) ; 0 uses
  call void @g_free(ptr noundef %i.au)
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.ba = shl nuw nsw i64 %i.h, 1
  %i.bb = add nuw nsw i64 %i.ba, 3                ; 2 uses
  %i.bc = call noalias ptr @g_malloc(i64 noundef %i.bb) #11 ; 3 uses
  store ptr %i.bc, ptr %6, align 8
  %i.bd = call ptr @__memcpy_chk(ptr noundef %i.bc, ptr noundef @.str.21, i64 noundef 2, i64 noundef %i.bb) #9, !alias.scope !16 ; 0 uses
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.013 = phi i64 [ %i.bi, %.lr.ph ], [ 0, %bb.s ] ; 2 uses
  %.pn12 = phi ptr [ %.079, %.lr.ph ], [ %i.bc, %bb.s ]
  %.079 = getelementptr i8, ptr %.pn12, i64 2     ; 2 uses
  %i.be = getelementptr i8, ptr %i.ao, i64 %.013
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %.079, i64 noundef 3, i32 noundef 2, i64 noundef -1, ptr noundef @.str.22, i32 noundef %i.bg) ; 0 uses
  %i.bi = add nuw nsw i64 %.013, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph, %bb.s, %bb.r
  call void @g_free(ptr noundef %i.ao)
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %.loopexit, %bb.f, %bb.d, %bb.b
  %.080 = phi i1 [ false, %bb.b ], [ true, %.loopexit ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i1 %.080
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_get_algo_dlen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_return_if_fail_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_md_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_base64_encode(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
end_hunk_0
