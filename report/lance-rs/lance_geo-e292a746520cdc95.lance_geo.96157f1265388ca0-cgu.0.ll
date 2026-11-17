Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_geo-e292a746520cdc95.lance_geo.96157f1265388ca0-cgu.0?download=true
inline.NumInlined: 1265
inline.NumDeleted: 690
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNvMs1_CsdkROKCKhesT_3wktNtB5_3Wkt20from_word_and_tokensCscSToqyP0NyK_9lance_geo:bb.a
  br label %bb.km

bb.km:                                            ; preds = %_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_headerCscSToqyP0NyK_9lance_geo.exit._crit_edge, %_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_headerCscSToqyP0NyK_9lance_geo.exit.thread
  %i.bax = phi i64 [ %.pre500, %_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_headerCscSToqyP0NyK_9lance_geo.exit._crit_edge ], [ %i.bau, %_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_headerCscSToqyP0NyK_9lance_geo.exit.thread ]
  %i.bay = phi ptr [ %.pre498, %_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_headerCscSToqyP0NyK_9lance_geo.exit._crit_edge ], [ %i.bas, %_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_headerCscSToqyP0NyK_9lance_geo.exit.thread ]
  %i.baz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bay, ptr %i.baz, align 8
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bax, ptr %i.bba, align 8
  br label %bb.ko

bb.kn:                                            ; preds = %_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_headerCscSToqyP0NyK_9lance_geo.exit
  %.sroa.4328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4328.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %.sink372 = phi i64 [ -2, %bb.km ], [ 7, %bb.kn ]
  store i64 %.sink372, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.kp:                                            ; preds = %bb.a
  %i.bbb = tail call fastcc noundef zeroext i1 @_RINvMNtNtCscI6d9CVNmLh_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 19, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 19)
  br i1 %i.bbb, label %bb.kq, label %bb.ku

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_parensCscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i8 noundef 1), !inline_history !2024
  %i.bbc = load i64, ptr %i.g, align 8, !range !20, !noundef !6
  %i.bbd = icmp eq i64 %i.bbc, -1
  br i1 %i.bbd, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bbf = load ptr, ptr %i.bbe, align 8, !nonnull !6, !noundef !6
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bbh = load i64, ptr %i.bbg, align 8, !noundef !6
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bbf, ptr %i.bbi, align 8
  %i.bbj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bbh, ptr %i.bbj, align 8
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  %.sroa.4331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4331.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %.sink373 = phi i64 [ -2, %bb.kr ], [ 7, %bb.ks ]
  store i64 %.sink373, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.k

bb.ku:                                            ; preds = %bb.kp
  %i.bbk = tail call fastcc noundef zeroext i1 @_RINvMNtNtCscI6d9CVNmLh_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 19, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 19)
  br i1 %i.bbk, label %bb.kv, label %.critedge57.thread

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_parensCscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i8 noundef 2), !inline_history !2024
  %i.bbl = load i64, ptr %i.f, align 8, !range !20, !noundef !6
  %i.bbm = icmp eq i64 %i.bbl, -1
  br i1 %i.bbm, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bbo = load ptr, ptr %i.bbn, align 8, !nonnull !6, !noundef !6
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bbq = load i64, ptr %i.bbp, align 8, !noundef !6
  %i.bbr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bbo, ptr %i.bbr, align 8
  %i.bbs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bbq, ptr %i.bbs, align 8
  br label %bb.ky

bb.kx:                                            ; preds = %bb.kv
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4334.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %.sink374 = phi i64 [ -2, %bb.kw ], [ 7, %bb.kx ]
  store i64 %.sink374, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.kz:                                            ; preds = %bb.a
  %i.bbt = tail call fastcc noundef zeroext i1 @_RINvMNtNtCscI6d9CVNmLh_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 20)
  br i1 %i.bbt, label %bb.la, label %.critedge57.thread

.critedge57.thread:                               ; preds = %bb.ci, %bb.bh, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.bi, %bb.bj, %bb.iq, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.fd, %bb.dj, %bb.ad, %bb.ap, %bb.n, %bb.a, %bb.an, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.di, %bb.v, %bb.w, %bb.x, %bb.l, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.m, %bb.ac, %bb.dh, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.fc, %bb.ao, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.ip, %_RNvMNtNtCscI6d9CVNmLh_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit239._crit_edge, %bb.jt, %bb.ju, %bb.jv, %bb.jw, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %bb.kc, %bb.kd, %bb.ke, %bb.kf, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %bb.jk, %bb.jl, %bb.jm, %bb.jn, %bb.jo, %bb.io, %bb.hp, %bb.hu, %bb.kk, %bb.ku, %bb.kz
  %i.bbu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @25, ptr %i.bbu, align 8
  %i.bbv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 24, ptr %i.bbv, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.k

