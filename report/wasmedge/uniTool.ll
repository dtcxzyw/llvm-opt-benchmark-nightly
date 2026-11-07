Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/uniTool?download=true
inline.NumInlined: 2591
inline.NumDeleted: 1079
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8WasmEdge6Driver7UniToolEiPPKcNS0_8ToolTypeE:bb.a
  %.sroa.4160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 464
  store ptr @.str.30, ptr %.sroa.4160.0..sroa_idx.i, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 480
  store i8 0, ptr %i.ba, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 488
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 504
  store i8 0, ptr %i.bc, align 8
  store i64 25, ptr %i.bb, align 8, !tbaa !22
  %.sroa.4158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 496
  store ptr @.str.31, ptr %.sroa.4158.0..sroa_idx.i, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 512
  store i8 0, ptr %i.bd, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 520
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 536
  store i8 0, ptr %i.bf, align 8
  store i64 35, ptr %i.be, align 8, !tbaa !22
  %.sroa.4156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 528
  store ptr @.str.32, ptr %.sroa.4156.0..sroa_idx.i, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 544
  store i8 0, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 552
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 568
  store i8 0, ptr %i.bi, align 8
  store i64 49, ptr %i.bh, align 8, !tbaa !22
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 560
  store ptr @.str.33, ptr %.sroa.4154.0..sroa_idx.i, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 576
  store i8 0, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 584
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 600
  store i8 0, ptr %i.bl, align 8
  store i64 54, ptr %i.bk, align 8, !tbaa !22
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 592
  store ptr @.str.34, ptr %.sroa.4152.0..sroa_idx.i, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 608
  store i8 0, ptr %i.bm, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 616
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 632
  store i8 0, ptr %i.bo, align 8
  store i64 41, ptr %i.bn, align 8, !tbaa !22
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 624
  store ptr @.str.35, ptr %.sroa.4150.0..sroa_idx.i, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 640
  store i8 0, ptr %i.bp, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 648
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 664
  store i8 0, ptr %i.br, align 8
  store i64 28, ptr %i.bq, align 8, !tbaa !22
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 656
  store ptr @.str.36, ptr %.sroa.4148.0..sroa_idx.i, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 672
  store i8 0, ptr %i.bs, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 680
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 696
  store i8 0, ptr %i.bu, align 8
  store i64 39, ptr %i.bt, align 8, !tbaa !22
  %.sroa.4146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 688
  store ptr @.str.37, ptr %.sroa.4146.0..sroa_idx.i, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 704
  store i8 0, ptr %i.bv, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 712
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 728
  store i8 0, ptr %i.bx, align 8
  store i64 32, ptr %i.bw, align 8, !tbaa !22
  %.sroa.4144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 720
  store ptr @.str.38, ptr %.sroa.4144.0..sroa_idx.i, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 736
  store i8 0, ptr %i.by, align 8, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 744
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 760
  store i8 0, ptr %i.ca, align 8
  store i64 21, ptr %i.bz, align 8, !tbaa !22
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 752
  store ptr @.str.39, ptr %.sroa.4142.0..sroa_idx.i, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 768
  store i8 0, ptr %i.cb, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 776
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 792
  store i8 0, ptr %i.cd, align 8
  store i64 26, ptr %i.cc, align 8, !tbaa !22
  %.sroa.4140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 784
  store ptr @.str.40, ptr %.sroa.4140.0..sroa_idx.i, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 800
  store i8 0, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 808
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 824
  store i8 0, ptr %i.cg, align 8
  store i64 31, ptr %i.cf, align 8, !tbaa !22
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 816
  store ptr @.str.41, ptr %.sroa.4138.0..sroa_idx.i, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 832
  store i8 0, ptr %i.ch, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 840
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 856
  store i8 0, ptr %i.cj, align 8
  store i64 35, ptr %i.ci, align 8, !tbaa !22
  %.sroa.4136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 848
  store ptr @.str.42, ptr %.sroa.4136.0..sroa_idx.i, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 864
  store i8 0, ptr %i.ck, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 872
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 888
  store i8 0, ptr %i.cm, align 8
  store i64 19, ptr %i.cl, align 8, !tbaa !22
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 880
  store ptr @.str.43, ptr %.sroa.4134.0..sroa_idx.i, align 8, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 896
  store i8 0, ptr %i.cn, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 904
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 920
  store i8 0, ptr %i.cp, align 8
  store i64 34, ptr %i.co, align 8, !tbaa !22
  %.sroa.4132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 912
  store ptr @.str.44, ptr %.sroa.4132.0..sroa_idx.i, align 8, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 928
  store i8 0, ptr %i.cq, align 8, !tbaa !35
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 936
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 952
  store i8 0, ptr %i.cs, align 8
  store i64 29, ptr %i.cr, align 8, !tbaa !22
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 944
  store ptr @.str.45, ptr %.sroa.4130.0..sroa_idx.i, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 960
  store i8 0, ptr %i.ct, align 8, !tbaa !35
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 968
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 984
  store i8 0, ptr %i.cv, align 8
  store i64 119, ptr %i.cu, align 8, !tbaa !22
  %.sroa.4128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 976
  store ptr @.str.47, ptr %.sroa.4128.0..sroa_idx.i, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 992
  store i8 0, ptr %i.cw, align 8, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 1000
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 1016
  store i8 0, ptr %i.cy, align 8
  store i64 124, ptr %i.cx, align 8, !tbaa !22
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 1008
  store ptr @.str.48, ptr %.sroa.4126.0..sroa_idx.i, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 1024
  store i8 0, ptr %i.cz, align 8, !tbaa !35
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 1032
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 1048
  store i8 0, ptr %i.db, align 8
  store i64 128, ptr %i.da, align 8, !tbaa !22
  %.sroa.4124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 1040
  store ptr @.str.49, ptr %.sroa.4124.0..sroa_idx.i, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 1056
  store i8 0, ptr %i.dc, align 8, !tbaa !35
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 1064
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 1080
  store i8 0, ptr %i.de, align 8
  store i64 112, ptr %i.dd, align 8, !tbaa !22
  %.sroa.4122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 1072
  store ptr @.str.50, ptr %.sroa.4122.0..sroa_idx.i, align 8, !tbaa !24
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 1088
  store i8 0, ptr %i.df, align 8, !tbaa !35
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 1096
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 1112
  store i8 0, ptr %i.dh, align 8
  store i64 127, ptr %i.dg, align 8, !tbaa !22
  %.sroa.4120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 1104
  store ptr @.str.51, ptr %.sroa.4120.0..sroa_idx.i, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 1120
  store i8 0, ptr %i.di, align 8, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 1128
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 1144
  store i8 0, ptr %i.dk, align 8
  store i64 122, ptr %i.dj, align 8, !tbaa !22
  %.sroa.4118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 1136
  store ptr @.str.52, ptr %.sroa.4118.0..sroa_idx.i, align 8, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 1152
  store i8 0, ptr %i.dl, align 8, !tbaa !35
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 1160
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 1176
  store i8 0, ptr %i.dn, align 8
  store i64 25, ptr %i.dm, align 8, !tbaa !22
  %.sroa.4116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 1168
  store ptr @.str.54, ptr %.sroa.4116.0..sroa_idx.i, align 8, !tbaa !24
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 1184
  store i8 0, ptr %i.do, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 1192
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 1208
  store i8 0, ptr %i.dq, align 8
  store i64 23, ptr %i.dp, align 8, !tbaa !22
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 1200
  store ptr @.str.55, ptr %.sroa.4114.0..sroa_idx.i, align 8, !tbaa !24
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 1216
  store i8 0, ptr %i.dr, align 8, !tbaa !35
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 1224
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 1240
  store i8 0, ptr %i.dt, align 8
  store i64 19, ptr %i.ds, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %10, i64 1232
  store ptr @.str.57, ptr %.sroa.4.0..sroa_idx.i48, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 1248 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 1264 ; 4 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !26
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 1256
  store i64 0, ptr %i.dw, align 8, !tbaa !28
  store i8 0, ptr %i.dv, align 8, !tbaa !29
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 1312 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 1320
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 1336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dz, i8 0, i64 17, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 1280 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 1296 ; 4 uses
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !26
  store i16 50, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 1288
  store i64 1, ptr %i.ec, align 8, !tbaa !28
  store i8 1, ptr %i.dx, align 8, !tbaa !32
  store i64 44, ptr %i.dy, align 8, !tbaa !22
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 1328
  store ptr @.str.87, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !24
  switch i8 %2, label %.loopexit [
    i8 0, label %bb.e
    i8 2, label %bb.f
    i8 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @_ZN8WasmEdge6Driver17DriverToolOptions10add_optionERNS_2PO14ArgumentParserE(ptr noundef nonnull align 8 dereferenceable(2336) %9, ptr noundef nonnull align 8 dereferenceable(88) %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i64 7, ptr %11, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.2, ptr %i.ed, align 8
  %i.ee = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN8WasmEdge2PO14ArgumentParser16begin_subcommandIJSt17basic_string_viewIcSt11char_traitsIcEEEEERS1_RNS0_10SubCommandEDpOT_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(16) %11) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN8WasmEdge6Driver21DriverCompilerOptions10add_optionERNS_2PO14ArgumentParserE(ptr noundef nonnull align 8 dereferenceable(1360) %10, ptr noundef nonnull align 8 dereferenceable(88) %6) #18
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !37
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !22
  store i64 %i.ei, ptr %i.i, align 8, !tbaa !46
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store i64 3, ptr %12, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.3, ptr %i.ej, align 8
  %i.ek = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN8WasmEdge2PO14ArgumentParser16begin_subcommandIJSt17basic_string_viewIcSt11char_traitsIcEEEEERS1_RNS0_10SubCommandEDpOT_(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull align 8 dereferenceable(16) %12) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN8WasmEdge6Driver17DriverToolOptions10add_optionERNS_2PO14ArgumentParserE(ptr noundef nonnull align 8 dereferenceable(2336) %9, ptr noundef nonnull align 8 dereferenceable(88) %6) #18
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !37
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !22
  store i64 %i.en, ptr %i.i, align 8, !tbaa !46
  store ptr %i.em, ptr %i.ef, align 8, !tbaa !47
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @_ZN8WasmEdge6Driver17DriverToolOptions10add_optionERNS_2PO14ArgumentParserE(ptr noundef nonnull align 8 dereferenceable(2336) %9, ptr noundef nonnull align 8 dereferenceable(88) %6) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_ZN8WasmEdge6Driver21DriverCompilerOptions10add_optionERNS_2PO14ArgumentParserE(ptr noundef nonnull align 8 dereferenceable(1360) %10, ptr noundef nonnull align 8 dereferenceable(88) %6) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.eo = load ptr, ptr @stdout, align 8, !tbaa !212
  %i.ep = call noundef zeroext i1 @_ZN8WasmEdge2PO14ArgumentParser5parseEP8_IO_FILEiPPKc(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef %i.eo, i32 noundef %0, ptr noundef %1) #18
  br i1 %i.ep, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.eq = load i8, ptr %i.j, align 8, !tbaa !48, !range !49, !noundef !50
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.noexc, label %bb.q

.noexc:                                           ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.es = load ptr, ptr %1, align 8, !tbaa !24
  %i.et = ptrtoint ptr %i.es to i64
  %.sroa.01.0.insert.ext.i = zext i64 %i.et to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %5, align 16, !alias.scope !213
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.01.0.insert.ext.i49 = zext i64 ptrtoint (ptr @.str.141 to i64) to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.01.0.insert.ext.i49, 110680464442257309696
  store i128 %.sroa.01.0.insert.insert.i, ptr %i.eu, align 16, !alias.scope !213
  invoke void @_ZN3fmt3v116vprintENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr nonnull @.str.4, i64 14, i64 220, ptr nonnull %5)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ev = call { ptr, i64 } @_ZN8WasmEdge6Plugin6Plugin7pluginsEv() #18 ; 2 uses
  %i.ew = extractvalue { ptr, i64 } %i.ev, 0      ; 2 uses
  %i.ex = extractvalue { ptr, i64 } %i.ev, 1      ; 2 uses
  %.idx = mul nuw nsw i64 %i.ex, 224
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx
  %.not101 = icmp eq i64 %i.ex, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %.027102 = phi ptr [ %i.ew, %.lr.ph ], [ %i.gn, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.027102, i64 40 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !240, !nonnull !50, !noundef !50 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.fl, align 4, !tbaa !59 ; 2 uses
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %.sroa.2.0.copyload.i52 = load i64, ptr %.sroa.2.0..sroa_idx.i51, align 4, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @_ZNK8WasmEdge6Plugin6Plugin4pathB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %14, ptr noundef nonnull align 8 dereferenceable(224) %.027102) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.fm = load ptr, ptr %14, align 8, !tbaa !60, !noalias !243 ; 3 uses
  %i.fn = load i64, ptr %i.ez, align 8, !tbaa !28, !noalias !243 ; 5 uses
  store ptr %i.fa, ptr %13, align 8, !tbaa !26, !alias.scope !243
  %i.fo = icmp eq ptr %i.fm, null
  %i.fp = icmp ne i64 %i.fn, 0
  %or.cond.i.i.i = and i1 %i.fo, %i.fp
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.l

