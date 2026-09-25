Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.15?download=true
inline.NumInlined: 9161
inline.NumDeleted: 2965
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br label %.thread.i4559

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544: ; preds = %bb.ke
  %i.cel = load i128, ptr %i.box, align 1
  %i.cem = xor i128 %i.cel, 152141587690776203317624446968084324655
  %i.cen = getelementptr i8, ptr %i.box, i64 16
  %i.ceo = load i128, ptr %i.cen, align 1
  %i.cep = xor i128 %i.ceo, 134794042122001064189536648065399926629
  %i.ceq = or i128 %i.cem, %i.cep
  %i.cer = icmp ne i128 %i.ceq, 0
  %i.ces = zext i1 %i.cer to i32
  %i.cet = icmp eq i32 %i.ces, 0
  br i1 %i.cet, label %.thread8588, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598: ; preds = %bb.ke
  %i.ceu = load i128, ptr %i.box, align 1
  %i.cev = xor i128 %i.ceu, 152141587690776203317624446968084324655
  %i.cew = getelementptr i8, ptr %i.box, i64 12
  %i.cex = load i128, ptr %i.cew, align 1
  %i.cey = xor i128 %i.cex, 134794042122001064483748573020910085993
  %i.cez = or i128 %i.cev, %i.cey
  %i.cfa = icmp ne i128 %i.cez, 0
  %i.cfb = zext i1 %i.cfa to i32
  %i.cfc = icmp eq i32 %i.cfb, 0
  br i1 %i.cfc, label %.thread8590, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit601: ; preds = %bb.ke
  %bcmp.i600 = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(43) %i.box, ptr noundef nonnull dereferenceable(43) @368, i64 43), !alias.scope !12626
  %i.cfd = icmp eq i32 %bcmp.i600, 0
  br i1 %i.cfd, label %.thread8594, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604: ; preds = %bb.ke
  %i.cfe = load i128, ptr %i.box, align 1
  %i.cff = xor i128 %i.cfe, 152141587690776203317624446968084324655
  %i.cfg = getelementptr i8, ptr %i.box, i64 10
  %i.cfh = load i128, ptr %i.cfg, align 1
  %i.cfi = xor i128 %i.cfh, 134851116901260230215886003334969648750
  %i.cfj = or i128 %i.cff, %i.cfi
  %i.cfk = icmp ne i128 %i.cfj, 0
  %i.cfl = zext i1 %i.cfk to i32
  %i.cfm = icmp eq i32 %i.cfl, 0
  br i1 %i.cfm, label %.thread8608, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit496, %bb.ke
  %i.cfn = phi ptr [ %i.box, %bb.ke ], [ %i.bjl, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit496 ] ; 2 uses
  %i.cfo = load i128, ptr %i.cfn, align 1
  %i.cfp = xor i128 %i.cfo, 152141587690776203317624446968084324655
  %i.cfq = getelementptr i8, ptr %i.cfn, i64 7
  %i.cfr = load i128, ptr %i.cfq, align 1
  %i.cfs = xor i128 %i.cfr, 134814791032228746017709456190300185391
  %i.cft = or i128 %i.cfp, %i.cfs
  %i.cfu = icmp ne i128 %i.cft, 0
  %i.cfv = zext i1 %i.cfu to i32
  %i.cfw = icmp eq i32 %i.cfv, 0
  br i1 %i.cfw, label %.thread8637, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit601
  %bcmp.i609 = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(43) %i.box, ptr noundef nonnull dereferenceable(43) @371, i64 43), !alias.scope !12627
  %i.cfx = icmp eq i32 %bcmp.i609, 0
  br i1 %i.cfx, label %.thread8642, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread

.thread8642:                                      ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610
  %i.cfy = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val378 = load ptr, ptr %i.cfy, align 16, !nonnull !13, !noundef !13
  %i.cfz = getelementptr inbounds nuw i8, ptr %.val378, i64 16
  %i.cga = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.cga, align 2
  %i.cgb = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cgc = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.cgc, ptr noundef nonnull align 8 dereferenceable(240) %i.cgb, i64 240, i1 false)
  %.sroa.76533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7952
  store ptr %i.cfz, ptr %.sroa.76533.0..sroa_idx, align 16
  %.sroa.96535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7992
  store i8 0, ptr %.sroa.96535.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.146544)
  %i.cgd = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i5530)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6116.i)
  %i.cge = getelementptr inbounds nuw i8, ptr %1, i64 7992
  br label %bb.igw

.thread8637:                                      ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607
  %i.cgf = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val379 = load ptr, ptr %i.cgf, align 16, !nonnull !13, !noundef !13
  %i.cgg = getelementptr inbounds nuw i8, ptr %.val379, i64 16
  %i.cgh = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.cgh, align 2
  %i.cgi = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cgj = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.cgj, ptr noundef nonnull align 8 dereferenceable(240) %i.cgi, i64 240, i1 false)
  %.sroa.76439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8176
  store ptr %i.cgg, ptr %.sroa.76439.0..sroa_idx, align 16
  %.sroa.96441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8264
  store i8 0, ptr %.sroa.96441.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176453)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.186454)
  %i.cgk = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19198.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19198.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13169.i)
  %i.cgl = getelementptr inbounds nuw i8, ptr %1, i64 8264
  br label %bb.hfj

.thread8608:                                      ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604
  %i.cgm = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val380 = load ptr, ptr %i.cgm, align 16, !nonnull !13, !noundef !13
  %i.cgn = getelementptr inbounds nuw i8, ptr %.val380, i64 16
  %i.cgo = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.cgo, align 2
  %i.cgp = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cgq = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.cgq, ptr noundef nonnull align 8 dereferenceable(240) %i.cgp, i64 240, i1 false)
  %.sroa.76393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8128
  store ptr %i.cgn, ptr %.sroa.76393.0..sroa_idx, align 16
  %.sroa.96395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8144
  store i8 0, ptr %.sroa.96395.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.106400)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.166406)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176407)
  %i.cgr = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10165.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12170.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12170.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13147.i)
  %i.cgs = getelementptr inbounds nuw i8, ptr %1, i64 8144
  br label %bb.ghv

.thread8594:                                      ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit601
  %i.cgt = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val381 = load ptr, ptr %i.cgt, align 16, !nonnull !13, !noundef !13
  %i.cgu = getelementptr inbounds nuw i8, ptr %.val381, i64 16
  %i.cgv = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.cgv, align 2
  %i.cgw = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cgx = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.cgx, ptr noundef nonnull align 8 dereferenceable(240) %i.cgw, i64 240, i1 false)
  %.sroa.76279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 928
  store ptr %i.cgu, ptr %.sroa.76279.0..sroa_idx, align 16
  %.sroa.96281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1184
  store i8 0, ptr %.sroa.96281.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.186293)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.196294)
  %i.cgy = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i3675)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26.i3676)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12172.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13121.i)
  %i.cgz = getelementptr inbounds nuw i8, ptr %1, i64 1184
  br label %bb.eyx

.thread8590:                                      ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598
  %i.cha = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val382 = load ptr, ptr %i.cha, align 16, !nonnull !13, !noundef !13
  %i.chb = getelementptr inbounds nuw i8, ptr %.val382, i64 16
  %i.chc = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.chc, align 2
  %i.chd = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.che = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.che, ptr noundef nonnull align 8 dereferenceable(240) %i.chd, i64 240, i1 false)
  %.sroa.76195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 928
  store ptr %i.chb, ptr %.sroa.76195.0..sroa_idx, align 16
  %.sroa.96197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1184
  store i8 0, ptr %.sroa.96197.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176208)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.206211)
  %i.chf = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.4.sroa.4.i1954)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i1955)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12181.sroa.2.i1956)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10141.sroa.3.sroa.3.i1958)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10127.sroa.3.sroa.3.i1959)
  %i.chg = getelementptr inbounds nuw i8, ptr %1, i64 1184
  br label %bb.dcj

.thread8588:                                      ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544
  %i.chh = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val383 = load ptr, ptr %i.chh, align 16, !nonnull !13, !noundef !13
  %i.chi = getelementptr inbounds nuw i8, ptr %.val383, i64 16
  %i.chj = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.chj, align 2
  %i.chk = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.chl = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.chl, ptr noundef nonnull align 8 dereferenceable(240) %i.chk, i64 240, i1 false)
  %.sroa.76151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 928
  store ptr %i.chi, ptr %.sroa.76151.0..sroa_idx, align 16
  %.sroa.96153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1184
  store i8 0, ptr %.sroa.96153.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176164)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.206167)
  %i.chm = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.4.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12181.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10141.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10127.sroa.3.sroa.3.i)
  %i.chn = getelementptr inbounds nuw i8, ptr %1, i64 1184
  br label %bb.cdu

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604, %bb.ke, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598, %bb.kd, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541, %bb.kl, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574, %bb.kh, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610, %bb.bat, %bb.aeo, %bb.adt
  %.sroa.25.sroa.11.sroa.8.sroa.11.1 = phi i64 [ %.sroa.25.sroa.11.sroa.8.sroa.11.2, %bb.aeo ], [ %.sroa.25.sroa.11.sroa.8.sroa.11.0.copyload, %bb.bat ], [ undef, %bb.adt ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ undef, %bb.kl ], [ undef, %bb.kh ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ undef, %bb.kd ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ undef, %bb.ke ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ] ; 3 uses
  %.sroa.25.sroa.0.sroa.0.1 = phi i64 [ %.sroa.25.sroa.0.sroa.0.2, %bb.aeo ], [ %.sroa.25.sroa.0.sroa.0.0.copyload.a, %bb.bat ], [ %.sroa.35921.sroa.3.0.copyload, %bb.adt ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ undef, %bb.kl ], [ undef, %bb.kh ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ undef, %bb.kd ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ undef, %bb.ke ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ]
  %.sroa.24.1 = phi i64 [ %.sroa.24.2, %bb.aeo ], [ %.sroa.24.0.copyload6629, %bb.bat ], [ %i.edk, %bb.adt ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ undef, %bb.kl ], [ undef, %bb.kh ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ undef, %bb.kd ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ undef, %bb.ke ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ]
  %.sroa.236618.1 = phi ptr [ %.sroa.236618.2, %bb.aeo ], [ %.sroa.236618.0.copyload6620, %bb.bat ], [ %i.edl, %bb.adt ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ undef, %bb.kl ], [ undef, %bb.kh ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ undef, %bb.kd ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ undef, %bb.ke ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ] ; 3 uses
  %.sroa.186605.1 = phi i8 [ undef, %bb.aeo ], [ %.sroa.186605.0.copyload6607, %bb.bat ], [ undef, %bb.adt ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ undef, %bb.kl ], [ undef, %bb.kh ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ undef, %bb.kd ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ undef, %bb.ke ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ] ; 3 uses
  %.sroa.116598.1 = phi i8 [ 1, %bb.aeo ], [ %.sroa.116598.0.copyload6600, %bb.bat ], [ 2, %bb.adt ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ 5, %bb.kl ], [ 5, %bb.kh ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ 5, %bb.kd ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ 5, %bb.ke ], [ 5, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ] ; 3 uses
  %.sroa.06594.1 = phi i64 [ -1, %bb.aeo ], [ %.sroa.06594.0.copyload6595, %bb.bat ], [ -1, %bb.adt ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ -1, %bb.kl ], [ -1, %bb.kh ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ -1, %bb.kd ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ -1, %bb.ke ], [ -1, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ] ; 3 uses
  %.sroa.23.sroa.0.1 = phi i48 [ undef, %bb.aeo ], [ %.sroa.23.sroa.0.0.copyload, %bb.bat ], [ undef, %bb.adt ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ undef, %bb.kl ], [ undef, %bb.kh ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ undef, %bb.kd ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ undef, %bb.ke ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ] ; 3 uses
  %i.cho = phi <4 x i64> [ %i.eeo, %bb.aeo ], [ %i.gee, %bb.bat ], [ %i.edq, %bb.adt ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ undef, %bb.kl ], [ undef, %bb.kh ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ undef, %bb.kd ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ undef, %bb.ke ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ] ; 3 uses
  %i.chp = phi <4 x i64> [ %i.eep, %bb.aeo ], [ %i.gef, %bb.bat ], [ undef, %bb.adt ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit610 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit595 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit589 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit538.thread ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit568 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit592 ], [ undef, %bb.kl ], [ undef, %bb.kh ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit547 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583.thread.thread7609 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit574 ], [ undef, %bb.kd ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit541 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit604 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit598 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit607 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit583 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit559 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit553 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit562 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit580 ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit571 ], [ undef, %bb.ke ], [ undef, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit544 ] ; 3 uses
  %i.chq = getelementptr inbounds nuw i8, ptr %1, i64 632
  call void @llvm.experimental.noalias.scope.decl(metadata !12628)
  call void @llvm.experimental.noalias.scope.decl(metadata !12629)
  call void @llvm.experimental.noalias.scope.decl(metadata !12630)
  %i.chr = load i8, ptr %i.chq, align 8, !range !45, !alias.scope !12631, !noundef !13
  %switch.i.i.i = icmp samesign ult i8 %i.chr, 10
  %i.chs = insertelement <2 x i64> poison, i64 %.sroa.24.1, i64 0
  %i.cht = insertelement <2 x i64> %i.chs, i64 %.sroa.25.sroa.0.sroa.0.1, i64 1 ; 3 uses
  br i1 %switch.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.kr

