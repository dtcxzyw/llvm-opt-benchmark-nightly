Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.09?download=true
inline.NumInlined: 3040
inline.NumDeleted: 1316
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE12insert_routeCs2Bxje7pdMIr_13libp2p_server:.split
  unreachable

bb.w:                                             ; preds = %bb.i
  %i.ch = load i8, ptr %i.bc, align 1, !noundef !13
  %i.ci = icmp eq i8 %i.ch, 123
  br i1 %i.ci, label %bb.x, label %bb.y, !prof !21

bb.x:                                             ; preds = %bb.w
  %.not170 = icmp eq i64 %.sroa.451.0.copyload, 0
  br i1 %.not170, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedhhECs6TEPlfJKwSA_12aho_corasick(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bc, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @99, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #34
  unreachable

bb.z:                                             ; preds = %bb.ac, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.ba)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3111.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4114.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx.sroa_idx, align 8
  store i32 0, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.397.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.4100.0..sroa_idx, align 8
  store i8 3, ptr %i.x, align 1
  store i64 0, ptr %i.y, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4104.0..sroa_idx, align 8
  store i32 0, ptr %i.z, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5105.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.389.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.492.0..sroa_idx, align 8
  store i32 0, ptr %i.ac, align 8
  store i8 0, ptr %i.ad, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i8 1, ptr %i.af, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.cj = load i32, ptr %i.aa, align 4
  store i32 0, ptr %i.ah, align 8
  store i32 %i.cj, ptr %i.ai, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c)
          to label %bb.ad unwind label %bb.al

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.0.0258)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0258, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.z

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cl = call fastcc noundef i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE9add_childCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(136) %.sroa.0.0258, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.e) ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 132
  store i8 1, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 88
  %i.co = load i64, ptr %i.cn, align 8, !noundef !13 ; 2 uses
  %i.cp = icmp ult i64 %i.cl, %i.co
  br i1 %i.cp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !13, !noundef !13
  %i.cs = getelementptr inbounds nuw [136 x i8], ptr %i.cr, i64 %i.cl ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 128 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !noundef !13
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8
  %i.cw = load i64, ptr %i.t, align 8, !noundef !13
  %i.cx = icmp ult i64 %i.ba, %i.cw
  br i1 %i.cx, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #30
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store i32 1, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 124
  store i32 %3, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.da, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3111.0..sroa_idx112, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4114.0..sroa_idx115, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx118.sroa_idx, align 8
  store i64 0, ptr %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx118.sroa_idx, align 8
  store i32 1, ptr %i.ak, align 8
  store i8 0, ptr %i.al, align 4
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.397.0..sroa_idx98, align 8
  store i64 0, ptr %.sroa.4100.0..sroa_idx101, align 8
  store i8 3, ptr %i.an, align 1
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2151.0..sroa_idx, align 8
  store i32 0, ptr %i.ap, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3152.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.389.0..sroa_idx90, align 8
  store i64 0, ptr %.sroa.492.0..sroa_idx93, align 8
  %i.db = call fastcc noundef i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE9add_childCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(136) %i.cs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.a) ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !13 ; 2 uses
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %._crit_edge, %bb.m, %bb.e, %bb.s, %bb.ag
  ret void

bb.aj:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !13, !noundef !13
  %i.dh = getelementptr inbounds nuw [136 x i8], ptr %i.dg, i64 %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCsjQblLEOeBB3_7matchit4tree13find_wildcard(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.di = load i64, ptr %i.p, align 8, !range !19, !noundef !13
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %._crit_edge, label %bb.a

bb.ak:                                            ; preds = %bb.ah
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #30
  unreachable

bb.al:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(136) %i.e) #31
          to label %bb.am unwind label %bb.v

.sink.split:                                      ; preds = %bb.ab, %bb.p, %bb.d
  %.sink = phi ptr [ %i.n, %bb.d ], [ %i.m, %bb.p ], [ %i.h, %bb.ab ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ay, %bb.d ], [ %i.bv, %bb.p ], [ %i.ck, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0258, ptr noundef nonnull align 8 dereferenceable(48) %.sink, i64 48, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.u, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.al ], [ %.pn.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 9223372036854775807) i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE21update_child_priorityCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #34
  unreachable

