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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8655)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !8656, !noalias !8657, !noundef !8 ; 2 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !8655, !noalias !8658 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i, %i.f
  br i1 %i.g, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8656, !noalias !8657, !nonnull !8, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8659)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !8660, !noundef !8
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !54

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !8661, !noalias !8658
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
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !8662
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8683)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !8684, !noalias !8685, !noundef !8 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !8683, !noalias !8686 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !8684, !noalias !8685, !nonnull !8, !noundef !8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8687)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !8688, !noundef !8
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !54

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !8689, !noalias !8686
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
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !8690
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsbbTh99npV2h_10serde_json5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit17

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !8691
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8692)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i12, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit16.thread

.lr.ph.i12:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !8693, !noundef !8
  switch i8 %i.v, label %_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7gfv9tzbXmh_6yara_x.exit16.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !8694, !noalias !8695
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
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 2 uses
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %.sroa.154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.sroa.285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 2 uses
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

bb.b:                                             ; preds = %bb.bf, %bb.a
  %i.i = invoke { ptr, ptr } @_RNvXs5_NtCs2CmfWUMKNor_9itertools10tuple_implINtB5_12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB15_4asn111CertificateB2f_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.c:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.nj, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val13 = load ptr, ptr %i.j, align 8, !alias.scope !8710
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val14 = load i64, ptr %i.k, align 8, !alias.scope !8710, !noundef !8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_(ptr %.val13, i64 %.val14) #38
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.b, %bb.e, %bb.bd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 7 uses
  %.not = icmp eq ptr %i.l, null                  ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  invoke void @_RNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB2_9PublicKeyINtNtCskKLDkoKarTP_4core7convert7TryFromRNtNtCs9ej6TH0mm9O_11x509_parser4x50920SubjectPublicKeyInfoE8try_from(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.n)
          to label %bb.g unwind label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val12 = load i64, ptr %i.o, align 8, !alias.scope !8710, !noundef !8 ; 3 uses
  %i.p = icmp eq i64 %.val12, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val11 = load ptr, ptr %i.q, align 8, !alias.scope !8710, !nonnull !8, !noundef !8
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
  %.sink = phi i64 [ %i.nn, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26 ], [ %i.r, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %.val11.sink = phi ptr [ %.val, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26 ], [ %.val11, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %.sink58 = phi i64 [ %i.nq, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26 ], [ %i.u, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %i.y = sub nuw nsw i64 -16, %.sink
  %i.z = getelementptr inbounds i8, ptr %.val11.sink, i64 %i.y
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %.sink58, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27.sink.split, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.f, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26, %bb.be
  %.not55 = phi i1 [ true, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ false, %bb.be ], [ false, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26 ], [ true, %bb.f ], [ %.not, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %.not55

bb.g:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.d, align 8, !range !60, !noundef !8
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %bb.bh, label %bb.h

bb.h:                                             ; preds = %bb.g
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8711
  invoke void @_RNvMs_Cs9UgDHlk63pp_9const_oidNtB4_16ObjectIdentifier10from_bytes(ptr noalias nofree noundef nonnull sret([44 x i8]) align 4 captures(none) dereferenceable(44) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val15, i64 noundef %.val16)
          to label %.noexc18 unwind label %bb.bc

.noexc18:                                         ; preds = %bb.h
  %i.ai = load i8, ptr %i.c, align 4, !range !13, !noalias !8711, !noundef !8
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8711
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.j:                                             ; preds = %.noexc18
  %i.ak = load i8, ptr %i.g, align 1, !noalias !8711, !noundef !8
  %.sroa.0915.0.copyload.i = load i8, ptr %i.h, align 2, !noalias !8711
  %.sroa.0915.0.copyload.i.fr = freeze i8 %.sroa.0915.0.copyload.i ; 4 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !8711
  %.sroa.5.0.copyload.i.fr = freeze i8 %.sroa.5.0.copyload.i ; 5 uses
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 4, !noalias !8711 ; 5 uses
  %.sroa.15.0.copyload.i = load i8, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !8711
  %.sroa.15.0.copyload.i.fr = freeze i8 %.sroa.15.0.copyload.i ; 5 uses
  %i.al = load <16 x i8>, ptr %.sroa.53.0..sroa_idx.i, align 2, !noalias !8711 ; 12 uses
  %i.am = load <16 x i8>, ptr %.sroa.69.0..sroa_idx.i, align 1, !noalias !8711 ; 18 uses
  %1 = load <16 x i8>, ptr %.sroa.478.0..sroa_idx.i, align 2 ; 2 uses
  %.sroa.856.0.copyload.i = load i8, ptr %.sroa.856.0..sroa_idx.i, align 4, !noalias !8711 ; 17 uses
  %.sroa.825.0.copyload.i = load i8, ptr %.sroa.825.0..sroa_idx.i, align 1, !noalias !8711 ; 17 uses
  %i.an = load <32 x i8>, ptr %.sroa.26.0..sroa_idx.i, align 1, !noalias !8711 ; 4 uses
  %.sroa.802.0.copyload.i = load i8, ptr %.sroa.802.0..sroa_idx.i, align 2, !noalias !8711 ; 15 uses
  %.sroa.771.0.copyload.i = load i8, ptr %.sroa.771.0..sroa_idx.i, align 1, !noalias !8711 ; 15 uses
  %.sroa.748.0.copyload.i = load i8, ptr %.sroa.748.0..sroa_idx.i, align 4, !noalias !8711 ; 15 uses
  %.sroa.717.0.copyload.i = load i8, ptr %.sroa.717.0..sroa_idx.i, align 1, !noalias !8711 ; 15 uses
  %i.ao = load <16 x i8>, ptr %.sroa.285.0..sroa_idx.i, align 1, !noalias !8711 ; 2 uses
  %.sroa.694.0.copyload.i = load i8, ptr %.sroa.694.0..sroa_idx.i, align 2, !noalias !8711 ; 14 uses
  %.sroa.663.0.copyload.i = load i8, ptr %.sroa.663.0..sroa_idx.i, align 1, !noalias !8711 ; 14 uses
  %.sroa.640.0.copyload.i = load i8, ptr %.sroa.640.0..sroa_idx.i, align 4, !noalias !8711 ; 14 uses
  %.sroa.609.0.copyload.i = load i8, ptr %.sroa.609.0..sroa_idx.i, align 1, !noalias !8711 ; 14 uses
  %.sroa.586.0.copyload.i = load i8, ptr %.sroa.586.0..sroa_idx.i, align 2, !noalias !8711 ; 14 uses
  %.sroa.555.0.copyload.i = load i8, ptr %.sroa.555.0..sroa_idx.i, align 1, !noalias !8711 ; 14 uses
  %.sroa.532.0.copyload.i = load i8, ptr %.sroa.532.0..sroa_idx.i, align 4, !noalias !8711 ; 14 uses
  %.sroa.501.0.copyload.i = load i8, ptr %.sroa.501.0..sroa_idx.i, align 1, !noalias !8711 ; 14 uses
  %.sroa.478.0.copyload.i = load i8, ptr %.sroa.478.0..sroa_idx.i, align 2, !noalias !8711 ; 5 uses
  %i.ap = load <8 x i8>, ptr %.sroa.154.0..sroa_idx.i, align 2 ; 2 uses
  %i.aq = load <8 x i8>, ptr %.sroa.20.0..sroa_idx.i, align 2, !noalias !8711 ; 2 uses
  %.sroa.53.0.copyload.i = load i8, ptr %.sroa.53.0..sroa_idx.i, align 2, !noalias !8711 ; 2 uses
  %.sroa.43.0.copyload.i = load i8, ptr %.sroa.43.0..sroa_idx.i, align 1, !noalias !8711 ; 4 uses
  %.sroa.35.0.copyload.i = load i8, ptr %.sroa.35.0..sroa_idx.i, align 4, !noalias !8711 ; 4 uses
  %.sroa.26.0.copyload.i = load i8, ptr %.sroa.26.0..sroa_idx.i, align 1, !noalias !8711 ; 4 uses
  %.sroa.20.0.copyload.i = load i8, ptr %.sroa.20.0..sroa_idx.i, align 2, !noalias !8711 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8711
  switch i8 %i.ak, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 5, label %bb.m
    i8 7, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp eq i8 %.sroa.0915.0.copyload.i.fr, 42
  %i.as = icmp eq i8 %.sroa.5.0.copyload.i.fr, -122
  %or.cond.i = and i1 %i.ar, %i.as
  %i.at = icmp eq i8 %.sroa.10.0.copyload.i, 72
  %or.cond5.i = select i1 %or.cond.i, i1 %i.at, i1 false
  br i1 %or.cond5.i, label %bb.o, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.l:                                             ; preds = %bb.j
  switch i8 %.sroa.0915.0.copyload.i.fr, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 42, label %bb.ai
    i8 96, label %bb.aj
  ]

bb.m:                                             ; preds = %bb.j
  %i.au = icmp eq i8 %.sroa.0915.0.copyload.i.fr, 43
  %i.av = icmp eq i8 %.sroa.5.0.copyload.i.fr, 14
  %or.cond740.i = and i1 %i.au, %i.av
  %i.aw = icmp eq i8 %.sroa.10.0.copyload.i, 3
  %or.cond743.i = select i1 %or.cond740.i, i1 %i.aw, i1 false
  %i.ax = icmp eq i8 %.sroa.15.0.copyload.i.fr, 2
  %or.cond746.i = and i1 %or.cond743.i, %i.ax
  br i1 %or.cond746.i, label %bb.az, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.n:                                             ; preds = %bb.j
  %i.ay = icmp eq i8 %.sroa.0915.0.copyload.i.fr, 42
  %i.az = icmp eq i8 %.sroa.5.0.copyload.i.fr, -122
  %i.ba = icmp eq i8 %.sroa.10.0.copyload.i, 72
  %i.bb = icmp eq i8 %.sroa.15.0.copyload.i.fr, -50
  %i.bc = shufflevector <8 x i8> %i.aq, <8 x i8> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12>
  %i.bd = shufflevector <8 x i8> %i.aq, <8 x i8> %i.ap, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 5, i32 7, i32 9, i32 11>
  %i.be = shufflevector <8 x i8> <i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <8 x i8> %i.bd, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = or <8 x i8> %i.bc, %i.be
  %.fr = freeze <8 x i8> %i.bf
  %i.bg = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 6, i32 9, i32 11, i32 13, i32 15>
  %i.bh = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 7, i32 8, i32 10, i32 12, i32 14>
  %i.bi = or <8 x i8> %i.bg, %i.bh
  %.fr168 = freeze <8 x i8> %i.bi
  %i.bj = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr171 = freeze i8 %i.bj
  %i.bk = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr169 = freeze i8 %i.bk
  %i.bl = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond914.i = icmp eq i8 %i.bl, 0
  %i.bm = icmp ne <8 x i8> %.fr, <i8 56, i8 4, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bn = icmp ne <8 x i8> %.fr168, zeroinitializer
  %i.bo = or <8 x i1> %i.bm, %i.bn
  %i.bp = bitcast <8 x i1> %i.bo to i8
  %i.bq = icmp eq i8 %i.bp, 0
  %op.rdx161 = and i1 %i.bq, %i.ay
  %i.br = and i1 %op.rdx161, %i.az
  %op.rdx165 = select i1 %i.br, i1 %i.ba, i1 false
  %i.bs = or i8 %.fr169, %.fr171
  %i.bt = icmp eq i8 %i.bs, 0
  %i.bu = and i1 %i.bb, %i.bt
  %i.bv = freeze i1 %op.rdx165
  %i.bw = and i1 %i.bv, %i.bu
  %op.rdx167 = select i1 %i.bw, i1 %or.cond914.i, i1 false
  br i1 %op.rdx167, label %bb.as, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.o:                                             ; preds = %bb.k
  switch i8 %.sroa.15.0.copyload.i.fr, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 -122, label %bb.p
    i8 -50, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp eq i8 %.sroa.20.0.copyload.i, -9
  %i.by = icmp eq i8 %.sroa.26.0.copyload.i, 13
  %or.cond8.i = select i1 %i.bx, i1 %i.by, i1 false
  %i.bz = icmp eq i8 %.sroa.35.0.copyload.i, 2
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.bz, i1 false
  br i1 %or.cond11.i, label %bb.r, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.ca = icmp eq i8 %.sroa.20.0.copyload.i, 61
  %i.cb = icmp eq i8 %.sroa.26.0.copyload.i, 4
  %or.cond110.i = select i1 %i.ca, i1 %i.cb, i1 false
  %i.cc = icmp eq i8 %.sroa.35.0.copyload.i, 3
  %or.cond113.i = select i1 %or.cond110.i, i1 %i.cc, i1 false
  br i1 %or.cond113.i, label %bb.y, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.r:                                             ; preds = %bb.p
  switch i8 %.sroa.43.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 2, label %bb.s
    i8 5, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.cd = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ce = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.cf = or <8 x i8> %i.cd, %i.ce
  %.fr262 = freeze <8 x i8> %i.cf
  %i.cg = or i8 %.sroa.501.0.copyload.i, %.sroa.478.0.copyload.i
  %.fr265 = freeze i8 %i.cg
  %i.ch = or i8 %.sroa.555.0.copyload.i, %.sroa.532.0.copyload.i
  %.fr263 = freeze i8 %i.ch
  %i.ci = or i8 %.sroa.609.0.copyload.i, %.sroa.586.0.copyload.i
  %.fr267 = freeze i8 %i.ci
  %i.cj = or i8 %.sroa.663.0.copyload.i, %.sroa.640.0.copyload.i
  %.fr264 = freeze i8 %i.cj
  %i.ck = or i8 %.sroa.717.0.copyload.i, %.sroa.694.0.copyload.i
  %.fr266 = freeze i8 %i.ck
  %i.cl = or i8 %.sroa.771.0.copyload.i, %.sroa.748.0.copyload.i
  %or.cond53.i = icmp eq i8 %i.cl, 0
  %.fr262.scalar = bitcast <8 x i8> %.fr262 to i64
  %i.cm = icmp eq i64 %.fr262.scalar, 0
  %i.cn = or i8 %.fr264, %.fr266
  %i.co = or i8 %.fr263, %.fr265
  %i.cp = or i8 %.fr267, %i.co
  %i.cq = or i8 %i.cn, %i.cp
  %i.cr = icmp eq i8 %i.cq, 0
  %i.cs = and i1 %i.cm, %i.cr
  %op.rdx71 = select i1 %i.cs, i1 %or.cond53.i, i1 false
  br i1 %op.rdx71, label %bb.u, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.ct = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cu = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.cv = or <8 x i8> %i.ct, %i.cu
  %.fr256 = freeze <8 x i8> %i.cv
  %i.cw = or i8 %.sroa.501.0.copyload.i, %.sroa.478.0.copyload.i
  %.fr259 = freeze i8 %i.cw
  %i.cx = or i8 %.sroa.555.0.copyload.i, %.sroa.532.0.copyload.i
  %.fr257 = freeze i8 %i.cx
  %i.cy = or i8 %.sroa.609.0.copyload.i, %.sroa.586.0.copyload.i
  %.fr261 = freeze i8 %i.cy
  %i.cz = or i8 %.sroa.663.0.copyload.i, %.sroa.640.0.copyload.i
  %.fr258 = freeze i8 %i.cz
  %i.da = or i8 %.sroa.717.0.copyload.i, %.sroa.694.0.copyload.i
  %.fr260 = freeze i8 %i.da
  %i.db = or i8 %.sroa.771.0.copyload.i, %.sroa.748.0.copyload.i
  %or.cond101.i = icmp eq i8 %i.db, 0
  %.fr256.scalar = bitcast <8 x i8> %.fr256 to i64
  %i.dc = icmp eq i64 %.fr256.scalar, 0
  %i.dd = or i8 %.fr258, %.fr260
  %i.de = or i8 %.fr257, %.fr259
  %i.df = or i8 %.fr261, %i.de
  %i.dg = or i8 %i.dd, %i.df
  %i.dh = icmp eq i8 %i.dg, 0
  %i.di = and i1 %i.dc, %i.dh
  %op.rdx77 = select i1 %i.di, i1 %or.cond101.i, i1 false
  br i1 %op.rdx77, label %bb.w, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.dj = or i8 %.sroa.825.0.copyload.i, %.sroa.802.0.copyload.i
  %or.cond56.i = icmp eq i8 %i.dj, 0
  %i.dk = icmp eq i8 %.sroa.856.0.copyload.i, 0
  %or.cond59.i = select i1 %or.cond56.i, i1 %i.dk, i1 false
  br i1 %or.cond59.i, label %bb.v, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.v:                                             ; preds = %bb.am, %bb.u
  %i.dl = invoke fastcc noundef zeroext i1 @_RINvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB5_9PublicKey11verify_implINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperNtCs4v5UyOHceoj_3md27Md2CoreEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.36.0)
          to label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit unwind label %bb.bc

bb.w:                                             ; preds = %bb.t
  %i.dm = or i8 %.sroa.825.0.copyload.i, %.sroa.802.0.copyload.i
  %or.cond104.i = icmp eq i8 %i.dm, 0
  %i.dn = icmp eq i8 %.sroa.856.0.copyload.i, 0
  %or.cond107.i = select i1 %or.cond104.i, i1 %i.dn, i1 false
  br i1 %or.cond107.i, label %bb.x, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.x:                                             ; preds = %bb.an, %bb.w
  %i.do = invoke fastcc noundef zeroext i1 @_RINvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB5_9PublicKey11verify_implINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.36.0)
          to label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit unwind label %bb.bc

bb.y:                                             ; preds = %bb.q
  switch i8 %.sroa.43.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticodeNtB5_16CertificateChain6verify:bb.a
  %i.go = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr236 = freeze i8 %i.go
  %i.gp = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr234 = freeze i8 %i.gp
  %i.gq = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond317.i = icmp eq i8 %i.gq, 0
  %.fr231.scalar = bitcast <8 x i8> %.fr231 to i64
  %i.gr = icmp eq i64 %.fr231.scalar, 0
  %i.gs = or i8 %.fr233, %.fr236
  %i.gt = or i8 %.fr232, %.fr235
  %i.gu = or i8 %.fr237, %i.gt
  %i.gv = or i8 %i.gs, %.fr234
  %i.gw = or i8 %i.gv, %i.gu
  %i.gx = icmp eq i8 %i.gw, 0
  %i.gy = and i1 %i.gr, %i.gx
  %op.rdx102 = select i1 %i.gy, i1 %or.cond317.i, i1 false
  br i1 %op.rdx102, label %bb.v, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.an:                                            ; preds = %bb.al
  %i.gz = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ha = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.hb = or <8 x i8> %i.gz, %i.ha
  %.fr224 = freeze <8 x i8> %i.hb
  %i.hc = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %.fr228 = freeze i8 %i.hc
  %i.hd = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %.fr225 = freeze i8 %i.hd
  %i.he = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %.fr230 = freeze i8 %i.he
  %i.hf = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %.fr226 = freeze i8 %i.hf
  %i.hg = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr229 = freeze i8 %i.hg
  %i.hh = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr227 = freeze i8 %i.hh
  %i.hi = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond362.i = icmp eq i8 %i.hi, 0
  %.fr224.scalar = bitcast <8 x i8> %.fr224 to i64
  %i.hj = icmp eq i64 %.fr224.scalar, 0
  %i.hk = or i8 %.fr226, %.fr229
  %i.hl = or i8 %.fr225, %.fr228
  %i.hm = or i8 %.fr230, %i.hl
  %i.hn = or i8 %i.hk, %.fr227
  %i.ho = or i8 %i.hn, %i.hm
  %i.hp = icmp eq i8 %i.ho, 0
  %i.hq = and i1 %i.hj, %i.hp
  %op.rdx109 = select i1 %i.hq, i1 %or.cond362.i, i1 false
  br i1 %op.rdx109, label %bb.x, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ao:                                            ; preds = %bb.al
  %i.hr = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hs = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ht = or <8 x i8> %i.hr, %i.hs
  %.fr217 = freeze <8 x i8> %i.ht
  %i.hu = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %.fr221 = freeze i8 %i.hu
  %i.hv = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %.fr218 = freeze i8 %i.hv
  %i.hw = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %.fr223 = freeze i8 %i.hw
  %i.hx = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %.fr219 = freeze i8 %i.hx
  %i.hy = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr222 = freeze i8 %i.hy
  %i.hz = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr220 = freeze i8 %i.hz
  %i.ia = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond407.i = icmp eq i8 %i.ia, 0
  %.fr217.scalar = bitcast <8 x i8> %.fr217 to i64
  %i.ib = icmp eq i64 %.fr217.scalar, 0
  %i.ic = or i8 %.fr219, %.fr222
  %i.id = or i8 %.fr218, %.fr221
  %i.ie = or i8 %.fr223, %i.id
  %i.if = or i8 %i.ic, %.fr220
  %i.ig = or i8 %i.if, %i.ie
  %i.ih = icmp eq i8 %i.ig, 0
  %i.ii = and i1 %i.ib, %i.ih
  %op.rdx116 = select i1 %i.ii, i1 %or.cond407.i, i1 false
  br i1 %op.rdx116, label %bb.as, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ap:                                            ; preds = %bb.al
  %i.ij = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ik = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.il = or <8 x i8> %i.ij, %i.ik
  %.fr210 = freeze <8 x i8> %i.il
  %i.im = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %.fr214 = freeze i8 %i.im
  %i.in = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %.fr211 = freeze i8 %i.in
  %i.io = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %.fr216 = freeze i8 %i.io
  %i.ip = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %.fr212 = freeze i8 %i.ip
  %i.iq = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr215 = freeze i8 %i.iq
  %i.ir = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr213 = freeze i8 %i.ir
  %i.is = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond452.i = icmp eq i8 %i.is, 0
  %.fr210.scalar = bitcast <8 x i8> %.fr210 to i64
  %i.it = icmp eq i64 %.fr210.scalar, 0
  %i.iu = or i8 %.fr212, %.fr215
  %i.iv = or i8 %.fr211, %.fr214
  %i.iw = or i8 %.fr216, %i.iv
  %i.ix = or i8 %i.iu, %.fr213
  %i.iy = or i8 %i.ix, %i.iw
  %i.iz = icmp eq i8 %i.iy, 0
  %i.ja = and i1 %i.it, %i.iz
  %op.rdx123 = select i1 %i.ja, i1 %or.cond452.i, i1 false
  br i1 %op.rdx123, label %bb.ad, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.aq:                                            ; preds = %bb.al
  %i.jb = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.jc = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jd = or <8 x i8> %i.jb, %i.jc
  %.fr203 = freeze <8 x i8> %i.jd
  %i.je = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %.fr207 = freeze i8 %i.je
  %i.jf = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %.fr204 = freeze i8 %i.jf
  %i.jg = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %.fr209 = freeze i8 %i.jg
  %i.jh = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %.fr205 = freeze i8 %i.jh
  %i.ji = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr208 = freeze i8 %i.ji
  %i.jj = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr206 = freeze i8 %i.jj
  %i.jk = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond497.i = icmp eq i8 %i.jk, 0
  %.fr203.scalar = bitcast <8 x i8> %.fr203 to i64
  %i.jl = icmp eq i64 %.fr203.scalar, 0
  %i.jm = or i8 %.fr205, %.fr208
  %i.jn = or i8 %.fr204, %.fr207
  %i.jo = or i8 %.fr209, %i.jn
  %i.jp = or i8 %i.jm, %.fr206
  %i.jq = or i8 %i.jp, %i.jo
  %i.jr = icmp eq i8 %i.jq, 0
  %i.js = and i1 %i.jl, %i.jr
  %op.rdx130 = select i1 %i.js, i1 %or.cond497.i, i1 false
  br i1 %op.rdx130, label %bb.af, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ar:                                            ; preds = %bb.al
  %i.jt = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ju = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jv = or <8 x i8> %i.jt, %i.ju
  %.fr196 = freeze <8 x i8> %i.jv
  %i.jw = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %.fr200 = freeze i8 %i.jw
  %i.jx = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %.fr197 = freeze i8 %i.jx
  %i.jy = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %.fr202 = freeze i8 %i.jy
  %i.jz = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %.fr198 = freeze i8 %i.jz
  %i.ka = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr201 = freeze i8 %i.ka
  %i.kb = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr199 = freeze i8 %i.kb
  %i.kc = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond542.i = icmp eq i8 %i.kc, 0
  %.fr196.scalar = bitcast <8 x i8> %.fr196 to i64
  %i.kd = icmp eq i64 %.fr196.scalar, 0
  %i.ke = or i8 %.fr198, %.fr201
  %i.kf = or i8 %.fr197, %.fr200
  %i.kg = or i8 %.fr202, %i.kf
  %i.kh = or i8 %i.ke, %.fr199
  %i.ki = or i8 %i.kh, %i.kg
  %i.kj = icmp eq i8 %i.ki, 0
  %i.kk = and i1 %i.kd, %i.kj
  %op.rdx137 = select i1 %i.kk, i1 %or.cond542.i, i1 false
  br i1 %op.rdx137, label %bb.ah, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.as:                                            ; preds = %bb.bb, %bb.ba, %bb.ao, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8713
  invoke fastcc void @_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCs7IHcDLph6Xc_4sha18Sha1CoreENtB3_6Digest6digestRShECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 1 captures(address) dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #44
          to label %.noexc24 unwind label %bb.bc

.noexc24:                                         ; preds = %bb.as
  %i.kl = invoke fastcc noundef zeroext i1 @_RINvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB5_9PublicKey13verify_digestINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperNtCs7IHcDLph6Xc_4sha18Sha1CoreEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.e, ptr noalias nofree noundef align 1 captures(address) dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.36.0)
          to label %.noexc25 unwind label %bb.bc