bb.kr:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread
  %i.chu = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val1.i.i.i = load i64, ptr %i.chu, align 8, !alias.scope !12631, !noundef !13 ; 2 uses
  %i.chv = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.chv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.chw = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.val.i.i.i = load ptr, ptr %i.chw, align 16, !alias.scope !12631, !nonnull !13, !noundef !13
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #29, !noalias !12631
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.kt:                                            ; preds = %bb.lh, %bb.lg
  %i.chx = landingpad { ptr, i32 }
          cleanup
  br label %.body632

.body632:                                         ; preds = %bb.ts, %bb.kt
  %i.chy = phi ptr [ %i.chz, %bb.kt ], [ %i.dkp, %bb.ts ]
  %eh.lpad-body633 = phi { ptr, i32 } [ %i.chx, %bb.kt ], [ %.pn17.i614, %bb.ts ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi12delete_token0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.chy) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bh

bb.ku:                                            ; preds = %bb.a
  %.phi.trans.insert7733 = getelementptr inbounds nuw i8, ptr %1, i64 7992
  %.pre7734 = load i8, ptr %.phi.trans.insert7733, align 8, !range !37, !noalias !12632
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  %i.chz = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1285.i)
  %i.cia = getelementptr inbounds nuw i8, ptr %1, i64 7992 ; 13 uses
  switch i8 %.pre7734, label %default.unreachable8563 [
    i8 0, label %bb.kv
    i8 1, label %bb.lg
    i8 2, label %bb.lh
    i8 3, label %bb.lj
  ]

bb.kv:                                            ; preds = %.thread8577, %bb.ku
  %i.cib = phi ptr [ %i.bnp, %.thread8577 ], [ %i.cia, %bb.ku ] ; 5 uses
  %i.cic = phi ptr [ %i.bno, %.thread8577 ], [ %i.chz, %bb.ku ] ; 6 uses
  %i.cid = getelementptr inbounds nuw i8, ptr %1, i64 7952
  %i.cie = load ptr, ptr %i.cid, align 16, !noalias !12632, !nonnull !13, !align !18, !noundef !13 ; 2 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %1, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.cif, ptr noundef nonnull align 16 dereferenceable(240) %i.cic, i64 240, i1 false), !noalias !12632
  %i.cig = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.cih = load i16, ptr %i.cig, align 16, !noalias !12632, !noundef !13 ; 2 uses
  %i.cii = icmp eq i16 %i.cih, -1
  br i1 %i.cii, label %bb.kz, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.cij = add nuw i16 %i.cih, 1
  %i.cik = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.cil = load ptr, ptr %i.cik, align 8, !noalias !12632, !noundef !13 ; 3 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.cin = load i64, ptr %i.cim, align 16, !noalias !12632, !noundef !13 ; 5 uses
  %i.cio = zext i16 %i.cij to i64                 ; 6 uses
  %.not.i.i.i.i622 = icmp ugt i64 %i.cin, %i.cio
  br i1 %.not.i.i.i.i622, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.kw
  %i.cip = icmp eq i64 %i.cin, %i.cio
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cil, i64 %i.cio
  br i1 %i.cip, label %bb.kz, label %bb.kx, !prof !65

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i: ; preds = %bb.kw
  %i.cir = getelementptr inbounds nuw i8, ptr %i.cil, i64 %i.cio ; 2 uses
  %i.cis = load i8, ptr %i.cir, align 1, !alias.scope !12633, !noalias !12634, !noundef !13
  %i.cit = icmp sgt i8 %i.cis, -65
  %i.ciu = sub nuw i64 %i.cin, %i.cio
  br i1 %i.cit, label %bb.kz, label %bb.kx, !prof !65

bb.kx:                                            ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, %.split.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cil, i64 noundef %i.cin, i64 noundef %i.cio, i64 noundef %i.cin, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #36
          to label %.noexc.i623 unwind label %bb.ky, !noalias !12634

.noexc.i623:                                      ; preds = %bb.kx
  unreachable

bb.ky:                                            ; preds = %bb.kx
  %i.civ = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

bb.kz:                                            ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, %.split.i.i.i, %bb.kv
  %.sroa.4.0.i.i.i = phi i64 [ %i.ciu, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i ], [ undef, %bb.kv ], [ 0, %.split.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.cir, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i ], [ null, %bb.kv ], [ %i.ciq, %.split.i.i.i ] ; 2 uses
  %.not.i.i624 = icmp eq ptr %.sroa.0.0.i.i.i, null ; 2 uses
  %..i.i = select i1 %.not.i.i624, ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.0.i.i.i
  %.5.i.i = select i1 %.not.i.i624, i64 0, i64 %.sroa.4.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.alk), !noalias !12632
  invoke void @_RINvNtCscX1haOsHjXZ_16serde_urlencoded2de8from_strNtNtCs9h7Hq22ZyhR_15influxdb3_types4http18TokenDeleteRequestECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.alk, ptr noalias noundef nonnull readonly captures(address, read_provenance) %..i.i, i64 noundef %.5.i.i)
          to label %bb.lb unwind label %bb.la, !noalias !12634

bb.la:                                            ; preds = %bb.kz
  %i.ciw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.alk), !noalias !12632
  br label %.body39.i

bb.lb:                                            ; preds = %bb.kz
  call void @llvm.experimental.noalias.scope.decl(metadata !12635)
  %i.cix = load i64, ptr %i.alk, align 8, !range !12, !alias.scope !12636, !noalias !12637, !noundef !13 ; 2 uses
  %i.ciy = icmp eq i64 %i.cix, -1
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %i.cja = load ptr, ptr %i.ciz, align 8, !alias.scope !12638, !noalias !12632 ; 2 uses
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.alk, i64 16
  %i.cjc = load i64, ptr %i.cjb, align 8, !alias.scope !12638, !noalias !12632 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.alk), !noalias !12632
  %i.cjd = insertelement <4 x i64> <i64 poison, i64 undef, i64 undef, i64 undef>, i64 %i.cjc, i64 0
  br i1 %i.ciy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types4http18TokenDeleteRequestECsgsNUVCRJO2f_13influxdb3_lib.exit47.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.cje = getelementptr inbounds nuw i8, ptr %1, i64 7960
  store i64 %i.cix, ptr %i.cje, align 8, !noalias !12632
  %.sroa.4.0..sroa_idx.i625 = getelementptr inbounds nuw i8, ptr %1, i64 7968 ; 2 uses
  store ptr %i.cja, ptr %.sroa.4.0..sroa_idx.i625, align 16, !noalias !12632
  %.sroa.5.0..sroa_idx.i626 = getelementptr inbounds nuw i8, ptr %1, i64 7976 ; 2 uses
  store i64 %i.cjc, ptr %.sroa.5.0..sroa_idx.i626, align 8, !noalias !12632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.alj), !noalias !12632
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cie, i64 88
  %.val.i627 = load ptr, ptr %i.cjf, align 8, !noalias !12634, !nonnull !13, !noundef !13
  %i.cjg = getelementptr i8, ptr %i.cie, i64 96
  %.val19.i = load ptr, ptr %i.cjg, align 8, !noalias !12634, !nonnull !13, !align !18, !noundef !13 ; 2 uses
  %i.cjh = getelementptr inbounds nuw i8, ptr %.val19.i, i64 16
  %i.cji = load i64, ptr %i.cjh, align 8, !range !25, !invariant.load !13, !noalias !12634
  %i.cjj = add nsw i64 %i.cji, -1
  %i.cjk = and i64 %i.cjj, -16
  %i.cjl = getelementptr inbounds nuw i8, ptr %.val.i627, i64 %i.cjk
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cjl, i64 16
  %i.cjn = getelementptr inbounds nuw i8, ptr %.val19.i, i64 48
  %i.cjo = load ptr, ptr %i.cjn, align 8, !invariant.load !13, !noalias !12634, !nonnull !13
  %i.cjp = invoke noundef nonnull ptr %i.cjo(ptr noundef nonnull %i.cjm)
          to label %.thread.i unwind label %bb.ld, !noalias !12634 ; 2 uses

bb.ld:                                            ; preds = %bb.lc
  %i.cjq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

