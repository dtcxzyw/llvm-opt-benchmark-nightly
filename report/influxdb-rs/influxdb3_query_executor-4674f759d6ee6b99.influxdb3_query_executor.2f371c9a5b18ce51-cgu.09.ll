Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.09?download=true
inline.NumInlined: 3950
inline.NumDeleted: 1057
begin_hunk_0_@_RNvXsE_NtNtCsaNmiEuYuYZf_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsG_NtCs7q2UDKzmthI_9iox_query9query_logNtB5_18QueryLogEntryStateNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(448) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(448) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !12821 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.g = load i64, ptr %i.f, align 16, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.i = load ptr, ptr %i.h, align 16, !nonnull !19, !noundef !19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.k = load i64, ptr %i.j, align 8, !noundef !19 ; 2 uses
  %i.l = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.p = load ptr, ptr %i.o, align 16, !nonnull !19, !noundef !19
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.r = load i64, ptr %i.q, align 8, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.t = load ptr, ptr %i.s, align 16, !nonnull !19, !noundef !19 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.w = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  store ptr %i.t, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.dl, %bb.k ]
  %i.aa = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !12822
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query9query_log16QueryTextWrapperECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECs43kcu4yvms7_24influxdb3_query_executor.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs4NRVxsYgnAr_4core3fmt7DisplayNtNtBK_6marker4SendNtB1h_4SyncEL_E9drop_slowCs7q2UDKzmthI_9iox_query(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query9query_log16QueryTextWrapperECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 16, !range !23, !noundef !19
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.l
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.l ], [ -1, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ah = load i128, ptr %i.ag, align 16, !noundef !19
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr noundef nonnull align 8 dereferenceable(12) %i.ai, i64 12, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = load i64, ptr %i.am, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ap = load i32, ptr %i.ao, align 8, !range !114, !noundef !19
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = load i64, ptr %i.aq, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.at = load i32, ptr %i.as, align 8, !range !114, !noundef !19
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.av = load i64, ptr %i.au, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ax = load i32, ptr %i.aw, align 8, !range !114, !noundef !19
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.az = load i64, ptr %i.ay, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bb = load i32, ptr %i.ba, align 8, !range !114, !noundef !19
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bd = load i64, ptr %i.bc, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bf = load i32, ptr %i.be, align 8, !range !114, !noundef !19
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bh = load i64, ptr %i.bg, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bj = load i32, ptr %i.bi, align 8, !range !114, !noundef !19
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bl = load i64, ptr %i.bk, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bn = load i32, ptr %i.bm, align 8, !range !114, !noundef !19
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 436
  %i.bq = load i8, ptr %i.bp, align 4, !range !81, !noundef !19
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 437
  %i.bs = load i8, ptr %i.br, align 1, !range !81, !noundef !19
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 438
  %i.bu = load i8, ptr %i.bt, align 2, !range !91, !noundef !19
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bz, ptr noundef nonnull align 16 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.g, ptr %i.ca, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.i, ptr %i.cb, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.k, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.p, ptr %i.cd, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.r, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.t, ptr %i.cf, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.v, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %.sroa.0.0, ptr %i.ci, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i128 %i.ah, ptr %i.cj, align 16
  %i.ck = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.ck, ptr %0, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load <2 x i64>, ptr %i.ak, align 16
  store <2 x i64> %i.cm, ptr %i.cl, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load <2 x i64>, ptr %i.al, align 16
  store <2 x i64> %i.co, ptr %i.cn, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.an, ptr %i.cp, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ap, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ar, ptr %i.cr, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.at, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.av, ptr %i.ct, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ax, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.az, ptr %i.cv, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.bb, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.bd, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.bf, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.bh, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.bj, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.bl, ptr %i.db, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.bn, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.de = load <2 x i64>, ptr %i.bo, align 16
  store <2 x i64> %i.de, ptr %i.dd, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i8 %i.bq, ptr %i.df, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 437
  store i8 %i.bs, ptr %2, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 438
  store i8 %i.bu, ptr %i.dg, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.di = load <2 x i64>, ptr %i.bx, align 16
  store <2 x i64> %i.di, ptr %i.dh, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dk = load <2 x i64>, ptr %i.by, align 16
  store <2 x i64> %i.dk, ptr %i.dj, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %bb.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.m:                                             ; preds = %bb.n, %bb.k, %bb.f
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query9query_log16QueryTextWrapperECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !12823)
  call void @llvm.experimental.noalias.scope.decl(metadata !12824)
  %i.dn = load ptr, ptr %i.e, align 8, !alias.scope !12825, !nonnull !19, !noundef !19
  %i.do = atomicrmw add ptr %i.dn, i64 -1 release, align 8, !noalias !12825
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query9query_log16QueryTextWrapperECs43kcu4yvms7_24influxdb3_query_executor.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query9query_log16QueryTextWrapperECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.n
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsJ_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_3UseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 !guid !12829 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !64, !noundef !19 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !64, !noundef !19
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %default.unreachable37 [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %bb.i
    i64 4, label %bb.k
    i64 5, label %bb.m
    i64 6, label %bb.q
    i64 7, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  ]