.noexc25:                                         ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8713
  br i1 %i.kl, label %bb.bd, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.at:                                            ; preds = %bb.aj
  switch i8 %.sroa.43.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 2, label %bb.au
    i8 3, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  switch i8 %.sroa.53.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 1, label %bb.aw
    i8 2, label %bb.ax
    i8 3, label %bb.ay
  ]

bb.av:                                            ; preds = %bb.at
  %i.km = shufflevector <16 x i8> %i.al, <16 x i8> %1, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.kn = shufflevector <16 x i8> %i.al, <16 x i8> %1, <16 x i32> <i32 poison, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29>
  %i.ko = insertelement <16 x i8> %i.kn, i8 0, i64 0
  %i.kp = or <16 x i8> %i.km, %i.ko
  %.fr174 = freeze <16 x i8> %i.kp
  %i.kq = icmp ne <16 x i8> %.fr174, <i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.kr = bitcast <16 x i1> %i.kq to i16
  %i.ks = icmp eq i16 %i.kr, 0
  br i1 %i.ks, label %bb.ad, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.aw:                                            ; preds = %bb.au
  %i.kt = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ku = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kv = or <8 x i8> %i.kt, %i.ku
  %.fr189 = freeze <8 x i8> %i.kv
  %i.kw = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %.fr193 = freeze i8 %i.kw
  %i.kx = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %.fr190 = freeze i8 %i.kx
  %i.ky = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %.fr195 = freeze i8 %i.ky
  %i.kz = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %.fr191 = freeze i8 %i.kz
  %i.la = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr194 = freeze i8 %i.la
  %i.lb = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr192 = freeze i8 %i.lb
  %i.lc = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond602.i = icmp eq i8 %i.lc, 0
  %.fr189.scalar = bitcast <8 x i8> %.fr189 to i64
  %i.ld = icmp eq i64 %.fr189.scalar, 0
  %i.le = or i8 %.fr191, %.fr194
  %i.lf = or i8 %.fr190, %.fr193
  %i.lg = or i8 %.fr195, %i.lf
  %i.lh = or i8 %i.le, %.fr192
  %i.li = or i8 %i.lh, %i.lg
  %i.lj = icmp eq i8 %i.li, 0
  %i.lk = and i1 %i.ld, %i.lj
  %op.rdx144 = select i1 %i.lk, i1 %or.cond602.i, i1 false
  br i1 %op.rdx144, label %bb.ad, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ax:                                            ; preds = %bb.au
  %i.ll = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lm = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ln = or <8 x i8> %i.ll, %i.lm
  %.fr182 = freeze <8 x i8> %i.ln
  %i.lo = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %.fr186 = freeze i8 %i.lo
  %i.lp = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %.fr183 = freeze i8 %i.lp
  %i.lq = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %.fr188 = freeze i8 %i.lq
  %i.lr = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %.fr184 = freeze i8 %i.lr
  %i.ls = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr187 = freeze i8 %i.ls
  %i.lt = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr185 = freeze i8 %i.lt
  %i.lu = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond647.i = icmp eq i8 %i.lu, 0
  %.fr182.scalar = bitcast <8 x i8> %.fr182 to i64
  %i.lv = icmp eq i64 %.fr182.scalar, 0
  %i.lw = or i8 %.fr184, %.fr187
  %i.lx = or i8 %.fr183, %.fr186
  %i.ly = or i8 %.fr188, %i.lx
  %i.lz = or i8 %i.lw, %.fr185
  %i.ma = or i8 %i.lz, %i.ly
  %i.mb = icmp eq i8 %i.ma, 0
  %i.mc = and i1 %i.lv, %i.mb
  %op.rdx151 = select i1 %i.mc, i1 %or.cond647.i, i1 false
  br i1 %op.rdx151, label %bb.af, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.ay:                                            ; preds = %bb.au
  %i.md = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.me = shufflevector <16 x i8> %i.am, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mf = or <8 x i8> %i.md, %i.me
  %.fr175 = freeze <8 x i8> %i.mf
  %i.mg = or i8 %.sroa.532.0.copyload.i, %.sroa.501.0.copyload.i
  %.fr179 = freeze i8 %i.mg
  %i.mh = or i8 %.sroa.586.0.copyload.i, %.sroa.555.0.copyload.i
  %.fr176 = freeze i8 %i.mh
  %i.mi = or i8 %.sroa.640.0.copyload.i, %.sroa.609.0.copyload.i
  %.fr181 = freeze i8 %i.mi
  %i.mj = or i8 %.sroa.694.0.copyload.i, %.sroa.663.0.copyload.i
  %.fr177 = freeze i8 %i.mj
  %i.mk = or i8 %.sroa.748.0.copyload.i, %.sroa.717.0.copyload.i
  %.fr180 = freeze i8 %i.mk
  %i.ml = or i8 %.sroa.802.0.copyload.i, %.sroa.771.0.copyload.i
  %.fr178 = freeze i8 %i.ml
  %i.mm = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond692.i = icmp eq i8 %i.mm, 0
  %.fr175.scalar = bitcast <8 x i8> %.fr175 to i64
  %i.mn = icmp eq i64 %.fr175.scalar, 0
  %i.mo = or i8 %.fr177, %.fr180
  %i.mp = or i8 %.fr176, %.fr179
  %i.mq = or i8 %.fr181, %i.mp
  %i.mr = or i8 %i.mo, %.fr178
  %i.ms = or i8 %i.mr, %i.mq
  %i.mt = icmp eq i8 %i.ms, 0
  %i.mu = and i1 %i.mn, %i.mt
  %op.rdx158 = select i1 %i.mu, i1 %or.cond692.i, i1 false
  br i1 %op.rdx158, label %bb.ah, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.az:                                            ; preds = %bb.m
  switch i8 %.sroa.20.0.copyload.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread [
    i8 26, label %bb.ba
    i8 29, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.mv = shufflevector <32 x i8> %i.an, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.mw = shufflevector <32 x i8> %i.an, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.mx = or <16 x i8> %i.mv, %i.mw
  %.fr173 = freeze <16 x i8> %i.mx
  %i.my = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond797.i = icmp eq i8 %i.my, 0
  %i.mz = icmp ne <16 x i8> %.fr173, zeroinitializer
  %i.na = bitcast <16 x i1> %i.mz to i16
  %i.nb = icmp eq i16 %i.na, 0
  %op.rdx159 = select i1 %i.nb, i1 %or.cond797.i, i1 false
  br i1 %op.rdx159, label %bb.as, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.bb:                                            ; preds = %bb.az
  %i.nc = shufflevector <32 x i8> %i.an, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.nd = shufflevector <32 x i8> %i.an, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ne = or <16 x i8> %i.nc, %i.nd
  %.fr172 = freeze <16 x i8> %i.ne
  %i.nf = or i8 %.sroa.856.0.copyload.i, %.sroa.825.0.copyload.i
  %or.cond848.i = icmp eq i8 %i.nf, 0
  %i.ng = icmp ne <16 x i8> %.fr172, zeroinitializer
  %i.nh = bitcast <16 x i1> %i.ng to i16
  %i.ni = icmp eq i16 %i.nh, 0
  %op.rdx160 = select i1 %i.ni, i1 %or.cond848.i, i1 false
  br i1 %op.rdx160, label %bb.as, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

bb.bc:                                            ; preds = %.noexc32, %bb.ad, %.noexc24, %bb.as, %bb.ah, %bb.af, %bb.x, %bb.v, %bb.h
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e) #38
          to label %bb.c unwind label %bb.bg

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit: ; preds = %bb.v, %bb.x, %bb.af, %bb.ah
  %.sroa.0.0.shrunk.i = phi i1 [ %i.fq, %bb.af ], [ %i.do, %bb.x ], [ %i.ft, %bb.ah ], [ %i.dl, %bb.v ]
  br i1 %.sroa.0.0.shrunk.i, label %bb.bd, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread: ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.q, %bb.r, %bb.s, %bb.t, %bb.j, %bb.ae, %bb.k, %bb.u, %bb.l, %bb.w, %bb.ac, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.az, %bb.ba, %bb.bb, %bb.m, %bb.n, %bb.o, %bb.p, %bb.ag, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.at, %.noexc21, %.noexc25, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit, %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e)
          to label %bb.be unwind label %.loopexit.split-lp

