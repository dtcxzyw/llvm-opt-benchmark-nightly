Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.07?download=true
inline.NumInlined: 4768
inline.NumDeleted: 1854
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs7gfv9tzbXmh_6yara_x:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8049)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !8050, !noundef !8 ; 2 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !8049 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i, %i.f
  br i1 %i.g, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8050, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8051)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !8052, !noundef !8
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !54

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !8053
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !8054
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8075)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !8076, !noundef !8 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !8075 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !8076, !nonnull !8, !noundef !8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8077)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !8078, !noundef !8
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !54

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add nuw i64 %i.k, 1                      ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !8079
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsbbTh99npV2h_10serde_json5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit17

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsbbTh99npV2h_10serde_json5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit17

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !8080
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsbbTh99npV2h_10serde_json5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit17

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !8081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8082)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i12, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit16.thread

.lr.ph.i12:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !8083, !noundef !8
  switch i8 %i.v, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit16.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12
  %i.w = add nuw i64 %i.t, 1                      ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !8084
  %exitcond.not.i13 = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i13, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit16.thread, label %.lr.ph.i12

_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit16.thread: ; preds = %.lr.ph.i12, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsbbTh99npV2h_10serde_json5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit17

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsbbTh99npV2h_10serde_json5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsbbTh99npV2h_10serde_json5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit17: ; preds = %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit16.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit16.thread ], [ %i.y, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticodeNtB5_16CertificateChain6verify(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  %i.b = alloca [20 x i8], align 1                ; 4 uses
  %i.c = alloca [44 x i8], align 4                ; 33 uses
  %i.d = alloca [168 x i8], align 8               ; 7 uses
  %i.e = alloca [168 x i8], align 8               ; 13 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 2 uses
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 3 uses
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %.sroa.154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.sroa.285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %.sroa.501.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 27
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  %.sroa.586.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %.sroa.609.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  %.sroa.640.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %.sroa.694.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %.sroa.771.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 37
  %.sroa.802.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  %.sroa.825.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 39
  %.sroa.856.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.be, %bb.a
  %i.i = invoke { ptr, ptr } @_RNvXs5_NtCs2CmfWUMKNor_9itertools10tuple_implINtB5_12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB15_4asn111CertificateB2f_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.lr, %bb.bb ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val13 = load ptr, ptr %i.j, align 8, !alias.scope !8099
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val14 = load i64, ptr %i.k, align 8, !alias.scope !8099, !noundef !8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_(ptr %.val13, i64 %.val14) #38
  resume { ptr, i32 } %.pn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %bb.d, %bb.b, %bb.bg, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 7 uses
  %.not = icmp eq ptr %i.l, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  invoke void @_RNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB2_9PublicKeyINtNtCskKLDkoKarTP_4core7convert7TryFromRNtNtCs9ej6TH0mm9O_11x509_parser4x50920SubjectPublicKeyInfoE8try_from(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.n)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val12 = load i64, ptr %i.o, align 8, !alias.scope !8099, !noundef !8 ; 3 uses
  %i.p = icmp eq i64 %.val12, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val11 = load ptr, ptr %i.q, align 8, !alias.scope !8099, !nonnull !8, !noundef !8
  %i.r = shl i64 %.val12, 4                       ; 2 uses
  %i.s = add i64 %i.r, 16                         ; 2 uses
  %i.t = add i64 %.val12, 17
  %i.u = add i64 %i.t, %i.s                       ; 4 uses
  %i.v = icmp uge i64 %i.u, %i.s
  %i.w = icmp ult i64 %i.u, 9223372036854775793
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27.sink.split: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26
  %.sink = phi i64 [ %i.lv, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26 ], [ %i.r, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %.val11.sink = phi ptr [ %.val, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26 ], [ %.val11, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %.sink59 = phi i64 [ %i.ly, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26 ], [ %i.u, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %i.y = sub nuw nsw i64 -16, %.sink
  %i.z = getelementptr inbounds i8, ptr %.val11.sink, i64 %i.y
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %.sink59, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27.sink.split, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.e, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26, %bb.bd
  %.not56 = phi i1 [ true, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ false, %bb.bd ], [ false, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26 ], [ true, %bb.e ], [ %.not, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %.not56

bb.f:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.d, align 8, !range !60, !noundef !8
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %bb.bg, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr noundef nonnull align 8 dereferenceable(168) %i.d, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 480
  %i.af = load i64, ptr %i.ae, align 8, !noundef !8 ; 6 uses
  %.sroa.05.0.in = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  %.sroa.05.0 = load ptr, ptr %.sroa.05.0.in, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %.sroa.36.0.in = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  %.sroa.36.0 = load i64, ptr %.sroa.36.0.in, align 8, !noundef !8 ; 6 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 584
  %.val15 = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8
  %i.ah = getelementptr i8, ptr %i.l, i64 592
  %.val16 = load i64, ptr %i.ah, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8100
  invoke void @_RNvMs_Cs9UgDHlk63pp_9const_oidNtB4_16ObjectIdentifier10from_bytes(ptr noalias nofree noundef nonnull sret([44 x i8]) align 4 captures(none) dereferenceable(44) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val15, i64 noundef %.val16)
          to label %.noexc18 unwind label %bb.bb

.noexc18:                                         ; preds = %bb.g
  %i.ai = load i8, ptr %i.c, align 4, !range !13, !noalias !8100, !noundef !8
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8100
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.i:                                             ; preds = %.noexc18
  %i.ak = load i8, ptr %i.g, align 1, !noalias !8100, !noundef !8
  %.sroa.0915.0.copyload.i = load i8, ptr %i.h, align 2, !noalias !8100 ; 4 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !8100 ; 5 uses
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 4, !noalias !8100 ; 5 uses
  %.sroa.15.0.copyload.i = load i8, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !8100 ; 5 uses
  %i.al = load <16 x i8>, ptr %.sroa.53.0..sroa_idx.i, align 2, !noalias !8100 ; 10 uses
  %i.am = load <16 x i8>, ptr %.sroa.69.0..sroa_idx.i, align 1, !noalias !8100 ; 18 uses
  %1 = load <32 x i8>, ptr %.sroa.53.0..sroa_idx.i, align 2 ; 2 uses
  %.sroa.856.0.copyload.i = load i8, ptr %.sroa.856.0..sroa_idx.i, align 4, !noalias !8100 ; 17 uses
  %.sroa.825.0.copyload.i = load i8, ptr %.sroa.825.0..sroa_idx.i, align 1, !noalias !8100 ; 17 uses
  %i.an = load <32 x i8>, ptr %.sroa.26.0..sroa_idx.i, align 1, !noalias !8100 ; 4 uses
  %.sroa.802.0.copyload.i = load i8, ptr %.sroa.802.0..sroa_idx.i, align 2, !noalias !8100 ; 15 uses
  %.sroa.771.0.copyload.i = load i8, ptr %.sroa.771.0..sroa_idx.i, align 1, !noalias !8100 ; 15 uses
  %.sroa.748.0.copyload.i = load i8, ptr %.sroa.748.0..sroa_idx.i, align 4, !noalias !8100 ; 15 uses
  %.sroa.717.0.copyload.i = load i8, ptr %.sroa.717.0..sroa_idx.i, align 1, !noalias !8100 ; 15 uses
  %i.ao = load <16 x i8>, ptr %.sroa.285.0..sroa_idx.i, align 1, !noalias !8100 ; 2 uses
  %.sroa.694.0.copyload.i = load i8, ptr %.sroa.694.0..sroa_idx.i, align 2, !noalias !8100 ; 14 uses
  %.sroa.663.0.copyload.i = load i8, ptr %.sroa.663.0..sroa_idx.i, align 1, !noalias !8100 ; 14 uses
  %.sroa.640.0.copyload.i = load i8, ptr %.sroa.640.0..sroa_idx.i, align 4, !noalias !8100 ; 14 uses
  %.sroa.609.0.copyload.i = load i8, ptr %.sroa.609.0..sroa_idx.i, align 1, !noalias !8100 ; 14 uses
  %.sroa.586.0.copyload.i = load i8, ptr %.sroa.586.0..sroa_idx.i, align 2, !noalias !8100 ; 14 uses
  %.sroa.555.0.copyload.i = load i8, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !8100 ; 14 uses
  %.sroa.532.0.copyload.i = load i8, ptr %.sroa.532.0..sroa_idx.i, align 4, !noalias !8100 ; 14 uses
  %.sroa.501.0.copyload.i = load i8, ptr %.sroa.501.0..sroa_idx.i, align 1, !noalias !8100 ; 14 uses
  %.sroa.478.0.copyload.i = load i8, ptr %.sroa.478.0..sroa_idx.i, align 2, !noalias !8100 ; 5 uses
  %i.ap = load <8 x i8>, ptr %.sroa.154.0..sroa_idx.i, align 2 ; 2 uses
  %i.aq = load <8 x i8>, ptr %.sroa.20.0..sroa_idx.i, align 2, !noalias !8100 ; 2 uses
  %.sroa.53.0.copyload.i = load i8, ptr %.sroa.53.0..sroa_idx.i, align 2, !noalias !8100 ; 2 uses
  %.sroa.43.0.copyload.i = load i8, ptr %.sroa.43.0..sroa_idx.i, align 1, !noalias !8100 ; 4 uses
  %.sroa.35.0.copyload.i = load i8, ptr %.sroa.35.0..sroa_idx.i, align 4, !noalias !8100 ; 4 uses
  %.sroa.26.0.copyload.i = load i8, ptr %.sroa.26.0..sroa_idx.i, align 1, !noalias !8100 ; 4 uses
  %.sroa.20.0.copyload.i = load i8, ptr %.sroa.20.0..sroa_idx.i, align 2, !noalias !8100 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8100
  switch i8 %i.ak, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 5, label %bb.l
    i8 7, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq i8 %.sroa.0915.0.copyload.i, 42
  %i.as = icmp eq i8 %.sroa.5.0.copyload.i, -122
  %or.cond.i = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = icmp eq i8 %.sroa.10.0.copyload.i, 72
  %or.cond5.i = select i1 %or.cond.i, i1 %i.at, i1 false
  br i1 %or.cond5.i, label %bb.n, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.k:                                             ; preds = %bb.i
  switch i8 %.sroa.0915.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 42, label %bb.ah
    i8 96, label %bb.ai
  ]

bb.l:                                             ; preds = %bb.i
  %i.au = icmp eq i8 %.sroa.0915.0.copyload.i, 43
  %i.av = icmp eq i8 %.sroa.5.0.copyload.i, 14
  %or.cond740.i = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = icmp eq i8 %.sroa.10.0.copyload.i, 3
  %or.cond743.i = select i1 %or.cond740.i, i1 %i.aw, i1 false
  %i.ax = icmp eq i8 %.sroa.15.0.copyload.i, 2
  %or.cond746.i = select i1 %or.cond743.i, i1 %i.ax, i1 false
  br i1 %or.cond746.i, label %bb.ay, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.m:                                             ; preds = %bb.i
  %i.ay = icmp eq i8 %.sroa.0915.0.copyload.i, 42
  %i.az = icmp eq i8 %.sroa.5.0.copyload.i, -122
  %i.ba = icmp eq i8 %.sroa.10.0.copyload.i, 72
  %i.bb = icmp eq i8 %.sroa.15.0.copyload.i, -50
  %i.bc = shufflevector <8 x i8> %i.aq, <8 x i8> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12>
  %i.bd = shufflevector <8 x i8> %i.aq, <8 x i8> %i.ap, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 5, i32 7, i32 9, i32 11>
  %i.be = shufflevector <8 x i8> <i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <8 x i8> %i.bd, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = or <8 x i8> %i.bc, %i.be
  %.fr = freeze <8 x i8> %i.bf
  %i.bg = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 6, i32 9, i32 11, i32 13, i32 15>
  %i.bh = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 7, i32 8, i32 10, i32 12, i32 14>
  %i.bi = or <8 x i8> %i.bg, %i.bh
  %.fr169 = freeze <8 x i8> %i.bi
  %i.bj = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond908.i = icmp eq i8 %i.bj, 0
  %i.bk = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond911.i = icmp eq i8 %i.bk, 0
  %i.bl = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond914.i = icmp eq i8 %i.bl, 0
  %i.bm = icmp ne <8 x i8> %.fr, <i8 56, i8 4, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bn = icmp ne <8 x i8> %.fr169, zeroinitializer
  %i.bo = or <8 x i1> %i.bm, %i.bn
  %i.bp = bitcast <8 x i1> %i.bo to i8
  %i.bq = icmp eq i8 %i.bp, 0
  %op.rdx162 = select i1 %i.bq, i1 %i.ay, i1 false
  %i.br = select i1 %op.rdx162, i1 %i.az, i1 false
  %op.rdx166 = select i1 %i.br, i1 %i.ba, i1 false
  %i.bs = select i1 %op.rdx166, i1 %i.bb, i1 false
  %i.bt = select i1 %i.bs, i1 %or.cond908.i, i1 false
  %i.bu = select i1 %i.bt, i1 %or.cond911.i, i1 false
  %op.rdx168 = select i1 %i.bu, i1 %or.cond914.i, i1 false
  br i1 %op.rdx168, label %bb.ar, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.n:                                             ; preds = %bb.j
  switch i8 %.sroa.15.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 -122, label %bb.o
    i8 -50, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bv = icmp eq i8 %.sroa.20.0.copyload.i, -9
  %i.bw = icmp eq i8 %.sroa.26.0.copyload.i, 13
  %or.cond8.i = select i1 %i.bv, i1 %i.bw, i1 false
  %i.bx = icmp eq i8 %.sroa.35.0.copyload.i, 2
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.bx, i1 false
  br i1 %or.cond11.i, label %bb.q, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.by = icmp eq i8 %.sroa.20.0.copyload.i, 61
  %i.bz = icmp eq i8 %.sroa.26.0.copyload.i, 4
  %or.cond110.i = select i1 %i.by, i1 %i.bz, i1 false
  %i.ca = icmp eq i8 %.sroa.35.0.copyload.i, 3
  %or.cond113.i = select i1 %or.cond110.i, i1 %i.ca, i1 false
  br i1 %or.cond113.i, label %bb.x, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.q:                                             ; preds = %bb.o
  switch i8 %.sroa.43.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 2, label %bb.r
    i8 5, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.cb = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cc = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.cd = or <8 x i8> %i.cb, %i.cc
  %.fr186 = freeze <8 x i8> %i.cd
  %i.ce = or i8 %.sroa.501.0.copyload.i, %.sroa.478.0.copyload.i
  %or.cond38.i = icmp eq i8 %i.ce, 0
  %i.cf = or i8 %.sroa.555.0.copyload.i, %.sroa.532.0.copyload.i
  %or.cond41.i = icmp eq i8 %i.cf, 0
  %i.cg = or i8 %.sroa.609.0.copyload.i, %.sroa.586.0.copyload.i
  %or.cond44.i = icmp eq i8 %i.cg, 0
  %i.ch = or i8 %.sroa.663.0.copyload.i, %.sroa.640.0.copyload.i
  %or.cond47.i = icmp eq i8 %i.ch, 0
  %i.ci = or i8 %.sroa.717.0.copyload.i, %.sroa.694.0.copyload.i
  %or.cond50.i = icmp eq i8 %i.ci, 0
  %i.cj = or i8 %.sroa.771.0.copyload.i, %.sroa.748.0.copyload.i
  %or.cond53.i = icmp eq i8 %i.cj, 0
  %.fr186.scalar = bitcast <8 x i8> %.fr186 to i64
  %i.ck = icmp eq i64 %.fr186.scalar, 0
  %op.rdx = select i1 %i.ck, i1 %or.cond38.i, i1 false
  %i.cl = select i1 %op.rdx, i1 %or.cond41.i, i1 false
  %op.rdx70 = select i1 %i.cl, i1 %or.cond44.i, i1 false
  %i.cm = select i1 %op.rdx70, i1 %or.cond47.i, i1 false
  %i.cn = select i1 %i.cm, i1 %or.cond50.i, i1 false
  %op.rdx72 = select i1 %i.cn, i1 %or.cond53.i, i1 false
  br i1 %op.rdx72, label %bb.t, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.co = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cp = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.cq = or <8 x i8> %i.co, %i.cp
  %.fr185 = freeze <8 x i8> %i.cq
  %i.cr = or i8 %.sroa.501.0.copyload.i, %.sroa.478.0.copyload.i
  %or.cond86.i = icmp eq i8 %i.cr, 0
  %i.cs = or i8 %.sroa.555.0.copyload.i, %.sroa.532.0.copyload.i
  %or.cond89.i = icmp eq i8 %i.cs, 0
  %i.ct = or i8 %.sroa.609.0.copyload.i, %.sroa.586.0.copyload.i
  %or.cond92.i = icmp eq i8 %i.ct, 0
  %i.cu = or i8 %.sroa.663.0.copyload.i, %.sroa.640.0.copyload.i
  %or.cond95.i = icmp eq i8 %i.cu, 0
  %i.cv = or i8 %.sroa.717.0.copyload.i, %.sroa.694.0.copyload.i
  %or.cond98.i = icmp eq i8 %i.cv, 0
  %i.cw = or i8 %.sroa.771.0.copyload.i, %.sroa.748.0.copyload.i
  %or.cond101.i = icmp eq i8 %i.cw, 0
  %.fr185.scalar = bitcast <8 x i8> %.fr185 to i64
  %i.cx = icmp eq i64 %.fr185.scalar, 0
  %op.rdx73 = select i1 %i.cx, i1 %or.cond86.i, i1 false
  %i.cy = select i1 %op.rdx73, i1 %or.cond89.i, i1 false
  %op.rdx76 = select i1 %i.cy, i1 %or.cond92.i, i1 false
  %i.cz = select i1 %op.rdx76, i1 %or.cond95.i, i1 false
  %i.da = select i1 %i.cz, i1 %or.cond98.i, i1 false
  %op.rdx78 = select i1 %i.da, i1 %or.cond101.i, i1 false
  br i1 %op.rdx78, label %bb.v, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.db = or i8 %.sroa.825.0.copyload.i, %.sroa.802.0.copyload.i
  %or.cond56.i = icmp eq i8 %i.db, 0
  %i.dc = icmp eq i8 %.sroa.856.0.copyload.i, 0
  %or.cond59.i = select i1 %or.cond56.i, i1 %i.dc, i1 false
  br i1 %or.cond59.i, label %bb.u, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.u:                                             ; preds = %bb.al, %bb.t
  %i.dd = invoke fastcc noundef zeroext i1 @_RINvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB5_9PublicKey11verify_implINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperNtCs4v5UyOHceoj_3md27Md2CoreEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.36.0)
          to label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit unwind label %bb.bb

bb.v:                                             ; preds = %bb.s
  %i.de = or i8 %.sroa.825.0.copyload.i, %.sroa.802.0.copyload.i
  %or.cond104.i = icmp eq i8 %i.de, 0
  %i.df = icmp eq i8 %.sroa.856.0.copyload.i, 0
  %or.cond107.i = select i1 %or.cond104.i, i1 %i.df, i1 false
  br i1 %or.cond107.i, label %bb.w, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.w:                                             ; preds = %bb.am, %bb.v
  %i.dg = invoke fastcc noundef zeroext i1 @_RINvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB5_9PublicKey11verify_implINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.36.0)
          to label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit unwind label %bb.bb

bb.x:                                             ; preds = %bb.p
  switch i8 %.sroa.43.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
  ]
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticodeNtB5_16CertificateChain6verify:bb.a
  %i.fu = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond302.i = icmp eq i8 %i.fu, 0
  %i.fv = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond305.i = icmp eq i8 %i.fv, 0
  %i.fw = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond308.i = icmp eq i8 %i.fw, 0
  %i.fx = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond311.i = icmp eq i8 %i.fx, 0
  %i.fy = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond314.i = icmp eq i8 %i.fy, 0
  %i.fz = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond317.i = icmp eq i8 %i.fz, 0
  %.fr181.scalar = bitcast <8 x i8> %.fr181 to i64
  %i.ga = icmp eq i64 %.fr181.scalar, 0
  %op.rdx97 = select i1 %i.ga, i1 %or.cond299.i, i1 false
  %i.gb = select i1 %op.rdx97, i1 %or.cond302.i, i1 false
  %op.rdx101 = select i1 %i.gb, i1 %or.cond305.i, i1 false
  %i.gc = select i1 %op.rdx101, i1 %or.cond308.i, i1 false
  %i.gd = select i1 %i.gc, i1 %or.cond311.i, i1 false
  %i.ge = select i1 %i.gd, i1 %or.cond314.i, i1 false
  %op.rdx103 = select i1 %i.ge, i1 %or.cond317.i, i1 false
  br i1 %op.rdx103, label %bb.u, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.am:                                            ; preds = %bb.ak
  %i.gf = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gg = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gh = or <8 x i8> %i.gf, %i.gg
  %.fr180 = freeze <8 x i8> %i.gh
  %i.gi = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %or.cond344.i = icmp eq i8 %i.gi, 0
  %i.gj = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond347.i = icmp eq i8 %i.gj, 0
  %i.gk = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond350.i = icmp eq i8 %i.gk, 0
  %i.gl = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond353.i = icmp eq i8 %i.gl, 0
  %i.gm = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond356.i = icmp eq i8 %i.gm, 0
  %i.gn = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond359.i = icmp eq i8 %i.gn, 0
  %i.go = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond362.i = icmp eq i8 %i.go, 0
  %.fr180.scalar = bitcast <8 x i8> %.fr180 to i64
  %i.gp = icmp eq i64 %.fr180.scalar, 0
  %op.rdx104 = select i1 %i.gp, i1 %or.cond344.i, i1 false
  %i.gq = select i1 %op.rdx104, i1 %or.cond347.i, i1 false
  %op.rdx108 = select i1 %i.gq, i1 %or.cond350.i, i1 false
  %i.gr = select i1 %op.rdx108, i1 %or.cond353.i, i1 false
  %i.gs = select i1 %i.gr, i1 %or.cond356.i, i1 false
  %i.gt = select i1 %i.gs, i1 %or.cond359.i, i1 false
  %op.rdx110 = select i1 %i.gt, i1 %or.cond362.i, i1 false
  br i1 %op.rdx110, label %bb.w, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.an:                                            ; preds = %bb.ak
  %i.gu = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gv = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gw = or <8 x i8> %i.gu, %i.gv
  %.fr179 = freeze <8 x i8> %i.gw
  %i.gx = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %or.cond389.i = icmp eq i8 %i.gx, 0
  %i.gy = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond392.i = icmp eq i8 %i.gy, 0
  %i.gz = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond395.i = icmp eq i8 %i.gz, 0
  %i.ha = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond398.i = icmp eq i8 %i.ha, 0
  %i.hb = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond401.i = icmp eq i8 %i.hb, 0
  %i.hc = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond404.i = icmp eq i8 %i.hc, 0
  %i.hd = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond407.i = icmp eq i8 %i.hd, 0
  %.fr179.scalar = bitcast <8 x i8> %.fr179 to i64
  %i.he = icmp eq i64 %.fr179.scalar, 0
  %op.rdx111 = select i1 %i.he, i1 %or.cond389.i, i1 false
  %i.hf = select i1 %op.rdx111, i1 %or.cond392.i, i1 false
  %op.rdx115 = select i1 %i.hf, i1 %or.cond395.i, i1 false
  %i.hg = select i1 %op.rdx115, i1 %or.cond398.i, i1 false
  %i.hh = select i1 %i.hg, i1 %or.cond401.i, i1 false
  %i.hi = select i1 %i.hh, i1 %or.cond404.i, i1 false
  %op.rdx117 = select i1 %i.hi, i1 %or.cond407.i, i1 false
  br i1 %op.rdx117, label %bb.ar, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ao:                                            ; preds = %bb.ak
  %i.hj = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hk = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.hl = or <8 x i8> %i.hj, %i.hk
  %.fr178 = freeze <8 x i8> %i.hl
  %i.hm = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %or.cond434.i = icmp eq i8 %i.hm, 0
  %i.hn = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond437.i = icmp eq i8 %i.hn, 0
  %i.ho = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond440.i = icmp eq i8 %i.ho, 0
  %i.hp = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond443.i = icmp eq i8 %i.hp, 0
  %i.hq = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond446.i = icmp eq i8 %i.hq, 0
  %i.hr = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond449.i = icmp eq i8 %i.hr, 0
  %i.hs = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond452.i = icmp eq i8 %i.hs, 0
  %.fr178.scalar = bitcast <8 x i8> %.fr178 to i64
  %i.ht = icmp eq i64 %.fr178.scalar, 0
  %op.rdx118 = select i1 %i.ht, i1 %or.cond434.i, i1 false
  %i.hu = select i1 %op.rdx118, i1 %or.cond437.i, i1 false
  %op.rdx122 = select i1 %i.hu, i1 %or.cond440.i, i1 false
  %i.hv = select i1 %op.rdx122, i1 %or.cond443.i, i1 false
  %i.hw = select i1 %i.hv, i1 %or.cond446.i, i1 false
  %i.hx = select i1 %i.hw, i1 %or.cond449.i, i1 false
  %op.rdx124 = select i1 %i.hx, i1 %or.cond452.i, i1 false
  br i1 %op.rdx124, label %bb.ac, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ap:                                            ; preds = %bb.ak
  %i.hy = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hz = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ia = or <8 x i8> %i.hy, %i.hz
  %.fr177 = freeze <8 x i8> %i.ia
  %i.ib = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %or.cond479.i = icmp eq i8 %i.ib, 0
  %i.ic = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond482.i = icmp eq i8 %i.ic, 0
  %i.id = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond485.i = icmp eq i8 %i.id, 0
  %i.ie = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond488.i = icmp eq i8 %i.ie, 0
  %i.if = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond491.i = icmp eq i8 %i.if, 0
  %i.ig = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond494.i = icmp eq i8 %i.ig, 0
  %i.ih = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond497.i = icmp eq i8 %i.ih, 0
  %.fr177.scalar = bitcast <8 x i8> %.fr177 to i64
  %i.ii = icmp eq i64 %.fr177.scalar, 0
  %op.rdx125 = select i1 %i.ii, i1 %or.cond479.i, i1 false
  %i.ij = select i1 %op.rdx125, i1 %or.cond482.i, i1 false
  %op.rdx129 = select i1 %i.ij, i1 %or.cond485.i, i1 false
  %i.ik = select i1 %op.rdx129, i1 %or.cond488.i, i1 false
  %i.il = select i1 %i.ik, i1 %or.cond491.i, i1 false
  %i.im = select i1 %i.il, i1 %or.cond494.i, i1 false
  %op.rdx131 = select i1 %i.im, i1 %or.cond497.i, i1 false
  br i1 %op.rdx131, label %bb.ae, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.aq:                                            ; preds = %bb.ak
  %i.in = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.io = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ip = or <8 x i8> %i.in, %i.io
  %.fr176 = freeze <8 x i8> %i.ip
  %i.iq = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %or.cond524.i = icmp eq i8 %i.iq, 0
  %i.ir = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond527.i = icmp eq i8 %i.ir, 0
  %i.is = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond530.i = icmp eq i8 %i.is, 0
  %i.it = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond533.i = icmp eq i8 %i.it, 0
  %i.iu = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond536.i = icmp eq i8 %i.iu, 0
  %i.iv = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond539.i = icmp eq i8 %i.iv, 0
  %i.iw = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond542.i = icmp eq i8 %i.iw, 0
  %.fr176.scalar = bitcast <8 x i8> %.fr176 to i64
  %i.ix = icmp eq i64 %.fr176.scalar, 0
  %op.rdx132 = select i1 %i.ix, i1 %or.cond524.i, i1 false
  %i.iy = select i1 %op.rdx132, i1 %or.cond527.i, i1 false
  %op.rdx136 = select i1 %i.iy, i1 %or.cond530.i, i1 false
  %i.iz = select i1 %op.rdx136, i1 %or.cond533.i, i1 false
  %i.ja = select i1 %i.iz, i1 %or.cond536.i, i1 false
  %i.jb = select i1 %i.ja, i1 %or.cond539.i, i1 false
  %op.rdx138 = select i1 %i.jb, i1 %or.cond542.i, i1 false
  br i1 %op.rdx138, label %bb.ag, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ar:                                            ; preds = %bb.ba, %bb.az, %bb.an, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8102
  invoke fastcc void @_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCs7IHcDLph6Xc_4sha18Sha1CoreENtB3_6Digest6digestRShECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 1 captures(address) dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #44
          to label %.noexc24 unwind label %bb.bb

.noexc24:                                         ; preds = %bb.ar
  %i.jc = invoke fastcc noundef zeroext i1 @_RINvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB5_9PublicKey13verify_digestINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperNtCs7IHcDLph6Xc_4sha18Sha1CoreEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e, ptr noalias nofree noundef align 1 captures(address) dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.36.0)
          to label %.noexc25 unwind label %bb.bb

.noexc25:                                         ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8102
  br i1 %i.jc, label %bb.bc, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.as:                                            ; preds = %bb.ai
  switch i8 %.sroa.43.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  switch i8 %.sroa.53.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ax
  ]