.noexc.i:                                         ; preds = %bb.k
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.noexc.i
  unreachable

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !243
  store i64 %i.fn, ptr %i.a, align 8, !tbaa !22, !noalias !243
  %i.fq = icmp ugt i64 %i.fn, 15
  br i1 %i.fq, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.l
  %i.fr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56:                                         ; preds = %.noexc.i.i.i
  store ptr %i.fr, ptr %13, align 8, !tbaa !60, !alias.scope !243
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !243
  store i64 %i.fs, ptr %i.fa, align 8, !tbaa !29, !alias.scope !243
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc56, %bb.l
  %i.ft = phi ptr [ %i.fr, %.noexc56 ], [ %i.fa, %bb.l ] ; 2 uses
  switch i64 %i.fn, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %.noexc31
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.fu = load i8, ptr %i.fm, align 1, !tbaa !29
  store i8 %i.fu, ptr %i.ft, align 1, !tbaa !29
  br label %.noexc31

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 1 %i.fm, i64 %i.fn, i1 false)
  br label %.noexc31

.noexc31:                                         ; preds = %._crit_edge.i.i.i.i, %bb.m, %bb.n
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !243 ; 2 uses
  store i64 %i.fv, ptr %i.fb, align 8, !tbaa !28, !alias.scope !243
  %i.fw = load ptr, ptr %13, align 8, !tbaa !60, !alias.scope !243
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !243
  %i.fy = load ptr, ptr %i.fj, align 8, !tbaa !240, !nonnull !50, !noundef !50
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ga = load ptr, ptr %13, align 8, !tbaa !60
  %i.gb = load i64, ptr %i.fb, align 8, !tbaa !28
  %i.gc = ptrtoint ptr %i.ga to i64
  %.sroa.2.0.insert.ext.i57 = zext i64 %i.gb to i128
  %.sroa.2.0.insert.shift.i58 = shl nuw i128 %.sroa.2.0.insert.ext.i57, 64
  %.sroa.01.0.insert.ext.i59 = zext i64 %i.gc to i128
  %.sroa.01.0.insert.insert.i60 = or disjoint i128 %.sroa.2.0.insert.shift.i58, %.sroa.01.0.insert.ext.i59
  store i128 %.sroa.01.0.insert.insert.i60, ptr %4, align 16, !alias.scope !249
  %i.gd = ptrtoint ptr %i.fz to i64
  %.sroa.01.0.insert.ext.i61 = zext i64 %i.gd to i128
  store i128 %.sroa.01.0.insert.ext.i61, ptr %i.fc, align 16, !alias.scope !249
  %.sroa.073.0.extract.trunc.mask = and i64 %.sroa.0.0.copyload.i50, 4294967295
  %.sroa.01.0.insert.ext.i62 = zext nneg i64 %.sroa.073.0.extract.trunc.mask to i128
  store i128 %.sroa.01.0.insert.ext.i62, ptr %i.fd, align 16, !alias.scope !249
  %.sroa.073.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i50, 32
  %.sroa.01.0.insert.ext.i63 = zext nneg i64 %.sroa.073.4.extract.shift to i128
  store i128 %.sroa.01.0.insert.ext.i63, ptr %i.fe, align 16, !alias.scope !249
  %.sroa.5.8.extract.trunc.mask = and i64 %.sroa.2.0.copyload.i52, 4294967295
  %.sroa.01.0.insert.ext.i64 = zext nneg i64 %.sroa.5.8.extract.trunc.mask to i128
  store i128 %.sroa.01.0.insert.ext.i64, ptr %i.ff, align 16, !alias.scope !249
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i52, 32
  %.sroa.01.0.insert.ext.i65 = zext nneg i64 %.sroa.5.12.extract.shift to i128
  store i128 %.sroa.01.0.insert.ext.i65, ptr %i.fg, align 16, !alias.scope !249
  invoke void @_ZN3fmt3v116vprintENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr nonnull @.str.5, i64 37, i64 2237133, ptr nonnull %4)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ge = load ptr, ptr %13, align 8, !tbaa !60   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.fa
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.gg = load i64, ptr %i.fa, align 8, !tbaa !29
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.gi = load ptr, ptr %i.fh, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull %i.gi) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gj = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fi
  br i1 %i.gk, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.gl = load i64, ptr %i.fi, align 8, !tbaa !29
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #22
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.gn = getelementptr inbounds nuw i8, ptr %.027102, i64 224 ; 2 uses
  %.not = icmp eq ptr %i.gn, %i.ey
  br i1 %.not, label %.loopexit, label %bb.k