.thread.i:                                        ; preds = %bb.lc
  %i.cjr = getelementptr inbounds nuw i8, ptr %1, i64 7984
  store ptr %i.cjp, ptr %i.cjr, align 16, !noalias !12632
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjp, i64 16 ; 2 uses
  %.val21.i = load ptr, ptr %.sroa.4.0..sroa_idx.i625, align 16, !noalias !12632, !nonnull !13, !noundef !13 ; 2 uses
  %.val22.i = load i64, ptr %.sroa.5.0..sroa_idx.i626, align 8, !noalias !12632, !noundef !13 ; 2 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %1, i64 1168 ; 2 uses
  store ptr %.val21.i, ptr %i.cjt, align 16, !noalias !12632
  %.sroa.869.0..sroa_idx.i628 = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i64 %.val22.i, ptr %.sroa.869.0..sroa_idx.i628, align 8, !noalias !12632
  %.sroa.1071.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 7936
  store ptr %i.cjs, ptr %.sroa.1071.0..sroa_idx.i, align 16, !noalias !12632
  %.sroa.11.0..sroa_idx.i629 = getelementptr inbounds nuw i8, ptr %1, i64 7944 ; 2 uses
  store i8 0, ptr %.sroa.11.0..sroa_idx.i629, align 8, !noalias !12632
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.919.i.i.i)
  br label %.noexc.i.i

bb.le:                                            ; preds = %.body28.i, %.body.i612
  %i.cju = phi ptr [ %i.ckk, %.body.i612 ], [ %i.dhb, %.body28.i ] ; 2 uses
  %i.cjv = phi ptr [ %i.ckl, %.body.i612 ], [ %i.dhc, %.body28.i ] ; 2 uses
  %.pn9.i613 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i612 ], [ %i.djc, %.body28.i ] ; 2 uses
  %i.cjw = getelementptr inbounds nuw i8, ptr %1, i64 7984 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12639)
  call void @llvm.experimental.noalias.scope.decl(metadata !12640)
  %i.cjx = load ptr, ptr %i.cjw, align 16, !alias.scope !12641, !noalias !12632, !nonnull !13, !noundef !13
  %i.cjy = atomicrmw sub ptr %i.cjx, i64 1 release, align 8, !noalias !12642
  %i.cjz = icmp eq i64 %i.cjy, 1
  br i1 %i.cjz, label %bb.lf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.lf:                                            ; preds = %bb.le
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogE9drop_slowCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cjw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ua, !noalias !12634

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ti, %bb.lf, %bb.le, %bb.ld
  %i.cka = phi ptr [ %i.djs, %bb.ti ], [ %i.cib, %bb.ld ], [ %i.cju, %bb.lf ], [ %i.cju, %bb.le ]
  %i.ckb = phi ptr [ %i.djt, %bb.ti ], [ %i.cic, %bb.ld ], [ %i.cjv, %bb.lf ], [ %i.cjv, %bb.le ]
  %.pn11.i = phi { ptr, i32 } [ %i.dju, %bb.ti ], [ %i.cjq, %bb.ld ], [ %.pn9.i613, %bb.lf ], [ %.pn9.i613, %bb.le ]
end_hunk_0
begin_hunk_1_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.drq = insertelement <2 x ptr> %i.drp, ptr %.sroa.15.sroa.0.1.i674, i64 1
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.dro)
          to label %bb.ya unwind label %bb.xl, !noalias !12752

bb.xz:                                            ; preds = %bb.wn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ajs), !noalias !12751
  store i8 3, ptr %i.dpu, align 16, !noalias !12751
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.3.i649)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.4.i650)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.5.i651)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.647.i652)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.848.i653)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.145885)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.155886)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.165887)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ya:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727
  %.sroa.580.sroa.6.0.i676 = phi i16 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675 ], [ %.sroa.1273.sroa.0.0.copyload.i713, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727 ]
  %.sroa.580.sroa.5.0.i677 = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675 ], [ %i.dqr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727 ]
  %.sroa.580.sroa.0.0.i678 = phi i8 [ %.sroa.580.sroa.0.2.i670, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675 ], [ %i.dqp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727 ]
  %.sroa.14.0.i680 = phi i16 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675 ], [ %.sroa.1273.sroa.8.0.copyload.i719, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727 ]
  %.sroa.1382.0.i681 = phi i8 [ %.sroa.1382.2.i672, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675 ], [ %.sroa.1273.sroa.7.0.copyload.i717, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727 ]
  %.sroa.1181.0.i682 = phi i8 [ %.sroa.1181.2.i673, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675 ], [ %.sroa.1273.sroa.6.0.copyload.i715, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727 ]
  %.sroa.079.0.i683 = phi i64 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675 ], [ %i.dqm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727 ]
  %i.drr = phi <2 x ptr> [ %i.drq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit29.i675 ], [ %i.dqs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i727 ]
  %.sroa.580.sroa.6.0.insert.ext.i686 = zext i16 %.sroa.580.sroa.6.0.i676 to i32
  %.sroa.580.sroa.6.0.insert.shift.i687 = shl nuw i32 %.sroa.580.sroa.6.0.insert.ext.i686, 16
  %.sroa.580.sroa.5.0.insert.ext.i688 = zext i8 %.sroa.580.sroa.5.0.i677 to i32
  %.sroa.580.sroa.5.0.insert.shift.i689 = shl nuw nsw i32 %.sroa.580.sroa.5.0.insert.ext.i688, 8
  %.sroa.580.sroa.5.0.insert.insert.i690 = or disjoint i32 %.sroa.580.sroa.5.0.insert.shift.i689, %.sroa.580.sroa.6.0.insert.shift.i687
  %.sroa.580.sroa.0.0.insert.ext.i691 = zext i8 %.sroa.580.sroa.0.0.i678 to i32
  %.sroa.580.sroa.0.0.insert.insert.i692 = or disjoint i32 %.sroa.580.sroa.5.0.insert.insert.i690, %.sroa.580.sroa.0.0.insert.ext.i691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.145885, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.3.i649, i64 24, i1 false), !noalias !12775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.155886, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.sroa.4.i650, i64 40, i1 false), !noalias !12775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.165887, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.sroa.5.i651, i64 32, i1 false), !noalias !12775
  store i8 1, ptr %i.dpu, align 16, !noalias !12751
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.3.i649)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.4.i650)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.5.i651)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.647.i652)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.848.i653)
  store i64 %.sroa.079.0.i683, ptr %i.amo, align 8
  %.sroa.85879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store i32 %.sroa.580.sroa.0.0.insert.insert.i692, ptr %.sroa.85879.0..sroa_idx, align 8
  %.sroa.95880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 12
  store i8 %.sroa.1181.0.i682, ptr %.sroa.95880.0..sroa_idx, align 4
  %.sroa.105881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 13
  store i8 %.sroa.1382.0.i681, ptr %.sroa.105881.0..sroa_idx, align 1
  %.sroa.115882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 14
  store i16 %.sroa.14.0.i680, ptr %.sroa.115882.0..sroa_idx, align 2
  %.sroa.125883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store <2 x ptr> %i.drr, ptr %.sroa.125883.0..sroa_idx, align 8
  %.sroa.145885.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.145885.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.145885, i64 24, i1 false)
  %.sroa.155886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.155886.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.155886, i64 40, i1 false)
  %.sroa.165887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.165887.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.165887, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.145885)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.155886)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.165887)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi22regenerate_admin_token0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.dpv)
          to label %bb.jv unwind label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.drs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.yc:                                            ; preds = %bb.yf, %bb.ye
  %i.drt = landingpad { ptr, i32 }
          cleanup
  br label %.body780

.body780:                                         ; preds = %bb.zm, %bb.yc
  %i.dru = phi ptr [ %i.drv, %bb.yc ], [ %i.dvt, %bb.zm ]
  %eh.lpad-body781 = phi { ptr, i32 } [ %i.drt, %bb.yc ], [ %.pn24.pn.i, %bb.zm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.165906)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.175907)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi24create_named_admin_token0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.dru) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bh

bb.yd:                                            ; preds = %bb.a
  %.phi.trans.insert7742 = getelementptr inbounds nuw i8, ptr %1, i64 944
  %.pre7743 = load i8, ptr %.phi.trans.insert7742, align 16, !range !39, !noalias !12776
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.165906)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.175907)
  %i.drv = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10113.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1172.i)
  %i.drw = getelementptr inbounds nuw i8, ptr %1, i64 944 ; 7 uses
  switch i8 %.pre7743, label %default.unreachable8563 [
    i8 0, label %.thread.i776
    i8 1, label %bb.ye
    i8 2, label %bb.yf
    i8 3, label %bb.yh
    i8 4, label %bb.zo
  ]

.thread.i776:                                     ; preds = %.thread8580, %bb.yd
  %i.drx = phi ptr [ %i.bml, %.thread8580 ], [ %i.drw, %bb.yd ]
  %i.dry = phi ptr [ %i.bmk, %.thread8580 ], [ %i.drv, %bb.yd ] ; 2 uses
  %i.drz = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 0, ptr %i.drz, align 1, !noalias !12776
  %i.dsa = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.dsb = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.dsc = load ptr, ptr %i.dsb, align 16, !noalias !12776, !nonnull !13, !align !18, !noundef !13 ; 3 uses
  store ptr %i.dsc, ptr %i.dsa, align 8, !noalias !12776
  %i.dsd = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.dsd, ptr noundef nonnull align 16 dereferenceable(240) %i.dry, i64 240, i1 false), !noalias !12776
  %.sroa.8.0..sroa_idx.i777 = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %i.dsc, ptr %.sroa.8.0..sroa_idx.i777, align 8, !noalias !12776
  %.sroa.1058.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2040 ; 2 uses
  store i8 0, ptr %.sroa.1058.0..sroa_idx.i, align 8, !noalias !12776
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i742)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1245.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.527.sroa.2.i.i), !noalias !12776
  br label %bb.yi

bb.ye:                                            ; preds = %bb.yd
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #36
          to label %.noexc778 unwind label %bb.yc

.noexc778:                                        ; preds = %bb.ye
  unreachable

bb.yf:                                            ; preds = %bb.yd
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #36
          to label %.noexc779 unwind label %bb.yc

.noexc779:                                        ; preds = %bb.yf
  unreachable

bb.yg:                                            ; preds = %bb.yo, %bb.yn
  %i.dse = landingpad { ptr, i32 }
          cleanup
  br label %.body.i768

.body.i768:                                       ; preds = %bb.zd, %bb.yg
  %i.dsf = phi ptr [ %i.drw, %bb.yg ], [ %i.dud, %bb.zd ]
  %i.dsg = phi ptr [ %i.drv, %bb.yg ], [ %i.due, %bb.zd ]
  %i.dsh = phi ptr [ %i.dsi, %bb.yg ], [ %i.dug, %bb.zd ]
  %eh.lpad-body.i769 = phi { ptr, i32 } [ %i.dse, %bb.yg ], [ %.pn7.i.i, %bb.zd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i742)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http28CreateNamedAdminTokenRequestE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.dsh) #34
          to label %bb.zm unwind label %bb.zl, !noalias !12777