bb.au:                                            ; preds = %bb.as
  %i.jd = shufflevector <32 x i8> %1, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.je = shufflevector <32 x i8> %1, <32 x i8> poison, <16 x i32> <i32 poison, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29>
  %i.jf = insertelement <16 x i8> %i.je, i8 0, i64 0
  %i.jg = or <16 x i8> %i.jd, %i.jf
  %.fr172 = freeze <16 x i8> %i.jg
  %i.jh = icmp ne <16 x i8> %.fr172, <i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.ji = bitcast <16 x i1> %i.jh to i16
  %i.jj = icmp eq i16 %i.ji, 0
  br i1 %i.jj, label %bb.ac, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.av:                                            ; preds = %bb.at
  %i.jk = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.jl = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jm = or <8 x i8> %i.jk, %i.jl
  %.fr175 = freeze <8 x i8> %i.jm
  %i.jn = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %or.cond584.i = icmp eq i8 %i.jn, 0
  %i.jo = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond587.i = icmp eq i8 %i.jo, 0
  %i.jp = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond590.i = icmp eq i8 %i.jp, 0
  %i.jq = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond593.i = icmp eq i8 %i.jq, 0
  %i.jr = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond596.i = icmp eq i8 %i.jr, 0
  %i.js = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond599.i = icmp eq i8 %i.js, 0
  %i.jt = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond602.i = icmp eq i8 %i.jt, 0
  %.fr175.scalar = bitcast <8 x i8> %.fr175 to i64
  %i.ju = icmp eq i64 %.fr175.scalar, 0
  %op.rdx139 = select i1 %i.ju, i1 %or.cond584.i, i1 false
  %i.jv = select i1 %op.rdx139, i1 %or.cond587.i, i1 false
  %op.rdx143 = select i1 %i.jv, i1 %or.cond590.i, i1 false
  %i.jw = select i1 %op.rdx143, i1 %or.cond593.i, i1 false
  %i.jx = select i1 %i.jw, i1 %or.cond596.i, i1 false
  %i.jy = select i1 %i.jx, i1 %or.cond599.i, i1 false
  %op.rdx145 = select i1 %i.jy, i1 %or.cond602.i, i1 false
  br i1 %op.rdx145, label %bb.ac, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.aw:                                            ; preds = %bb.at
  %i.jz = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ka = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kb = or <8 x i8> %i.jz, %i.ka
  %.fr174 = freeze <8 x i8> %i.kb
  %i.kc = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %or.cond629.i = icmp eq i8 %i.kc, 0
  %i.kd = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond632.i = icmp eq i8 %i.kd, 0
  %i.ke = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond635.i = icmp eq i8 %i.ke, 0
  %i.kf = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond638.i = icmp eq i8 %i.kf, 0
  %i.kg = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond641.i = icmp eq i8 %i.kg, 0
  %i.kh = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond644.i = icmp eq i8 %i.kh, 0
  %i.ki = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond647.i = icmp eq i8 %i.ki, 0
  %.fr174.scalar = bitcast <8 x i8> %.fr174 to i64
  %i.kj = icmp eq i64 %.fr174.scalar, 0
  %op.rdx146 = select i1 %i.kj, i1 %or.cond629.i, i1 false
  %i.kk = select i1 %op.rdx146, i1 %or.cond632.i, i1 false
  %op.rdx150 = select i1 %i.kk, i1 %or.cond635.i, i1 false
  %i.kl = select i1 %op.rdx150, i1 %or.cond638.i, i1 false
  %i.km = select i1 %i.kl, i1 %or.cond641.i, i1 false
  %i.kn = select i1 %i.km, i1 %or.cond644.i, i1 false
  %op.rdx152 = select i1 %i.kn, i1 %or.cond647.i, i1 false
  br i1 %op.rdx152, label %bb.ae, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ax:                                            ; preds = %bb.at
  %i.ko = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kp = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kq = or <8 x i8> %i.ko, %i.kp
  %.fr173 = freeze <8 x i8> %i.kq
  %i.kr = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %or.cond674.i = icmp eq i8 %i.kr, 0
  %i.ks = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %or.cond677.i = icmp eq i8 %i.ks, 0
  %i.kt = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %or.cond680.i = icmp eq i8 %i.kt, 0
  %i.ku = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %or.cond683.i = icmp eq i8 %i.ku, 0
  %i.kv = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %or.cond686.i = icmp eq i8 %i.kv, 0
  %i.kw = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %or.cond689.i = icmp eq i8 %i.kw, 0
  %i.kx = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond692.i = icmp eq i8 %i.kx, 0
  %.fr173.scalar = bitcast <8 x i8> %.fr173 to i64
  %i.ky = icmp eq i64 %.fr173.scalar, 0
  %op.rdx153 = select i1 %i.ky, i1 %or.cond674.i, i1 false
  %i.kz = select i1 %op.rdx153, i1 %or.cond677.i, i1 false
  %op.rdx157 = select i1 %i.kz, i1 %or.cond680.i, i1 false
  %i.la = select i1 %op.rdx157, i1 %or.cond683.i, i1 false
  %i.lb = select i1 %i.la, i1 %or.cond686.i, i1 false
  %i.lc = select i1 %i.lb, i1 %or.cond689.i, i1 false
  %op.rdx159 = select i1 %i.lc, i1 %or.cond692.i, i1 false
  br i1 %op.rdx159, label %bb.ag, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ay:                                            ; preds = %bb.l
  switch i8 %.sroa.20.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 26, label %bb.az
    i8 29, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ld = shufflevector <32 x i8> %i.an, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.le = shufflevector <32 x i8> %i.an, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.lf = or <16 x i8> %i.ld, %i.le
  %.fr171 = freeze <16 x i8> %i.lf
  %i.lg = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond797.i = icmp eq i8 %i.lg, 0
  %i.lh = icmp ne <16 x i8> %.fr171, zeroinitializer
  %i.li = bitcast <16 x i1> %i.lh to i16
  %i.lj = icmp eq i16 %i.li, 0
  %op.rdx160 = select i1 %i.lj, i1 %or.cond797.i, i1 false
  br i1 %op.rdx160, label %bb.ar, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ba:                                            ; preds = %bb.ay
  %i.lk = shufflevector <32 x i8> %i.an, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ll = shufflevector <32 x i8> %i.an, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.lm = or <16 x i8> %i.lk, %i.ll
  %.fr170 = freeze <16 x i8> %i.lm
  %i.ln = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond848.i = icmp eq i8 %i.ln, 0
  %i.lo = icmp ne <16 x i8> %.fr170, zeroinitializer
  %i.lp = bitcast <16 x i1> %i.lo to i16
  %i.lq = icmp eq i16 %i.lp, 0
  %op.rdx161 = select i1 %i.lq, i1 %or.cond848.i, i1 false
  br i1 %op.rdx161, label %bb.ar, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.bb:                                            ; preds = %.noexc32, %bb.ac, %.noexc24, %bb.ar, %bb.ag, %bb.ae, %bb.w, %bb.u, %bb.g
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e) #38
          to label %.loopexit.split-lp unwind label %bb.bf

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit: ; preds = %bb.u, %bb.w, %bb.ae, %bb.ag
  %.sroa.0.0.shrunk.i = phi i1 [ %i.ez, %bb.ae ], [ %i.dg, %bb.w ], [ %i.fc, %bb.ag ], [ %i.dd, %bb.u ]
  br i1 %.sroa.0.0.shrunk.i, label %bb.bc, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread: ; preds = %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.p, %bb.q, %bb.r, %bb.s, %bb.i, %bb.ad, %bb.j, %bb.t, %bb.k, %bb.v, %bb.ab, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ay, %bb.az, %bb.ba, %bb.l, %bb.m, %bb.n, %bb.o, %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.as, %.noexc21, %.noexc25, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit, %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %.noexc21, %.noexc25, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyNtBZ_14PublicKeyErrorEEB15_.exit31, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val10 = load i64, ptr %i.ls, align 8, !alias.scope !8099, !noundef !8 ; 3 uses
  %i.lt = icmp eq i64 %.val10, 0
  br i1 %i.lt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26: ; preds = %bb.bd
  %i.lu = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val = load ptr, ptr %i.lu, align 8, !alias.scope !8099, !nonnull !8, !noundef !8
  %i.lv = shl i64 %.val10, 4                      ; 2 uses
  %i.lw = add i64 %i.lv, 16                       ; 2 uses
  %i.lx = add i64 %.val10, 17
  %i.ly = add i64 %i.lx, %i.lw                    ; 4 uses
  %i.lz = icmp uge i64 %i.ly, %i.lw
  %i.ma = icmp ult i64 %i.ly, 9223372036854775793
  call void @llvm.assume(i1 %i.lz)
  call void @llvm.assume(i1 %i.ma)
  %i.mb = icmp eq i64 %i.ly, 0
  br i1 %i.mb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27.sink.split

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.bf:                                            ; preds = %bb.bb
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.bg:                                            ; preds = %bb.f
  %i.md = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto14PublicKeyErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.md)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyNtBZ_14PublicKeyErrorEEB15_.exit31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyNtBZ_14PublicKeyErrorEEB15_.exit31: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bd
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs7gfv9tzbXmh_6yara_x7scannerNtB5_7Scanner9load_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
end_hunk_1
begin_hunk_2_@_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapxfNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.n, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.h
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %i.i, %bb.g ], [ %.pre.i, %bb.f ]
  %.sroa.5.0.i = phi i64 [ %i.d, %bb.g ], [ %.sroa.7.0.ph.i.i, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9889)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !9890, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.s, i64 %.pre-phi.i, i1 false), !noalias !9891
  %i.t = xor i64 %i.d, -1
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = xor i64 %.sroa.5.0.i, -1
  %i.w = getelementptr [16 x i8], ptr %.sroa.0.0.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = shl i64 %.sroa.5.0.i, 4
  %i.y = add i64 %i.x, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !noalias !9891
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !9890
  br label %_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxfEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x.exit

