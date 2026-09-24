Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.216?download=true
inline.NumInlined: 458
inline.NumDeleted: 248
begin_hunk_0_@_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference15update_requests28convert_vector_with_inferred:bb.a
  store i64 33, ptr %.sroa.648.0..sroa_idx, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RNvXs28_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_15VectorPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit24, %bb.am
  %i.ce = load i64, ptr %i.n, align 8, !range !12, !alias.scope !427, !noundef !5
  %i.cf = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  switch i64 %i.cf, label %bb.ao [
    i64 2, label %bb.ap
    i64 3, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema15InferenceObjectECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ab)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_.exit29

bb.ap:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema8DocumentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_.exit29

bb.aq:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema5ImageECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ab)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_.exit29

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_.exit29: ; preds = %bb.ao, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.i

_RNvXs28_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_15VectorPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit24: ; preds = %.noexc23, %_RNvXs9_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i18, %.noexc19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  store i32 -1, ptr %0, align 8
  br label %bb.an

bb.ar:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.aw, %bb.av, %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.body33:                                          ; preds = %bb.ax, %bb.ar
  %eh.lpad-body34 = phi { ptr, i32 } [ %i.ch, %bb.ar ], [ %i.cq, %bb.ax ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.m) #19
          to label %bb.aa unwind label %bb.z

bb.as:                                            ; preds = %bb.h
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ci = load i64, ptr %i.af, align 8, !range !15, !alias.scope !428, !noalias !429, !noundef !5 ; 3 uses
  %i.cj = icmp ne i64 %i.ci, -9223372036854775807
  call void @llvm.assume(i1 %i.cj)
  %i.ck = xor i64 %i.ci, -9223372036854775808
  %i.cl = icmp slt i64 %i.ci, 0
  %i.cm = select i1 %i.cl, i64 %i.ck, i64 1
  switch i64 %i.cm, label %bb.au [
    i64 0, label %bb.av
    i64 1, label %bb.aw
    i64 2, label %bb.az
  ]

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %.noexc31 unwind label %bb.ar

.noexc31:                                         ; preds = %bb.av
  store i64 -9223372036854775808, ptr %i.d, align 8
  br label %_RNvXs28_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_15VectorPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit36

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !430
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af)
          to label %.noexc32 unwind label %bb.ar

.noexc32:                                         ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !430
  %i.cp = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp)
          to label %_RNvXs9_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i30 unwind label %bb.ax, !noalias !431

bb.ax:                                            ; preds = %.noexc32
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #19
          to label %.body33 unwind label %bb.ay, !noalias !431

bb.ay:                                            ; preds = %bb.ax
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !431
  unreachable

_RNvXs9_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i30: ; preds = %.noexc32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !430
  br label %_RNvXs28_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_15VectorPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit36

bb.az:                                            ; preds = %bb.at
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
          to label %.noexc35 unwind label %bb.ar

.noexc35:                                         ; preds = %bb.az
  store i64 -9223372036854775806, ptr %i.d, align 8
  br label %_RNvXs28_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_15VectorPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit36

bb.ba:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !432
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 34, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc39 unwind label %bb.ar

.noexc39:                                         ; preds = %bb.ba
  %i.cv = load i64, ptr %i.a, align 8, !range !8, !noalias !432, !noundef !5
  %i.cw = trunc nuw i64 %i.cv to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !range !16, !noalias !432, !noundef !5 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cw, label %bb.bb, label %bb.bc, !prof !14

bb.bb:                                            ; preds = %.noexc39
  %i.da = load i64, ptr %i.cz, align 8, !noalias !432
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cy, i64 %i.da) #22
          to label %.noexc40 unwind label %bb.ar

.noexc40:                                         ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %.noexc39
  %i.db = load ptr, ptr %i.cz, align 8, !noalias !432, !nonnull !5, !noundef !5 ; 2 uses
  %i.dc = icmp samesign ugt i64 %i.cy, 33
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.db, ptr noundef nonnull align 1 dereferenceable(34) @6, i64 34, i1 false), !noalias !432
  store i32 11, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cy, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.db, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 34, ptr %.sroa.654.0..sroa_idx, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvXs28_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_15VectorPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit36, %bb.bc
  %i.dd = load i64, ptr %i.m, align 8, !range !12, !alias.scope !433, !noundef !5
  %i.de = call i64 @llvm.smax.i64(i64 %i.dd, i64 2)
  switch i64 %i.de, label %bb.be [
    i64 2, label %bb.bf
    i64 3, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema15InferenceObjectECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ae)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_.exit41