bb.yh:                                            ; preds = %bb.yd
  %.phi.trans.insert.i766 = getelementptr inbounds nuw i8, ptr %1, i64 2040 ; 3 uses
  %.pre.i767 = load i8, ptr %.phi.trans.insert.i766, align 8, !range !37, !noalias !12778
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i742)
  %i.dsi = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1245.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.527.sroa.2.i.i), !noalias !12776
  switch i8 %.pre.i767, label %default.unreachable8563 [
    i8 0, label %._crit_edge7744
    i8 1, label %bb.yn
    i8 2, label %bb.yo
    i8 3, label %bb.yq
  ]

._crit_edge7744:                                  ; preds = %bb.yh
  %.phi.trans.insert7745 = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %.pre7746 = load ptr, ptr %.phi.trans.insert7745, align 8, !noalias !12778
  br label %bb.yi

bb.yi:                                            ; preds = %._crit_edge7744, %.thread.i776
  %i.dsj = phi ptr [ %i.drx, %.thread.i776 ], [ %i.drw, %._crit_edge7744 ] ; 3 uses
  %i.dsk = phi ptr [ %i.dry, %.thread.i776 ], [ %i.drv, %._crit_edge7744 ] ; 3 uses
  %i.dsl = phi ptr [ %i.dsc, %.thread.i776 ], [ %.pre7746, %._crit_edge7744 ]
  %i.dsm = phi ptr [ %.sroa.1058.0..sroa_idx.i, %.thread.i776 ], [ %.phi.trans.insert.i766, %._crit_edge7744 ] ; 3 uses
  %i.dsn = phi ptr [ %i.dsd, %.thread.i776 ], [ %i.dsi, %._crit_edge7744 ] ; 4 uses
  %i.dso = getelementptr inbounds nuw i8, ptr %1, i64 2041 ; 2 uses
  store i8 1, ptr %i.dso, align 1, !noalias !12778
  %i.dsp = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.dsp, ptr noundef nonnull align 8 dereferenceable(240) %i.dsn, i64 240, i1 false), !noalias !12778
  %i.dsq = invoke noundef zeroext i1 @_RNvNtCsbakdBCgU4AF_16influxdb3_server4http17json_content_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dsp)
          to label %bb.yk unwind label %bb.yj, !noalias !12779

bb.yj:                                            ; preds = %bb.yi
  %i.dsr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.yk:                                            ; preds = %bb.yi
  br i1 %i.dsq, label %bb.ym, label %bb.yl

bb.yl:                                            ; preds = %bb.yu, %bb.yk
  %i.dss = phi ptr [ %i.dti, %bb.yu ], [ %i.dsj, %bb.yk ] ; 2 uses
  %i.dst = phi ptr [ %i.dtj, %bb.yu ], [ %i.dsk, %bb.yk ] ; 2 uses
  %.sroa.527.sroa.2.i.sink.i = phi ptr [ %.sroa.527.sroa.2.i.i, %bb.yu ], [ getelementptr inbounds nuw (i8, ptr @70, i64 40), %bb.yk ]
  %i.dsu = phi ptr [ %i.dtk, %bb.yu ], [ %i.dsm, %bb.yk ] ; 2 uses
  %i.dsv = phi ptr [ %i.dtl, %bb.yu ], [ %i.dsn, %bb.yk ]
  %.sroa.1245.sroa.0.0.i.i = phi i64 [ %.sroa.527.sroa.0.0.copyload.i.i, %bb.yu ], [ 0, %bb.yk ]
  %.sroa.040.0.i.i = phi i32 [ %i.dtn, %bb.yu ], [ 15, %bb.yk ]
  %.sroa.441.0.i.i = phi i32 [ %.sroa.3.sroa.0.0.copyload.i.i, %bb.yu ], [ undef, %bb.yk ]
  %.sroa.642.0.i.i = phi ptr [ %.sroa.3.sroa.2.0.copyload.i.i, %bb.yu ], [ null, %bb.yk ]
  %.sroa.943.0.i.i = phi ptr [ %.sroa.3.sroa.4.0.copyload.i.i.a, %bb.yu ], [ undef, %bb.yk ]
  %.sroa.10.0.i.i = phi i64 [ %.sroa.3.sroa.6.0.copyload.i.i, %bb.yu ], [ -9223372036854775806, %bb.yk ]
  %.sroa.1144.0.i.i = phi ptr [ %.sroa.3.sroa.8.0.copyload.i.i, %bb.yu ], [ undef, %bb.yk ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1245.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.527.sroa.2.i.sink.i, i64 48, i1 false), !noalias !12778
  %i.dsw = getelementptr inbounds nuw i8, ptr %1, i64 2041 ; 2 uses
  %i.dsx = load i8, ptr %i.dsw, align 1, !range !20, !noalias !12778, !noundef !13
  %i.dsy = trunc nuw i8 %i.dsx to i1
  br i1 %i.dsy, label %bb.zc, label %.thread181.i

bb.ym:                                            ; preds = %bb.yk
  store i8 0, ptr %i.dso, align 1, !noalias !12778
  %i.dsz = getelementptr inbounds nuw i8, ptr %1, i64 1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.dsz, ptr noundef nonnull align 16 dereferenceable(240) %i.dsp, i64 240, i1 false), !noalias !12778
  %.sroa.8.0..sroa_idx.i.i775 = getelementptr inbounds nuw i8, ptr %1, i64 1680
  store ptr %i.dsl, ptr %.sroa.8.0..sroa_idx.i.i775, align 16, !noalias !12778
  %.sroa.1025.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2032
  store i8 0, ptr %.sroa.1025.0..sroa_idx.i.i, align 16, !noalias !12778
  br label %bb.yq

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.za, %bb.yv, %bb.yt, %bb.yp, %bb.yj
  %i.dta = phi ptr [ %i.dti, %bb.yv ], [ %i.dsj, %bb.yj ], [ %i.dti, %bb.za ], [ %i.dti, %bb.yp ], [ %i.dti, %bb.yt ] ; 2 uses
  %i.dtb = phi ptr [ %i.dtj, %bb.yv ], [ %i.dsk, %bb.yj ], [ %i.dtj, %bb.za ], [ %i.dtj, %bb.yp ], [ %i.dtj, %bb.yt ] ; 2 uses
  %i.dtc = phi ptr [ %i.dtk, %bb.yv ], [ %i.dsm, %bb.yj ], [ %i.dtk, %bb.za ], [ %i.dtk, %bb.yp ], [ %i.dtk, %bb.yt ] ; 2 uses
  %i.dtd = phi ptr [ %i.dtl, %bb.yv ], [ %i.dsn, %bb.yj ], [ %i.dtl, %bb.za ], [ %i.dtl, %bb.yp ], [ %i.dtl, %bb.yt ] ; 2 uses
  %.pn3.pn.pn.i.i = phi { ptr, i32 } [ %i.dtq, %bb.yv ], [ %i.dsr, %bb.yj ], [ %i.dua, %bb.za ], [ %i.dth, %bb.yp ], [ %i.dtp, %bb.yt ] ; 2 uses
  %i.dte = getelementptr inbounds nuw i8, ptr %1, i64 2041
  %i.dtf = load i8, ptr %i.dte, align 1, !range !20, !noalias !12778, !noundef !13
  %i.dtg = trunc nuw i8 %i.dtf to i1
  br i1 %i.dtg, label %bb.zf, label %bb.zd

bb.yn:                                            ; preds = %bb.yh
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #36
          to label %.noexc.i774 unwind label %bb.yg, !noalias !12777

.noexc.i774:                                      ; preds = %bb.yn
  unreachable

bb.yo:                                            ; preds = %bb.yh
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #36
          to label %.noexc29.i unwind label %bb.yg, !noalias !12777

.noexc29.i:                                       ; preds = %bb.yo
  unreachable

bb.yp:                                            ; preds = %bb.yq
  %i.dth = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aja), !noalias !12778
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi9read_body0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.dtm) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.zb, !noalias !12780

bb.yq:                                            ; preds = %bb.ym, %bb.yh
  %i.dti = phi ptr [ %i.drw, %bb.yh ], [ %i.dsj, %bb.ym ] ; 9 uses
  %i.dtj = phi ptr [ %i.drv, %bb.yh ], [ %i.dsk, %bb.ym ] ; 8 uses
  %i.dtk = phi ptr [ %.phi.trans.insert.i766, %bb.yh ], [ %i.dsm, %bb.ym ] ; 7 uses
  %i.dtl = phi ptr [ %i.dsi, %bb.yh ], [ %i.dsn, %bb.ym ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aja), !noalias !12778
  %i.dtm = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 3 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi9read_body0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.aja, ptr noundef nonnull align 8 %i.dtm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.yr unwind label %bb.yp, !noalias !12780

bb.yr:                                            ; preds = %bb.yq
  %i.dtn = load i32, ptr %i.aja, align 8, !range !72, !noalias !12778, !noundef !13 ; 3 uses
  %i.dto = icmp eq i32 %i.dtn, -2
  br i1 %i.dto, label %bb.zg, label %bb.ys

bb.ys:                                            ; preds = %bb.yr
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  %.sroa.3.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !noalias !12778
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aja, i64 16
  %.sroa.3.sroa.4.0.copyload.i.i.a = load ptr, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12778 ; 4 uses
  %.sroa.3.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12778 ; 5 uses
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aja, i64 24
  %.sroa.3.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12778 ; 4 uses
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aja, i64 32
  %.sroa.3.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12778 ; 3 uses
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aja, i64 40
  %.sroa.527.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !noalias !12778
  %.sroa.527.sroa.2.0..sroa.527.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aja, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.527.sroa.2.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.527.sroa.2.0..sroa.527.0..sroa_idx.sroa_idx.i.i, i64 48, i1 false), !noalias !12778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aja), !noalias !12778
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi9read_body0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.dtm)
          to label %bb.yu unwind label %bb.yt, !noalias !12780

bb.yt:                                            ; preds = %bb.ys
  %i.dtp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.yu:                                            ; preds = %bb.ys
  %.not.i.i.i770 = icmp eq i32 %i.dtn, -1
  br i1 %.not.i.i.i770, label %bb.yw, label %bb.yl

bb.yv:                                            ; preds = %bb.yw
  %i.dtq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aiz), !noalias !12778
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.2.0.copyload.i.i) ]
  %i.dtr = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i.i, i64 32
  %i.dts = load ptr, ptr %i.dtr, align 8, !noalias !12781, !nonnull !13, !noundef !13
  invoke void %i.dts(ptr noundef %.sroa.3.sroa.8.0.copyload.i.i, ptr noundef nonnull %.sroa.3.sroa.4.0.copyload.i.i.a, i64 noundef %.sroa.3.sroa.6.0.copyload.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.zb, !noalias !12780, !inline_history !0

bb.yw:                                            ; preds = %bb.yu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aiz), !noalias !12778
  invoke void @_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_sliceNtNtCs9h7Hq22ZyhR_15influxdb3_types4http28CreateNamedAdminTokenRequestECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aiz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.3.sroa.4.0.copyload.i.i.a, i64 noundef %.sroa.3.sroa.6.0.copyload.i.i)
          to label %bb.yx unwind label %bb.yv, !noalias !12780

