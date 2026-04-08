inline.NumInlined: 213
inline.NumDeleted: 54
begin_hunk_0_@ancillary_inspect:bb.a
  ]

bb.s:                                             ; preds = %bb.r
  %i.au = call i64 @rsock_intern_ip_optname(i32 noundef %i.y) #11, !callees !71, !inline_history !72 ; 2 uses
  %.not.i.i110 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i110, label %bb.u, label %bb.t

end_hunk_0
begin_hunk_1_@ancillary_inspect:bb.a
  br label %ip_cmsg_type_to_sym.exit

bb.v:                                             ; preds = %bb.r
  %i.ay = call i64 @rsock_intern_ipv6_optname(i32 noundef %i.y) #11, !callees !71, !inline_history !72 ; 2 uses
  %.not.i8.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i8.i, label %bb.x, label %bb.w

end_hunk_1
begin_hunk_2_@ancillary_inspect:bb.a
  br label %ip_cmsg_type_to_sym.exit

bb.y:                                             ; preds = %bb.r
  %i.bc = call i64 @rsock_intern_tcp_optname(i32 noundef %i.y) #11, !callees !71, !inline_history !72 ; 2 uses
  %.not.i11.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i11.i, label %bb.aa, label %bb.z

end_hunk_2
begin_hunk_3_@ancillary_inspect:bb.a
  br label %ip_cmsg_type_to_sym.exit

bb.ab:                                            ; preds = %bb.r
  %i.bg = call i64 @rsock_intern_udp_optname(i32 noundef %i.y) #11, !callees !71, !inline_history !72 ; 2 uses
  %.not.i14.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i14.i, label %bb.ad, label %bb.ac

end_hunk_3
begin_hunk_4_@ancillary_inspect:bb.a
  %i.cw = call ptr @localtime_r(ptr noundef nonnull %3, ptr noundef nonnull %4) #11 ; 0 uses
  %i.cx = call i64 @strftime(ptr noundef nonnull %i.d, i64 noundef 32, ptr noundef nonnull @.str.44, ptr noundef nonnull %4) #11 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !73
  %i.da = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.d, i64 noundef %i.cz) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
end_hunk_4
begin_hunk_5_@ancillary_inspect:bb.a
  %i.do = add i64 %.015.i, 4                      ; 2 uses
  %i.dp = load i64, ptr %i.dc, align 8, !tbaa !21
  %i.dq = icmp slt i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.aq, label %inspect_timeval_as_abstime.exit, !llvm.loop !74

bb.as:                                            ; preds = %bb.ai
  %i.dr = inttoptr i64 %i.ac to ptr               ; 3 uses
end_hunk_5
begin_hunk_6_@ancillary_inspect:bb.a
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.eq = load i32, ptr %2, align 4, !tbaa !75
  %i.er = call ptr @if_indextoname(i32 noundef %i.eq, ptr noundef nonnull %i.c) #11
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.et = load i32, ptr %2, align 4, !tbaa !75
  %i.eu = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.51, i32 noundef %i.et) #11 ; 0 uses
  br label %bb.bf

end_hunk_6
begin_hunk_7_@ancillary_s_unix_rights:bb.a
  %i.s = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %i.i) #11 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.b
  %i.t = zext nneg i32 %0 to i64
end_hunk_7
begin_hunk_8_@ancillary_s_unix_rights:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %._crit_edge27, label %bb.c, !llvm.loop !79

._crit_edge27:                                    ; preds = %RARRAY_AREF.exit, %._crit_edge.thread
  %i.al = phi i64 [ %i.g, %._crit_edge.thread ], [ %i.v, %RARRAY_AREF.exit ]
end_hunk_8
begin_hunk_9_@ancillary_s_ip_pktinfo:bb.a
  %.sroa.8.sroa.6.0.copyload = load i32, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.8.sroa.6.0.copyload, ptr %i.ac, align 4
  store i32 %i.o, ptr %3, align 4, !tbaa !75
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !10
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
end_hunk_9
begin_hunk_10_@ancillary_ip_pktinfo:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i16 2, ptr %1, align 4, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %.sroa.5.0.copyload, ptr %i.ac, align 4
  %i.ad = call i64 @rsock_addrinfo_new(ptr noundef nonnull %1, i32 noundef 16, i32 noundef 2, i32 noundef 0, i32 noundef 0, i64 noundef 4, i64 noundef 4) #11
  store i16 2, ptr %1, align 4, !tbaa !80
  store i32 %.sroa.4.0.copyload, ptr %i.ac, align 4
  %i.ae = call i64 @rsock_addrinfo_new(ptr noundef nonnull %1, i32 noundef 16, i32 noundef 2, i32 noundef 0, i32 noundef 0, i64 noundef 4, i64 noundef 4) #11
  %i.af = zext i32 %.sroa.0.0.copyload to i64
end_hunk_10
begin_hunk_11_@ancillary_s_ipv6_pktinfo:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.p, ptr %i.r, align 4, !tbaa !83
  %i.s = call i64 @rb_str_new(ptr noundef nonnull %3, i64 noundef 20) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.s, ptr %i.a, align 8, !tbaa !10
end_hunk_11
begin_hunk_12_@ancillary_ipv6_pktinfo:bb.a
  call fastcc void @extract_ipv6_pktinfo(i64 noundef %0, ptr noundef %1, ptr noundef %2)
  %i.a = call i64 @rsock_addrinfo_new(ptr noundef nonnull %2, i32 noundef 28, i32 noundef 10, i32 noundef 0, i32 noundef 0, i64 noundef 4, i64 noundef 4) #11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !83
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = or disjoint i64 %i.e, 1
end_hunk_12
begin_hunk_13_@ancillary_ipv6_pktinfo_ifindex:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call fastcc void @extract_ipv6_pktinfo(i64 noundef %0, ptr noundef %1, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !83
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
end_hunk_13
begin_hunk_14_@extract_ipv6_pktinfo:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.ab, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.ac, i8 0, i64 26, i1 false)
  store i16 10, ptr %2, align 2, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
end_hunk_14
begin_hunk_15_@extract_ipv6_pktinfo:bb.a

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %RSTRING_PTR.exit
end_hunk_15
begin_hunk_16_@llvm.smax.i32
!69 = distinct !{!69, !20}
!70 = !{i64 2151820721}
!71 = !{ptr @rsock_intern_ip_optname, ptr @rsock_intern_ipv6_optname, ptr @rsock_intern_tcp_optname, ptr @rsock_intern_udp_optname}
!72 = distinct !{null}
!73 = !{!67, !11, i64 8}
!74 = distinct !{!74, !20}
!75 = !{!76, !7, i64 0}
!76 = !{!"in_pktinfo", !7, i64 0, !77, i64 4, !77, i64 8}
!77 = !{!"in_addr", !7, i64 0}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = !{!81, !82, i64 0}
!81 = !{!"sockaddr_in", !82, i64 0, !82, i64 2, !77, i64 4, !8, i64 8}
!82 = !{!"short", !8, i64 0}
!83 = !{!84, !7, i64 16}
!84 = !{!"in6_pktinfo", !85, i64 0, !7, i64 16}
!85 = !{!"in6_addr", !8, i64 0}
!86 = !{!87, !82, i64 0}
!87 = !{!"sockaddr", !82, i64 0, !8, i64 2}
!88 = !{!89, !7, i64 24}
!89 = !{!"sockaddr_in6", !82, i64 0, !82, i64 2, !7, i64 4, !85, i64 8, !7, i64 24}
end_hunk_16