bb.q:                                             ; preds = %bb.i
  %i.go = load ptr, ptr %6, align 8, !tbaa !210   ; 2 uses
  %i.gp = load ptr, ptr %i.f, align 8, !tbaa !210 ; 2 uses
  %.not8.i = icmp eq ptr %i.go, %i.gp
  br i1 %.not8.i, label %_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %.010.i = phi i1 [ %i.gu, %.lr.ph.i ], [ false, %bb.q ]
  %.sroa.05.09.i = phi ptr [ %i.gv, %.lr.ph.i ], [ %i.go, %bb.q ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 320
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !62
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !48, !range !49, !noundef !50
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = or i1 %.010.i, %i.gt                    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 328 ; 2 uses
  %.not.i = icmp eq ptr %i.gv, %i.gp
  br i1 %.not.i, label %_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit, label %.lr.ph.i

_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit:   ; preds = %.lr.ph.i
  br i1 %i.gu, label %.loopexit, label %_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit.thread

_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit.thread: ; preds = %bb.q, %_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 2224 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 2232
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !28 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit.thread
  %i.ha = load ptr, ptr %i.gw, align 8, !tbaa !60
  %i.hb = invoke noundef zeroext i1 @_ZN8WasmEdge3Log25setLoggingLevelFromStringESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.gy, ptr %i.ha)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  br i1 %i.hb, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hc = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68:                                         ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 3, ptr nonnull @.str.6, i64 116, ptr noundef nonnull align 8 dereferenceable(32) %i.gw)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN8WasmEdge3Log19setInfoLoggingLevelEv()
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u, %bb.s, %_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit.thread
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !252, !range !49, !noundef !50
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = icmp eq i8 %2, 2
  %or.cond = or i1 %i.hg, %i.hf
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hh = call noundef i32 @_ZN8WasmEdge6Driver4ToolERNS0_17DriverToolOptionsE(ptr noundef nonnull align 8 dereferenceable(2336) %9) #18
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !252, !range !49, !noundef !50
  %i.hk = trunc nuw i8 %i.hj to i1
  %i.hl = icmp eq i8 %2, 1
  %or.cond3 = or i1 %i.hl, %i.hk
  br i1 %or.cond3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = call noundef i32 @_ZN8WasmEdge6Driver8CompilerERNS0_21DriverCompilerOptionsE(ptr noundef nonnull align 8 dereferenceable(1360) %10) #18
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.hn = call noundef i32 @_ZN8WasmEdge6Driver4ToolERNS0_17DriverToolOptionsE(ptr noundef nonnull align 8 dereferenceable(2336) %9) #18
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.j, %bb.w, %bb.y, %bb.z, %_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit, %bb.h, %bb.d
  %.1 = phi i32 [ %i.hn, %bb.z ], [ 1, %bb.h ], [ 0, %_ZNK8WasmEdge2PO14ArgumentParser6isHelpEv.exit ], [ 1, %bb.d ], [ %i.hh, %bb.w ], [ %i.hm, %bb.y ], [ 0, %bb.j ], [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ]
  %i.ho = load i8, ptr %i.dx, align 8, !tbaa !32, !range !49, !noundef !50
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.aa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

