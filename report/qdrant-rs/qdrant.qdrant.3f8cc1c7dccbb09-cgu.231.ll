Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.231?download=true
inline.NumInlined: 475
inline.NumDeleted: 236
begin_hunk_0_@_RNCNvXs2_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtB7_13HttpConnectorINtCs372LqxyVCI8_13tower_service7ServiceNtNtCs577yCKf7gy3_4http3uri3UriE4call0Csl8OoimOLbh_6qdrant:bb.a

bb.md:                                            ; preds = %bb.ly
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

bb.me:                                            ; preds = %bb.ly, %bb.lx, %bb.lw, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !529
  br label %bb.mg

bb.mf:                                            ; preds = %bb.ma, %bb.lv, %bb.lh, %bb.lf
  %.pn34.pn.i = phi { ptr, i32 } [ %i.aec, %bb.ma ], [ %.pn29.pn.pn.i, %bb.lv ], [ %i.acp, %bb.lf ], [ %i.acr, %bb.lh ]
  %.val.i = load ptr, ptr %i.be, align 8, !noalias !529, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #19
          to label %bb.mc unwind label %bb.bk, !noalias !530

bb.mg:                                            ; preds = %bb.me, %bb.lc
  %.sroa.0234.0.copyload.i = load ptr, ptr %i.bf, align 8, !noalias !529
  %.sroa.5235.0.copyload.i = load i64, ptr %.sroa.0199.sroa.4.0..sroa_idx.i, align 8, !noalias !529
  %.sroa.6236.0.copyload.i = load i64, ptr %.sroa.0199.sroa.5.0..sroa_idx.i, align 8, !noalias !529 ; 2 uses
  %.sroa.7237.0.copyload.i = load ptr, ptr %.sroa.4200.0..sroa_idx.i, align 8, !noalias !529
  %.sroa.13221.sroa.0.0.extract.trunc223.i = trunc i64 %.sroa.6236.0.copyload.i to i16
  %.sroa.13221.sroa.5.0.extract.shift225.i = lshr i64 %.sroa.6236.0.copyload.i, 16
  %.sroa.13221.sroa.5.0.extract.trunc226.i = trunc nuw i64 %.sroa.13221.sroa.5.0.extract.shift225.i to i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !529
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 291
  store i8 0, ptr %i.aee, align 1, !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !529
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aef)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs3_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtBJ_13HttpConnector10call_async0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.mi, !noalias !530

bb.mh:                                            ; preds = %bb.mi, %bb.x
  %i.aeg = phi ptr [ %i.aei, %bb.mi ], [ %i.df, %bb.x ]
  %i.aeh = phi ptr [ %i.aej, %bb.mi ], [ %i.dg, %bb.x ]
  %.pn50.i = phi { ptr, i32 } [ %i.aek, %bb.mi ], [ %.pn47.pn.i, %bb.x ]
  store i8 2, ptr %i.aeg, align 2, !noalias !529
  br label %.body

bb.mi:                                            ; preds = %bb.mg, %bb.w
  %i.aei = phi ptr [ %i.xy, %bb.mg ], [ %i.dc, %bb.w ]
  %i.aej = phi ptr [ %i.xz, %bb.mg ], [ %i.dd, %bb.w ]
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

bb.mj:                                            ; preds = %bb.ky, %.body86.i, %bb.mk
  %i.ael = phi ptr [ %i.xy, %bb.mk ], [ %i.aen, %.body86.i ], [ %i.xy, %bb.ky ]
  %i.aem = phi ptr [ %i.xz, %bb.mk ], [ %i.aeo, %.body86.i ], [ %i.xz, %bb.ky ]
  %.pn42.pn.i = phi { ptr, i32 } [ %.pn40.ph.i, %bb.mk ], [ %.pn21.i, %.body86.i ], [ %i.acc, %bb.ky ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !529
  br label %bb.bl

bb.mk:                                            ; preds = %bb.mc, %bb.la
  %.pn40.ph.i = phi { ptr, i32 } [ %i.acd, %bb.la ], [ %.pn37.i, %bb.mc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bf) #19
          to label %bb.mj unwind label %bb.bk, !noalias !530

bb.ml:                                            ; preds = %bb.kz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5218.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11181.sroa.0.i, i64 6, i1 false), !noalias !529
  %.sroa.13221.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.468.i.sroa.8.1.i to i16
  %.sroa.13221.sroa.5.0.extract.shift.i = lshr i64 %.sroa.468.i.sroa.8.1.i, 16
  %.sroa.13221.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.13221.sroa.5.0.extract.shift.i to i48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !529
  br label %bb.bn

