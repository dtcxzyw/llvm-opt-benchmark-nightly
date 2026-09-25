Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RNCNCNvMs3_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB9_15TcpServerClient5serve00Csa7TLgTh0CeG_9ssmanager:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1271.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1574.i.i.i)
  br label %bb.ez

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.ed, %bb.ec
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 4880
  store i8 0, ptr %i.sm, align 8, !noalias !20721
  store i8 1, ptr %i.gx, align 1, !noalias !20721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i8 1, ptr %i.gw, align 8, !noalias !20718
  %i.sn = icmp eq i64 %.sroa.0.3.i.i.i.i.i.i, 2
  br i1 %i.sn, label %bb.eg, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.867.i.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.1160.sroa.0.i.i.i.i.i, i64 704, i1 false), !noalias !20717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1271.i.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1160.sroa.8.i.i.i.i.i, i64 368, i1 false), !noalias !20717
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 2496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1574.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.so, i64 32, i1 false), !noalias !20717
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 4897
  store i8 0, ptr %i.sp, align 1, !noalias !20717
  br label %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i

bb.ej:                                            ; preds = %bb.ek, %bb.eg
  %i.sq = phi ptr [ %i.sw, %bb.ek ], [ %i.sg, %bb.eg ]
  %i.sr = phi ptr [ %i.sx, %bb.ek ], [ %i.sh, %bb.eg ]
  %i.ss = phi ptr [ %i.sy, %bb.ek ], [ %i.si, %bb.eg ]
  %i.st = phi ptr [ %i.sz, %bb.ek ], [ %i.sj, %bb.eg ]
  %i.su = phi ptr [ %i.ta, %bb.ek ], [ %i.sk, %bb.eg ]
  %i.sv = phi ptr [ %i.tb, %bb.ek ], [ %.phi.trans.insert187.i.i.i, %bb.eg ]
  %.sroa.465.0198.i.i.i = phi ptr [ %.sroa.465.0199.i.i.i, %bb.ek ], [ %.sroa.473.1.i.i.i167.i.i, %bb.eg ]
  store i8 0, ptr %i.sv, align 1, !noalias !20717
  br label %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i

bb.ek:                                            ; preds = %bb.eg, %.thread196.i.i.i
  %i.sw = phi ptr [ %i.dz, %.thread196.i.i.i ], [ %i.sg, %bb.eg ]
  %i.sx = phi ptr [ %i.ea, %.thread196.i.i.i ], [ %i.sh, %bb.eg ]
  %i.sy = phi ptr [ %i.eb, %.thread196.i.i.i ], [ %i.si, %bb.eg ]
  %i.sz = phi ptr [ %i.ec, %.thread196.i.i.i ], [ %i.sj, %bb.eg ]
  %i.ta = phi ptr [ %i.ed, %.thread196.i.i.i ], [ %i.sk, %bb.eg ]
  %i.tb = phi ptr [ %i.ee, %.thread196.i.i.i ], [ %.phi.trans.insert187.i.i.i, %bb.eg ]
  %.sroa.465.0199.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i, %.thread196.i.i.i ], [ %.sroa.473.1.i.i.i167.i.i, %bb.eg ]
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 1336
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.tc) #46, !noalias !20798
  br label %bb.ej