_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxfEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.h
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i, %bb.h ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.h ], [ @19, %bb.a ]
  %i.ab = phi <2 x i64> [ %i.aa, %bb.h ], [ zeroinitializer, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.b, ptr %i.ac, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ab, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapxxNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load <2 x i64>, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9902)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9902, !noundef !8 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxxEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.f, 4                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !32

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !9903
  %i.n = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !9903 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !9903
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !9903
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.n, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.h
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %i.i, %bb.g ], [ %.pre.i, %bb.f ]
  %.sroa.5.0.i = phi i64 [ %i.d, %bb.g ], [ %.sroa.7.0.ph.i.i, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9904)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !9905, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.s, i64 %.pre-phi.i, i1 false), !noalias !9906
  %i.t = xor i64 %i.d, -1
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = xor i64 %.sroa.5.0.i, -1
  %i.w = getelementptr [16 x i8], ptr %.sroa.0.0.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = shl i64 %.sroa.5.0.i, 4
  %i.y = add i64 %i.x, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !noalias !9906
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !9905
  br label %_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxxEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x.exit

_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTxxEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.h
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i, %bb.h ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.h ], [ @19, %bb.a ]
  %i.ab = phi <2 x i64> [ %i.aa, %bb.h ], [ zeroinitializer, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.b, ptr %i.ac, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ab, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB2_9PublicKeyINtNtCskKLDkoKarTP_4core7convert7TryFromRNtNtCs9ej6TH0mm9O_11x509_parser4x50920SubjectPublicKeyInfoE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.91678 = alloca [16 x i8], align 8        ; 2 uses
  %i.c = alloca [128 x i8], align 8               ; 9 uses
  %.sroa.91616 = alloca [16 x i8], align 8        ; 2 uses
  %i.d = alloca [128 x i8], align 8               ; 12 uses
  %.sroa.91554 = alloca [16 x i8], align 8        ; 2 uses
  %i.e = alloca [128 x i8], align 8               ; 12 uses
  %.sroa.91492 = alloca [16 x i8], align 8        ; 2 uses
  %i.f = alloca [128 x i8], align 8               ; 9 uses
  %i.g = alloca [44 x i8], align 4                ; 45 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [168 x i8], align 8               ; 8 uses
  %i.l = alloca [120 x i8], align 8               ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [128 x i8], align 8               ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [40 x i8], align 8                ; 7 uses
  %i.u = alloca [112 x i8], align 8               ; 10 uses
  %i.v = alloca [112 x i8], align 16              ; 11 uses
  %i.w = alloca [112 x i8], align 16              ; 11 uses
  %i.x = alloca [112 x i8], align 8               ; 10 uses
  %i.y = alloca [64 x i8], align 8                ; 6 uses
  %i.z = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.5669 = alloca [80 x i8], align 8         ; 7 uses
  %i.aa = alloca [44 x i8], align 4               ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.sroa.51181.0.in = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.51181.0 = load i64, ptr %.sroa.51181.0.in, align 8, !noundef !8
  %.sroa.01180.0.in = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.01180.0 = load ptr, ptr %.sroa.01180.0.in, align 8, !nonnull !8, !noundef !8
  call void @_RNvMs_Cs9UgDHlk63pp_9const_oidNtB4_16ObjectIdentifier10from_bytes(ptr noalias nofree noundef nonnull sret([44 x i8]) align 4 captures(none) dereferenceable(44) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01180.0, i64 noundef %.sroa.51181.0)
  %i.ab = load i8, ptr %i.aa, align 4, !range !13, !noundef !8
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.ad, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cj

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.sroa.01305.0.copyload = load i8, ptr %i.ae, align 1 ; 2 uses
  %.sroa.41306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.sroa.41306.0.copyload = load i8, ptr %.sroa.41306.0..sroa_idx, align 2 ; 3 uses
  %.sroa.51307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %.sroa.51307.0.copyload = load i8, ptr %.sroa.51307.0..sroa_idx, align 1 ; 3 uses
  %.sroa.61308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.61308.0.copyload = load i8, ptr %.sroa.61308.0..sroa_idx, align 4 ; 3 uses
  %.sroa.71309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 5
  %.sroa.71309.0.copyload = load i8, ptr %.sroa.71309.0..sroa_idx, align 1 ; 3 uses
  %.sroa.81310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %.sroa.81310.0.copyload = load i8, ptr %.sroa.81310.0..sroa_idx, align 2 ; 3 uses
  %.sroa.91311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 7 ; 3 uses
  %.sroa.101312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.111313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %.sroa.121314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %.sroa.131315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %.sroa.141316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.151317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 13
  %.sroa.161318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %.sroa.171319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 15
  %.sroa.181320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.191321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 17
  %.sroa.201322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  %.sroa.211323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 19
  %.sroa.221324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.231325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 21
  %.sroa.241326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 22
  %.sroa.251327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 23
  %.sroa.261328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.271329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 25
  %.sroa.281330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 26
  %.sroa.291331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 27
  %.sroa.301332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %.sroa.311333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 29
  %.sroa.321334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 30
  %.sroa.331335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 31
  %.sroa.341336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.351337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 33
  %.sroa.361338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 34
  %.sroa.371339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 35
  %.sroa.381340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %2 = load <32 x i8>, ptr %.sroa.101312.0..sroa_idx, align 4 ; 2 uses
  %3 = load <32 x i8>, ptr %.sroa.91311.0..sroa_idx, align 1 ; 2 uses
  %.sroa.241326.0.copyload = load i8, ptr %.sroa.241326.0..sroa_idx, align 2
  %.sroa.231325.0.copyload = load i8, ptr %.sroa.231325.0..sroa_idx, align 1
  %.sroa.221324.0.copyload = load i8, ptr %.sroa.221324.0..sroa_idx, align 4
  %.sroa.211323.0.copyload = load i8, ptr %.sroa.211323.0..sroa_idx, align 1
  %.sroa.201322.0.copyload = load i8, ptr %.sroa.201322.0..sroa_idx, align 2
  %.sroa.191321.0.copyload = load i8, ptr %.sroa.191321.0..sroa_idx, align 1
  %.sroa.181320.0.copyload = load i8, ptr %.sroa.181320.0..sroa_idx, align 4
  %.sroa.171319.0.copyload = load i8, ptr %.sroa.171319.0..sroa_idx, align 1
  %.sroa.161318.0.copyload = load i8, ptr %.sroa.161318.0..sroa_idx, align 2
  %.sroa.151317.0.copyload = load i8, ptr %.sroa.151317.0..sroa_idx, align 1
  %.sroa.141316.0.copyload = load i8, ptr %.sroa.141316.0..sroa_idx, align 4
  %.sroa.131315.0.copyload = load i8, ptr %.sroa.131315.0..sroa_idx, align 1
  %.sroa.121314.0.copyload = load i8, ptr %.sroa.121314.0..sroa_idx, align 2
  %.sroa.111313.0.copyload = load i8, ptr %.sroa.111313.0..sroa_idx, align 1
  %.sroa.101312.0.copyload = load i8, ptr %.sroa.101312.0..sroa_idx, align 4
  %.sroa.91311.0.copyload = load i8, ptr %.sroa.91311.0..sroa_idx, align 1 ; 2 uses
  %4 = load <32 x i8>, ptr %.sroa.91311.0..sroa_idx, align 1 ; 2 uses
  %.sroa.381340.0.copyload = load i8, ptr %.sroa.381340.0..sroa_idx, align 4
  %.sroa.371339.0.copyload = load i8, ptr %.sroa.371339.0..sroa_idx, align 1
  %.sroa.361338.0.copyload = load i8, ptr %.sroa.361338.0..sroa_idx, align 2
  %.sroa.351337.0.copyload = load i8, ptr %.sroa.351337.0..sroa_idx, align 1
  %.sroa.341336.0.copyload = load i8, ptr %.sroa.341336.0..sroa_idx, align 4
  %.sroa.331335.0.copyload = load i8, ptr %.sroa.331335.0..sroa_idx, align 1
  %.sroa.321334.0.copyload = load i8, ptr %.sroa.321334.0..sroa_idx, align 2
  %.sroa.311333.0.copyload = load i8, ptr %.sroa.311333.0..sroa_idx, align 1
  %.sroa.301332.0.copyload = load i8, ptr %.sroa.301332.0..sroa_idx, align 4
  %.sroa.291331.0.copyload = load i8, ptr %.sroa.291331.0..sroa_idx, align 1
  %.sroa.281330.0.copyload = load i8, ptr %.sroa.281330.0..sroa_idx, align 2
  %.sroa.271329.0.copyload = load i8, ptr %.sroa.271329.0..sroa_idx, align 1
  %.sroa.261328.0.copyload = load i8, ptr %.sroa.261328.0..sroa_idx, align 4
  %.sroa.251327.0.copyload = load i8, ptr %.sroa.251327.0..sroa_idx, align 1
  %.sroa.391341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 37
  %.sroa.391341.0.copyload = load i8, ptr %.sroa.391341.0..sroa_idx, align 1 ; 4 uses
  %.sroa.401342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 38
  %.sroa.401342.0.copyload = load i8, ptr %.sroa.401342.0..sroa_idx, align 2 ; 4 uses
  %.sroa.411343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 39
  %.sroa.411343.0.copyload = load i8, ptr %.sroa.411343.0..sroa_idx, align 1 ; 4 uses
  %.sroa.421344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.421344.0.copyload = load i8, ptr %.sroa.421344.0..sroa_idx, align 4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  switch i8 %.sroa.01305.0.copyload, label %bb.d [
    i8 9, label %bb.e
    i8 7, label %bb.f
  ]

bb.d:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %bb.f, %bb.e, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.af, align 8
  %.sroa.41134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.01305.0.copyload, ptr %.sroa.41134.0..sroa_idx, align 8
  %.sroa.51135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.41306.0.copyload, ptr %.sroa.51135.0..sroa_idx, align 1
  %.sroa.61136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.51307.0.copyload, ptr %.sroa.61136.0..sroa_idx, align 2
  %.sroa.71137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.61308.0.copyload, ptr %.sroa.71137.0..sroa_idx, align 1
  %.sroa.81138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.71309.0.copyload, ptr %.sroa.81138.0..sroa_idx, align 4
  %.sroa.91139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.81310.0.copyload, ptr %.sroa.91139.0..sroa_idx, align 1
  %.sroa.101140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %.sroa.91311.0.copyload, ptr %.sroa.101140.0..sroa_idx, align 2
  %.sroa.111141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %.sroa.101312.0.copyload, ptr %.sroa.111141.0..sroa_idx, align 1
  %.sroa.121142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.111313.0.copyload, ptr %.sroa.121142.0..sroa_idx, align 8
  %.sroa.131143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.121314.0.copyload, ptr %.sroa.131143.0..sroa_idx, align 1
  %.sroa.141144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.131315.0.copyload, ptr %.sroa.141144.0..sroa_idx, align 2
  %.sroa.151145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %.sroa.141316.0.copyload, ptr %.sroa.151145.0..sroa_idx, align 1
  %.sroa.161146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.151317.0.copyload, ptr %.sroa.161146.0..sroa_idx, align 4
  %.sroa.171147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %.sroa.161318.0.copyload, ptr %.sroa.171147.0..sroa_idx, align 1
  %.sroa.181148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %.sroa.171319.0.copyload, ptr %.sroa.181148.0..sroa_idx, align 2
  %.sroa.191149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.181320.0.copyload, ptr %.sroa.191149.0..sroa_idx, align 1
  %.sroa.201150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.191321.0.copyload, ptr %.sroa.201150.0..sroa_idx, align 8
  %.sroa.211151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.201322.0.copyload, ptr %.sroa.211151.0..sroa_idx, align 1
  %.sroa.221152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.211323.0.copyload, ptr %.sroa.221152.0..sroa_idx, align 2
  %.sroa.231153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %.sroa.221324.0.copyload, ptr %.sroa.231153.0..sroa_idx, align 1
  %.sroa.241154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.231325.0.copyload, ptr %.sroa.241154.0..sroa_idx, align 4
  %.sroa.251155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %.sroa.241326.0.copyload, ptr %.sroa.251155.0..sroa_idx, align 1
  %.sroa.261156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 %.sroa.251327.0.copyload, ptr %.sroa.261156.0..sroa_idx, align 2
  %.sroa.271157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sroa.261328.0.copyload, ptr %.sroa.271157.0..sroa_idx, align 1
  %.sroa.281158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.271329.0.copyload, ptr %.sroa.281158.0..sroa_idx, align 8
  %.sroa.291159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %.sroa.281330.0.copyload, ptr %.sroa.291159.0..sroa_idx, align 1
  %.sroa.301160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.291331.0.copyload, ptr %.sroa.301160.0..sroa_idx, align 2
  %.sroa.311161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 %.sroa.301332.0.copyload, ptr %.sroa.311161.0..sroa_idx, align 1
  %.sroa.321162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.311333.0.copyload, ptr %.sroa.321162.0..sroa_idx, align 4
  %.sroa.331163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %.sroa.321334.0.copyload, ptr %.sroa.331163.0..sroa_idx, align 1
  %.sroa.341164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %.sroa.331335.0.copyload, ptr %.sroa.341164.0..sroa_idx, align 2
  %.sroa.351165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %.sroa.341336.0.copyload, ptr %.sroa.351165.0..sroa_idx, align 1
  %.sroa.361166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.351337.0.copyload, ptr %.sroa.361166.0..sroa_idx, align 8
  %.sroa.371167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %.sroa.361338.0.copyload, ptr %.sroa.371167.0..sroa_idx, align 1
  %.sroa.381168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sroa.371339.0.copyload, ptr %.sroa.381168.0..sroa_idx, align 2
  %.sroa.391169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %.sroa.381340.0.copyload, ptr %.sroa.391169.0..sroa_idx, align 1
  %.sroa.401170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.391341.0.copyload, ptr %.sroa.401170.0..sroa_idx, align 4
  %.sroa.411171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 %.sroa.401342.0.copyload, ptr %.sroa.411171.0..sroa_idx, align 1
  %.sroa.421172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %.sroa.411343.0.copyload, ptr %.sroa.421172.0..sroa_idx, align 2
  %.sroa.431173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 %.sroa.421344.0.copyload, ptr %.sroa.431173.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.cj

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp eq i8 %.sroa.41306.0.copyload, 42
  %i.ah = icmp eq i8 %.sroa.51307.0.copyload, -122
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  %i.ai = icmp eq i8 %.sroa.61308.0.copyload, 72
  %or.cond7 = select i1 %or.cond, i1 %i.ai, i1 false
  %i.aj = icmp eq i8 %.sroa.71309.0.copyload, -122
  %or.cond11 = select i1 %or.cond7, i1 %i.aj, i1 false
  %i.ak = icmp eq i8 %.sroa.81310.0.copyload, -9
  %or.cond15 = select i1 %or.cond11, i1 %i.ak, i1 false
  %i.al = icmp eq i8 %.sroa.91311.0.copyload, 13
  %or.cond19 = select i1 %or.cond15, i1 %i.al, i1 false
  br i1 %or.cond19, label %bb.g, label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.am = icmp eq i8 %.sroa.41306.0.copyload, 42
  %i.an = icmp eq i8 %.sroa.51307.0.copyload, -122
  %or.cond91 = select i1 %i.am, i1 %i.an, i1 false
  %i.ao = icmp eq i8 %.sroa.61308.0.copyload, 72
  %or.cond95 = select i1 %or.cond91, i1 %i.ao, i1 false
  %i.ap = icmp eq i8 %.sroa.71309.0.copyload, -50
  %or.cond99 = select i1 %or.cond95, i1 %i.ap, i1 false
  br i1 %or.cond99, label %bb.k, label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.aq = shufflevector <32 x i8> %2, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28>
  %i.ar = shufflevector <32 x i8> %2, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27>
  %i.as = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ar, <16 x i32> <i32 0, i32 1, i32 2, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.at = or <16 x i8> %i.aq, %i.as
  %.fr2449 = freeze <16 x i8> %i.at
  %i.au = or i8 %.sroa.401342.0.copyload, %.sroa.391341.0.copyload
  %or.cond83 = icmp eq i8 %i.au, 0
  %i.av = or i8 %.sroa.421344.0.copyload, %.sroa.411343.0.copyload
  %or.cond87 = icmp eq i8 %i.av, 0
  %i.aw = icmp ne <16 x i8> %.fr2449, <i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = icmp eq i16 %i.ax, 0
  %op.rdx = select i1 %i.ay, i1 %or.cond83, i1 false
  %op.rdx2429 = select i1 %op.rdx, i1 %or.cond87, i1 false
  br i1 %op.rdx2429, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5669)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %.sroa.0670.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0670.0 = load ptr, ptr %.sroa.0670.0.in, align 8, !nonnull !8, !noundef !8
  %.sroa.3671.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.3671.0 = load i64, ptr %.sroa.3671.0.in, align 8, !noundef !8
  call void @_RNvXs_NtCsbKIUnlj2DEr_5pkcs16traitsNtNtCshEfRhHhDcPz_3rsa3key12RsaPublicKeyNtB4_18DecodeRsaPublicKey14from_pkcs1_derCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0670.0, i64 noundef %.sroa.3671.0)
  %i.az = load i64, ptr %i.z, align 8, !range !17, !noundef !8
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5669, ptr noundef nonnull align 8 dereferenceable(64) %i.bb, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5669, i64 64, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5669)
  br label %bb.cj

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5669, ptr noundef nonnull align 8 dereferenceable(80) %i.bb, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5669, i64 80, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5669)
  br label %bb.cj