.body86.i:                                        ; preds = %bb.kv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http19ConnectingTcpRemoteECsl8OoimOLbh_6qdrant.exit34.i.i
  %i.aen = phi ptr [ %i.abs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http19ConnectingTcpRemoteECsl8OoimOLbh_6qdrant.exit34.i.i ], [ %i.bx, %bb.kv ]
  %i.aeo = phi ptr [ %i.abt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http19ConnectingTcpRemoteECsl8OoimOLbh_6qdrant.exit34.i.i ], [ %i.bw, %bb.kv ]
  %i.aep = phi ptr [ %i.abv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http19ConnectingTcpRemoteECsl8OoimOLbh_6qdrant.exit34.i.i ], [ %i.hj, %bb.kv ]
  %.pn21.i = phi { ptr, i32 } [ %.pn29.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http19ConnectingTcpRemoteECsl8OoimOLbh_6qdrant.exit34.i.i ], [ %i.abz, %bb.kv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsg_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtBJ_13ConnectingTcp7connect0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aep) #19
          to label %bb.mj unwind label %bb.bk, !noalias !530

bb.mm:                                            ; preds = %bb.bl
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect3dns11SocketAddrsECsl8OoimOLbh_6qdrant.exit101.i unwind label %bb.bk, !noalias !530

bb.mn:                                            ; preds = %bb.z, %bb.y
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs3_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtBJ_13HttpConnector10call_async0ECsl8OoimOLbh_6qdrant.exit, %bb.mp, %bb.mo
  %storemerge = phi i8 [ 3, %bb.mo ], [ 1, %bb.mp ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs3_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtBJ_13HttpConnector10call_async0ECsl8OoimOLbh_6qdrant.exit ]
  store i8 %storemerge, ptr %i.bm, align 8
  ret void