_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.ej, %bb.ei
  %i.td = phi ptr [ %i.sq, %bb.ej ], [ %i.gr, %bb.ei ] ; 3 uses
  %i.te = phi ptr [ %i.sr, %bb.ej ], [ %i.gs, %bb.ei ] ; 3 uses
  %i.tf = phi ptr [ %i.ss, %bb.ej ], [ %i.gt, %bb.ei ] ; 2 uses
  %i.tg = phi ptr [ %i.st, %bb.ej ], [ %i.gu, %bb.ei ]
  %i.th = phi ptr [ %i.su, %bb.ej ], [ %i.gv, %bb.ei ]
  %.sroa.064.1.i.i.i = phi i64 [ -1, %bb.ej ], [ %.sroa.0.3.i.i.i.i.i.i, %bb.ei ] ; 3 uses
  %.sroa.465.1.i.i.i = phi ptr [ %.sroa.465.0198.i.i.i, %bb.ej ], [ %.sroa.13.3.i.i.i.i.i.i, %bb.ei ] ; 3 uses
  %.sroa.766.0.i.i.i = phi ptr [ undef, %bb.ej ], [ %.sroa.19.3.i.i.i.i.i.i, %bb.ei ]
  %.sroa.968.0.i.i.i = phi i64 [ undef, %bb.ej ], [ %.sroa.25.i.sroa.5.0.i.i.i.i.i, %bb.ei ]
  %.sroa.1069.0.i.i.i = phi ptr [ undef, %bb.ej ], [ %.sroa.25.i.sroa.6.0.i.i.i.i.i, %bb.ei ]
  %.sroa.1170.0.i.i.i = phi i64 [ undef, %bb.ej ], [ %.sroa.25.i.sroa.7.0.i.i.i.i.i, %bb.ei ]
  %.sroa.1372.0.i.i.i = phi i8 [ undef, %bb.ej ], [ %.sroa.0.0.i.i.i.i.i, %bb.ei ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.976.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.867.i.i.i, i64 704, i1 false), !noalias !20799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1271.i.i.i, i64 368, i1 false), !noalias !20799
  %.sroa.15.1128..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.15.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.15.1128..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1574.i.i.i, i64 32, i1 false), !noalias !20799
  store i8 1, ptr %i.tg, align 8, !noalias !20717
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1160.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1160.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1271.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1574.i.i.i)
  %i.ti = icmp eq i64 %.sroa.064.1.i.i.i, -2
  br i1 %i.ti, label %bb.ez, label %bb.fa

bb.el:                                            ; preds = %bb.ey, %bb.h
  %i.tj = phi ptr [ %i.bi, %bb.h ], [ %i.ug, %bb.ey ] ; 3 uses
  %i.tk = phi ptr [ %.phi.trans.insert.i, %bb.h ], [ %i.uh, %bb.ey ] ; 3 uses
  %i.tl = phi ptr [ %i.bt, %bb.h ], [ %i.ui, %bb.ey ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !20703
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  call fastcc void @_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0Csa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1160) %i.aj, ptr noundef nonnull align 8 %i.tm, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #54, !noalias !20704
  %i.tn = load i64, ptr %i.aj, align 8, !range !188, !noalias !20703, !noundef !80 ; 3 uses
  %i.to = icmp eq i64 %i.tn, -2
  br i1 %i.to, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !20703
  br label %bb.fj

bb.en:                                            ; preds = %bb.el
  %.sroa.3110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.3110.0.copyload.i.i = load ptr, ptr %.sroa.3110.0..sroa_idx.i.i, align 8, !noalias !20703 ; 3 uses
  %.sroa.5111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5111.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5111.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.5111.sroa.2.0..sroa.5111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.5111.sroa.2.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.5111.sroa.2.0..sroa.5111.0..sroa_idx.sroa_idx.i.i, i64 704, i1 false), !noalias !20703
  %.sroa.5111.sroa.3.0..sroa.5111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 728
  %.sroa.5111.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.5111.sroa.3.0..sroa.5111.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.5111.sroa.4.0..sroa.5111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 736
  %.sroa.5111.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5111.sroa.4.0..sroa.5111.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 744
  %.sroa.5111.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.5111.sroa.6.0..sroa.5111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.5111.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.5111.sroa.6.0..sroa.5111.0..sroa_idx.sroa_idx.i.i, i64 368, i1 false), !noalias !20703
  %.sroa.5111.sroa.7.0..sroa.5111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 1120
  %.sroa.5111.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.5111.sroa.7.0..sroa.5111.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.5111.sroa.8.0..sroa.5111.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 1121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5111.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5111.sroa.8.0..sroa.5111.0..sroa_idx.sroa_idx.i.i, i64 39, i1 false), !noalias !20703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !20703
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 2496
  %i.tq = load i8, ptr %i.tp, align 8, !range !107, !noalias !20703, !noundef !80
  switch i8 %i.tq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsa7TLgTh0CeG_9ssmanager.exit.i.i [
    i8 0, label %bb.eo
    i8 3, label %bb.ep
    i8 4, label %bb.eq
  ]

