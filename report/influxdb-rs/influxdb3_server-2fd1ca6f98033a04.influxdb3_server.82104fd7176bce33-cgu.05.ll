Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.05?download=true
inline.NumInlined: 2484
inline.NumDeleted: 1028
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvMNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encodeNtB3_7Encoder15encode_trailersNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.cs = load ptr, ptr %i.av, align 8, !alias.scope !773, !noundef !4 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameEECsbakdBCgU4AF_16influxdb3_server.exit44, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.cu = load ptr, ptr %i.aw, align 8, !alias.scope !786, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !786, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.ax, align 8, !alias.scope !786, !noundef !4
  %i.cy = load i64, ptr %i.ay, align 8, !alias.scope !786, !noundef !4
  invoke void %i.cw(ptr noundef %i.cu, ptr noundef %i.cx, i64 noundef %i.cy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameEECsbakdBCgU4AF_16influxdb3_server.exit44 unwind label %bb.ah, !inline_history !720

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameEECsbakdBCgU4AF_16influxdb3_server.exit44: ; preds = %bb.al, %bb.ak, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ai

bb.an:                                            ; preds = %bb.w, %bb.v
  %lpad.thr_comm151 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.l) #34
          to label %.body36 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.cw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameEECsbakdBCgU4AF_16influxdb3_server.exit, %bb.i, %.thread101, %bb.an, %.thread169, %.body36
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ap:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtB10_5value11HeaderValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !739
  %i.da = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.sroa.10.sroa.0.0.copyload = load ptr, ptr %i.da, align 8, !noalias !728 ; 2 uses
  %.sroa.10.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.sroa.10.sroa.6.0.copyload = load ptr, ptr %.sroa.10.sroa.6.0..sroa_idx, align 8, !noalias !728 ; 2 uses
  %.sroa.10.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %.sroa.10.sroa.7.0.copyload = load i64, ptr %.sroa.10.sroa.7.0..sroa_idx, align 8, !noalias !728 ; 2 uses
  %.sroa.10.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.sroa.10.sroa.8.0.copyload = load ptr, ptr %.sroa.10.sroa.8.0..sroa_idx, align 8, !noalias !728 ; 2 uses
  %.sroa.10.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %.sroa.10.sroa.9.0.copyload = load i64, ptr %.sroa.10.sroa.9.0..sroa_idx, align 8, !noalias !728
  %i.db = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  %.sroa.56.0.i = select i1 %i.db, i64 %.sroa.7.0.copyload.i, i64 undef
  store i64 %.sroa.0.0.copyload.i, ptr %i.n, align 8, !alias.scope !728, !noalias !731
  store i64 %.sroa.56.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !728, !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.dc = load i64, ptr %i.p, align 8, !range !183, !alias.scope !787, !noundef !4
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.thread371, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.de = load ptr, ptr %i.av, align 8, !alias.scope !796, !noundef !4 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.thread371, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.dg = load ptr, ptr %i.aw, align 8, !alias.scope !809, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !809, !nonnull !4, !noundef !4
  %i.dj = load ptr, ptr %i.ax, align 8, !alias.scope !809, !noundef !4
  %i.dk = load i64, ptr %i.ay, align 8, !alias.scope !809, !noundef !4
  invoke void %i.di(ptr noundef %i.dg, ptr noundef %i.dj, i64 noundef %i.dk)
          to label %.thread371 unwind label %.thread157, !inline_history !720

bb.as:                                            ; preds = %bb.s, %bb.q
  %.sroa.5.0.i = phi i64 [ %i.by, %bb.s ], [ undef, %bb.q ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.s ], [ 0, %bb.q ]
  store i64 %.sroa.0.0.i, ptr %i.n, align 8, !alias.scope !728, !noalias !731
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !728, !noalias !731
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.sroa.10.sroa.0.0.copyload89 = load ptr, ptr %i.dl, align 8, !noalias !728 ; 2 uses
  %.sroa.10.sroa.6.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %.sroa.10.sroa.6.0.copyload91 = load ptr, ptr %.sroa.10.sroa.6.0..sroa_idx90, align 8, !noalias !728 ; 2 uses
  %.sroa.10.sroa.7.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %.sroa.10.sroa.7.0.copyload93 = load i64, ptr %.sroa.10.sroa.7.0..sroa_idx92, align 8, !noalias !728 ; 2 uses
  %.sroa.10.sroa.8.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %.sroa.10.sroa.8.0.copyload95 = load ptr, ptr %.sroa.10.sroa.8.0..sroa_idx94, align 8, !noalias !728 ; 2 uses
  %.sroa.10.sroa.9.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %.sroa.10.sroa.9.0.copyload97 = load i64, ptr %.sroa.10.sroa.9.0..sroa_idx96, align 8, !noalias !728
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.pre350 = load i64, ptr %i.p, align 8, !range !183
  %i.dm = trunc nuw i64 %.pre350 to i1
  br i1 %i.dm, label %bb.at, label %bb.au, !prof !810

.thread157:                                       ; preds = %bb.ar
  %i.dn = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  br label %bb.cw

.thread371:                                       ; preds = %bb.ar, %bb.ap, %bb.aq
  store i64 1, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  br label %bb.at

.thread180.loopexit:                              ; preds = %bb.cf
  %lpad.loopexit205 = landingpad { ptr, i32 }
          cleanup
  br label %.thread169

.thread180.loopexit.split-lp:                     ; preds = %bb.bx, %bb.br, %bb.bb, %bb.cl, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
  br label %.thread169

.loopexit:                                        ; preds = %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.loopexit.split-lp:                               ; preds = %bb.au
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.at:                                            ; preds = %.thread371, %bb.as
  %.sroa.10.sroa.9.0138385 = phi i64 [ %.sroa.10.sroa.9.0.copyload, %.thread371 ], [ %.sroa.10.sroa.9.0.copyload97, %bb.as ] ; 3 uses
  %.sroa.10.sroa.8.0140383 = phi ptr [ %.sroa.10.sroa.8.0.copyload, %.thread371 ], [ %.sroa.10.sroa.8.0.copyload95, %bb.as ] ; 9 uses
  %.sroa.10.sroa.7.0142381 = phi i64 [ %.sroa.10.sroa.7.0.copyload, %.thread371 ], [ %.sroa.10.sroa.7.0.copyload93, %bb.as ] ; 9 uses
  %.sroa.10.sroa.6.0144379 = phi ptr [ %.sroa.10.sroa.6.0.copyload, %.thread371 ], [ %.sroa.10.sroa.6.0.copyload91, %bb.as ] ; 9 uses
  %.sroa.10.sroa.0.0146377 = phi ptr [ %.sroa.10.sroa.0.0.copyload, %.thread371 ], [ %.sroa.10.sroa.0.0.copyload89, %bb.as ] ; 12 uses
  %i.do = invoke noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyBP_ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull align 8 %i.av)
          to label %bb.aw unwind label %.loopexit

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #31
          to label %bb.av unwind label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.at
  br i1 %i.do, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.0146377) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0146377, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !811, !nonnull !4, !noundef !4
  invoke void %i.dq(ptr noundef %.sroa.10.sroa.8.0140383, ptr noundef %.sroa.10.sroa.6.0144379, i64 noundef %.sroa.10.sroa.7.0142381)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit unwind label %.loopexit195, !inline_history !818

bb.ay:                                            ; preds = %bb.aw
  %i.dr = load ptr, ptr %i.av, align 8, !noundef !4
  %.not21 = icmp eq ptr %i.dr, null
  br i1 %.not21, label %bb.cv, label %bb.az

bb.az:                                            ; preds = %bb.cv, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %.sroa.10.sroa.0.0146377, ptr %i.m, align 8
  store ptr %.sroa.10.sroa.6.0144379, ptr %.sroa.679.0..sroa_idx, align 8
  store i64 %.sroa.10.sroa.7.0142381, ptr %.sroa.882.0..sroa_idx, align 8
  store ptr %.sroa.10.sroa.8.0140383, ptr %.sroa.1085.0..sroa_idx, align 8
  store i64 %.sroa.10.sroa.9.0138385, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.ds = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %bb.ba unwind label %.loopexit200, !noalias !822

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ds, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0146377, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !824, !nonnull !4, !noundef !4
  invoke void %i.du(ptr noundef %.sroa.10.sroa.8.0140383, ptr noundef %.sroa.10.sroa.6.0144379, i64 noundef %.sroa.10.sroa.7.0142381)
          to label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread unwind label %.thread180.loopexit.split-lp, !inline_history !831

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.dv = load i64, ptr %i.o, align 8, !range !464, !alias.scope !835, !noalias !822, !noundef !4 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 2
  br i1 %i.dw, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !836
  %i.dx = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !835, !noalias !822 ; 3 uses
  %i.dy = shufflevector <2 x i64> %i.dx, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dz = xor <2 x i64> %i.dy, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.dz, ptr %i.f, align 16, !noalias !836
  %i.ea = shufflevector <2 x i64> %i.dx, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = xor <2 x i64> %i.ea, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.eb, ptr %.sroa.513.0..sroa_idx.i.i, align 16, !noalias !836
  store <2 x i64> %i.dx, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !noalias !836
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !noalias !836
  %i.ec = load ptr, ptr %i.av, align 8, !noalias !837, !noundef !4 ; 2 uses
  %i.ed = icmp ne ptr %i.ec, null
  %i.ee = zext i1 %i.ed to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !844
  store i64 %i.ee, ptr %i.e, align 8, !noalias !844
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8), !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !844
  %.not.i.i.i.i.i = icmp eq ptr %i.ec, null       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !837, !noundef !4 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.ay, align 8, !noalias !837, !noundef !4
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i.i), !noalias !849
  %i.ef = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.eg = trunc i64 %i.ef to i8
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.eh = load i8, ptr %i.ax, align 8, !range !850, !noalias !837, !noundef !4 ; 2 uses
  %i.ei = zext nneg i8 %i.eh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !851
  store i64 %i.ei, ptr %i.d, align 8, !noalias !851
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8), !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !851
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.bf, %bb.be
  %i.ej = phi i8 [ %i.eh, %bb.bf ], [ %i.eg, %bb.be ]
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !856, !noalias !836
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !alias.scope !856, !noalias !836
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 16, !alias.scope !856, !noalias !836 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i.i, align 8, !alias.scope !856, !noalias !836
  %i.ek = load i64, ptr %.sroa.915.0..sroa_idx.i.i, align 16, !alias.scope !856, !noalias !836, !noundef !4
  %i.el = shl i64 %i.ek, 56
  %i.em = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !856, !noalias !836, !noundef !4
  %i.en = or i64 %i.el, %i.em                     ; 2 uses
  %i.eo = xor i64 %i.en, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.ep = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.eq = add i64 %i.eo, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.er = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.es = xor i64 %i.er, %i.ep                    ; 3 uses
  %i.et = call noundef i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 16)
  %i.eu = xor i64 %i.et, %i.eq                    ; 3 uses
  %i.ev = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 32)
  %i.ew = add i64 %i.eq, %i.es                    ; 3 uses
  %i.ex = add i64 %i.eu, %i.ev                    ; 2 uses
  %i.ey = call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 17)
  %i.ez = xor i64 %i.ew, %i.ey                    ; 3 uses
  %i.fa = call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 21)
  %i.fb = xor i64 %i.fa, %i.ex                    ; 3 uses
  %i.fc = call noundef i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 32)
  %i.fd = xor i64 %i.ex, %i.en
  %i.fe = xor i64 %i.fc, 255
  %i.ff = add i64 %i.fd, %i.ez                    ; 3 uses
  %i.fg = add i64 %i.fb, %i.fe                    ; 2 uses
  %i.fh = call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 13)
  %i.fi = xor i64 %i.ff, %i.fh                    ; 3 uses
  %i.fj = call noundef i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 16)
  %i.fk = xor i64 %i.fj, %i.fg                    ; 3 uses
  %i.fl = call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 32)
  %i.fm = add i64 %i.fi, %i.fg                    ; 3 uses
  %i.fn = add i64 %i.fk, %i.fl                    ; 2 uses
  %i.fo = call noundef i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 17)
  %i.fp = xor i64 %i.fm, %i.fo                    ; 3 uses
  %i.fq = call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 21)
  %i.fr = xor i64 %i.fq, %i.fn                    ; 3 uses
  %i.fs = call noundef i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 32)
  %i.ft = add i64 %i.fp, %i.fn                    ; 3 uses
  %i.fu = add i64 %i.fr, %i.fs                    ; 2 uses
  %i.fv = call noundef i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 13)
  %i.fw = xor i64 %i.fv, %i.ft                    ; 3 uses
  %i.fx = call noundef i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 16)
  %i.fy = xor i64 %i.fx, %i.fu                    ; 3 uses
  %i.fz = call noundef i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 32)
  %i.ga = add i64 %i.fw, %i.fu                    ; 3 uses
  %i.gb = add i64 %i.fy, %i.fz                    ; 2 uses
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 17)
  %i.gd = xor i64 %i.gc, %i.ga                    ; 3 uses
  %i.ge = call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 21)
  %i.gf = xor i64 %i.ge, %i.gb                    ; 2 uses
  %i.gg = call noundef i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 32)
  %i.gh = add i64 %i.gd, %i.gb
  %i.gi = add i64 %i.gf, %i.gg                    ; 2 uses
  %i.gj = call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 13)
  %i.gk = xor i64 %i.gj, %i.gh                    ; 2 uses
  %i.gl = shl i64 %i.gf, 16
  %i.gm = xor i64 %i.gl, %i.gi
  %i.gn = add i64 %i.gk, %i.gi                    ; 2 uses
  %i.go = lshr i64 %i.gk, 47
  %i.gp = lshr i64 %i.gm, 43
  %i.gq = lshr i64 %i.gn, 32
  %i.gr = xor i64 %i.gp, %i.go
  %i.gs = xor i64 %i.gr, %i.gq
  %i.gt = xor i64 %i.gs, %i.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !836
  br label %.loopexit.i