bb.mo:                                            ; preds = %bb.ba, %bb.kw
  %i.aer = phi ptr [ %i.fp, %bb.ba ], [ %i.aca, %bb.kw ]
  %.sink.i.ph = phi i8 [ 3, %bb.ba ], [ 4, %bb.kw ]
  store i8 %.sink.i.ph, ptr %i.aer, align 2, !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5218.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11181.sroa.0.i)
  store i16 -2, ptr %0, align 8
  br label %common.ret

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs3_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtBJ_13HttpConnector10call_async0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.mg, %bb.w
  %i.aes = phi ptr [ %i.xy, %bb.mg ], [ %i.dc, %bb.w ]
  %.sroa.13221.sroa.5.sroa.0.2.i = phi i48 [ %.sroa.13221.sroa.5.0.extract.trunc226.i, %bb.mg ], [ %.sroa.13221.sroa.5.sroa.0.0.i, %bb.w ]
  %.sroa.13221.sroa.0.2.i = phi i16 [ %.sroa.13221.sroa.0.0.extract.trunc223.i, %bb.mg ], [ %.sroa.13221.sroa.0.0.i, %bb.w ]
  %.sroa.22.2.i = phi ptr [ undef, %bb.mg ], [ %.sroa.22.0.i, %bb.w ]
  %.sroa.20.2.i = phi ptr [ undef, %bb.mg ], [ %.sroa.20.0.i, %bb.w ]
  %.sroa.18.2.i = phi i64 [ undef, %bb.mg ], [ %.sroa.18.0.i, %bb.w ]
  %.sroa.16222.2.i = phi ptr [ %.sroa.7237.0.copyload.i, %bb.mg ], [ %.sroa.16222.0.i, %bb.w ]
  %.sroa.11220.2.i = phi i64 [ %.sroa.5235.0.copyload.i, %bb.mg ], [ %.sroa.11220.0.i, %bb.w ]
  %.sroa.8219.2.i = phi ptr [ %.sroa.0234.0.copyload.i, %bb.mg ], [ %.sroa.8219.0.i, %bb.w ]
  %.sroa.0217.2.i = phi i16 [ -1, %bb.mg ], [ %.sroa.0217.0.i, %bb.w ]
  store i16 %.sroa.0217.2.i, ptr %0, align 8, !alias.scope !530, !noalias !608
  %.sroa.5218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5218.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5218.i, i64 6, i1 false), !noalias !608
  %.sroa.8219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8219.2.i, ptr %.sroa.8219.0..sroa_idx.i, align 8, !alias.scope !530, !noalias !608
  %.sroa.11220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11220.2.i, ptr %.sroa.11220.0..sroa_idx.i, align 8, !alias.scope !530, !noalias !608
  %.sroa.13221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.13221.sroa.5.0.insert.ext.i = zext i48 %.sroa.13221.sroa.5.sroa.0.2.i to i64
  %.sroa.13221.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.13221.sroa.5.0.insert.ext.i, 16
  %.sroa.13221.sroa.0.0.insert.ext.i = zext i16 %.sroa.13221.sroa.0.2.i to i64
  %.sroa.13221.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.13221.sroa.5.0.insert.shift.i, %.sroa.13221.sroa.0.0.insert.ext.i
  store i64 %.sroa.13221.sroa.0.0.insert.insert.i, ptr %.sroa.13221.0..sroa_idx.i, align 8, !alias.scope !530, !noalias !608
  %.sroa.16222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.16222.2.i, ptr %.sroa.16222.0..sroa_idx.i, align 8, !alias.scope !530, !noalias !608
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.18.2.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !alias.scope !530, !noalias !608
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.20.2.i, ptr %.sroa.20.0..sroa_idx.i, align 8, !alias.scope !530, !noalias !608
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.22.2.i, ptr %.sroa.22.0..sroa_idx.i, align 8, !alias.scope !530, !noalias !608
  store i8 1, ptr %i.aes, align 2, !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5218.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11181.sroa.0.i)
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.aeu = load ptr, ptr %i.aet, align 8, !alias.scope !612, !nonnull !7, !noundef !7
  %i.aev = atomicrmw sub ptr %i.aeu, i64 1 release, align 8, !noalias !612
  %i.aew = icmp eq i64 %i.aev, 1
  br i1 %i.aew, label %bb.mp, label %common.ret

bb.mp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs3_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtBJ_13HttpConnector10call_async0ECsl8OoimOLbh_6qdrant.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http6ConfigE9drop_slowCs7TLIf6RfzUM_12hyper_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aet) #22
          to label %common.ret unwind label %bb.mq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.c, %bb.mq
  %.pn6 = phi { ptr, i32 } [ %i.aex, %bb.mq ], [ %.pn2, %bb.c ], [ %.pn2, %bb.b ]
  store i8 2, ptr %i.bm, align 8
  resume { ptr, i32 } %.pn6

bb.mq:                                            ; preds = %bb.mp
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorECsl8OoimOLbh_6qdrant.exit

.body:                                            ; preds = %bb.mn, %bb.mh
  %i.aey = phi ptr [ %i.aeh, %bb.mh ], [ %i.bw, %bb.mn ]
  %.pn2 = phi { ptr, i32 } [ %.pn50.i, %bb.mh ], [ %i.aeq, %bb.mn ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs3_NtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4httpNtBJ_13HttpConnector10call_async0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aey) #19
          to label %bb.b unwind label %bb.mr

