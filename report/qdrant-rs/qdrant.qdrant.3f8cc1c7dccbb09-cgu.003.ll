Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.003?download=true
inline.NumInlined: 21584
inline.NumDeleted: 7219
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtB1F_12verification22StrictModeVerification17check_strict_mode0EENtB4_6Future4pollCsl8OoimOLbh_6qdrant:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !noalias !44432
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !noalias !44432
  %i.as = getelementptr i8, ptr %i.ao, i64 280
  %.val24.i = load ptr, ptr %i.as, align 8, !noalias !44433, !nonnull !40, !noundef !40 ; 3 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 288
  %.val25.i = load i64, ptr %i.at, align 8, !noalias !44433, !noundef !40
  %i.au = getelementptr inbounds nuw [552 x i8], ptr %.val24.i, i64 %.val25.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 120
  store ptr %.val24.i, ptr %i.av, align 8, !noalias !44432
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 128
  store ptr %i.au, ptr %i.aw, align 8, !noalias !44432
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %bb.c
  %i.ax = phi ptr [ %i.bc, %bb.n ], [ %i.al, %bb.c ] ; 4 uses
  %i.ay = phi ptr [ %i.bd, %bb.n ], [ %i.am, %bb.c ] ; 4 uses
  %i.az = phi ptr [ %.pre180, %bb.n ], [ %i.au, %bb.c ]
  %i.ba = phi ptr [ %.pre178, %bb.n ], [ %.val24.i, %bb.c ] ; 3 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %bb.p, label %bb.o

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1195) #31
          to label %.noexc31 unwind label %bb.cn, !inline_history !44369

.noexc31:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1195) #31
          to label %.noexc32 unwind label %bb.cn, !inline_history !44369

.noexc32:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  %i.bc = phi ptr [ %i.ax, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.ak, %bb.b ] ; 5 uses
  %i.bd = phi ptr [ %i.ay, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.aj, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !44432
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtB1F_12verification22StrictModeVerification17check_strict_mode0EENtB4_6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h, !noalias !44433, !inline_history !44369

bb.h:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !44432
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtB1B_12verification22StrictModeVerification17check_strict_mode0EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.be) #26
          to label %bb.x unwind label %bb.w, !noalias !44433, !inline_history !44369

bb.i:                                             ; preds = %bb.g
  %i.bg = load i64, ptr %i.q, align 8, !range !71, !noalias !44432, !noundef !40 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, -2
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !44432
  br label %bb.co

bb.k:                                             ; preds = %bb.i
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.599, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.599.0..sroa_idx, i64 40, i1 false), !noalias !44432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !44432
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtB1B_12verification22StrictModeVerification17check_strict_mode0EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.be)
          to label %bb.l unwind label %bb.v, !noalias !44433, !inline_history !44369

bb.l:                                             ; preds = %bb.k
  %.not.i.i27 = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7135, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.599, i64 40, i1 false), !noalias !44432
  br label %bb.dq

bb.n:                                             ; preds = %bb.l
  %.phi.trans.insert177 = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %.pre178 = load ptr, ptr %.phi.trans.insert177, align 8, !alias.scope !44434, !noalias !44432
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %.pre180 = load ptr, ptr %.phi.trans.insert179, align 8, !alias.scope !44434, !noalias !44432
  br label %bb.d

bb.o:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 552
  store ptr %i.bj, ptr %i.bi, align 8, !alias.scope !44434, !noalias !44432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !44432
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 88
  store ptr %i.ba, ptr %i.r, align 8, !alias.scope !44435, !noalias !44432
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bm = load <2 x ptr>, ptr %i.bk, align 8, !noalias !44432
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !alias.scope !44435, !noalias !44432
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i8 0, ptr %i.bn, align 8, !alias.scope !44435, !noalias !44432
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !44436, !inline_history !44369
  %i.bo = tail call noundef align 8 dereferenceable_or_null(312) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 10953) 312, i64 noundef 8) #29, !noalias !44436, !inline_history !44369 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.r, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !42

