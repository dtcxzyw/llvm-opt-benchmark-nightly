Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.11?download=true
inline.NumInlined: 6091
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field17h8144b1057a097384E":bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h0a9076c06a361dedE.exit": ; preds = %bb.ad
  %i.dw = load ptr, ptr %i.e, align 8, !noalias !611, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

bb.ag:                                            ; preds = %_ZN5prost8encoding6uint325merge17hd867520c83f69c81E.exit53.thread109, %_ZN5prost8encoding6uint325merge17hd867520c83f69c81E.exit53
  %.sroa.0.0.i52112 = phi ptr [ %i.cf, %_ZN5prost8encoding6uint325merge17hd867520c83f69c81E.exit53.thread109 ], [ %i.ci, %_ZN5prost8encoding6uint325merge17hd867520c83f69c81E.exit53 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.i52112, ptr %i.d, align 8, !noalias !612
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @66, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 9)
          to label %"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hc877710c8c3c314fE.exit" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %.val.i85 = load ptr, ptr %i.d, align 8, !noalias !612, !nonnull !12, !noundef !12
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr %.val.i85) #31
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hc877710c8c3c314fE.exit": ; preds = %bb.ag
  %i.dz = load ptr, ptr %i.d, align 8, !noalias !612, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.aj:                                            ; preds = %_ZN5prost8encoding4bool5merge17h140466d6e2863e23E.exit.thread115, %_ZN5prost8encoding4bool5merge17h140466d6e2863e23E.exit
  %.sroa.0.0.i62118 = phi ptr [ %i.co, %_ZN5prost8encoding4bool5merge17h140466d6e2863e23E.exit.thread115 ], [ %i.cr, %_ZN5prost8encoding4bool5merge17h140466d6e2863e23E.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.i62118, ptr %i.c, align 8, !noalias !613
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @66, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @70, i64 noundef 19)
          to label %"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h339e517a1ad097d5E.exit" unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %.val.i86 = load ptr, ptr %i.c, align 8, !noalias !613, !nonnull !12, !noundef !12
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr %.val.i86) #31
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h339e517a1ad097d5E.exit": ; preds = %bb.aj
  %i.ec = load ptr, ptr %i.c, align 8, !noalias !613, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.z