bb.aa:                                            ; preds = %.loopexit
  store i8 0, ptr %i.dx, align 8, !tbaa !32
  %15 = load ptr, ptr %i.ea, align 8, !tbaa !60   ; 2 uses
  %i.hq = icmp eq ptr %15, %i.eb
  br i1 %i.hq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hr = load i64, ptr %i.eb, align 8, !tbaa !29
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %15, i64 noundef %i.hs) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %.loopexit
  %i.ht = load ptr, ptr %i.du, align 8, !tbaa !60 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.dv
  br i1 %i.hu, label %_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  %i.hv = load i64, ptr %i.dv, align 8, !tbaa !29
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #22
  br label %_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit.i

_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.hx = load i8, ptr %i.y, align 8, !tbaa !32, !range !49, !noundef !50
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.ab, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1.i

bb.ab:                                            ; preds = %_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit.i
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 144
  store i8 0, ptr %i.y, align 8, !tbaa !32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !60 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i: ; preds = %bb.ab
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !29
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i4.i, %_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit.i
  %i.if = load ptr, ptr %i.v, align 8, !tbaa !60  ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.w
  br i1 %i.ig, label %_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1.i
  %i.ih = load i64, ptr %i.w, align 8, !tbaa !29
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #22
  br label %_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit6.i