bb.yx:                                            ; preds = %bb.yw
  call void @llvm.experimental.noalias.scope.decl(metadata !12782)
  %i.dtt = load i64, ptr %i.aiz, align 8, !range !28, !alias.scope !12783, !noalias !12784, !noundef !13 ; 2 uses
  %.not.i771 = icmp eq i64 %i.dtt, 2              ; 2 uses
  br i1 %.not.i771, label %bb.yy, label %bb.yz

bb.yy:                                            ; preds = %bb.yx
  %i.dtu = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %i.dtv = load ptr, ptr %i.dtu, align 8, !alias.scope !12783, !noalias !12784, !nonnull !13, !align !18, !noundef !13
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http28CreateNamedAdminTokenRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1Q_INtNtB5_7convert4IntoB2F_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.yz:                                            ; preds = %bb.yx
  %i.dtw = inttoptr i64 %i.dtt to ptr
  %.sroa.943.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %.sroa.943.8.copyload.i.i = load ptr, ptr %.sroa.943.8..sroa_idx.i.i, align 8, !alias.scope !12785, !noalias !12778
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16
  %.sroa.10.8.copyload.i.i = load i64, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !alias.scope !12785, !noalias !12778
  %.sroa.1144.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aiz, i64 24
  %.sroa.1144.8.copyload.i.i = load ptr, ptr %.sroa.1144.8..sroa_idx.i.i, align 8, !alias.scope !12785, !noalias !12778
  %.sroa.1245.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aiz, i64 32
  %i.dtx = load i64, ptr %.sroa.1245.8..sroa_idx.i.i, align 8, !alias.scope !12785, !noalias !12778
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http28CreateNamedAdminTokenRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1Q_INtNtB5_7convert4IntoB2F_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http28CreateNamedAdminTokenRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1Q_INtNtB5_7convert4IntoB2F_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.yz, %bb.yy
  %.sroa.1245.sroa.0.1.i.i = phi i64 [ undef, %bb.yy ], [ %i.dtx, %bb.yz ] ; 2 uses
  %.sroa.642.2.i.i = phi ptr [ %i.dtv, %bb.yy ], [ %i.dtw, %bb.yz ] ; 2 uses
  %.sroa.943.2.i.i = phi ptr [ undef, %bb.yy ], [ %.sroa.943.8.copyload.i.i, %bb.yz ] ; 2 uses
  %.sroa.10.2.i.i = phi i64 [ undef, %bb.yy ], [ %.sroa.10.8.copyload.i.i, %bb.yz ] ; 2 uses
  %.sroa.1144.2.i.i = phi ptr [ undef, %bb.yy ], [ %.sroa.1144.8.copyload.i.i, %bb.yz ] ; 2 uses
  %.sink.i.i.i = phi i32 [ 38, %bb.yy ], [ -1, %bb.yz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aiz), !noalias !12778
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.2.0.copyload.i.i) ]
  %i.dty = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i.i, i64 32
  %i.dtz = load ptr, ptr %i.dty, align 8, !noalias !12786, !nonnull !13, !noundef !13
  invoke void %i.dtz(ptr noundef %.sroa.3.sroa.8.0.copyload.i.i, ptr noundef nonnull %.sroa.3.sroa.4.0.copyload.i.i.a, i64 noundef %.sroa.3.sroa.6.0.copyload.i.i)
          to label %bb.zh unwind label %bb.za, !noalias !12780, !inline_history !0

bb.za:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http28CreateNamedAdminTokenRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1Q_INtNtB5_7convert4IntoB2F_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.dua = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.zb:                                            ; preds = %bb.zf, %bb.yv, %bb.yp
  %i.dub = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !12780
  unreachable

.thread181.i:                                     ; preds = %bb.zc, %bb.yl
  store i8 0, ptr %i.dsw, align 1, !noalias !12778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.i742, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1245.sroa.4.i.i, i64 48, i1 false), !noalias !12787
  store i8 1, ptr %i.dsu, align 8, !noalias !12778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.sroa.2.i.i), !noalias !12776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1172.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.i742, i64 48, i1 false), !noalias !12776
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i742)
  br label %bb.zk

bb.zc:                                            ; preds = %bb.yl
  %i.duc = getelementptr inbounds nuw i8, ptr %1, i64 1200
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.duc)
          to label %.thread181.i unwind label %bb.ze, !noalias !12780

bb.zd:                                            ; preds = %bb.zf, %bb.ze, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.dud = phi ptr [ %i.dss, %bb.ze ], [ %i.dta, %bb.zf ], [ %i.dta, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.due = phi ptr [ %i.dst, %bb.ze ], [ %i.dtb, %bb.zf ], [ %i.dtb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.duf = phi ptr [ %i.dsu, %bb.ze ], [ %i.dtc, %bb.zf ], [ %i.dtc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.dug = phi ptr [ %i.dsv, %bb.ze ], [ %i.dtd, %bb.zf ], [ %i.dtd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %.pn7.i.i = phi { ptr, i32 } [ %i.dui, %bb.ze ], [ %.pn3.pn.pn.i.i, %bb.zf ], [ %.pn3.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.duh = getelementptr inbounds nuw i8, ptr %1, i64 2041
  store i8 0, ptr %i.duh, align 1, !noalias !12778
  store i8 2, ptr %i.duf, align 8, !noalias !12778
  br label %.body.i768

bb.ze:                                            ; preds = %bb.zc
  %i.dui = landingpad { ptr, i32 }
          cleanup
  br label %bb.zd

bb.zf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.duj = getelementptr inbounds nuw i8, ptr %1, i64 1200
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.duj) #34
          to label %bb.zd unwind label %bb.zb, !noalias !12780

bb.zg:                                            ; preds = %bb.yr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aja), !noalias !12778
  store i8 3, ptr %i.dtk, align 8, !noalias !12778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.sroa.2.i.i), !noalias !12776
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i742)
  br label %bb.adf

bb.zh:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http28CreateNamedAdminTokenRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1Q_INtNtB5_7convert4IntoB2F_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.duk = getelementptr inbounds nuw i8, ptr %1, i64 2041
  store i8 0, ptr %i.duk, align 1, !noalias !12778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.i742, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1245.sroa.4.i.i, i64 48, i1 false), !noalias !12787
  store i8 1, ptr %i.dtk, align 8, !noalias !12778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.sroa.2.i.i), !noalias !12776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1172.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.i742, i64 48, i1 false), !noalias !12776
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i742)
  br i1 %.not.i771, label %bb.zk, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.dul = getelementptr inbounds nuw i8, ptr %1, i64 945 ; 2 uses
  store i8 1, ptr %i.dul, align 1, !noalias !12776
  store ptr %.sroa.642.2.i.i, ptr %i.dtl, align 8, !noalias !12776
  %.sroa.4.0..sroa_idx.i772 = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  store ptr %.sroa.943.2.i.i, ptr %.sroa.4.0..sroa_idx.i772, align 16, !noalias !12776
  %.sroa.582.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 2 uses
  store i64 %.sroa.10.2.i.i, ptr %.sroa.582.0..sroa_idx.i, align 8, !noalias !12776
  %.sroa.683.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 976
  store ptr %.sroa.1144.2.i.i, ptr %.sroa.683.0..sroa_idx.i, align 16, !noalias !12776
  %.sroa.784.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 984
  store i64 %.sroa.1245.sroa.0.1.i.i, ptr %.sroa.784.0..sroa_idx.i, align 8, !noalias !12776
  %i.dum = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.dun = load ptr, ptr %i.dum, align 8, !noalias !12776, !nonnull !13, !align !18, !noundef !13 ; 2 uses
  %i.duo = getelementptr inbounds nuw i8, ptr %i.dun, i64 88
  %.val.i773 = load ptr, ptr %i.duo, align 8, !noalias !12777, !nonnull !13, !noundef !13
  %i.dup = getelementptr i8, ptr %i.dun, i64 96
  %.val27.i = load ptr, ptr %i.dup, align 8, !noalias !12777, !nonnull !13, !align !18, !noundef !13 ; 2 uses
  %i.duq = getelementptr inbounds nuw i8, ptr %.val27.i, i64 16
  %i.dur = load i64, ptr %i.duq, align 8, !range !25, !invariant.load !13, !noalias !12777
  %i.dus = add nsw i64 %i.dur, -1
  %i.dut = and i64 %i.dus, -16
  %i.duu = getelementptr inbounds nuw i8, ptr %.val.i773, i64 %i.dut
  %i.duv = getelementptr inbounds nuw i8, ptr %i.duu, i64 16
  %i.duw = getelementptr inbounds nuw i8, ptr %.val27.i, i64 48
  %i.dux = load ptr, ptr %i.duw, align 8, !invariant.load !13, !noalias !12777, !nonnull !13
  %i.duy = invoke noundef nonnull ptr %i.dux(ptr noundef nonnull %i.duv)
          to label %.thread260.i unwind label %bb.zj, !noalias !12777 ; 2 uses

bb.zj:                                            ; preds = %bb.zi
  %i.duz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i746

.thread260.i:                                     ; preds = %bb.zi
  %i.dva = getelementptr inbounds nuw i8, ptr %1, i64 992
  store ptr %i.duy, ptr %i.dva, align 16, !noalias !12776
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.698.i)
  %i.dvb = getelementptr inbounds nuw i8, ptr %i.duy, i64 16 ; 2 uses
  store i8 0, ptr %i.dul, align 1, !noalias !12776
  %i.dvc = load i64, ptr %i.dtl, align 8, !range !14, !noalias !12776, !noundef !13 ; 2 uses
  %i.dvd = load i64, ptr %.sroa.4.0..sroa_idx.i772, align 16, !noalias !12776 ; 2 uses
  %.sroa.698.7120..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.698.i, i64 7104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.698.7120..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.582.0..sroa_idx.i, i64 24, i1 false), !noalias !12776
  %.sroa.9105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7128) %.sroa.9105.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(7128) %.sroa.698.i, i64 7128, i1 false), !noalias !12776
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.698.i)
  %i.dve = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  store i64 %i.dvc, ptr %i.dve, align 16, !noalias !12776
  %.sroa.8104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1016
  store i64 %i.dvd, ptr %.sroa.8104.0..sroa_idx.i, align 8, !noalias !12776
  %.sroa.10106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8152
  store ptr %i.dvb, ptr %.sroa.10106.0..sroa_idx.i, align 8, !noalias !12776
  %.sroa.12108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8220 ; 2 uses
  store i8 0, ptr %.sroa.12108.0..sroa_idx.i, align 4, !noalias !12776
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.695.i.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.687.i.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.982.i.i)
  br label %.noexc.i.i752

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i746: ; preds = %bb.adc, %bb.adb, %bb.acr, %bb.zj
  %i.dvf = phi ptr [ %i.dzz, %bb.acr ], [ %i.ecf, %bb.adb ], [ %i.dti, %bb.zj ], [ %i.ecf, %bb.adc ] ; 2 uses
  %i.dvg = phi ptr [ %i.eaa, %bb.acr ], [ %i.ecg, %bb.adb ], [ %i.dtj, %bb.zj ], [ %i.ecg, %bb.adc ] ; 2 uses
  %.pn22.i = phi { ptr, i32 } [ %i.ebt, %bb.acr ], [ %.pn19.pn.i, %bb.adb ], [ %i.duz, %bb.zj ], [ %.pn19.pn.i, %bb.adc ] ; 2 uses
  %i.dvh = getelementptr inbounds nuw i8, ptr %1, i64 945
  %i.dvi = load i8, ptr %i.dvh, align 1, !range !20, !noalias !12776, !noundef !13
  %i.dvj = trunc nuw i8 %i.dvi to i1
  br i1 %i.dvj, label %bb.ade, label %bb.zm