bb.p:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !44432, !nonnull !40, !align !48, !noundef !40 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 424 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !44437, !alias.scope !44438, !noalias !44433, !noundef !40
  %.not.i26.i = icmp eq i64 %i.bt, -1
  br i1 %.not.i26.i, label %bb.cp, label %.thread197

.thread197:                                       ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 112
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !44432, !captures !138
  %i.bv = getelementptr i8, ptr %i.br, i64 304
  %.val.i = load ptr, ptr %i.bv, align 8, !noalias !44433, !nonnull !40, !noundef !40
  %i.bw = getelementptr i8, ptr %i.br, i64 312
  %.val23.i = load i64, ptr %i.bw, align 8, !noalias !44433, !noundef !40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 320 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !65, !alias.scope !44439, !noalias !44433, !noundef !40
  %.not.i27.i = icmp eq i64 %i.by, -2
  %..i28.i = select i1 %.not.i27.i, ptr null, ptr %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %.sroa.8116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 232
  store ptr %.val.i, ptr %.sroa.8116.0..sroa_idx, align 8, !noalias !44432
  %.sroa.9117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 240
  store i64 %.val23.i, ptr %.sroa.9117.0..sroa_idx, align 8, !noalias !44432
  %.sroa.10118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 248
  store ptr %..i28.i, ptr %.sroa.10118.0..sroa_idx, align 8, !noalias !44432
  %.sroa.12120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 280
  store ptr %i.bs, ptr %.sroa.12120.0..sroa_idx, align 8, !noalias !44432
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 288
  %i.ca = load <2 x ptr>, ptr %i.bz, align 8, !noalias !44432
  store <2 x ptr> %i.ca, ptr %.sroa.13.0..sroa_idx, align 8, !noalias !44432
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 305
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 1, !noalias !44432
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8122)
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.77.i.i)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 305
  br label %bb.y

bb.q:                                             ; preds = %bb.b
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %.val, i64 305
  %.pre182 = load i8, ptr %.phi.trans.insert181, align 1, !range !51, !noalias !44440
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8122)
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.77.i.i)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 305 ; 2 uses
  switch i8 %.pre182, label %default.unreachable [
    i8 0, label %bb.y
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %3
  ]

bb.r:                                             ; preds = %bb.o
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 312) #25
          to label %.noexc.i29 unwind label %bb.s, !noalias !44433, !inline_history !44369

.noexc.i29:                                       ; preds = %bb.r
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.bo, ptr noundef nonnull align 8 dereferenceable(312) %i.r, i64 312, i1 false), !noalias !44433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !44432
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 112
  store ptr %i.bo, ptr %i.cf, align 8, !noalias !44432
  br label %bb.g

bb.s:                                             ; preds = %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtBM_12verification22StrictModeVerification17check_strict_mode0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 dereferenceable(312) %i.r) #26
          to label %bb.u unwind label %bb.t, !noalias !44433, !inline_history !44369

bb.t:                                             ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !44433, !inline_history !44369
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !44432
  br label %bb.x

bb.v:                                             ; preds = %bb.k
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %.body32.i, %bb.h
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !44433, !inline_history !44369
  unreachable

bb.x:                                             ; preds = %.body32.i, %bb.h, %bb.u, %bb.v, %bb.ch
  %i.ck = phi ptr [ %i.ha, %bb.ch ], [ %i.bc, %bb.h ], [ %i.bc, %bb.v ], [ %i.ax, %bb.u ], [ %i.gy, %.body32.i ]
  %i.cl = phi ptr [ %i.gz, %bb.ch ], [ %i.bd, %bb.h ], [ %i.bd, %bb.v ], [ %i.ay, %bb.u ], [ %i.gx, %.body32.i ]
  %.pn19.pn.pn.i = phi { ptr, i32 } [ %i.hh, %bb.ch ], [ %i.bf, %bb.h ], [ %i.ci, %bb.v ], [ %i.cg, %bb.u ], [ %eh.lpad-body33.i, %.body32.i ]
  store i8 2, ptr %i.ck, align 8, !noalias !44432
  br label %.body33