bb.k:                                             ; preds = %bb.f
  switch i8 %.sroa.81310.0.copyload, label %bb.d [
    i8 56, label %bb.l
    i8 61, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bd = shufflevector <32 x i8> %3, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29>
  %i.be = shufflevector <32 x i8> %3, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28>
  %i.bf = shufflevector <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.be, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bg = or <16 x i8> %i.bd, %i.bf
  %.fr2448 = freeze <16 x i8> %i.bg
  %i.bh = or i8 %.sroa.401342.0.copyload, %.sroa.391341.0.copyload
  %or.cond163 = icmp eq i8 %i.bh, 0
  %i.bi = or i8 %.sroa.421344.0.copyload, %.sroa.411343.0.copyload
  %or.cond167 = icmp eq i8 %i.bi, 0
  %i.bj = icmp ne <16 x i8> %.fr2448, <i8 4, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = icmp eq i16 %i.bk, 0
  %op.rdx2430 = select i1 %i.bl, i1 %or.cond163, i1 false
  %op.rdx2431 = select i1 %op.rdx2430, i1 %or.cond167, i1 false
  br i1 %op.rdx2431, label %bb.n, label %bb.d

bb.m:                                             ; preds = %bb.k
  %i.bm = shufflevector <32 x i8> %4, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29>
  %i.bn = shufflevector <32 x i8> %4, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28>
  %i.bo = shufflevector <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bp = or <16 x i8> %i.bm, %i.bo
  %.fr = freeze <16 x i8> %i.bp
  %i.bq = or i8 %.sroa.401342.0.copyload, %.sroa.391341.0.copyload
  %or.cond231 = icmp eq i8 %i.bq, 0
  %i.br = or i8 %.sroa.421344.0.copyload, %.sroa.411343.0.copyload
  %or.cond235 = icmp eq i8 %i.br, 0
  %i.bs = icmp ne <16 x i8> %.fr, <i8 2, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %i.bu = icmp eq i16 %i.bt, 0
  %op.rdx2444 = select i1 %i.bu, i1 %or.cond231, i1 false
  %op.rdx2445 = select i1 %op.rdx2444, i1 %or.cond235, i1 false
  br i1 %op.rdx2445, label %bb.bn, label %bb.d

bb.n:                                             ; preds = %bb.l
  %i.bv = load i64, ptr %1, align 8, !range !9, !noundef !8
  %.not2186 = icmp eq i64 %i.bv, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  br i1 %.not2186, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 11, ptr %i.y, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto14PublicKeyErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.0690.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0690.0 = load ptr, ptr %.sroa.0690.0.in, align 8, !nonnull !8, !noundef !8
  %.sroa.3691.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.3691.0 = load i64, ptr %.sroa.3691.0.in, align 8, !noundef !8
  call void @_RINvNtNtCslJIpglpJv42_10der_parser3ber6parser18parse_ber_with_tagNtNtCs92Y28wVgKBa_7asn1_rs3tag3TagECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0690.0, i64 noundef %.sroa.3691.0, i32 noundef 2)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !range !9, !noundef !8
  %i.by = icmp eq i64 %i.bx, 2
  %.sroa.41480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.41480.0.copyload = load i64, ptr %.sroa.41480.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.by, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.sroa.41464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.41464.0.copyload = load ptr, ptr %.sroa.41464.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.bz, align 8
  %.sroa.41473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41464.0.copyload, ptr %.sroa.41473.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cj