bb.bd:                                            ; preds = %.noexc21, %.noexc25, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.e)
          to label %bb.bf unwind label %.loopexit

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyNtBZ_14PublicKeyErrorEEB15_.exit31, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB4_9PublicKey6verify.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val10 = load i64, ptr %i.nk, align 8, !alias.scope !8710, !noundef !8 ; 3 uses
  %i.nl = icmp eq i64 %.val10, 0
  br i1 %i.nl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i26: ; preds = %bb.be
  %i.nm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val = load ptr, ptr %i.nm, align 8, !alias.scope !8710, !nonnull !8, !noundef !8
  %i.nn = shl i64 %.val10, 4                      ; 2 uses
  %i.no = add i64 %i.nn, 16                       ; 2 uses
  %i.np = add i64 %.val10, 17
  %i.nq = add i64 %i.np, %i.no                    ; 4 uses
  %i.nr = icmp uge i64 %i.nq, %i.no
  %i.ns = icmp ult i64 %i.nq, 9223372036854775793
  call void @llvm.assume(i1 %i.nr)
  call void @llvm.assume(i1 %i.ns)
  %i.nt = icmp eq i64 %i.nq, 0
  br i1 %i.nt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs2CmfWUMKNor_9itertools10tuple_impl12TupleWindowsNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils12authenticode16CertificateChainTRNtNtB1y_4asn111CertificateB2I_EEEB1C_.exit27.sink.split

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.bg:                                            ; preds = %bb.bc
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.bh:                                            ; preds = %bb.g
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto14PublicKeyErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.nv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyNtBZ_14PublicKeyErrorEEB15_.exit31 unwind label %.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto9PublicKeyNtBZ_14PublicKeyErrorEEB15_.exit31: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.be
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs7gfv9tzbXmh_6yara_x7scannerNtB5_7Scanner9load_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10626)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !10627, !noalias !10628, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.s, i64 %.pre-phi.i, i1 false), !noalias !10629
  %i.t = xor i64 %i.d, -1
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = xor i64 %.sroa.5.0.i, -1
  %i.w = getelementptr [16 x i8], ptr %.sroa.0.0.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = shl i64 %.sroa.5.0.i, 4
  %i.y = add i64 %i.x, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !noalias !10629
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !10627, !noalias !10628
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10640)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !10640, !noalias !10641, !noundef !8 ; 5 uses
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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !10642
  %i.n = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #42, !noalias !10642 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !10642
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !10642
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10643)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !10644, !noalias !10645, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.s, i64 %.pre-phi.i, i1 false), !noalias !10646
  %i.t = xor i64 %i.d, -1
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = xor i64 %.sroa.5.0.i, -1
  %i.w = getelementptr [16 x i8], ptr %.sroa.0.0.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = shl i64 %.sroa.5.0.i, 4
  %i.y = add i64 %i.x, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !noalias !10646
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !10644, !noalias !10645
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
  %i.c = alloca [128 x i8], align 8               ; 10 uses
  %.sroa.91616 = alloca [16 x i8], align 8        ; 2 uses
  %i.d = alloca [128 x i8], align 8               ; 13 uses
  %.sroa.91554 = alloca [16 x i8], align 8        ; 2 uses
  %i.e = alloca [128 x i8], align 8               ; 13 uses
  %.sroa.91492 = alloca [16 x i8], align 8        ; 2 uses
  %i.f = alloca [128 x i8], align 8               ; 10 uses
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
  %i.u = alloca [112 x i8], align 8               ; 13 uses
  %i.v = alloca [112 x i8], align 8               ; 12 uses
  %i.w = alloca [112 x i8], align 8               ; 12 uses
  %i.x = alloca [112 x i8], align 8               ; 13 uses
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
  br label %bb.cl

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
  %.sroa.91311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 7 ; 2 uses
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
  %.sroa.251327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 23 ; 3 uses
  %.sroa.261328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
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
  %2 = load <16 x i8>, ptr %.sroa.101312.0..sroa_idx, align 4 ; 2 uses
  %3 = load <16 x i8>, ptr %.sroa.261328.0..sroa_idx, align 4 ; 2 uses
  %4 = load <16 x i8>, ptr %.sroa.91311.0..sroa_idx, align 1 ; 4 uses
  %5 = load <16 x i8>, ptr %.sroa.251327.0..sroa_idx, align 1 ; 2 uses
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
  %6 = load <16 x i8>, ptr %.sroa.251327.0..sroa_idx, align 1 ; 2 uses
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
  br label %bb.cl

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
  %i.aq = shufflevector <16 x i8> %2, <16 x i8> %3, <16 x i32> <i32 0, i32 1, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28>
  %i.ar = shufflevector <16 x i8> %2, <16 x i8> %3, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27>
  %i.as = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ar, <16 x i32> <i32 0, i32 1, i32 2, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.at = or <16 x i8> %i.aq, %i.as
  %.fr2460 = freeze <16 x i8> %i.at
  %i.au = or i8 %.sroa.401342.0.copyload, %.sroa.391341.0.copyload
  %.fr2461 = freeze i8 %i.au
  %or.cond83 = icmp eq i8 %.fr2461, 0
  %i.av = or i8 %.sroa.421344.0.copyload, %.sroa.411343.0.copyload
  %or.cond87 = icmp eq i8 %i.av, 0
  %i.aw = icmp ne <16 x i8> %.fr2460, <i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = icmp eq i16 %i.ax, 0
  %op.rdx = and i1 %i.ay, %or.cond83
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
  br label %bb.cl

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5669, ptr noundef nonnull align 8 dereferenceable(80) %i.bb, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5669, i64 80, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5669)
  br label %bb.cl