bb.y:                                             ; preds = %.thread197, %bb.q
  %i.cm = phi ptr [ %i.cc, %.thread197 ], [ %i.ce, %bb.q ] ; 2 uses
  %i.cn = phi ptr [ %i.cb, %.thread197 ], [ %i.cd, %bb.q ] ; 2 uses
  %i.co = phi ptr [ %i.ay, %.thread197 ], [ %i.aj, %bb.q ] ; 2 uses
  %i.cp = phi ptr [ %i.ax, %.thread197 ], [ %i.ak, %bb.q ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 304
  store i8 0, ptr %i.cq, align 8, !noalias !44440
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 280
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !44440, !nonnull !40, !align !48, !noundef !40 ; 2 uses
  store ptr %i.ct, ptr %i.cr, align 8, !noalias !44440, !captures !138
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !44440, !nonnull !40, !noundef !40
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 240
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !44440, !noundef !40
  store ptr %i.cw, ptr %i.cu, align 8, !noalias !44440, !captures !138
  %i.cz = getelementptr inbounds nuw i8, ptr %.val, i64 224
  store i64 %i.cy, ptr %i.cz, align 8, !noalias !44440
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !44440, !align !48, !noundef !40
  store ptr %i.dc, ptr %i.da, align 8, !noalias !44440
  %i.dd = getelementptr inbounds nuw i8, ptr %.val, i64 272
  %i.de = getelementptr inbounds nuw i8, ptr %.val, i64 288
  %i.df = load ptr, ptr %i.de, align 8, !noalias !44440, !nonnull !40, !align !48, !noundef !40 ; 2 uses
  store ptr %i.df, ptr %i.dd, align 8, !noalias !44440
  %i.dg = getelementptr inbounds nuw i8, ptr %.val, i64 296
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !44440, !nonnull !40, !align !48, !noundef !40
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 293
  %.val51.i.i = load i8, ptr %i.di, align 1, !range !44, !noalias !44441, !noundef !40
  %.not118.i.i = icmp eq i8 %.val51.i.i, 0
  br i1 %.not118.i.i, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtBK_15universal_query16collection_query5Query14check_fullscan0ECsl8OoimOLbh_6qdrant.exit.i.thread

3:                                                ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !44440
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.dj = load i64, ptr %i.ct, align 8, !range !148, !noalias !44441, !noundef !40 ; 2 uses
  %i.dk = icmp ne i64 %i.dj, -9223372036854775788
  tail call void @llvm.assume(i1 %i.dk), !noalias !44430
  %i.dl = icmp eq i64 %i.dj, -9223372036854775791
  br i1 %i.dl, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtBK_15universal_query16collection_query5Query14check_fullscan0ECsl8OoimOLbh_6qdrant.exit.i.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !44440
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 368
  %.val.i.i = load ptr, ptr %i.dm, align 8, !noalias !44441, !nonnull !40, !noundef !40
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  store ptr %i.dn, ptr %i.cn, align 8, !noalias !44440
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 208
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !44440
  br label %bb.ad

bb.ab:                                            ; preds = %bb.q
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #31
          to label %.noexc30.i unwind label %bb.cd, !noalias !44433, !inline_history !44369

.noexc30.i:                                       ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.q
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @741) #31
          to label %.noexc31.i unwind label %bb.cd, !noalias !44433, !inline_history !44369

.noexc31.i:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.aa, %3
  %i.do = phi ptr [ %i.cm, %bb.aa ], [ %i.ce, %3 ] ; 3 uses
  %i.dp = phi ptr [ %i.cn, %bb.aa ], [ %i.cd, %3 ] ; 3 uses
  %i.dq = phi ptr [ %i.co, %bb.aa ], [ %i.aj, %3 ] ; 2 uses
  %i.dr = phi ptr [ %i.cp, %bb.aa ], [ %i.ak, %3 ] ; 4 uses
  %i.ds = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.dp, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.af unwind label %bb.ae, !noalias !44441, !inline_history !44369 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.dp) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit95.i.i unwind label %bb.bv, !noalias !44441, !inline_history !44369

bb.af:                                            ; preds = %bb.ad
  %i.du = extractvalue { ptr, ptr } %i.ds, 0      ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB8_15universal_query16collection_query5Query14check_fullscan0Csl8OoimOLbh_6qdrant.exit.i.thread, label %bb.ag