.split:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !13
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.h, align 8
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.g
  %.sroa.0.017 = phi i64 [ %i.k, %bb.g ], [ %1, %.split ] ; 3 uses
  %i.k = add nsw i64 %.sroa.0.017, -1             ; 3 uses
  %i.l = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load i32, ptr %i.m, align 8, !noundef !13
  %i.o = icmp ult i32 %i.n, %i.j
  br i1 %i.o, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.lr.ph
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.017, %.lr.ph ], [ 0, %bb.g ] ; 7 uses
  %.not12 = icmp eq i64 %.sroa.0.0.lcssa, %1
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !noundef !13 ; 2 uses
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %1, 1                    ; 3 uses
  %i.v = icmp ult i64 %i.u, %.sroa.0.0.lcssa
  br i1 %i.v, label %bb.e, label %_RNvXs8_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs2Bxje7pdMIr_13libp2p_server.exit, !prof !12

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.0.i = phi i64 [ %1, %bb.c ], [ %i.u, %bb.d ]
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #34, !noalias !3084
  unreachable

_RNvXs8_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.d
  %i.w = sub nuw nsw i64 %i.u, %.sroa.0.0.lcssa
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.lcssa
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSh12rotate_rightCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %.split, %._crit_edge, %_RNvXs8_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs2Bxje7pdMIr_13libp2p_server.exit
  %.sroa.0.0.lcssa25 = phi i64 [ %.sroa.0.0.lcssa, %_RNvXs8_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCs2Bxje7pdMIr_13libp2p_server.exit ], [ %.sroa.0.0.lcssa, %._crit_edge ], [ 0, %.split ]
  ret i64 %.sroa.0.0.lcssa25

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %.sroa.0.017 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.l, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.l, ptr noundef nonnull align 8 dereferenceable(136) %i.y, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE6insertCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [136 x i8], align 8               ; 19 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [136 x i8], align 8               ; 12 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [40 x i8], align 8               ; 22 uses
  %i.af = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [48 x i8], align 8               ; 12 uses
  %i.ai = alloca [48 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMNtCsjQblLEOeBB3_7matchit6escapeNtB2_14UnescapedRoute3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_RNvNtCsjQblLEOeBB3_7matchit4tree16normalize_params(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ai)
  %i.aj = load i64, ptr %i.af, align 8, !range !23, !noundef !13 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.bz

bb.c:                                             ; preds = %bb.a
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5137.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %.sroa.3197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3197.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.sroa.8.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.48..sroa_idx, i64 24, i1 false)
  store i64 %i.aj, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.am = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !13 ; 2 uses
  %i.ap = load ptr, ptr %.sroa.3197.0..sroa_idx, align 8, !nonnull !13, !noundef !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !13
  store ptr %i.am, ptr %i.ae, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  store i64 %i.ao, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ap, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !13
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !13 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.d, label %.split459

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !13 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 67818912035696881
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %bb.e, label %.split459

.split459:                                        ; preds = %bb.c, %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 133
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  br label %.split

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false)
  invoke fastcc void @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE12insert_routeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ac, i32 noundef %3)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc228, %_RNCNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB7_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE6insert0Cs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %lpad.loopexit267 = landingpad { ptr, i32 }
          cleanup
  br label %.thread260

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.s, %bb.t, %bb.ag, %.split454.us, %bb.ca
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %.thread260

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.e, %bb.al, %bb.au, %bb.ax, %bb.ba, %bb.bc, %bb.bd, %bb.bf, %bb.bv, %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread260

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.bv = load i64, ptr %i.ad, align 8, !range !3091, !noundef !13 ; 2 uses
  %.not218 = icmp eq i64 %i.bv, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  br i1 %.not218, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5143.0.copyload = load i64, ptr %.sroa.5143.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.bv, ptr %0, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %.sroa.4145.0..sroa_idx, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5143.0.copyload, ptr %.sroa.5146.0..sroa_idx, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96 ; 5 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