bb.k:                                             ; preds = %bb.f
  switch i8 %.sroa.81310.0.copyload, label %bb.d [
    i8 56, label %bb.l
    i8 61, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bd = shufflevector <16 x i8> %4, <16 x i8> %5, <16 x i32> <i32 0, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29>
  %i.be = shufflevector <16 x i8> %4, <16 x i8> %5, <16 x i32> <i32 poison, i32 poison, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28>
  %i.bf = shufflevector <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.be, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bg = or <16 x i8> %i.bd, %i.bf
  %.fr2458 = freeze <16 x i8> %i.bg
  %i.bh = or i8 %.sroa.401342.0.copyload, %.sroa.391341.0.copyload
  %.fr2459 = freeze i8 %i.bh
  %or.cond163 = icmp eq i8 %.fr2459, 0
  %i.bi = or i8 %.sroa.421344.0.copyload, %.sroa.411343.0.copyload
  %or.cond167 = icmp eq i8 %i.bi, 0
  %i.bj = icmp ne <16 x i8> %.fr2458, <i8 4, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = icmp eq i16 %i.bk, 0
  %op.rdx2430 = and i1 %i.bl, %or.cond163
  %op.rdx2431 = select i1 %op.rdx2430, i1 %or.cond167, i1 false
  br i1 %op.rdx2431, label %bb.n, label %bb.d

bb.m:                                             ; preds = %bb.k
  %i.bm = shufflevector <16 x i8> %4, <16 x i8> %6, <16 x i32> <i32 0, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29>
  %i.bn = shufflevector <16 x i8> %4, <16 x i8> %6, <16 x i32> <i32 poison, i32 poison, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28>
  %i.bo = shufflevector <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bp = or <16 x i8> %i.bm, %i.bo
  %.fr = freeze <16 x i8> %i.bp
  %i.bq = or i8 %.sroa.401342.0.copyload, %.sroa.391341.0.copyload
  %.fr2446 = freeze i8 %i.bq
  %or.cond231 = icmp eq i8 %.fr2446, 0
  %i.br = or i8 %.sroa.421344.0.copyload, %.sroa.411343.0.copyload
  %or.cond235 = icmp eq i8 %i.br, 0
  %i.bs = icmp ne <16 x i8> %.fr, <i8 2, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %i.bu = icmp eq i16 %i.bt, 0
  %op.rdx2444 = and i1 %i.bu, %or.cond231
  %op.rdx2445 = select i1 %op.rdx2444, i1 %or.cond235, i1 false
  br i1 %op.rdx2445, label %bb.bp, label %bb.d

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
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !9, !noundef !8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.01479.0.copyload = load i64, ptr %i.bz, align 8 ; 2 uses
  %.sroa.41480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.41480.0.copyload = load i64, ptr %.sroa.41480.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.by, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.sroa.41464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.41464.0.copyload = load ptr, ptr %.sroa.41464.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.ca, align 8
  %.sroa.41473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41464.0.copyload, ptr %.sroa.41473.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cl

bb.q:                                             ; preds = %bb.o
  %i.cb = icmp eq i64 %.sroa.01479.0.copyload, 0
  br i1 %i.cb, label %bb.bo, label %.sink.split2385

bb.r:                                             ; preds = %bb.o
  %.sroa.51477.sroa.4.sroa.4.0..sroa.51477.sroa.4.0..sroa.51477.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.51477.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.51477.sroa.4.sroa.4.0..sroa.51477.sroa.4.0..sroa.51477.0..sroa_idx.sroa_idx.sroa_idx, align 8
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
  store i64 %i.bx, ptr %i.x, align 8
  %.sroa.22152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.01479.0.copyload, ptr %.sroa.22152.0..sroa_idx, align 8
  %.sroa.32153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.41480.0.copyload, ptr %.sroa.32153.0..sroa_idx, align 8
  %.sroa.42154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.sroa.51477.sroa.4.sroa.4.0.copyload, ptr %.sroa.42154.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !8, !noundef !8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !8
  invoke void @_RINvNtNtCslJIpglpJv42_10der_parser3ber6parser18parse_ber_with_tagNtNtCs92Y28wVgKBa_7asn1_rs3tag3TagECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.cf, i32 noundef 2)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.x, %bb.t
  %.pn2203 = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %.pn2201, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.x) #38
          to label %bb.bn unwind label %bb.ba