_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB8_15universal_query16collection_query5Query14check_fullscan0Csl8OoimOLbh_6qdrant.exit.i.thread: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44440
  store i8 3, ptr %i.do, align 1, !noalias !44440
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.77.i.i)
  br label %bb.ce

bb.ag:                                            ; preds = %bb.af
  %i.dw = extractvalue { ptr, ptr } %i.ds, 1
  store ptr %i.du, ptr %i.o, align 8, !noalias !44440
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  store ptr %i.dw, ptr %i.dx, align 8, !noalias !44440
  %i.dy = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.dz = load i8, ptr %i.dy, align 8, !range !51, !noalias !44440, !noundef !40
  %cond.i.i.i19 = icmp eq i8 %i.dz, 3
  br i1 %cond.i.i.i19, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.eb = load i8, ptr %i.ea, align 8, !range !51, !noalias !44440, !noundef !40
  %cond.i.i.i.i22 = icmp eq i8 %i.eb, 3
  br i1 %cond.i.i.i.i22, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %.val, i64 136
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ec)
          to label %bb.al unwind label %bb.aj, !noalias !44441, !inline_history !44369

bb.aj:                                            ; preds = %bb.ai
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %.val2.i.i.i.i.i23 = load ptr, ptr %i.ee, align 8, !noalias !44440, !align !48, !noundef !40 ; 2 uses
  %i.ef = icmp eq ptr %.val2.i.i.i.i.i23, null
  br i1 %i.ef, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit95.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = getelementptr i8, ptr %.val, i64 152
  %.val3.i.i.i.i.i24 = load ptr, ptr %i.eg, align 8, !noalias !44440
  %i.eh = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i23, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !44441, !nonnull !40, !noundef !40
  invoke void %i.ei(ptr noundef %.val3.i.i.i.i.i24)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit95.i.i unwind label %bb.an, !noalias !44441, !inline_history !44385

bb.al:                                            ; preds = %bb.ai
  %i.ej = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %.val.i.i.i.i.i25 = load ptr, ptr %i.ej, align 8, !noalias !44440, !align !48, !noundef !40 ; 2 uses
  %i.ek = icmp eq ptr %.val.i.i.i.i.i25, null
  br i1 %i.ek, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = getelementptr i8, ptr %.val, i64 152
  %.val1.i.i.i.i.i26 = load ptr, ptr %i.el, align 8, !noalias !44440
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i25, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !noalias !44441, !nonnull !40, !noundef !40
  invoke void %i.en(ptr noundef %.val1.i.i.i.i.i26)
          to label %bb.ao unwind label %bb.cc, !noalias !44441, !inline_history !44386

bb.an:                                            ; preds = %bb.ak
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !44441, !inline_history !44369
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ah, %bb.ag
  %.val48.i.i = load ptr, ptr %i.dx, align 8, !noalias !44440, !noundef !40 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !range !39, !alias.scope !44442, !noalias !44441, !noundef !40
  %i.er = trunc nuw i64 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %.val, i64 216 ; 3 uses
  %i.et = getelementptr i8, ptr %.val, i64 224    ; 3 uses
  br i1 %i.er, label %bb.ap, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.eu = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 24
  %i.ev = load i64, ptr %i.et, align 8, !noalias !44440, !noundef !40
  %i.ew = load ptr, ptr %i.es, align 8, !noalias !44440, !nonnull !40, !noundef !40
  %i.ex = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE3geteECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.eu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ew, i64 noundef %i.ev)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.as, !noalias !44441, !inline_history !44369

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ap
  %.not110.i.i = icmp eq ptr %i.ex, null
  br i1 %.not110.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread_crit_edge.i.i, label %bb.ca

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread_crit_edge.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.i.i
  %.val47.pre.i.i = load ptr, ptr %i.dx, align 8, !noalias !44440
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread_crit_edge.i.i, %bb.ao
  %.val47.i.i = phi ptr [ %.val47.pre.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread_crit_edge.i.i ], [ %.val48.i.i, %bb.ao ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.val47.i.i, i64 48
  %i.ez = load ptr, ptr %i.es, align 8, !noalias !44440, !nonnull !40, !noundef !40
  %i.fa = load i64, ptr %i.et, align 8, !noalias !44440, !noundef !40
  %i.fb = invoke noundef align 8 ptr @_RNvMsz_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_13VectorsConfig10get_params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ey, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ez, i64 noundef %i.fa)
          to label %bb.aq unwind label %bb.as, !noalias !44441, !inline_history !44369 ; 5 uses