_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit6.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i
  %i.ij = load i8, ptr %i.r, align 8, !tbaa !32, !range !49, !noundef !50
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.ac, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i7.i

bb.ac:                                            ; preds = %_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit6.i
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 0, ptr %i.r, align 8, !tbaa !32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !60 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i10.i: ; preds = %bb.ac
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !29
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i7.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i7.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i10.i, %_ZN8WasmEdge2PO6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEED2Ev.exit6.i
  %i.ir = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.p
  br i1 %i.is, label %_ZN8WasmEdge6Driver21DriverCompilerOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i7.i
  %i.it = load i64, ptr %i.p, align 8, !tbaa !29
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #22
  br label %_ZN8WasmEdge6Driver21DriverCompilerOptionsD2Ev.exit

_ZN8WasmEdge6Driver21DriverCompilerOptionsD2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN8WasmEdge6Driver17DriverToolOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(2336) dereferenceable(2336) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN8WasmEdge6Driver21DriverCompilerOptionsD2Ev.exit
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !64
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.iw to i64
  %i.jb = sub i64 %i.iz, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.jb) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.ad, %_ZN8WasmEdge6Driver21DriverCompilerOptionsD2Ev.exit
  %i.jc = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  %i.jd = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.jc, %i.jd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i ], [ %i.jc, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 2 uses
  call void @_ZN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %.05.i.i.i.i) #18
  %i.je = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 328 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.je, %i.jd
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !209