bb.bg:                                            ; preds = %bb.bc
  %i.gu = load ptr, ptr %i.av, align 8, !noalias !859, !noundef !4 ; 2 uses
  %i.gv = icmp ne ptr %i.gu, null
  %i.gw = zext i1 %i.gv to i64
  %i.gx = xor i64 %i.gw, -3750763034362895579
  %i.gy = mul i64 %i.gx, 2232315406967589409      ; 4 uses
  %.not.i.i.i21.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i21.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i.i22.i.i = load ptr, ptr %i.ax, align 8, !noalias !859, !noundef !4 ; 4 uses
  %.val1.i.i.i23.i.i = load i64, ptr %i.ay, align 8, !noalias !859, !noundef !4 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i.i, i64 %.val1.i.i.i23.i.i
  %i.ha = icmp samesign eq i64 %.val1.i.i.i23.i.i, 0
  %i.hb = ptrtoint ptr %.val.i.i.i22.i.i to i64
  %i.hc = trunc i64 %i.hb to i8                   ; 3 uses
  br i1 %i.ha, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.bh
  %xtraiter = and i64 %.val1.i.i.i23.i.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.gy, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.i.i.prol = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.val.i.i.i22.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.he = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.hf = zext i8 %i.he to i64
  %i.hg = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, %i.hf
  %i.hh = mul i64 %i.hg, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !873

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.gy, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.i.i.unr = phi ptr [ %.val.i.i.i22.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.hi = icmp ult i64 %.val1.i.i.i23.i.i, 8
  br i1 %i.hi, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.iw, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i.i.i = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 1
  %i.hk = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.hl = zext i8 %i.hk to i64
  %i.hm = xor i64 %.sroa.0.06.i.i.i.i.i.i.i, %i.hl
  %i.hn = mul i64 %i.hm, 1099511628211
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 2
  %i.hp = load i8, ptr %i.hj, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.hq = zext i8 %i.hp to i64
  %i.hr = xor i64 %i.hn, %i.hq
  %i.hs = mul i64 %i.hr, 1099511628211
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 3
  %i.hu = load i8, ptr %i.ho, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.hv = zext i8 %i.hu to i64
  %i.hw = xor i64 %i.hs, %i.hv
  %i.hx = mul i64 %i.hw, 1099511628211
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 4
  %i.hz = load i8, ptr %i.ht, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.ia = zext i8 %i.hz to i64
  %i.ib = xor i64 %i.hx, %i.ia
  %i.ic = mul i64 %i.ib, 1099511628211
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 5
  %i.ie = load i8, ptr %i.hy, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.if = zext i8 %i.ie to i64
  %i.ig = xor i64 %i.ic, %i.if
  %i.ih = mul i64 %i.ig, 1099511628211
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 6
  %i.ij = load i8, ptr %i.id, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.ik = zext i8 %i.ij to i64
  %i.il = xor i64 %i.ih, %i.ik
  %i.im = mul i64 %i.il, 1099511628211
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 7
  %i.io = load i8, ptr %i.ii, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.ip = zext i8 %i.io to i64
  %i.iq = xor i64 %i.im, %i.ip
  %i.ir = mul i64 %i.iq, 1099511628211
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.it = load i8, ptr %i.in, align 1, !alias.scope !866, !noalias !869, !noundef !4
  %i.iu = zext i8 %i.it to i64
  %i.iv = xor i64 %i.ir, %i.iu
  %i.iw = mul i64 %i.iv, 1099511628211            ; 2 uses
  %i.ix = icmp eq ptr %i.is, %i.gz
  br i1 %i.ix, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.iy = load i8, ptr %i.ax, align 8, !range !850, !noalias !859, !noundef !4 ; 2 uses
  %i.iz = zext nneg i8 %i.iy to i64
  %i.ja = xor i64 %i.gy, %i.iz
  %i.jb = mul i64 %i.ja, 2232315406967589409
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.bi, %bb.bh, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.jc = phi i8 [ %i.ej, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.iy, %bb.bi ], [ %i.hc, %bb.bh ], [ %i.hc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.hc, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %4 = phi i1 [ %.not.i.i.i.i.i, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ true, %bb.bi ], [ false, %bb.bh ], [ false, %.lr.ph.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.gt, %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.jb, %bb.bi ], [ %i.gy, %bb.bh ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.jd = trunc i64 %.sroa.0.0.i.i to i16
  %i.je = and i16 %i.jd, 32767                    ; 6 uses
  %i.jf = load i16, ptr %i.am, align 8, !alias.scope !819, !noalias !822, !noundef !4 ; 3 uses
  %i.jg = and i16 %i.je, %i.jf
  %i.jh = zext nneg i16 %i.jg to i64
  %i.ji = load i64, ptr %i.ao, align 8, !alias.scope !819, !noalias !822, !noundef !4 ; 2 uses
  %i.jj = zext i16 %i.jf to i64
  %not..i.i.i = xor i1 %4, true
  %i.jk = load ptr, ptr %i.an, align 8, !nonnull !4
  %i.jl = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 4 uses
  %i.jm = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !4
  %i.jn = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.jo = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = trunc i64 %i.jp to i8
  %.not = icmp eq i64 %i.ji, 0
  br label %.outer524

.outer524:                                        ; preds = %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i, %.loopexit.i
  %.ph = phi i8 [ %i.lu, %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ %i.jc, %.loopexit.i ] ; 5 uses
  %.sroa.09.0.i.ph = phi i64 [ %i.lv, %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ 0, %.loopexit.i ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ %i.lw, %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ %i.jh, %.loopexit.i ] ; 2 uses
  %i.jr = icmp ult i64 %.sroa.01.0.i.ph, %i.ji    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.jr, %.not.not
  %.sroa.01.0.i.ph.mux = select i1 %i.jr, i64 %.sroa.01.0.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit596, label %infloop

.loopexit596:                                     ; preds = %.outer524
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %.sroa.01.0.i.ph.mux ; 2 uses
  %i.jt = load i16, ptr %i.js, align 2, !noalias !822, !noundef !4 ; 2 uses
  %.not.i50 = icmp eq i16 %i.jt, -1
  br i1 %.not.i50, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %bb.ce
  unreachable

bb.bk:                                            ; preds = %.loopexit596
  %i.ju = zext i16 %i.jt to i64                   ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.jw = load i16, ptr %i.jv, align 2, !noalias !822, !noundef !4 ; 2 uses
  %i.jx = and i16 %i.jw, %i.jf
  %i.jy = zext i16 %i.jx to i64
  %i.jz = sub i64 %.sroa.01.0.i.ph.mux, %i.jy
  %i.ka = and i64 %i.jz, %i.jj
  %i.kb = icmp samesign ult i64 %i.ka, %.sroa.09.0.i.ph
  br i1 %i.kb, label %bb.bz, label %bb.by

bb.bl:                                            ; preds = %.loopexit596
  %i.kc = icmp ult i64 %i.jl, 88686269585142076
  call void @llvm.assume(i1 %i.kc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !875
  invoke void @_RNvXs7_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core7convert4FromRBE_E4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %i.av)
          to label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %.loopexit200, !noalias !822

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.kd = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !881, !noalias !882, !noundef !4 ; 5 uses
  %i.ke = icmp ult i64 %i.kd, 88686269585142076
  call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp samesign ugt i64 %i.kd, 32767
  br i1 %i.kf, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !884
  store i16 %i.je, ptr %i.bg, align 8, !noalias !884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !885
  store ptr %.sroa.10.sroa.0.0146377, ptr %i.bi, align 8, !noalias !886
  store ptr %.sroa.10.sroa.6.0144379, ptr %.sroa.556.0..sroa_idx57.i, align 8, !noalias !886
  store i64 %.sroa.10.sroa.7.0142381, ptr %.sroa.659.0..sroa_idx60.i, align 8, !noalias !886
  store ptr %.sroa.10.sroa.8.0140383, ptr %.sroa.762.0..sroa_idx63.i, align 8, !noalias !886
  store i64 %.sroa.10.sroa.9.0138385, ptr %.sroa.865.0..sroa_idx66.i, align 8, !noalias !886
  store i64 0, ptr %i.c, align 8, !noalias !884
  %i.kg = load i64, ptr %i.ap, align 8, !range !204, !alias.scope !887, !noalias !890, !noundef !4
  %i.kh = icmp eq i64 %i.kd, %i.kg
  br i1 %i.kh, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5yJ8ynDFnAQ_9axum_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.bv unwind label %bb.bo, !noalias !890

bb.bo:                                            ; preds = %bb.bn
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.c) #34
          to label %.thread169 unwind label %bb.bp, !noalias !882

bb.bp:                                            ; preds = %bb.bo
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !890
  unreachable

bb.bq:                                            ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.0146377) ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0146377, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !892, !nonnull !4, !noundef !4
  invoke void %i.kl(ptr noundef %.sroa.10.sroa.8.0140383, ptr noundef %.sroa.10.sroa.6.0144379, i64 noundef %.sroa.10.sroa.7.0142381)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.bs, !noalias !899, !inline_history !818

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.km = load ptr, ptr %i.g, align 8, !alias.scope !906, !noalias !885, !noundef !4 ; 2 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !919, !noalias !885, !noundef !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !920, !nonnull !4, !noundef !4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !919, !noalias !885, !noundef !4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.kv = load i64, ptr %i.ku, align 8, !alias.scope !919, !noalias !885, !noundef !4
  invoke void %i.kr(ptr noundef %i.kp, ptr noundef %i.kt, i64 noundef %i.kv)
          to label %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsbakdBCgU4AF_16influxdb3_server.exit.thread.i unwind label %.thread180.loopexit.split-lp, !inline_history !831

bb.bs:                                            ; preds = %bb.bq
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.kx = load ptr, ptr %i.g, align 8, !alias.scope !927, !noalias !885, !noundef !4 ; 2 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %.thread169, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !940, !noalias !885, !noundef !4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !941, !nonnull !4, !noundef !4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !alias.scope !940, !noalias !885, !noundef !4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.lg = load i64, ptr %i.lf, align 8, !alias.scope !940, !noalias !885, !noundef !4
  invoke void %i.lc(ptr noundef %i.la, ptr noundef %i.le, i64 noundef %i.lg)
          to label %.thread169 unwind label %bb.bu, !noalias !899, !inline_history !942

bb.bu:                                            ; preds = %bb.bt
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !899
  unreachable

_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !875
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread

bb.bv:                                            ; preds = %bb.bn, %bb.bm
  %i.li = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !887, !noalias !890, !nonnull !4, !noundef !4
  %i.lj = getelementptr inbounds nuw [104 x i8], ptr %i.li, i64 %i.kd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.lj, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, i64 104, i1 false), !noalias !882
  %i.lk = add nuw nsw i64 %i.kd, 1
  store i64 %i.lk, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !887, !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !875
  %i.ll = load i64, ptr %i.ao, align 8, !alias.scope !819, !noalias !822, !noundef !4 ; 2 uses
  %i.lm = icmp ult i64 %.sroa.01.0.i.ph.mux, %i.ll
  br i1 %i.lm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ln = load ptr, ptr %i.an, align 8, !alias.scope !819, !noalias !822, !nonnull !4, !noundef !4
  %i.lo = trunc i64 %i.jl to i16
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.sroa.01.0.i.ph.mux ; 2 uses
  store i16 %i.lo, ptr %i.lp, align 2, !noalias !822
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  store i16 %i.je, ptr %i.lq, align 2, !noalias !822
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtNtCs6P5GRezSnwZ_4http6header3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i.ph.mux, i64 noundef %i.ll, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #31
          to label %.noexc57 unwind label %.thread180.loopexit.split-lp

.noexc57:                                         ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bk
  %i.lr = icmp eq i16 %i.jw, %i.je
  br i1 %i.lr, label %bb.ca, label %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

bb.bz:                                            ; preds = %bb.bk
  %i.ls = icmp samesign ugt i64 %.sroa.09.0.i.ph, 511
  %i.lt = icmp ne i64 %i.dv, 2
  %spec.select.i = and i1 %i.lt, %i.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !875
  invoke void @_RNvXs7_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core7convert4FromRBE_E4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.av)
          to label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbakdBCgU4AF_16influxdb3_server.exit32.i unwind label %.loopexit200, !noalias !822

_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i: ; preds = %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.i, %.split.i, %bb.cd, %bb.cb, %bb.by
  %i.lu = phi i8 [ %.ph, %bb.cd ], [ %.ph, %bb.cb ], [ %i.jq, %.split.i ], [ %.ph, %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.i ], [ %.ph, %bb.by ]
  %i.lv = add nuw nsw i64 %.sroa.09.0.i.ph, 1
  %i.lw = add i64 %.sroa.01.0.i.ph.mux, 1
  br label %.outer524