bb.bf:                                            ; preds = %bb.bd
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema8DocumentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_.exit41

bb.bg:                                            ; preds = %bb.bd
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema5ImageECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ae)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_.exit41

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEBJ_.exit41: ; preds = %bb.be, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.i

_RNvXs28_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_15VectorPersistedNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit36: ; preds = %.noexc35, %_RNvXs9_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i30, %.noexc31
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  store i32 -1, ptr %0, align 8
  br label %bb.bd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferred(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(248) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 22 uses
  %i.b = alloca [208 x i8], align 8               ; 21 uses
  %i.c = alloca [40 x i8], align 8                ; 11 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.0226 = alloca [72 x i8], align 8         ; 3 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [112 x i8], align 8               ; 20 uses
  %.sroa.7183 = alloca [7 x i8], align 1          ; 2 uses
  %i.p = alloca [96 x i8], align 8                ; 11 uses
  %i.q = alloca [72 x i8], align 8                ; 3 uses
  %i.r = alloca [96 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [96 x i8], align 8                ; 7 uses
  %i.w = alloca [96 x i8], align 8                ; 11 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 14 uses
  %i.z = alloca [208 x i8], align 8               ; 17 uses
  %.sroa.19.sroa.12 = alloca [7 x i8], align 1    ; 5 uses
  %.sroa.19.sroa.13.sroa.0 = alloca [152 x i8], align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.sroa.13.sroa.0)
  %i.aa = load i64, ptr %1, align 8, !range !438, !noundef !5 ; 4 uses
  %.not = icmp eq i64 %i.aa, -2
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %.thread616, label %bb.b

.thread616:                                       ; preds = %bb.a
  %.sroa.0245.sroa.0.sroa.0.0.copyload = load i32, ptr %i.ab, align 8
  %.sroa.0245.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0245.sroa.0.sroa.4.0.copyload = load i32, ptr %.sroa.0245.sroa.0.sroa.4.0..sroa_idx, align 4
  %.sroa.0245.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0245.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0245.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0245.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0245.sroa.4.0.copyload = load i32, ptr %.sroa.0245.sroa.4.0..sroa_idx, align 8
  %.sroa.0245.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0245.sroa.5.0.copyload = load i32, ptr %.sroa.0245.sroa.5.0..sroa_idx, align 4
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4246.0.copyload = load i8, ptr %.sroa.4246.0..sroa_idx, align 8
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.5247.sroa.0.0.copyload = load i24, ptr %.sroa.5247.0..sroa_idx, align 1
  %.sroa.5247.sroa.4.0..sroa.5247.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.5247.sroa.4.sroa.0.0.copyload = load i32, ptr %.sroa.5247.sroa.4.0..sroa.5247.0..sroa_idx.sroa_idx, align 4
  %.sroa.5247.sroa.4.sroa.4.0..sroa.5247.sroa.4.0..sroa.5247.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5247.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.5247.sroa.4.sroa.4.0..sroa.5247.sroa.4.0..sroa.5247.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5247.sroa.5.0..sroa.5247.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5247.sroa.5.0.copyload = load i8, ptr %.sroa.5247.sroa.5.0..sroa.5247.0..sroa_idx.sroa_idx, align 8
  %.sroa.5247.sroa.6.0..sroa.5247.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5247.sroa.6.0..sroa.5247.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.5247.sroa.7.0..sroa.5247.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %.sroa.19.sroa.13.sroa.0, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.5247.sroa.7.0..sroa.5247.0..sroa_idx.sroa_idx, i64 152, i1 false)
  %.sroa.5247.sroa.7.sroa.4.0..sroa.5247.sroa.7.0..sroa.5247.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ac = load <2 x float>, ptr %.sroa.5247.sroa.7.sroa.4.0..sroa.5247.sroa.7.0..sroa.5247.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0.copyload = load i64, ptr %i.ab, align 8 ; 6 uses
  %i.ad = trunc i64 %.sroa.7.0.copyload to i8     ; 6 uses
  %i.ae = lshr i64 %.sroa.7.0.copyload, 8         ; 2 uses
  %i.af = trunc nuw i64 %i.ae to i56              ; 6 uses
  %.sroa.16.sroa.13.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.16.sroa.13.0.copyload = load i64, ptr %.sroa.16.sroa.13.0..sroa.16.0..sroa_idx.sroa_idx, align 8 ; 10 uses
  %.sroa.16.sroa.14.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.16.sroa.14.0.copyload = load i32, ptr %.sroa.16.sroa.14.0..sroa.16.0..sroa_idx.sroa_idx, align 8 ; 9 uses
  %.sroa.16.sroa.15.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.16.sroa.15.0.copyload = load float, ptr %.sroa.16.sroa.15.0..sroa.16.0..sroa_idx.sroa_idx, align 4 ; 9 uses
  %.sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.16.sroa.16.sroa.0.sroa.0.0.copyload = load i32, ptr %.sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx, align 8 ; 8 uses
  %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.16.sroa.16.sroa.0.sroa.12.0.copyload = load i32, ptr %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx.sroa_idx, align 4 ; 8 uses
  %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.16.sroa.16.sroa.0.sroa.13.0.copyload = load i64, ptr %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 10 uses
  %.sroa.16.sroa.16.sroa.12.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.16.sroa.16.sroa.12.0.copyload = load i32, ptr %.sroa.16.sroa.16.sroa.12.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 7 uses
  %.sroa.16.sroa.16.sroa.13.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.16.sroa.16.sroa.13.0.copyload = load i32, ptr %.sroa.16.sroa.16.sroa.13.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx.sroa_idx.sroa_idx, align 4 ; 7 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 8 ; 4 uses
  %i.ag = trunc i32 %.sroa.18.0.copyload to i8    ; 5 uses
  %i.ah = lshr i32 %.sroa.18.0.copyload, 8
  %i.ai = trunc nuw i32 %i.ah to i24              ; 4 uses
  %.sroa.19.sroa.10.0..sroa.19.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.19.sroa.10.sroa.0.0.copyload = load i32, ptr %.sroa.19.sroa.10.0..sroa.19.0..sroa_idx.sroa_idx, align 4 ; 6 uses
  %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.19.sroa.10.sroa.10.0.copyload = load i64, ptr %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.19.sroa.11.0..sroa.19.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.19.sroa.11.0.copyload = load i8, ptr %.sroa.19.sroa.11.0..sroa.19.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.19.sroa.12.0..sroa.19.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12.0..sroa.19.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %.sroa.19.sroa.13.sroa.0, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx, i64 152, i1 false)
  %.sroa.19.sroa.13.sroa.11.0..sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.aj = load <2 x float>, ptr %.sroa.19.sroa.13.sroa.11.0..sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.19.sroa.13.sroa.13.0..sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.19.sroa.13.sroa.13.0.copyload = load float, ptr %.sroa.19.sroa.13.sroa.13.0..sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.ak = icmp sgt i64 %i.aa, 9
  br i1 %i.ak, label %bb.c, label %.thread653

