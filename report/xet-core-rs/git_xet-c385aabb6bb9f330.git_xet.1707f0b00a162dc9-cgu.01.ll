Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.01?download=true
inline.NumInlined: 326
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB2v_32GitLFSAuthentationResponseHeaderNtB1l_11Deserialize11deserialize9___VisitorEB2z_:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !12, !noalias !450, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !450
  br i1 %i.ax, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !450
  %i.ay = load ptr, ptr %i.l, align 8, !alias.scope !452, !noalias !453, !nonnull !5, !align !11, !noundef !5
  call void @_RINvXs6_NtNtCs6SYjS1KFWza_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ay), !noalias !454
  %i.az = load i64, ptr %i.j, align 8, !range !6, !noalias !450, !noundef !5 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !455 ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !450
  br label %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtBb_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEEBf_.exit

bb.m:                                             ; preds = %bb.k
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !450
  br label %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtBb_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEEBf_.exit

bb.n:                                             ; preds = %bb.j
  %i.bd = tail call noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error14invalid_lengthCs1YANDSn9Kib_7git_xet(i64 noundef 0, ptr noundef nonnull @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8), !noalias !456
  br label %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtBb_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEEBf_.exit

_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtBb_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEEBf_.exit: ; preds = %bb.i, %bb.l, %bb.n, %bb.m
  %.sroa.8.0 = phi i64 [ %.sroa.12.0.copyload.i, %bb.m ], [ undef, %bb.n ], [ undef, %bb.l ], [ undef, %bb.i ]
  %.sroa.654.0 = phi ptr [ %i.bc, %bb.m ], [ %i.bd, %bb.n ], [ %i.bc, %bb.l ], [ %i.au, %bb.i ]
  %.sroa.053.0 = phi i64 [ %i.az, %bb.m ], [ -1, %bb.n ], [ -1, %bb.l ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.be = load i8, ptr %i.ag, align 8, !noundef !5
  %i.bf = add i8 %i.be, 1
  store i8 %i.bf, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.053.0, ptr %i.p, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.654.0, ptr %.sroa.654.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.bg = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.q unwind label %bb.p       ; 5 uses

bb.o:                                             ; preds = %bb.z, %bb.g
  %.sink = phi ptr [ %i.bs, %bb.z ], [ %i.ao, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bh, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bq

bb.p:                                             ; preds = %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtBb_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEEBf_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #14
          to label %common.resume unwind label %bb.w

bb.q:                                             ; preds = %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtBb_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEEBf_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.bg, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bk = load i64, ptr %i.q, align 8, !range !6, !noundef !5 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, -1
  br i1 %i.bl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not39 = icmp eq ptr %i.bg, null
  br i1 %.not39, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %.not189 = icmp eq ptr %i.bg, null
  br i1 %.not189, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread, label %bb.x

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.t
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread

bb.w:                                             ; preds = %bb.bg, %bb.p
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread: ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i, %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit
  %.sroa.09.0145 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit ], [ -1, %bb.x ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i ], [ %i.bk, %bb.s ]
  %.sroa.10.0144 = phi ptr [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit ], [ %i.bn, %bb.x ], [ %i.bg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i ], [ %.sroa.4.0.copyload, %bb.s ]
  %.sroa.14.0143 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit ], [ undef, %bb.x ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i ], [ %.sroa.5.0.copyload, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.y

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %i.bg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit51.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread
  %.sroa.14.1 = phi i64 [ %.sroa.14.0143, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread ], [ %.sroa.14.2151, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit51.thread ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0144, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread ], [ %.sroa.10.2152, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit51.thread ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.0145, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.thread ], [ %.sroa.09.2153, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit51.thread ] ; 2 uses
  %i.br = icmp eq i64 %.sroa.09.1, -1
  br i1 %i.br, label %bb.bo, label %bb.bp, !prof !16

bb.z:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 24, ptr %i.o, align 8
  %i.bs = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.o

bb.aa:                                            ; preds = %bb.f
  %i.bt = add i64 %i.z, 1
  store i64 %i.bt, ptr %i.t, align 8, !alias.scope !457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8, !noalias !458
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 1, ptr %i.bu, align 8, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !458
  store i64 -1, ptr %i.h, align 8, !noalias !458
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.618.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.backedge, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !461
  invoke fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc.i unwind label %.loopexit.i44, !noalias !462

.noexc.i:                                         ; preds = %bb.ab
  %i.bx = load i8, ptr %i.e, align 8, !range !12, !noalias !461, !noundef !5
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !461, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !461
  br label %.loopexit

bb.ad:                                            ; preds = %.noexc.i
  %i.cb = load i8, ptr %i.bv, align 1, !range !12, !noalias !461, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !461
  br i1 %i.cc, label %bb.ae, label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread74.i

bb.ae:                                            ; preds = %bb.ad
  %i.cd = load ptr, ptr %i.i, align 8, !alias.scope !463, !noalias !464, !nonnull !5, !align !11, !noundef !5 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 5 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !469, !noalias !470, !noundef !5
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8, !alias.scope !469, !noalias !470
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 0, ptr %i.ci, align 8, !alias.scope !471, !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !472
  invoke void @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %.noexc60.i unwind label %.loopexit.i44, !noalias !462

.noexc60.i:                                       ; preds = %bb.ae
  %i.cj = load i64, ptr %i.d, align 8, !range !4, !noalias !472, !noundef !5
  %i.ck = icmp eq i64 %i.cj, 2
  %i.cl = load ptr, ptr %i.bw, align 8, !noalias !472, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %i.ck, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc60.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !472
  %i.cm = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 13
  br i1 %i.cm, label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.i, label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread78.i

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread78.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !472
  br label %bb.ai

bb.ag:                                            ; preds = %.noexc60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !472
  br label %.loopexit

.loopexit.i44:                                    ; preds = %bb.ao, %bb.ai, %bb.ae, %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp.i:                             ; preds = %bb.ax, %bb.ap, %bb.an, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i44
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i44 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.h, align 8, !noalias !458
  %.not56.i = icmp eq i64 %.pr.i, -1
  br i1 %.not56.i, label %common.resume, label %bb.be

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.i: ; preds = %bb.af
  %i.cn = load i64, ptr %i.cl, align 1
  %i.co = xor i64 %i.cn, 8820707168001226049
  %i.cp = getelementptr i8, ptr %i.cl, i64 5
  %i.cq = load i64, ptr %i.cp, align 1
  %i.cr = xor i64 %i.cq, 7957695015159490930
  %i.cs = or i64 %i.co, %i.cr
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not.i = icmp eq i32 %i.cu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !472
  br i1 %.not.i, label %bb.aj, label %bb.ai

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread74.i: ; preds = %bb.ad
  %i.cv = load i64, ptr %i.h, align 8, !range !6, !noalias !458, !noundef !5 ; 2 uses
  %.not53.i = icmp eq i64 %i.cv, -1
  br i1 %.not53.i, label %bb.ax, label %bb.aw

bb.ai:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.i, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread78.i
  %i.cw = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs1YANDSn9Kib_7git_xet(ptr nonnull %i.cd)
          to label %bb.av unwind label %.loopexit.i44, !noalias !462 ; 2 uses

bb.aj:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.i
  %i.cx = load i64, ptr %i.h, align 8, !range !6, !noalias !458, !noundef !5
  %.not54.i = icmp eq i64 %i.cx, -1
  br i1 %.not54.i, label %bb.ak, label %bb.ap, !prof !13

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !458
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !475, !noalias !476, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !477, !noalias !478 ; 2 uses
  %i.da = icmp ult i64 %.promoted.i.i.i.i.i, %i.cz
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak
  %i.db = load ptr, ptr %i.ce, align 8, !alias.scope !475, !noalias !476, !nonnull !5, !noundef !5
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i.i.i.i.i
  %i.dc = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.df, %bb.am ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !480, !noundef !5
  switch i8 %i.de, label %bb.an [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 58, label %bb.ao
  ], !prof !22

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.df = add i64 %i.dc, 1                        ; 3 uses
  store i64 %i.df, ptr %i.cf, align 8, !alias.scope !481, !noalias !478
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.df, %i.cz
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.al

.loopexit.i.i.i.i:                                ; preds = %bb.ak, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !482
  store i64 3, ptr %i.b, align 8, !noalias !482
  %i.dg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc61.i unwind label %.loopexit.split-lp.i, !noalias !462

.noexc61.i:                                       ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !482
  br label %.loopexit82.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !482
  store i64 6, ptr %i.c, align 8, !noalias !482
  %i.dh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc62.i unwind label %.loopexit.split-lp.i, !noalias !462

.noexc62.i:                                       ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !482
  br label %.loopexit82.i

bb.ao:                                            ; preds = %bb.al
  %i.di = add i64 %i.dc, 1
  store i64 %i.di, ptr %i.cf, align 8, !alias.scope !483, !noalias !484
  invoke void @_RINvXs6_NtNtCs6SYjS1KFWza_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i unwind label %.loopexit.i44, !noalias !462

bb.ap:                                            ; preds = %bb.aj
  %i.dj = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error15duplicate_fieldCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 13)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !noalias !462

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.ao
  %.pr80.i = load i64, ptr %i.g, align 8, !noalias !458 ; 3 uses
  %i.dk = icmp eq i64 %.pr80.i, -1
  %.pre.i = load ptr, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !458 ; 3 uses
  br i1 %i.dk, label %.loopexit82.i, label %bb.aq