bb.t:                                             ; preds = %bb.bi, %bb.ax, %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !9, !noundef !8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 2
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.01541.0.copyload = load i64, ptr %i.ck, align 8
  %.sroa.41542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.41542.0.copyload = load i64, ptr %.sroa.41542.0..sroa_idx, align 8 ; 2 uses
  %i.cl = icmp eq i64 %.sroa.01541.0.copyload, 0
  br i1 %i.cl, label %bb.bm, label %.sink.split2384

bb.w:                                             ; preds = %bb.u
  %.sroa.01537.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %.sroa.01537.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.01537.sroa.4.0.copyload = load i64, ptr %.sroa.01537.sroa.4.0..sroa_idx, align 8
  %.sroa.51539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.51539.sroa.4.sroa.4.0..sroa.51539.sroa.4.0..sroa.51539.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.51539.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.51539.sroa.4.sroa.4.0..sroa.51539.sroa.4.0..sroa.51539.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.51539.sroa.4.sroa.5.0..sroa.51539.sroa.4.0..sroa.51539.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.51539.sroa.5.0..sroa.51539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.62163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62163.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.51539.sroa.5.0..sroa.51539.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.61540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.72164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72164.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61540.0..sroa_idx, i64 40, i1 false)
  %.sroa.52162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52162.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51539.sroa.4.sroa.5.0..sroa.51539.sroa.4.0..sroa.51539.0..sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false)
  store i64 %i.ci, ptr %i.w, align 8
  %.sroa.22159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cm = load <2 x i64>, ptr %.sroa.51539.0..sroa_idx, align 8
  store <2 x i64> %i.cm, ptr %.sroa.22159.0..sroa_idx, align 8
  %.sroa.42161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.51539.sroa.4.sroa.4.0.copyload, ptr %.sroa.42161.0..sroa_idx, align 8
  invoke void @_RINvNtNtCslJIpglpJv42_10der_parser3ber6parser18parse_ber_with_tagNtNtCs92Y28wVgKBa_7asn1_rs3tag3TagECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01537.sroa.0.0.copyload, i64 noundef %.sroa.01537.sroa.4.0.copyload, i32 noundef 2)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.ac, %bb.y
  %.pn2201 = phi { ptr, i32 } [ %i.cn, %bb.y ], [ %.pn2199, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.w) #38
          to label %bb.s unwind label %bb.ba