bb.am:                                            ; preds = %_ZN5prost8encoding4bool5merge17h140466d6e2863e23E.exit72.thread121, %_ZN5prost8encoding4bool5merge17h140466d6e2863e23E.exit72
  %.sroa.0.0.i71124 = phi ptr [ %i.cx, %_ZN5prost8encoding4bool5merge17h140466d6e2863e23E.exit72.thread121 ], [ %i.da, %_ZN5prost8encoding4bool5merge17h140466d6e2863e23E.exit72 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0.i71124, ptr %i.b, align 8, !noalias !614
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @66, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @71, i64 noundef 16)
          to label %"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h531eea43a2d274d4E.exit" unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %.val.i87 = load ptr, ptr %i.b, align 8, !noalias !614, !nonnull !12, !noundef !12
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr %.val.i87) #31
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h531eea43a2d274d4E.exit": ; preds = %bb.am
  %i.ef = load ptr, ptr %i.b, align 8, !noalias !614, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.ap:                                            ; preds = %bb.v, %_ZN5prost8encoding9wire_type15check_wire_type17hab53a7b33ce7c252E.exit.i74
  %.sroa.0.0.i81.ph = phi ptr [ %i.dj, %_ZN5prost8encoding9wire_type15check_wire_type17hab53a7b33ce7c252E.exit.i74 ], [ %i.dm, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.i81.ph, ptr %i.a, align 8, !noalias !615
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @66, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 17)
          to label %"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h8c9625de1977f236E.exit" unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %.val.i88 = load ptr, ptr %i.a, align 8, !noalias !615, !nonnull !12, !noundef !12
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr %.val.i88) #31
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN114_$LT$anki_proto..deck_config..deck_configs_for_update..current_deck..Limits$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h8c9625de1977f236E.exit": ; preds = %bb.ap
  %i.ei = load ptr, ptr %i.a, align 8, !noalias !615, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN115_$LT$anki..sync..collection..upload..UploadResponse$u20$as$u20$axum_core..response..into_response..IntoResponse$GT$13into_response17hce411bec6f1c63eeE"(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !guid !619 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !27, !noundef !12
  %.not = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !620
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !620
  %i.d = load i64, ptr %i.a, align 8, !range !29, !noalias !620, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !27, !noalias !620, !noundef !12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit", !prof !15

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.h, align 8, !noalias !620
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #33, !noalias !620
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit": ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !noalias !620, !nonnull !12, !noundef !12 ; 2 uses
  %i.k = icmp ugt i64 %i.g, 1
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !620
  store i16 19279, ptr %i.j, align 1, !noalias !621
  store i64 %i.g, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit", %bb.b
  call void @"_ZN90_$LT$alloc..string..String$u20$as$u20$axum_core..response..into_response..IntoResponse$GT$13into_response17h8a5c6a9d32f08723E"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN116_$LT$anki_proto..import_export..csv_metadata..Deck$u20$as$u20$anki..import_export..text..csv..import..CsvDeckExt$GT$10name_or_id17ha25ddc6d653519d7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 !guid !622 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !26, !noundef !12 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 2
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN119_$LT$anki_proto..import_export..CsvMetadata$u20$as$u20$anki..import_export..text..csv..metadata..CsvMetadataHelpers$GT$11from_config17h614e087e770097dbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) initializes((0, 104), (128, 136), (152, 175)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !623 {
bb.a:
  %i.a = tail call noundef i32 @"_ZN4anki6config6number46_$LT$impl$u20$anki..collection..Collection$GT$14get_config_i3217h6d58e00932eeee9cE"(ptr noundef nonnull align 8 %1, i8 noundef 0) ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.a, 1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp4.i = icmp eq i32 %i.a, 2
  %spec.select.i.i = select i1 %switch.selectcmp4.i, i32 2, i32 %switch.select.i
  %i.b = tail call noundef i32 @"_ZN4anki6config6number46_$LT$impl$u20$anki..collection..Collection$GT$14get_config_i3217h6d58e00932eeee9cE"(ptr noundef nonnull align 8 %1, i8 noundef 1)
  %cond.i = icmp eq i32 %i.b, 1
  %spec.select.i = zext i1 %cond.i to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 0, ptr %i.d, align 4
  store i64 0, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.33.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 174
  store i8 0, ptr %i.g, align 2
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.313.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %spec.select.i.i, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %spec.select.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 -9223372036854775806, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -9223372036854775807, ptr %i.l, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN119_$LT$anki_proto..import_export..CsvMetadata$u20$as$u20$anki..import_export..text..csv..metadata..CsvMetadataHelpers$GT$12meta_columns17h1597d9ed6d59f7eeE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !624 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h6d5ad0b7c4dd3306E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load i64, ptr %i.b, align 8, !range !30, !noundef !12
  %cond = icmp eq i64 %i.c, -9223372036854775807
  br i1 %cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !range !26, !noundef !12
  %cond5 = icmp eq i64 %i.e, -9223372036854775808
  br i1 %cond5, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = load i32, ptr %i.f, align 8, !noundef !12
  %i.h = zext i32 %i.g to i64
  %i.i = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h0736d55b80cf586dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.h)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd5cd0656d8a17dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %"_ZN4core3ptr70drop_in_place$LT$std..collections..hash..set..HashSet$LT$usize$GT$$GT$17hdb76ae3daaa54e44E.exit" unwind label %bb.k

bb.e:                                             ; preds = %bb.b, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.l = load i32, ptr %i.k, align 4, !noundef !12 ; 2 uses
  %.not3 = icmp eq i32 %i.l, 0
  br i1 %.not3, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load i32, ptr %i.m, align 8, !noundef !12
  %i.o = zext i32 %i.n to i64
  %i.p = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h0736d55b80cf586dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.o)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = load i32, ptr %i.q, align 8, !noundef !12 ; 2 uses
  %.not4 = icmp eq i32 %i.r, 0
  br i1 %.not4, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.s = zext i32 %i.l to i64
  %i.t = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h0736d55b80cf586dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.s)
          to label %bb.g unwind label %bb.d       ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.u = zext i32 %i.r to i64
  %i.v = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h0736d55b80cf586dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.u)
          to label %bb.i unwind label %bb.d       ; 0 uses