bb.q:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.01479.0.copyload = load i64, ptr %i.ca, align 8
  %i.cb = icmp eq i64 %.sroa.01479.0.copyload, 0
  br i1 %i.cb, label %bb.bm, label %.sink.split2385

bb.r:                                             ; preds = %bb.o
  %.sroa.51477.sroa.4.sroa.5.0..sroa.51477.sroa.4.0..sroa.51477.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.51477.sroa.5.0..sroa.51477.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.62156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62156.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.51477.sroa.5.0..sroa.51477.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.61478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.72157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72157.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61478.0..sroa_idx, i64 40, i1 false)
  %.sroa.52155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52155.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51477.sroa.4.sroa.5.0..sroa.51477.sroa.4.0..sroa.51477.0..sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false)
  %i.cc = load <4 x i64>, ptr %i.bw, align 8
  store <4 x i64> %i.cc, ptr %i.x, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !8, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !8
  invoke void @_RINvNtNtCslJIpglpJv42_10der_parser3ber6parser18parse_ber_with_tagNtNtCs92Y28wVgKBa_7asn1_rs3tag3TagECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i32 noundef 2)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.x, %bb.t
  %.pn2203 = phi { ptr, i32 } [ %i.ch, %bb.t ], [ %.pn2201, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.x) #38
          to label %bb.bl unwind label %bb.ay