bb.y:                                             ; preds = %bb.bf, %bb.aw, %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !9, !noundef !8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 2
  br i1 %i.cq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.01603.0.copyload = load i64, ptr %i.cr, align 8
  %.sroa.41604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.41604.0.copyload = load i64, ptr %.sroa.41604.0..sroa_idx, align 8 ; 2 uses
  %i.cs = icmp eq i64 %.sroa.01603.0.copyload, 0
  br i1 %i.cs, label %bb.bj, label %.sink.split2383

bb.ab:                                            ; preds = %bb.z
  %.sroa.01599.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %.sroa.01599.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.01599.sroa.4.0.copyload = load i64, ptr %.sroa.01599.sroa.4.0..sroa_idx, align 8
  %.sroa.51601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.51601.sroa.4.sroa.4.0..sroa.51601.sroa.4.0..sroa.51601.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.51601.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.51601.sroa.4.sroa.4.0..sroa.51601.sroa.4.0..sroa.51601.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.51601.sroa.4.sroa.5.0..sroa.51601.sroa.4.0..sroa.51601.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.51601.sroa.5.0..sroa.51601.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.62170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62170.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.51601.sroa.5.0..sroa.51601.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.61602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.72171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.72171.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61602.0..sroa_idx, i64 40, i1 false)
  %.sroa.52169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52169.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51601.sroa.4.sroa.5.0..sroa.51601.sroa.4.0..sroa.51601.0..sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false)
  store i64 %i.cp, ptr %i.v, align 8
  %.sroa.22166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ct = load <2 x i64>, ptr %.sroa.51601.0..sroa_idx, align 8
  store <2 x i64> %i.ct, ptr %.sroa.22166.0..sroa_idx, align 8
  %.sroa.42168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %.sroa.51601.sroa.4.sroa.4.0.copyload, ptr %.sroa.42168.0..sroa_idx, align 8
  invoke void @_RINvNtNtCslJIpglpJv42_10der_parser3ber6parser18parse_ber_with_tagNtNtCs92Y28wVgKBa_7asn1_rs3tag3TagECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01599.sroa.0.0.copyload, i64 noundef %.sroa.01599.sroa.4.0.copyload, i32 noundef 2)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2319, %bb.ad
  %.pn2199 = phi { ptr, i32 } [ %i.cu, %bb.ad ], [ %.pn2197, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2319 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.v) #38
          to label %bb.x unwind label %bb.ba

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2316, %bb.av, %bb.ab
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !9, !noundef !8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.01665.0.copyload = load i64, ptr %i.cy, align 8 ; 2 uses
  %.sroa.41666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.41666.0.copyload = load i64, ptr %.sroa.41666.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.cx, label %bb.af, label %bb.ag