bb.ca:                                            ; preds = %bb.by
  %i.lx = icmp ugt i64 %i.jl, %i.ju
  br i1 %i.lx, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.ly = getelementptr inbounds nuw [104 x i8], ptr %i.jm, i64 %i.ju ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !822, !noundef !4
  %i.mb = icmp ne ptr %i.ma, null                 ; 2 uses
  %i.mc = xor i1 %4, %i.mb
  br i1 %i.mc, label %bb.cc, label %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.mb, label %bb.cd, label %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.i

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 %not..i.i.i)
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 80
  %i.me = load i64, ptr %i.md, align 8, !noalias !822, !noundef !4
  %i.mf = icmp eq i64 %i.me, %i.jn
  br i1 %i.mf, label %.split.i, label %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

.split.i:                                         ; preds = %bb.cd
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 72
  %i.mh = load ptr, ptr %i.mg, align 8, !noalias !822, !noundef !4
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.mh, ptr %i.jo, i64 %i.jn), !noalias !822
  %i.mi = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.mi, label %bb.cf, label %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

bb.ce:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ju, i64 noundef %i.jl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #31
          to label %bb.bj unwind label %.loopexit.split-lp201, !noalias !822

_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.i: ; preds = %bb.cc
  call void @llvm.assume(i1 %4)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ly, i64 72
  %i.mk = load i8, ptr %i.mj, align 8, !range !850, !noalias !822, !noundef !4
  %i.ml = icmp eq i8 %i.mk, %.ph
  br i1 %i.ml, label %bb.cf, label %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

bb.cf:                                            ; preds = %_RNvXsh_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqRBE_E2eq.exit.i, %.split.i
  invoke fastcc void @_RINvNtNtCs6P5GRezSnwZ_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server(i64 noundef %i.ju, ptr noalias noundef align 8 dereferenceable(104) %i.ly, ptr noalias noundef align 8 dereferenceable(24) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.m)
          to label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtNtCs6P5GRezSnwZ_4http6header3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit unwind label %.thread180.loopexit

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbakdBCgU4AF_16influxdb3_server.exit32.i: ; preds = %bb.bz
  %i.mm = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !943, !noalias !946, !noundef !4 ; 6 uses
  %i.mn = icmp ult i64 %i.mm, 88686269585142076
  call void @llvm.assume(i1 %i.mn)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  %i.mo = icmp samesign ugt i64 %i.mm, 32767
  br i1 %i.mo, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbakdBCgU4AF_16influxdb3_server.exit32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !954
  store i16 %i.je, ptr %i.bd, align 8, !noalias !954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !956
  store ptr %.sroa.10.sroa.0.0146377, ptr %i.bf, align 8, !noalias !957
  store ptr %.sroa.10.sroa.6.0144379, ptr %.sroa.5.0..sroa_idx46.i, align 8, !noalias !957
  store i64 %.sroa.10.sroa.7.0142381, ptr %.sroa.6.0..sroa_idx48.i, align 8, !noalias !957
  store ptr %.sroa.10.sroa.8.0140383, ptr %.sroa.7.0..sroa_idx50.i, align 8, !noalias !957
  store i64 %.sroa.10.sroa.9.0138385, ptr %.sroa.8.0..sroa_idx52.i, align 8, !noalias !957
  store i64 0, ptr %i.b, align 8, !noalias !954
  %i.mp = load i64, ptr %i.ap, align 8, !range !204, !alias.scope !958, !noalias !961, !noundef !4
  %i.mq = icmp eq i64 %i.mm, %i.mp
  br i1 %i.mq, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5yJ8ynDFnAQ_9axum_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.cp unwind label %bb.ci, !noalias !961

bb.ci:                                            ; preds = %bb.ch
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.b) #34
          to label %.thread169 unwind label %bb.cj, !noalias !963

bb.cj:                                            ; preds = %bb.ci
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !961
  unreachable

bb.ck:                                            ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsbakdBCgU4AF_16influxdb3_server.exit32.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.0146377) ]
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0146377, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !964, !nonnull !4, !noundef !4
  invoke void %i.mu(ptr noundef %.sroa.10.sroa.8.0140383, ptr noundef %.sroa.10.sroa.6.0144379, i64 noundef %.sroa.10.sroa.7.0142381)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i38.i unwind label %bb.cm, !noalias !971, !inline_history !818

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i38.i: ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.mv = load ptr, ptr %i.h, align 8, !alias.scope !978, !noalias !956, !noundef !4 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.cl

bb.cl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i38.i
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !991, !noalias !956, !noundef !4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !992, !nonnull !4, !noundef !4
  %i.nb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !alias.scope !991, !noalias !956, !noundef !4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !991, !noalias !956, !noundef !4
  invoke void %i.na(ptr noundef %i.my, ptr noundef %i.nc, i64 noundef %i.ne)
          to label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit unwind label %.thread180.loopexit.split-lp, !inline_history !831

bb.cm:                                            ; preds = %bb.ck
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.ng = load ptr, ptr %i.h, align 8, !alias.scope !999, !noalias !956, !noundef !4 ; 2 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %.thread169, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8, !alias.scope !1012, !noalias !956, !noundef !4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.nl = load ptr, ptr %i.nk, align 8, !noalias !1013, !nonnull !4, !noundef !4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !1012, !noalias !956, !noundef !4
  %i.no = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.np = load i64, ptr %i.no, align 8, !alias.scope !1012, !noalias !956, !noundef !4
  invoke void %i.nl(ptr noundef %i.nj, ptr noundef %i.nn, i64 noundef %i.np)
          to label %.thread169 unwind label %bb.co, !noalias !971, !inline_history !942

bb.co:                                            ; preds = %bb.cn
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !971
  unreachable

bb.cp:                                            ; preds = %bb.ch, %bb.cg
  %i.nr = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !958, !noalias !961, !nonnull !4, !noundef !4
  %i.ns = getelementptr inbounds nuw [104 x i8], ptr %i.nr, i64 %i.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ns, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !963
  %i.nt = add nuw nsw i64 %i.mm, 1
  store i64 %i.nt, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !958, !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !954
  %i.nu = load ptr, ptr %i.an, align 8, !alias.scope !943, !noalias !946, !nonnull !4, !noundef !4
  %i.nv = load i64, ptr %i.ao, align 8, !alias.scope !943, !noalias !946, !noundef !4 ; 2 uses
  %i.nw = trunc nuw nsw i64 %i.mm to i16
  %.not601 = icmp eq i64 %i.nv, 0
  br label %.outer

.outer:                                           ; preds = %bb.cr, %bb.cp
  %.sroa.6.0.i.i.ph = phi i16 [ %i.og, %bb.cr ], [ %i.je, %bb.cp ] ; 2 uses
  %.sroa.07.0.i.i.ph = phi i16 [ %i.nz, %bb.cr ], [ %i.nw, %bb.cp ] ; 2 uses
  %.sroa.05.0.i.i.ph = phi i64 [ %i.of, %bb.cr ], [ 0, %bb.cp ] ; 2 uses
  %.sroa.0.0.i33.i.ph = phi i64 [ %i.oh, %bb.cr ], [ %.sroa.01.0.i.ph.mux, %bb.cp ] ; 2 uses
  %i.nx = icmp ult i64 %.sroa.0.0.i33.i.ph, %i.nv ; 2 uses
  %.not601.not = xor i1 %.not601, true
  %brmerge676 = or i1 %i.nx, %.not601.not
  %.sroa.0.0.i33.i.ph.mux = select i1 %i.nx, i64 %.sroa.0.0.i33.i.ph, i64 0 ; 2 uses
  br i1 %brmerge676, label %.loopexit600, label %infloop675

.loopexit600:                                     ; preds = %.outer
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %.sroa.0.0.i33.i.ph.mux ; 4 uses
  %i.nz = load i16, ptr %i.ny, align 2, !noalias !946, !noundef !4 ; 2 uses
  %i.oa = icmp eq i16 %i.nz, -1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 2 ; 3 uses
  br i1 %i.oa, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.loopexit600
  store i16 %.sroa.07.0.i.i.ph, ptr %i.ny, align 2, !noalias !946
  store i16 %.sroa.6.0.i.i.ph, ptr %i.ob, align 2, !noalias !946
  %i.oc = icmp ugt i64 %.sroa.05.0.i.i.ph, 127
  %or.cond.i.i = select i1 %spec.select.i, i1 true, i1 %i.oc
  %i.od = load i64, ptr %i.o, align 8, !range !464
  %i.oe = icmp eq i64 %i.od, 0
  %or.cond = select i1 %or.cond.i.i, i1 %i.oe, i1 false
  br i1 %or.cond, label %bb.cs, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread192

bb.cr:                                            ; preds = %.loopexit600
  %i.of = add i64 %.sroa.05.0.i.i.ph, 1
  %i.og = load i16, ptr %i.ob, align 2, !noalias !946, !noundef !4
  store i16 %.sroa.07.0.i.i.ph, ptr %i.ny, align 2, !noalias !946
  store i16 %.sroa.6.0.i.i.ph, ptr %i.ob, align 2, !noalias !946
  %i.oh = add nuw i64 %.sroa.0.0.i33.i.ph.mux, 1
  br label %.outer

bb.cs:                                            ; preds = %bb.cq
  store i64 1, ptr %i.o, align 8, !alias.scope !943, !noalias !946
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread192