bb.t:                                             ; preds = %bb.bg, %bb.av, %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !9, !noundef !8
  %i.ck = icmp eq i64 %i.cj, 2
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.01541.0.copyload = load i64, ptr %i.cl, align 8
  %.sroa.41542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.41542.0.copyload = load i64, ptr %.sroa.41542.0..sroa_idx, align 8 ; 2 uses
  %i.cm = icmp eq i64 %.sroa.01541.0.copyload, 0
  br i1 %i.cm, label %bb.bk, label %.sink.split2384

bb.w:                                             ; preds = %bb.u
  %.sroa.01537.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %.sroa.01537.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.01537.sroa.4.0.copyload = load i64, ptr %.sroa.01537.sroa.4.0..sroa_idx, align 8
  %.sroa.51539.sroa.4.0..sroa.51539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.51539.sroa.4.sroa.5.0..sroa.51539.sroa.4.0..sroa.51539.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.51539.sroa.5.0..sroa.51539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.62163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.62163.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.51539.sroa.5.0..sroa.51539.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.61540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.72164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72164.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61540.0..sroa_idx, i64 40, i1 false)
  %.sroa.52162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.52162.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51539.sroa.4.sroa.5.0..sroa.51539.sroa.4.0..sroa.51539.0..sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false)
  %i.cn = load <2 x i64>, ptr %i.ci, align 8
  store <2 x i64> %i.cn, ptr %i.w, align 16
  %.sroa.32160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.co = load <2 x i64>, ptr %.sroa.51539.sroa.4.0..sroa.51539.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.co, ptr %.sroa.32160.0..sroa_idx, align 16
  invoke void @_RINvNtNtCslJIpglpJv42_10der_parser3ber6parser18parse_ber_with_tagNtNtCs92Y28wVgKBa_7asn1_rs3tag3TagECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01537.sroa.0.0.copyload, i64 noundef %.sroa.01537.sroa.4.0.copyload, i32 noundef 2)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.ac, %bb.y
  %.pn2201 = phi { ptr, i32 } [ %i.cp, %bb.y ], [ %.pn2199, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.w) #38
          to label %bb.s unwind label %bb.ay

bb.y:                                             ; preds = %bb.bd, %bb.au, %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !range !9, !noundef !8
  %i.cs = icmp eq i64 %i.cr, 2
  br i1 %i.cs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.01603.0.copyload = load i64, ptr %i.ct, align 8
  %.sroa.41604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.41604.0.copyload = load i64, ptr %.sroa.41604.0..sroa_idx, align 8 ; 2 uses
  %i.cu = icmp eq i64 %.sroa.01603.0.copyload, 0
  br i1 %i.cu, label %bb.bh, label %.sink.split2383

bb.ab:                                            ; preds = %bb.z
  %.sroa.01599.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %.sroa.01599.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.01599.sroa.4.0.copyload = load i64, ptr %.sroa.01599.sroa.4.0..sroa_idx, align 8
  %.sroa.51601.sroa.4.0..sroa.51601.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.51601.sroa.4.sroa.5.0..sroa.51601.sroa.4.0..sroa.51601.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.51601.sroa.5.0..sroa.51601.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.62170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.62170.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.51601.sroa.5.0..sroa.51601.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.61602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.72171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72171.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61602.0..sroa_idx, i64 40, i1 false)
  %.sroa.52169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.52169.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51601.sroa.4.sroa.5.0..sroa.51601.sroa.4.0..sroa.51601.0..sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false)
  %i.cv = load <2 x i64>, ptr %i.cq, align 8
  store <2 x i64> %i.cv, ptr %i.v, align 16
  %.sroa.32167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cw = load <2 x i64>, ptr %.sroa.51601.sroa.4.0..sroa.51601.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.cw, ptr %.sroa.32167.0..sroa_idx, align 16
  invoke void @_RINvNtNtCslJIpglpJv42_10der_parser3ber6parser18parse_ber_with_tagNtNtCs92Y28wVgKBa_7asn1_rs3tag3TagECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01599.sroa.0.0.copyload, i64 noundef %.sroa.01599.sroa.4.0.copyload, i32 noundef 2)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2319, %bb.ad
  %.pn2199 = phi { ptr, i32 } [ %i.cx, %bb.ad ], [ %.pn2197, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2319 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.v) #38
          to label %bb.x unwind label %bb.ay

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2316, %bb.at, %bb.ab
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !range !9, !noundef !8
  %i.da = icmp eq i64 %i.cz, 2
  %.sroa.41666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.41666.0.copyload = load i64, ptr %.sroa.41666.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.da, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.01665.0.copyload = load i64, ptr %i.db, align 8
  %i.dc = icmp eq i64 %.sroa.01665.0.copyload, 0
  br i1 %i.dc, label %bb.be, label %.sink.split

bb.ag:                                            ; preds = %bb.ae
  %.sroa.51663.sroa.4.sroa.5.0..sroa.51663.sroa.4.0..sroa.51663.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.51663.sroa.5.0..sroa.51663.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.62177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62177.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.51663.sroa.5.0..sroa.51663.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.61664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.72178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72178.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61664.0..sroa_idx, i64 40, i1 false)
end_hunk_2
begin_hunk_3_@_RNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB2_9PublicKeyINtNtCskKLDkoKarTP_4core7convert7TryFromRNtNtCs9ej6TH0mm9O_11x509_parser4x50920SubjectPublicKeyInfoE8try_from:bb.a
bb.ba:                                            ; preds = %bb.ak, %bb.az
  %.pn2193.ph = phi { ptr, i32 } [ %i.dt, %bb.ak ], [ %i.er, %bb.az ]
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAyj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %bb.bb unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ai, %bb.ba
  %.pn2195.ph = phi { ptr, i32 } [ %i.dn, %bb.ai ], [ %.pn2193.ph, %bb.ba ]
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAyj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2319 unwind label %bb.ay

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.v)
          to label %bb.bf unwind label %bb.y

.sink.split:                                      ; preds = %bb.af
  %.sroa.71668.sroa.5.0..sroa.71668.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.71668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.71668.sroa.0.0.copyload = load i64, ptr %.sroa.71668.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91678, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71668.sroa.5.0..sroa.71668.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.af, %.sink.split
  %.sroa.01675.0 = phi i64 [ -9223372036854775789, %bb.af ], [ %.sroa.41666.0.copyload, %.sink.split ]
  %.sroa.61676.0 = phi i64 [ %.sroa.41666.0.copyload, %bb.af ], [ %.sroa.71668.sroa.0.0.copyload, %.sink.split ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.es, align 8
  %.sroa.41719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.01675.0, ptr %.sroa.41719.0..sroa_idx, align 8
  %.sroa.51720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.61676.0, ptr %.sroa.51720.0..sroa_idx, align 8
  %.sroa.61721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61721.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91678, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.w)
          to label %bb.bi unwind label %bb.t