bb.c:                                             ; preds = %bb.b
  switch i64 %i.aa, label %default.unreachable [
    i64 10, label %bb.d
    i64 11, label %bb.e
    i64 12, label %bb.f
    i64 13, label %bb.g
    i64 14, label %bb.h
    i64 15, label %bb.i
    i64 16, label %bb.j
    i64 17, label %bb.k
    i64 18, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.thread616, %bb.c
  %.sroa.19.sroa.0.0578652 = phi i24 [ %.sroa.5247.sroa.0.0.copyload, %.thread616 ], [ %i.ai, %bb.c ]
  %.sroa.19.sroa.11.0580651 = phi i8 [ %.sroa.5247.sroa.5.0.copyload, %.thread616 ], [ %.sroa.19.sroa.11.0.copyload, %bb.c ]
  %.sroa.19.sroa.10.sroa.0.0582650 = phi i32 [ %.sroa.5247.sroa.4.sroa.0.0.copyload, %.thread616 ], [ %.sroa.19.sroa.10.sroa.0.0.copyload, %bb.c ]
  %.sroa.19.sroa.10.sroa.10.0584649 = phi i64 [ %.sroa.5247.sroa.4.sroa.4.0.copyload, %.thread616 ], [ %.sroa.19.sroa.10.sroa.10.0.copyload, %bb.c ]
  %.sroa.16.sroa.16.sroa.12.0586648 = phi i32 [ %.sroa.0245.sroa.4.0.copyload, %.thread616 ], [ %.sroa.16.sroa.16.sroa.12.0.copyload, %bb.c ]
  %.sroa.16.sroa.16.sroa.13.0588647 = phi i32 [ %.sroa.0245.sroa.5.0.copyload, %.thread616 ], [ %.sroa.16.sroa.16.sroa.13.0.copyload, %bb.c ]
  %.sroa.16.sroa.16.sroa.0.sroa.0.0590646 = phi i32 [ %.sroa.0245.sroa.0.sroa.0.0.copyload, %.thread616 ], [ %.sroa.16.sroa.16.sroa.0.sroa.0.0.copyload, %bb.c ]
  %.sroa.16.sroa.16.sroa.0.sroa.12.0592645 = phi i32 [ %.sroa.0245.sroa.0.sroa.4.0.copyload, %.thread616 ], [ %.sroa.16.sroa.16.sroa.0.sroa.12.0.copyload, %bb.c ]
  %.sroa.16.sroa.16.sroa.0.sroa.13.0594644 = phi i64 [ %.sroa.0245.sroa.0.sroa.5.0.copyload, %.thread616 ], [ %.sroa.16.sroa.16.sroa.0.sroa.13.0.copyload, %bb.c ]
  %.sroa.16.sroa.15.0602641 = phi float [ undef, %.thread616 ], [ %.sroa.16.sroa.15.0.copyload, %bb.c ]
  %.sroa.16.sroa.14.0604640 = phi i32 [ undef, %.thread616 ], [ %.sroa.16.sroa.14.0.copyload, %bb.c ]
  %.sroa.16.sroa.13.0606639 = phi i64 [ undef, %.thread616 ], [ %.sroa.16.sroa.13.0.copyload, %bb.c ]
  %.sroa.16.sroa.0.0608638 = phi i64 [ 0, %.thread616 ], [ %i.ae, %bb.c ]
  %.sroa.18.0610637 = phi i8 [ %.sroa.4246.0.copyload, %.thread616 ], [ %i.ag, %bb.c ]
  %.sroa.7.0612636 = phi i64 [ 2, %.thread616 ], [ %.sroa.7.0.copyload, %bb.c ]
  %i.al = phi <2 x float> [ %i.ac, %.thread616 ], [ %i.aj, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.0.0590646, ptr %i.z, align 8
  %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.12.0592645, ptr %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa_idx, align 4
  %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.16.sroa.16.sroa.0.sroa.13.0594644, ptr %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 %.sroa.16.sroa.16.sroa.12.0586648, ptr %.sroa.16.sroa.16.sroa.12.0..sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i32 %.sroa.16.sroa.16.sroa.13.0588647, ptr %.sroa.16.sroa.16.sroa.13.0..sroa_idx, align 4
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %.sroa.18.0610637, ptr %.sroa.18.32..sroa_idx, align 8
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 25
  store i24 %.sroa.19.sroa.0.0578652, ptr %.sroa.19.32..sroa_idx, align 1
  %.sroa.19.sroa.10.0..sroa.19.32..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store i32 %.sroa.19.sroa.10.sroa.0.0582650, ptr %.sroa.19.sroa.10.0..sroa.19.32..sroa_idx.sroa_idx, align 4
  %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.32..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %.sroa.19.sroa.10.sroa.10.0584649, ptr %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.32..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.19.sroa.11.0..sroa.19.32..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i8 %.sroa.19.sroa.11.0580651, ptr %.sroa.19.sroa.11.0..sroa.19.32..sroa_idx.sroa_idx, align 8
  %.sroa.19.sroa.12.0..sroa.19.32..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12.0..sroa.19.32..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12, i64 7, i1 false)
  %.sroa.19.sroa.13.0..sroa.19.32..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.19.sroa.13.0..sroa.19.32..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(152) %.sroa.19.sroa.13.sroa.0, i64 152, i1 false)
  %.sroa.19.sroa.13.sroa.11.0..sroa.19.sroa.13.0..sroa.19.32..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  store <2 x float> %i.al, ptr %.sroa.19.sroa.13.sroa.11.0..sroa.19.sroa.13.0..sroa.19.32..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest34convert_vector_input_with_inferred(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.am = load i32, ptr %i.k, align 8, !range !17, !noundef !5 ; 2 uses
  %.not557 = icmp eq i32 %i.am, -1
  br i1 %.not557, label %bb.n, label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.0.0.copyload, ptr %i.y, align 8
  %.sroa.5500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.12.0.copyload, ptr %.sroa.5500.0..sroa_idx, align 4
  %.sroa.6501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sroa.16.sroa.16.sroa.0.sroa.13.0.copyload, ptr %.sroa.6501.0..sroa_idx, align 8
  %.sroa.7502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %.sroa.16.sroa.16.sroa.12.0.copyload, ptr %.sroa.7502.0..sroa_idx, align 8
  %.sroa.8503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  store i32 %.sroa.16.sroa.16.sroa.13.0.copyload, ptr %.sroa.8503.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 %i.ad, ptr %i.w, align 8
  %.sroa.0276.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i56 %i.af, ptr %.sroa.0276.sroa.4.0..sroa_idx, align 1
  %.sroa.0276.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.16.sroa.13.0.copyload, ptr %.sroa.0276.sroa.5.0..sroa_idx, align 8
  %.sroa.0276.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %.sroa.16.sroa.14.0.copyload, ptr %.sroa.0276.sroa.6.0..sroa_idx, align 8
  %.sroa.0276.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store float %.sroa.16.sroa.15.0.copyload, ptr %.sroa.0276.sroa.7.0..sroa_idx, align 4
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr null, ptr %.sroa.4277.0..sroa_idx, align 8
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr null, ptr %.sroa.6279.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr %2, ptr %i.an, align 8
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_7flatten7FlattenINtNtB6_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferred0ENtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalINtNtB6_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCINvXso_B6w_IB6u_IB1T_B4Q_EB6Q_EINtNtNtB4_6traits7collect12FromIteratorIB6u_B4Q_B6Q_EE9from_iterBQ_E0B8d_EB3p_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.w)
          to label %bb.r unwind label %bb.ad

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ad, ptr %i.b, align 8
  %.sroa.16.8..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i56 %i.af, ptr %.sroa.16.8..sroa_idx12, align 1
  %.sroa.16.sroa.13.0..sroa.16.8..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.16.sroa.13.0.copyload, ptr %.sroa.16.sroa.13.0..sroa.16.8..sroa_idx12.sroa_idx, align 8
  %.sroa.16.sroa.14.0..sroa.16.8..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.16.sroa.14.0.copyload, ptr %.sroa.16.sroa.14.0..sroa.16.8..sroa_idx12.sroa_idx, align 8
  %.sroa.16.sroa.15.0..sroa.16.8..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %.sroa.16.sroa.15.0.copyload, ptr %.sroa.16.sroa.15.0..sroa.16.8..sroa_idx12.sroa_idx, align 4
  %.sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.0.0.copyload, ptr %.sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.12.0.copyload, ptr %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx.sroa_idx, align 4
  %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.16.sroa.16.sroa.0.sroa.13.0.copyload, ptr %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %.sroa.16.sroa.16.sroa.12.0.copyload, ptr %.sroa.16.sroa.16.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %.sroa.16.sroa.16.sroa.13.0.copyload, ptr %.sroa.16.sroa.16.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx12.sroa_idx.sroa_idx, align 4
  %.sroa.18.8..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %i.ag, ptr %.sroa.18.8..sroa_idx22, align 8
  %.sroa.19.8..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  store i24 %i.ai, ptr %.sroa.19.8..sroa_idx29, align 1
  %.sroa.19.sroa.10.0..sroa.19.8..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %.sroa.19.sroa.10.sroa.0.0.copyload, ptr %.sroa.19.sroa.10.0..sroa.19.8..sroa_idx29.sroa_idx, align 4
  %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.8..sroa_idx29.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.19.sroa.10.sroa.10.0.copyload, ptr %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.8..sroa_idx29.sroa_idx.sroa_idx, align 8
  %.sroa.19.sroa.11.0..sroa.19.8..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.sroa.19.sroa.11.0.copyload, ptr %.sroa.19.sroa.11.0..sroa.19.8..sroa_idx29.sroa_idx, align 8
  %.sroa.19.sroa.12.0..sroa.19.8..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12.0..sroa.19.8..sroa_idx29.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12.0..sroa.19.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.19.sroa.13.0..sroa.19.8..sroa_idx29.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.19.sroa.13.0..sroa.19.8..sroa_idx29.sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx, i64 136, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x float> %i.aj, ptr %.sroa.5539.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest34convert_vector_input_with_inferred(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.ae unwind label %bb.ao

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %i.ad, ptr %i.p, align 8
  %.sroa.0347.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i56 %i.af, ptr %.sroa.0347.sroa.4.0..sroa_idx, align 1
  %.sroa.0347.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.16.sroa.13.0.copyload, ptr %.sroa.0347.sroa.5.0..sroa_idx, align 8
  %.sroa.0347.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %.sroa.16.sroa.14.0.copyload, ptr %.sroa.0347.sroa.6.0..sroa_idx, align 8
  %.sroa.0347.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store float %.sroa.16.sroa.15.0.copyload, ptr %.sroa.0347.sroa.7.0..sroa_idx, align 4
  %.sroa.4348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr null, ptr %.sroa.4348.0..sroa_idx, align 8
  %.sroa.6350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr null, ptr %.sroa.6350.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr %2, ptr %i.ap, align 8
  call void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_7flatten7FlattenINtNtB6_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds1_0EINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtB6_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCINvXso_B7T_IB7R_IB1T_B4T_EB8d_EINtNtNtB4_6traits7collect12FromIteratorIB7R_B4T_B8d_EE9from_iterBQ_E0B9A_EB3p_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.aq = load i32, ptr %i.f, align 8, !range !17, !noundef !5 ; 2 uses
  %.not546 = icmp eq i32 %i.aq, -1
  br i1 %.not546, label %bb.aq, label %bb.ap

bb.h:                                             ; preds = %bb.c
  %.not545 = icmp eq i64 %.sroa.7.0.copyload, -1
  br i1 %.not545, label %bb.as, label %bb.ar

bb.i:                                             ; preds = %bb.c
  %i.ar = and i64 %.sroa.7.0.copyload, 1
  %. = xor i64 %i.ar, -1
  store i64 -9223372036854775790, ptr %0, align 8
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %., ptr %.sroa.4185.0..sroa_idx, align 8
  %.sroa.4185.sroa.5.0..sroa.4185.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %.sroa.4185.sroa.5.0..sroa.4185.0..sroa_idx.sroa_idx, align 8
  br label %bb.bd

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.ad, ptr %i.c, align 8
  %.sroa.16.8..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i56 %i.af, ptr %.sroa.16.8..sroa_idx15, align 1
  %.sroa.16.sroa.13.0..sroa.16.8..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.16.sroa.13.0.copyload, ptr %.sroa.16.sroa.13.0..sroa.16.8..sroa_idx15.sroa_idx, align 8
  %.sroa.16.sroa.14.0..sroa.16.8..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %.sroa.16.sroa.14.0.copyload, ptr %.sroa.16.sroa.14.0..sroa.16.8..sroa_idx15.sroa_idx, align 8
  %.sroa.16.sroa.15.0..sroa.16.8..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float %.sroa.16.sroa.15.0.copyload, ptr %.sroa.16.sroa.15.0..sroa.16.8..sroa_idx15.sroa_idx, align 4
  %.sroa.16.sroa.16.0..sroa.16.8..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.0.0.copyload, ptr %.sroa.16.sroa.16.0..sroa.16.8..sroa_idx15.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx15.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.12.0.copyload, ptr %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx15.sroa_idx.sroa_idx, align 4
  %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx15.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.16.sroa.16.sroa.0.sroa.13.0.copyload, ptr %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx15.sroa_idx.sroa_idx, align 8
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs4_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtB7_14FusionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema3RrfE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.4192.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c)
  store i64 -9223372036854775790, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bd

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 %i.ad, ptr %i.o, align 8
  %.sroa.16.8..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i56 %i.af, ptr %.sroa.16.8..sroa_idx13, align 1
  %.sroa.16.sroa.13.0..sroa.16.8..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.16.sroa.13.0.copyload, ptr %.sroa.16.sroa.13.0..sroa.16.8..sroa_idx13.sroa_idx, align 8
  %.sroa.16.sroa.14.0..sroa.16.8..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %.sroa.16.sroa.14.0.copyload, ptr %.sroa.16.sroa.14.0..sroa.16.8..sroa_idx13.sroa_idx, align 8
  %.sroa.16.sroa.15.0..sroa.16.8..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store float %.sroa.16.sroa.15.0.copyload, ptr %.sroa.16.sroa.15.0..sroa.16.8..sroa_idx13.sroa_idx, align 4
  %.sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.0.0.copyload, ptr %.sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.12.0.copyload, ptr %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx.sroa_idx, align 4
  %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.sroa.16.sroa.16.sroa.0.sroa.13.0.copyload, ptr %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 %.sroa.16.sroa.16.sroa.12.0.copyload, ptr %.sroa.16.sroa.16.sroa.12.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 %.sroa.16.sroa.16.sroa.13.0.copyload, ptr %.sroa.16.sroa.16.sroa.13.0..sroa.16.sroa.16.0..sroa.16.8..sroa_idx13.sroa_idx.sroa_idx, align 4
  %.sroa.18.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i8 %i.ag, ptr %.sroa.18.8..sroa_idx24, align 8
  %.sroa.19.8..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.o, i64 49
  store i24 %i.ai, ptr %.sroa.19.8..sroa_idx30, align 1
  %.sroa.19.sroa.10.0..sroa.19.8..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 %.sroa.19.sroa.10.sroa.0.0.copyload, ptr %.sroa.19.sroa.10.0..sroa.19.8..sroa_idx30.sroa_idx, align 4
  %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.8..sroa_idx30.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 %.sroa.19.sroa.10.sroa.10.0.copyload, ptr %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.8..sroa_idx30.sroa_idx.sroa_idx, align 8
  %.sroa.19.sroa.11.0..sroa.19.8..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 %.sroa.19.sroa.11.0.copyload, ptr %.sroa.19.sroa.11.0..sroa.19.8..sroa_idx30.sroa_idx, align 8
  %.sroa.19.sroa.12.0..sroa.19.8..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12.0..sroa.19.8..sroa_idx30.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12.0..sroa.19.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.19.sroa.13.0..sroa.19.8..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.sroa.13.0..sroa.19.8..sroa_idx30.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @_RNvXsj_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula15FormulaInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema12FormulaQueryE4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bd

