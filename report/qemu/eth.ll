Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/eth?download=true
inline.NumInlined: 54
inline.NumDeleted: 17
begin_hunk_0_@eth_parse_ipv6_hdr:bb.a
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = load i64, ptr %i.u, align 8             ; 2 uses
  %.not.i34.i = icmp ugt i64 %i.cw, %i.cy
  %i.cz = sub nuw i64 %i.cy, %i.cw
  %.not21.i35.i = icmp ult i64 %i.cz, 16
  %or.cond22.i36.i = select i1 %.not.i34.i, i1 true, i1 %.not21.i35.i
  br i1 %or.cond22.i36.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load ptr, ptr %0, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.v, ptr noundef nonnull align 1 dereferenceable(16) %i.db, i64 noundef range(i64 0, 60) 16, i1 noundef false) #7
  br label %_eth_get_rss_ex_src_addr.exit

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.dc = call i64 @iov_to_buf_full(ptr noundef %0, i32 noundef %1, i64 noundef %i.cw, ptr noundef nonnull %i.v, i64 noundef 16) #7
  %i.dd = icmp eq i64 %i.dc, 16
  %i.de = zext i1 %i.dd to i8
  br label %_eth_get_rss_ex_src_addr.exit

bb.ab:                                            ; preds = %bb.w
  %i.df = add i64 %i.ct, %.02510.i
  %i.dg = sub nuw nsw i64 %.0269.i, %i.ct         ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, 2
  br i1 %i.dh, label %.split.i, label %_eth_get_rss_ex_src_addr.exit, !llvm.loop !11

