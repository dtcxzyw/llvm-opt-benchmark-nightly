Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/netmon?download=true
inline.NumInlined: 44
inline.NumDeleted: 8
begin_hunk_0_@utf_16_to_utf_8:bb.a
  %i.bc = and i16 %i.aw, 252
  %or.cond16 = icmp eq i16 %i.bc, 220
  br i1 %or.cond16, label %bb.k, label %.thread104

bb.k:                                             ; preds = %bb.j
  %i.bd = shl nuw nsw i32 %i.ap, 10
  %i.be = add nsw i32 %i.bd, -56613888
  %i.bf = add nsw i32 %i.be, %i.ba
  br label %.thread104.sink.split

.thread104.sink.split:                            ; preds = %bb.g, %bb.k
  %.sink129 = phi i32 [ %i.bf, %bb.k ], [ %i.ap, %bb.g ]
  %.379.ph = phi i32 [ %i.ar, %bb.k ], [ %.278115, %bb.g ]
  %i.bg = tail call i32 @g_unichar_to_utf8(i32 noundef %.sink129, ptr noundef %.0116)
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %.0116, i64 %i.bh
  br label %.thread104

.thread104:                                       ; preds = %.thread104.sink.split, %bb.g, %bb.j
  %.379 = phi i32 [ %i.ar, %bb.j ], [ %.278115, %bb.g ], [ %.379.ph, %.thread104.sink.split ] ; 2 uses
  %.3 = phi ptr [ %.0116, %bb.j ], [ %.0116, %bb.g ], [ %i.bi, %.thread104.sink.split ] ; 2 uses
  %i.bj = add i32 %.379, 2
  %i.bk = add i32 %.379, 3
  %i.bl = icmp ult i32 %i.bk, %1
  br i1 %i.bl, label %.lr.ph117, label %.critedge10, !llvm.loop !10

.critedge10:                                      ; preds = %.lr.ph117, %.thread104, %bb.i, %bb.h, %.critedge.thread
  %i.bm = phi ptr [ %i.b, %.critedge.thread ], [ %i.ah, %bb.h ], [ %i.ah, %bb.i ], [ %i.ah, %.thread104 ], [ %i.ah, %.lr.ph117 ]
  %.0.lcssa = phi ptr [ %i.b, %.critedge.thread ], [ %.0116, %.lr.ph117 ], [ %.3, %.thread104 ], [ %.0116, %bb.i ], [ %.0116, %bb.h ]
  store i8 0, ptr %.0.lcssa, align 1
  ret ptr %i.bm
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @netmonrec_process_info_destroy(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.a)
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_netmon() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @netmon_1_x_info)
  store i32 %i.a, ptr @netmon_1_x_file_type_subtype, align 4
  %i.b = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @netmon_2_x_info)
  store i32 %i.b, ptr @netmon_2_x_file_type_subtype, align 4
  %i.c = load i32, ptr @netmon_1_x_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str.16, i32 noundef %i.c)
  %i.d = load i32, ptr @netmon_2_x_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str.17, i32 noundef %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_register_file_type_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_register_backwards_compatibility_lua_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_unichar_to_utf8(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 3) i32 @netmon_process_record(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.netmon_atm_hdr, align 2     ; 6 uses
  %6 = alloca %union.anon, align 8                ; 9 uses
  %7 = alloca %union.anon.0, align 2              ; 5 uses
  %.sroa.8 = alloca [148 x i8], align 4           ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.c = getelementptr i8, ptr %i.b, i64 12       ; 4 uses
  %i.d = load i8, ptr %i.c, align 4               ; 2 uses
  %switch.selectcmp = icmp eq i8 %i.d, 2
  %switch.select = select i1 %switch.selectcmp, i32 16, i32 0
  %switch.selectcmp135 = icmp eq i8 %i.d, 1
  %switch.select136 = select i1 %switch.selectcmp135, i32 8, i32 %switch.select
  %i.e = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %1, ptr noundef nonnull %6, i32 noundef %switch.select136, ptr noundef %3, ptr noundef %4)
  br i1 %i.e, label %bb.b, label %.thread146

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 4
  switch i8 %i.f, label %.thread [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.val140 = load i16, ptr %i.g, align 4
  %i.h = zext i16 %.val140 to i32
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 6
  %.val138 = load i16, ptr %i.i, align 2
  %i.j = zext i16 %.val138 to i32
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = icmp ugt i32 %i.n, 262144
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i32 -13, ptr %3, align 4
  %i.p = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef %i.n, i32 noundef 262144)
  store ptr %i.p, ptr %4, align 8
  br label %.thread146

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  %.0119145 = phi i32 [ %i.l, %bb.d ], [ %i.h, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0121144 = phi i32 [ %i.n, %bb.d ], [ %i.j, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.r)
  %i.s = call ptr @wtap_block_create(i32 noundef 5)
  %i.t = getelementptr i8, ptr %2, i64 216
  store ptr %i.s, ptr %i.t, align 8
  %i.u = load i32, ptr %i.q, align 8
  %cond = icmp eq i32 %i.u, 13
  br i1 %cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.thread
  %i.v = icmp samesign ult i32 %.0121144, 16
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -13, ptr %3, align 4
  %i.w = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef %.0121144)
  store ptr %i.w, ptr %4, align 8
  br label %.thread146

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.x = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 16, ptr noundef %3, ptr noundef %4)
  br i1 %i.x, label %bb.i, label %netmon_read_atm_pseudoheader.exit