bb.mr:                                            ; preds = %bb.c, %.body
  %i.aez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metricsNtB2_13ProcFsMetrics7collect(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 12 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [480 x i8], align 8               ; 11 uses
  %i.h = alloca [480 x i8], align 8               ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.7.i.sroa.11 = alloca [24 x i8], align 8  ; 7 uses
  %.sroa.6.i.sroa.9 = alloca [24 x i8], align 8   ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [152 x i8], align 8               ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.671 = alloca [24 x i8], align 8          ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.14 = alloca [24 x i8], align 8           ; 7 uses
  %i.s = alloca [512 x i8], align 8               ; 10 uses
  %i.t = alloca [480 x i8], align 8               ; 7 uses
  %.sroa.615 = alloca [48 x i8], align 8          ; 6 uses
  %i.u = alloca [480 x i8], align 8               ; 10 uses
  %i.v = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.68 = alloca [48 x i8], align 8           ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs0_NtCsavFsYbQvXbW_6procfs7processNtB5_7Process6myself(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.w)
  %i.y = load i64, ptr %i.w, align 8, !range !22, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.5103.0.copyload = load i64, ptr %.sroa.5103.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.aa, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.5103.0.copyload, ptr %.sroa.5106.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs1_NtCsavFsYbQvXbW_6procfs7processNtB5_7Process5tasks(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.bp, %bb.q, %bb.d, %.body266
  %.pn252 = phi { ptr, i32 } [ %.pn, %.body266 ], [ %i.dx, %bb.bp ], [ %i.ab, %bb.d ], [ %eh.lpad-body.i, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process7ProcessECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #19
          to label %common.resume unwind label %bb.bn

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i, %bb.bi, %_RNvXsI_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatNtNtCsavFsYbQvXbW_6procfs7process9TasksIterINtNtBb_6result8IntoIterNtNtB1d_4task4TaskEENtNtNtB9_6traits8iterator8Iterator5countCsl8OoimOLbh_6qdrant.exit, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.v, align 8, !range !6, !noundef !7 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.68, i64 48, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  br label %bb.br

bb.g:                                             ; preds = %bb.e
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4118.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.68, i64 48, i1 false)
  store i64 %i.ac, ptr %i.n, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  store i64 -2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  store i64 -2, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !646
  store i64 %i.ac, ptr %i.m, align 8, !noalias !646
  %.sroa.3.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4118.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !646
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i.outer

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i.outer: ; preds = %.noexc4.i.i, %bb.g
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ar, %.noexc4.i.i ], [ 0, %bb.g ] ; 3 uses
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i.backedge, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i.outer
  invoke void @_RNvXs3_NtCsavFsYbQvXbW_6procfs7processNtB5_9TasksIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %bb.h unwind label %.loopexit, !noalias !646

.loopexit:                                        ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i, %_RNvYINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten9into_itemINtNtBb_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEINtNtNtBb_3ops8function5FnMutTB10_EE8call_mutCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp:                               ; preds = %_RNCNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB9_4fuse4FuseNtNtCsavFsYbQvXbW_6procfs7process9TasksIterEINvNtB9_7flatten9into_itemINtNtBd_6result6ResultNtNtB1q_4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEENtNtNtBb_6traits8iterator8Iterator5count0Csl8OoimOLbh_6qdrant.exit.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process9TasksIterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.m) #19
          to label %.body.i unwind label %bb.n, !noalias !646

bb.h:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i
  %i.am = load i64, ptr %i.l, align 8, !range !16, !noalias !647, !noundef !7
  %.not.i.i = icmp eq i64 %i.am, -2
  br i1 %.not.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !647
  %i.an = load i64, ptr %i.j, align 8, !range !22, !noalias !648, !noundef !7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.an, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvYINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten9into_itemINtNtBb_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEINtNtNtBb_3ops8function5FnMutTB10_EE8call_mutCsl8OoimOLbh_6qdrant.exit.i.i.i, label %_RNvYINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten9into_itemINtNtBb_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEINtNtNtBb_3ops8function5FnMutTB10_EE8call_mutCsl8OoimOLbh_6qdrant.exit.thread.i.i.i

_RNvYINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten9into_itemINtNtBb_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEINtNtNtBb_3ops8function5FnMutTB10_EE8call_mutCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2L9szKvfIY4_11procfs_core9ProcErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.noexc.i.i unwind label %.loopexit, !noalias !646

.noexc.i.i:                                       ; preds = %_RNvYINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten9into_itemINtNtBb_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEINtNtNtBb_3ops8function5FnMutTB10_EE8call_mutCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !648
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i.backedge

_RNvYINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten9into_itemINtNtBb_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEINtNtNtBb_3ops8function5FnMutTB10_EE8call_mutCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.i
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !648 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !648
  %.not.i.i.i = icmp eq i64 %.sroa.03.0.copyload.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i.backedge, label %bb.j

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i.backedge: ; preds = %_RNvYINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten9into_itemINtNtBb_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEINtNtNtBb_3ops8function5FnMutTB10_EE8call_mutCsl8OoimOLbh_6qdrant.exit.i.i.i, %.noexc.i.i
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i

bb.j:                                             ; preds = %_RNvYINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten9into_itemINtNtBb_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEINtNtNtBb_3ops8function5FnMutTB10_EE8call_mutCsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !noalias !647
  store i64 %.sroa.0.0.i.i.ph, ptr %i.k, align 8, !noalias !649
  store i64 %.sroa.03.0.copyload.i.i.i.i.i.i, ptr %i.aj, align 8, !noalias !649
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %.val.i.i.i.i.i = load i32, ptr %i.ak, align 8, !range !9, !alias.scope !652, !noalias !649, !noundef !7
  %i.ao = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i) #21, !noalias !653 ; 0 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %_RNCNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB9_4fuse4FuseNtNtCsavFsYbQvXbW_6procfs7process9TasksIterEINvNtB9_7flatten9into_itemINtNtBd_6result6ResultNtNtB1q_4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEENtNtNtBb_6traits8iterator8Iterator5count0Csl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.k, !noalias !654

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %.body.i.i unwind label %bb.l, !noalias !654

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !654
  unreachable

_RNCNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB9_4fuse4FuseNtNtCsavFsYbQvXbW_6procfs7process9TasksIterEINvNtB9_7flatten9into_itemINtNtBd_6result6ResultNtNtB1q_4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEENtNtNtBb_6traits8iterator8Iterator5count0Csl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp, !noalias !646

.noexc4.i.i:                                      ; preds = %_RNCNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB9_4fuse4FuseNtNtCsavFsYbQvXbW_6procfs7process9TasksIterEINvNtB9_7flatten9into_itemINtNtBd_6result6ResultNtNtB1q_4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEENtNtNtBb_6traits8iterator8Iterator5count0Csl8OoimOLbh_6qdrant.exit.i.i.i
  %i.ar = add i64 %.sroa.0.0.i.i.ph, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !649
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldINtNtBa_6result6ResultNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskNtCs2L9szKvfIY4_11procfs_core9ProcErrorEB1w_jINvNtB6_7flatten9into_itemB1a_ENCNvYINtB4_9FilterMapINtNtB6_4fuse4FuseNtB1A_9TasksIterEB2Y_ENtNtNtB8_6traits8iterator8Iterator5count0E0Csl8OoimOLbh_6qdrant.exit.i.i.outer

bb.m:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process9TasksIterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %_RNvXsI_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_13FlattenCompatNtNtCsavFsYbQvXbW_6procfs7process9TasksIterINtNtBb_6result8IntoIterNtNtB1d_4task4TaskEENtNtNtB9_6traits8iterator8Iterator5countCsl8OoimOLbh_6qdrant.exit unwind label %bb.o, !noalias !646

bb.n:                                             ; preds = %.body.i.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !646
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.o ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ag) #19
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %.body.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.q:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result8IntoIterNtNtNtCsavFsYbQvXbW_6procfs7process4task4TaskEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ah) #19
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metricsNtB2_13ProcFsMetrics7collect:bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body.i258 unwind label %bb.al, !noalias !658

bb.al:                                            ; preds = %bb.ak
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !658
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process7ProcessECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.an unwind label %.loopexit.i, !noalias !655

bb.am:                                            ; preds = %bb.ai
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !658
  unreachable

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process7ProcessECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !655
  %.pr.i = load i64, ptr %i.g, align 8, !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !655
  %i.cr = icmp eq i64 %.pr.i, 2
  br i1 %i.cr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %.thread.i
  %i.cs = load i64, ptr %i.cb, align 8, !range !20, !noalias !655, !noundef !7 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -9223372036854775807
  br i1 %i.ct, label %bb.at, label %bb.as

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %i.h, ptr noundef nonnull align 8 dereferenceable(480) %i.g, i64 480, i1 false), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !655
  %i.cu = load <4 x i64>, ptr %i.ce, align 8, !noalias !655 ; 2 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.aq, !noalias !655