.loopexit200:                                     ; preds = %bb.az, %bb.bl, %bb.bz
  %lpad.loopexit202 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp201:                            ; preds = %bb.ce
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit.split-lp201, %.loopexit200
  %lpad.phi204 = phi { ptr, i32 } [ %lpad.loopexit202, %.loopexit200 ], [ %lpad.loopexit.split-lp203, %.loopexit.split-lp201 ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0146377, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8, !noalias !1014, !nonnull !4, !noundef !4
  invoke void %i.oj(ptr noundef %.sroa.10.sroa.8.0140383, ptr noundef %.sroa.10.sroa.6.0144379, i64 noundef %.sroa.10.sroa.7.0142381)
          to label %.thread169 unwind label %bb.cu, !noalias !822, !inline_history !818

bb.cu:                                            ; preds = %bb.ct
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !822
  unreachable

bb.cv:                                            ; preds = %bb.ay
  %i.ol = load i8, ptr %i.ax, align 8, !range !850, !noundef !4
  switch i8 %i.ol, label %bb.az [
    i8 16, label %bb.ax
    i8 17, label %bb.ax
    i8 22, label %bb.ax
    i8 24, label %bb.ax
    i8 26, label %bb.ax
    i8 29, label %bb.ax
    i8 38, label %bb.ax
    i8 47, label %bb.ax
    i8 65, label %bb.ax
    i8 67, label %bb.ax
    i8 68, label %bb.ax
    i8 69, label %bb.ax
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.ax, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtNtCs6P5GRezSnwZ_4http6header3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.pre = load i64, ptr %i.n, align 8, !range !183, !alias.scope !728, !noalias !731
  br label %bb.n

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread192: ; preds = %bb.cs, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !875
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtNtCs6P5GRezSnwZ_4http6header3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i38.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !875
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread: ; preds = %bb.bb, %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #31
          to label %.noexc62 unwind label %.thread180.loopexit.split-lp

.noexc62:                                         ; preds = %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultbNtNtNtCs6P5GRezSnwZ_4http6header3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.cf, %bb.bw, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.thread192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit

bb.cw:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.thread157
  %.pn168 = phi { ptr, i32 } [ %i.dn, %.thread157 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.sroa.10.sroa.8.0115167 = phi ptr [ %.sroa.10.sroa.8.0.copyload, %.thread157 ], [ %.sroa.10.sroa.8.0140383, %.loopexit ], [ %.sroa.10.sroa.8.0.copyload95, %.loopexit.split-lp ]
  %.sroa.10.sroa.7.0119166 = phi i64 [ %.sroa.10.sroa.7.0.copyload, %.thread157 ], [ %.sroa.10.sroa.7.0142381, %.loopexit ], [ %.sroa.10.sroa.7.0.copyload93, %.loopexit.split-lp ]
  %.sroa.10.sroa.6.0123165 = phi ptr [ %.sroa.10.sroa.6.0.copyload, %.thread157 ], [ %.sroa.10.sroa.6.0144379, %.loopexit ], [ %.sroa.10.sroa.6.0.copyload91, %.loopexit.split-lp ]
  %.sroa.10.sroa.0.0127164 = phi ptr [ %.sroa.10.sroa.0.0.copyload, %.thread157 ], [ %.sroa.10.sroa.0.0146377, %.loopexit ], [ %.sroa.10.sroa.0.0.copyload89, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.0127164) ]
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0127164, i64 32
  %i.on = load ptr, ptr %i.om, align 8, !noalias !1021, !nonnull !4, !noundef !4
  invoke void %i.on(ptr noundef %.sroa.10.sroa.8.0115167, ptr noundef %.sroa.10.sroa.6.0123165, i64 noundef %.sroa.10.sroa.7.0119166)
          to label %.thread169 unwind label %bb.ao, !inline_history !818

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameEECsbakdBCgU4AF_16influxdb3_server.exit, %.thread101
  %.pn.pn.pn.pn.pn.pn100 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameEECsbakdBCgU4AF_16influxdb3_server.exit ], [ %eh.lpad-body104, %.thread101 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn100

.thread101:                                       ; preds = %bb.c, %bb.f
  %eh.lpad-body104 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.f ], [ %i.aa, %bb.c ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header3map9HeaderMapECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(96) %2) #34
          to label %.thread unwind label %bb.ao

infloop:                                          ; preds = %.outer524, %infloop
  br label %infloop

infloop675:                                       ; preds = %.outer, %infloop675
  br label %infloop675
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.833 = alloca [16 x i8], align 8          ; 2 uses
  %i.a = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 -1, ptr %i.b, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !1034, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1047, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1047, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1047, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1047, !noundef !4
  tail call void %i.h(ptr noundef %i.f, ptr noundef %i.j, i64 noundef %i.l), !noalias !1047, !inline_history !1048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i16, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = and i16 %i.o, %i.m
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = zext i16 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %2, align 8                ; 3 uses
  %i.y = icmp eq ptr %i.x, null                   ; 3 uses
  %not..i.i = xor i1 %i.y, true
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !850
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %.not168 = icmp eq i64 %i.s, 0
  %i.ag = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, %bb.e
  %.sroa.07.0.ph = phi i64 [ %i.ay, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.e ] ; 4 uses
  %.sroa.0.0.ph = phi i64 [ %i.az, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread ], [ %i.q, %bb.e ] ; 2 uses
  %i.ah = icmp ult i64 %.sroa.0.0.ph, %i.s        ; 2 uses
  %.not168.not = xor i1 %.not168, true
  %brmerge = or i1 %i.ah, %.not168.not
  %.sroa.0.0.ph.mux = select i1 %i.ah, i64 %.sroa.0.0.ph, i64 0 ; 6 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.aj, -1
  br i1 %.not, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.p
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.ak = icmp samesign ugt i64 %.sroa.07.0.ph, 511
  br i1 %i.ak, label %.sink.split, label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.aj to i64                   ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.an = load i16, ptr %i.am, align 2, !noundef !4 ; 2 uses
  %i.ao = and i16 %i.an, %i.o
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub i64 %.sroa.0.0.ph.mux, %i.ap
  %i.ar = and i64 %i.aq, %i.u
  %i.as = icmp samesign ult i64 %i.ar, %.sroa.07.0.ph
  br i1 %i.as, label %bb.k, label %bb.j

.sink.split:                                      ; preds = %bb.g, %bb.k
  %i.at = load i64, ptr %1, align 8, !range !464, !noundef !4
  %i.au = icmp ne i64 %i.at, 2
  %i.av = zext i1 %i.au to i8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.k
  %.sroa.10.0 = phi i8 [ 0, %bb.k ], [ 0, %bb.g ], [ %i.av, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %.sroa.523.0..sroa_idx24, align 8
  %.sroa.728.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %.sroa.728.0..sroa_idx29, align 8
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, i64 16, i1 false)
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.836.0..sroa_idx37, align 8
  %.sroa.941.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.m, ptr %.sroa.941.0..sroa_idx42, align 8
  %.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx46, align 2
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = icmp eq i16 %i.an, %i.m
  br i1 %i.aw, label %bb.l, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.ax = icmp samesign ugt i64 %.sroa.07.0.ph, 511
  br i1 %i.ax, label %.sink.split, label %bb.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.o, %bb.m, %.split, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.j
  %i.ay = add nuw nsw i64 %.sroa.07.0.ph, 1
  %i.az = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer

bb.l:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.al
  br i1 %i.bb, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw [104 x i8], ptr %i.bc, i64 %i.al ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !noundef !4
  %i.bg = icmp ne ptr %i.bf, null                 ; 2 uses
  %i.bh = xor i1 %i.bg, %i.y
  br i1 %i.bh, label %bb.n, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.bg, label %bb.o, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.assume(i1 %not..i.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  %i.bk = icmp eq i64 %i.bj, %i.ac
  br i1 %i.bk, label %.split, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bm, ptr %i.ad, i64 %i.ac)
  %i.bn = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bn, label %bb.q, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %bb.l
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #31
          to label %bb.f unwind label %bb.r

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.y)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bp = load i8, ptr %i.bo, align 8, !range !850, !noundef !4
  %i.bq = icmp eq i8 %i.bp, %i.aa
  br i1 %i.bq, label %.thread, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

.thread:                                          ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx2677 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx2677, align 8
  %.sroa.728.0..sroa_idx3178 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.728.0..sroa_idx3178, align 8
  %.sroa.10.0..sroa_idx4880 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx4880, align 2
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.q:                                             ; preds = %.split
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx26, align 8
  %.sroa.728.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.728.0..sroa_idx31, align 8
  %.sroa.10.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx48, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !1067, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !1067, !nonnull !4, !noundef !4
  tail call void %i.bu(ptr noundef %i.bs, ptr noundef %i.ad, i64 noundef %i.ac), !noalias !1067, !inline_history !1048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.q, %.thread, %bb.d, %bb.c, %bb.i
  ret void

.noexc:                                           ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.bv

bb.r:                                             ; preds = %bb.a, %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %i.bw = load ptr, ptr %2, align 8, !alias.scope !1074, !noundef !4 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.noexc, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !1087, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1087, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !1087, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1087, !noundef !4
  invoke void %i.cb(ptr noundef %i.bz, ptr noundef %i.cd, i64 noundef %i.cf)
          to label %.noexc unwind label %bb.t, !inline_history !942

bb.t:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.aw

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1097, !noundef !4
  %i.f = load ptr, ptr %2, align 8, !alias.scope !1097, !nonnull !4, !align !27, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1097, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1097, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1097, !noundef !4
  invoke void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.au, !inline_history !818

bb.d:                                             ; preds = %bb.b
  %i.m = tail call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i16, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = and i16 %i.o, %i.m
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.u = zext i16 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = load ptr, ptr %1, align 8                ; 8 uses
  %i.y = icmp eq ptr %i.x, null                   ; 8 uses
  %not..i.i = xor i1 %i.y, true
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !850
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8            ; 9 uses
  %i.ad = load ptr, ptr %i.z, align 8             ; 8 uses
  %.not217 = icmp eq i64 %i.t, 0
  %i.ae = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  br label %.outer199

.outer199:                                        ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.09.0.ph = phi i64 [ %i.bu, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.01.0.ph = phi i64 [ %i.bv, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread ], [ %i.q, %bb.d ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.01.0.ph, %i.t       ; 2 uses
  %.not217.not = xor i1 %.not217, true
  %brmerge = or i1 %i.af, %.not217.not
  %.sroa.01.0.ph.mux = select i1 %i.af, i64 %.sroa.01.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer199
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.01.0.ph.mux ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.ah, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.z
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ai = zext i16 %i.ah to i64                   ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !noundef !4 ; 2 uses
  %i.al = and i16 %i.ak, %i.o
  %i.am = zext i16 %i.al to i64
  %i.an = sub i64 %.sroa.01.0.ph.mux, %i.am
  %i.ao = and i64 %i.an, %i.u
  %i.ap = icmp samesign ult i64 %i.ao, %.sroa.09.0.ph
  br i1 %i.ap, label %bb.u, label %bb.t

bb.g:                                             ; preds = %.loopexit
  %i.aq = load i64, ptr %i.v, align 8, !noundef !4 ; 6 uses
  %i.ar = icmp ult i64 %i.aq, 88686269585142076
  tail call void @llvm.assume(i1 %i.ar)
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.690.0.copyload = load ptr, ptr %.sroa.690.0..sroa_idx, align 8 ; 3 uses
  %.sroa.091.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.593.0.copyload = load ptr, ptr %.sroa.593.0..sroa_idx, align 8 ; 2 uses
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.696.0.copyload = load i64, ptr %.sroa.696.0..sroa_idx, align 8 ; 2 uses
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.799.0.copyload = load ptr, ptr %.sroa.799.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8102.0.copyload = load i64, ptr %.sroa.8102.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %i.as = icmp samesign ugt i64 %i.aq, 32767
  br i1 %i.as, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1101
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.m, ptr %i.au, align 8, !noalias !1101
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.x, ptr %i.av, align 8, !noalias !1104
  %.sroa.675.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ad, ptr %.sroa.675.0..sroa_idx76, align 8, !noalias !1104
  %.sroa.879.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.ac, ptr %.sroa.879.0..sroa_idx80, align 8, !noalias !1104
  %.sroa.1083.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.690.0.copyload, ptr %.sroa.1083.0..sroa_idx84, align 8, !noalias !1104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.091.0.copyload, ptr %i.aw, align 8, !noalias !1105
  %.sroa.593.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.593.0.copyload, ptr %.sroa.593.0..sroa_idx94, align 8, !noalias !1105
  %.sroa.696.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.696.0.copyload, ptr %.sroa.696.0..sroa_idx97, align 8, !noalias !1105
  %.sroa.799.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.799.0.copyload, ptr %.sroa.799.0..sroa_idx100, align 8, !noalias !1105
  %.sroa.8102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8102.0.copyload, ptr %.sroa.8102.0..sroa_idx103, align 8, !noalias !1105
  store i64 0, ptr %i.b, align 8, !noalias !1101
  %i.ax = load i64, ptr %i.at, align 8, !range !204, !alias.scope !1106, !noalias !1109, !noundef !4
  %i.ay = icmp eq i64 %i.aq, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5yJ8ynDFnAQ_9axum_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.q unwind label %bb.j, !noalias !1109

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.b) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36 unwind label %bb.k, !noalias !1111

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1109
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.091.0.copyload) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.091.0.copyload, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1112, !nonnull !4, !noundef !4
  invoke void %i.bc(ptr noundef %.sroa.799.0.copyload, ptr noundef %.sroa.593.0.copyload, i64 noundef %.sroa.696.0.copyload)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.n, !noalias !1101, !inline_history !818

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.l
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1119, !nonnull !4, !noundef !4
  tail call void %i.be(ptr noundef %.sroa.690.0.copyload, ptr noundef %i.ad, i64 noundef %i.ac), !inline_history !1132
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.n:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !1133, !nonnull !4, !noundef !4
  invoke void %i.bh(ptr noundef %.sroa.690.0.copyload, ptr noundef %i.ad, i64 noundef %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36 unwind label %bb.p, !noalias !1101, !inline_history !942

bb.p:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1101
  unreachable

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.bj = load ptr, ptr %i.w, align 8, !alias.scope !1106, !noalias !1109, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw [104 x i8], ptr %i.bj, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !1111
  %i.bl = add nuw nsw i64 %i.aq, 1
  store i64 %i.bl, ptr %i.v, align 8, !alias.scope !1106, !noalias !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1101
  %i.bm = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.01.0.ph.mux, %i.bm
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.bp = trunc nuw nsw i64 %i.aq to i16
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.01.0.ph.mux ; 2 uses
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i16 %i.m, ptr %i.br, align 2
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.ph.mux, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #31
  unreachable

bb.t:                                             ; preds = %bb.f
  %i.bs = icmp eq i16 %i.ak, %i.m
  br i1 %i.bs, label %bb.v, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.u:                                             ; preds = %bb.f
  %i.bt = icmp samesign ugt i64 %.sroa.09.0.ph, 511
  br i1 %i.bt, label %bb.ad, label %bb.ae

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.y, %bb.w, %.split, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.t
  %i.bu = add nuw nsw i64 %.sroa.09.0.ph, 1
  %i.bv = add i64 %.sroa.01.0.ph.mux, 1
  br label %.outer199

bb.v:                                             ; preds = %bb.t
  %i.bw = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %i.ai
  br i1 %i.bx, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw [104 x i8], ptr %i.by, i64 %i.ai ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !noundef !4
  %i.cc = icmp ne ptr %i.cb, null                 ; 2 uses
  %i.cd = xor i1 %i.cc, %i.y
  br i1 %i.cd, label %bb.x, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %bb.w
  br i1 %i.cc, label %bb.y, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.assume(i1 %not..i.i)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4
  %i.cg = icmp eq i64 %i.cf, %i.ac
  br i1 %i.cg, label %.split, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ci, ptr %i.ad, i64 %i.ac)
  %i.cj = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cj, label %bb.aa, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #31
          to label %bb.e unwind label %bb.aw

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.x
  tail call void @llvm.assume(i1 %i.y)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cl = load i8, ptr %i.ck, align 8, !range !850, !noundef !4
  %i.cm = icmp eq i8 %i.cl, %i.aa
  br i1 %i.cm, label %bb.aa, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %.split
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtNtCs6P5GRezSnwZ_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server(i64 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(104) %i.bz, ptr noalias noundef align 8 dereferenceable(24) %i.cn, ptr noalias noundef align 8 captures(address) dereferenceable(40) %2)
          to label %bb.ab unwind label %bb.at

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !1164, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !1164, !nonnull !4, !noundef !4
  tail call void %i.cr(ptr noundef %i.cp, ptr noundef %i.ad, i64 noundef %i.ac), !noalias !1164, !inline_history !1048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.ap, %bb.ar, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i39, %bb.ak, %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i, %bb.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit, %bb.ac, %bb.ab, %bb.r
  %.sroa.0.1 = phi i8 [ 1, %bb.ac ], [ 0, %bb.r ], [ 2, %bb.av ], [ 2, %bb.m ], [ 1, %bb.ab ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ 0, %bb.as ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i39 ], [ 2, %bb.ak ]
  ret i8 %.sroa.0.1