bb.eo:                                            ; preds = %bb.en
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %i.tm) #46, !noalias !20704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.ep:                                            ; preds = %bb.en
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 2504
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6socks5NtBH_16Socks5Negotiator13establish_tcpNtNtBJ_6stream19OutboundProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE0ECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.tr) #46, !noalias !20704
  br label %bb.er

bb.eq:                                            ; preds = %bb.en
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 2504
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound12http_connectNtBH_17HttpConnectClient9establishNtNtBJ_6stream19OutboundProxyStreamE0ECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.ts) #46, !noalias !20704
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 2497 ; 2 uses
  %i.tu = load i8, ptr %i.tt, align 1, !range !93, !noalias !20703, !noundef !80
  %i.tv = trunc nuw i8 %i.tu to i1
  br i1 %i.tv, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.et, %bb.er
  store i8 0, ptr %i.tt, align 1, !noalias !20703
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.et:                                            ; preds = %bb.er
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 1336
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.tw) #46, !noalias !20704
  br label %bb.es

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.es, %bb.eo, %bb.en
  %i.tx = icmp eq i64 %i.tn, -1
  br i1 %i.tx, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3110.0.copyload.i.i) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsa7TLgTh0CeG_9ssmanager.exit

bb.ev:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0ECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.12122.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.5111.sroa.2.i.i, i64 704, i1 false), !noalias !20703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.5111.sroa.6.i.i, i64 368, i1 false), !noalias !20703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5111.sroa.8.i.i, i64 39, i1 false), !noalias !20703
  %.phi.trans.insert280.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre281.i.i = load ptr, ptr %.phi.trans.insert280.i.i, align 8, !alias.scope !20800, !noalias !20703
  %.phi.trans.insert282.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.pre283.i.i = load ptr, ptr %.phi.trans.insert282.i.i, align 8, !alias.scope !20800, !noalias !20703
  br label %bb.y

bb.ew:                                            ; preds = %bb.y
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.tz = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  store ptr %i.tz, ptr %i.ty, align 8, !alias.scope !20800, !noalias !20703
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ub = load i64, ptr %i.ua, align 8, !alias.scope !20801, !noalias !20703, !noundef !80 ; 2 uses
  %i.uc = add i64 %i.ub, 1                        ; 2 uses
  store i64 %i.uc, ptr %i.ua, align 8, !alias.scope !20801, !noalias !20703
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %i.ub, ptr %i.ud, align 8, !noalias !20703
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.dw, ptr %i.ue, align 8, !noalias !20703, !captures !173
  %.val9.i.i = load i64, ptr %i.dw, align 8, !range !147, !noalias !20704, !noundef !80
  %i.uf = icmp sgt i64 %.val9.i.i, -1
  br i1 %i.uf, label %.thread306.i.i, label %bb.ey

bb.ex:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.14141.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.12122.i.i, i64 704, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.18145.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.16.i.i, i64 368, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.20.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18.i.i, i64 39, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsa7TLgTh0CeG_9ssmanager.exit