bb.aq:                                            ; preds = %bb.ap
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %.body.i258 unwind label %bb.ar, !noalias !655

bb.ar:                                            ; preds = %bb.aq
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !655
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2L9szKvfIY4_11procfs_core7process4stat4StatECsl8OoimOLbh_6qdrant.exit.i unwind label %.loopexit.split-lp.i, !noalias !655

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2L9szKvfIY4_11procfs_core7process4stat4StatECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i
  %i.cx = shufflevector <4 x i64> %i.cu, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cy = add <2 x i64> %i.cx, %i.cg
  %i.cz = shufflevector <4 x i64> %i.cu, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.da = add <2 x i64> %i.cy, %i.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !655
  br label %.outer.i

bb.as:                                            ; preds = %bb.ao
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.db = load <2 x i64>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !655
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTluEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread295 unwind label %bb.u

_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread295: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !655
  br label %bb.aw

bb.at:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2L9szKvfIY4_11procfs_core9ProcErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cb)
          to label %bb.au unwind label %.loopexit.i, !noalias !655

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !655
  br label %bb.ac

bb.av:                                            ; preds = %.body.i258
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !655
  unreachable

_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit: ; preds = %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics22child_processes_helper.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9)
  %.not247 = icmp eq i64 %.sroa.7.i.sroa.0.0.copyload286, -1
  br i1 %.not247, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread303, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread295, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit
  %.sroa.0.0302 = phi i64 [ %i.cs, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread295 ], [ %.sroa.7.i.sroa.0.0.copyload286, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit ], [ %i.bw, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread303 ]
  %i.dd = phi <2 x i64> [ %i.db, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread295 ], [ %i.bz, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit ], [ %i.bx, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread303 ]
  %.sroa.6216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6216.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0302, ptr %i.de, align 8
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.dd, ptr %.sroa.4214.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bo

