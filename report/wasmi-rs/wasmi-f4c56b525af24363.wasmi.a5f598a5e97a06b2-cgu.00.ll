Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.00?download=true
inline.NumInlined: 5902
inline.NumDeleted: 1874
loop-unroll.NumCompletelyUnrolled: 185
loop-unroll.NumUnrolled: 185
begin_hunk_0_@_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor33i64_load_extend8_mem0_offset16_rs:bb.a
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14216
  store ptr %i.j, ptr %i.h, align 8, !noalias !14216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14216
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep29 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.r = load i8, ptr %i.g, align 8, !range !6, !noalias !14216, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14216
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !6, !noalias !14216, !noundef !4
  store i8 %i.u, ptr %i.f, align 1, !noalias !14216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14216
  store ptr %i.f, ptr %i.e, align 8, !noalias !14216
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14216
  %i.v = load ptr, ptr %i.h, align 8, !noalias !14216, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14217
  store ptr %i.v, ptr %i.d, align 8, !noalias !14217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14217
  invoke void @_RINvXs6_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_18LoadOpMem0Offset16INtNtBa_9primitive3RegxENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2f_2Ip6decode9IpDecoderEB2n_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.w = load i8, ptr %i.c, align 4, !range !6, !noalias !14217, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14217
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !6, !noalias !14217, !noundef !4
  store i8 %i.z, ptr %i.b, align 1, !noalias !14217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14217
  store ptr %i.b, ptr %i.a, align 8, !noalias !14217
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep29, %bb.c ]
  %.sink = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.c ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !14216
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.f, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !14218
  unreachable

bb.e:                                             ; preds = %.noexc2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !14217, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i16, ptr %i.ad, align 4, !noalias !14217, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14217
  %i.af = load ptr, ptr %i.d, align 8, !noalias !14217, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14217
  %i.ag = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %reass.sub = sub i64 %i.ah, %i.ag
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.ai = add i64 %.sroa.0.0.i, %i.ag
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = invoke noundef i64 @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getyEBe_(ptr noundef %i.l, i32 noundef %i.ac)
          to label %bb.f unwind label %bb.d, !noalias !14218

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14218
  %i.al = zext i16 %i.ae to i64
  invoke void @_RINvNtNtCs5zeGauAcNNa_10wasmi_core6memory6access11load_extendxaECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, i64 noundef %i.ak, i64 noundef %i.al)
          to label %bb.g unwind label %bb.d, !noalias !14218

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %i.i, align 8, !range !6, !alias.scope !14219, !noalias !14220, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !range !18, !alias.scope !14219, !noalias !14220, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14218
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !14219, !noalias !14220, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14218
  store ptr %i.aj, ptr %0, align 8
  store i64 %i.ar, ptr %i.q, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0 = phi i8 [ %i.ap, %bb.h ], [ 0, %bb.i ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 13) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor33i64_store_wrap16_mem0_offset16_ri(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14227
  store ptr %i.h, ptr %i.g, align 8, !noalias !14227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14227
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 8, !range !6, !noalias !14227, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14227
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !6, !noalias !14227, !noundef !4
  store i8 %i.r, ptr %i.e, align 1, !noalias !14227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14227
  store ptr %i.e, ptr %i.d, align 8, !noalias !14227
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14227
  %i.s = load ptr, ptr %i.g, align 8, !noalias !14227, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14228
  store ptr %i.s, ptr %i.c, align 8, !noalias !14228
  %i.t = invoke i48 @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxEsENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1Z_2Ip6decode9IpDecoderEB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc2 unwind label %bb.d    ; 4 uses

.noexc2:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.u = trunc i48 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc2
  %.sroa.05.1.extract.shift.i.i = lshr i48 %i.t, 8
  %.sroa.05.1.extract.trunc.i.i = trunc i48 %.sroa.05.1.extract.shift.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14228
  store i8 %.sroa.05.1.extract.trunc.i.i, ptr %i.b, align 1, !noalias !14228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14228
  store ptr %i.b, ptr %i.a, align 8, !noalias !14228
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep16, %bb.c ]
  %.sink = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.c ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !14227
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !14229
  unreachable