netmon_read_atm_pseudoheader.exit:                ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.thread146

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %2, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aa = load i16, ptr %i.z, align 2
  %rev.i = call i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.ac = load i16, ptr %i.ab, align 2
  %rev13.i = call i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ad = getelementptr i8, ptr %2, i64 72
  store i16 %rev.i, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %2, i64 74
  store i16 %rev13.i, ptr %i.ae, align 2
  store i32 0, ptr %i.y, align 8
  %i.af = getelementptr i8, ptr %2, i64 78
  %i.ag = getelementptr i8, ptr %2, i64 88
  store i32 0, ptr %i.ag, align 8
  store i64 0, ptr %i.af, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.ah = add i32 %.0119145, -16
  %i.ai = add nsw i32 %.0121144, -16
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.1122 = phi i32 [ %i.ai, %bb.i ], [ %.0121144, %.thread ] ; 2 uses
  %.1120 = phi i32 [ %i.ah, %bb.i ], [ %.0119145, %.thread ]
  %i.aj = load i8, ptr %i.c, align 4
  switch i8 %i.aj, label %bb.m [
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ak = load i32, ptr %6, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, 1000000
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.an = load i64, ptr %6, align 8
  %i.ao = mul i64 %i.an, 1000
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0126 = phi i64 [ 0, %bb.j ], [ %i.am, %bb.k ], [ %i.ao, %bb.l ] ; 2 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = add i64 %.0126, %i.ar                   ; 5 uses
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.au = call i64 @llvm.umax.i64(i64 %i.as, i64 -1000000000)
  %8 = icmp samesign ult i64 %i.as, -1000000000
  %umin = zext i1 %8 to i64                       ; 2 uses
  %i.av = add nsw i64 %i.as, %umin
  %i.aw = sub nsw i64 %i.au, %i.av
  %i.ax = udiv i64 %i.aw, 1000000000
  %9 = add nuw nsw i64 %i.ax, %umin               ; 2 uses
  %i.ay = mul i64 %9, 1000000000
  %i.az = add i64 %.0126, %i.ay
  %i.ba = add i64 %i.az, %i.ar
  %i.bb = add i64 %i.ba, 1000000000
  %i.bc = xor i64 %9, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.m
  %.0125.lcssa = phi i64 [ %i.as, %bb.m ], [ %i.bb, %.lr.ph.preheader ] ; 2 uses
  %.0124.lcssa = phi i64 [ 0, %bb.m ], [ %i.bc, %.lr.ph.preheader ]
  %i.bd = udiv i64 %.0125.lcssa, 1000000000
  %i.be = add nsw i64 %.0124.lcssa, %i.bd
  %i.bf = urem i64 %.0125.lcssa, 1000000000
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = getelementptr i8, ptr %2, i64 4
  store i32 3, ptr %i.bh, align 4
  %i.bi = load i64, ptr %i.b, align 8
  %i.bj = add i64 %i.be, %i.bi
  %i.bk = getelementptr i8, ptr %2, i64 16        ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %2, i64 24
  store i32 %i.bg, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %2, i64 48
  store i32 %.1122, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %2, i64 52
  store i32 %.1120, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %2, i64 264
  %i.bp = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %1, ptr noundef %i.bo, i32 noundef %.1122, ptr noundef %3, ptr noundef %4)
  br i1 %i.bp, label %bb.n, label %.thread146