_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.jf = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.jc, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i1.i.i, label %_ZN8WasmEdge2PO14ArgumentParserD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.jg = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jj) #22
  br label %_ZN8WasmEdge2PO14ArgumentParserD2Ev.exit

_ZN8WasmEdge2PO14ArgumentParserD2Ev.exit:         ; preds = %_ZSt8_DestroyIPN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i32 %.1

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i, %.noexc31, %.noexc68, %bb.t, %.noexc.i, %.noexc, %bb.u, %bb.r, %bb.a
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %lpad.loopexit.split-lp130, 0
  call void @__clang_call_terminate(ptr %i.jk) #20
  unreachable
}

declare noundef zeroext i1 @_ZNSt8ios_base15sync_with_stdioEb(i1 noundef zeroext) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge6Driver17DriverToolOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(2336) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !28
  store i8 0, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 10, ptr %i.f, align 8, !tbaa !22
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @.str.22, ptr %.sroa.4333.0..sroa_idx, align 8, !tbaa !24
  store i64 15, ptr %i.d, align 8, !tbaa !22
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @.str.21, ptr %.sroa.4335.0..sroa_idx, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(114) %i.g, i8 0, i64 48, i1 false)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !28
  store i8 0, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.m, align 8, !tbaa !28
  store i8 0, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.n, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 0, ptr %i.o, align 1, !tbaa !73
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.24, i64 noundef 3)
          to label %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #20
  unreachable