bb.e:                                             ; preds = %.noexc2
  %i.w = load ptr, ptr %i.c, align 8, !noalias !14228, !noundef !4
  %i.x = lshr i48 %i.t, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14228
  %sum.shift.i = lshr i48 %i.t, 32
  %.sroa.4.10.extract.trunc.i = zext nneg i48 %sum.shift.i to i64
  %i.y = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %reass.sub = sub i64 %i.z, %i.y
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.aa = add i64 %.sroa.0.0.i, %i.y
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = and i48 %i.x, 65535
  %i.ad = zext nneg i48 %i.ac to i64
  %sext = shl nuw i64 %.sroa.4.10.extract.trunc.i, 48
  %2 = ashr exact i64 %sext, 48
  %i.ae = invoke noundef i8 @_RINvNtNtCs5zeGauAcNNa_10wasmi_core6memory6access10store_wrapxsECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull %i.j, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.ad, i64 noundef %2)
          to label %bb.f unwind label %bb.d, !noalias !14229 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4exec33i64_store_wrap16_mem0_offset16_ri.exit, label %bb.g

_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4exec33i64_store_wrap16_mem0_offset16_ri.exit: ; preds = %bb.f
  store ptr %i.ab, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4exec33i64_store_wrap16_mem0_offset16_ri.exit
  ret i8 %i.ae
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 13) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor33i64_store_wrap16_mem0_offset16_rs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14236
  store ptr %i.i, ptr %i.h, align 8, !noalias !14236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14236
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.r = load i8, ptr %i.g, align 8, !range !6, !noalias !14236, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14236
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !6, !noalias !14236, !noundef !4
  store i8 %i.u, ptr %i.f, align 1, !noalias !14236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14236
  store ptr %i.f, ptr %i.e, align 8, !noalias !14236
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14236
  %i.v = load ptr, ptr %i.h, align 8, !noalias !14236, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14237
  store ptr %i.v, ptr %i.d, align 8, !noalias !14237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14237
  invoke void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16INtNtBa_9primitive3RegxENtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2g_2Ip6decode9IpDecoderEB2o_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.w = load i8, ptr %i.c, align 4, !range !6, !noalias !14237, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14237
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !6, !noalias !14237, !noundef !4
  store i8 %i.z, ptr %i.b, align 1, !noalias !14237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14237
  store ptr %i.b, ptr %i.a, align 8, !noalias !14237
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep17, %bb.c ]
  %.sink = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.c ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !14236
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.f, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !14238
  unreachable

bb.e:                                             ; preds = %.noexc2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !14237, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i16, ptr %i.ad, align 4, !noalias !14237, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14237
  %i.af = load ptr, ptr %i.d, align 8, !noalias !14237, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14237
  %i.ag = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %reass.sub = sub i64 %i.ah, %i.ag
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.ai = add i64 %.sroa.0.0.i, %i.ag
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = invoke noundef i16 @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getsEBe_(ptr noundef %i.k, i32 noundef %i.ac)
          to label %bb.f unwind label %bb.d, !noalias !14238

bb.f:                                             ; preds = %bb.e
  %i.al = zext i16 %i.ae to i64
  %i.am = sext i16 %i.ak to i64
  %i.an = invoke noundef i8 @_RINvNtNtCs5zeGauAcNNa_10wasmi_core6memory6access10store_wrapxsECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull %i.m, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.al, i64 noundef %i.am)
          to label %bb.g unwind label %bb.d, !noalias !14238 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4exec33i64_store_wrap16_mem0_offset16_rs.exit, label %bb.h

_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4exec33i64_store_wrap16_mem0_offset16_rs.exit: ; preds = %bb.g
  store ptr %i.aj, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4exec33i64_store_wrap16_mem0_offset16_rs.exit
  ret i8 %i.an
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 13) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor33i64_store_wrap16_mem0_offset16_si(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14245
  store ptr %i.i, ptr %i.h, align 8, !noalias !14245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14245
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep14 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.p = load i8, ptr %i.g, align 8, !range !6, !noalias !14245, !noundef !4
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14245
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noalias !14245, !noundef !4
  store i8 %i.s, ptr %i.f, align 1, !noalias !14245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14245
  store ptr %i.f, ptr %i.e, align 8, !noalias !14245
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14245
  %i.t = load ptr, ptr %i.h, align 8, !noalias !14245, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14246
  store ptr %i.t, ptr %i.d, align 8, !noalias !14246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14246
  invoke void @_RINvXs9_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_19StoreOpMem0Offset16NtNtBa_5index4SlotsENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1T_2Ip6decode9IpDecoderEB21_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.u = load i8, ptr %i.c, align 4, !range !6, !noalias !14246, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14246
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.x = load i8, ptr %i.w, align 1, !range !6, !noalias !14246, !noundef !4
  store i8 %i.x, ptr %i.b, align 1, !noalias !14246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14246
  store ptr %i.b, ptr %i.a, align 8, !noalias !14246
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep14, %bb.c ]
  %.sink = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.c ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !14245
end_hunk_0