.loopexit82.i:                                    ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i, %.noexc62.i, %.noexc61.i
  %i.dl = phi ptr [ %i.dh, %.noexc62.i ], [ %i.dg, %.noexc61.i ], [ %.pre.i, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !458
  br label %.loopexit

bb.aq:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i
  %.sroa.547.0.copyload.i = load i64, ptr %.sroa.547.0..sroa_idx.i, align 8, !noalias !458 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !458
  %i.dm = load i64, ptr %i.h, align 8, !range !6, !alias.scope !485, !noalias !458, !noundef !5
  %i.dn = icmp eq i64 %i.dm, -1
  br i1 %i.dn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs1YANDSn9Kib_7git_xet.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i unwind label %bb.as, !noalias !462

bb.as:                                            ; preds = %bb.ar
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread.i unwind label %bb.at, !noalias !462

bb.at:                                            ; preds = %bb.as
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !462
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.au, !noalias !462

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.i:                                        ; preds = %bb.au, %bb.as
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dq, %bb.au ], [ %i.do, %bb.as ]
  store i64 %.pr80.i, ptr %i.h, align 8, !noalias !458
  store ptr %.pre.i, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !458
  store i64 %.sroa.547.0.copyload.i, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !458
  br label %bb.be

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i, %bb.aq
  store i64 %.pr80.i, ptr %i.h, align 8, !noalias !458
  store ptr %.pre.i, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !458
  store i64 %.sroa.547.0.copyload.i, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !458
  br label %.backedge