bb.ey:                                            ; preds = %bb.fc, %bb.ew
  %i.ug = phi ptr [ %i.td, %bb.fc ], [ %i.ds, %bb.ew ]
  %i.uh = phi ptr [ %i.te, %bb.fc ], [ %i.dt, %bb.ew ]
  %i.ui = phi ptr [ %i.tf, %bb.fc ], [ %i.du, %bb.ew ]
  %.pre-phi.i.i = phi i64 [ %.pre294.i.i, %bb.fc ], [ %i.uc, %bb.ew ] ; 2 uses
  %i.uj = phi ptr [ %.pre293.i.i, %bb.fc ], [ %i.dw, %bb.ew ]
  %.sroa.17.1.i.i = phi i8 [ %.sroa.1372.0.i.i.i, %bb.fc ], [ %.sroa.17.0.i.i, %bb.ew ]
  %.sroa.15131.1.i.i = phi i64 [ %.sroa.1170.0.i.i.i, %bb.fc ], [ %.sroa.15131.0.i.i, %bb.ew ]
  %.sroa.14127.1.i.i = phi ptr [ %.sroa.1069.0.i.i.i, %bb.fc ], [ %.sroa.14127.0.i.i, %bb.ew ]
  %.sroa.13123.1.i.i = phi i64 [ %.sroa.968.0.i.i.i, %bb.fc ], [ %.sroa.13123.0.i.i, %bb.ew ]
  %.sroa.9118.1.i.i = phi ptr [ %.sroa.766.0.i.i.i, %bb.fc ], [ %.sroa.9118.0.i.i, %bb.ew ]
  %.sroa.6115.1.i.i = phi ptr [ %.sroa.465.1.i.i.i, %bb.fc ], [ %.sroa.6115.0.i.i, %bb.ew ]
  %.sroa.0112.1.i.i = phi i64 [ %.sroa.064.1.i.i.i, %bb.fc ], [ %.sroa.0112.0.i.i, %bb.ew ]
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ul = load ptr, ptr %i.uk, align 8, !noalias !20703, !nonnull !80, !align !86, !noundef !80
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.un = load i64, ptr %i.um, align 8, !noalias !20703, !noundef !80
  %.not.i.i = icmp ult i64 %.pre-phi.i.i, %i.un
  %i.uo = getelementptr inbounds nuw [112 x i8], ptr %i.ul, i64 %.pre-phi.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 72
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ur = load ptr, ptr %i.uq, align 8, !noalias !20703, !nonnull !80, !align !86, !noundef !80
  %..i16.i.i = select i1 %.not.i.i, ptr %i.up, ptr %i.ur
  %.sroa.0103.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.0103.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.12122.i.i, i64 704, i1 false), !noalias !20703
  %.sroa.0103.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.0103.sroa.13.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.16.i.i, i64 368, i1 false), !noalias !20703
  %.sroa.0103.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.0103.sroa.15.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18.i.i, i64 39, i1 false), !noalias !20703
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.0112.1.i.i, ptr %i.us, align 8, !noalias !20703
  %.sroa.0103.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sroa.6115.1.i.i, ptr %.sroa.0103.sroa.7.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.0103.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.9118.1.i.i, ptr %.sroa.0103.sroa.8.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.0103.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 888
  store i64 %.sroa.13123.1.i.i, ptr %.sroa.0103.sroa.10.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.0103.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 896
  store ptr %.sroa.14127.1.i.i, ptr %.sroa.0103.sroa.11.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.0103.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 904
  store i64 %.sroa.15131.1.i.i, ptr %.sroa.0103.sroa.12.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.0103.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1280
  store i8 %.sroa.17.1.i.i, ptr %.sroa.0103.sroa.14.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.7104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1320
  store ptr %i.uj, ptr %.sroa.7104.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.8105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1328
  store ptr %..i16.i.i, ptr %.sroa.8105.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.10107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store i8 0, ptr %.sroa.10107.0..sroa_idx.i.i, align 8, !noalias !20703
  br label %bb.el