bb.ad:                                            ; preds = %bb.u
  %i.cs = load i64, ptr %0, align 8, !range !464, !noundef !4
  %i.ct = icmp ne i64 %i.cs, 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.u
  %.sroa.016.0 = phi i1 [ %i.ct, %bb.ad ], [ false, %bb.u ]
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.658.0.copyload = load ptr, ptr %.sroa.658.0..sroa_idx, align 8 ; 3 uses
  %.sroa.059.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.561.0.copyload = load ptr, ptr %.sroa.561.0..sroa_idx, align 8 ; 2 uses
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.664.0.copyload = load i64, ptr %.sroa.664.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.869.0.copyload = load i64, ptr %.sroa.869.0..sroa_idx, align 8
  %i.cu = load i64, ptr %i.v, align 8, !alias.scope !1165, !noalias !1168, !noundef !4 ; 6 uses
  %i.cv = icmp ult i64 %i.cu, 88686269585142076
  tail call void @llvm.assume(i1 %i.cv)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.cw = icmp samesign ugt i64 %i.cu, 32767
  br i1 %i.cw, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1174
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %i.m, ptr %i.cy, align 8, !noalias !1174
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.x, ptr %i.cz, align 8, !noalias !1177
  %.sroa.6.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ad, ptr %.sroa.6.0..sroa_idx48, align 8, !noalias !1177
  %.sroa.8.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.ac, ptr %.sroa.8.0..sroa_idx51, align 8, !noalias !1177
  %.sroa.10.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.658.0.copyload, ptr %.sroa.10.0..sroa_idx54, align 8, !noalias !1177
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.059.0.copyload, ptr %i.da, align 8, !noalias !1178
  %.sroa.561.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.561.0.copyload, ptr %.sroa.561.0..sroa_idx62, align 8, !noalias !1178
  %.sroa.664.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.664.0.copyload, ptr %.sroa.664.0..sroa_idx65, align 8, !noalias !1178
  %.sroa.7.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx67, align 8, !noalias !1178
  %.sroa.869.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.869.0.copyload, ptr %.sroa.869.0..sroa_idx70, align 8, !noalias !1178
  store i64 0, ptr %i.a, align 8, !noalias !1174
  %i.db = load i64, ptr %i.cx, align 8, !range !204, !alias.scope !1179, !noalias !1182, !noundef !4
  %i.dc = icmp eq i64 %i.cu, %i.db
  br i1 %i.dc, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5yJ8ynDFnAQ_9axum_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %bb.ao unwind label %bb.ah, !noalias !1182

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.a) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36 unwind label %bb.ai, !noalias !1184

bb.ai:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1182
  unreachable

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.059.0.copyload) ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !1185, !nonnull !4, !noundef !4
  invoke void %i.dg(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.561.0.copyload, i64 noundef %.sroa.664.0.copyload)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i39 unwind label %bb.al, !noalias !1174, !inline_history !818

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i39: ; preds = %bb.aj
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i39
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !1192, !nonnull !4, !noundef !4
  tail call void %i.di(ptr noundef %.sroa.658.0.copyload, ptr noundef %i.ad, i64 noundef %i.ac), !inline_history !1132
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.al:                                            ; preds = %bb.aj
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !1205, !nonnull !4, !noundef !4
  invoke void %i.dl(ptr noundef %.sroa.658.0.copyload, ptr noundef %i.ad, i64 noundef %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36 unwind label %bb.an, !noalias !1174, !inline_history !942

bb.an:                                            ; preds = %bb.am
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1174
  unreachable

bb.ao:                                            ; preds = %bb.ag, %bb.af
  %i.dn = load ptr, ptr %i.w, align 8, !alias.scope !1179, !noalias !1182, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw [104 x i8], ptr %i.dn, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !1184
  %i.dp = add nuw nsw i64 %i.cu, 1
  store i64 %i.dp, ptr %i.v, align 8, !alias.scope !1179, !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1174
  %i.dq = load ptr, ptr %i.r, align 8, !alias.scope !1165, !noalias !1168, !nonnull !4, !noundef !4
  %i.dr = load i64, ptr %i.s, align 8, !alias.scope !1165, !noalias !1168, !noundef !4 ; 2 uses
  %i.ds = trunc nuw nsw i64 %i.cu to i16
  %.not218 = icmp eq i64 %i.dr, 0
  br label %.outer

.outer:                                           ; preds = %bb.aq, %bb.ao
  %.sroa.6.0.i.ph = phi i16 [ %i.ea, %bb.aq ], [ %i.m, %bb.ao ] ; 2 uses
  %.sroa.07.0.i.ph = phi i16 [ %i.dv, %bb.aq ], [ %i.ds, %bb.ao ] ; 2 uses
  %.sroa.05.0.i.ph = phi i64 [ %i.dz, %bb.aq ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.eb, %bb.aq ], [ %.sroa.01.0.ph.mux, %bb.ao ] ; 2 uses
  %i.dt = icmp ult i64 %.sroa.0.0.i.ph, %i.dr     ; 2 uses
  %.not218.not = xor i1 %.not218, true
  %brmerge233 = or i1 %i.dt, %.not218.not
  %.sroa.0.0.i.ph.mux = select i1 %i.dt, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge233, label %.loopexit216, label %infloop232

.loopexit216:                                     ; preds = %.outer
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.dv = load i16, ptr %i.du, align 2, !noalias !1168, !noundef !4 ; 2 uses
  %i.dw = icmp eq i16 %i.dv, -1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 3 uses
  br i1 %i.dw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit216
  store i16 %.sroa.07.0.i.ph, ptr %i.du, align 2, !noalias !1168
  store i16 %.sroa.6.0.i.ph, ptr %i.dx, align 2, !noalias !1168
  %i.dy = icmp ugt i64 %.sroa.05.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.016.0, i1 true, i1 %i.dy
  br i1 %or.cond.i, label %bb.ar, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.aq:                                            ; preds = %.loopexit216
  %i.dz = add i64 %.sroa.05.0.i.ph, 1
  %i.ea = load i16, ptr %i.dx, align 2, !noalias !1168, !noundef !4
  store i16 %.sroa.07.0.i.ph, ptr %i.du, align 2, !noalias !1168
  store i16 %.sroa.6.0.i.ph, ptr %i.dx, align 2, !noalias !1168
  %i.eb = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.ar:                                            ; preds = %bb.ap
  %i.ec = load i64, ptr %0, align 8, !range !464, !alias.scope !1165, !noalias !1168, !noundef !4
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.as:                                            ; preds = %bb.ar
  store i64 1, ptr %0, align 8, !alias.scope !1165, !noalias !1168
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.at:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.au:                                            ; preds = %bb.c
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.ef = load ptr, ptr %1, align 8, !alias.scope !1224, !noundef !4 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.av

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !1237, !noundef !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !1237, !nonnull !4, !noundef !4
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !1237, !noundef !4
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !1237, !noundef !4
  tail call void %i.ek(ptr noundef %i.ei, ptr noundef %i.em, i64 noundef %i.eo), !noalias !1237, !inline_history !1048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.aw:                                            ; preds = %bb.a, %bb.z
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !1247, !noundef !4
  %i.er = load ptr, ptr %2, align 8, !alias.scope !1247, !nonnull !4, !align !27, !noundef !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !noalias !1247, !nonnull !4, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !1247, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1247, !noundef !4
  invoke void %i.et(ptr noundef %i.eq, ptr noundef %i.ev, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ax, !inline_history !818

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36: ; preds = %bb.o, %bb.n, %bb.j, %bb.am, %bb.al, %bb.ah, %.thread, %bb.ay
  %.pn118 = phi { ptr, i32 } [ %.pn119, %.thread ], [ %i.dj, %bb.al ], [ %.pn119, %bb.ay ], [ %i.bf, %bb.n ], [ %i.az, %bb.j ], [ %i.bf, %bb.o ], [ %i.dd, %bb.ah ], [ %i.dj, %bb.am ]
  resume { ptr, i32 } %.pn118

.thread:                                          ; preds = %bb.aw, %bb.au, %bb.at
  %.pn119 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp125, %bb.at ], [ %i.ee, %bb.au ], [ %lpad.thr_comm, %bb.aw ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %i.ez = load ptr, ptr %1, align 8, !alias.scope !1254, !noundef !4 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36, label %bb.ay

bb.ay:                                            ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !1267, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !1267, !nonnull !4, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !1267, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !1267, !noundef !4
  invoke void %i.fe(ptr noundef %i.fc, ptr noundef %i.fg, i64 noundef %i.fi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit36 unwind label %bb.ax, !inline_history !942

infloop:                                          ; preds = %.outer199, %infloop
  br label %infloop

infloop232:                                       ; preds = %.outer, %infloop232
  br label %infloop232
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.bb

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1277, !noundef !4
  %i.g = load ptr, ptr %3, align 8, !alias.scope !1277, !nonnull !4, !align !27, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1277, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1277, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1277, !noundef !4
  invoke void %i.i(ptr noundef %i.f, ptr noundef %i.k, i64 noundef %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.az, !inline_history !818

bb.d:                                             ; preds = %bb.b
  %i.n = tail call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i16, ptr %i.o, align 8, !noundef !4 ; 3 uses
  %i.q = and i16 %i.p, %i.n
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = zext i16 %i.p to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.y = load ptr, ptr %2, align 8                ; 8 uses
  %i.z = icmp eq ptr %i.y, null                   ; 8 uses
  %not..i.i = xor i1 %i.z, true
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !850
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 9 uses
  %i.ae = load ptr, ptr %i.aa, align 8            ; 8 uses
  %.not250 = icmp eq i64 %i.u, 0
  %i.af = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  br label %.outer232

.outer232:                                        ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.08.0.ph = phi i64 [ %i.bw, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.bx, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread ], [ %i.r, %bb.d ] ; 2 uses
  %i.ag = icmp ult i64 %.sroa.0.0.ph, %i.u        ; 2 uses
  %.not250.not = xor i1 %.not250, true
  %brmerge = or i1 %i.ag, %.not250.not
  %.sroa.0.0.ph.mux = select i1 %i.ag, i64 %.sroa.0.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer232
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.ai, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.aa
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.aj = zext i16 %i.ai to i64                   ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !noundef !4 ; 2 uses
  %i.am = and i16 %i.al, %i.p
  %i.an = zext i16 %i.am to i64
  %i.ao = sub i64 %.sroa.0.0.ph.mux, %i.an
  %i.ap = and i64 %i.ao, %i.v
  %i.aq = icmp samesign ult i64 %i.ap, %.sroa.08.0.ph
  br i1 %i.aq, label %bb.v, label %bb.u

bb.g:                                             ; preds = %.loopexit
  %i.ar = load i64, ptr %i.w, align 8, !noundef !4 ; 6 uses
  %i.as = icmp ult i64 %i.ar, 88686269585142076
  tail call void @llvm.assume(i1 %i.as)
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6117.0.copyload = load ptr, ptr %.sroa.6117.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0118.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5120.0.copyload = load ptr, ptr %.sroa.5120.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6123.0.copyload = load i64, ptr %.sroa.6123.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7126.0.copyload = load ptr, ptr %.sroa.7126.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.8129.0.copyload = load i64, ptr %.sroa.8129.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.at = icmp samesign ugt i64 %i.ar, 32767
  br i1 %i.at, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1281
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.n, ptr %i.av, align 8, !noalias !1281
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.y, ptr %i.aw, align 8, !noalias !1284
  %.sroa.6102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ae, ptr %.sroa.6102.0..sroa_idx103, align 8, !noalias !1284
  %.sroa.8106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.ad, ptr %.sroa.8106.0..sroa_idx107, align 8, !noalias !1284
  %.sroa.10110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.6117.0.copyload, ptr %.sroa.10110.0..sroa_idx111, align 8, !noalias !1284
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0118.0.copyload, ptr %i.ax, align 8, !noalias !1285
  %.sroa.5120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.5120.0.copyload, ptr %.sroa.5120.0..sroa_idx121, align 8, !noalias !1285
  %.sroa.6123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6123.0.copyload, ptr %.sroa.6123.0..sroa_idx124, align 8, !noalias !1285
  %.sroa.7126.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7126.0.copyload, ptr %.sroa.7126.0..sroa_idx127, align 8, !noalias !1285
  %.sroa.8129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8129.0.copyload, ptr %.sroa.8129.0..sroa_idx130, align 8, !noalias !1285
  store i64 0, ptr %i.b, align 8, !noalias !1281
  %i.ay = load i64, ptr %i.au, align 8, !range !204, !alias.scope !1286, !noalias !1289, !noundef !4
  %i.az = icmp eq i64 %i.ar, %i.ay
  br i1 %i.az, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5yJ8ynDFnAQ_9axum_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.r unwind label %bb.j, !noalias !1289

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.b) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45 unwind label %bb.k, !noalias !1291

bb.k:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1289
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0118.0.copyload) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !1292, !nonnull !4, !noundef !4
  invoke void %i.bd(ptr noundef %.sroa.7126.0.copyload, ptr noundef %.sroa.5120.0.copyload, i64 noundef %.sroa.6123.0.copyload)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.n, !noalias !1281, !inline_history !818

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.l
  br i1 %i.z, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1299, !nonnull !4, !noundef !4
  tail call void %i.bf(ptr noundef %.sroa.6117.0.copyload, ptr noundef %i.ae, i64 noundef %i.ad), !inline_history !1132
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1312, !nonnull !4, !noundef !4
  invoke void %i.bi(ptr noundef %.sroa.6117.0.copyload, ptr noundef %i.ae, i64 noundef %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45 unwind label %bb.p, !noalias !1281, !inline_history !942

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1281
  unreachable

bb.q:                                             ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.bk, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.r:                                             ; preds = %bb.i, %bb.h
  %i.bl = load ptr, ptr %i.x, align 8, !alias.scope !1286, !noalias !1289, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw [104 x i8], ptr %i.bl, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !1291
  %i.bn = add nuw nsw i64 %i.ar, 1
  store i64 %i.bn, ptr %i.w, align 8, !alias.scope !1286, !noalias !1289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1281
  %i.bo = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.bp = icmp ult i64 %.sroa.0.0.ph.mux, %i.bo
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.br = trunc nuw nsw i64 %i.ar to i16
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.0.0.ph.mux ; 2 uses
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i16 %i.n, ptr %i.bt, align 2
  br label %.thread

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph.mux, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #31
  unreachable

.thread:                                          ; preds = %bb.ax, %bb.aw, %bb.au, %bb.s
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.u:                                             ; preds = %bb.f
  %i.bu = icmp eq i16 %i.al, %i.n
  br i1 %i.bu, label %bb.w, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.v:                                             ; preds = %bb.f
  %i.bv = icmp samesign ugt i64 %.sroa.08.0.ph, 511
  br i1 %i.bv, label %bb.ai, label %bb.aj

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.z, %bb.x, %.split, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.u
  %i.bw = add nuw nsw i64 %.sroa.08.0.ph, 1
  %i.bx = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer232

bb.w:                                             ; preds = %bb.u
  %i.by = load i64, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %i.bz = icmp ugt i64 %i.by, %i.aj
  br i1 %i.bz, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ca = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.cb = getelementptr inbounds nuw [104 x i8], ptr %i.ca, i64 %i.aj ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !noundef !4
  %i.ce = icmp ne ptr %i.cd, null                 ; 2 uses
  %i.cf = xor i1 %i.ce, %i.z
  br i1 %i.cf, label %bb.y, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.y:                                             ; preds = %bb.x
  br i1 %i.ce, label %bb.z, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.assume(i1 %not..i.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4
  %i.ci = icmp eq i64 %i.ch, %i.ad
  br i1 %i.ci, label %.split, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ck, ptr %i.ae, i64 %i.ad)
  %i.cl = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cl, label %bb.ab, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %bb.w
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #31
          to label %bb.e unwind label %bb.bb

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.y
  tail call void @llvm.assume(i1 %i.z)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cn = load i8, ptr %i.cm, align 8, !range !850, !noundef !4
  %i.co = icmp eq i8 %i.cn, %i.ab
  br i1 %i.co, label %bb.ab, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.ab:                                            ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %.split
  %i.cp = load <2 x ptr>, ptr %3, align 8         ; 3 uses
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.690.0.copyload = load i64, ptr %.sroa.690.0..sroa_idx, align 8 ; 2 uses
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.793.0.copyload = load ptr, ptr %.sroa.793.0..sroa_idx, align 8 ; 2 uses
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.896.0.copyload = load i64, ptr %.sroa.896.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.cq = load i64, ptr %i.cb, align 8, !range !183, !noalias !1328, !noundef !4
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %.invoke.i, %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = extractelement <2 x ptr> %i.cp, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !1331, !nonnull !4, !noundef !4
  %i.cw = extractelement <2 x ptr> %i.cp, i64 1
  invoke void %i.cv(ptr noundef %.sroa.793.0.copyload, ptr noundef %i.cw, i64 noundef %.sroa.690.0.copyload)
          to label %.thread145 unwind label %bb.af, !noalias !1328, !inline_history !818

bb.ad:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !1328, !noundef !4
  invoke fastcc void @_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cy)
          to label %._crit_edge.i unwind label %bb.ac, !noalias !1338

._crit_edge.i:                                    ; preds = %bb.ad
  %.pre.i = load i64, ptr %i.w, align 8, !alias.scope !1325, !noalias !1338
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i, %bb.ab
  %i.cz = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.by, %bb.ab ] ; 2 uses
  %i.da = icmp ugt i64 %i.cz, %i.aj
  br i1 %i.da, label %bb.ag, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ae
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #31
          to label %.cont.i unwind label %bb.ac, !noalias !1328

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1328
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dc = load ptr, ptr %i.x, align 8, !alias.scope !1325, !noalias !1338, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw [104 x i8], ptr %i.dc, i64 %i.aj ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 32, i1 false)
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 56 ; 2 uses
  %.sroa.483.0.copyload = load i8, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !1339
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 57
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.584.0..sroa_idx, i64 7, i1 false)
  store <2 x ptr> %i.cp, ptr %i.de, align 8, !noalias !1340
  %.sroa.690.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store i64 %.sroa.690.0.copyload, ptr %.sroa.690.0..sroa_idx91, align 8, !noalias !1340
  %.sroa.793.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  store ptr %.sroa.793.0.copyload, ptr %.sroa.793.0..sroa_idx94, align 8, !noalias !1340
  store i64 %.sroa.896.0.copyload, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !1340
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.483.0.copyload, ptr %.sroa.3.0..sroa_idx17, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !1359, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !1359, !nonnull !4, !noundef !4
  tail call void %i.di(ptr noundef %i.dg, ptr noundef %i.ae, i64 noundef %i.ad), !noalias !1359, !inline_history !1048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.ba, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit, %bb.ah, %bb.ag, %bb.q, %bb.ay, %.thread
  ret void