bb.n:                                             ; preds = %._crit_edge
  %i.bq = load i8, ptr %i.c, align 4
  %i.br = icmp eq i8 %i.bq, 2
  br i1 %i.br, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr i8, ptr %i.b, i64 13      ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  switch i8 %i.bt, label %bb.q [
    i8 0, label %.critedge
    i8 1, label %bb.r
    i8 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %.0118 = phi i32 [ 15, %bb.q ], [ 6, %bb.p ], [ 2, %bb.o ]
  %i.bu = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef nonnull %7, i32 noundef %.0118, ptr noundef %3, ptr noundef %4)
  br i1 %i.bu, label %bb.s, label %.thread146

bb.s:                                             ; preds = %bb.r
  %.val = load i16, ptr %7, align 2               ; 7 uses
  %i.bv = zext i16 %.val to i32                   ; 4 uses
  %i.bw = add i16 %.val, 8064
  %or.cond = icmp ult i16 %i.bw, 11
  br i1 %or.cond, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  switch i16 %.val, label %default.unreachable [
    i16 -8064, label %bb.al
    i16 -8063, label %bb.u
    i16 -8062, label %bb.u
    i16 -8055, label %bb.u
    i16 -8054, label %bb.u
    i16 -8061, label %bb.v
    i16 -8060, label %bb.w
    i16 -8059, label %bb.x
    i16 -8058, label %bb.y
    i16 -8057, label %bb.z
    i16 -8056, label %bb.aa
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  store i32 -4, ptr %3, align 4
  %i.bx = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef %i.bv)
  store ptr %i.bx, ptr %4, align 8
  br label %.thread146

bb.v:                                             ; preds = %bb.t
  br label %bb.al

bb.w:                                             ; preds = %bb.t
  br label %bb.al

bb.x:                                             ; preds = %bb.t
  br label %bb.al

bb.y:                                             ; preds = %bb.t
  br label %bb.al

bb.z:                                             ; preds = %bb.t
  br label %bb.al

bb.aa:                                            ; preds = %bb.t
  br label %bb.al

default.unreachable:                              ; preds = %bb.t
  unreachable

bb.ab:                                            ; preds = %bb.s
  %i.by = and i32 %i.bv, 61440
  %i.bz = icmp eq i32 %i.by, 57344
  br i1 %i.bz, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ca = and i16 %.val, 4095
  %i.cb = zext nneg i16 %i.ca to i32              ; 2 uses
  %i.cc = call i32 @wtap_pcap_encap_to_wtap_encap(i32 noundef %i.cb) ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  store i32 -4, ptr %3, align 4
  %i.ce = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef %i.cb)
  store ptr %i.ce, ptr %4, align 8
  br label %.thread146