bb.av:                                            ; preds = %bb.ai
  %.not57.i = icmp eq ptr %i.cw, null
  br i1 %.not57.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs1YANDSn9Kib_7git_xet.exit.i
  br label %bb.ab

bb.aw:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread74.i
  %.sroa.336.0.copyload.i = load ptr, ptr %.sroa.618.0..sroa_idx19.i, align 8, !noalias !458
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !458
  br label %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtBb_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB36_4read9SliceReadEEBf_.exit

bb.ax:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB25_32GitLFSAuthentationResponseHeaderNtB1a_11Deserialize11deserialize7___FieldEB29_.exit.thread74.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !458
  invoke void @_RINvXNvNtNtCseHpJhTld930_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 13)
          to label %bb.ay unwind label %.loopexit.split-lp.i, !noalias !462

bb.ay:                                            ; preds = %bb.ax
  %i.dr = load i64, ptr %i.f, align 8, !range !6, !noalias !458, !noundef !5 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !458 ; 2 uses
  br i1 %i.ds, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !458
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.550.0.copyload.i = load i64, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !458
  br label %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtBb_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB36_4read9SliceReadEEBf_.exit

.loopexit:                                        ; preds = %bb.av, %bb.az, %.loopexit82.i, %bb.ap, %bb.ag, %bb.ac
  %.sroa.1165.0.ph.sink.i = phi ptr [ %i.du, %bb.az ], [ %i.dj, %bb.ap ], [ %i.ca, %bb.ac ], [ %i.dl, %.loopexit82.i ], [ %i.cl, %bb.ag ], [ %i.cw, %bb.av ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtB2v_26GitLFSAuthenticateResponseNtB1l_11Deserialize11deserialize9___VisitorEB2z_:bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.ag, !noalias !615

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !615
  unreachable

common.resume:                                    ; preds = %bb.du, %bb.aj, %.body148.i, %bb.dq, %bb.dt, %.body.i, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %.pn109.i, %.body148.i ], [ %.pn.i, %.body.i ], [ %i.dc, %bb.af ], [ %i.kb, %bb.dq ], [ %.pn109.i, %bb.dt ], [ %i.kg, %bb.du ], [ %i.dj, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !615
  br label %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit

bb.ah:                                            ; preds = %bb.z, %.body.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !615
  unreachable

_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit: ; preds = %bb.i, %bb.l, %bb.r, %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i
  %.sroa.11.sroa.0.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.l ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i ], [ %i.cy, %bb.aa ], [ undef, %bb.r ]
  %.sroa.1154.0 = phi i32 [ undef, %bb.i ], [ undef, %bb.l ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i ], [ %i.cx, %bb.aa ], [ undef, %bb.r ]
  %.sroa.8.1 = phi ptr [ %i.bl, %bb.i ], [ %i.bt, %bb.l ], [ %.sroa.8.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i ], [ %.sroa.027.i.sroa.4.0.copyload, %bb.aa ], [ %i.cg, %bb.r ]
  %.sroa.051.1 = phi i64 [ -1, %bb.i ], [ -1, %bb.l ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i ], [ %.sroa.027.i.sroa.0.0.copyload, %bb.aa ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.df = load i8, ptr %i.ax, align 8, !noundef !5
  %i.dg = add i8 %i.df, 1
  store i8 %i.dg, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %.sroa.051.1, ptr %i.ag, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.11.sroa.0.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.6, i64 24, i1 false)
  %.sroa.1154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i32 %.sroa.1154.0, ptr %.sroa.1154.0..sroa_idx, align 8
  %i.dh = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ak unwind label %bb.aj     ; 5 uses

bb.ai:                                            ; preds = %bb.ar, %bb.g
  %.sink = phi ptr [ %i.dr, %bb.ar ], [ %i.bf, %bb.g ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.di, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.ed

bb.aj:                                            ; preds = %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ag) #14
          to label %common.resume unwind label %bb.ao

bb.ak:                                            ; preds = %_RINvXs0_NvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3sshs0_1__NtBb_26GitLFSAuthenticateResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBf_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %i.dh, ptr %i.dk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dl = load i64, ptr %i.ah, align 8, !range !6, !noundef !5 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -1
  br i1 %i.dm, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not37 = icmp eq ptr %i.dh, null
  br i1 %.not37, label %.thread328, label %bb.an