bb.ai:                                            ; preds = %bb.v
  %i.dj = load i64, ptr %1, align 8, !range !464, !noundef !4
  %i.dk = icmp ne i64 %i.dj, 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.v
  %.sroa.013.0 = phi i1 [ %i.dk, %bb.ai ], [ false, %bb.v ]
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.668.0.copyload = load ptr, ptr %.sroa.668.0..sroa_idx, align 8 ; 3 uses
  %.sroa.069.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.571.0.copyload = load ptr, ptr %.sroa.571.0..sroa_idx, align 8 ; 2 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.674.0.copyload = load i64, ptr %.sroa.674.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.879.0.copyload = load i64, ptr %.sroa.879.0..sroa_idx, align 8
  %i.dl = load i64, ptr %i.w, align 8, !alias.scope !1360, !noalias !1363, !noundef !4 ; 6 uses
  %i.dm = icmp ult i64 %i.dl, 88686269585142076
  tail call void @llvm.assume(i1 %i.dm)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.dn = icmp samesign ugt i64 %i.dl, 32767
  br i1 %i.dn, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1369
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %i.n, ptr %i.dp, align 8, !noalias !1369
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.y, ptr %i.dq, align 8, !noalias !1372
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ae, ptr %.sroa.6.0..sroa_idx57, align 8, !noalias !1372
  %.sroa.8.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.ad, ptr %.sroa.8.0..sroa_idx60, align 8, !noalias !1372
  %.sroa.10.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.668.0.copyload, ptr %.sroa.10.0..sroa_idx63, align 8, !noalias !1372
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.069.0.copyload, ptr %i.dr, align 8, !noalias !1373
  %.sroa.571.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.571.0.copyload, ptr %.sroa.571.0..sroa_idx72, align 8, !noalias !1373
  %.sroa.674.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.674.0.copyload, ptr %.sroa.674.0..sroa_idx75, align 8, !noalias !1373
  %.sroa.7.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx77, align 8, !noalias !1373
  %.sroa.879.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.879.0.copyload, ptr %.sroa.879.0..sroa_idx80, align 8, !noalias !1373
  store i64 0, ptr %i.a, align 8, !noalias !1369
  %i.ds = load i64, ptr %i.do, align 8, !range !204, !alias.scope !1374, !noalias !1377, !noundef !4
  %i.dt = icmp eq i64 %i.dl, %i.ds
  br i1 %i.dt, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5yJ8ynDFnAQ_9axum_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.at unwind label %bb.am, !noalias !1377

bb.am:                                            ; preds = %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.a) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45 unwind label %bb.an, !noalias !1379

bb.an:                                            ; preds = %bb.am
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1377
  unreachable

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.069.0.copyload) ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !1380, !nonnull !4, !noundef !4
  invoke void %i.dx(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.571.0.copyload, i64 noundef %.sroa.674.0.copyload)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i48 unwind label %bb.aq, !noalias !1369, !inline_history !818

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i48: ; preds = %bb.ao
  br i1 %i.z, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i48
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1387, !nonnull !4, !noundef !4
  tail call void %i.dz(ptr noundef %.sroa.668.0.copyload, ptr noundef %i.ae, i64 noundef %i.ad), !inline_history !1132
  br label %bb.ay

bb.aq:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !1400, !nonnull !4, !noundef !4
  invoke void %i.ec(ptr noundef %.sroa.668.0.copyload, ptr noundef %i.ae, i64 noundef %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45 unwind label %bb.as, !noalias !1369, !inline_history !942

bb.as:                                            ; preds = %bb.ar
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !1369
  unreachable

bb.at:                                            ; preds = %bb.al, %bb.ak
  %i.ee = load ptr, ptr %i.x, align 8, !alias.scope !1374, !noalias !1377, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw [104 x i8], ptr %i.ee, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ef, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !1379
  %i.eg = add nuw nsw i64 %i.dl, 1
  store i64 %i.eg, ptr %i.w, align 8, !alias.scope !1374, !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1369
  %i.eh = load ptr, ptr %i.s, align 8, !alias.scope !1360, !noalias !1363, !nonnull !4, !noundef !4
  %i.ei = load i64, ptr %i.t, align 8, !alias.scope !1360, !noalias !1363, !noundef !4 ; 2 uses
  %i.ej = trunc nuw nsw i64 %i.dl to i16
  %.not251 = icmp eq i64 %i.ei, 0
  br label %.outer

.outer:                                           ; preds = %bb.av, %bb.at
  %.sroa.6.0.i.ph = phi i16 [ %i.er, %bb.av ], [ %i.n, %bb.at ] ; 2 uses
  %.sroa.07.0.i.ph = phi i16 [ %i.em, %bb.av ], [ %i.ej, %bb.at ] ; 2 uses
  %.sroa.05.0.i.ph = phi i64 [ %i.eq, %bb.av ], [ 0, %bb.at ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.es, %bb.av ], [ %.sroa.0.0.ph.mux, %bb.at ] ; 2 uses
  %i.ek = icmp ult i64 %.sroa.0.0.i.ph, %i.ei     ; 2 uses
  %.not251.not = xor i1 %.not251, true
  %brmerge266 = or i1 %i.ek, %.not251.not
  %.sroa.0.0.i.ph.mux = select i1 %i.ek, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge266, label %.loopexit249, label %infloop265

.loopexit249:                                     ; preds = %.outer
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.em = load i16, ptr %i.el, align 2, !noalias !1363, !noundef !4 ; 2 uses
  %i.en = icmp eq i16 %i.em, -1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 2 ; 3 uses
  br i1 %i.en, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit249
  store i16 %.sroa.07.0.i.ph, ptr %i.el, align 2, !noalias !1363
  store i16 %.sroa.6.0.i.ph, ptr %i.eo, align 2, !noalias !1363
  %i.ep = icmp ugt i64 %.sroa.05.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.013.0, i1 true, i1 %i.ep
  br i1 %or.cond.i, label %bb.aw, label %.thread

bb.av:                                            ; preds = %.loopexit249
  %i.eq = add i64 %.sroa.05.0.i.ph, 1
  %i.er = load i16, ptr %i.eo, align 2, !noalias !1363, !noundef !4
  store i16 %.sroa.07.0.i.ph, ptr %i.el, align 2, !noalias !1363
  store i16 %.sroa.6.0.i.ph, ptr %i.eo, align 2, !noalias !1363
  %i.es = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.aw:                                            ; preds = %bb.au
  %i.et = load i64, ptr %1, align 8, !range !464, !alias.scope !1360, !noalias !1363, !noundef !4
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  store i64 1, ptr %1, align 8, !alias.scope !1360, !noalias !1363
  br label %.thread

bb.ay:                                            ; preds = %bb.ap, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i48
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.ev, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.az:                                            ; preds = %bb.c
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.thread145

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.ex = load ptr, ptr %2, align 8, !alias.scope !1419, !noundef !4 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !1432, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !1432, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !1432, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !1432, !noundef !4
  tail call void %i.fc(ptr noundef %i.fa, ptr noundef %i.fe, i64 noundef %i.fg), !noalias !1432, !inline_history !1048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.bb:                                            ; preds = %bb.a, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !1442, !noundef !4
  %i.fj = load ptr, ptr %3, align 8, !alias.scope !1442, !nonnull !4, !align !27, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !1442, !nonnull !4, !noundef !4
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !1442, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !1442, !noundef !4
  invoke void %i.fl(ptr noundef %i.fi, ptr noundef %i.fn, i64 noundef %i.fp)
          to label %.thread145 unwind label %bb.bc, !inline_history !818

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45: ; preds = %bb.am, %bb.aq, %bb.ar, %bb.n, %bb.o, %bb.j, %.thread145, %bb.bd
  %.pn148 = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %.pn149, %.thread145 ], [ %.pn149, %bb.bd ], [ %i.ea, %bb.aq ], [ %i.ea, %bb.ar ], [ %i.du, %bb.am ], [ %i.bg, %bb.o ], [ %i.ba, %bb.j ]
  resume { ptr, i32 } %.pn148