bb.aq:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread.i.i
  %.not.i58.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i58.i.i, label %.thread150.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fc = load i64, ptr %i.fb, align 8, !range !55, !alias.scope !44443, !noalias !44441, !noundef !40 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fc, 2
  br i1 %.not.i.i.i.i, label %.thread150.i.i, label %bb.at

bb.as:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB27_12verification5queryNtNtNtB27_15universal_query16collection_query5Query14check_fullscan00ECsl8OoimOLbh_6qdrant.exit.thread.i.i, %bb.ap
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.thread150.i.i:                                   ; preds = %bb.ar, %bb.aq
  %.val46133.i.i = load ptr, ptr %i.dx, align 8, !noalias !44440, !noundef !40 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val46133.i.i, i64 208
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !44441, !noundef !40
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fg = getelementptr i8, ptr %i.fb, i64 8
  %.val3.i.i.i = load i64, ptr %i.fg, align 8, !alias.scope !44444, !noalias !44441
  %.val46.i.i = load ptr, ptr %i.dx, align 8, !noalias !44440, !noundef !40 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 208
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !44441, !noundef !40
  %.not111.i.i = icmp eq i64 %i.fc, 0
  %..i63.i.i = select i1 %.not111.i.i, i64 %i.fi, i64 %.val3.i.i.i ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fb, i64 64
  %.val.i65.i.i = load i64, ptr %i.fj, align 8, !range !39, !alias.scope !44445, !noalias !44441, !noundef !40
  %i.fk = getelementptr i8, ptr %i.fb, i64 72
  %.val3.i66.i.i = load i64, ptr %i.fk, align 8, !alias.scope !44445, !noalias !44441
  %.not112.i.i = icmp eq i64 %.val.i65.i.i, 0
  br i1 %.not112.i.i, label %bb.au, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit.i.i

bb.au:                                            ; preds = %bb.at, %.thread150.i.i
  %..i63137144157.i.i = phi i64 [ %i.ff, %.thread150.i.i ], [ %..i63.i.i, %bb.at ] ; 3 uses
  %.val46136146155.i.i = phi ptr [ %.val46133.i.i, %.thread150.i.i ], [ %.val46.i.i, %bb.at ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val46136146155.i.i, i64 192
  %i.fm = load i64, ptr %i.fl, align 8, !range !39, !noalias !44446, !noundef !40
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %.then.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit.i.i

.then.i.i:                                        ; preds = %bb.au
  %i.fo = getelementptr inbounds nuw i8, ptr %.val46136146155.i.i, i64 200
  %.sroa.0.0.i.i.then.val.i.i = load i64, ptr %i.fo, align 8, !noalias !44441
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %.then.i.i, %bb.au, %bb.at
  %..i63137144156.i.i = phi i64 [ %..i63.i.i, %bb.at ], [ %..i63137144157.i.i, %.then.i.i ], [ %..i63137144157.i.i, %bb.au ]
  %.sroa.02.0.i72.i.i = phi i64 [ %.val3.i66.i.i, %bb.at ], [ %.sroa.0.0.i.i.then.val.i.i, %.then.i.i ], [ %..i63137144157.i.i, %bb.au ]
  %.not.i29.i = icmp eq i64 %..i63137144156.i.i, 0
  br i1 %.not.i29.i, label %bb.av, label %bb.ca

bb.av:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE14unwrap_or_elseNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection10operations12verification5queryNtNtNtB1b_15universal_query16collection_query5Query14check_fullscan0s2_0ECsl8OoimOLbh_6qdrant.exit.i.i
end_hunk_0