.sink.split2383:                                  ; preds = %bb.aa
  %.sroa.71606.sroa.5.0..sroa.71606.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.71606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.71606.sroa.0.0.copyload = load i64, ptr %.sroa.71606.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91616, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71606.sroa.5.0..sroa.71606.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.aa, %.sink.split2383
  %.sroa.01613.0 = phi i64 [ -9223372036854775789, %bb.aa ], [ %.sroa.41604.0.copyload, %.sink.split2383 ]
  %.sroa.61614.0 = phi i64 [ %.sroa.41604.0.copyload, %bb.aa ], [ %.sroa.71606.sroa.0.0.copyload, %.sink.split2383 ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.et, align 8
  %.sroa.41657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.01613.0, ptr %.sroa.41657.0..sroa_idx, align 8
  %.sroa.51658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.61614.0, ptr %.sroa.51658.0..sroa_idx, align 8
  %.sroa.61659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61659.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91616, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cj

.sink.split2384:                                  ; preds = %bb.v
  %.sroa.71544.sroa.5.0..sroa.71544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.71544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.71544.sroa.0.0.copyload = load i64, ptr %.sroa.71544.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91554, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71544.sroa.5.0..sroa.71544.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.v, %.sink.split2384
  %.sroa.01551.0 = phi i64 [ -9223372036854775789, %bb.v ], [ %.sroa.41542.0.copyload, %.sink.split2384 ]
  %.sroa.61552.0 = phi i64 [ %.sroa.41542.0.copyload, %bb.v ], [ %.sroa.71544.sroa.0.0.copyload, %.sink.split2384 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.eu, align 8
  %.sroa.41595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.01551.0, ptr %.sroa.41595.0..sroa_idx, align 8
  %.sroa.51596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.61552.0, ptr %.sroa.51596.0..sroa_idx, align 8
  %.sroa.61597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61597.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91554, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.bj

bb.bl:                                            ; preds = %bb.br, %bb.s
  %.pn2203.pn = phi { ptr, i32 } [ %.pn2203, %bb.s ], [ %i.fc, %bb.br ]
  resume { ptr, i32 } %.pn2203.pn

.sink.split2385:                                  ; preds = %bb.q
  %.sroa.71482.sroa.5.0..sroa.71482.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.71482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.71482.sroa.0.0.copyload = load i64, ptr %.sroa.71482.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91492, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71482.sroa.5.0..sroa.71482.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.q, %.sink.split2385
  %.sroa.01489.0 = phi i64 [ -9223372036854775789, %bb.q ], [ %.sroa.41480.0.copyload, %.sink.split2385 ]
  %.sroa.61490.0 = phi i64 [ %.sroa.41480.0.copyload, %bb.q ], [ %.sroa.71482.sroa.0.0.copyload, %.sink.split2385 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.ev, align 8
  %.sroa.41533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.01489.0, ptr %.sroa.41533.0..sroa_idx, align 8
  %.sroa.51534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.61490.0, ptr %.sroa.51534.0..sroa_idx, align 8
  %.sroa.61535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61535.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91492, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.cj

bb.bn:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ew = load i64, ptr %1, align 8, !range !9, !noundef !8
  %.not2182 = icmp eq i64 %i.ew, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %.not2182, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i64 11, ptr %i.h, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto14PublicKeyErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !8 ; 2 uses
  store i64 -1, ptr %i.i, align 8
  %.sroa.41827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ey, ptr %.sroa.41827.0..sroa_idx, align 8
  %.sroa.51828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.fa, ptr %.sroa.51828.0..sroa_idx, align 8
  %.sroa.61829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 0, ptr %.sroa.61829.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs_Cs9UgDHlk63pp_9const_oidNtB4_16ObjectIdentifier10from_bytes(ptr noalias nofree noundef nonnull sret([44 x i8]) align 4 captures(none) dereferenceable(44) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ey, i64 noundef %i.fa)
          to label %bb.bs unwind label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.sroa.41810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.41810.0.copyload = load ptr, ptr %.sroa.41810.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.fb, align 8
  %.sroa.41832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41810.0.copyload, ptr %.sroa.41832.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ce, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cj

bb.br:                                            ; preds = %bb.cf, %bb.bz, %bb.bo
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs92Y28wVgKBa_7asn1_rs10asn1_types3oid3OidECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #38
          to label %bb.bl unwind label %bb.ay

bb.bs:                                            ; preds = %bb.bo
  %i.fd = load i8, ptr %i.g, align 4, !range !13, !noundef !8
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.ff, align 8
  br label %bb.ce

bb.bu:                                            ; preds = %bb.bs
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.01959.0.copyload = load i8, ptr %i.fg, align 1 ; 2 uses
  %.sroa.41960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %.sroa.51961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.sroa.61962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %.sroa.71963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %.sroa.81964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %.sroa.91965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %.sroa.101966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.111967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %.sroa.121968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %.sroa.131969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %.sroa.141970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.151971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %.sroa.161972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %.sroa.171973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %.sroa.181974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.191975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %.sroa.201976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %.sroa.211977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  %.sroa.221978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.231979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  %.sroa.241980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  %.sroa.251981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  %.sroa.261982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.271983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  %.sroa.281984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %.sroa.291985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 27
  %.sroa.301986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.311987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 29
  %5 = load <32 x i8>, ptr %.sroa.61962.0..sroa_idx, align 4 ; 2 uses
  %.sroa.311987.0.copyload = load i8, ptr %.sroa.311987.0..sroa_idx, align 1 ; 2 uses
  %.sroa.191975.0.copyload = load i8, ptr %.sroa.191975.0..sroa_idx, align 1
  %.sroa.181974.0.copyload = load i8, ptr %.sroa.181974.0..sroa_idx, align 4
  %.sroa.171973.0.copyload = load i8, ptr %.sroa.171973.0..sroa_idx, align 1
  %.sroa.161972.0.copyload = load i8, ptr %.sroa.161972.0..sroa_idx, align 2
  %.sroa.151971.0.copyload = load i8, ptr %.sroa.151971.0..sroa_idx, align 1
  %.sroa.141970.0.copyload = load i8, ptr %.sroa.141970.0..sroa_idx, align 4
  %.sroa.131969.0.copyload = load i8, ptr %.sroa.131969.0..sroa_idx, align 1
  %.sroa.121968.0.copyload = load i8, ptr %.sroa.121968.0..sroa_idx, align 2
  %.sroa.111967.0.copyload = load i8, ptr %.sroa.111967.0..sroa_idx, align 1
  %.sroa.101966.0.copyload = load i8, ptr %.sroa.101966.0..sroa_idx, align 4
  %.sroa.91965.0.copyload = load i8, ptr %.sroa.91965.0..sroa_idx, align 1
  %.sroa.81964.0.copyload = load i8, ptr %.sroa.81964.0..sroa_idx, align 2
  %.sroa.71963.0.copyload = load i8, ptr %.sroa.71963.0..sroa_idx, align 1
  %.sroa.61962.0.copyload = load i8, ptr %.sroa.61962.0..sroa_idx, align 4
  %.sroa.51961.0.copyload = load i8, ptr %.sroa.51961.0..sroa_idx, align 1 ; 2 uses
  %.sroa.41960.0.copyload = load i8, ptr %.sroa.41960.0..sroa_idx, align 2 ; 2 uses
  %6 = load <32 x i8>, ptr %.sroa.41960.0..sroa_idx, align 2 ; 2 uses
  %.sroa.301986.0.copyload = load i8, ptr %.sroa.301986.0..sroa_idx, align 4
  %.sroa.291985.0.copyload = load i8, ptr %.sroa.291985.0..sroa_idx, align 1
  %.sroa.281984.0.copyload = load i8, ptr %.sroa.281984.0..sroa_idx, align 2
  %.sroa.271983.0.copyload = load i8, ptr %.sroa.271983.0..sroa_idx, align 1
  %.sroa.261982.0.copyload = load i8, ptr %.sroa.261982.0..sroa_idx, align 4
  %.sroa.251981.0.copyload = load i8, ptr %.sroa.251981.0..sroa_idx, align 1
  %.sroa.241980.0.copyload = load i8, ptr %.sroa.241980.0..sroa_idx, align 2
  %.sroa.231979.0.copyload = load i8, ptr %.sroa.231979.0..sroa_idx, align 1
  %.sroa.221978.0.copyload = load i8, ptr %.sroa.221978.0..sroa_idx, align 4
  %.sroa.211977.0.copyload = load i8, ptr %.sroa.211977.0..sroa_idx, align 1
  %.sroa.201976.0.copyload = load i8, ptr %.sroa.201976.0..sroa_idx, align 2
  %.sroa.321988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 30
  %.sroa.321988.0.copyload = load i8, ptr %.sroa.321988.0..sroa_idx, align 2 ; 3 uses
  %.sroa.331989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 31
  %.sroa.331989.0.copyload = load i8, ptr %.sroa.331989.0..sroa_idx, align 1 ; 3 uses
  %.sroa.341990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.341990.0.copyload = load i8, ptr %.sroa.341990.0..sroa_idx, align 4 ; 3 uses
  %.sroa.351991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  %.sroa.351991.0.copyload = load i8, ptr %.sroa.351991.0..sroa_idx, align 1 ; 3 uses
  %.sroa.361992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %.sroa.361992.0.copyload = load i8, ptr %.sroa.361992.0..sroa_idx, align 2 ; 3 uses
  %.sroa.371993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %.sroa.371993.0.copyload = load i8, ptr %.sroa.371993.0..sroa_idx, align 1 ; 3 uses
  %.sroa.381994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %.sroa.381994.0.copyload = load i8, ptr %.sroa.381994.0..sroa_idx, align 4 ; 3 uses
  %.sroa.391995.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  %.sroa.391995.0.copyload = load i8, ptr %.sroa.391995.0..sroa_idx, align 1 ; 3 uses
  %.sroa.401996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 38
  %.sroa.401996.0.copyload = load i8, ptr %.sroa.401996.0..sroa_idx, align 2 ; 3 uses
  %.sroa.411997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 39
  %.sroa.411997.0.copyload = load i8, ptr %.sroa.411997.0..sroa_idx, align 1 ; 3 uses
  %.sroa.421998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.421998.0.copyload = load i8, ptr %.sroa.421998.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  switch i8 %.sroa.01959.0.copyload, label %bb.bv [
    i8 8, label %bb.bw
    i8 5, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bu
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.fh, align 8
  %.sroa.41108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.01959.0.copyload, ptr %.sroa.41108.0..sroa_idx, align 8
  %.sroa.51109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.41960.0.copyload, ptr %.sroa.51109.0..sroa_idx, align 1
  %.sroa.61110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.51961.0.copyload, ptr %.sroa.61110.0..sroa_idx, align 2
  %.sroa.71111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.61962.0.copyload, ptr %.sroa.71111.0..sroa_idx, align 1
  %.sroa.81112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.71963.0.copyload, ptr %.sroa.81112.0..sroa_idx, align 4
  %.sroa.91113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.81964.0.copyload, ptr %.sroa.91113.0..sroa_idx, align 1
  %.sroa.101114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %.sroa.91965.0.copyload, ptr %.sroa.101114.0..sroa_idx, align 2
  %.sroa.111115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %.sroa.101966.0.copyload, ptr %.sroa.111115.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.111967.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.131116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.121968.0.copyload, ptr %.sroa.131116.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.131969.0.copyload, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %.sroa.141970.0.copyload, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.161117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.151971.0.copyload, ptr %.sroa.161117.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %.sroa.161972.0.copyload, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.181118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %.sroa.171973.0.copyload, ptr %.sroa.181118.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.181974.0.copyload, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.201119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.191975.0.copyload, ptr %.sroa.201119.0..sroa_idx, align 8
  %.sroa.211120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.201976.0.copyload, ptr %.sroa.211120.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.211977.0.copyload, ptr %.sroa.22.0..sroa_idx, align 2
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %.sroa.221978.0.copyload, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.241121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.231979.0.copyload, ptr %.sroa.241121.0..sroa_idx, align 4
  %.sroa.251122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %.sroa.241980.0.copyload, ptr %.sroa.251122.0..sroa_idx, align 1
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 %.sroa.251981.0.copyload, ptr %.sroa.26.0..sroa_idx, align 2
  %.sroa.271123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sroa.261982.0.copyload, ptr %.sroa.271123.0..sroa_idx, align 1
  %.sroa.281124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.271983.0.copyload, ptr %.sroa.281124.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %.sroa.281984.0.copyload, ptr %.sroa.29.0..sroa_idx, align 1
  %.sroa.301125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.291985.0.copyload, ptr %.sroa.301125.0..sroa_idx, align 2
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 %.sroa.301986.0.copyload, ptr %.sroa.31.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.311987.0.copyload, ptr %.sroa.32.0..sroa_idx, align 4
  %.sroa.331126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %.sroa.321988.0.copyload, ptr %.sroa.331126.0..sroa_idx, align 1
  %.sroa.341127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %.sroa.331989.0.copyload, ptr %.sroa.341127.0..sroa_idx, align 2
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %.sroa.341990.0.copyload, ptr %.sroa.35.0..sroa_idx, align 1
  %.sroa.361128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.351991.0.copyload, ptr %.sroa.361128.0..sroa_idx, align 8
  %.sroa.371129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %.sroa.361992.0.copyload, ptr %.sroa.371129.0..sroa_idx, align 1
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sroa.371993.0.copyload, ptr %.sroa.38.0..sroa_idx, align 2
  %.sroa.391130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 %.sroa.381994.0.copyload, ptr %.sroa.391130.0..sroa_idx, align 1
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.391995.0.copyload, ptr %.sroa.40.0..sroa_idx, align 4
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 %.sroa.401996.0.copyload, ptr %.sroa.41.0..sroa_idx, align 1
  %.sroa.421131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %.sroa.411997.0.copyload, ptr %.sroa.421131.0..sroa_idx, align 2
  %.sroa.431132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 %.sroa.421998.0.copyload, ptr %.sroa.431132.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  br label %bb.cd

bb.bw:                                            ; preds = %bb.bu
  %i.fi = icmp eq i8 %.sroa.41960.0.copyload, 42
  %i.fj = icmp eq i8 %.sroa.51961.0.copyload, -122
  %i.fk = shufflevector <32 x i8> %5, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25>
  %i.fl = shufflevector <32 x i8> %5, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24>
  %i.fm = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fn = or <16 x i8> %i.fk, %i.fm
  %.fr2447 = freeze <16 x i8> %i.fn
  %i.fo = or i8 %.sroa.331989.0.copyload, %.sroa.321988.0.copyload
  %or.cond307 = icmp eq i8 %i.fo, 0
  %i.fp = or i8 %.sroa.351991.0.copyload, %.sroa.341990.0.copyload
  %or.cond311 = icmp eq i8 %i.fp, 0
  %i.fq = or i8 %.sroa.371993.0.copyload, %.sroa.361992.0.copyload
  %or.cond315 = icmp eq i8 %i.fq, 0
  %i.fr = or i8 %.sroa.391995.0.copyload, %.sroa.381994.0.copyload
  %or.cond319 = icmp eq i8 %i.fr, 0
  %i.fs = icmp ne <16 x i8> %.fr2447, <i8 72, i8 -50, i8 61, i8 3, i8 1, i8 7, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.ft = bitcast <16 x i1> %i.fs to i16
  %i.fu = icmp eq i16 %i.ft, 0
  %op.rdx2432 = select i1 %i.fu, i1 %i.fi, i1 false
  %i.fv = select i1 %op.rdx2432, i1 %i.fj, i1 false
  %op.rdx2435 = select i1 %i.fv, i1 %or.cond307, i1 false
  %i.fw = select i1 %op.rdx2435, i1 %or.cond311, i1 false
  %i.fx = select i1 %i.fw, i1 %or.cond315, i1 false
  %op.rdx2437 = select i1 %i.fx, i1 %or.cond319, i1 false
  br i1 %op.rdx2437, label %bb.by, label %bb.bv

bb.bx:                                            ; preds = %bb.bu
  %i.fy = shufflevector <32 x i8> %6, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26>
  %i.fz = shufflevector <32 x i8> %6, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25>
  %i.ga = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gb = or <16 x i8> %i.fy, %i.ga
  %.fr2446 = freeze <16 x i8> %i.gb
  %i.gc = or i8 %.sroa.321988.0.copyload, %.sroa.311987.0.copyload
  %or.cond391 = icmp eq i8 %i.gc, 0
  %i.gd = or i8 %.sroa.341990.0.copyload, %.sroa.331989.0.copyload
  %or.cond395 = icmp eq i8 %i.gd, 0
  %i.ge = or i8 %.sroa.361992.0.copyload, %.sroa.351991.0.copyload
  %or.cond399 = icmp eq i8 %i.ge, 0
  %i.gf = or i8 %.sroa.381994.0.copyload, %.sroa.371993.0.copyload
  %or.cond403 = icmp eq i8 %i.gf, 0
  %i.gg = or i8 %.sroa.401996.0.copyload, %.sroa.391995.0.copyload
  %or.cond407 = icmp eq i8 %i.gg, 0
  %i.gh = or i8 %.sroa.421998.0.copyload, %.sroa.411997.0.copyload
  %or.cond411 = icmp eq i8 %i.gh, 0
  %i.gi = icmp ne <16 x i8> %.fr2446, <i8 43, i8 -127, i8 4, i8 0, i8 34, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.gj = bitcast <16 x i1> %i.gi to i16
  %i.gk = icmp eq i16 %i.gj, 0
  %op.rdx2438 = select i1 %i.gk, i1 %or.cond391, i1 false
  %i.gl = select i1 %op.rdx2438, i1 %or.cond395, i1 false
  %op.rdx2441 = select i1 %i.gl, i1 %or.cond399, i1 false
  %i.gm = select i1 %op.rdx2441, i1 %or.cond403, i1 false
  %i.gn = select i1 %i.gm, i1 %or.cond407, i1 false
  %op.rdx2443 = select i1 %i.gn, i1 %or.cond411, i1 false
  br i1 %op.rdx2443, label %bb.cf, label %bb.bv

bb.by:                                            ; preds = %bb.bw
  %i.go = or i8 %.sroa.411997.0.copyload, %.sroa.401996.0.copyload
  %or.cond323 = icmp eq i8 %i.go, 0
  %i.gp = icmp eq i8 %.sroa.421998.0.copyload, 0
  %or.cond327 = select i1 %or.cond323, i1 %i.gp, i1 false
  br i1 %or.cond327, label %bb.bz, label %bb.bv

bb.bz:                                            ; preds = %bb.by
  %.sroa.31079.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.31079.0 = load i64, ptr %.sroa.31079.0.in, align 8, !noundef !8
  %.sroa.01078.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.01078.0 = load ptr, ptr %.sroa.01078.0.in, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCscCwXDEmlcGa_14elliptic_curve10public_keyINtB2_9PublicKeyNtCshfSScXElJO5_4p2568NistP256E15from_sec1_bytesCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01078.0, i64 noundef %.sroa.31079.0)
          to label %bb.ca unwind label %bb.br

bb.ca:                                            ; preds = %bb.bz
  %i.gq = load i64, ptr %i.b, align 8, !range !17, !noundef !8
  %i.gr = trunc nuw i64 %i.gq to i1
  br i1 %i.gr, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.gs, align 8
  %.sroa.42135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.42135.0..sroa_idx, align 8
  br label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.52130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.51060.sroa.6.0..sroa.51060.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.51060.sroa.6.0..sroa.51060.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.52130.0..sroa_idx, i64 56, i1 false)
  %.sroa.51060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gu = load <2 x ptr>, ptr %i.gt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 2, ptr %0, align 8
  store <2 x ptr> %i.gu, ptr %.sroa.51060.0..sroa_idx, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ci, %bb.cc, %bb.bv
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs92Y28wVgKBa_7asn1_rs10asn1_types3oid3OidECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cj

bb.ce:                                            ; preds = %bb.ch, %bb.cb, %bb.bt
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs92Y28wVgKBa_7asn1_rs10asn1_types3oid3OidECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
  br label %bb.bq

bb.cf:                                            ; preds = %bb.bx
  %.sroa.31103.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.31103.0 = load i64, ptr %.sroa.31103.0.in, align 8, !noundef !8
  %.sroa.01102.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.01102.0 = load ptr, ptr %.sroa.01102.0.in, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCscCwXDEmlcGa_14elliptic_curve10public_keyINtB2_9PublicKeyNtCs2QVhZO3YFtI_4p3848NistP384E15from_sec1_bytesCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01102.0, i64 noundef %.sroa.31103.0)
          to label %bb.cg unwind label %bb.br

bb.cg:                                            ; preds = %bb.cf
  %i.gv = load i64, ptr %i.a, align 8, !range !17, !noundef !8
  %i.gw = trunc nuw i64 %i.gv to i1
  br i1 %i.gw, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.gx, align 8
  %.sroa.42148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.42148.0..sroa_idx, align 8
  br label %bb.ce

bb.ci:                                            ; preds = %bb.cg
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.52143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.51084.sroa.6.0..sroa.51084.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.51084.sroa.6.0..sroa.51084.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.52143.0..sroa_idx, i64 88, i1 false)
  %.sroa.51084.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gz = load <2 x ptr>, ptr %i.gy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 3, ptr %0, align 8
  store <2 x ptr> %i.gz, ptr %.sroa.51084.0..sroa_idx, align 8
  br label %bb.cd