.thread145:                                       ; preds = %bb.bb, %bb.az, %bb.ac
  %.pn149 = phi { ptr, i32 } [ %i.cs, %bb.ac ], [ %i.ew, %bb.az ], [ %lpad.thr_comm, %bb.bb ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  %i.fr = load ptr, ptr %2, align 8, !alias.scope !1449, !noundef !4 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45, label %bb.bd

bb.bd:                                            ; preds = %.thread145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !1462, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !1462, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !1462, !noundef !4
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !1462, !noundef !4
  invoke void %i.fw(ptr noundef %i.fu, ptr noundef %i.fy, i64 noundef %i.ga)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit45 unwind label %bb.bc, !inline_history !942

infloop:                                          ; preds = %.outer232, %infloop
  br label %infloop

infloop265:                                       ; preds = %.outer, %infloop265
  br label %infloop265
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1469, !noalias !1470, !noundef !4 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !1472
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !1470 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !1469, !noalias !1470, !noundef !4 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1469, !noalias !1470, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1469, !noalias !1470, !nonnull !4
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1469, !noalias !1470, !nonnull !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 5 uses
  %i.t = icmp eq ptr %i.s, null                   ; 4 uses
  %not..i.i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !850
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !1477, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !1477, !noundef !4 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1477, !noundef !4
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !1477, !noundef !4
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1477, !noundef !4
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !1477
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !850, !noalias !1477, !noundef !4
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #31
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !1496, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1496, !nonnull !4, !noundef !4
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.m, !inline_history !942

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.pre, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ null, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !1511, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !1511, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1511, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1511, !noundef !4
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !1511, !inline_history !1048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit2: ; preds = %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getRNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1518, !noalias !1519, !noundef !4 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !1519 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !1518, !noalias !1519, !noundef !4 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1518, !noalias !1519, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1518, !noalias !1519, !nonnull !4
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1518, !noalias !1519, !nonnull !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !1521, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, -1
  br i1 %.not.i.i, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !1521, !noundef !4 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ab
  br i1 %i.ac, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1521, !noundef !4
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !1521, !noundef !4
  %i.am = icmp eq ptr %i.al, null                 ; 3 uses
  %not..i.i.i.i = xor i1 %i.am, true
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1521, !noundef !4 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !1521, !noundef !4
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !1521, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !1521, !noundef !4
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !1521
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !850, !noalias !1521, !noundef !4
  %i.ay = load i8, ptr %i.q, align 8, !range !850, !noalias !1521, !noundef !4
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #31, !noalias !1521
  unreachable

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2RNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.loopexit, %bb.c, %bb.a, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0.i

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 1                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1531
  call void @_RNvNtNtCs6P5GRezSnwZ_4http6header4name9parse_hdr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull dereferenceable(64) %i.d, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256) @51), !noalias !1535
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !230, !noalias !1531, !noundef !4
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.b

_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1531
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2ReECsbakdBCgU4AF_16influxdb3_server.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1531
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1546, !noalias !1547, !noundef !4 ; 4 uses
  %i.j = icmp ult i64 %i.i, 88686269585142076
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !1550 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i16, ptr %i.m, align 8, !alias.scope !1546, !noalias !1547, !noundef !4 ; 3 uses
  %i.o = and i16 %i.n, %i.l
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1546, !noalias !1547, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1546, !noalias !1547, !nonnull !4
  %i.u = zext i16 %i.n to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1546, !noalias !1547, !nonnull !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !1551, !alias.scope !1552, !noalias !1553 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1552, !noalias !1553 ; 5 uses
  %i.ab = load ptr, ptr %i.b, align 8, !alias.scope !1552, !noalias !1553 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not2.i.i.i.i.i.i = icmp eq i8 %i.y, 2
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %.not = icmp eq i64 %i.r, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, %bb.c
  %.sroa.05.0.i.i.i.i.i.ph = phi i64 [ %i.au, %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.ph = phi i64 [ %i.av, %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i.i.i.i.i.ph, %i.r ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ai, %.not.not
  %.sroa.0.0.i.i.i.i.i.ph.mux = select i1 %i.ai, i64 %.sroa.0.0.i.i.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.0.0.i.i.i.i.i.ph.mux ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !1554, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ak, -1
  br i1 %.not.i.i.i.i.i, label %_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !noalias !1554, !noundef !4 ; 2 uses
  %i.ao = and i16 %i.an, %i.n
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub i64 %.sroa.0.0.i.i.i.i.i.ph.mux, %i.ap
  %i.ar = and i64 %i.aq, %i.u
  %i.as = icmp samesign ugt i64 %.sroa.05.0.i.i.i.i.i.ph, %i.ar
  br i1 %i.as, label %_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = icmp eq i16 %i.an, %i.l
  br i1 %i.at, label %bb.f, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i: ; preds = %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.m, %bb.j, %.split11.i.i.i.i.i, %bb.i, %bb.h, %bb.e
  %i.au = add nuw nsw i64 %.sroa.05.0.i.i.i.i.i.ph, 1
  %i.av = add i64 %.sroa.0.0.i.i.i.i.i.ph.mux, 1
  br label %.outer

bb.f:                                             ; preds = %bb.e
  %i.aw = icmp samesign ugt i64 %i.i, %i.al
  br i1 %i.aw, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %i.al ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !1555, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.y, label %bb.m [
    i8 2, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i
    i8 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.g
  br i1 %.not2.i.i.i.i.i.i, label %.split11.i.i.i.i.i, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

.split11.i.i.i.i.i:                               ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bb = load i8, ptr %i.ba, align 8, !range !850, !noalias !1555, !noundef !4
  %i.bc = icmp eq i8 %i.bb, %i.ag
  br i1 %i.bc, label %.loopexit.i, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !noalias !1555, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1555, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1558
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aa
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.bg, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull readonly %i.ab, ptr noundef nonnull readonly %i.ah), !noalias !1555
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  %i.bi = load i64, ptr %i.ad, align 8, !alias.scope !1565, !noalias !1558, !noundef !4 ; 3 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1565, !noalias !1558 ; 3 uses
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1562, !noalias !1558, !nonnull !4
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !1562, !noalias !1558, !nonnull !4
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i.i.i.i.i, i64 %i.bi)
  %exitcond.not.i2.not.i.i.i.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.bi
  br i1 %exitcond.not.i2.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bj = add i64 %i.bk, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %bb.l
  %i.bk = phi i64 [ %i.bj, %bb.l ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.k ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.bk
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.bl, align 1, !noalias !1570, !noundef !4
  %.val7.i.i.i.i.i.i.i.i = load i8, ptr %i.bm, align 1, !noalias !1570, !noundef !4
  %i.bn = zext i8 %.val7.i.i.i.i.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @51, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !1571, !noundef !4
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !noalias !1555, !noundef !4
  %i.bs = icmp eq i64 %i.br, %i.aa
  br i1 %i.bs, label %.split.i.i.i.i.i, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !1555, !noundef !4
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.bu, ptr nonnull %i.ab, i64 %i.aa), !noalias !1555
  %i.bv = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bv, label %.loopexit.i, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i

_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i = icmp ult i64 %i.bk, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1558
  br i1 %.not16.i.i.i.i.i, label %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, label %.loopexit.i

bb.n:                                             ; preds = %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #31, !noalias !1554
  unreachable

.loopexit.sink.split.i.i.i.i.i:                   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1558
  br label %.loopexit.i

_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.d, %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1531
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2ReECsbakdBCgU4AF_16influxdb3_server.exit

.loopexit.i:                                      ; preds = %_RNvXss_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %.split11.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1531
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2ReECsbakdBCgU4AF_16influxdb3_server.exit

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2ReECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.thread.i, %_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i, %.loopexit.i
  %.sroa.0.0.i = phi ptr [ %i.bw, %.loopexit.i ], [ null, %_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ null, %_RINvXs4_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ]
  ret ptr %.sroa.0.0.i

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap6insertNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !230, !alias.scope !1575, !noalias !1572, !noundef !4
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #31, !noalias !1577
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !alias.scope !1577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap6insertReECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1578
  store ptr %1, ptr %i.b, align 8, !noalias !1578
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %4, i64 40, i1 false), !noalias !1584
  call void @_RINvMsq_NtNtCs6P5GRezSnwZ_4http6header4nameNtB6_7HdrName11from_staticNCINvXs2_NtNtB8_3map16into_header_nameReNtB1e_6Sealed10try_insertNtNtB8_5value11HeaderValueE0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtB2F_6option6OptionB28_ENtB1g_14MaxSizeReachedEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !1585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !230, !alias.scope !1589, !noalias !1586, !noundef !4
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #31, !noalias !1591
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !alias.scope !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap6removeNtNtB8_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.09 = alloca [64 x i8], align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1592, !noalias !1595, !noundef !4 ; 4 uses
  %i.e = icmp ult i64 %i.d, 88686269585142076
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %..loopexit15_crit_edge, label %bb.b

..loopexit15_crit_edge:                           ; preds = %bb.a
  %.pre31.pre = load ptr, ptr %2, align 8, !alias.scope !1597
  br label %.loopexit15

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i16 @_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2), !noalias !1595 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !alias.scope !1592, !noalias !1595, !noundef !4 ; 3 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1592, !noalias !1595, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1592, !noalias !1595, !nonnull !4
  %i.p = zext i16 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1592, !noalias !1595, !nonnull !4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %2, align 8                ; 6 uses
  %i.v = icmp eq ptr %i.u, null                   ; 4 uses
  %not..i.i.i = xor i1 %i.v, true
  %i.w = load i8, ptr %i.s, align 8, !range !850
  %i.x = load i64, ptr %i.t, align 8              ; 3 uses
  %i.y = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br label %.outer67

.outer67:                                         ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.al, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.am, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.z = icmp ult i64 %.sroa.0.0.i.ph, %i.m       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.z, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.z, i64 %.sroa.0.0.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit76, label %infloop

.loopexit76:                                      ; preds = %.outer67
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !noalias !1602, !noundef !4 ; 3 uses
  %.not.i7 = icmp eq i16 %i.ab, -1
  br i1 %.not.i7, label %.loopexit15, label %bb.c

bb.c:                                             ; preds = %.loopexit76
  %i.ac = zext i16 %i.ab to i64                   ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !1602, !noundef !4 ; 2 uses
  %i.af = and i16 %i.ae, %i.i
  %i.ag = zext i16 %i.af to i64
  %i.ah = sub i64 %.sroa.0.0.i.ph.mux, %i.ag
  %i.ai = and i64 %i.ah, %i.p
  %i.aj = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ai
  br i1 %i.aj, label %.loopexit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp eq i16 %i.ae, %i.g
  br i1 %i.ak, label %bb.e, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.al = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.am = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer67

bb.e:                                             ; preds = %bb.d
  %i.an = icmp samesign ugt i64 %i.d, %i.ac
  br i1 %i.an, label %bb.f, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [104 x i8], ptr %i.r, i64 %i.ac ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !1602, !noundef !4
  %i.ar = icmp ne ptr %i.aq, null                 ; 2 uses
  %i.as = xor i1 %i.ar, %i.v
  br i1 %i.as, label %bb.g, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.h, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.au = load i64, ptr %i.at, align 8, !noalias !1602, !noundef !4
  %i.av = icmp eq i64 %i.au, %i.x
  br i1 %i.av, label %.split.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1602, !noundef !4
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ax, ptr %i.y, i64 %i.x), !noalias !1602
  %i.ay = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.v)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ba = load i8, ptr %i.az, align 8, !range !850, !noalias !1602, !noundef !4
  %i.bb = icmp eq i8 %i.ba, %i.w
  br i1 %i.bb, label %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i