bb.k:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr70drop_in_place$LT$std..collections..hash..set..HashSet$LT$usize$GT$$GT$17hdb76ae3daaa54e44E.exit": ; preds = %bb.d
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN119_$LT$anki_proto..import_export..CsvMetadata$u20$as$u20$anki..import_export..text..csv..metadata..CsvMetadataHelpers$GT$20field_source_columns17hb0a46cb912c917d7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 !guid !628 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !26, !alias.scope !629, !noundef !12
  %.not.i = icmp eq i64 %i.d, -9223372036854775807
  %..i = select i1 %.not.i, ptr null, ptr %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !630
  call void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$snafu..OptionExt$LT$T$GT$$GT$16whatever_context17h72c133ebe1cec239E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %..i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76), !noalias !631
  %i.e = load i64, ptr %i.a, align 8, !range !16, !noalias !630, !noundef !12 ; 2 uses
  %.not2.i = icmp eq i64 %i.e, 4
  br i1 %.not2.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9.8..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !630
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.211.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !630, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !630
  %i.i = load i64, ptr %i.h, align 8, !range !27, !noundef !12
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !12
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hf01efb677d05c194E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN119_$LT$anki_proto..import_export..CsvMetadata$u20$as$u20$anki..import_export..text..csv..metadata..CsvMetadataHelpers$GT$4deck17ha87c60957cab755bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 !guid !632 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !30, !noundef !12
  %.not = icmp eq i64 %i.c, -9223372036854775806
  %. = select i1 %.not, ptr null, ptr %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$snafu..OptionExt$LT$T$GT$$GT$16whatever_context17hf85030d951ec4db7E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %., ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @74, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.d = load i64, ptr %i.a, align 8, !range !16, !noundef !12
  %.not2 = icmp eq i64 %i.d, 4
  br i1 %.not2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !13, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -9223372036854775773, %bb.c ], [ -9223372036854775808, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN119_$LT$anki_proto..import_export..CsvMetadata$u20$as$u20$anki..import_export..text..csv..metadata..CsvMetadataHelpers$GT$8notetype17he91798d8960b8f93E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 !guid !633 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !26, !noundef !12
  %.not = icmp eq i64 %i.c, -9223372036854775807
  %. = select i1 %.not, ptr null, ptr %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$snafu..OptionExt$LT$T$GT$$GT$16whatever_context17h72c133ebe1cec239E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %., ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.d = load i64, ptr %i.a, align 8, !range !16, !noundef !12
  %.not2 = icmp eq i64 %i.d, 4
  br i1 %.not2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !13, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -9223372036854775773, %bb.c ], [ -9223372036854775808, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 2) i32 @"_ZN127_$LT$anki_proto..import_export..csv_metadata..MatchScope$u20$as$u20$anki..import_export..text..csv..metadata..MatchScopeExt$GT$11from_config17h9cc73c144687c377E"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !634 {
bb.a:
  %i.a = tail call noundef i32 @"_ZN4anki6config6number46_$LT$impl$u20$anki..collection..Collection$GT$14get_config_i3217h6d58e00932eeee9cE"(ptr noundef nonnull align 8 %0, i8 noundef 1)
  %cond = icmp eq i32 %i.a, 1
  %spec.select = zext i1 %cond to i32
  ret i32 %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN12futures_util6stream10try_stream12TryStreamExt19try_poll_next_unpin17h5a2f051b1025ceebE(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(256) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !guid !635 {
bb.a:
  tail call void @"_ZN69_$LT$multer..field..Field$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h8f0f94b8734ba391E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(256) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef i64 @_ZN12sharded_slab3tid12Registration8register17hd802ab85183a5c3fE(ptr nofree noundef nonnull writeonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !654 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = tail call noundef nonnull align 8 ptr @"_ZN71_$LT$sharded_slab..tid..REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5d758f544697f75eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN12sharded_slab3tid8REGISTRY17h32c79328de34a5c0E)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h399717aa6abce4d8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.l)
  %i.m = load i64, ptr %i.j, align 8, !range !29, !noundef !12
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12, !align !13, !noundef !12 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !21, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !12
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = invoke { i64, i64 } @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h08370d5bd578ca50E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.j, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.ah, %bb.j ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi i1 [ %i.ai, %bb.j ], [ false, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br i1 %i.s, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.aa = and i64 %i.z, 9223372036854775807
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.ac, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.y monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.ad = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ae = icmp eq i32 %i.ad, 2
  br i1 %i.ae, label %bb.h, label %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h2e910b3e4467a0b1E.exit", !prof !15

bb.h:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 8 %i.p)
  br label %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h2e910b3e4467a0b1E.exit"

bb.i:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$17hc3bf290d70768a3bE"(ptr nonnull align 8 %i.p, i8 %i.r) #31
          to label %common.resume unwind label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.ag = extractvalue { i64, i64 } %i.x, 0
  %i.ah = extractvalue { i64, i64 } %i.x, 1
  %i.ai = trunc nuw i64 %i.ag to i1
  br label %bb.d

bb.k:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.v, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.bk, %bb.v ], [ %i.bk, %bb.u ]
  resume { ptr, i32 } %common.resume.op