end_hunk_2
begin_hunk_3_@_RNvXNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6cryptoNtB2_9PublicKeyINtNtCskKLDkoKarTP_4core7convert7TryFromRNtNtCs9ej6TH0mm9O_11x509_parser4x50920SubjectPublicKeyInfoE8try_from:bb.a
bb.bc:                                            ; preds = %bb.al, %bb.bb
  %.pn2193.ph = phi { ptr, i32 } [ %i.dq, %bb.al ], [ %i.ep, %bb.bb ]
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAyj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %bb.bd unwind label %bb.ba

bb.bd:                                            ; preds = %bb.aj, %bb.bc
  %.pn2195.ph = phi { ptr, i32 } [ %i.dk, %bb.aj ], [ %.pn2193.ph, %bb.bc ]
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAyj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2319 unwind label %bb.ba

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc60h2pSZ2rW_14num_bigint_dig7biguint7BigUintECs7gfv9tzbXmh_6yara_x.exit2316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.v)
          to label %bb.bh unwind label %bb.y

.sink.split:                                      ; preds = %bb.af
  %.sroa.71668.sroa.5.0..sroa.71668.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.71668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.71668.sroa.0.0.copyload = load i64, ptr %.sroa.71668.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91678, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71668.sroa.5.0..sroa.71668.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.af, %.sink.split
  %.sroa.01675.0 = phi i64 [ -9223372036854775789, %bb.af ], [ %.sroa.41666.0.copyload, %.sink.split ]
  %.sroa.61676.0 = phi i64 [ %.sroa.41666.0.copyload, %bb.af ], [ %.sroa.71668.sroa.0.0.copyload, %.sink.split ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.eq, align 8
  %.sroa.41719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.01675.0, ptr %.sroa.41719.0..sroa_idx, align 8
  %.sroa.51720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.61676.0, ptr %.sroa.51720.0..sroa_idx, align 8
  %.sroa.61721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61721.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91678, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.w)
          to label %bb.bk unwind label %bb.t