bb.zk:                                            ; preds = %bb.zh, %.thread181.i
  %i.dvk = phi ptr [ %i.dss, %.thread181.i ], [ %i.dti, %bb.zh ]
  %i.dvl = phi ptr [ %i.dst, %.thread181.i ], [ %i.dtj, %bb.zh ]
  %.sroa.1144.1.i201.i = phi ptr [ %.sroa.1144.0.i.i, %.thread181.i ], [ %.sroa.1144.2.i.i, %bb.zh ]
  %.sroa.10.1.i199.i = phi i64 [ %.sroa.10.0.i.i, %.thread181.i ], [ %.sroa.10.2.i.i, %bb.zh ]
  %.sroa.943.1.i197.i = phi ptr [ %.sroa.943.0.i.i, %.thread181.i ], [ %.sroa.943.2.i.i, %bb.zh ]
  %.sroa.642.1.i195.i = phi ptr [ %.sroa.642.0.i.i, %.thread181.i ], [ %.sroa.642.2.i.i, %bb.zh ]
  %.sroa.441.1.i193.i = phi i32 [ %.sroa.441.0.i.i, %.thread181.i ], [ undef, %bb.zh ] ; 3 uses
  %.sroa.040.1.i192.i = phi i32 [ %.sroa.040.0.i.i, %.thread181.i ], [ %.sink.i.i.i, %bb.zh ]
  %.sroa.1245.sroa.0.2.i191.i = phi i64 [ %.sroa.1245.sroa.0.0.i.i, %.thread181.i ], [ %.sroa.1245.sroa.0.1.i.i, %bb.zh ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.1172.i, i64 48, i1 false), !noalias !12776
  %.sroa.6150.sroa.0.0.extract.trunc.i = trunc nuw nsw i32 %.sroa.040.1.i192.i to i8
  %.sroa.13151.sroa.0.0.extract.trunc152.i = trunc i32 %.sroa.441.1.i193.i to i8
  %.sroa.13151.sroa.5.0.extract.shift154.i = lshr i32 %.sroa.441.1.i193.i, 8
  %.sroa.13151.sroa.5.0.extract.trunc155.i = trunc i32 %.sroa.13151.sroa.5.0.extract.shift154.i to i8
  %.sroa.13151.sroa.6.0.extract.shift158.i = and i32 %.sroa.441.1.i193.i, -65536
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i: ; preds = %bb.ada, %bb.acz, %bb.zk
  %i.dvm = phi ptr [ %i.dvk, %bb.zk ], [ %i.dzz, %bb.ada ], [ %i.dzz, %bb.acz ]
  %i.dvn = phi ptr [ %i.dvl, %bb.zk ], [ %i.eaa, %bb.ada ], [ %i.eaa, %bb.acz ]
  %.sroa.6150.sroa.0.0.i = phi i8 [ %.sroa.6150.sroa.0.0.extract.trunc.i, %bb.zk ], [ %.sroa.6150.sroa.0.3.i, %bb.ada ], [ %.sroa.6150.sroa.0.3.i, %bb.acz ]
  %.sroa.13151.sroa.6.0.i = phi i32 [ %.sroa.13151.sroa.6.0.extract.shift158.i, %bb.zk ], [ 0, %bb.ada ], [ 0, %bb.acz ]
  %.sroa.13151.sroa.5.0.i = phi i8 [ %.sroa.13151.sroa.5.0.extract.trunc155.i, %bb.zk ], [ %.sroa.13151.sroa.5.3.i, %bb.ada ], [ %.sroa.13151.sroa.5.3.i, %bb.acz ]
  %.sroa.13151.sroa.0.0.i = phi i8 [ %.sroa.13151.sroa.0.0.extract.trunc152.i, %bb.zk ], [ %.sroa.13151.sroa.0.3.i, %bb.ada ], [ %.sroa.13151.sroa.0.3.i, %bb.acz ]
  %.sroa.22.0.i = phi i64 [ %.sroa.1245.sroa.0.2.i191.i, %bb.zk ], [ %.sroa.22.2.i, %bb.ada ], [ %.sroa.22.2.i, %bb.acz ]
  %.sroa.21.0.i = phi ptr [ %.sroa.1144.1.i201.i, %bb.zk ], [ %.sroa.21.2.i, %bb.ada ], [ %.sroa.21.2.i, %bb.acz ]
  %.sroa.20.0.i = phi i64 [ %.sroa.10.1.i199.i, %bb.zk ], [ %.sroa.20.2.i, %bb.ada ], [ %.sroa.20.2.i, %bb.acz ]
  %.sroa.19.0.i = phi ptr [ %.sroa.943.1.i197.i, %bb.zk ], [ %.sroa.19.2.i, %bb.ada ], [ %.sroa.19.2.i, %bb.acz ]
  %.sroa.17.0.i = phi ptr [ %.sroa.642.1.i195.i, %bb.zk ], [ %.sroa.17.3.i, %bb.ada ], [ %.sroa.17.3.i, %bb.acz ]
  %i.dvo = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 0, ptr %i.dvo, align 1, !noalias !12776
  %i.dvp = insertelement <2 x ptr> poison, ptr %.sroa.17.0.i, i64 0
  %i.dvq = insertelement <2 x ptr> %i.dvp, ptr %.sroa.19.0.i, i64 1
  br label %bb.adg

bb.zl:                                            ; preds = %bb.ade, %bb.adc, %bb.acw, %bb.acv, %bb.acu, %.body39.i745, %.body.i768
  %i.dvr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !12777
  unreachable

bb.zm:                                            ; preds = %.body.i768, %bb.ade, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i746
  %i.dvs = phi ptr [ %i.dvf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i746 ], [ %i.dvf, %bb.ade ], [ %i.dsf, %.body.i768 ]
  %i.dvt = phi ptr [ %i.dvg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i746 ], [ %i.dvg, %bb.ade ], [ %i.dsg, %.body.i768 ]
  %.pn24.pn.i = phi { ptr, i32 } [ %.pn22.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i746 ], [ %.pn22.i, %bb.ade ], [ %eh.lpad-body.i769, %.body.i768 ]
  %i.dvu = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 0, ptr %i.dvu, align 1, !noalias !12776
  store i8 2, ptr %i.dvs, align 16, !noalias !12776
  br label %.body780

bb.zn:                                            ; preds = %bb.abe, %bb.abd
  %i.dvv = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i745

.body39.i745:                                     ; preds = %bb.abt, %bb.zn
  %i.dvw = phi ptr [ %i.drw, %bb.zn ], [ %i.dzr, %bb.abt ]
  %i.dvx = phi ptr [ %i.drv, %bb.zn ], [ %i.dzs, %bb.abt ]
  %i.dvy = phi ptr [ %i.dvz, %bb.zn ], [ %i.dzu, %bb.abt ]
  %eh.lpad-body40.i = phi { ptr, i32 } [ %i.dvv, %bb.zn ], [ %.pn24.i.i, %bb.abt ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog24create_named_admin_token0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.dvy) #34
          to label %bb.adb unwind label %bb.zl, !noalias !12777
end_hunk_1
begin_hunk_2_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  unreachable

_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler4ping00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.azu
  %.sroa.4.i.sroa.0.0.copyload94.i = load i64, ptr %i.aem, align 8, !noalias !12964
  %.sroa.4.i.sroa.5.0.copyload95.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !12964
  %.sroa.4.i.sroa.6.0.copyload96.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !12964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ael), !noalias !12962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aem), !noalias !12962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aen), !noalias !12960
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB42_4SyncEL_EEENtNtBN_5error5ErrorE7map_errNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error9HttpErrorNCNCNvMs0_NtB56_7handlerNtB62_13V1HttpHandler4ping00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.azx:                                           ; preds = %bb.azr
  %.sroa.3.0.copyload3.i.i = load i64, ptr %i.gdf, align 8, !alias.scope !12965, !noalias !12955
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %.sroa.4.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !alias.scope !12965, !noalias !12955
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx4.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aet, i64 24
  %.sroa.4.i.sroa.5.0.copyload.i = load ptr, ptr %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx4.i.sroa_idx.i, align 8, !alias.scope !12965, !noalias !12955
  %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx4.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aet, i64 32
  %.sroa.4.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx4.i.sroa_idx.i, align 8, !alias.scope !12965, !noalias !12955
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.aet, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx5.i.i, i64 88, i1 false), !alias.scope !12965, !noalias !12955
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB42_4SyncEL_EEENtNtBN_5error5ErrorE7map_errNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error9HttpErrorNCNCNvMs0_NtB56_7handlerNtB62_13V1HttpHandler4ping00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

.body.i.i1039:                                    ; preds = %bb.azz, %bb.azt
  %.pn9.i.i = phi { ptr, i32 } [ %.pn7.i.i1038, %bb.azz ], [ %i.gdn, %bb.azt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aet), !noalias !12955
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.aeu) #34
          to label %.body46.thread.i unwind label %bb.bab, !noalias !12956

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB42_4SyncEL_EEENtNtBN_5error5ErrorE7map_errNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error9HttpErrorNCNCNvMs0_NtB56_7handlerNtB62_13V1HttpHandler4ping00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.azx, %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler4ping00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %.sroa.4.i.sroa.6.0.i = phi i64 [ %.sroa.4.i.sroa.6.0.copyload96.i, %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler4ping00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %.sroa.4.i.sroa.6.0.copyload.i, %bb.azx ]
  %.sroa.4.i.sroa.5.0.i = phi ptr [ %.sroa.4.i.sroa.5.0.copyload95.i, %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler4ping00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %.sroa.4.i.sroa.5.0.copyload.i, %bb.azx ]
  %.sroa.4.i.sroa.0.0.i = phi i64 [ %.sroa.4.i.sroa.0.0.copyload94.i, %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler4ping00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %.sroa.4.i.sroa.0.0.copyload.i, %bb.azx ]
  %.sroa.3.0.i43.i = phi i64 [ 3, %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler4ping00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %.sroa.3.0.copyload3.i.i, %bb.azx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aet), !noalias !12955
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.aeu)
          to label %bb.bag unwind label %bb.azy, !noalias !12956