"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h2e910b3e4467a0b1E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, %bb.h
  br i1 %.sroa.0.0.i, label %bb.aa, label %bb.p

bb.l:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !655, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i = load i8, ptr %i.al, align 8, !range !21, !alias.scope !655, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.an = trunc nuw i8 %.val1.i to i1
  br i1 %i.an, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !655
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.ar = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE(), !noalias !655
  br i1 %i.ar, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store atomic i8 1, ptr %i.am monotonic, align 4, !noalias !655
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.as = atomicrmw xchg ptr %.val.i, i32 0 release, align 4, !noalias !655
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$17hc3bf290d70768a3bE.exit.sink.split.i", label %"_ZN4core3ptr282drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$$GT$$GT$17hf0fd7a0fb88ed97dE.exit", !prof !15

"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$17hc3bf290d70768a3bE.exit.sink.split.i": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %.val.i), !noalias !655
  br label %"_ZN4core3ptr282drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$$GT$$GT$17hf0fd7a0fb88ed97dE.exit"

"_ZN4core3ptr282drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$$GT$$GT$17hf0fd7a0fb88ed97dE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i, %"_ZN4core3ptr117drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$17hc3bf290d70768a3bE.exit.sink.split.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr282drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$C$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$usize$GT$$GT$$GT$$GT$$GT$17hf0fd7a0fb88ed97dE.exit", %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h2e910b3e4467a0b1E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.au = call noundef nonnull align 8 ptr @"_ZN71_$LT$sharded_slab..tid..REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5d758f544697f75eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN12sharded_slab3tid8REGISTRY17h32c79328de34a5c0E)
  %i.av = atomicrmw add ptr %i.au, i64 1 acq_rel, align 8 ; 3 uses
  store i64 %i.av, ptr %i.i, align 8
  %i.aw = icmp ugt i64 %i.av, 8191
  br i1 %i.aw, label %bb.q, label %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h1c825346345b9912E.exit", !prof !15

bb.q:                                             ; preds = %bb.p
  %i.ax = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.ba, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @78, ptr %i.g, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 32, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.45.0..sroa_idx.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.bc, align 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.49.0..sroa_idx.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @79, ptr %i.bd, align 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.413.0..sroa_idx.i, align 8
  store ptr @84, ptr %i.h, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 4, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 3, ptr %i.bh, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #33
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bi = call noundef nonnull ptr @_ZN3std6thread7current7current17hdd4718b50bd0f412E()
  store ptr %i.bi, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bj = invoke { ptr, i64 } @_ZN3std6thread6Thread4name17hbf355156e3fcd8f3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.w unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %bb.w, %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.bl = load ptr, ptr %i.e, align 8, !alias.scope !660, !nonnull !12, !noundef !12
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 release, align 8, !noalias !660
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.v, label %common.resume

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h26daa406d6b62d5aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %common.resume unwind label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bo = extractvalue { ptr, i64 } %i.bj, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null               ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bj, 1
  %spec.select.i = select i1 %.not.i, ptr @87, ptr %i.bo
  %spec.select35.i = select i1 %.not.i, i64 9, i64 %i.bp
  store ptr %spec.select.i, ptr %i.c, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select35.i, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @78, ptr %i.b, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 32, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.417.0..sroa_idx.i, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.bs, align 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.421.0..sroa_idx.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.bt, align 8
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.425.0..sroa_idx.i, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @79, ptr %i.bu, align 8
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.429.0..sroa_idx.i, align 8
  store ptr @91, ptr %i.d, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 5, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %i.by, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h591559c675a6c685E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !665, !nonnull !12, !noundef !12
  %i.ca = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !665
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.y, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h7c39776f29106232E.exit32.i"

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h26daa406d6b62d5aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h7c39776f29106232E.exit32.i"

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h7c39776f29106232E.exit32.i": ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre.i = load i64, ptr %i.i, align 8
  br label %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h1c825346345b9912E.exit"