.thread306.i.i:                                   ; preds = %bb.ew
  %i.ut = call { ptr, i64 } @_RNvMNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outboundNtB2_16OutboundProxyHop7tls_sni(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dw) #46, !noalias !20704 ; 2 uses
  %i.uu = extractvalue { ptr, i64 } %i.ut, 0
  %i.uv = extractvalue { ptr, i64 } %i.ut, 1
  %.sroa.067.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.067.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.12122.i.i, i64 704, i1 false), !noalias !20703
  %.sroa.067.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.067.sroa.13.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.16.i.i, i64 368, i1 false), !noalias !20703
  %.sroa.067.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.067.sroa.15.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18.i.i, i64 39, i1 false), !noalias !20703
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store i64 %.sroa.0112.0.i.i, ptr %i.uw, align 8, !noalias !20703
  %.sroa.067.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sroa.6115.0.i.i, ptr %.sroa.067.sroa.7.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.067.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.9118.0.i.i, ptr %.sroa.067.sroa.8.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.067.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 888
  store i64 %.sroa.13123.0.i.i, ptr %.sroa.067.sroa.10.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.067.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 896
  store ptr %.sroa.14127.0.i.i, ptr %.sroa.067.sroa.11.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.067.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 904
  store i64 %.sroa.15131.0.i.i, ptr %.sroa.067.sroa.12.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.067.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1280
  store i8 %.sroa.17.0.i.i, ptr %.sroa.067.sroa.14.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.768.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1320
  store ptr %i.uu, ptr %.sroa.768.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.869.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1328
  store i64 %i.uv, ptr %.sroa.869.0..sroa_idx.i.i, align 8, !noalias !20703
  %.sroa.1071.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4896 ; 2 uses
  store i8 0, ptr %.sroa.1071.0..sroa_idx.i.i, align 8, !noalias !20703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.976.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1160.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1160.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.867.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1271.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1574.i.i.i)
  br label %bb.ab

bb.ez:                                            ; preds = %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i, %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i
  %i.ux = phi ptr [ %i.td, %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.gr, %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i ]
  %i.uy = phi ptr [ %i.te, %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.gs, %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.976.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i)
  br label %bb.fj

bb.fa:                                            ; preds = %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.883.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.976.i.i, i64 704, i1 false), !noalias !20703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1287.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.13.i.i, i64 368, i1 false), !noalias !20703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.1489.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.15.i.i, i64 39, i1 false), !noalias !20703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.976.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0ECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.th) #46, !noalias !20704
  %i.uz = icmp eq i64 %.sroa.064.1.i.i.i, -1
  br i1 %i.uz, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.465.1.i.i.i) ]
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsa7TLgTh0CeG_9ssmanager.exit

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.12122.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.883.i.i, i64 704, i1 false), !noalias !20703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1287.i.i, i64 368, i1 false), !noalias !20703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.1489.i.i, i64 39, i1 false), !noalias !20703
  %.phi.trans.insert290.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre291.i.i = load i64, ptr %.phi.trans.insert290.i.i, align 8, !noalias !20703
  %.phi.trans.insert292.i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.pre293.i.i = load ptr, ptr %.phi.trans.insert292.i.i, align 8, !noalias !20703
  %.pre294.i.i = add i64 %.pre291.i.i, 1
  br label %bb.ey

bb.fd:                                            ; preds = %bb.f
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #56, !noalias !20702
  unreachable

bb.fe:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @585) #56
  unreachable

common.ret:                                       ; preds = %bb.fj, %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsa7TLgTh0CeG_9ssmanager.exit, %bb.ff
  %.sink = phi i8 [ 4, %bb.fj ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsa7TLgTh0CeG_9ssmanager.exit ], [ 3, %bb.ff ]
  store i8 %.sink, ptr %i.ap, align 8
  ret void

bb.ff:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.fg:                                            ; preds = %bb.e
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.313.0.copyload = load i32, ptr %.sroa.313.0..sroa_idx, align 4
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.315.0.copyload = load ptr, ptr %.sroa.315.0..sroa_idx, align 8 ; 3 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtBG_9TcpStream24connect_remote_with_opts0ECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.bf) #46
  %i.va = icmp eq i32 %i.bg, -2
  br i1 %i.va, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.315.0.copyload) ]
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsa7TLgTh0CeG_9ssmanager.exit