_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.o ], [ false, %bb.q ], [ %i.bi, %bb.r ], [ false, %bb.m ], [ true, %bb.n ], [ %i.bc, %bb.p ], [ %i.ag, %bb.l ], [ %i.aa, %bb.j ], [ %i.i, %bb.d ], [ %i.o, %bb.f ], [ %i.u, %bb.h ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable37:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val22 = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val24 = load i64, ptr %i.e, align 8, !noundef !19
  %i.f = icmp eq i64 %.val22, %.val24
  br i1 %i.f, label %bb.d, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val23 = load ptr, ptr %i.g, align 8, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val21 = load ptr, ptr %i.h, align 8, !nonnull !19, !noundef !19
  %i.i = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val21, ptr noundef nonnull %.val23, i64 noundef %.val22)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val18 = load i64, ptr %i.j, align 8, !noundef !19 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val20 = load i64, ptr %i.k, align 8, !noundef !19
  %i.l = icmp eq i64 %.val18, %.val20
  br i1 %i.l, label %bb.f, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val19 = load ptr, ptr %i.m, align 8, !nonnull !19, !noundef !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load ptr, ptr %i.n, align 8, !nonnull !19, !noundef !19
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val17, ptr noundef nonnull %.val19, i64 noundef %.val18)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14 = load i64, ptr %i.p, align 8, !noundef !19 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load i64, ptr %i.q, align 8, !noundef !19
  %i.r = icmp eq i64 %.val14, %.val16
  br i1 %i.r, label %bb.h, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15 = load ptr, ptr %i.s, align 8, !nonnull !19, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13 = load ptr, ptr %i.t, align 8, !nonnull !19, !noundef !19
  %i.u = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val13, ptr noundef nonnull %.val15, i64 noundef %.val14)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.v, align 8, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12 = load i64, ptr %i.w, align 8, !noundef !19
  %i.x = icmp eq i64 %.val10, %.val12
  br i1 %i.x, label %bb.j, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load ptr, ptr %i.y, align 8, !nonnull !19, !noundef !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load ptr, ptr %i.z, align 8, !nonnull !19, !noundef !19
  %i.aa = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val9, ptr noundef nonnull %.val11, i64 noundef %.val10)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.ab, align 8, !noundef !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val8 = load i64, ptr %i.ac, align 8, !noundef !19
  %i.ad = icmp eq i64 %.val6, %.val8
  br i1 %i.ad, label %bb.l, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load ptr, ptr %i.ae, align 8, !nonnull !19, !noundef !19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.af, align 8, !nonnull !19, !noundef !19
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val5, ptr noundef nonnull %.val7, i64 noundef %.val6)
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12831)
  %i.aj = load i64, ptr %i.ah, align 8, !range !46, !alias.scope !12830, !noundef !19 ; 2 uses
  %i.ak = xor i64 %i.aj, -9223372036854775808
  %i.al = icmp slt i64 %i.aj, 0
  %i.am = select i1 %i.al, i64 %i.ak, i64 2       ; 2 uses
  %i.an = load i64, ptr %i.ai, align 8, !range !46, !alias.scope !12831, !noundef !19 ; 2 uses
  %i.ao = xor i64 %i.an, -9223372036854775808
  %i.ap = icmp slt i64 %i.an, 0
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 2
  %i.ar = icmp eq i64 %i.am, %i.aq
  br i1 %i.ar, label %bb.n, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.as = icmp eq i64 %i.am, 2
  br i1 %i.as, label %bb.o, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !12830, !noundef !19 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !12831, !noundef !19
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.p, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !12831, !nonnull !19, !noundef !19
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !12830, !nonnull !19, !noundef !19
  %i.bc = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.az, i64 noundef %i.au), !noalias !12832
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.bd, align 8, !noundef !19 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4 = load i64, ptr %i.be, align 8, !noundef !19
  %i.bf = icmp eq i64 %.val2, %.val4
  br i1 %i.bf, label %bb.r, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
end_hunk_0