bb.la:                                            ; preds = %bb.kz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvYNtNtNtCsdkROKCKhesT_3wkt5types18geometrycollection18GeometryCollectionINtB8_10FromTokensdE23from_tokens_with_parensCscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %3, i8 noundef 3), !inline_history !2024
  %i.bbw = load i64, ptr %i.e, align 8, !range !20, !noundef !6
  %i.bbx = icmp eq i64 %i.bbw, -1
  br i1 %i.bbx, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.bby = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bbz = load ptr, ptr %i.bby, align 8, !nonnull !6, !noundef !6
  %i.bca = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bcb = load i64, ptr %i.bca, align 8, !noundef !6
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bbz, ptr %i.bcc, align 8
  %i.bcd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bcb, ptr %i.bcd, align 8
  br label %bb.ld

bb.lc:                                            ; preds = %bb.la
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4337.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %.sink375 = phi i64 [ -2, %bb.lb ], [ 7, %bb.lc ]
  store i64 %.sink375, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsdkROKCKhesT_3wktNtB5_3Wkt11from_tokensCscSToqyP0NyK_9lance_geo(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2078 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -3, ptr %i.b, align 8
  invoke fastcc void @_RNvXs_NtCsdkROKCKhesT_3wkt9tokenizerINtB4_6TokensdENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit67: ; preds = %bb.v, %bb.u, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.bq, %bb.v ], [ %i.bq, %bb.u ]
  %.val60 = load i64, ptr %i.b, align 8, !range !5, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val61 = load ptr, ptr %i.d, align 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo(i64 %.val60, ptr %.val61) #26
  resume { ptr, i32 } %.pn

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit67

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !2079, !noundef !6 ; 8 uses
  switch i64 %i.f, label %bb.f [
    i64 -2, label %bb.d
    i64 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @26, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 18, ptr %i.h, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64: ; preds = %.loopexit, %bb.t, %bb.s, %bb.e, %bb.d
  %.val58 = load i64, ptr %i.b, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %.val58, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit.sink.split [
    i64 -3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -9223372036854775805, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -9223372036854775806, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -9223372036854775807, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -9223372036854775808, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
  ]

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.n, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64

bb.f:                                             ; preds = %bb.c
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.444.0.copyload = load ptr, ptr %.sroa.444.0..sroa_idx, align 8 ; 16 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.545.0.copyload = load i64, ptr %.sroa.545.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp sgt i64 %i.f, -1
  br i1 %i.o, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.p = icmp samesign ult i64 %.sroa.545.0.copyload, 64
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = and i64 %.sroa.545.0.copyload, 9223372036854775744
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 %i.q ; 3 uses
  %i.s = and i64 %.sroa.545.0.copyload, 63        ; 2 uses
  br label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.h
  %.sroa.01.028.i.i = phi ptr [ %i.t, %bb.i ], [ %.sroa.444.0.copyload, %bb.h ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !2080, !noalias !2081
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.v, align 1, !alias.scope !2080, !noalias !2082
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.w, align 1, !alias.scope !2080, !noalias !2083
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.x, align 1, !alias.scope !2080, !noalias !2084
  %i.y = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.z = or <2 x i64> %i.y, %.sroa.0.0.copyload.i10.i.i
  %i.aa = or <2 x i64> %i.z, %.sroa.0.0.copyload.i11.i.i
  %i.ab = bitcast <2 x i64> %i.aa to <16 x i8>
  %i.ac = icmp slt <16 x i8> %i.ab, zeroinitializer
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.ag = icmp samesign eq i64 %i.s, 0
  br i1 %i.ag, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.j
  %i.aj = phi ptr [ %i.ah, %bb.j ], [ %i.r, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.aj, align 1, !alias.scope !2080, !noalias !2085, !noundef !6
  %i.ak = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.ak, label %bb.j, label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.al = and i64 %.sroa.545.0.copyload, 56       ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 %i.al ; 7 uses
  %i.an = and i64 %.sroa.545.0.copyload, 7        ; 7 uses
  %.not.i96 = icmp eq i64 %i.al, 0
  br i1 %.not.i96, label %._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i

2:                                                ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i
  %.not.i = icmp eq i64 %i.al, 8
  br i1 %.not.i, label %._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.1

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.1: ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 8
  %.sroa.012.0.copyload.i.1 = load i64, ptr %3, align 1, !alias.scope !2086
  %4 = and i64 %.sroa.012.0.copyload.i.1, -9187201950435737472
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.1
  %.not.i.1 = icmp eq i64 %i.al, 16
  br i1 %.not.i.1, label %._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.2

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.2: ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 16
  %.sroa.012.0.copyload.i.2 = load i64, ptr %7, align 1, !alias.scope !2086
  %8 = and i64 %.sroa.012.0.copyload.i.2, -9187201950435737472
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.2
  %.not.i.2 = icmp eq i64 %i.al, 24
  br i1 %.not.i.2, label %._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.3

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.3: ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 24
  %.sroa.012.0.copyload.i.3 = load i64, ptr %11, align 1, !alias.scope !2086
  %12 = and i64 %.sroa.012.0.copyload.i.3, -9187201950435737472
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.3
  %.not.i.3 = icmp eq i64 %i.al, 32
  br i1 %.not.i.3, label %._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.4

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.4: ; preds = %14
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 32
  %.sroa.012.0.copyload.i.4 = load i64, ptr %15, align 1, !alias.scope !2086
  %16 = and i64 %.sroa.012.0.copyload.i.4, -9187201950435737472
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %.loopexit

18:                                               ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.4
  %.not.i.4 = icmp eq i64 %i.al, 40
  br i1 %.not.i.4, label %._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.5

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.5: ; preds = %18
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 40
  %.sroa.012.0.copyload.i.5 = load i64, ptr %19, align 1, !alias.scope !2086
  %20 = and i64 %.sroa.012.0.copyload.i.5, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.5
  %.not.i.5 = icmp eq i64 %i.al, 48
  br i1 %.not.i.5, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %22
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.444.0.copyload, i64 48
  %.sroa.012.0.copyload.i.6 = load i64, ptr %i.ao, align 1, !alias.scope !2086
  %23 = and i64 %.sroa.012.0.copyload.i.6, -9187201950435737472
  %.not.i.a = icmp eq i64 %23, 0
  br i1 %.not.i.a, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %2, %6, %10, %14, %18, %22, %bb.l, %bb.k
  %i.ap = icmp samesign eq i64 %i.an, 0
  br i1 %i.ap, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph100

bb.m:                                             ; preds = %.lr.ph100
  %i.aq = icmp samesign eq i64 %i.an, 1
  br i1 %i.aq, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph100.1

.lr.ph100.1:                                      ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %.val.i.i.1 = load i8, ptr %i.ar, align 1, !alias.scope !2086, !noalias !2087, !noundef !6
  %i.as = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.as, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph100.1
  %i.at = icmp samesign eq i64 %i.an, 2
  br i1 %i.at, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph100.2

.lr.ph100.2:                                      ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %.val.i.i.2 = load i8, ptr %i.au, align 1, !alias.scope !2086, !noalias !2087, !noundef !6
  %i.av = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.av, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph100.2
  %i.aw = icmp samesign eq i64 %i.an, 3
  br i1 %i.aw, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph100.3

.lr.ph100.3:                                      ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %.val.i.i.3 = load i8, ptr %i.ax, align 1, !alias.scope !2086, !noalias !2087, !noundef !6
  %i.ay = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.ay, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph100.3
  %i.az = icmp samesign eq i64 %i.an, 4
  br i1 %i.az, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph100.4

.lr.ph100.4:                                      ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.val.i.i.4 = load i8, ptr %i.ba, align 1, !alias.scope !2086, !noalias !2087, !noundef !6
  %i.bb = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.bb, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %.lr.ph100.4
  %i.bc = icmp samesign eq i64 %i.an, 5
  br i1 %i.bc, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph100.5

.lr.ph100.5:                                      ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 5
  %.val.i.i.5 = load i8, ptr %i.bd, align 1, !alias.scope !2086, !noalias !2087, !noundef !6
  %i.be = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.be, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.lr.ph100.5
  %i.bf = icmp samesign eq i64 %i.an, 6
  br i1 %i.bf, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph100.6

.lr.ph100.6:                                      ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  %.val.i.i.6 = load i8, ptr %i.bg, align 1, !alias.scope !2086, !noalias !2087, !noundef !6
  %i.bh = icmp sgt i8 %.val.i.i.6, -1
  br i1 %i.bh, label %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit

.lr.ph100:                                        ; preds = %._crit_edge
  %.val.i.i = load i8, ptr %i.am, align 1, !alias.scope !2086, !noalias !2087, !noundef !6
  %i.bi = icmp sgt i8 %.val.i.i, -1
  br i1 %i.bi, label %bb.m, label %.loopexit

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i: ; preds = %bb.k
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.444.0.copyload, align 1, !alias.scope !2086
  %i.bj = and i64 %.sroa.012.0.copyload.i, -9187201950435737472
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %2, label %.loopexit

bb.s:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @26, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 18, ptr %i.bm, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.1, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.2, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.3, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.4, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCscSToqyP0NyK_9lance_geo.exit.i.5, %bb.l, %.lr.ph100, %.lr.ph100.1, %.lr.ph100.2, %.lr.ph100.3, %.lr.ph100.4, %.lr.ph100.5, %.lr.ph100.6
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @27, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %i.bo, align 8
  store i64 -2, ptr %0, align 8
  %i.bp = icmp eq i64 %i.f, 0
  br i1 %i.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64, label %bb.t

bb.t:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.444.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.444.0.copyload, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !2088
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64

_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %bb.j, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %.lr.ph100.6, %._crit_edge.i.i, %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.444.0.copyload) ]
  invoke fastcc void @_RNvMs1_CsdkROKCKhesT_3wktNtB5_3Wkt20from_word_and_tokensCscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.444.0.copyload, i64 noundef %.sroa.545.0.copyload, ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %i.f, 0
  br i1 %i.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit67, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.444.0.copyload, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !2089
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit67

bb.w:                                             ; preds = %_RNvNvNtNtCscI6d9CVNmLh_4core5slice5ascii8is_ascii7runtime.exit
  %i.bs = icmp eq i64 %i.f, 0
  br i1 %i.bs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.444.0.copyload, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !2090
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70: ; preds = %bb.x, %bb.w
  %.val = load i64, ptr %i.b, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %.val, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit.sink.split [
    i64 -3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -9223372036854775805, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -9223372036854775806, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -9223372036854775807, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 -9223372036854775808, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit.sink.split: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64
  %.val.sink = phi i64 [ %.val58, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64 ], [ %.val, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val57 = load ptr, ptr %i.bt, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !6
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtCsdkROKCKhesT_3wkt9tokenizer6TokensdEEECscSToqyP0NyK_9lance_geo.exit.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscSToqyP0NyK_9lance_geo(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #7 !guid !2091 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) #24
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.f = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef 1) #24
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn7 = phi ptr [ %i.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq ptr %.pn7, null
  br i1 %i.g, label %bb.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  br label %bb.f

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn79 = phi ptr [ %.pn7, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn79, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread
  %.sink11 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink = phi i64 [ %1, %bb.e ], [ %1, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink11
  store i64 %.sink, ptr %i.j, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsdkROKCKhesT_3wkt3WktE8push_mutCscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !2092 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !noundef !6
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsdkROKCKhesT_3wkt3WktE8grow_oneCsfC1H8tYQGpK_14geoarrow_array(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsdkROKCKhesT_3wkt3WktECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %1) #26
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCscSToqyP0NyK_9lance_geo4bbox12bounding_box(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2398 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [280 x i8], align 8               ; 4 uses
  %.sroa.837.i236 = alloca [48 x i8], align 8     ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 16               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [280 x i8], align 8               ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.9.i.i.i.i194 = alloca [16 x i8], align 8 ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [280 x i8], align 8               ; 4 uses
  %.sroa.13.i195 = alloca [16 x i8], align 8      ; 5 uses
  %i.n = alloca [56 x i8], align 8                ; 12 uses
  %i.o = alloca [32 x i8], align 16               ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [280 x i8], align 8               ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.9.i.i.i.i = alloca [16 x i8], align 8    ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [280 x i8], align 8               ; 4 uses
  %.sroa.13.i = alloca [16 x i8], align 8         ; 5 uses
  %i.w = alloca [56 x i8], align 8                ; 12 uses
  %i.x = alloca [32 x i8], align 16               ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [280 x i8], align 8               ; 8 uses
  %i.aa = alloca [56 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [280 x i8], align 8              ; 4 uses
  %.sroa.837.i = alloca [48 x i8], align 8        ; 6 uses
  %i.ae = alloca [56 x i8], align 8               ; 9 uses
  %i.af = alloca [32 x i8], align 16              ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [280 x i8], align 8              ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [280 x i8], align 8              ; 4 uses
  %i.al = alloca [56 x i8], align 8               ; 6 uses
  %i.am = alloca [56 x i8], align 8               ; 9 uses
  %i.an = alloca [32 x i8], align 16              ; 7 uses
end_hunk_0