.thread328:                                       ; preds = %bb.al
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  br label %.thread67

bb.am:                                            ; preds = %bb.ak
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  %.not82 = icmp eq ptr %i.dh, null
  br i1 %.not82, label %.thread67, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ah)
  br label %.thread67

bb.ao:                                            ; preds = %bb.du, %bb.aj
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.thread67:                                        ; preds = %.thread328, %bb.an, %bb.ap, %bb.am
  %.sroa.09.073 = phi i64 [ -1, %bb.am ], [ -1, %bb.ap ], [ -1, %bb.an ], [ %i.dl, %.thread328 ]
  %.sroa.10.072 = phi ptr [ %i.do, %bb.am ], [ %i.do, %bb.ap ], [ %i.dh, %bb.an ], [ %.sroa.4.0.copyload, %.thread328 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %i.dh)
  br label %.thread67

bb.aq:                                            ; preds = %.thread74, %.thread67
  %.sroa.10.1 = phi ptr [ %.sroa.10.072, %.thread67 ], [ %.sroa.10.279, %.thread74 ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.073, %.thread67 ], [ %.sroa.09.280, %.thread74 ] ; 2 uses
  %i.dq = icmp eq i64 %.sroa.09.1, -1
  br i1 %i.dq, label %bb.ea, label %bb.eb, !prof !16

bb.ar:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 24, ptr %i.af, align 8
  %i.dr = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ai

bb.as:                                            ; preds = %bb.f
  %i.ds = add i64 %i.aq, 1
  store i64 %i.ds, ptr %i.ak, align 8, !alias.scope !625
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %1, ptr %i.t, align 8, !noalias !626
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 1, ptr %i.dt, align 8, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !626
  store i64 -1, ptr %i.s, align 8, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !626
  store i64 -1, ptr %i.r, align 8, !noalias !626
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.640.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.743.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.622.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cl, %bb.as
  %.sroa.4.0.i.ph = phi i32 [ %i.ir, %bb.cl ], [ undef, %bb.as ]
  %.not559 = phi i1 [ false, %bb.cl ], [ true, %bb.as ]
  %.sroa.046.0.i.ph = phi i1 [ true, %bb.cl ], [ false, %bb.as ]
  br label %bb.at

bb.at:                                            ; preds = %.backedge, %.outer
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !629
  invoke fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.noexc.i44 unwind label %.loopexit.loopexit.i.loopexit, !noalias !630

.noexc.i44:                                       ; preds = %bb.at
  %i.dy = load i8, ptr %i.i, align 8, !range !12, !noalias !629, !noundef !5
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.noexc.i44
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !629, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !629
  br label %.loopexit

bb.av:                                            ; preds = %.noexc.i44
  %i.ec = load i8, ptr %i.du, align 1, !range !12, !noalias !629, !noundef !5
  %i.ed = trunc nuw i8 %i.ec to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !629
  br i1 %i.ed, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.ee = load ptr, ptr %i.t, align 8, !alias.scope !631, !noalias !632, !nonnull !5, !align !11, !noundef !5 ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 11 uses
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !637, !noalias !638, !noundef !5
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !alias.scope !637, !noalias !638
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 0, ptr %i.ej, align 8, !alias.scope !639, !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !640
  invoke void @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %.noexc114.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !630

.noexc114.i:                                      ; preds = %bb.aw
  %i.ek = load i64, ptr %i.h, align 8, !range !4, !noalias !640, !noundef !5 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2
  %i.em = load ptr, ptr %i.dv, align 8, !noalias !640, !nonnull !5, !noundef !5 ; 11 uses
  br i1 %i.el, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %.noexc114.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !640 ; 2 uses
  %i.en = trunc nuw i64 %i.ek to i1
  br i1 %i.en, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bl [
    i64 6, label %bb.az
    i64 4, label %bb.ba
    i64 10, label %bb.bb
  ]

bb.az:                                            ; preds = %bb.ay
  %i.eo = load i32, ptr %i.em, align 1
  %i.ep = xor i32 %i.eo, 1684104552
  %i.eq = getelementptr i8, ptr %i.em, i64 4
  %i.er = load i16, ptr %i.eq, align 1
  %i.es = zext i16 %i.er to i32
  %i.et = xor i32 %i.es, 29285
  %i.eu = or i32 %i.ep, %i.et
  %i.ev = icmp ne i32 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bi, label %bb.bl

bb.ba:                                            ; preds = %bb.ay
  %i.ey = load i32, ptr %i.em, align 1
  %i.ez = icmp ne i32 %i.ey, 1717924456
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.bj, label %bb.bl

bb.bb:                                            ; preds = %bb.ay
  %i.fc = load i64, ptr %i.em, align 1
  %i.fd = xor i64 %i.fc, 6877952597994535013
  %i.fe = getelementptr i8, ptr %i.em, i64 8
  %i.ff = load i16, ptr %i.fe, align 1
  %i.fg = zext i16 %i.ff to i64
  %i.fh = xor i64 %i.fg, 28265
  %i.fi = or i64 %i.fd, %i.fh
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.bk, label %bb.bl