bb.ae:                                            ; preds = %bb.ab
  %i.cf = icmp ult i16 %.val, 12
  br i1 %i.cf, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cg = zext nneg i16 %.val to i64              ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr @netmon_encap, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = shl nuw nsw i64 1, %i.cg
  %i.ck = and i64 %i.cj, 3104
  %.not132 = icmp eq i64 %i.ck, 0
  br i1 %.not132, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 -4, ptr %3, align 4
  %i.cl = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef %i.bv)
  store ptr %i.cl, ptr %4, align 8
  br label %.thread146

bb.ah:                                            ; preds = %bb.ae
  switch i16 %.val, label %bb.ak [
    i16 -32, label %bb.al
    i16 -5, label %bb.ai
    i16 -4, label %.thread146
    i16 -3, label %.thread146
    i16 -2, label %.thread146
    i16 -1, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  store i32 -4, ptr %3, align 4
  %i.cm = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef %i.bv)
  store ptr %i.cm, ptr %4, align 8
  br label %.thread146

bb.al:                                            ; preds = %bb.ah, %bb.t, %bb.ac, %bb.ai, %bb.aj, %bb.af, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0117 = phi i32 [ 189, %bb.aj ], [ 190, %bb.ai ], [ 191, %bb.v ], [ 192, %bb.w ], [ 193, %bb.x ], [ 194, %bb.y ], [ 195, %bb.z ], [ 196, %bb.aa ], [ %i.cc, %bb.ac ], [ %i.ci, %bb.af ], [ 20, %bb.t ], [ 187, %bb.ah ]
  %i.cn = getelementptr i8, ptr %2, i64 56
  store i32 %.0117, ptr %i.cn, align 8
  %i.co = load i8, ptr %i.bs, align 1
  %i.cp = icmp ugt i8 %i.co, 2
  br i1 %i.cp, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 6
  %i.cr = load i64, ptr %i.cq, align 2
  %i.cs = call zeroext i1 @filetime_to_nstime(ptr noundef %i.bk, i64 noundef %i.cr)
  br i1 %i.cs, label %.critedge, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.am
  store i32 -13, ptr %3, align 4
  %i.ct = call noalias dereferenceable_or_null(43) ptr @g_malloc(i64 noundef 43) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(43) %i.ct, ptr noundef nonnull align 1 dereferenceable(43) @.str.21, i64 noundef 43, i1 noundef false) #10
  store ptr %i.ct, ptr %4, align 8
  br label %.thread146

.critedge:                                        ; preds = %bb.am, %bb.o, %bb.al, %bb.n
  %i.cu = getelementptr i8, ptr %2, i64 56        ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8
  switch i32 %i.cv, label %netmon_set_pseudo_header_info.exit [
    i32 13, label %bb.an
    i32 1, label %bb.ao
  ]

bb.an:                                            ; preds = %.critedge
  call void @atm_guess_traffic_type(ptr noundef %2)
  br label %netmon_set_pseudo_header_info.exit

bb.ao:                                            ; preds = %.critedge
  %i.cw = getelementptr i8, ptr %2, i64 64
  store i32 0, ptr %i.cw, align 8
  br label %netmon_set_pseudo_header_info.exit

netmon_set_pseudo_header_info.exit:               ; preds = %.critedge, %bb.an, %bb.ao
  %i.cx = getelementptr i8, ptr %i.b, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not133 = icmp eq ptr %i.cy, null