.body46.thread.i:                                 ; preds = %bb.azy, %.body.i.i1039
  %.pn11.i.i = phi { ptr, i32 } [ %i.gdp, %bb.azy ], [ %.pn9.i.i, %.body.i.i1039 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aeu), !noalias !12955
  store i8 2, ptr %i.gcu, align 8, !noalias !12955
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler4ping0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.azy:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB42_4SyncEL_EEENtNtBN_5error5ErrorE7map_errNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error9HttpErrorNCNCNvMs0_NtB56_7handlerNtB62_13V1HttpHandler4ping00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.gdp = landingpad { ptr, i32 }
          cleanup
  br label %.body46.thread.i

bb.azz:                                           ; preds = %bb.bac, %bb.baa, %bb.azp
  %.pn7.i.i1038 = phi { ptr, i32 } [ %i.gdq, %bb.baa ], [ %i.gda, %bb.azp ], [ %.pn4.pn.i.i, %bb.bac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aes), !noalias !12955
  br label %.body.i.i1039

bb.baa:                                           ; preds = %bb.azo
  %i.gdq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.aes) #34
          to label %bb.azz unwind label %bb.bab, !noalias !12956

bb.bab:                                           ; preds = %bb.bad, %bb.baa, %.body.i.i1039
  %i.gdr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !12956
  unreachable

bb.bac:                                           ; preds = %bb.bad, %bb.azn, %bb.azj
  %.pn4.pn.i.i = phi { ptr, i32 } [ %i.gds, %bb.bad ], [ %i.gcy, %bb.azn ], [ %.pn.i42.i, %bb.azj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aer), !noalias !12955
  br label %bb.azz

bb.bad:                                           ; preds = %bb.azl
  %i.gds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aeo), !noalias !12955
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.aer) #34
          to label %bb.bac unwind label %bb.bab, !noalias !12956

bb.bae:                                           ; preds = %bb.azf
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #36
          to label %.noexc48.i unwind label %.body46.i, !noalias !12943

.noexc48.i:                                       ; preds = %bb.bae
  unreachable

bb.baf:                                           ; preds = %bb.azf
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #36
          to label %.noexc49.i unwind label %.body46.i, !noalias !12943

.noexc49.i:                                       ; preds = %bb.baf
  unreachable

bb.bag:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB42_4SyncEL_EEENtNtBN_5error5ErrorE7map_errNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error9HttpErrorNCNCNvMs0_NtB56_7handlerNtB62_13V1HttpHandler4ping00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aeu), !noalias !12955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.979.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i.i, i64 88, i1 false), !noalias !12941
  store i8 1, ptr %i.gcu, align 8, !noalias !12955
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit.i

bb.bah:                                           ; preds = %_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit.i
  %i.gdt = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.gdt)
          to label %bb.bal unwind label %bb.baj, !noalias !12943

bb.bai:                                           ; preds = %bb.bak, %bb.baj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler4ping0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gdu = phi ptr [ %i.fzn, %bb.baj ], [ %i.fzs, %bb.bak ], [ %i.fzs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler4ping0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %i.gdv = phi ptr [ %i.fzo, %bb.baj ], [ %i.fzt, %bb.bak ], [ %i.fzt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler4ping0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.pn12.i1037 = phi { ptr, i32 } [ %i.gdx, %bb.baj ], [ %.pn9.pn.i1036, %bb.bak ], [ %.pn9.pn.i1036, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler4ping0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %i.gdw = getelementptr inbounds nuw i8, ptr %1, i64 1257
  store i8 0, ptr %i.gdw, align 1, !noalias !12941
  store i8 2, ptr %i.gdu, align 8, !noalias !12941
  br label %.body1070

bb.baj:                                           ; preds = %bb.bah
  %i.gdx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bai

bb.bak:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler4ping0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gdy = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.gdy) #34
          to label %bb.bai unwind label %bb.azd, !noalias !12943

bb.bal:                                           ; preds = %_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit.i, %bb.bah
  store i8 0, ptr %i.fzp, align 1, !noalias !12941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.126076, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.979.i, i64 88, i1 false), !noalias !12966
  store i8 1, ptr %i.fzn, align 8, !noalias !12941
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.979.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afh)
  %i.gdz = icmp eq i64 %.sroa.068.0.i, -2
  br i1 %i.gdz, label %bb.bam, label %bb.ban

bb.bam:                                           ; preds = %.thread7266, %bb.bal
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.126076)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ban:                                           ; preds = %bb.bal
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.413, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.126076, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.126076)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler13route_request0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.fzo)
          to label %bb.bap unwind label %bb.bao

bb.bao:                                           ; preds = %bb.ban
  %i.gea = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bap:                                           ; preds = %bb.ban
  %i.geb = icmp eq i64 %.sroa.068.0.i, -1
  br i1 %i.geb, label %bb.baq, label %bb.bar

bb.baq:                                           ; preds = %bb.bap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.amr)
  store i64 %.sroa.571.0.i, ptr %i.amr, align 8
  %.sroa.3.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  store i64 %.sroa.776.sroa.0.0.i, ptr %.sroa.3.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  store ptr %.sroa.776.sroa.5.0.i, ptr %.sroa.3.sroa.4.0..sroa_idx, align 8
  %.sroa.3.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amr, i64 24
  store i64 %.sroa.776.sroa.6.0.i, ptr %.sroa.3.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.amq)
  invoke void @_RNvXsc_NtCsbakdBCgU4AF_16influxdb3_server4httpNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error9HttpErrorNtB5_12IntoResponse13into_response(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.amq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.amr)
          to label %bb.bat unwind label %bb.bas

bb.bar:                                           ; preds = %bb.bap
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.413, i64 88, i1 false)
  store i64 %.sroa.068.0.i, ptr %i.amo, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store i64 %.sroa.571.0.i, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store i64 %.sroa.776.sroa.0.0.i, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 24
  store ptr %.sroa.776.sroa.5.0.i, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.6.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  store i64 %.sroa.776.sroa.6.0.i, ptr %.sroa.416.sroa.6.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %i.gec = getelementptr inbounds nuw i8, ptr %1, i64 680
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1yQqqZMFGFX_16iox_v1_query_api7handler13V1HttpHandlerECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(88) %i.gec)
          to label %bb.jv unwind label %bb.im

bb.bas:                                           ; preds = %bb.baq
  %i.ged = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amr)
  br label %bb.jk

bb.bat:                                           ; preds = %bb.baq
  %.sroa.06594.0.copyload6595 = load i64, ptr %i.amq, align 8
  %.sroa.116598.0..sroa_idx6599 = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  %.sroa.116598.0.copyload6600 = load i8, ptr %.sroa.116598.0..sroa_idx6599, align 8
  %.sroa.186605.0..sroa_idx6606 = getelementptr inbounds nuw i8, ptr %i.amq, i64 9
  %.sroa.186605.0.copyload6607 = load i8, ptr %.sroa.186605.0..sroa_idx6606, align 1
  %.sroa.23.0..sroa_idx6615 = getelementptr inbounds nuw i8, ptr %i.amq, i64 10
  %.sroa.23.sroa.0.0.copyload = load i48, ptr %.sroa.23.0..sroa_idx6615, align 2
  %.sroa.236618.0..sroa_idx6619 = getelementptr inbounds nuw i8, ptr %i.amq, i64 16
  %.sroa.236618.0.copyload6620 = load ptr, ptr %.sroa.236618.0..sroa_idx6619, align 8
  %.sroa.24.0..sroa_idx6628 = getelementptr inbounds nuw i8, ptr %i.amq, i64 24
  %.sroa.25.0..sroa_idx6637 = getelementptr inbounds nuw i8, ptr %i.amq, i64 32
  %.sroa.25.sroa.0.sroa.0.0.copyload.a = load i64, ptr %.sroa.25.0..sroa_idx6637, align 8
  %.sroa.24.0.copyload6629 = load i64, ptr %.sroa.24.0..sroa_idx6628, align 8
  %.sroa.25.sroa.0.sroa.8.0..sroa.25.0..sroa_idx6637.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amq, i64 40
  %i.gee = load <4 x i64>, ptr %.sroa.25.sroa.0.sroa.8.0..sroa.25.0..sroa_idx6637.sroa_idx, align 8
  %.sroa.25.sroa.11.sroa.8.0..sroa.25.sroa.11.0..sroa.25.0..sroa_idx6637.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amq, i64 72
  %i.gef = load <4 x i64>, ptr %.sroa.25.sroa.11.sroa.8.0..sroa.25.sroa.11.0..sroa.25.0..sroa_idx6637.sroa_idx.sroa_idx, align 8
  %.sroa.25.sroa.11.sroa.8.sroa.11.0..sroa.25.sroa.11.sroa.8.0..sroa.25.sroa.11.0..sroa.25.0..sroa_idx6637.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amq, i64 104
  %.sroa.25.sroa.11.sroa.8.sroa.11.0.copyload = load i64, ptr %.sroa.25.sroa.11.sroa.8.sroa.11.0..sroa.25.sroa.11.sroa.8.0..sroa.25.sroa.11.0..sroa.25.0..sroa_idx6637.sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.27.0..sroa_idx6641 = getelementptr inbounds nuw i8, ptr %i.amq, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx6641, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amr)
  %i.geg = getelementptr inbounds nuw i8, ptr %1, i64 680
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1yQqqZMFGFX_16iox_v1_query_api7handler13V1HttpHandlerECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(88) %i.geg)
          to label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread unwind label %bb.im

bb.bau:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsgsNUVCRJO2f_13influxdb3_lib.exit5771, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.geh = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.bav:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.gei = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.experimental.noalias.scope.decl(metadata !12967)
  call void @llvm.experimental.noalias.scope.decl(metadata !12968)
  %i.gej = load i8, ptr %i.gei, align 8, !range !45, !alias.scope !12969, !noundef !13
  %switch.i.i1072 = icmp samesign ult i8 %i.gej, 10
  br i1 %switch.i.i1072, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.baw

bb.baw:                                           ; preds = %bb.bav
  %i.gek = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val1.i.i = load i64, ptr %i.gek, align 8, !alias.scope !12969, !noundef !13 ; 2 uses
  %i.gel = icmp eq i64 %.val1.i.i, 0
  br i1 %i.gel, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.bax

bb.bax:                                           ; preds = %bb.baw
  %i.gem = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.val.i.i1073 = load ptr, ptr %i.gem, align 16, !alias.scope !12969, !nonnull !13, !noundef !13
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i1073, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #29, !noalias !12969
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.bax, %bb.baw, %bb.bav
  %i.gen = getelementptr inbounds nuw i8, ptr %1, i64 674 ; 2 uses
  %i.geo = load i8, ptr %i.gen, align 2, !range !20, !noundef !13
  %i.gep = trunc nuw i8 %i.geo to i1
  br i1 %i.gep, label %bb.bba, label %bb.bay