_eth_get_rss_ex_src_addr.exit:                    ; preds = %.split.i, %iov_to_buf.exit.i63, %bb.v, %bb.ab, %.split.us.i, %iov_to_buf.exit.us.i, %bb.r, %bb.t, %.split12.us.i, %bb.z, %bb.aa
  %.2.i = phi i8 [ 1, %bb.z ], [ 0, %.split12.us.i ], [ %i.de, %bb.aa ], [ 0, %.split.us.i ], [ 0, %bb.t ], [ 0, %bb.r ], [ 0, %iov_to_buf.exit.us.i ], [ 0, %bb.ab ], [ 0, %bb.v ], [ 0, %iov_to_buf.exit.i63 ], [ 0, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  store i8 %.2.i, ptr %i.c, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.h
  store i8 1, ptr %i.d, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.h, %_eth_get_rss_ex_src_addr.exit, %bb.ac, %bb.i, %_eth_get_rss_ex_dst_addr.exit
  %i.di = load i8, ptr %i.w, align 1
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = load i64, ptr %i.n, align 8
  %i.dm = add i64 %i.dl, 8
  %i.dn = add i64 %i.dm, %i.dk                    ; 2 uses
  store i64 %i.dn, ptr %i.n, align 8
  %i.do = load i8, ptr %6, align 2                ; 3 uses
  switch i8 %i.do, label %bb.ae [
    i8 0, label %eth_is_ip6_extension_header_type.exit67
    i8 43, label %eth_is_ip6_extension_header_type.exit67
    i8 44, label %eth_is_ip6_extension_header_type.exit67
    i8 51, label %eth_is_ip6_extension_header_type.exit67
    i8 60, label %eth_is_ip6_extension_header_type.exit67
    i8 -121, label %eth_is_ip6_extension_header_type.exit67
  ]

eth_is_ip6_extension_header_type.exit67:          ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.dp = add i64 %i.dn, %2                       ; 2 uses
  %i.dq = icmp ult i64 %i.a, %i.dp
  br i1 %i.dq, label %.loopexit, label %bb.f, !llvm.loop !12

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.do, ptr %3, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %eth_is_ip6_extension_header_type.exit67, %iov_to_buf.exit56, %bb.e, %iov_to_buf.exit, %bb.a, %bb.ae, %eth_is_ip6_extension_header_type.exit
  %.046 = phi i1 [ true, %eth_is_ip6_extension_header_type.exit ], [ false, %bb.a ], [ false, %iov_to_buf.exit ], [ true, %bb.ae ], [ false, %bb.e ], [ false, %iov_to_buf.exit56 ], [ false, %eth_is_ip6_extension_header_type.exit67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i1 %.046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 19) i64 @eth_strip_vlan(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.vlan_header, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  br i1 %.not, label %iov_to_buf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %2, %i.b
  %i.c = sub nuw i64 %i.b, %2
  %.not21.i = icmp ult i64 %i.c, 14
  %or.cond22.i = select i1 %.not.i, i1 true, i1 %.not21.i
  br i1 %or.cond22.i, label %iov_to_buf.exit, label %iov_to_buf.exit.thread

iov_to_buf.exit.thread:                           ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %3, ptr noundef nonnull align 1 dereferenceable(14) %i.e, i64 noundef range(i64 0, 60) 14, i1 noundef false) #7
  br label %bb.c

iov_to_buf.exit:                                  ; preds = %bb.a, %bb.b
  %i.f = tail call i64 @iov_to_buf_full(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef 14) #7
  %i.g = icmp ult i64 %i.f, 14
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %iov_to_buf.exit.thread, %iov_to_buf.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  switch i16 %i.j, label %bb.j [
    i16 -32512, label %bb.d
    i16 -30552, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  store i32 0, ptr %6, align 4, !annotation !7
  %i.k = add i64 %2, 14                           ; 4 uses
  br i1 %.not, label %iov_to_buf.exit26, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not.i23 = icmp ugt i64 %i.k, %i.m
  %i.n = sub nuw i64 %i.m, %i.k
  %.not21.i24 = icmp ult i64 %i.n, 4
  %or.cond22.i25 = select i1 %.not.i23, i1 true, i1 %.not21.i24
  br i1 %or.cond22.i25, label %iov_to_buf.exit26, label %iov_to_buf.exit26.thread

iov_to_buf.exit26.thread:                         ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  %i.q = load i32, ptr %i.p, align 1              ; 3 uses
  store i32 %i.q, ptr %6, align 4
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc nuw i32 %i.r to i16
  %i.t = trunc i32 %i.q to i16
  br label %bb.f

iov_to_buf.exit26:                                ; preds = %bb.d, %bb.e
  %i.u = call i64 @iov_to_buf_full(ptr noundef %0, i32 noundef %1, i64 noundef %i.k, ptr noundef nonnull %6, i64 noundef 4) #7
  %i.v = icmp ult i64 %i.u, 4
  br i1 %i.v, label %bb.j, label %iov_to_buf.exit26._crit_edge

iov_to_buf.exit26._crit_edge:                     ; preds = %iov_to_buf.exit26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre35 = load i16, ptr %6, align 4
  br label %bb.f

bb.f:                                             ; preds = %iov_to_buf.exit26._crit_edge, %iov_to_buf.exit26.thread
  %i.w = phi i16 [ %.pre35, %iov_to_buf.exit26._crit_edge ], [ %i.t, %iov_to_buf.exit26.thread ]
  %i.x = phi i16 [ %.pre, %iov_to_buf.exit26._crit_edge ], [ %i.s, %iov_to_buf.exit26.thread ]
  store i16 %i.x, ptr %i.h, align 1
  %i.y = call noundef i16 @llvm.bswap.i16(i16 %i.w)
  store i16 %i.y, ptr %5, align 2
  %i.z = trunc i64 %2 to i16
  %i.aa = add i16 %i.z, 18                        ; 2 uses
  store i16 %i.aa, ptr %4, align 2
  %i.ab = load i16, ptr %i.h, align 1
  %i.ac = icmp eq i16 %i.ab, 129
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ad = zext i16 %i.aa to i64                   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  br i1 %.not, label %iov_to_buf.exit31, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %.not.i28 = icmp ult i64 %i.ag, %i.ad
  %i.ah = sub nuw i64 %i.ag, %i.ad
  %.not21.i29 = icmp ult i64 %i.ah, 4
  %or.cond22.i30 = select i1 %.not.i28, i1 true, i1 %.not21.i29
  br i1 %or.cond22.i30, label %iov_to_buf.exit31, label %iov_to_buf.exit31.thread

iov_to_buf.exit31.thread:                         ; preds = %bb.h
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad
  %i.ak = load i32, ptr %i.aj, align 1
  store i32 %i.ak, ptr %i.ae, align 1
  br label %bb.i

iov_to_buf.exit31:                                ; preds = %bb.g, %bb.h
  %i.al = call i64 @iov_to_buf_full(ptr noundef %0, i32 noundef %1, i64 noundef %i.ad, ptr noundef nonnull %i.ae, i64 noundef 4) #7
  %i.am = icmp ult i64 %i.al, 4
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %iov_to_buf.exit31.thread, %iov_to_buf.exit31
  %i.an = load i16, ptr %4, align 2
  %i.ao = add i16 %i.an, 4
  store i16 %i.ao, ptr %4, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.f, %iov_to_buf.exit31, %iov_to_buf.exit26, %iov_to_buf.exit, %bb.i
  %.0 = phi i64 [ 0, %iov_to_buf.exit31 ], [ 14, %bb.f ], [ 0, %iov_to_buf.exit ], [ 0, %iov_to_buf.exit26 ], [ 18, %bb.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 19) i64 @eth_strip_vlan_ex(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.vlan_header, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  switch i32 %3, label %bb.m [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.not51 = icmp eq i32 %1, 0
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %2, %i.c
  %i.d = sub nuw i64 %i.c, %2
  %.not21.i = icmp ult i64 %i.d, 14
  %or.cond22.i = select i1 %.not.i, i1 true, i1 %.not21.i
  br i1 %or.cond22.i, label %bb.d, label %iov_to_buf.exit.thread

iov_to_buf.exit.thread:                           ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %6, ptr noundef nonnull align 1 dereferenceable(14) %i.f, i64 noundef range(i64 0, 60) 14, i1 noundef false) #7
  br label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call i64 @iov_to_buf_full(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %6, i64 noundef 14) #7
  br label %iov_to_buf.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.not50 = icmp eq i32 %1, 0
  br i1 %.not50, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not.i35 = icmp ugt i64 %2, %i.j
  %i.k = sub nuw i64 %i.j, %2
  %.not21.i36 = icmp ult i64 %i.k, 18
  %or.cond22.i37 = select i1 %.not.i35, i1 true, i1 %.not21.i36
  br i1 %or.cond22.i37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %6, ptr noundef nonnull align 1 dereferenceable(18) %i.m, i64 noundef range(i64 0, 60) 18, i1 noundef false) #7
  br label %iov_to_buf.exit38

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = tail call i64 @iov_to_buf_full(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %6, i64 noundef 18) #7
  br label %iov_to_buf.exit38

iov_to_buf.exit38:                                ; preds = %bb.g, %bb.h
  %.0.i34 = phi i64 [ 18, %bb.g ], [ %i.n, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.p = load i16, ptr %i.o, align 1
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %.not = icmp eq i16 %i.q, %5
  br i1 %.not, label %iov_to_buf.exit, label %bb.m

iov_to_buf.exit:                                  ; preds = %bb.d, %iov_to_buf.exit38
  %.031 = phi ptr [ %i.h, %iov_to_buf.exit38 ], [ %i.a, %bb.d ]
  %.030 = phi i64 [ 18, %iov_to_buf.exit38 ], [ 14, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %.0.i34, %iov_to_buf.exit38 ], [ %i.g, %bb.d ]
  %i.r = icmp ult i64 %.0, %.030
  br i1 %i.r, label %bb.m, label %bb.i

bb.i:                                             ; preds = %iov_to_buf.exit.thread, %iov_to_buf.exit
  %.03048 = phi i64 [ 14, %iov_to_buf.exit.thread ], [ %.030, %iov_to_buf.exit ] ; 2 uses
  %.03147 = phi ptr [ %i.a, %iov_to_buf.exit.thread ], [ %.031, %iov_to_buf.exit ] ; 2 uses
  %.031.val = load i16, ptr %.03147, align 1
  %i.s = tail call i16 @llvm.bswap.i16(i16 %.031.val)
  %.not33 = icmp eq i16 %i.s, %4
  br i1 %.not33, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %9, align 4, !annotation !7
  %i.t = add i64 %.03048, %2                      ; 5 uses
  %.not52 = icmp eq i32 %1, 0
  br i1 %.not52, label %iov_to_buf.exit43, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %.not.i40 = icmp ugt i64 %i.t, %i.v
  %i.w = sub nuw i64 %i.v, %i.t
  %.not21.i41 = icmp ult i64 %i.w, 4
  %or.cond22.i42 = select i1 %.not.i40, i1 true, i1 %.not21.i41
  br i1 %or.cond22.i42, label %iov_to_buf.exit43, label %iov_to_buf.exit43.thread

iov_to_buf.exit43.thread:                         ; preds = %bb.k
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  %i.z = load i32, ptr %i.y, align 1              ; 2 uses
  %10 = lshr i32 %i.z, 16
  %11 = trunc nuw i32 %10 to i16
  %i.aa = trunc i32 %i.z to i16
  br label %bb.l

iov_to_buf.exit43:                                ; preds = %bb.j, %bb.k
  %i.ab = call i64 @iov_to_buf_full(ptr noundef %0, i32 noundef %1, i64 noundef %i.t, ptr noundef nonnull %9, i64 noundef 4) #7
  %i.ac = icmp ult i64 %i.ab, 4
  br i1 %i.ac, label %bb.m, label %iov_to_buf.exit43._crit_edge

iov_to_buf.exit43._crit_edge:                     ; preds = %iov_to_buf.exit43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre.a = load i16, ptr %9, align 4
  br label %bb.l

bb.l:                                             ; preds = %iov_to_buf.exit43._crit_edge, %iov_to_buf.exit43.thread
  %i.ad = phi i16 [ %.pre.a, %iov_to_buf.exit43._crit_edge ], [ %i.aa, %iov_to_buf.exit43.thread ]
  %12 = phi i16 [ %.pre, %iov_to_buf.exit43._crit_edge ], [ %11, %iov_to_buf.exit43.thread ]
  store i16 %12, ptr %.03147, align 1
  %i.ae = trunc i64 %i.t to i16
  %i.af = add i16 %i.ae, 4
  store i16 %i.af, ptr %7, align 2
  %i.ag = call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  store i16 %i.ag, ptr %8, align 2
  br label %bb.m

bb.m:                                             ; preds = %iov_to_buf.exit43, %iov_to_buf.exit, %bb.i, %bb.a, %iov_to_buf.exit38, %bb.l
  %.032 = phi i64 [ 0, %iov_to_buf.exit38 ], [ 0, %bb.a ], [ 0, %iov_to_buf.exit ], [ %.03048, %bb.l ], [ 0, %bb.i ], [ 0, %iov_to_buf.exit43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i64 %.032
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @eth_fix_ip4_checksum(ptr noundef initializes((10, 12)) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.a, align 1
  %i.b = trunc i64 %1 to i32
  %i.c = tail call i32 @net_checksum_add_cont(i32 noundef %i.b, ptr noundef %0, i32 noundef 0) #7
  %i.d = tail call zeroext i16 @net_checksum_finish(i32 noundef %i.c) #7
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d)
  store i16 %i.e, ptr %i.a, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @eth_calc_ip4_pseudo_hdr_csum(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.ip_pseudo_header, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load <2 x i32>, ptr %i.a, align 1
  store <2 x i32> %i.b, ptr %3, align 8
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 %i.c, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.f, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.h, align 8
  store i32 12, ptr %2, align 4
  %i.i = call i32 @net_checksum_add_cont(i32 noundef 12, ptr noundef nonnull %3, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @eth_calc_ip6_pseudo_hdr_csum(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ip6_pseudo_header, align 4  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i8 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 37
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 38
  store i8 0, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 39
  store i8 %2, ptr %i.j, align 1
  store i32 40, ptr %3, align 4
  %i.k = call i32 @net_checksum_add_cont(i32 noundef 40, ptr noundef nonnull %4, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @eth_pad_short_frame(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp ugt i64 %i.a, 59
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 526, ptr noundef nonnull @__PRETTY_FUNCTION__.eth_pad_short_frame) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %3, 60                      ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %2, i64 noundef range(i64 0, 60) %3, i1 noundef false) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.e = sub nuw nsw i64 60, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.d, i8 noundef 0, i64 noundef range(i64 1, 61) %i.e, i1 noundef false) #7
  store i64 60, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret i1 %i.c
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

declare i64 @iov_to_buf_full(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i16 @net_checksum_finish(i32 noundef) local_unnamed_addr #3

declare i32 @net_checksum_add_cont(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !13}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