bb.cj:                                            ; preds = %bb.b, %bb.i, %bb.p, %bb.bq, %bb.bm, %bb.bj, %bb.d, %bb.j, %bb.aw, %bb.cd
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperINtNtB1c_11ct_variable21CtVariableCoreWrapperNtNtCsiIzOlemwQJl_4sha28core_api13Sha256VarCoreINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIB3y_IB3y_IB3y_IB3y_IB3y_NtB3A_5UTermNtNtB3C_3bit2B1ENtB4L_2B0EB4Z_EB4Z_EB4Z_EB4Z_ENtB2Q_9OidSha256EEENtNtB8_3fmt5Write9write_strCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !25, !noundef !8
  %i.c = tail call noundef ptr @_RNvYINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperINtNtB7_11ct_variable21CtVariableCoreWrapperNtNtCsiIzOlemwQJl_4sha28core_api13Sha256VarCoreINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIB2s_IB2s_IB2s_IB2s_IB2s_NtB2u_5UTermNtNtB2w_3bit2B1ENtB3F_2B0EB3T_EB3T_EB3T_EB3T_ENtB1K_9OidSha256EENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i
    i64 1, label %bb.e
  ], !prof !20

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !9921
  store i8 3, ptr %i.a, align 8, !alias.scope !9921
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperINtNtB1c_11ct_variable21CtVariableCoreWrapperNtNtCsiIzOlemwQJl_4sha28core_api13Sha512VarCoreINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIB3y_IB3y_IB3y_IB3y_IB3y_IB3y_NtB3A_5UTermNtNtB3C_3bit2B1ENtB4Q_2B0EB54_EB54_EB54_EB54_EB54_ENtB2Q_9OidSha512EEENtNtB8_3fmt5Write9write_strCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !68, !noundef !8
  %i.c = tail call noundef ptr @_RNvYINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperINtNtB7_11ct_variable21CtVariableCoreWrapperNtNtCsiIzOlemwQJl_4sha28core_api13Sha512VarCoreINtNtCs5JhIwYIM6tq_7typenum4uint4UIntIB2s_IB2s_IB2s_IB2s_IB2s_IB2s_NtB2u_5UTermNtNtB2w_3bit2B1ENtB3K_2B0EB3Y_EB3Y_EB3Y_EB3Y_EB3Y_ENtB1K_9OidSha512EENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 16 dereferenceable(224) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i
end_hunk_3