bb.z:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h1c825346345b9912E.exit": ; preds = %bb.p, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h7c39776f29106232E.exit32.i"
  %i.cd = phi i64 [ %i.av, %bb.p ], [ %.pre.i, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h7c39776f29106232E.exit32.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h2e910b3e4467a0b1E.exit", %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h1c825346345b9912E.exit"
  %.sroa.0.0 = phi i64 [ %i.cd, %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h1c825346345b9912E.exit" ], [ %.sroa.3.0.i, %"_ZN12sharded_slab3tid12Registration8register28_$u7b$$u7b$closure$u7d$$u7d$17h2e910b3e4467a0b1E.exit" ] ; 2 uses
  store i64 1, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ce, align 8
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12tracing_core8callsite8Callsite15private_type_id17hf2869adc7e78815eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 !guid !666 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @92, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 3) i32 @"_ZN135_$LT$anki_proto..import_export..csv_metadata..DupeResolution$u20$as$u20$anki..import_export..text..csv..metadata..DupeResolutionExt$GT$11from_config17hba48b3dce948f50cE"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !667 {
bb.a:
  %i.a = tail call noundef i32 @"_ZN4anki6config6number46_$LT$impl$u20$anki..collection..Collection$GT$14get_config_i3217h6d58e00932eeee9cE"(ptr noundef nonnull align 8 %0, i8 noundef 0) ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.a, 1
  %switch.select = zext i1 %switch.selectcmp to i32
  %switch.selectcmp4 = icmp eq i32 %i.a, 2
  %spec.select.i = select i1 %switch.selectcmp4, i32 2, i32 %switch.select
  ret i32 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$12consume_iter17h488cc3b35a6cdbc1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !668 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !31, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @"_ZN102_$LT$rayon..iter..extend..ListVecFolder$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$12consume_iter17h03c992959fdb621dE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$12consume_iter17h54c498387a9e4fd8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !669 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %1, align 8, !nonnull !12, !align !31, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_ZN5rayon4iter8plumbing6Folder12consume_iter17h3f1ca69796cb33cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$12consume_iter17hb5394280352662dfE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !670 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %1, align 8, !nonnull !12, !align !31, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_ZN5rayon4iter8plumbing6Folder12consume_iter17h2797217af2ea2619E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$12consume_iter17hd313e6d57ee95f9aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !671 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %1, align 8, !nonnull !12, !align !31, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_ZN5rayon4iter8plumbing6Folder12consume_iter17h0c3d1aeef5fb0764E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$12consume_iter17hd351e5cb8a8a9dd4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !672 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !31, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @"_ZN102_$LT$rayon..iter..extend..ListVecFolder$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$12consume_iter17he11b2cd3e1a5d329E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$12consume_iter17hfecf0a2127f833baE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !673 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !align !31, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @"_ZN102_$LT$rayon..iter..extend..ListVecFolder$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$12consume_iter17hcc85ff3201549842E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$7consume17h80c491d7740e26c9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !674 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 2 uses
  %i.d = load i32, ptr %2, align 4, !range !28, !noundef !12
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @"_ZN113_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$T$GT$$GT$7consume17h1007d2bb1a9ca314E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !nonnull !12, !align !31, !noundef !12
  store atomic i8 1, ptr %i.h monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN136_$LT$rayon..iter..while_some..WhileSomeFolder$LT$C$GT$$u20$as$u20$rayon..iter..plumbing..Folder$LT$core..option..Option$LT$T$GT$$GT$$GT$7consume17h9c9cc84962563f26E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !675 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 2 uses
  %i.d = load i32, ptr %2, align 4, !range !28, !noundef !12
  %i.e = trunc nuw i32 %i.d to i1
end_hunk_0