bb.bay:                                           ; preds = %bb.bba, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsgsNUVCRJO2f_13influxdb3_lib.exit
  store i8 0, ptr %i.gen, align 2
  %i.geq = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12970)
  call void @llvm.experimental.noalias.scope.decl(metadata !12971)
  %i.ger = load ptr, ptr %i.geq, align 16, !alias.scope !12972, !nonnull !13, !noundef !13
  %i.ges = atomicrmw sub ptr %i.ger, i64 1 release, align 8, !noalias !12972
  %i.get = icmp eq i64 %i.ges, 1
  br i1 %i.get, label %bb.baz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.baz:                                           ; preds = %bb.bay
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.geq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bbe

bb.bba:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.geu = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.geu)
          to label %bb.bay unwind label %bb.bbd

bb.bbb:                                           ; preds = %bb.ivt, %bb.bbd, %bb.df
  %.pn278 = phi { ptr, i32 } [ %i.gfa, %bb.bbd ], [ %.pn276, %bb.ivt ], [ %.pn276, %bb.df ] ; 2 uses
  %i.gev = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.gev, align 2
  %i.gew = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12973)
  call void @llvm.experimental.noalias.scope.decl(metadata !12974)
  %i.gex = load ptr, ptr %i.gew, align 16, !alias.scope !12975, !nonnull !13, !noundef !13
  %i.gey = atomicrmw sub ptr %i.gex, i64 1 release, align 8, !noalias !12975
  %i.gez = icmp eq i64 %i.gey, 1
  br i1 %i.gez, label %bb.bbc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEECsgsNUVCRJO2f_13influxdb3_lib.exit1076

bb.bbc:                                           ; preds = %bb.bbb
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gew)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEECsgsNUVCRJO2f_13influxdb3_lib.exit1076 unwind label %bb.bh

bb.bbd:                                           ; preds = %bb.ivs, %bb.bba
  %i.gfa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bbb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEECsgsNUVCRJO2f_13influxdb3_lib.exit1076: ; preds = %bb.bbb, %bb.bbc, %bb.bbe
  %.pn280 = phi { ptr, i32 } [ %i.gfb, %bb.bbe ], [ %.pn278, %bb.bbc ], [ %.pn278, %bb.bbb ]
  store i8 2, ptr %i.aow, align 1
  resume { ptr, i32 } %.pn280

bb.bbe:                                           ; preds = %bb.ivr, %bb.baz
  %i.gfb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEECsgsNUVCRJO2f_13influxdb3_lib.exit1076

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.ivq, %bb.ivr, %bb.bay, %bb.baz
  %.sroa.25.sroa.11.sroa.8.sroa.11.3 = phi i64 [ %.sroa.25.sroa.11.sroa.8.sroa.11.0, %bb.bay ], [ %.sroa.25.sroa.11.sroa.8.sroa.11.0, %bb.baz ], [ %.sroa.25.sroa.11.sroa.8.sroa.11.4, %bb.ivr ], [ %.sroa.25.sroa.11.sroa.8.sroa.11.4, %bb.ivq ]
  %.sroa.236618.3 = phi ptr [ %.sroa.236618.0, %bb.bay ], [ %.sroa.236618.0, %bb.baz ], [ %.sroa.236618.4, %bb.ivr ], [ %.sroa.236618.4, %bb.ivq ]
  %.sroa.186605.3 = phi i8 [ %.sroa.186605.0, %bb.bay ], [ %.sroa.186605.0, %bb.baz ], [ %.sroa.186605.4, %bb.ivr ], [ %.sroa.186605.4, %bb.ivq ]
  %.sroa.116598.3 = phi i8 [ %.sroa.116598.0, %bb.bay ], [ %.sroa.116598.0, %bb.baz ], [ %.sroa.116598.4, %bb.ivr ], [ %.sroa.116598.4, %bb.ivq ]
  %.sroa.06594.3 = phi i64 [ %.sroa.06594.0, %bb.bay ], [ %.sroa.06594.0, %bb.baz ], [ %i.bss, %bb.ivr ], [ %i.bss, %bb.ivq ]
  %.sroa.23.sroa.0.3 = phi i48 [ %.sroa.23.sroa.0.0, %bb.bay ], [ %.sroa.23.sroa.0.0, %bb.baz ], [ %.sroa.23.sroa.0.4, %bb.ivr ], [ %.sroa.23.sroa.0.4, %bb.ivq ]
  %i.gfc = phi <2 x i64> [ %i.ash, %bb.bay ], [ %i.ash, %bb.baz ], [ %i.abgv, %bb.ivr ], [ %i.abgv, %bb.ivq ]
  %i.gfd = phi <4 x i64> [ %i.asi, %bb.bay ], [ %i.asi, %bb.baz ], [ %i.abgw, %bb.ivr ], [ %i.abgw, %bb.ivq ]
  %i.gfe = phi <4 x i64> [ %i.asj, %bb.bay ], [ %i.asj, %bb.baz ], [ %i.abgx, %bb.ivr ], [ %i.abgx, %bb.ivq ]
  store i64 %.sroa.06594.3, ptr %0, align 8
  %.sroa.116598.0..sroa_idx6601 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.116598.3, ptr %.sroa.116598.0..sroa_idx6601, align 8
  %.sroa.186605.0..sroa_idx6608 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.186605.3, ptr %.sroa.186605.0..sroa_idx6608, align 1
  %.sroa.23.0..sroa_idx6616 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i48 %.sroa.23.sroa.0.3, ptr %.sroa.23.0..sroa_idx6616, align 2
  %.sroa.236618.0..sroa_idx6621 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.236618.3, ptr %.sroa.236618.0..sroa_idx6621, align 8
  %.sroa.24.0..sroa_idx6630 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.gfc, ptr %.sroa.24.0..sroa_idx6630, align 8
  %.sroa.25.sroa.0.sroa.8.0..sroa.25.0..sroa_idx6638.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i64> %i.gfd, ptr %.sroa.25.sroa.0.sroa.8.0..sroa.25.0..sroa_idx6638.sroa_idx, align 8
  %.sroa.25.sroa.11.sroa.8.0..sroa.25.sroa.11.0..sroa.25.0..sroa_idx6638.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x i64> %i.gfe, ptr %.sroa.25.sroa.11.sroa.8.0..sroa.25.sroa.11.0..sroa.25.0..sroa_idx6638.sroa_idx.sroa_idx, align 8
  %.sroa.25.sroa.11.sroa.8.sroa.11.0..sroa.25.sroa.11.sroa.8.0..sroa.25.sroa.11.0..sroa.25.0..sroa_idx6638.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.25.sroa.11.sroa.8.sroa.11.3, ptr %.sroa.25.sroa.11.sroa.8.sroa.11.0..sroa.25.sroa.11.sroa.8.0..sroa.25.sroa.11.0..sroa.25.0..sroa_idx6638.sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.27.0..sroa_idx6642 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27.0..sroa_idx6642, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27, i64 16, i1 false)
  br label %common.ret

bb.bbf:                                           ; preds = %bb.bbi, %bb.bbh
  %i.gff = landingpad { ptr, i32 }
          cleanup
  br label %.body1100

.body1100:                                        ; preds = %bb.bdx, %bb.bbf
  %i.gfg = phi ptr [ %i.gfh, %bb.bbf ], [ %i.gis, %bb.bdx ]
  %eh.lpad-body1101 = phi { ptr, i32 } [ %i.gff, %bb.bbf ], [ %.pn2.i, %bb.bdx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166100)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi17handle_pprof_heap0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.gfg) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bh

bb.bbg:                                           ; preds = %bb.a
  %.phi.trans.insert8087 = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %.pre8088 = load i8, ptr %.phi.trans.insert8087, align 8, !range !37, !noalias !12976
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.166100)
  %i.gfh = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.840.sroa.3.i)
  %i.gfi = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 9 uses
  switch i8 %.pre8088, label %default.unreachable8563 [
    i8 0, label %.thread118.i
    i8 1, label %bb.bbh
    i8 2, label %bb.bbi
    i8 3, label %bb.bbl
  ]

.thread118.i:                                     ; preds = %.thread8585, %bb.bbg
  %i.gfj = phi ptr [ %i.bub, %.thread8585 ], [ %i.gfi, %bb.bbg ]
  %i.gfk = phi ptr [ %i.bua, %.thread8585 ], [ %i.gfh, %bb.bbg ] ; 2 uses
  %i.gfl = getelementptr inbounds nuw i8, ptr %1, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.gfl, ptr noundef nonnull align 8 dereferenceable(240) %i.gfk, i64 240, i1 false), !noalias !12976
  %.sroa.8.0..sroa_idx.i1097 = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i1097, align 16, !noalias !12976
  %i.gfm = getelementptr inbounds nuw i8, ptr %1, i64 1168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i)
  br label %.thread.i.i1095

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvCslH9KSEXdOXu_19jemalloc_pprof_http19pprof_heap_response0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.body.thread.i, %bb.bbk, %bb.bbj, %.body.i1093
  %i.gfn = phi ptr [ %i.gfi, %.body.i1093 ], [ %i.gfi, %bb.bbk ], [ %i.gfi, %bb.bbj ], [ %i.gfy, %.body.thread.i ]
  %i.gfo = phi ptr [ %i.gfh, %.body.i1093 ], [ %i.gfh, %bb.bbk ], [ %i.gfh, %bb.bbj ], [ %i.gfz, %.body.thread.i ]
  %.pn.i1081 = phi { ptr, i32 } [ %i.gfq, %.body.i1093 ], [ %i.gfq, %bb.bbk ], [ %i.gfq, %bb.bbj ], [ %.pn32.pn.i.i, %.body.thread.i ]
  %i.gfp = getelementptr inbounds nuw i8, ptr %1, i64 928
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.gfp) #34
          to label %bb.bdx unwind label %bb.bea, !noalias !12977

bb.bbh:                                           ; preds = %bb.bbg
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #36
          to label %.noexc1098 unwind label %bb.bbf

.noexc1098:                                       ; preds = %bb.bbh
  unreachable

bb.bbi:                                           ; preds = %bb.bbg
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #36
          to label %.noexc1099 unwind label %bb.bbf

.noexc1099:                                       ; preds = %bb.bbi
  unreachable

.body.i1093:                                      ; preds = %bb.bbn, %bb.bbm
  %i.gfq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pr.i1094 = load i8, ptr %.phi.trans.insert.i1077, align 16, !noalias !12976
  %cond.i.i = icmp eq i8 %.pr.i1094, 3
  br i1 %cond.i.i, label %bb.bbj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvCslH9KSEXdOXu_19jemalloc_pprof_http19pprof_heap_response0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bbj:                                           ; preds = %.body.i1093
  %i.gfr = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.gfs = load i8, ptr %i.gfr, align 8, !range !37, !noalias !12976, !noundef !13
  %cond.i.i.i = icmp eq i8 %i.gfs, 3
  br i1 %cond.i.i.i, label %bb.bbk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvCslH9KSEXdOXu_19jemalloc_pprof_http19pprof_heap_response0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
end_hunk_2