end_hunk_0
begin_hunk_1_@wtap_pcap_encap_to_wtap_encap
declare i32 @wtap_pcap_encap_to_wtap_encap(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @filetime_to_nstime(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @atm_guess_traffic_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal range(i32 -8, 1) i32 @netmon_dump_can_write_encap_1_x(i32 noundef %0) #6 {
bb.a:
  %i.a = icmp ugt i32 %0, 13
  %i.b = zext nneg i32 %0 to i64
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 8089
  %.not = icmp ne i64 %i.d, 0
  %i.e = select i1 %i.a, i1 true, i1 %.not
  %.0 = select i1 %i.e, i32 -8, i32 0
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @netmon_dump_open_1_x(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call i64 @wtap_dump_file_seek(ptr noundef %0, i64 noundef 128, i32 noundef 0, ptr noundef %1)
  %i.b = icmp ne i64 %i.a, -1                     ; 2 uses
  br i1 %i.b, label %bb.b, label %netmon_dump_open.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  store i64 128, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 64
  store ptr @netmon_dump, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 72
  store ptr @netmon_dump_finish, ptr %i.e, align 8
  %i.f = tail call noalias dereferenceable_or_null(56) ptr @g_malloc(i64 noundef 56) #11 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 24
  store i32 128, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 1
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.f, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  br label %netmon_dump_open.exit

netmon_dump_open.exit:                            ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i64 @wtap_dump_file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @netmon_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.netmonrec_1_x_hdr, align 4  ; 6 uses
  %5 = alloca %struct.netmonrec_2_x_hdr, align 8  ; 6 uses
  %6 = alloca %struct.netmonrec_2_1_trlr, align 2 ; 4 uses
  %7 = alloca %struct.netmon_atm_hdr, align 2     ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 48         ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.d = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -24, ptr %2, align 4
  %i.e = tail call ptr @wtap_unwritable_rec_type_err_string(ptr noundef %1)
  store ptr %i.e, ptr %3, align 8
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.a, align 8
  %i.i = icmp ugt i32 %i.h, 262144
  br i1 %i.i, label %bb.e, label %._crit_edge109

._crit_edge109:                                   ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  store i32 -22, ptr %2, align 4
  br label %bb.ak

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8
  %.not100 = icmp eq i32 %i.k, %i.m
  br i1 %.not100, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -9, ptr %2, align 4
  br label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.a, align 8
  %i.o = icmp ugt i32 %i.n, 65535
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -22, ptr %2, align 4
  br label %bb.ak

bb.j:                                             ; preds = %._crit_edge109, %bb.h
  %i.p = phi i32 [ %.pre, %._crit_edge109 ], [ %i.k, %bb.h ] ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.r = icmp eq i32 %i.p, -1
  br i1 %i.r, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %1, i64 56
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp ugt i32 %i.t, 13
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = shl nuw nsw i64 1, %i.v
  %i.x = and i64 %i.w, 8089
  %.not101 = icmp eq i64 %i.x, 0
  br i1 %.not101, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 -8, ptr %2, align 4
  br label %bb.ak

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr [4 x i8], ptr @wtap_encap, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = trunc i32 %i.z to i16
  store i16 %i.aa, ptr %6, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ab = getelementptr i8, ptr %i.c, i64 48      ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !11, !noundef !12
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 27, ptr %2, align 4
  br label %bb.ak

bb.q:                                             ; preds = %bb.o
  %i.ae = getelementptr i8, ptr %i.c, i64 1       ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !11, !noundef !12
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %._crit_edge111, label %bb.r

._crit_edge111:                                   ; preds = %bb.q
  %.phi.trans.insert112 = getelementptr i8, ptr %i.c, i64 8
  %.pre113 = load i64, ptr %.phi.trans.insert112, align 8
  %.phi.trans.insert114 = getelementptr i8, ptr %i.c, i64 16
  %.pre115 = load i32, ptr %.phi.trans.insert114, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %.fr = freeze i32 %i.al                         ; 2 uses
  %i.am = srem i32 %.fr, 1000000
  %i.an = sub nsw i32 %.fr, %i.am                 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.c, i64 16
  store i32 %i.an, ptr %i.ao, align 8
  store i8 1, ptr %i.ae, align 1
  %.pre110 = load i32, ptr %i.q, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge111, %bb.r
  %i.ap = phi i32 [ %i.an, %bb.r ], [ %.pre115, %._crit_edge111 ] ; 3 uses
  %i.aq = phi i64 [ %i.ai, %bb.r ], [ %.pre113, %._crit_edge111 ] ; 2 uses
  %i.ar = phi i32 [ %.pre110, %bb.r ], [ %i.p, %._crit_edge111 ]
  %i.as = icmp eq i32 %i.ar, 13
  %. = select i1 %i.as, i32 16, i32 0             ; 4 uses
  %i.at = getelementptr i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.au, %i.aq
  %i.aw = getelementptr i8, ptr %1, i64 24
  %i.ax = load i32, ptr %i.aw, align 8            ; 4 uses
  %i.ay = sub i32 %i.ax, %i.ap                    ; 3 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ba = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 -1000000000)
  %i.bb = add i32 %i.ap, %i.ba                    ; 2 uses
  %8 = icmp ne i32 %i.bb, %i.ax
  %umin = zext i1 %8 to i32                       ; 2 uses
  %i.bc = add i32 %i.ax, %umin
  %i.bd = sub i32 %i.bb, %i.bc
  %9 = udiv i32 %i.bd, 1000000000
  %10 = add nuw nsw i32 %9, %umin                 ; 2 uses
  %11 = mul i32 %10, 1000000000
  %i.be = add i32 %i.ax, %11
  %i.bf = add i32 %i.be, 1000000000
  %i.bg = sub i32 %i.bf, %i.ap
  %i.bh = xor i64 %i.aq, -1
  %i.bi = add i64 %i.au, %i.bh
  %i.bj = zext nneg i32 %10 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.s
  %.091.lcssa = phi i64 [ %i.av, %bb.s ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.ay, %bb.s ], [ %i.bg, %.lr.ph.preheader ] ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 52        ; 2 uses
  br i1 %i.g, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.bm = mul i64 %.091.lcssa, 1000000
  %i.bn = add nuw i32 %.0.lcssa, 500
  %i.bo = sdiv i32 %i.bn, 1000
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add i64 %i.bm, %i.bp
  store i64 %i.bq, ptr %5, align 8
  %i.br = load i32, ptr %i.bl, align 4
  %i.bs = add i32 %i.br, %.
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bs, ptr %i.bt, align 8
  %i.bu = load i32, ptr %i.a, align 8
  %i.bv = add i32 %i.bu, %.
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.bv, ptr %i.bw, align 4
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.bx = add nuw i32 %.0.lcssa, 500000
  %i.by = sdiv i32 %i.bx, 1000000
  %i.bz = trunc i64 %.091.lcssa to i32
  %i.ca = mul i32 %i.bz, 1000
  %i.cb = add i32 %i.by, %i.ca
  store i32 %i.cb, ptr %4, align 4
  %i.cc = load i32, ptr %i.bl, align 4
  %i.cd = add i32 %i.cc, %.
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ce, ptr %i.cf, align 4
  %i.cg = load i32, ptr %i.a, align 8
  %i.ch = add i32 %i.cg, %.
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ci, ptr %i.cj, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.095 = phi ptr [ %5, %bb.t ], [ %4, %bb.u ]
  %.093 = phi i64 [ 16, %bb.t ], [ 8, %bb.u ]     ; 3 uses
  %i.ck = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %.095, i64 noundef %.093, ptr noundef %2)
  br i1 %i.ck, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.cl = load i32, ptr %i.q, align 8
  %i.cm = icmp eq i32 %i.cl, 13
  br i1 %i.cm, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr i8, ptr %1, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %i.co = load i16, ptr %i.cn, align 8
  %rev = call i16 @llvm.bswap.i16(i16 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %rev, ptr %i.cp, align 2
  %i.cq = getelementptr i8, ptr %1, i64 74
  %i.cr = load i16, ptr %i.cq, align 2
  %rev102 = call i16 @llvm.bswap.i16(i16 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %rev102, ptr %i.cs, align 2
  %i.ct = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 16, ptr noundef %2)
  br i1 %i.ct, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.cu = add nuw nsw i64 %.093, 16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.094 = phi i64 [ %i.cu, %bb.y ], [ %.093, %bb.w ]
  %i.cv = getelementptr i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %1, i64 280
  %.val104 = load i64, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %.val, i64 %.val104
  %i.cy = load i32, ptr %i.a, align 8
  %i.cz = zext i32 %i.cy to i64
  %i.da = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.cx, i64 noundef %i.cz, ptr noundef %2)
  br i1 %i.da, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.db = load i32, ptr %i.a, align 8
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw nsw i64 %.094, %i.dc            ; 2 uses
  %i.de = load i32, ptr %i.q, align 8
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dg = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 2, ptr noundef %2)
  br i1 %i.dg, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.dh = add nuw nsw i64 %i.dd, 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.1 = phi i64 [ %i.dh, %bb.ac ], [ %i.dd, %bb.aa ] ; 2 uses
  %i.di = getelementptr i8, ptr %i.c, i64 44      ; 3 uses
  %i.dj = load i32, ptr %i.di, align 4            ; 3 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dl = call noalias dereferenceable_or_null(4096) ptr @g_malloc(i64 noundef 4096) #11 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.c, i64 32
  store ptr %i.dl, ptr %i.dm, align 8
  store i32 1024, ptr %i.di, align 4
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.dn = getelementptr i8, ptr %i.c, i64 40
  %i.do = load i32, ptr %i.dn, align 8
  %.not103 = icmp ult i32 %i.do, %i.dj
  br i1 %.not103, label %._crit_edge116, label %bb.ag