bb.fi:                                            ; preds = %bb.fg
  %.sroa.447.0.insert.ext = zext i32 %i.bg to i64
  %.sroa.447.4.insert.ext = zext i32 %.sroa.313.0.copyload to i64
  %.sroa.447.4.insert.shift = shl nuw i64 %.sroa.447.4.insert.ext, 32
  %.sroa.447.4.insert.insert = or disjoint i64 %.sroa.447.4.insert.shift, %.sroa.447.0.insert.ext
  %i.vb = inttoptr i64 %.sroa.447.4.insert.insert to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1149, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417, i64 48, i1 false), !alias.scope !20802
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsa7TLgTh0CeG_9ssmanager.exit

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamNtNtNtB5_2io5error5ErrorE3mapNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelay12RemoteStreamNcNtB20_6Direct0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.fl, %bb.fk, %bb.fi, %bb.fh
  %.sroa.046.0 = phi i64 [ -1, %bb.fi ], [ -2, %bb.fh ], [ -2, %bb.fk ], [ %.sroa.0138.0.i.i, %bb.fl ]
  %.sroa.948.0 = phi ptr [ %.sroa.315.0.copyload, %bb.fi ], [ undef, %bb.fh ], [ undef, %bb.fk ], [ %.sroa.13140.0.i.i, %bb.fl ]
  %.sroa.1350.0 = phi i64 [ undef, %bb.fi ], [ undef, %bb.fh ], [ undef, %bb.fk ], [ %.sroa.15142.0.i.i, %bb.fl ]
  %.sroa.1451.0 = phi ptr [ undef, %bb.fi ], [ undef, %bb.fh ], [ undef, %bb.fk ], [ %.sroa.16143.0.i.i, %bb.fl ]
  %.sroa.1552.0 = phi i64 [ undef, %bb.fi ], [ undef, %bb.fh ], [ undef, %bb.fk ], [ %.sroa.17144.0.i.i, %bb.fl ]
  %.sroa.17.0 = phi i8 [ undef, %bb.fi ], [ undef, %bb.fh ], [ undef, %bb.fk ], [ %.sroa.19.0.i.i, %bb.fl ]
  %.sroa.447.0 = phi ptr [ %i.vb, %bb.fi ], [ %.sroa.315.0.copyload, %bb.fh ], [ %.sroa.7139.0.i.i, %bb.fk ], [ %.sroa.7139.0.i.i, %bb.fl ]
  store i64 %.sroa.046.0, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.447.0, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.948.0, ptr %.sroa.948.0..sroa_idx, align 8
  %.sroa.1149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.1149.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.1149, i64 704, i1 false)
  %.sroa.1350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 %.sroa.1350.0, ptr %.sroa.1350.0..sroa_idx, align 8
  %.sroa.1451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %.sroa.1451.0, ptr %.sroa.1451.0..sroa_idx, align 8
  %.sroa.1552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i64 %.sroa.1552.0, ptr %.sroa.1552.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.16, i64 368, i1 false)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.18, i64 39, i1 false)
  br label %common.ret

bb.fj:                                            ; preds = %bb.t, %bb.em, %bb.ez
  %i.vc = phi ptr [ %i.da, %bb.t ], [ %i.tj, %bb.em ], [ %i.ux, %bb.ez ]
  %.ph.i = phi ptr [ %i.db, %bb.t ], [ %i.tk, %bb.em ], [ %i.uy, %bb.ez ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.t ], [ 5, %bb.em ], [ 4, %bb.ez ]
  store i8 %.sink.i.ph.i, ptr %.ph.i, align 8, !noalias !20703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12122.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5111.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5111.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5111.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.883.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1287.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1489.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !20701
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.640.i.i)
  store i8 3, ptr %i.vc, align 8, !noalias !20701
  store i64 -3, ptr %0, align 8
  br label %common.ret

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chainNtBJ_19OutboundProxyClient11connect_tcpNtNtNtBN_6server8tcprelay15ServerTcpDialerE0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.k, %bb.u, %bb.w, %bb.eu, %bb.ex, %bb.fb
  %i.vd = phi ptr [ %i.bu, %bb.k ], [ %i.da, %bb.u ], [ %i.da, %bb.w ], [ %i.ds, %bb.ex ], [ %i.td, %bb.fb ], [ %i.tj, %bb.eu ]
  %i.ve = phi ptr [ %i.bz, %bb.k ], [ %i.db, %bb.u ], [ %i.db, %bb.w ], [ %i.dt, %bb.ex ], [ %i.te, %bb.fb ], [ %i.tk, %bb.eu ]
end_hunk_0