_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i: ; preds = %bb.a
  %i.s = load i64, ptr %i.j, align 8, !tbaa !28
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str.23, i64 noundef 19)
          to label %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJNS0_7MetaVarEEEEONS0_11DescriptionEDpOT_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJNS0_7MetaVarEEEEONS0_11DescriptionEDpOT_.exit: ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 0, ptr %i.y, align 8
  store i64 66, ptr %i.x, align 8, !tbaa !22
  %.sroa.4327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @.str.25, ptr %.sroa.4327.0..sroa_idx, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(114) %i.z, i8 0, i64 48, i1 false)
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !28
  store i8 0, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.af, align 8, !tbaa !28
  store i8 0, ptr %i.ae, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 0, ptr %i.ag, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 377
  store i8 0, ptr %i.ah, align 1, !tbaa !73
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 12)
          to label %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i124 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJNS0_7MetaVarEEEEONS0_11DescriptionEDpOT_.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #20
  unreachable

_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i124: ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJNS0_7MetaVarEEEEONS0_11DescriptionEDpOT_.exit
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef 0, i64 noundef %i.al, ptr noundef nonnull @.str.26, i64 noundef 455)
          to label %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJNS0_7MetaVarEEEEONS0_11DescriptionEDpOT_.exit128 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i124
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #20
  unreachable

_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJNS0_7MetaVarEEEEONS0_11DescriptionEDpOT_.exit128: ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i124
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(114) %i.ap, i8 0, i64 48, i1 false)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !28
  store i8 0, ptr %i.ar, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %i.av, align 8, !tbaa !28
  store i8 0, ptr %i.au, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i8 0, ptr %i.aw, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 497
  store i8 0, ptr %i.ax, align 1, !tbaa !73
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.29, i64 noundef 4)
          to label %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i134 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJNS0_7MetaVarEEEEONS0_11DescriptionEDpOT_.exit128
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i134: ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJNS0_7MetaVarEEEEONS0_11DescriptionEDpOT_.exit128
  %i.bb = load i64, ptr %i.as, align 8, !tbaa !28
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef 0, i64 noundef %i.bb, ptr noundef nonnull @.str.28, i64 noundef 72)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i134
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8WasmEdge2PO4ListINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6ParserIS7_EEEC2IJEEEONS0_7MetaVarEDpOT_.exit.i134
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 0, ptr %i.bf, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i8 0, ptr %i.bh, align 8
  store i64 25, ptr %i.bg, align 8, !tbaa !22
  %.sroa.4317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr @.str.30, ptr %.sroa.4317.0..sroa_idx, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i8 0, ptr %i.bi, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 0, ptr %i.bk, align 8
  store i64 25, ptr %i.bj, align 8, !tbaa !22
  %.sroa.4315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @.str.31, ptr %.sroa.4315.0..sroa_idx, align 8, !tbaa !24
end_hunk_0