._crit_edge116:                                   ; preds = %bb.af
  %.phi.trans.insert117 = getelementptr i8, ptr %i.c, i64 32
  %.pre118 = load ptr, ptr %.phi.trans.insert117, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dp = shl i32 %i.dj, 1                        ; 2 uses
  store i32 %i.dp, ptr %i.di, align 4
  %i.dq = getelementptr i8, ptr %i.c, i64 32      ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = zext i32 %i.dp to i64
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %i.du = call ptr @g_realloc(ptr noundef %i.dr, i64 noundef %i.dt) ; 2 uses
  store ptr %i.du, ptr %i.dq, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge116, %bb.ag, %bb.ae
  %i.dv = phi ptr [ %.pre118, %._crit_edge116 ], [ %i.du, %bb.ag ], [ %i.dl, %bb.ae ]
  %i.dw = getelementptr i8, ptr %i.c, i64 24      ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8            ; 3 uses
  %i.dy = getelementptr i8, ptr %i.c, i64 40      ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr [4 x i8], ptr %i.dv, i64 %i.ea
  store i32 %i.dx, ptr %i.eb, align 4
  %i.ec = zext i32 %i.dx to i64
  %i.ed = add nuw nsw i64 %.1, %i.ec
  %i.ee = icmp samesign ugt i64 %i.ed, 4294967295
  br i1 %i.ee, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.ab, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ef = load i32, ptr %i.dy, align 8
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.dy, align 8
  %i.eh = trunc i64 %.1 to i32
  %i.ei = add i32 %i.dx, %i.eh
  store i32 %i.ei, ptr %i.dw, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ab, %bb.z, %bb.x, %bb.v, %bb.aj, %bb.p, %bb.m, %bb.i, %bb.g, %bb.e, %bb.b
  %.096 = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.m ], [ false, %bb.p ], [ true, %bb.aj ], [ false, %bb.z ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i1 %.096
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @netmon_dump_finish(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.netmon_hdr, align 4         ; 20 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = getelementptr i8, ptr %i.b, i64 40       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.f, ptr noundef %1)
  br i1 %i.i, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @wtap_dump_file_seek(ptr noundef %0, i64 noundef 0, i32 noundef 0, ptr noundef %1)
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
end_hunk_1