bb.l:                                             ; preds = %bb.c
  store i64 -9223372036854775787, ptr %0, align 8
  br label %bb.bd

.thread653:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.aa, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ad, ptr %.sroa.7.0..sroa_idx2, align 8
  %.sroa.16.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i56 %i.af, ptr %.sroa.16.0..sroa_idx11, align 1
  %.sroa.16.sroa.13.0..sroa.16.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.16.sroa.13.0.copyload, ptr %.sroa.16.sroa.13.0..sroa.16.0..sroa_idx11.sroa_idx, align 8
  %.sroa.16.sroa.14.0..sroa.16.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %.sroa.16.sroa.14.0.copyload, ptr %.sroa.16.sroa.14.0..sroa.16.0..sroa_idx11.sroa_idx, align 8
  %.sroa.16.sroa.15.0..sroa.16.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %.sroa.16.sroa.15.0.copyload, ptr %.sroa.16.sroa.15.0..sroa.16.0..sroa_idx11.sroa_idx, align 4
  %.sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.0.0.copyload, ptr %.sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %.sroa.16.sroa.16.sroa.0.sroa.12.0.copyload, ptr %.sroa.16.sroa.16.sroa.0.sroa.12.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx.sroa_idx, align 4
  %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.16.sroa.16.sroa.0.sroa.13.0.copyload, ptr %.sroa.16.sroa.16.sroa.0.sroa.13.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.12.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.sroa.16.sroa.16.sroa.12.0.copyload, ptr %.sroa.16.sroa.16.sroa.12.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx.sroa_idx, align 8
  %.sroa.16.sroa.16.sroa.13.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.sroa.16.sroa.16.sroa.13.0.copyload, ptr %.sroa.16.sroa.16.sroa.13.0..sroa.16.sroa.16.0..sroa.16.0..sroa_idx11.sroa_idx.sroa_idx, align 4
  %.sroa.18.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %i.ag, ptr %.sroa.18.0..sroa_idx20, align 8
  %.sroa.19.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i24 %i.ai, ptr %.sroa.19.0..sroa_idx28, align 1
  %.sroa.19.sroa.10.0..sroa.19.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %.sroa.19.sroa.10.sroa.0.0.copyload, ptr %.sroa.19.sroa.10.0..sroa.19.0..sroa_idx28.sroa_idx, align 4
  %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.0..sroa_idx28.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.19.sroa.10.sroa.10.0.copyload, ptr %.sroa.19.sroa.10.sroa.10.0..sroa.19.sroa.10.0..sroa.19.0..sroa_idx28.sroa_idx.sroa_idx, align 8
  %.sroa.19.sroa.11.0..sroa.19.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %.sroa.19.sroa.11.0.copyload, ptr %.sroa.19.sroa.11.0..sroa.19.0..sroa_idx28.sroa_idx, align 8
  %.sroa.19.sroa.12.0..sroa.19.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12.0..sroa.19.0..sroa_idx28.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.sroa.12.0..sroa.19.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.19.sroa.13.0..sroa.19.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.19.sroa.13.0..sroa.19.0..sroa_idx28.sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.19.sroa.13.0..sroa.19.0..sroa_idx.sroa_idx, i64 128, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest34convert_vector_input_with_inferred(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.au unwind label %bb.bf

bb.m:                                             ; preds = %bb.d
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.4262.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.4260.0..sroa_idx, i64 52, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.am, ptr %i.at, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bd

bb.n:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.032.sroa.6.0.insert.shift = shl nuw i64 %.sroa.16.sroa.0.0608638, 8
  %.sroa.032.sroa.0.0.insert.ext = and i64 %.sroa.7.0612636, 255
  %.sroa.032.sroa.0.0.insert.insert = or disjoint i64 %.sroa.032.sroa.6.0.insert.shift, %.sroa.032.sroa.0.0.insert.ext ; 2 uses
  %.not558 = icmp eq i64 %.sroa.032.sroa.0.0.insert.insert, 2
  br i1 %.not558, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.484.sroa.4.sroa.7.0..sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.484.sroa.4.sroa.7.0..sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 48, i1 false)
  %.sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.032.sroa.0.0.insert.insert, ptr %.sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx, align 8
  %.sroa.484.sroa.4.sroa.4.0..sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.sroa.13.0606639, ptr %.sroa.484.sroa.4.sroa.4.0..sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.484.sroa.4.sroa.5.0..sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.16.sroa.14.0604640, ptr %.sroa.484.sroa.4.sroa.5.0..sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.484.sroa.4.sroa.6.0..sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %.sroa.16.sroa.15.0602641, ptr %.sroa.484.sroa.4.sroa.6.0..sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx.sroa_idx, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.495.sroa.4.0..sroa.495.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.495.sroa.4.0..sroa.495.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.au, i64 48, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink = phi i64 [ -9223372036854775808, %bb.p ], [ -9223372036854775807, %bb.o ]
  store i64 -9223372036854775791, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.av, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bd

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.aw = load i32, ptr %i.j, align 8, !range !17, !noundef !5 ; 2 uses
  %.not551 = icmp eq i32 %i.aw, -1
  br i1 %.not551, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.5286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5289.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5286.0..sroa_idx, i64 24, i1 false)
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4288.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4285.0..sroa_idx, i64 28, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aw, ptr %i.ax, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ay = load i64, ptr %i.y, align 8, !range !6, !alias.scope !439, !noundef !5
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputEEECsl8OoimOLbh_6qdrant.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.aw, %bb.ah, %bb.ad, %bb.ao, %bb.bf, %bb.x, %bb.aa, %bb.ak, %bb.az, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.ah ], [ %i.ba, %bb.u ], [ %i.cq, %bb.az ], [ %i.bn, %bb.ad ], [ %i.cj, %bb.aw ], [ %i.cb, %bb.ao ], [ %i.bw, %bb.ak ], [ %i.cu, %bb.bf ], [ %i.bg, %bb.aa ], [ %i.be, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.t
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputEEECsl8OoimOLbh_6qdrant.exit

bb.w:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr null, ptr %.sroa.4296.0..sroa_idx, align 8
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr null, ptr %.sroa.6298.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr %2, ptr %i.bd, align 8
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_7flatten7FlattenINtNtB6_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds_0ENtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalINtNtB6_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCINvXso_B6y_IB6w_IB1T_B4S_EB6S_EINtNtNtB4_6traits7collect12FromIteratorIB6w_B4S_B6S_EE9from_iterBQ_E0B8f_EB3p_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.v)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #19
          to label %common.resume unwind label %bb.ac

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bf = load i32, ptr %i.i, align 8, !range !17, !noundef !5 ; 2 uses
  %.not552 = icmp eq i32 %i.bf, -1
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not552, label %switch.lookup, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.5308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5308.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5305.0..sroa_idx, i64 24, i1 false)
  %.sroa.4307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4307.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4304.0..sroa_idx, i64 28, i1 false)
  store i32 %i.bf, ptr %.sroa.4121.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEECsl8OoimOLbh_6qdrant.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.ab

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.z
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11VectorInputEEECsl8OoimOLbh_6qdrant.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

switch.lookup:                                    ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
end_hunk_0