.sink.split2383:                                  ; preds = %bb.aa
  %.sroa.71606.sroa.5.0..sroa.71606.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.71606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.71606.sroa.0.0.copyload = load i64, ptr %.sroa.71606.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91616, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71606.sroa.5.0..sroa.71606.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.aa, %.sink.split2383
  %.sroa.01613.0 = phi i64 [ -9223372036854775789, %bb.aa ], [ %.sroa.41604.0.copyload, %.sink.split2383 ]
  %.sroa.61614.0 = phi i64 [ %.sroa.41604.0.copyload, %bb.aa ], [ %.sroa.71606.sroa.0.0.copyload, %.sink.split2383 ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.er, align 8
  %.sroa.41657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.01613.0, ptr %.sroa.41657.0..sroa_idx, align 8
  %.sroa.51658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.61614.0, ptr %.sroa.51658.0..sroa_idx, align 8
  %.sroa.61659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61659.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91616, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.bi

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslJIpglpJv42_10der_parser3ber3ber9BerObjectECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(112) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cl

.sink.split2384:                                  ; preds = %bb.v
  %.sroa.71544.sroa.5.0..sroa.71544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.71544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.71544.sroa.0.0.copyload = load i64, ptr %.sroa.71544.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91554, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71544.sroa.5.0..sroa.71544.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.v, %.sink.split2384
  %.sroa.01551.0 = phi i64 [ -9223372036854775789, %bb.v ], [ %.sroa.41542.0.copyload, %.sink.split2384 ]
  %.sroa.61552.0 = phi i64 [ %.sroa.41542.0.copyload, %bb.v ], [ %.sroa.71544.sroa.0.0.copyload, %.sink.split2384 ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.es, align 8
  %.sroa.41595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.01551.0, ptr %.sroa.41595.0..sroa_idx, align 8
  %.sroa.51596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.61552.0, ptr %.sroa.51596.0..sroa_idx, align 8
  %.sroa.61597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61597.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91554, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bt, %bb.s
  %.pn2203.pn = phi { ptr, i32 } [ %.pn2203, %bb.s ], [ %i.fa, %bb.bt ]
  resume { ptr, i32 } %.pn2203.pn

.sink.split2385:                                  ; preds = %bb.q
  %.sroa.71482.sroa.5.0..sroa.71482.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.71482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.71482.sroa.0.0.copyload = load i64, ptr %.sroa.71482.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91492, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71482.sroa.5.0..sroa.71482.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.q, %.sink.split2385
  %.sroa.01489.0 = phi i64 [ -9223372036854775789, %bb.q ], [ %.sroa.41480.0.copyload, %.sink.split2385 ]
  %.sroa.61490.0 = phi i64 [ %.sroa.41480.0.copyload, %bb.q ], [ %.sroa.71482.sroa.0.0.copyload, %.sink.split2385 ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.et, align 8
  %.sroa.41533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.01489.0, ptr %.sroa.41533.0..sroa_idx, align 8
  %.sroa.51534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.61490.0, ptr %.sroa.51534.0..sroa_idx, align 8
  %.sroa.61535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61535.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91492, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.cl

bb.bp:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.eu = load i64, ptr %1, align 8, !range !9, !noundef !8
  %.not2182 = icmp eq i64 %i.eu, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %.not2182, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i64 11, ptr %i.h, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6crypto14PublicKeyErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !8 ; 2 uses
  store i64 -1, ptr %i.i, align 8
  %.sroa.41827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ew, ptr %.sroa.41827.0..sroa_idx, align 8
  %.sroa.51828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ey, ptr %.sroa.51828.0..sroa_idx, align 8
  %.sroa.61829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 0, ptr %.sroa.61829.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs_Cs9UgDHlk63pp_9const_oidNtB4_16ObjectIdentifier10from_bytes(ptr noalias nofree noundef nonnull sret([44 x i8]) align 4 captures(none) dereferenceable(44) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ew, i64 noundef %i.ey)
          to label %bb.bu unwind label %bb.bt

bb.br:                                            ; preds = %bb.bp
  %.sroa.41810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.41810.0.copyload = load ptr, ptr %.sroa.41810.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.ez, align 8
  %.sroa.41832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.41810.0.copyload, ptr %.sroa.41832.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.cg, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cl

bb.bt:                                            ; preds = %bb.ch, %bb.cb, %bb.bq
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs92Y28wVgKBa_7asn1_rs10asn1_types3oid3OidECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #38
          to label %bb.bn unwind label %bb.ba

bb.bu:                                            ; preds = %bb.bq
  %i.fb = load i8, ptr %i.g, align 4, !range !13, !noundef !8
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.fd, align 8
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.01959.0.copyload = load i8, ptr %i.fe, align 1 ; 2 uses
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
  %.sroa.201976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 18 ; 2 uses
  %.sroa.211977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  %.sroa.221978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %.sroa.231979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  %.sroa.241980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  %.sroa.251981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  %.sroa.261982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.271983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 25
  %.sroa.281984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %.sroa.291985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 27
  %.sroa.301986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.311987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 29
  %7 = load <16 x i8>, ptr %.sroa.61962.0..sroa_idx, align 4 ; 2 uses
  %8 = load <16 x i8>, ptr %.sroa.221978.0..sroa_idx, align 4 ; 2 uses
  %.sroa.311987.0.copyload = load i8, ptr %.sroa.311987.0..sroa_idx, align 1 ; 2 uses
  %9 = load <16 x i8>, ptr %.sroa.41960.0..sroa_idx, align 2 ; 2 uses
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
  %.sroa.51961.0.copyload = load i8, ptr %.sroa.51961.0..sroa_idx, align 1
  %.sroa.51961.0.copyload.fr = freeze i8 %.sroa.51961.0.copyload ; 2 uses
  %.sroa.41960.0.copyload = load i8, ptr %.sroa.41960.0..sroa_idx, align 2
  %.sroa.41960.0.copyload.fr = freeze i8 %.sroa.41960.0.copyload ; 2 uses
  %10 = load <16 x i8>, ptr %.sroa.201976.0..sroa_idx, align 2 ; 2 uses
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
  switch i8 %.sroa.01959.0.copyload, label %bb.bx [
    i8 8, label %bb.by
    i8 5, label %bb.bz
  ]

bb.bx:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.ff, align 8
  %.sroa.41108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.01959.0.copyload, ptr %.sroa.41108.0..sroa_idx, align 8
  %.sroa.51109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.41960.0.copyload.fr, ptr %.sroa.51109.0..sroa_idx, align 1
  %.sroa.61110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.51961.0.copyload.fr, ptr %.sroa.61110.0..sroa_idx, align 2
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
  br label %bb.cf

bb.by:                                            ; preds = %bb.bw
  %i.fg = icmp eq i8 %.sroa.41960.0.copyload.fr, 42
  %i.fh = icmp eq i8 %.sroa.51961.0.copyload.fr, -122
  %i.fi = shufflevector <16 x i8> %7, <16 x i8> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25>
  %i.fj = shufflevector <16 x i8> %7, <16 x i8> %8, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24>
  %i.fk = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.fj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fl = or <16 x i8> %i.fi, %i.fk
  %.fr2453 = freeze <16 x i8> %i.fl
  %i.fm = or i8 %.sroa.331989.0.copyload, %.sroa.321988.0.copyload
  %.fr2457 = freeze i8 %i.fm
  %i.fn = or i8 %.sroa.351991.0.copyload, %.sroa.341990.0.copyload
  %.fr2454 = freeze i8 %i.fn
  %i.fo = or i8 %.sroa.371993.0.copyload, %.sroa.361992.0.copyload
  %.fr2456 = freeze i8 %i.fo
  %i.fp = or i8 %.sroa.391995.0.copyload, %.sroa.381994.0.copyload
  %or.cond319 = icmp eq i8 %i.fp, 0
  %i.fq = icmp ne <16 x i8> %.fr2453, <i8 72, i8 -50, i8 61, i8 3, i8 1, i8 7, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.fr = bitcast <16 x i1> %i.fq to i16
  %i.fs = icmp eq i16 %i.fr, 0
  %op.rdx2432 = and i1 %i.fs, %i.fg
  %i.ft = or i8 %.fr2454, %.fr2456
  %i.fu = and i1 %op.rdx2432, %i.fh
  %i.fv = or i8 %i.ft, %.fr2457
  %i.fw = icmp eq i8 %i.fv, 0
  %i.fx = and i1 %i.fu, %i.fw
  %op.rdx2437 = select i1 %i.fx, i1 %or.cond319, i1 false
  br i1 %op.rdx2437, label %bb.ca, label %bb.bx

bb.bz:                                            ; preds = %bb.bw
  %i.fy = shufflevector <16 x i8> %9, <16 x i8> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26>
  %i.fz = shufflevector <16 x i8> %9, <16 x i8> %10, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25>
  %i.ga = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gb = or <16 x i8> %i.fy, %i.ga
  %.fr2447 = freeze <16 x i8> %i.gb
  %i.gc = or i8 %.sroa.321988.0.copyload, %.sroa.311987.0.copyload
  %.fr2450 = freeze i8 %i.gc
  %i.gd = or i8 %.sroa.341990.0.copyload, %.sroa.331989.0.copyload
  %.fr2448 = freeze i8 %i.gd
  %i.ge = or i8 %.sroa.361992.0.copyload, %.sroa.351991.0.copyload
  %.fr2452 = freeze i8 %i.ge
  %i.gf = or i8 %.sroa.381994.0.copyload, %.sroa.371993.0.copyload
  %.fr2449 = freeze i8 %i.gf
  %i.gg = or i8 %.sroa.401996.0.copyload, %.sroa.391995.0.copyload
  %.fr2451 = freeze i8 %i.gg
  %i.gh = or i8 %.sroa.421998.0.copyload, %.sroa.411997.0.copyload
  %or.cond411 = icmp eq i8 %i.gh, 0
  %i.gi = icmp ne <16 x i8> %.fr2447, <i8 43, i8 -127, i8 4, i8 0, i8 34, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.gj = bitcast <16 x i1> %i.gi to i16
  %i.gk = icmp eq i16 %i.gj, 0
  %i.gl = or i8 %.fr2449, %.fr2451
  %i.gm = or i8 %.fr2448, %.fr2450
  %i.gn = or i8 %.fr2452, %i.gm
  %i.go = or i8 %i.gl, %i.gn
  %i.gp = icmp eq i8 %i.go, 0
  %i.gq = and i1 %i.gk, %i.gp
  %op.rdx2443 = select i1 %i.gq, i1 %or.cond411, i1 false
  br i1 %op.rdx2443, label %bb.ch, label %bb.bx

bb.ca:                                            ; preds = %bb.by
  %i.gr = or i8 %.sroa.411997.0.copyload, %.sroa.401996.0.copyload
  %or.cond323 = icmp eq i8 %i.gr, 0
  %i.gs = icmp eq i8 %.sroa.421998.0.copyload, 0
  %or.cond327 = select i1 %or.cond323, i1 %i.gs, i1 false
  br i1 %or.cond327, label %bb.cb, label %bb.bx

bb.cb:                                            ; preds = %bb.ca
  %.sroa.31079.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.31079.0 = load i64, ptr %.sroa.31079.0.in, align 8, !noundef !8
  %.sroa.01078.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.01078.0 = load ptr, ptr %.sroa.01078.0.in, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCscCwXDEmlcGa_14elliptic_curve10public_keyINtB2_9PublicKeyNtCshfSScXElJO5_4p2568NistP256E15from_sec1_bytesCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01078.0, i64 noundef %.sroa.31079.0)
          to label %bb.cc unwind label %bb.bt

bb.cc:                                            ; preds = %bb.cb
  %i.gt = load i64, ptr %i.b, align 8, !range !17, !noundef !8
  %i.gu = trunc nuw i64 %i.gt to i1
  br i1 %i.gu, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.gv, align 8
  %.sroa.42135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.42135.0..sroa_idx, align 8
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.52130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.51060.sroa.6.0..sroa.51060.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.51060.sroa.6.0..sroa.51060.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.52130.0..sroa_idx, i64 56, i1 false)
  %.sroa.51060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gx = load <2 x ptr>, ptr %i.gw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 2, ptr %0, align 8
  store <2 x ptr> %i.gx, ptr %.sroa.51060.0..sroa_idx, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ck, %bb.ce, %bb.bx
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs92Y28wVgKBa_7asn1_rs10asn1_types3oid3OidECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cl

bb.cg:                                            ; preds = %bb.cj, %bb.cd, %bb.bv
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs92Y28wVgKBa_7asn1_rs10asn1_types3oid3OidECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
  br label %bb.bs

bb.ch:                                            ; preds = %bb.bz
  %.sroa.31103.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.31103.0 = load i64, ptr %.sroa.31103.0.in, align 8, !noundef !8
  %.sroa.01102.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.01102.0 = load ptr, ptr %.sroa.01102.0.in, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCscCwXDEmlcGa_14elliptic_curve10public_keyINtB2_9PublicKeyNtCs2QVhZO3YFtI_4p3848NistP384E15from_sec1_bytesCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01102.0, i64 noundef %.sroa.31103.0)
          to label %bb.ci unwind label %bb.bt

bb.ci:                                            ; preds = %bb.ch
  %i.gy = load i64, ptr %i.a, align 8, !range !17, !noundef !8
  %i.gz = trunc nuw i64 %i.gy to i1
  br i1 %i.gz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.ha, align 8
  %.sroa.42148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.42148.0..sroa_idx, align 8
  br label %bb.cg

bb.ck:                                            ; preds = %bb.ci
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.52143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.51084.sroa.6.0..sroa.51084.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.51084.sroa.6.0..sroa.51084.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.52143.0..sroa_idx, i64 88, i1 false)
  %.sroa.51084.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hc = load <2 x ptr>, ptr %i.hb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 3, ptr %0, align 8
  store <2 x ptr> %i.hc, ptr %.sroa.51084.0..sroa_idx, align 8
  br label %bb.cf

bb.cl:                                            ; preds = %bb.b, %bb.i, %bb.p, %bb.bs, %bb.bo, %bb.bl, %bb.d, %bb.j, %bb.ay, %bb.cf
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
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !10669
  store i8 3, ptr %i.a, align 8, !alias.scope !10669
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
end_hunk_3