bb.bc:                                            ; preds = %bb.ax
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bl [
    i64 6, label %bb.bd
    i64 4, label %bb.be
    i64 10, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fm = load i32, ptr %i.em, align 1
  %i.fn = xor i32 %i.fm, 1684104552
  %i.fo = getelementptr i8, ptr %i.em, i64 4
  %i.fp = load i16, ptr %i.fo, align 1
  %i.fq = zext i16 %i.fp to i32
  %i.fr = xor i32 %i.fq, 29285
  %i.fs = or i32 %i.fn, %i.fr
  %i.ft = icmp ne i32 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.bi, label %bb.bl

bb.be:                                            ; preds = %bb.bc
  %i.fw = load i32, ptr %i.em, align 1
  %i.fx = icmp ne i32 %i.fw, 1717924456
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.bj, label %bb.bl

bb.bf:                                            ; preds = %bb.bc
  %i.ga = load i64, ptr %i.em, align 1
  %i.gb = xor i64 %i.ga, 6877952597994535013
  %i.gc = getelementptr i8, ptr %i.em, i64 8
  %i.gd = load i16, ptr %i.gc, align 1
  %i.ge = zext i16 %i.gd to i64
  %i.gf = xor i64 %i.ge, 28265
  %i.gg = or i64 %i.gb, %i.gf
  %i.gh = icmp ne i64 %i.gg, 0
  %i.gi = zext i1 %i.gh to i32
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bk, label %bb.bl

bb.bg:                                            ; preds = %.noexc114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !640
  br label %.loopexit

.body140.i:                                       ; preds = %.loopexit.loopexit.i.loopexit, %.loopexit.loopexit.i.loopexit.split-lp, %bb.da, %.body143.i, %.body127.i, %.body.i49, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i
  %.sroa.084.1.i = phi i8 [ %.sroa.084.5.i, %.body143.i ], [ 1, %.body.i49 ], [ 1, %.body127.i ], [ %.sroa.084.8.i, %bb.da ], [ %.sroa.084.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.i.loopexit.split-lp ], [ 1, %.loopexit.loopexit.i.loopexit ]
  %.sroa.086.1.i = phi i8 [ %.sroa.086.4.i, %.body143.i ], [ 1, %.body.i49 ], [ 1, %.body127.i ], [ %.sroa.086.4.i, %bb.da ], [ %.sroa.086.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.i.loopexit.split-lp ], [ 1, %.loopexit.loopexit.i.loopexit ] ; 2 uses
  %.pn107.i = phi { ptr, i32 } [ %.pn.i45, %.body143.i ], [ %eh.lpad-body.i, %.body.i49 ], [ %eh.lpad-body128.i, %.body127.i ], [ %i.jd, %bb.da ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp372.i, %.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.split-lp ] ; 2 uses
  %i.gk = load i64, ptr %i.r, align 8, !range !6, !noalias !626, !noundef !5
  %i.gl = icmp ne i64 %i.gk, -1
  %i.gm = trunc nuw i8 %.sroa.084.1.i to i1
  %or.cond5.i = select i1 %i.gl, i1 %i.gm, i1 false
  br i1 %or.cond5.i, label %bb.ds, label %.body148.i

.loopexit.loopexit.i.loopexit:                    ; preds = %bb.at, %bb.aw, %bb.bl, %bb.bq, %bb.ca
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

.loopexit.loopexit.i.loopexit.split-lp:           ; preds = %bb.ck
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.cj, %.loopexit.i.i.i131.i
  %lpad.loopexit.split-lp372.i = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i139.i, %bb.co, %bb.bz, %.loopexit.i.i.i120.i, %bb.bp, %.loopexit.i.i.i.i
  %.sroa.084.2.ph.i = phi i8 [ 1, %bb.co ], [ %.sroa.084.8.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i139.i ], [ 1, %bb.bp ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.invoke ], [ 1, %bb.bz ], [ 1, %.loopexit.i.i.i120.i ]
  %.sroa.086.2.ph.i = phi i8 [ 1, %bb.co ], [ %.sroa.086.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i139.i ], [ 1, %bb.bp ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.invoke ], [ 1, %bb.bz ], [ 1, %.loopexit.i.i.i120.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i

bb.bh:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !626
  %i.gn = load i64, ptr %i.s, align 8, !range !6, !noalias !626, !noundef !5
  %.not101.i = icmp eq i64 %i.gn, -1
  br i1 %.not101.i, label %bb.co, label %bb.cn

bb.bi:                                            ; preds = %bb.bd, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !640
  %i.go = load i64, ptr %i.s, align 8, !range !6, !noalias !626, !noundef !5
  %.not106.i = icmp eq i64 %i.go, -1
  br i1 %.not106.i, label %bb.bm, label %.invoke, !prof !13

bb.bj:                                            ; preds = %bb.be, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !640
  %i.gp = load i64, ptr %i.r, align 8, !range !6, !noalias !626, !noundef !5
  %.not105.i = icmp eq i64 %i.gp, -1
  br i1 %.not105.i, label %bb.bw, label %.invoke, !prof !13

bb.bk:                                            ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !640
  br i1 %.not559, label %bb.cg, label %.invoke, !prof !13

bb.bl:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !640
  %i.gq = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs1YANDSn9Kib_7git_xet(ptr nonnull %i.ee)
          to label %bb.cm unwind label %.loopexit.loopexit.i.loopexit, !noalias !630 ; 2 uses

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !626
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !643, !noalias !644, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !645, !noalias !646 ; 2 uses
  %i.gt = icmp ult i64 %.promoted.i.i.i.i.i, %i.gs
  br i1 %i.gt, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bm
  %i.gu = load ptr, ptr %i.ef, align 8, !alias.scope !643, !noalias !644, !nonnull !5, !noundef !5
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %.lr.ph.i.i.i.i.i
  %i.gv = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.gy, %bb.bo ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !noalias !648, !noundef !5
  switch i8 %i.gx, label %bb.bp [
    i8 32, label %bb.bo
    i8 10, label %bb.bo
    i8 9, label %bb.bo
    i8 13, label %bb.bo
    i8 58, label %bb.bq
  ], !prof !22

bb.bo:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.gy = add i64 %i.gv, 1                        ; 3 uses
  store i64 %i.gy, ptr %i.eg, align 8, !alias.scope !649, !noalias !646
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gy, %i.gs
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bn

.loopexit.i.i.i.i:                                ; preds = %bb.bm, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !650
  store i64 3, ptr %i.f, align 8, !noalias !650
  %i.gz = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc115.i unwind label %.loopexit.split-lp.i, !noalias !630

.noexc115.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !650
  br label %.loopexit177.i

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !650
  store i64 6, ptr %i.g, align 8, !noalias !650
  %i.ha = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc116.i unwind label %.loopexit.split-lp.i, !noalias !630

.noexc116.i:                                      ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !650
  br label %.loopexit177.i

bb.bq:                                            ; preds = %bb.bn
  %i.hb = add i64 %i.gv, 1
  store i64 %i.hb, ptr %i.eg, align 8, !alias.scope !651, !noalias !652
  invoke void @_RINvXNvNtNtCs1YANDSn9Kib_7git_xet4auth3ssh1__NtB5_32GitLFSAuthentationResponseHeaderNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2n_4read9SliceReadEEB9_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !630

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i: ; preds = %bb.bq
  %.pr.i = load i64, ptr %i.q, align 8, !noalias !626 ; 3 uses
  %i.hc = icmp eq i64 %.pr.i, -1
  %.pre361.i = load ptr, ptr %.sroa.489.0..sroa_idx.i, align 8, !noalias !626 ; 3 uses
  br i1 %i.hc, label %.loopexit177.i, label %bb.br

.loopexit177.i:                                   ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i, %.noexc116.i, %.noexc115.i
  %i.hd = phi ptr [ %i.ha, %.noexc116.i ], [ %i.gz, %.noexc115.i ], [ %.pre361.i, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !626
  br label %.loopexit

bb.br:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEB27_.exit.i
  %.sroa.590.0.copyload.i = load i64, ptr %.sroa.590.0..sroa_idx.i, align 8, !noalias !626 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !626
  %i.he = load i64, ptr %i.s, align 8, !range !6, !alias.scope !653, !noalias !626, !noundef !5
  %i.hf = icmp eq i64 %i.he, -1
  br i1 %i.hf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEEB13_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i.i unwind label %bb.bt, !noalias !630

bb.bt:                                            ; preds = %bb.bs
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i49 unwind label %bb.bu, !noalias !630

bb.bu:                                            ; preds = %bb.bt
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !630
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEEB13_.exit.i unwind label %bb.bv, !noalias !630

bb.bv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i49

.body.i49:                                        ; preds = %bb.bv, %bb.bt
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hi, %bb.bv ], [ %i.hg, %bb.bt ]
  store i64 %.pr.i, ptr %i.s, align 8, !noalias !626
  store ptr %.pre361.i, ptr %.sroa.622.0..sroa_idx23.i, align 8, !noalias !626
  store i64 %.sroa.590.0.copyload.i, ptr %.sroa.7.0..sroa_idx25.i, align 8, !noalias !626
  br label %.body140.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEEB13_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh32GitLFSAuthentationResponseHeaderEBH_.exit.i.i, %bb.br
  store i64 %.pr.i, ptr %i.s, align 8, !noalias !626
  store ptr %.pre361.i, ptr %.sroa.622.0..sroa_idx23.i, align 8, !noalias !626
  store i64 %.sroa.590.0.copyload.i, ptr %.sroa.7.0..sroa_idx25.i, align 8, !noalias !626
  br label %.backedge

bb.bw:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !626
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !656, !noalias !657, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i119.i = load i64, ptr %i.eg, align 8, !alias.scope !658, !noalias !659 ; 2 uses
  %i.hl = icmp ult i64 %.promoted.i.i.i.i119.i, %i.hk
  br i1 %i.hl, label %.lr.ph.i.i.i.i122.i, label %.loopexit.i.i.i120.i

.lr.ph.i.i.i.i122.i:                              ; preds = %bb.bw
  %i.hm = load ptr, ptr %i.ef, align 8, !alias.scope !656, !noalias !657, !nonnull !5, !noundef !5
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %.lr.ph.i.i.i.i122.i
  %i.hn = phi i64 [ %.promoted.i.i.i.i119.i, %.lr.ph.i.i.i.i122.i ], [ %i.hq, %bb.by ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !661, !noundef !5
  switch i8 %i.hp, label %bb.bz [
    i8 32, label %bb.by
    i8 10, label %bb.by
    i8 9, label %bb.by
    i8 13, label %bb.by
end_hunk_1
begin_hunk_2_@_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seedNtNtNtNtCseHpJhTld930_5serde7private2de7content19TagOrContentVisitorECs1YANDSn9Kib_7git_xet:bb.a
bb.d:                                             ; preds = %bb.c
  store i8 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5
  call void @_RINvXsk_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_19TagOrContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de15DeserializeSeed11deserializeINtNtCsiWcPrHiWZDL_10serde_json2de6MapKeyNtNtB2l_4read7StrReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i8, ptr %i.a, align 8, !range !680, !noundef !5
  %i.m = icmp eq i8 %i.l, -2
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !11, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i8 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB2Z_23LFSProtocolRequestEventNtB1e_11Deserialize11deserialize7___FieldEEB33_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !698, !noalias !699, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !700, !noalias !701 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !698, !noalias !699, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !704, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !22

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !705, !noalias !701
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !696
  store i64 3, ptr %i.a, align 8, !noalias !696
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !696
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !696
  store i64 6, ptr %i.b, align 8, !noalias !696
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !696
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !706
  tail call fastcc void @_RINvXs3_NtCs6SYjS1KFWza_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_spec1__NtB1q_23LFSProtocolRequestEventNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB4h_4read7StrReadEEB1u_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !724, !noalias !725, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !726, !noalias !727 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !724, !noalias !725, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !730, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !22

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !731, !noalias !727
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !722
  store i64 3, ptr %i.a, align 8, !noalias !722
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !722
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !722
  store i64 6, ptr %i.b, align 8, !noalias !722
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !722
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !732
  tail call void @_RINvXsi_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de15DeserializeSeed11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !743, !noalias !741, !noundef !5
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !743, !noalias !741
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !742, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !744
  call void @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !741
  %i.g = load i64, ptr %i.a, align 8, !range !4, !noalias !744, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !744 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !741, !noalias !742
  store i8 -1, ptr %0, align 8, !alias.scope !741, !noalias !742
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !744 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_strNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !745, !noalias !746
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !745, !noalias !746
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !745, !noalias !746
  br label %_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

_RINvXsh_NtCsiWcPrHiWZDL_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !744
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs1YANDSn9Kib_7git_xet(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !847, !noalias !848, !noundef !5 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !849, !noalias !850 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !847, !noalias !848, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !852, !noundef !5
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !22

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !853, !noalias !850
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !845
  store i64 3, ptr %i.o, align 8, !noalias !845
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !845
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !845
  store i64 6, ptr %i.p, align 8, !noalias !845
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !845
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !854
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !859
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i179.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !861, !noundef !5 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !862, !noalias !863
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !859
  store i64 5, ptr %i.n, align 8, !noalias !859
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !859
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !867, !noundef !5
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !868, !noalias !869
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !871, !noundef !5
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !872, !noalias !869
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !874, !noundef !5
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !875, !noalias !869
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !876
  store i64 5, ptr %i.f, align 8, !noalias !876
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !876
  br label %_RINvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECs1YANDSn9Kib_7git_xet.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !876
  store i64 9, ptr %i.e, align 8, !noalias !876
end_hunk_2
begin_hunk_3_@_RINvYQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet:bb.a

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1065
  store i64 9, ptr %i.c, align 8, !noalias !1065
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1065
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !1067, !noalias !1021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.u) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1071, !noundef !5
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !1072, !noalias !1073
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !23

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1076, !noundef !5
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !1077, !noalias !1073
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !23

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1080, !noundef !5
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !1081, !noalias !1073
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1084, !noundef !5
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !1085, !noalias !1073
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit59.i, label %bb.aa, !prof !23

_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1086
  store i64 5, ptr %i.b, align 8, !noalias !1086
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1086
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1086
  store i64 9, ptr %i.a, align 8, !noalias !1086
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1086
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !1088, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1032
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1021
  %i.bt = load i64, ptr %i.p, align 8, !range !18, !noalias !1032, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !1089, !noalias !1021
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !1022, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1032
  call void @_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1021
  %i.by = load i64, ptr %i.n, align 8, !range !4, !noalias !1032, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1032 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !1022, !noalias !1021, !noundef !5
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !1022, !noalias !1021
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !16

bb.ae:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs1YANDSn9Kib_7git_xet.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !1022, !noalias !1021, !noundef !5
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !1022, !noalias !1021
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !16

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !1090, !noalias !1032
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !1032
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !1091

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1032
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1032
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECs1YANDSn9Kib_7git_xet.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !1092, !noalias !1032
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !1092, !noalias !1032
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs8_NtCsiWcPrHiWZDL_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs1YANDSn9Kib_7git_xet.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !1093, !noalias !1032
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !1093, !noalias !1032
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !1032, !nonnull !5, !align !11, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1032
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !1032
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !1094, !noalias !1095
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1032
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1032
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1032 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_strNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !1021
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !1096, !noalias !1097
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1096, !noalias !1097
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1096, !noalias !1097
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1032
  br label %bb.ag

bb.aq:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1032
  store i64 24, ptr %i.m, align 8, !noalias !1032
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1032
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ad
  %i.cu = add i64 %i.y, 1
  store i64 %i.cu, ptr %i.s, align 8, !alias.scope !1098, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1032
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB24_4read7StrReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1021
  %i.cv = load i8, ptr %i.cc, align 8, !alias.scope !1022, !noalias !1021, !noundef !5
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cc, align 8, !alias.scope !1022, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1032
  %i.cx = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.at unwind label %bb.as, !noalias !1021 ; 5 uses

bb.as:                                            ; preds = %bb.ar
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #14
          to label %bb.bm unwind label %bb.ax, !noalias !1021

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1032
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.cx, ptr %i.cz, align 8, !noalias !1032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1032
  %i.da = load i8, ptr %i.l, align 8, !range !7, !noalias !1032, !noundef !5
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not31.i = icmp eq ptr %i.cx, null
  br i1 %.not31.i, label %.thread114.i, label %bb.aw

.thread114.i:                                     ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1032
  br label %.thread87.i

bb.av:                                            ; preds = %bb.at
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !1032, !nonnull !5, !align !11, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !1032
  store i8 -1, ptr %i.q, align 8, !noalias !1032
  %.not94.i = icmp eq ptr %i.cx, null
  br i1 %.not94.i, label %.thread87.i, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !noalias !1032
  store i8 -1, ptr %i.q, align 8, !noalias !1032
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l), !noalias !1021
  br label %.thread87.i

bb.ax:                                            ; preds = %bb.bb, %bb.as
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !1021
  unreachable

.thread87.i:                                      ; preds = %bb.ay, %bb.aw, %bb.av, %.thread114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1032
  br label %bb.ag

bb.ay:                                            ; preds = %bb.av
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %i.cx), !noalias !1021
  br label %.thread87.i

bb.az:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1032
  store i64 24, ptr %i.j, align 8, !noalias !1032
  %i.dh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1032
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.ah

bb.ba:                                            ; preds = %bb.ae
  %i.dj = add i64 %i.y, 1
  store i64 %i.dj, ptr %i.s, align 8, !alias.scope !1099, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1032
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB24_4read7StrReadEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1021
  %i.dk = load i8, ptr %i.cg, align 8, !alias.scope !1022, !noalias !1021, !noundef !5
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.cg, align 8, !alias.scope !1022, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1032
  %i.dm = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !1021 ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #14
          to label %bb.bm unwind label %bb.ax, !noalias !1021

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1032
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !noalias !1032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1032
  %i.dp = load i8, ptr %i.i, align 8, !range !7, !noalias !1032, !noundef !5
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %.thread116.i, label %bb.bf

.thread116.i:                                     ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1032
  br label %.thread90.i

bb.be:                                            ; preds = %bb.bc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !1032, !nonnull !5, !align !11, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !1032
  store i8 -1, ptr %i.q, align 8, !noalias !1032
  %.not93.i = icmp eq ptr %i.dm, null
  br i1 %.not93.i, label %.thread90.i, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dm, ptr %i.du, align 8, !noalias !1032
  store i8 -1, ptr %i.q, align 8, !noalias !1032
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !1021
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.bg, %bb.bf, %bb.be, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1032
  br label %bb.ag

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %i.dm), !noalias !1021
  br label %.thread90.i

bb.bh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1032
  store i64 10, ptr %i.g, align 8, !noalias !1032
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1032
  br label %bb.bj

bb.bi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1032
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1021
  %i.dw = load i64, ptr %i.o, align 8, !range !18, !noalias !1032, !noundef !5 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.dx, label %bb.bk, label %switch.lookup31

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dv, %bb.bh ]
  %i.ea = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs1YANDSn9Kib_7git_xet(ptr noalias noundef nonnull align 8 %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !1021
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr %i.dy, align 8, !noalias !1032, !nonnull !5, !align !11, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !1021, !noalias !1022
  store i8 -1, ptr %0, align 8, !alias.scope !1021, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1032
  br label %bb.ah

switch.lookup31:                                  ; preds = %bb.bi
  %.sroa.268.0.copyload.i = load i64, ptr %i.dy, align 8, !noalias !1032
  %.sroa.41.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast32 = trunc i64 %i.dw to i24
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33
  %switch.masked35 = trunc i24 %switch.downshift34 to i8
end_hunk_3