.invoke:                                          ; preds = %bb.e, %bb.m
  %i.bc = phi i64 [ %.sroa.0.0.i.ph.mux, %bb.m ], [ %i.ac, %bb.e ]
  %i.bd = phi i64 [ %i.bz, %bb.m ], [ %i.d, %bb.e ]
  %i.be = phi ptr [ @144, %bb.m ], [ @41, %bb.e ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #31
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %.invoke, %bb.ae, %bb.o, %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %i.cv, %bb.t ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.j

bb.j:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1621, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !1621, !nonnull !4, !noundef !4
  invoke void %i.bj(ptr noundef %i.bh, ptr noundef %i.y, i64 noundef %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.af, !inline_history !942

.loopexit15:                                      ; preds = %bb.c, %.loopexit76, %..loopexit15_crit_edge
  %.pre31 = phi ptr [ %.pre31.pre, %..loopexit15_crit_edge ], [ %i.u, %.loopexit76 ], [ %i.u, %bb.c ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.bk, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit6: ; preds = %bb.ae, %.loopexit, %.loopexit15
  %i.bl = phi ptr [ %.pre31, %.loopexit15 ], [ %i.u, %.loopexit ], [ %i.u, %bb.ae ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit2, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1636, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !1636, !nonnull !4, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !1636, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1636, !noundef !4
  tail call void %i.bq(ptr noundef %i.bo, ptr noundef %i.bs, i64 noundef %i.bu), !noalias !1636, !inline_history !1048
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit2: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsbakdBCgU4AF_16influxdb3_server.exit6, %bb.k
  ret void

_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.split.i, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i
  %i.bv = load i64, ptr %i.ao, align 8, !range !183, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4
  invoke fastcc void @_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(96) %1, i64 noundef %i.by)
          to label %._crit_edge unwind label %bb.i

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !1637, !noalias !1640
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit
  %i.bz = phi i64 [ %.pre, %._crit_edge ], [ %i.m, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbakdBCgU4AF_16influxdb3_server.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %i.ca = icmp ult i64 %.sroa.0.0.i.ph.mux, %i.bz
  br i1 %i.ca, label %bb.n, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.n, align 8, !alias.scope !1637, !noalias !1640, !nonnull !4, !noundef !4 ; 5 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  store i16 -1, ptr %i.cc, align 2, !noalias !1642
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 0, ptr %i.cd, align 2, !noalias !1642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.ce = load i64, ptr %i.c, align 8, !alias.scope !1646, !noalias !1647, !noundef !4 ; 4 uses
  %i.cf = icmp ult i64 %i.ce, 88686269585142076
  tail call void @llvm.assume(i1 %i.cf)
  %.not.i.i = icmp samesign ugt i64 %i.ce, %i.ac
  br i1 %.not.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBI_5value11HeaderValueEE11swap_removeCsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.o, !prof !1649

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.ac, i64 noundef %i.ce) #31
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.o
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBI_5value11HeaderValueEE11swap_removeCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.n
  %i.cg = load ptr, ptr %i.q, align 8, !alias.scope !1646, !noalias !1647, !nonnull !4, !noundef !4 ; 2 uses
  %i.ch = getelementptr inbounds nuw [104 x i8], ptr %i.cg, i64 %i.ac ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.ch, i64 104, i1 false), !noalias !1650
  %i.ci = add nsw i64 %i.ce, -1                   ; 5 uses
  %i.cj = getelementptr inbounds nuw [104 x i8], ptr %i.cg, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ch, ptr noundef nonnull align 8 dereferenceable(104) %i.cj, i64 104, i1 false), !noalias !1651
  store i64 %i.ci, ptr %i.c, align 8, !alias.scope !1646, !noalias !1647
  %i.ck = icmp samesign ugt i64 %i.ci, %i.ac
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBI_5value11HeaderValueEE11swap_removeCsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.cl = load i16, ptr %i.h, align 8, !alias.scope !1637, !noalias !1640, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cn = load i16, ptr %i.cm, align 8, !noalias !1642, !noundef !4 ; 2 uses
  %i.co = and i16 %i.cn, %i.cl
  %i.cp = zext i16 %i.co to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.y, %bb.v, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBI_5value11HeaderValueEE11swap_removeCsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.cq = icmp eq i64 %i.ci, 0
  br i1 %i.cq, label %.loopexit, label %bb.z

bb.r:                                             ; preds = %.backedge, %bb.p
  %.sroa.01.0.i = phi i64 [ %i.cp, %bb.p ], [ %.sroa.01.0.i.be, %.backedge ] ; 4 uses
  %i.cr = icmp ult i64 %.sroa.01.0.i, %i.bz
  br i1 %i.cr, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.01.0.i
  %i.ct = load i16, ptr %i.cs, align 2, !noalias !1642, !noundef !4 ; 2 uses
  %.not.i = icmp eq i16 %i.ct, -1
  %i.cu = zext i16 %i.ct to i64
  %.not35.i = icmp samesign ugt i64 %i.ci, %i.cu
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not35.i
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.invoke.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(104) %i.a) #34
          to label %.body unwind label %bb.ad, !noalias !1642

bb.u:                                             ; preds = %bb.s
  %i.cw = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.r
  %.sroa.01.0.i.be = phi i64 [ %i.cw, %bb.u ], [ 0, %bb.r ]
  br label %bb.r

bb.v:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.01.0.i ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i16 %i.ab, ptr %i.cx, align 2, !noalias !1642
  store i16 %i.cn, ptr %i.cy, align 2, !noalias !1642
  %i.cz = load i64, ptr %i.ch, align 8, !range !183, !noalias !1642, !noundef !4
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.w, label %bb.q

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !noalias !1642, !noundef !4 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noalias !1642, !noundef !4 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !1637, !noalias !1640, !noundef !4 ; 4 uses
  %i.dh = icmp ult i64 %i.dc, %i.dg
  br i1 %i.dh, label %bb.x, label %.invoke.i

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !1637, !noalias !1640, !nonnull !4, !noundef !4 ; 2 uses
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.dj, i64 %i.dc ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap8try_growCsbakdBCgU4AF_16influxdb3_server:bb.a

.preheader:                                       ; preds = %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit, %bb.i
  %i.au = icmp eq i64 %.sroa.02.0, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph56

.lr.ph54:                                         ; preds = %bb.i, %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.013.053 = phi ptr [ %i.bh, %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.ar, %bb.i ] ; 3 uses
  %i.av = load i16, ptr %.sroa.013.053, align 2, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.053, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !noundef !4 ; 2 uses
  %.not.i = icmp eq i16 %i.av, -1
  br i1 %.not.i, label %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph54
  %i.ay = and i16 %i.ax, %i.ah
  %i.az = zext i16 %i.ay to i64
  br label %bb.l

bb.l:                                             ; preds = %.backedge65, %bb.k
  %.sroa.01.0.i = phi i64 [ %i.az, %bb.k ], [ %.sroa.01.0.i.be, %.backedge65 ] ; 4 uses
  %i.ba = icmp ult i64 %.sroa.01.0.i, %i.ae
  br i1 %i.ba, label %bb.m, label %.backedge65

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !6945, !noundef !4
  %.not7.i = icmp eq i16 %i.bc, -1
  br i1 %.not7.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge65

.backedge65:                                      ; preds = %bb.n, %bb.l
  %.sroa.01.0.i.be = phi i64 [ %i.bd, %bb.n ], [ 0, %bb.l ]
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i ; 2 uses
  store i16 %i.av, ptr %i.be, align 2, !noalias !6945
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %i.ax, ptr %i.bf, align 2, !noalias !6945
  br label %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit

bb.p:                                             ; preds = %._crit_edge, %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.j, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %.idx, i64 noundef 2) #32
  br label %common.resume

_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.o, %.lr.ph54
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.053, i64 4 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %.preheader, label %.lr.ph54

.lr.ph56:                                         ; preds = %.preheader, %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit33
  %.sroa.016.055 = phi ptr [ %i.cb, %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit33 ], [ %i.f, %.preheader ] ; 3 uses
  %i.bj = load i16, ptr %.sroa.016.055, align 2, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.016.055, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !noundef !4 ; 2 uses
  %.not.i29 = icmp eq i16 %i.bj, -1
  br i1 %.not.i29, label %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit33, label %bb.r

bb.r:                                             ; preds = %.lr.ph56
  %i.bm = and i16 %i.ah, %i.bl
  %i.bn = zext i16 %i.bm to i64
  br label %bb.s

bb.s:                                             ; preds = %.backedge, %bb.r
  %.sroa.01.0.i30 = phi i64 [ %i.bn, %bb.r ], [ %.sroa.01.0.i30.be, %.backedge ] ; 4 uses
  %i.bo = icmp ult i64 %.sroa.01.0.i30, %i.ae
  br i1 %i.bo, label %bb.t, label %.backedge

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i30
  %i.bq = load i16, ptr %i.bp, align 2, !noalias !6948, !noundef !4
  %.not7.i32 = icmp eq i16 %i.bq, -1
  br i1 %.not7.i32, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = add nuw i64 %.sroa.01.0.i30, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.s
  %.sroa.01.0.i30.be = phi i64 [ %i.br, %bb.u ], [ 0, %bb.s ]
  br label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i30 ; 2 uses
  store i16 %i.bj, ptr %i.bs, align 2, !noalias !6948
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i16 %i.bl, ptr %i.bt, align 2, !noalias !6948
  br label %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit33

._crit_edge:                                      ; preds = %_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit33, %.preheader
  %i.bu = lshr i64 %i.ae, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 88686269585142076
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, %i.bu
  %i.ca = sub i64 %i.ae, %i.bz
  invoke void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv, i64 noundef %i.bx, i64 noundef %i.ca, i64 noundef 8, i64 noundef 104)
          to label %bb.w unwind label %bb.p

_RNvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB5_9HeaderMap23reinsert_entry_in_orderCsbakdBCgU4AF_16influxdb3_server.exit33: ; preds = %bb.v, %.lr.ph56
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.016.055, i64 4 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ar
  br i1 %i.cc, label %._crit_edge, label %.lr.ph56

bb.w:                                             ; preds = %._crit_edge
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCs6P5GRezSnwZ_4http6header3map3PosEECsbakdBCgU4AF_16influxdb3_server.exit34, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %.idx, i64 noundef 2) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCs6P5GRezSnwZ_4http6header3map3PosEECsbakdBCgU4AF_16influxdb3_server.exit34

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCs6P5GRezSnwZ_4http6header3map3PosEECsbakdBCgU4AF_16influxdb3_server.exit34: ; preds = %bb.x, %bb.w, %bb.a
  ret i1 %i.d

bb.y:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs3tYbhKVn990_6flate27deflate7bufreadINtB5_14DeflateDecoderINtNtB9_9bufreader9BufReaderRShEE3newCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs0_NtCs3tYbhKVn990_6flate23memNtB5_10Decompress3new(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.a, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3tYbhKVn990_6flate29bufreader9BufReaderRShEECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %.sroa.5.0.copyload, i64 noundef 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3tYbhKVn990_6flate29bufreader9BufReaderRShEECsbakdBCgU4AF_16influxdb3_server.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx2, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx4, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3tYbhKVn990_6flate29bufreader9BufReaderRShEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsuxFxh2mtOX_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCsuxFxh2mtOX_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @19, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCsuxFxh2mtOX_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB2_10EquivalentRBq_E10equivalentCsbakdBCgU4AF_16influxdb3_server(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !27, !noundef !4 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !noundef !4
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !noundef !4
  %i.d = icmp eq ptr %i.c, null                   ; 3 uses
  %not..i.i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !850, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !850, !noundef !4
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameINtB2_10EquivalentBq_E10equivalentCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !27, !noundef !4 ; 4 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !align !27, !noundef !4 ; 4 uses
  %i.a = load ptr, ptr %.val, align 8, !noundef !4
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %.val1, align 8, !noundef !4
  %i.d = icmp eq ptr %i.c, null                   ; 3 uses
  %not..i.i.i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsbakdBCgU4AF_16influxdb3_server.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsbakdBCgU4AF_16influxdb3_server.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsbakdBCgU4AF_16influxdb3_server.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !850, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !850, !noundef !4
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsbakdBCgU4AF_16influxdb3_server.exit

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB2_3Any7type_idCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @153, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_flushCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_flushCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1136) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1136) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write13poll_shutdownCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write13poll_shutdownCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1136) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write17is_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write17is_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1136) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(1168) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(1136) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_flushCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_flushCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write10poll_writeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write13poll_shutdownCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write13poll_shutdownCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write17is_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write17is_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCs6VdLngu4RVT_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs2_NtNtCs6VdLngu4RVT_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtNtCs2LSxCQSJWSD_5hyper2rt2io5Write19poll_write_vectoredCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone10as_any_mutCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @156, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone6as_anyCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @156, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone8into_anyCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @156, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCsbYyEjVLvvus_5tonic6status6StatusNtB5_8AnyClone9clone_boxCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i.i = alloca [72 x i8], align 8    ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.i.i.i = alloca [30 x i8], align 2      ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 13 uses
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCsbYyEjVLvvus_5tonic6status11StatusInnerE13new_uninit_inCsbakdBCgU4AF_16influxdb3_server() ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.h = load i8, ptr %i.g, align 8, !range !6951, !noalias !6952, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6952
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 96
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6952
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !noalias !6952, !nonnull !4, !align !27, !noundef !4
  %i.l = load ptr, ptr %i.k, align 8, !noalias !6952, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !noalias !6952, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.q = load i64, ptr %i.p, align 8, !noalias !6952, !noundef !4
  invoke void %i.l(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.m, ptr noundef %i.o, i64 noundef %i.q)
          to label %bb.c unwind label %bb.b, !noalias !6952

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i: ; preds = %.body.i.i.i.i, %bb.b
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.b ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #34
          to label %bb.q unwind label %bb.o, !noalias !6952

bb.b:                                             ; preds = %.noexc.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i

bb.c:                                             ; preds = %.noexc.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6955)
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.t = load i16, ptr %i.s, align 8, !alias.scope !6955, !noalias !6958, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.v = invoke { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCs6P5GRezSnwZ_4http6header3map3PosENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u)
          to label %.noexc.i.i.i.i unwind label %bb.j, !noalias !6952 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 4 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6960
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 24
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBJ_5value11HeaderValueEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.g unwind label %bb.f, !noalias !6958

bb.d:                                             ; preds = %bb.h, %bb.f
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %.body.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = shl nuw nsw i64 %i.x, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
end_hunk_1