bb.ax:                                            ; preds = %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit
  %i.df = phi <2 x i64> [ %i.cg, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit.thread ], [ %i.bz, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics23faults_for_all_children.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs1_NtCsavFsYbQvXbW_6procfs7processNtB5_7Process4maps(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.ay unwind label %bb.u

bb.ay:                                            ; preds = %bb.ax
  %i.dg = load i64, ptr %i.q, align 8, !range !22, !noundef !7 ; 2 uses
  %.not248 = icmp eq i64 %i.dg, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.671, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false)
  br i1 %.not248, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5222.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.671, i64 24, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dg, ptr %i.di, align 8
  store i64 2, ptr %0, align 8
  br label %bb.bm

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.671, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !7 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, 67818912035696881
  call void @llvm.assume(i1 %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvNtNtCsavFsYbQvXbW_6procfs3sys2vm13max_map_count(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.p)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.be, %bb.ba
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2L9szKvfIY4_11procfs_core7process10MemoryMapsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #19
          to label %.body266 unwind label %bb.bn

bb.bc:                                            ; preds = %bb.ba
  %i.dn = load i64, ptr %i.p, align 8, !range !22, !noundef !7 ; 2 uses
  %.not249 = icmp eq i64 %i.dn, -1
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  br i1 %.not249, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5234.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5231.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.dq, align 8
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dp, ptr %.sroa.4233.0..sroa_idx, align 8
  br label %bb.bl

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs1_NtCsavFsYbQvXbW_6procfs7processNtB5_7Process8fd_count(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.bf unwind label %bb.bb

bb.bf:                                            ; preds = %bb.be
  %i.dr = load i64, ptr %i.o, align 8, !range !22, !noundef !7 ; 2 uses
  %.not250 = icmp eq i64 %i.dr, -1
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  br i1 %.not250, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5243.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5240.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.dr, ptr %.sroa.556.0..sroa_idx, align 8
  store i64 %i.dt, ptr %.sroa.657.0..sroa_idx, align 8
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  store <2 x i64> %i.bh, ptr %0, align 8
  store <2 x i64> %i.bi, ptr %.sroa.657.0..sroa_idx, align 8
  %.sroa.859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.i.i.ph, ptr %.sroa.859.0..sroa_idx, align 8
  %.sroa.960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.dk, ptr %.sroa.960.0..sroa_idx, align 8
  %.sroa.1061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.dp, ptr %.sroa.1061.0..sroa_idx, align 8
  %.sroa.1162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.dt, ptr %.sroa.1162.0..sroa_idx, align 8
  %.sroa.1263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %1 = load <4 x i64>, ptr %i.du, align 8
  %2 = shufflevector <4 x i64> %1, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %2, ptr %.sroa.1263.0..sroa_idx, align 8
  %.sroa.1667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.df, ptr %.sroa.1667.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2L9szKvfIY4_11procfs_core7process10MemoryMapsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.bi unwind label %bb.u

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2L9szKvfIY4_11procfs_core7process4stat4StatECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(480) %i.u)
          to label %bb.bj unwind label %bb.d

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process7ProcessECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process7ProcessECsl8OoimOLbh_6qdrant.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.bl:                                            ; preds = %bb.bg, %bb.bd
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2L9szKvfIY4_11procfs_core7process10MemoryMapsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.bm unwind label %bb.u

bb.bm:                                            ; preds = %bb.bl, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bb, %.body266, %.body
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bo:                                            ; preds = %bb.bm, %bb.aw, %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.body unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2L9szKvfIY4_11procfs_core7process4stat4StatECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2L9szKvfIY4_11procfs_core7process4stat4StatECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.br

bb.br:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2L9szKvfIY4_11procfs_core7process4stat4StatECsl8OoimOLbh_6qdrant.exit, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.val.i = load i32, ptr %i.dz, align 8, !range !9, !alias.scope !662, !noundef !7
  %i.ea = call noundef i32 @close(i32 noundef %.val.i) #21, !noalias !662 ; 0 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process7ProcessECsl8OoimOLbh_6qdrant.exit unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.bs
  %common.resume.op = phi { ptr, i32 } [ %i.eb, %bb.bs ], [ %.pn252, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process7ProcessECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.br
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %bb.bk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics25child_processes_recursive(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 13 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtCsavFsYbQvXbW_6procfs7processNtB5_7Process3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, i32 noundef %1)
  %i.i = load i64, ptr %i.e, align 8, !range !22, !noundef !7
  switch i64 %i.i, label %bb.u [
    i64 -1, label %bb.b
    i64 -9223372036854775807, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyINtNtBN_6result6ResultlNtCs2L9szKvfIY4_11procfs_core9ProcErrorEEE3newCsl8OoimOLbh_6qdrant.exit.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs1_NtCsavFsYbQvXbW_6procfs7processNtB5_7Process5tasks(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.h, %bb.g, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.k, %bb.c ], [ %i.q, %bb.g ], [ %i.v, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsavFsYbQvXbW_6procfs7process7ProcessECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #19
          to label %common.resume unwind label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !range !6, !noundef !7
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !689
  %i.o = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 8) #21, !noalias !689 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.q, !prof !23

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #24
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !range !16, !alias.scope !690, !noundef !7
  %switch.i.i.i.i.i = icmp ugt i64 %i.r, -3
  br i1 %switch.i.i.i.i.i, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2L9szKvfIY4_11procfs_core9ProcErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !691
  %i.t = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, 9) 8) #21, !noalias !691 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.n, !prof !23

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #24
          to label %.noexc20.i unwind label %bb.l

.noexc20.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9XvERIT2X68_9itertools8adaptors3map14MapSpecialCaseINtNtBI_10flatten_ok9FlattenOkINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCsavFsYbQvXbW_6procfs7process9TasksIterNCNvNtNtNtCsl8OoimOLbh_6qdrant6common7metrics14procfs_metrics15child_processes0EINtNtCsexYYUdYSQU6_5alloc3vec3VecmENtCs2L9szKvfIY4_11procfs_core9ProcErrorEINtBE_18MapSpecialCaseFnOkNCB3y_s_0EEEB3G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #19
          to label %.body.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.n:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.t, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
end_hunk_1
