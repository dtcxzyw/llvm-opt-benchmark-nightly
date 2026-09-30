Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.00?download=true
inline.NumInlined: 5902
inline.NumDeleted: 1874
loop-unroll.NumCompletelyUnrolled: 185
loop-unroll.NumUnrolled: 185
begin_hunk_0_@_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor14u8x16_avgr_sss:bb.a
  %i.ag = sub nuw nsw <16 x i16> %i.ae, %i.af
  %i.ah = trunc <16 x i16> %i.ag to <16 x i8>
  store <16 x i8> %i.ah, ptr %i.i, align 16, !noalias !7672
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3setNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noundef %i.n, i32 noundef %.sroa.037.0.copyload, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(16) %i.i)
          to label %bb.h unwind label %bb.d, !noalias !7672

bb.h:                                             ; preds = %bb.g
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = ptrtoint ptr %i.l to i64                ; 2 uses
  %reass.sub = sub i64 %i.ai, %i.aj
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.ak = add i64 %.sroa.0.0.i, %i.aj
  %i.al = inttoptr i64 %i.ak to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.al, ptr %0, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor15call_indirect_r(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [20 x i8], align 4                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [64 x i8], align 16               ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7698
  %i.y = load <2 x ptr>, ptr %0, align 8
  %i.z = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  store <2 x ptr> %i.y, ptr %i.l, align 16, !alias.scope !7699, !noalias !7698
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.aa, align 16, !alias.scope !7699, !noalias !7698
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store i64 %i.p, ptr %i.ab, align 8, !alias.scope !7699, !noalias !7698
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store double %i.r, ptr %i.ac, align 16, !alias.scope !7699, !noalias !7698
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 %i.t, ptr %i.ad, align 8, !alias.scope !7699, !noalias !7698
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  store float %i.v, ptr %i.ae, align 8, !alias.scope !7699, !noalias !7698
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  store double %i.x, ptr %i.af, align 16, !alias.scope !7699, !noalias !7698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7701
  store ptr %i.z, ptr %i.k, align 8, !noalias !7701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7701
  %i.ag = bitcast double %i.r to i64              ; 2 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.h, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !7702
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.ai = load i8, ptr %i.j, align 8, !range !6, !noalias !7701, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.c, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7701
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !6, !noalias !7701, !noundef !4
  store i8 %i.al, ptr %i.i, align 1, !noalias !7701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7701
  store ptr %i.i, ptr %i.h, align 8, !noalias !7701
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7701
  %i.am = load ptr, ptr %i.k, align 8, !noalias !7701, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7703
  store ptr %i.am, ptr %i.g, align 8, !noalias !7703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7703
  invoke void @_RINvXsg_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_12CallIndirectNtNtBa_5index9TableAddrINtNtBa_9primitive3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2e_2Ip6decode9IpDecoderEB2m_(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.an = load i8, ptr %i.f, align 4, !range !6, !noalias !7703, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7703
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !6, !noalias !7703, !noundef !4
  store i8 %i.aq, ptr %i.e, align 1, !noalias !7703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7703
  store ptr %i.e, ptr %i.d, align 8, !noalias !7703
  br label %.invoke

bb.e:                                             ; preds = %.noexc5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.030.0.copyload = load i32, ptr %i.ar, align 4, !noalias !7701
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.431.0.copyload = load i16, ptr %.sroa.431.0..sroa_idx, align 4, !noalias !7701
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 4, !noalias !7701 ; 3 uses
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.734.0.copyload = load i32, ptr %.sroa.734.0..sroa_idx, align 4, !noalias !7701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7703
  %i.as = load ptr, ptr %i.g, align 8, !noalias !7703, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7703
  %i.at = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %reass.sub = sub i64 %i.au, %i.at
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.av = add i64 %.sroa.0.0.i, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.l, align 16, !alias.scope !7700, !noalias !7704
  call void @llvm.experimental.noalias.scope.decl(metadata !7705)
  call void @llvm.experimental.noalias.scope.decl(metadata !7706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7707
  store i32 %.sroa.633.0.copyload, ptr %i.b, align 4, !noalias !7707
  %i.ax = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ay = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = load i32, ptr %i.ax, align 8, !noalias !7707, !noundef !4
  %.not.i.not.i.i.i.i = icmp ult i32 %.sroa.633.0.copyload, %i.az
  br i1 %.not.i.not.i.i.i.i, label %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7707
  store ptr %i.b, ptr %i.a, align 8, !noalias !7707
  br label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.d, %bb.f
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.c ], [ %.sink.sroa.gep53, %bb.d ], [ %.sink.sroa.gep54, %bb.f ]
  %.sink = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.d ], [ %i.a, %bb.f ]
  %_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.sink = phi ptr [ @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, %bb.c ], [ @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, %bb.d ], [ @_RNvXso_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB5_9TableAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, %bb.f ]
  %i.ba = phi ptr [ @0, %bb.c ], [ @0, %bb.d ], [ @41, %bb.f ]
  %i.bb = phi ptr [ @2, %bb.c ], [ @2, %bb.d ], [ @35, %bb.f ]
  store ptr %_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.sink, ptr %.sink.sroa.phi, align 8, !noalias !4
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull %i.ba, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb) #15
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i: ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bd = zext i32 %.sroa.633.0.copyload to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7707
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !7707, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7708)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !7708, !noalias !7707, !noundef !4
  %i.bi = icmp ult i64 %i.t, %i.bh
  br i1 %i.bi, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !7708, !noalias !7707, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.t
  %i.bm = load i32, ptr %i.bl, align 4, !noalias !7709, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7707
  %.not23.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not23.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !7710, !noalias !7711, !noundef !4 ; 2 uses
  store i32 %i.bm, ptr %i.c, align 4, !noalias !7707
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !noalias !7707
  %i.bq = invoke noundef nonnull ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_ptr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc9 unwind label %bb.b    ; 3 uses

.noexc9:                                          ; preds = %bb.h
  %i.br = load i64, ptr %i.bq, align 8, !range !5, !noalias !7711, !noundef !4
  %2 = trunc nuw i64 %i.br to i1
  %3 = select i1 %2, i64 28, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %3
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !7711, !noundef !4
  %.not25.i.i = icmp eq i32 %i.bt, %.sroa.734.0.copyload
  br i1 %.not25.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc9, %bb.g
  %.sink.i.i = phi i8 [ 9, %.noexc9 ], [ 4, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7707
  br label %bb.l

bb.j:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7707
  %i.bu = invoke fastcc noundef i8 @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4argsNtB2_4Args22call_wasm_or_host_func(ptr noalias nofree noundef align 8 dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i32 noundef %i.bm, i32 noundef %i.bo, ptr noundef nonnull %i.bq, i32 noundef %.sroa.030.0.copyload, i16 noundef %.sroa.431.0.copyload)
          to label %bb.k unwind label %bb.b, !noalias !7702 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i, %bb.k
  %.sroa.6.0.ph = phi i8 [ %i.bu, %bb.k ], [ 3, %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i ], [ %.sink.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7698
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.sroa.524.0.copyload = load ptr, ptr %i.aa, align 16, !noalias !7698
  %.sroa.625.0.copyload = load i64, ptr %i.ab, align 8, !noalias !7698
  %.sroa.7.0.copyload = load double, ptr %i.ac, align 16, !noalias !7698
  %.sroa.826.0.copyload = load i64, ptr %i.ad, align 8, !noalias !7698
  %.sroa.927.0.copyload = load double, ptr %i.af, align 16, !noalias !7698
  %.sroa.1028.0.copyload = load float, ptr %i.ae, align 8, !noalias !7698
  %i.bv = load <2 x ptr>, ptr %i.l, align 16, !noalias !7698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7698
  store <2 x ptr> %i.bv, ptr %0, align 8
  store ptr %.sroa.524.0.copyload, ptr %i.m, align 8
  store i64 %.sroa.625.0.copyload, ptr %i.o, align 8
  store double %.sroa.7.0.copyload, ptr %i.q, align 8
  store i64 %.sroa.826.0.copyload, ptr %i.s, align 8
  store float %.sroa.1028.0.copyload, ptr %i.u, align 8
  store double %.sroa.927.0.copyload, ptr %i.w, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi i8 [ %.sroa.6.0.ph, %bb.l ], [ 0, %bb.m ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor15call_indirect_s(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [24 x i8], align 4                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [64 x i8], align 16               ; 14 uses
  %i.m = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7731
  store ptr %i.m, ptr %i.l, align 16, !alias.scope !7732, !noalias !7731
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ab = load <2 x ptr>, ptr %i.n, align 8
  %i.ac = load ptr, ptr %i.n, align 8, !noundef !4
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !alias.scope !7732, !noalias !7731
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store i64 %i.q, ptr %i.ad, align 8, !alias.scope !7732, !noalias !7731
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store double %i.s, ptr %i.ae, align 16, !alias.scope !7732, !noalias !7731
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 %i.u, ptr %i.af, align 8, !alias.scope !7732, !noalias !7731
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  store float %i.w, ptr %i.ag, align 8, !alias.scope !7732, !noalias !7731
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  store double %i.y, ptr %i.ah, align 16, !alias.scope !7732, !noalias !7731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7733)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7734
  store ptr %i.m, ptr %i.k, align 8, !noalias !7734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7734
  %i.ai = bitcast double %i.s to i64              ; 2 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.e, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !7735
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.ak = load i8, ptr %i.j, align 8, !range !6, !noalias !7734, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.c, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7734
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !6, !noalias !7734, !noundef !4
  store i8 %i.an, ptr %i.i, align 1, !noalias !7734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7734
  store ptr %i.i, ptr %i.h, align 8, !noalias !7734
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7734
  %i.ao = load ptr, ptr %i.k, align 8, !noalias !7734, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7736
  store ptr %i.ao, ptr %i.g, align 8, !noalias !7736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7736
  invoke void @_RINvXsg_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_12CallIndirectNtNtBa_5index9TableAddrNtB13_4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB21_2Ip6decode9IpDecoderEB29_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.ap = load i8, ptr %i.f, align 4, !range !6, !noalias !7736, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7736
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !6, !noalias !7736, !noundef !4
  store i8 %i.as, ptr %i.e, align 1, !noalias !7736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7736
  store ptr %i.e, ptr %i.d, align 8, !noalias !7736
  br label %.invoke

bb.e:                                             ; preds = %.noexc5
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.032.0.copyload = load i32, ptr %i.at, align 4, !noalias !7734
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.433.0.copyload = load i16, ptr %.sroa.433.0..sroa_idx, align 4, !noalias !7734
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.635.0.copyload = load i32, ptr %.sroa.635.0..sroa_idx, align 4, !noalias !7734 ; 3 uses
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.736.0.copyload = load i32, ptr %.sroa.736.0..sroa_idx, align 4, !noalias !7734
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.837.0.copyload = load i32, ptr %.sroa.837.0..sroa_idx, align 4, !noalias !7734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7736
  %i.au = load ptr, ptr %i.g, align 8, !noalias !7736, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7736
  %i.av = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %reass.sub = sub i64 %i.aw, %i.av
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.ax = add i64 %.sroa.0.0.i, %i.av
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.l, align 16, !alias.scope !7733, !noalias !7737
  call void @llvm.experimental.noalias.scope.decl(metadata !7738)
  call void @llvm.experimental.noalias.scope.decl(metadata !7739)
  %i.az = invoke noundef i64 @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getyEBe_(ptr noundef %i.ac, i32 noundef %.sroa.837.0.copyload)
          to label %.noexc8 unwind label %bb.b    ; 2 uses

.noexc8:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7740
  store i32 %.sroa.635.0.copyload, ptr %i.b, align 4, !noalias !7740
  %i.ba = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.bb = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %i.bb)
  %i.bc = load i32, ptr %i.ba, align 8, !noalias !7740, !noundef !4
  %.not.i.not.i.i.i.i = icmp ult i32 %.sroa.635.0.copyload, %i.bc
  br i1 %.not.i.not.i.i.i.i, label %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7740
  store ptr %i.b, ptr %i.a, align 8, !noalias !7740
  br label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.d, %bb.f
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.c ], [ %.sink.sroa.gep56, %bb.d ], [ %.sink.sroa.gep57, %bb.f ]
  %.sink = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.d ], [ %i.a, %bb.f ]
  %_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.sink = phi ptr [ @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, %bb.c ], [ @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, %bb.d ], [ @_RNvXso_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB5_9TableAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, %bb.f ]
  %i.bd = phi ptr [ @0, %bb.c ], [ @0, %bb.d ], [ @41, %bb.f ]
  %i.be = phi ptr [ @2, %bb.c ], [ @2, %bb.d ], [ @35, %bb.f ]
  store ptr %_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.sink, ptr %.sink.sroa.phi, align 8, !noalias !4
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull %i.bd, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #15
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i: ; preds = %.noexc8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bg = zext i32 %.sroa.635.0.copyload to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7740
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !7740, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7741)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !7741, !noalias !7740, !noundef !4
  %i.bl = icmp ult i64 %i.az, %i.bk
  br i1 %i.bl, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !7741, !noalias !7740, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.az
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !7742, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7740
  %.not23.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not23.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.br = load i32, ptr %i.bq, align 8, !alias.scope !7743, !noalias !7744, !noundef !4 ; 2 uses
  store i32 %i.bp, ptr %i.c, align 4, !noalias !7740
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !noalias !7740
  %i.bt = invoke noundef nonnull ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_ptr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc10 unwind label %bb.b   ; 3 uses

.noexc10:                                         ; preds = %bb.h
  %i.bu = load i64, ptr %i.bt, align 8, !range !5, !noalias !7744, !noundef !4
  %2 = trunc nuw i64 %i.bu to i1
  %3 = select i1 %2, i64 28, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %3
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !7744, !noundef !4
  %.not25.i.i = icmp eq i32 %i.bw, %.sroa.736.0.copyload
  br i1 %.not25.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc10, %bb.g
  %.sink.i.i = phi i8 [ 9, %.noexc10 ], [ 4, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7740
  br label %bb.l

bb.j:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7740
  %i.bx = invoke fastcc noundef i8 @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4argsNtB2_4Args22call_wasm_or_host_func(ptr noalias nofree noundef align 8 dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i32 noundef %i.bp, i32 noundef %i.br, ptr noundef nonnull %i.bt, i32 noundef %.sroa.032.0.copyload, i16 noundef %.sroa.433.0.copyload)
          to label %bb.k unwind label %bb.b, !noalias !7735 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i, %bb.k
  %.sroa.6.0.ph = phi i8 [ %i.bx, %bb.k ], [ 3, %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i ], [ %.sink.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7731
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.sroa.525.0.copyload = load ptr, ptr %i.aa, align 16, !noalias !7731
  %.sroa.626.0.copyload = load i64, ptr %i.ad, align 8, !noalias !7731
  %.sroa.727.0.copyload = load double, ptr %i.ae, align 16, !noalias !7731
  %.sroa.828.0.copyload = load i64, ptr %i.af, align 8, !noalias !7731
  %.sroa.929.0.copyload = load double, ptr %i.ah, align 16, !noalias !7731
  %.sroa.1030.0.copyload = load float, ptr %i.ag, align 8, !noalias !7731
  %i.by = load <2 x ptr>, ptr %i.l, align 16, !noalias !7731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7731
  store <2 x ptr> %i.by, ptr %0, align 8
  store ptr %.sroa.525.0.copyload, ptr %i.o, align 8
  store i64 %.sroa.626.0.copyload, ptr %i.p, align 8
  store double %.sroa.727.0.copyload, ptr %i.r, align 8
  store i64 %.sroa.828.0.copyload, ptr %i.t, align 8
  store float %.sroa.1030.0.copyload, ptr %i.v, align 8
  store double %.sroa.929.0.copyload, ptr %i.x, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi i8 [ %.sroa.6.0.ph, %bb.l ], [ 0, %bb.m ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor15f32_select_rrii(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7751
  store ptr %i.i, ptr %i.h, align 8, !noalias !7751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7751
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.l = load i8, ptr %i.g, align 8, !range !6, !noalias !7751, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7751
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.o = load i8, ptr %i.n, align 1, !range !6, !noalias !7751, !noundef !4
  store i8 %i.o, ptr %i.f, align 1, !noalias !7751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7751
  store ptr %i.f, ptr %i.e, align 8, !noalias !7751
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7751
  %i.p = load ptr, ptr %i.h, align 8, !noalias !7751, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7752
  store ptr %i.p, ptr %i.d, align 8, !noalias !7752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7752
  invoke void @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xEffENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1U_2Ip6decode9IpDecoderEB22_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc3 unwind label %bb.d

.noexc3:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.q = load i8, ptr %i.c, align 4, !range !6, !noalias !7752, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7752
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !6, !noalias !7752, !noundef !4
  store i8 %i.t, ptr %i.b, align 1, !noalias !7752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7752
  store ptr %i.b, ptr %i.a, align 8, !noalias !7752
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep10, %bb.c ]
  %.sink = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.c ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !7751
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !7753
  unreachable

bb.e:                                             ; preds = %.noexc3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.x = load float, ptr %i.w, align 4, !noalias !7752, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load float, ptr %i.y, align 4, !noalias !7752, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7752
  %i.aa = load ptr, ptr %i.d, align 8, !noalias !7752, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7752
  %i.ab = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %reass.sub = sub i64 %i.ac, %i.ab
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i1 = and i64 %.biased.i, -8
  %i.ad = add i64 %.sroa.0.0.i1, %i.ab
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = and i64 %i.k, 4294967295
  %i.ag = icmp eq i64 %i.af, 0
  %.sroa.0.0.i = select i1 %i.ag, float %i.z, float %i.x
  store ptr %i.ae, ptr %0, align 8
  store float %.sroa.0.0.i, ptr %i.v, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor15f32_select_rrir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7758
  store ptr %i.h, ptr %i.g, align 8, !noalias !7758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7758
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.m = load i8, ptr %i.f, align 8, !range !6, !noalias !7758, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7758
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !6, !noalias !7758, !noundef !4
  store i8 %i.p, ptr %i.e, align 1, !noalias !7758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7758
  store ptr %i.e, ptr %i.d, align 8, !noalias !7758
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7758
  %i.q = load ptr, ptr %i.g, align 8, !noalias !7758, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7758
  store ptr %i.q, ptr %i.c, align 8, !noalias !7758
  %i.r = invoke i64 @_RINvXs3_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_8SelectOpINtNtBa_9primitive3RegfEIBX_xEfBW_ENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1W_2Ip6decode9IpDecoderEB24_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc3 unwind label %bb.d    ; 3 uses

.noexc3:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc3
  %.sroa.47.0.extract.shift.i.i = lshr i64 %i.r, 8
  %.sroa.47.0.extract.trunc.i.i = trunc i64 %.sroa.47.0.extract.shift.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7758
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor21u8x16_extract_lane_rs:bb.a
  unreachable

bb.e:                                             ; preds = %.noexc2
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.x = load i32, ptr %i.w, align 4, !noalias !12336, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load i8, ptr %i.y, align 4, !noalias !12336, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12336
  %i.aa = load ptr, ptr %i.d, align 8, !noalias !12336, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12337
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.i, ptr noundef %i.l, i32 noundef %i.x)
          to label %bb.f unwind label %bb.d, !noalias !12337

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.j to i64                ; 2 uses
  %reass.sub = sub i64 %i.ab, %i.ac
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.ad = add i64 %.sroa.0.0.i, %i.ac
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = and i8 %i.z, 15
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !12338, !noalias !12337, !noundef !4
  %i.ak = zext i8 %i.aj to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12337
  store ptr %i.ae, ptr %0, align 8
  store i64 %i.ak, ptr %i.af, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor22call_indirect_table0_r(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [64 x i8], align 16               ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12358
  %i.w = load <2 x ptr>, ptr %0, align 8
  %i.x = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  store <2 x ptr> %i.w, ptr %i.j, align 16, !alias.scope !12359, !noalias !12358
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.y, align 16, !alias.scope !12359, !noalias !12358
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i64 %i.n, ptr %i.z, align 8, !alias.scope !12359, !noalias !12358
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store double %i.p, ptr %i.aa, align 16, !alias.scope !12359, !noalias !12358
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i64 %i.r, ptr %i.ab, align 8, !alias.scope !12359, !noalias !12358
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  store float %i.t, ptr %i.ac, align 8, !alias.scope !12359, !noalias !12358
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store double %i.v, ptr %i.ad, align 16, !alias.scope !12359, !noalias !12358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12361
  store ptr %i.x, ptr %i.i, align 8, !noalias !12361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12361
  %i.ae = bitcast double %i.p to i64              ; 2 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.g, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !12362
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.ag = load i8, ptr %i.h, align 8, !range !6, !noalias !12361, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12361
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !6, !noalias !12361, !noundef !4
  store i8 %i.aj, ptr %i.g, align 1, !noalias !12361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12361
  store ptr %i.g, ptr %i.f, align 8, !noalias !12361
  br label %.invoke.sink.split

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12361
  %i.ak = load ptr, ptr %i.i, align 8, !noalias !12361, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12363
  store ptr %i.ak, ptr %i.e, align 8, !noalias !12363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12363
  invoke void @_RINvXsg_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_12CallIndirectNtNtBa_9primitive6Table0INtB13_3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.al = load i8, ptr %i.d, align 4, !range !6, !noalias !12363, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12363
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !6, !noalias !12363, !noundef !4
  store i8 %i.ao, ptr %i.c, align 1, !noalias !12363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12363
  store ptr %i.c, ptr %i.b, align 8, !noalias !12363
  br label %.invoke.sink.split

bb.e:                                             ; preds = %.noexc5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.029.0.copyload = load i32, ptr %i.ap, align 4, !noalias !12361
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.430.0.copyload = load i16, ptr %.sroa.430.0..sroa_idx, align 4, !noalias !12361
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.632.0.copyload = load i32, ptr %.sroa.632.0..sroa_idx, align 4, !noalias !12361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12363
  %i.aq = load ptr, ptr %i.e, align 8, !noalias !12363, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12363
  %i.ar = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %reass.sub = sub i64 %i.as, %i.ar
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.at = add i64 %.sroa.0.0.i, %i.ar
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.j, align 16, !alias.scope !12360, !noalias !12364
  call void @llvm.experimental.noalias.scope.decl(metadata !12365)
  call void @llvm.experimental.noalias.scope.decl(metadata !12366)
  %i.av = inttoptr i64 %i.ae to ptr
  %i.aw = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !12367, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %.invoke, label %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i, !prof !9

.invoke.sink.split:                               ; preds = %bb.d, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.c ], [ %.sink.sroa.gep52, %bb.d ]
  %.sink = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.d ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !12361
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %bb.e
  %i.az = phi ptr [ @43, %bb.e ], [ @0, %.invoke.sink.split ]
  %i.ba = phi ptr [ inttoptr (i64 149 to ptr), %bb.e ], [ %.sink, %.invoke.sink.split ]
  %i.bb = phi ptr [ @44, %bb.e ], [ @2, %.invoke.sink.split ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb) #15
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i: ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !12368)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !12368, !noalias !12367, !noundef !4
  %i.be = icmp ult i64 %i.r, %i.bd
  br i1 %i.be, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !12368, !noalias !12367, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.r
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !12369, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12367
  %.not23.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not23.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.bk = load i32, ptr %i.bj, align 8, !alias.scope !12370, !noalias !12371, !noundef !4 ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !noalias !12367
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !noalias !12367
  %i.bm = invoke noundef nonnull ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_ptr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc9 unwind label %bb.b    ; 3 uses

.noexc9:                                          ; preds = %bb.g
  %i.bn = load i64, ptr %i.bm, align 8, !range !5, !noalias !12371, !noundef !4
  %2 = trunc nuw i64 %i.bn to i1
  %3 = select i1 %2, i64 28, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %3
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !12371, !noundef !4
  %.not25.i.i = icmp eq i32 %i.bp, %.sroa.632.0.copyload
  br i1 %.not25.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc9, %bb.f
  %.sink.i.i = phi i8 [ 9, %.noexc9 ], [ 4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12367
  br label %bb.k

bb.i:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12367
  %i.bq = invoke fastcc noundef i8 @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4argsNtB2_4Args22call_wasm_or_host_func(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull %i.bm, i32 noundef %.sroa.029.0.copyload, i16 noundef %.sroa.430.0.copyload)
          to label %bb.j unwind label %bb.b, !noalias !12362 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i, %bb.j
  %.sroa.6.0.ph = phi i8 [ %i.bq, %bb.j ], [ 3, %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i ], [ %.sink.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12358
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.523.0.copyload = load ptr, ptr %i.y, align 16, !noalias !12358
  %.sroa.624.0.copyload = load i64, ptr %i.z, align 8, !noalias !12358
  %.sroa.7.0.copyload = load double, ptr %i.aa, align 16, !noalias !12358
  %.sroa.825.0.copyload = load i64, ptr %i.ab, align 8, !noalias !12358
  %.sroa.926.0.copyload = load double, ptr %i.ad, align 16, !noalias !12358
  %.sroa.1027.0.copyload = load float, ptr %i.ac, align 8, !noalias !12358
  %i.br = load <2 x ptr>, ptr %i.j, align 16, !noalias !12358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12358
  store <2 x ptr> %i.br, ptr %0, align 8
  store ptr %.sroa.523.0.copyload, ptr %i.k, align 8
  store i64 %.sroa.624.0.copyload, ptr %i.m, align 8
  store double %.sroa.7.0.copyload, ptr %i.o, align 8
  store i64 %.sroa.825.0.copyload, ptr %i.q, align 8
  store float %.sroa.1027.0.copyload, ptr %i.s, align 8
  store double %.sroa.926.0.copyload, ptr %i.u, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0 = phi i8 [ %.sroa.6.0.ph, %bb.k ], [ 0, %bb.l ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor22call_indirect_table0_s(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [20 x i8], align 4                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [64 x i8], align 16               ; 14 uses
  %i.k = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12391
  store ptr %i.k, ptr %i.j, align 16, !alias.scope !12392, !noalias !12391
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.z = load <2 x ptr>, ptr %i.l, align 8
  %i.aa = load ptr, ptr %i.l, align 8, !noundef !4
  store <2 x ptr> %i.z, ptr %i.x, align 8, !alias.scope !12392, !noalias !12391
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i64 %i.o, ptr %i.ab, align 8, !alias.scope !12392, !noalias !12391
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store double %i.q, ptr %i.ac, align 16, !alias.scope !12392, !noalias !12391
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i64 %i.s, ptr %i.ad, align 8, !alias.scope !12392, !noalias !12391
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  store float %i.u, ptr %i.ae, align 8, !alias.scope !12392, !noalias !12391
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store double %i.w, ptr %i.af, align 16, !alias.scope !12392, !noalias !12391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12394
  store ptr %i.k, ptr %i.i, align 8, !noalias !12394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12394
  %i.ag = bitcast double %i.q to i64              ; 2 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.g, %bb.e, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !12395
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.ai = load i8, ptr %i.h, align 8, !range !6, !noalias !12394, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.c, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12394
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !6, !noalias !12394, !noundef !4
  store i8 %i.al, ptr %i.g, align 1, !noalias !12394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12394
  store ptr %i.g, ptr %i.f, align 8, !noalias !12394
  br label %.invoke.sink.split

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12394
  %i.am = load ptr, ptr %i.i, align 8, !noalias !12394, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12396
  store ptr %i.am, ptr %i.e, align 8, !noalias !12396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12396
  invoke void @_RINvXsg_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_12CallIndirectNtNtBa_9primitive6Table0NtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.an = load i8, ptr %i.d, align 4, !range !6, !noalias !12396, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12396
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !6, !noalias !12396, !noundef !4
  store i8 %i.aq, ptr %i.c, align 1, !noalias !12396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12396
  store ptr %i.c, ptr %i.b, align 8, !noalias !12396
  br label %.invoke.sink.split

bb.e:                                             ; preds = %.noexc5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.031.0.copyload = load i32, ptr %i.ar, align 4, !noalias !12394
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.432.0.copyload = load i16, ptr %.sroa.432.0..sroa_idx, align 4, !noalias !12394
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.634.0.copyload = load i32, ptr %.sroa.634.0..sroa_idx, align 4, !noalias !12394
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.735.0.copyload = load i32, ptr %.sroa.735.0..sroa_idx, align 4, !noalias !12394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12396
  %i.as = load ptr, ptr %i.e, align 8, !noalias !12396, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12396
  %i.at = ptrtoint ptr %i.k to i64                ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %reass.sub = sub i64 %i.au, %i.at
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.av = add i64 %.sroa.0.0.i, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.j, align 16, !alias.scope !12393, !noalias !12397
  call void @llvm.experimental.noalias.scope.decl(metadata !12398)
  call void @llvm.experimental.noalias.scope.decl(metadata !12399)
  %i.ax = invoke noundef i64 @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getyEBe_(ptr noundef %i.aa, i32 noundef %.sroa.735.0.copyload)
          to label %.noexc8 unwind label %bb.b    ; 2 uses

.noexc8:                                          ; preds = %bb.e
  %i.ay = inttoptr i64 %i.ag to ptr
  %i.az = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !12400, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %.invoke, label %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i, !prof !9

.invoke.sink.split:                               ; preds = %bb.d, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.c ], [ %.sink.sroa.gep55, %bb.d ]
  %.sink = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.d ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !12394
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %.noexc8
  %i.bc = phi ptr [ @43, %.noexc8 ], [ @0, %.invoke.sink.split ]
  %i.bd = phi ptr [ inttoptr (i64 149 to ptr), %.noexc8 ], [ %.sink, %.invoke.sink.split ]
  %i.be = phi ptr [ @44, %.noexc8 ], [ @2, %.invoke.sink.split ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #15
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i: ; preds = %.noexc8
  call void @llvm.experimental.noalias.scope.decl(metadata !12401)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !12401, !noalias !12400, !noundef !4
  %i.bh = icmp ult i64 %i.ax, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !12401, !noalias !12400, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ax
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !12402, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12400
  %.not23.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not23.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !12403, !noalias !12404, !noundef !4 ; 2 uses
  store i32 %i.bl, ptr %i.a, align 4, !noalias !12400
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !noalias !12400
  %i.bp = invoke noundef nonnull ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_ptr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc10 unwind label %bb.b   ; 3 uses

.noexc10:                                         ; preds = %bb.g
  %i.bq = load i64, ptr %i.bp, align 8, !range !5, !noalias !12404, !noundef !4
  %2 = trunc nuw i64 %i.bq to i1
  %3 = select i1 %2, i64 28, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %3
  %i.bs = load i32, ptr %i.br, align 4, !noalias !12404, !noundef !4
  %.not25.i.i = icmp eq i32 %i.bs, %.sroa.634.0.copyload
  br i1 %.not25.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc10, %bb.f
  %.sink.i.i = phi i8 [ 9, %.noexc10 ], [ 4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12400
  br label %bb.k

bb.i:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12400
  %i.bt = invoke fastcc noundef i8 @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4argsNtB2_4Args22call_wasm_or_host_func(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i32 noundef %i.bl, i32 noundef %i.bn, ptr noundef nonnull %i.bp, i32 noundef %.sroa.031.0.copyload, i16 noundef %.sroa.432.0.copyload)
          to label %bb.j unwind label %bb.b, !noalias !12395 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i, %bb.j
  %.sroa.6.0.ph = phi i8 [ %i.bt, %bb.j ], [ 3, %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i ], [ %.sink.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12391
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.525.0.copyload = load ptr, ptr %i.y, align 16, !noalias !12391
  %.sroa.626.0.copyload = load i64, ptr %i.ab, align 8, !noalias !12391
  %.sroa.7.0.copyload = load double, ptr %i.ac, align 16, !noalias !12391
  %.sroa.827.0.copyload = load i64, ptr %i.ad, align 8, !noalias !12391
  %.sroa.928.0.copyload = load double, ptr %i.af, align 16, !noalias !12391
  %.sroa.1029.0.copyload = load float, ptr %i.ae, align 8, !noalias !12391
  %i.bu = load <2 x ptr>, ptr %i.j, align 16, !noalias !12391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12391
  store <2 x ptr> %i.bu, ptr %0, align 8
  store ptr %.sroa.525.0.copyload, ptr %i.m, align 8
  store i64 %.sroa.626.0.copyload, ptr %i.n, align 8
  store double %.sroa.7.0.copyload, ptr %i.p, align 8
  store i64 %.sroa.827.0.copyload, ptr %i.r, align 8
  store float %.sroa.1029.0.copyload, ptr %i.t, align 8
  store double %.sroa.928.0.copyload, ptr %i.v, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0 = phi i8 [ %.sroa.6.0.ph, %bb.k ], [ 0, %bb.l ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor22f32_reinterpret_i32_rr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12407
  store ptr %i.h, ptr %i.g, align 8, !noalias !12407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12407
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.k = load i8, ptr %i.f, align 8, !range !6, !noalias !12407, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12407
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.n = load i8, ptr %i.m, align 1, !range !6, !noalias !12407, !noundef !4
  store i8 %i.n, ptr %i.e, align 1, !noalias !12407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12407
  store ptr %i.e, ptr %i.d, align 8, !noalias !12407
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12407
  %i.o = load ptr, ptr %i.g, align 8, !noalias !12407, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12407
  store ptr %i.o, ptr %i.c, align 8, !noalias !12407
  %i.p = invoke noundef i8 @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpINtNtB7_9primitive3RegfEIBT_xEENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1O_2Ip6decode9IpDecoderEB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc2 unwind label %bb.d    ; 2 uses

.noexc2:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %.not.i.i = icmp eq i8 %i.p, 2
  br i1 %.not.i.i, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12407
  store i8 %i.p, ptr %i.b, align 1, !noalias !12407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12407
  store ptr %i.b, ptr %i.a, align 8, !noalias !12407
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep6, %bb.c ]
  %.sink = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.c ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !12407
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16
  unreachable

bb.e:                                             ; preds = %.noexc2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.c, align 8, !noalias !12407, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12407
  %i.t = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %reass.sub = sub i64 %i.u, %i.t
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.v = add i64 %.sroa.0.0.i, %i.t
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = trunc i64 %i.j to i32
  store ptr %i.w, ptr %0, align 8
  store i32 %i.x, ptr %i.r, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor22f32x4_convert_i32x4_ss(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12420
  store ptr %i.k, ptr %i.h, align 8, !noalias !12420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12420
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.n = load i8, ptr %i.g, align 8, !range !6, !noalias !12420, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12420
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !6, !noalias !12420, !noundef !4
  store i8 %i.q, ptr %i.f, align 1, !noalias !12420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12420
  store ptr %i.f, ptr %i.e, align 8, !noalias !12420
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12420
  %i.r = load ptr, ptr %i.h, align 8, !noalias !12420, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12421
  store ptr %i.r, ptr %i.d, align 8, !noalias !12421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12421
  invoke void @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpNtNtB7_5index4SlotBS_ENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1F_2Ip6decode9IpDecoderEB1N_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.s = load i8, ptr %i.c, align 4, !range !6, !noalias !12421, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12421
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.v = load i8, ptr %i.u, align 1, !range !6, !noalias !12421, !noundef !4
  store i8 %i.v, ptr %i.b, align 1, !noalias !12421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12421
  store ptr %i.b, ptr %i.a, align 8, !noalias !12421
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep18, %bb.c ]
  %.sink = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.c ]
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor22i8x16_narrow_i16x8_sss:bb.a
  store i8 %i.ao, ptr %.sroa.3.i.sroa.17.0..sroa_idx, align 1, !noalias !12542
  %.sroa.3.i.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  store i8 %i.ap, ptr %.sroa.3.i.sroa.18.0..sroa_idx, align 1, !noalias !12542
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3setNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noundef %i.n, i32 noundef %.sroa.053.0.copyload, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(16) %i.i)
          to label %bb.h unwind label %bb.d, !noalias !12542

bb.h:                                             ; preds = %_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12813from_low_highasNvB6_16narrow_i16_to_i8ECsefoF4u9kbII_5wasmi.exit
  %i.aq = ptrtoint ptr %i.z to i64
  %i.ar = ptrtoint ptr %i.l to i64                ; 2 uses
  %reass.sub = sub i64 %i.aq, %i.ar
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.as = add i64 %.sroa.0.0.i, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.at, ptr %0, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor22return_call_indirect_r(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [20 x i8], align 4                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [64 x i8], align 16               ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12568
  %i.y = load <2 x ptr>, ptr %0, align 8
  %i.z = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  store <2 x ptr> %i.y, ptr %i.l, align 16, !alias.scope !12569, !noalias !12568
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.aa, align 16, !alias.scope !12569, !noalias !12568
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store i64 %i.p, ptr %i.ab, align 8, !alias.scope !12569, !noalias !12568
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store double %i.r, ptr %i.ac, align 16, !alias.scope !12569, !noalias !12568
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 %i.t, ptr %i.ad, align 8, !alias.scope !12569, !noalias !12568
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  store float %i.v, ptr %i.ae, align 8, !alias.scope !12569, !noalias !12568
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  store double %i.x, ptr %i.af, align 16, !alias.scope !12569, !noalias !12568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12571
  store ptr %i.z, ptr %i.k, align 8, !noalias !12571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12571
  %i.ag = bitcast double %i.r to i64              ; 2 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.h, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !12572
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.ai = load i8, ptr %i.j, align 8, !range !6, !noalias !12571, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.c, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12571
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !6, !noalias !12571, !noundef !4
  store i8 %i.al, ptr %i.i, align 1, !noalias !12571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12571
  store ptr %i.i, ptr %i.h, align 8, !noalias !12571
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12571
  %i.am = load ptr, ptr %i.k, align 8, !noalias !12571, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12573
  store ptr %i.am, ptr %i.g, align 8, !noalias !12573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12573
  invoke void @_RINvXsg_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_12CallIndirectNtNtBa_5index9TableAddrINtNtBa_9primitive3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB2e_2Ip6decode9IpDecoderEB2m_(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.an = load i8, ptr %i.f, align 4, !range !6, !noalias !12573, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12573
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !6, !noalias !12573, !noundef !4
  store i8 %i.aq, ptr %i.e, align 1, !noalias !12573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12573
  store ptr %i.e, ptr %i.d, align 8, !noalias !12573
  br label %.invoke

bb.e:                                             ; preds = %.noexc5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.030.0.copyload = load i32, ptr %i.ar, align 4, !noalias !12571
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.431.0.copyload = load i16, ptr %.sroa.431.0..sroa_idx, align 4, !noalias !12571
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.633.0.copyload = load i32, ptr %.sroa.633.0..sroa_idx, align 4, !noalias !12571 ; 3 uses
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.734.0.copyload = load i32, ptr %.sroa.734.0..sroa_idx, align 4, !noalias !12571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12573
  %i.as = load ptr, ptr %i.g, align 8, !noalias !12573, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12573
  %i.at = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %reass.sub = sub i64 %i.au, %i.at
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.av = add i64 %.sroa.0.0.i, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.l, align 16, !alias.scope !12570, !noalias !12574
  call void @llvm.experimental.noalias.scope.decl(metadata !12575)
  call void @llvm.experimental.noalias.scope.decl(metadata !12576)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12577
  store i32 %.sroa.633.0.copyload, ptr %i.b, align 4, !noalias !12577
  %i.ax = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ay = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = load i32, ptr %i.ax, align 8, !noalias !12577, !noundef !4
  %.not.i.not.i.i.i.i = icmp ult i32 %.sroa.633.0.copyload, %i.az
  br i1 %.not.i.not.i.i.i.i, label %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12577
  store ptr %i.b, ptr %i.a, align 8, !noalias !12577
  br label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.d, %bb.f
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.c ], [ %.sink.sroa.gep53, %bb.d ], [ %.sink.sroa.gep54, %bb.f ]
  %.sink = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.d ], [ %i.a, %bb.f ]
  %_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.sink = phi ptr [ @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, %bb.c ], [ @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, %bb.d ], [ @_RNvXso_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB5_9TableAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, %bb.f ]
  %i.ba = phi ptr [ @0, %bb.c ], [ @0, %bb.d ], [ @41, %bb.f ]
  %i.bb = phi ptr [ @2, %bb.c ], [ @2, %bb.d ], [ @35, %bb.f ]
  store ptr %_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.sink, ptr %.sink.sroa.phi, align 8, !noalias !4
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull %i.ba, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb) #15
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i: ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bd = zext i32 %.sroa.633.0.copyload to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12577
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !12577, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12578)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !12578, !noalias !12577, !noundef !4
  %i.bi = icmp ult i64 %i.t, %i.bh
  br i1 %i.bi, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !12578, !noalias !12577, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.t
  %i.bm = load i32, ptr %i.bl, align 4, !noalias !12579, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12577
  %.not23.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not23.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !12580, !noalias !12581, !noundef !4 ; 2 uses
  store i32 %i.bm, ptr %i.c, align 4, !noalias !12577
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !noalias !12577
  %i.bq = invoke noundef nonnull ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_ptr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc9 unwind label %bb.b    ; 3 uses

.noexc9:                                          ; preds = %bb.h
  %i.br = load i64, ptr %i.bq, align 8, !range !5, !noalias !12581, !noundef !4
  %2 = trunc nuw i64 %i.br to i1
  %3 = select i1 %2, i64 28, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %3
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !12581, !noundef !4
  %.not25.i.i = icmp eq i32 %i.bt, %.sroa.734.0.copyload
  br i1 %.not25.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc9, %bb.g
  %.sink.i.i = phi i8 [ 9, %.noexc9 ], [ 4, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12577
  br label %bb.l

bb.j:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12577
  %i.bu = invoke fastcc noundef i8 @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4argsNtB2_4Args29return_call_wasm_or_host_func(ptr noalias nofree noundef align 8 dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i32 noundef %i.bm, i32 noundef %i.bo, ptr noundef nonnull %i.bq, i32 noundef %.sroa.030.0.copyload, i16 noundef %.sroa.431.0.copyload)
          to label %bb.k unwind label %bb.b, !noalias !12572 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i, %bb.k
  %.sroa.6.0.ph = phi i8 [ %i.bu, %bb.k ], [ 3, %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i ], [ %.sink.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12568
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.sroa.524.0.copyload = load ptr, ptr %i.aa, align 16, !noalias !12568
  %.sroa.625.0.copyload = load i64, ptr %i.ab, align 8, !noalias !12568
  %.sroa.7.0.copyload = load double, ptr %i.ac, align 16, !noalias !12568
  %.sroa.826.0.copyload = load i64, ptr %i.ad, align 8, !noalias !12568
  %.sroa.927.0.copyload = load double, ptr %i.af, align 16, !noalias !12568
  %.sroa.1028.0.copyload = load float, ptr %i.ae, align 8, !noalias !12568
  %i.bv = load <2 x ptr>, ptr %i.l, align 16, !noalias !12568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12568
  store <2 x ptr> %i.bv, ptr %0, align 8
  store ptr %.sroa.524.0.copyload, ptr %i.m, align 8
  store i64 %.sroa.625.0.copyload, ptr %i.o, align 8
  store double %.sroa.7.0.copyload, ptr %i.q, align 8
  store i64 %.sroa.826.0.copyload, ptr %i.s, align 8
  store float %.sroa.1028.0.copyload, ptr %i.u, align 8
  store double %.sroa.927.0.copyload, ptr %i.w, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi i8 [ %.sroa.6.0.ph, %bb.l ], [ 0, %bb.m ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor22return_call_indirect_s(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [24 x i8], align 4                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [64 x i8], align 16               ; 14 uses
  %i.m = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12601
  store ptr %i.m, ptr %i.l, align 16, !alias.scope !12602, !noalias !12601
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ab = load <2 x ptr>, ptr %i.n, align 8
  %i.ac = load ptr, ptr %i.n, align 8, !noundef !4
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !alias.scope !12602, !noalias !12601
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store i64 %i.q, ptr %i.ad, align 8, !alias.scope !12602, !noalias !12601
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store double %i.s, ptr %i.ae, align 16, !alias.scope !12602, !noalias !12601
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 %i.u, ptr %i.af, align 8, !alias.scope !12602, !noalias !12601
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  store float %i.w, ptr %i.ag, align 8, !alias.scope !12602, !noalias !12601
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  store double %i.y, ptr %i.ah, align 16, !alias.scope !12602, !noalias !12601
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12604
  store ptr %i.m, ptr %i.k, align 8, !noalias !12604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12604
  %i.ai = bitcast double %i.s to i64              ; 2 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.e, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !12605
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.ak = load i8, ptr %i.j, align 8, !range !6, !noalias !12604, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.c, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12604
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !6, !noalias !12604, !noundef !4
  store i8 %i.an, ptr %i.i, align 1, !noalias !12604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12604
  store ptr %i.i, ptr %i.h, align 8, !noalias !12604
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12604
  %i.ao = load ptr, ptr %i.k, align 8, !noalias !12604, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12606
  store ptr %i.ao, ptr %i.g, align 8, !noalias !12606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12606
  invoke void @_RINvXsg_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_12CallIndirectNtNtBa_5index9TableAddrNtB13_4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB21_2Ip6decode9IpDecoderEB29_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.ap = load i8, ptr %i.f, align 4, !range !6, !noalias !12606, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12606
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !6, !noalias !12606, !noundef !4
  store i8 %i.as, ptr %i.e, align 1, !noalias !12606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12606
  store ptr %i.e, ptr %i.d, align 8, !noalias !12606
  br label %.invoke

bb.e:                                             ; preds = %.noexc5
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.032.0.copyload = load i32, ptr %i.at, align 4, !noalias !12604
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.433.0.copyload = load i16, ptr %.sroa.433.0..sroa_idx, align 4, !noalias !12604
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.635.0.copyload = load i32, ptr %.sroa.635.0..sroa_idx, align 4, !noalias !12604 ; 3 uses
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.736.0.copyload = load i32, ptr %.sroa.736.0..sroa_idx, align 4, !noalias !12604
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.837.0.copyload = load i32, ptr %.sroa.837.0..sroa_idx, align 4, !noalias !12604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12606
  %i.au = load ptr, ptr %i.g, align 8, !noalias !12606, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12606
  %i.av = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %reass.sub = sub i64 %i.aw, %i.av
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.ax = add i64 %.sroa.0.0.i, %i.av
  %i.ay = inttoptr i64 %i.ax to ptr
  store ptr %i.ay, ptr %i.l, align 16, !alias.scope !12603, !noalias !12607
  call void @llvm.experimental.noalias.scope.decl(metadata !12608)
  call void @llvm.experimental.noalias.scope.decl(metadata !12609)
  %i.az = invoke noundef i64 @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getyEBe_(ptr noundef %i.ac, i32 noundef %.sroa.837.0.copyload)
          to label %.noexc8 unwind label %bb.b    ; 2 uses

.noexc8:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12610
  store i32 %.sroa.635.0.copyload, ptr %i.b, align 4, !noalias !12610
  %i.ba = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.bb = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %i.bb)
  %i.bc = load i32, ptr %i.ba, align 8, !noalias !12610, !noundef !4
  %.not.i.not.i.i.i.i = icmp ult i32 %.sroa.635.0.copyload, %i.bc
  br i1 %.not.i.not.i.i.i.i, label %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12610
  store ptr %i.b, ptr %i.a, align 8, !noalias !12610
  br label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.d, %bb.f
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.c ], [ %.sink.sroa.gep56, %bb.d ], [ %.sink.sroa.gep57, %bb.f ]
  %.sink = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.d ], [ %i.a, %bb.f ]
  %_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.sink = phi ptr [ @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, %bb.c ], [ @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, %bb.d ], [ @_RNvXso_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB5_9TableAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, %bb.f ]
  %i.bd = phi ptr [ @0, %bb.c ], [ @0, %bb.d ], [ @41, %bb.f ]
  %i.be = phi ptr [ @2, %bb.c ], [ @2, %bb.d ], [ @35, %bb.f ]
  store ptr %_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.sink, ptr %.sink.sroa.phi, align 8, !noalias !4
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull %i.bd, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #15
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i: ; preds = %.noexc8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bg = zext i32 %.sroa.635.0.copyload to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12610
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !12610, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12611)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !12611, !noalias !12610, !noundef !4
  %i.bl = icmp ult i64 %i.az, %i.bk
  br i1 %i.bl, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !12611, !noalias !12610, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.az
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !12612, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12610
  %.not23.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not23.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.br = load i32, ptr %i.bq, align 8, !alias.scope !12613, !noalias !12614, !noundef !4 ; 2 uses
  store i32 %i.bp, ptr %i.c, align 4, !noalias !12610
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !noalias !12610
  %i.bt = invoke noundef nonnull ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_ptr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc10 unwind label %bb.b   ; 3 uses

.noexc10:                                         ; preds = %bb.h
  %i.bu = load i64, ptr %i.bt, align 8, !range !5, !noalias !12614, !noundef !4
  %2 = trunc nuw i64 %i.bu to i1
  %3 = select i1 %2, i64 28, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %3
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !12614, !noundef !4
  %.not25.i.i = icmp eq i32 %i.bw, %.sroa.736.0.copyload
  br i1 %.not25.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc10, %bb.g
  %.sink.i.i = phi i8 [ 9, %.noexc10 ], [ 4, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12610
  br label %bb.l

bb.j:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12610
  %i.bx = invoke fastcc noundef i8 @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4argsNtB2_4Args29return_call_wasm_or_host_func(ptr noalias nofree noundef align 8 dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i32 noundef %i.bp, i32 noundef %i.br, ptr noundef nonnull %i.bt, i32 noundef %.sroa.032.0.copyload, i16 noundef %.sroa.433.0.copyload)
          to label %bb.k unwind label %bb.b, !noalias !12605 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.i, %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i, %bb.k
  %.sroa.6.0.ph = phi i8 [ %i.bx, %bb.k ], [ 3, %_RNvXs14_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB8_5state4InstINtB6_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir5index9TableAddrE15load_entity_mut.exit.i.i ], [ %.sink.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12601
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.sroa.525.0.copyload = load ptr, ptr %i.aa, align 16, !noalias !12601
  %.sroa.626.0.copyload = load i64, ptr %i.ad, align 8, !noalias !12601
  %.sroa.727.0.copyload = load double, ptr %i.ae, align 16, !noalias !12601
  %.sroa.828.0.copyload = load i64, ptr %i.af, align 8, !noalias !12601
  %.sroa.929.0.copyload = load double, ptr %i.ah, align 16, !noalias !12601
  %.sroa.1030.0.copyload = load float, ptr %i.ag, align 8, !noalias !12601
  %i.by = load <2 x ptr>, ptr %i.l, align 16, !noalias !12601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12601
  store <2 x ptr> %i.by, ptr %0, align 8
  store ptr %.sroa.525.0.copyload, ptr %i.o, align 8
  store i64 %.sroa.626.0.copyload, ptr %i.p, align 8
  store double %.sroa.727.0.copyload, ptr %i.r, align 8
  store i64 %.sroa.828.0.copyload, ptr %i.t, align 8
  store float %.sroa.1030.0.copyload, ptr %i.v, align 8
  store double %.sroa.929.0.copyload, ptr %i.x, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi i8 [ %.sroa.6.0.ph, %bb.l ], [ 0, %bb.m ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor22u16x8_narrow_i32x4_sss(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [16 x i8], align 2                ; 11 uses
  %i.j = alloca [16 x i8], align 4                ; 7 uses
  %i.k = alloca [16 x i8], align 4                ; 7 uses
  %i.l = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12632
  store ptr %i.l, ptr %i.h, align 8, !noalias !12632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12632
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep44 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.o = load i8, ptr %i.g, align 8, !range !6, !noalias !12632, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12632
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !6, !noalias !12632, !noundef !4
  store i8 %i.r, ptr %i.f, align 1, !noalias !12632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12632
  store ptr %i.f, ptr %i.e, align 8, !noalias !12632
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12632
  %i.s = load ptr, ptr %i.h, align 8, !noalias !12632, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12633
  store ptr %i.s, ptr %i.d, align 8, !noalias !12633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12633
  invoke void @_RINvXs_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB5_8BinaryOpNtNtB9_5index4SlotBV_BV_ENtB7_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1L_2Ip6decode9IpDecoderEB1T_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.t = load i8, ptr %i.c, align 4, !range !6, !noalias !12633, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12633
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !6, !noalias !12633, !noundef !4
  store i8 %i.w, ptr %i.b, align 1, !noalias !12633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12633
  store ptr %i.b, ptr %i.a, align 8, !noalias !12633
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep44, %bb.c ]
  %.sink = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.c ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !12632
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %.noexc17, %.noexc16, %.noexc15, %.noexc14, %.noexc13, %.noexc12, %.noexc11, %bb.g, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12813from_low_hightmNvB6_17narrow_u32_to_u16ECsefoF4u9kbII_5wasmi.exit, %bb.f, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !12634
  unreachable

bb.e:                                             ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.041.0.copyload = load i32, ptr %i.y, align 4, !noalias !12632
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.442.0.copyload = load i32, ptr %.sroa.442.0..sroa_idx, align 4, !noalias !12632
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.543.0.copyload = load i32, ptr %.sroa.543.0..sroa_idx, align 4, !noalias !12632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12633
  %i.z = load ptr, ptr %i.d, align 8, !noalias !12633, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12634
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.k, ptr noundef %i.n, i32 noundef %.sroa.442.0.copyload)
          to label %bb.f unwind label %bb.d, !noalias !12634

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12634
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.j, ptr noundef %i.n, i32 noundef %.sroa.543.0.copyload)
          to label %bb.g unwind label %bb.d, !noalias !12634

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !12635)
  call void @llvm.experimental.noalias.scope.decl(metadata !12636)
  %.sroa.02.0.copyload.i = load i32, ptr %i.k, align 4, !alias.scope !12637, !noalias !12638
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.43.0.copyload.i = load i32, ptr %.sroa.43.0..sroa_idx.i, align 4, !alias.scope !12637, !noalias !12638
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.54.0.copyload.i = load i32, ptr %.sroa.54.0..sroa_idx.i, align 4, !alias.scope !12637, !noalias !12638
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.65.0.copyload.i = load i32, ptr %.sroa.65.0..sroa_idx.i, align 4, !alias.scope !12637, !noalias !12638
  %.sroa.06.0.copyload.i = load i32, ptr %i.j, align 4, !alias.scope !12639, !noalias !12640
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.47.0.copyload.i = load i32, ptr %.sroa.47.0..sroa_idx.i, align 4, !alias.scope !12639, !noalias !12640
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.58.0.copyload.i = load i32, ptr %.sroa.58.0..sroa_idx.i, align 4, !alias.scope !12639, !noalias !12640
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.69.0.copyload.i = load i32, ptr %.sroa.69.0..sroa_idx.i, align 4, !alias.scope !12639, !noalias !12640
  %i.aa = invoke noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef %.sroa.02.0.copyload.i)
          to label %.noexc11 unwind label %bb.d

.noexc11:                                         ; preds = %bb.g
  %i.ab = invoke noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef %.sroa.43.0.copyload.i)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc11
  %i.ac = invoke noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef %.sroa.54.0.copyload.i)
          to label %.noexc13 unwind label %bb.d

.noexc13:                                         ; preds = %.noexc12
  %i.ad = invoke noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef %.sroa.65.0.copyload.i)
          to label %.noexc14 unwind label %bb.d

.noexc14:                                         ; preds = %.noexc13
  %i.ae = invoke noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef %.sroa.06.0.copyload.i)
          to label %.noexc15 unwind label %bb.d

.noexc15:                                         ; preds = %.noexc14
  %i.af = invoke noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef %.sroa.47.0.copyload.i)
          to label %.noexc16 unwind label %bb.d

.noexc16:                                         ; preds = %.noexc15
  %i.ag = invoke noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef %.sroa.58.0.copyload.i)
          to label %.noexc17 unwind label %bb.d

.noexc17:                                         ; preds = %.noexc16
  %i.ah = invoke noundef i16 @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd17narrow_u32_to_u16(i32 noundef %.sroa.69.0.copyload.i)
          to label %_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12813from_low_hightmNvB6_17narrow_u32_to_u16ECsefoF4u9kbII_5wasmi.exit unwind label %bb.d

_RINvMs1_NtCs5zeGauAcNNa_10wasmi_core4simdNtNtB8_5value4V12813from_low_hightmNvB6_17narrow_u32_to_u16ECsefoF4u9kbII_5wasmi.exit: ; preds = %.noexc17
  store i16 %i.aa, ptr %i.i, align 2, !noalias !12634
  %.sroa.3.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i16 %i.ab, ptr %.sroa.3.i.sroa.4.0..sroa_idx, align 2, !noalias !12634
  %.sroa.3.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 %i.ac, ptr %.sroa.3.i.sroa.5.0..sroa_idx, align 2, !noalias !12634
  %.sroa.3.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 6
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor29i32x4_trunc_sat_zero_f64x2_ss:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = load i32, ptr %i.y, align 4, !noalias !13883, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !13883, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13883
  %i.ac = load ptr, ptr %i.f, align 8, !noalias !13883, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13883
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.a, ptr noundef %i.n, i32 noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13885
  invoke void @_RINvXs1u_NtCs5zeGauAcNNa_10wasmi_core4simdNtB7_5I32x4INtB7_8FromWideNtB7_5F64x2E11from_low_orNCNvB7_28i32x4_trunc_sat_f64x2_s_zero0NvNtB9_4wasm19i32_trunc_sat_f64_sECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !13884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13885
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3setNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noundef %i.n, i32 noundef %i.z, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(16) %i.k)
          to label %bb.h unwind label %bb.d, !noalias !13884

bb.h:                                             ; preds = %bb.g
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.l to i64                ; 2 uses
  %reass.sub = sub i64 %i.ad, %i.ae
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.af = add i64 %.sroa.0.0.i, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.ag, ptr %0, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor29return_call_indirect_table0_r(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [64 x i8], align 16               ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13905
  %i.w = load <2 x ptr>, ptr %0, align 8
  %i.x = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  store <2 x ptr> %i.w, ptr %i.j, align 16, !alias.scope !13906, !noalias !13905
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.y, align 16, !alias.scope !13906, !noalias !13905
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i64 %i.n, ptr %i.z, align 8, !alias.scope !13906, !noalias !13905
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store double %i.p, ptr %i.aa, align 16, !alias.scope !13906, !noalias !13905
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i64 %i.r, ptr %i.ab, align 8, !alias.scope !13906, !noalias !13905
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  store float %i.t, ptr %i.ac, align 8, !alias.scope !13906, !noalias !13905
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store double %i.v, ptr %i.ad, align 16, !alias.scope !13906, !noalias !13905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13908
  store ptr %i.x, ptr %i.i, align 8, !noalias !13908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13908
  %i.ae = bitcast double %i.p to i64              ; 2 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.g, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !13909
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.ag = load i8, ptr %i.h, align 8, !range !6, !noalias !13908, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13908
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !6, !noalias !13908, !noundef !4
  store i8 %i.aj, ptr %i.g, align 1, !noalias !13908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13908
  store ptr %i.g, ptr %i.f, align 8, !noalias !13908
  br label %.invoke.sink.split

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13908
  %i.ak = load ptr, ptr %i.i, align 8, !noalias !13908, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13910
  store ptr %i.ak, ptr %i.e, align 8, !noalias !13910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13910
  invoke void @_RINvXsg_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_12CallIndirectNtNtBa_9primitive6Table0INtB13_3RegxEENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB24_2Ip6decode9IpDecoderEB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.al = load i8, ptr %i.d, align 4, !range !6, !noalias !13910, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13910
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !6, !noalias !13910, !noundef !4
  store i8 %i.ao, ptr %i.c, align 1, !noalias !13910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13910
  store ptr %i.c, ptr %i.b, align 8, !noalias !13910
  br label %.invoke.sink.split

bb.e:                                             ; preds = %.noexc5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.029.0.copyload = load i32, ptr %i.ap, align 4, !noalias !13908
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.430.0.copyload = load i16, ptr %.sroa.430.0..sroa_idx, align 4, !noalias !13908
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.632.0.copyload = load i32, ptr %.sroa.632.0..sroa_idx, align 4, !noalias !13908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13910
  %i.aq = load ptr, ptr %i.e, align 8, !noalias !13910, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13910
  %i.ar = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %reass.sub = sub i64 %i.as, %i.ar
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.at = add i64 %.sroa.0.0.i, %i.ar
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.j, align 16, !alias.scope !13907, !noalias !13911
  call void @llvm.experimental.noalias.scope.decl(metadata !13912)
  call void @llvm.experimental.noalias.scope.decl(metadata !13913)
  %i.av = inttoptr i64 %i.ae to ptr
  %i.aw = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !13914, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %.invoke, label %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i, !prof !9

.invoke.sink.split:                               ; preds = %bb.d, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.c ], [ %.sink.sroa.gep52, %bb.d ]
  %.sink = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.d ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !13908
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %bb.e
  %i.az = phi ptr [ @43, %bb.e ], [ @0, %.invoke.sink.split ]
  %i.ba = phi ptr [ inttoptr (i64 149 to ptr), %bb.e ], [ %.sink, %.invoke.sink.split ]
  %i.bb = phi ptr [ @44, %bb.e ], [ @2, %.invoke.sink.split ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb) #15
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i: ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !13915)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !13915, !noalias !13914, !noundef !4
  %i.be = icmp ult i64 %i.r, %i.bd
  br i1 %i.be, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !13915, !noalias !13914, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.r
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !13916, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13914
  %.not23.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not23.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.bk = load i32, ptr %i.bj, align 8, !alias.scope !13917, !noalias !13918, !noundef !4 ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !noalias !13914
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !noalias !13914
  %i.bm = invoke noundef nonnull ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_ptr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc9 unwind label %bb.b    ; 3 uses

.noexc9:                                          ; preds = %bb.g
  %i.bn = load i64, ptr %i.bm, align 8, !range !5, !noalias !13918, !noundef !4
  %2 = trunc nuw i64 %i.bn to i1
  %3 = select i1 %2, i64 28, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %3
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !13918, !noundef !4
  %.not25.i.i = icmp eq i32 %i.bp, %.sroa.632.0.copyload
  br i1 %.not25.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc9, %bb.f
  %.sink.i.i = phi i8 [ 9, %.noexc9 ], [ 4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13914
  br label %bb.k

bb.i:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13914
  %i.bq = invoke fastcc noundef i8 @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4argsNtB2_4Args29return_call_wasm_or_host_func(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i32 noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull %i.bm, i32 noundef %.sroa.029.0.copyload, i16 noundef %.sroa.430.0.copyload)
          to label %bb.j unwind label %bb.b, !noalias !13909 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i, %bb.j
  %.sroa.6.0.ph = phi i8 [ %i.bq, %bb.j ], [ 3, %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i ], [ %.sink.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13905
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.523.0.copyload = load ptr, ptr %i.y, align 16, !noalias !13905
  %.sroa.624.0.copyload = load i64, ptr %i.z, align 8, !noalias !13905
  %.sroa.7.0.copyload = load double, ptr %i.aa, align 16, !noalias !13905
  %.sroa.825.0.copyload = load i64, ptr %i.ab, align 8, !noalias !13905
  %.sroa.926.0.copyload = load double, ptr %i.ad, align 16, !noalias !13905
  %.sroa.1027.0.copyload = load float, ptr %i.ac, align 8, !noalias !13905
  %i.br = load <2 x ptr>, ptr %i.j, align 16, !noalias !13905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13905
  store <2 x ptr> %i.br, ptr %0, align 8
  store ptr %.sroa.523.0.copyload, ptr %i.k, align 8
  store i64 %.sroa.624.0.copyload, ptr %i.m, align 8
  store double %.sroa.7.0.copyload, ptr %i.o, align 8
  store i64 %.sroa.825.0.copyload, ptr %i.q, align 8
  store float %.sroa.1027.0.copyload, ptr %i.s, align 8
  store double %.sroa.926.0.copyload, ptr %i.u, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0 = phi i8 [ %.sroa.6.0.ph, %bb.k ], [ 0, %bb.l ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor29return_call_indirect_table0_s(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [20 x i8], align 4                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [64 x i8], align 16               ; 14 uses
  %i.k = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13938
  store ptr %i.k, ptr %i.j, align 16, !alias.scope !13939, !noalias !13938
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.z = load <2 x ptr>, ptr %i.l, align 8
  %i.aa = load ptr, ptr %i.l, align 8, !noundef !4
  store <2 x ptr> %i.z, ptr %i.x, align 8, !alias.scope !13939, !noalias !13938
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i64 %i.o, ptr %i.ab, align 8, !alias.scope !13939, !noalias !13938
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store double %i.q, ptr %i.ac, align 16, !alias.scope !13939, !noalias !13938
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i64 %i.s, ptr %i.ad, align 8, !alias.scope !13939, !noalias !13938
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  store float %i.u, ptr %i.ae, align 8, !alias.scope !13939, !noalias !13938
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store double %i.w, ptr %i.af, align 16, !alias.scope !13939, !noalias !13938
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13940)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13941
  store ptr %i.k, ptr %i.i, align 8, !noalias !13941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13941
  %i.ag = bitcast double %i.q to i64              ; 2 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.g, %bb.e, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !13942
  unreachable

.noexc:                                           ; preds = %bb.a
  %i.ai = load i8, ptr %i.h, align 8, !range !6, !noalias !13941, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.c, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13941
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !6, !noalias !13941, !noundef !4
  store i8 %i.al, ptr %i.g, align 1, !noalias !13941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13941
  store ptr %i.g, ptr %i.f, align 8, !noalias !13941
  br label %.invoke.sink.split

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13941
  %i.am = load ptr, ptr %i.i, align 8, !noalias !13941, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13943
  store ptr %i.am, ptr %i.e, align 8, !noalias !13943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13943
  invoke void @_RINvXsg_NtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB6_12CallIndirectNtNtBa_9primitive6Table0NtNtBa_5index4SlotENtB8_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB29_2Ip6decode9IpDecoderEB2h_(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc5 unwind label %bb.b

.noexc5:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.an = load i8, ptr %i.d, align 4, !range !6, !noalias !13943, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13943
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !6, !noalias !13943, !noundef !4
  store i8 %i.aq, ptr %i.c, align 1, !noalias !13943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13943
  store ptr %i.c, ptr %i.b, align 8, !noalias !13943
  br label %.invoke.sink.split

bb.e:                                             ; preds = %.noexc5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.031.0.copyload = load i32, ptr %i.ar, align 4, !noalias !13941
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.432.0.copyload = load i16, ptr %.sroa.432.0..sroa_idx, align 4, !noalias !13941
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.634.0.copyload = load i32, ptr %.sroa.634.0..sroa_idx, align 4, !noalias !13941
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.735.0.copyload = load i32, ptr %.sroa.735.0..sroa_idx, align 4, !noalias !13941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13943
  %i.as = load ptr, ptr %i.e, align 8, !noalias !13943, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13943
  %i.at = ptrtoint ptr %i.k to i64                ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %reass.sub = sub i64 %i.au, %i.at
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.av = add i64 %.sroa.0.0.i, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.j, align 16, !alias.scope !13940, !noalias !13944
  call void @llvm.experimental.noalias.scope.decl(metadata !13945)
  call void @llvm.experimental.noalias.scope.decl(metadata !13946)
  %i.ax = invoke noundef i64 @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getyEBe_(ptr noundef %i.aa, i32 noundef %.sroa.735.0.copyload)
          to label %.noexc8 unwind label %bb.b    ; 2 uses

.noexc8:                                          ; preds = %bb.e
  %i.ay = inttoptr i64 %i.ag to ptr
  %i.az = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !13947, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %.invoke, label %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i, !prof !9

.invoke.sink.split:                               ; preds = %bb.d, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.c ], [ %.sink.sroa.gep55, %bb.d ]
  %.sink = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.d ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !13941
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %.noexc8
  %i.bc = phi ptr [ @43, %.noexc8 ], [ @0, %.invoke.sink.split ]
  %i.bd = phi ptr [ inttoptr (i64 149 to ptr), %.noexc8 ], [ %.sink, %.invoke.sink.split ]
  %i.be = phi ptr [ @44, %.noexc8 ], [ @2, %.invoke.sink.split ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #15
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i: ; preds = %.noexc8
  call void @llvm.experimental.noalias.scope.decl(metadata !13948)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !13948, !noalias !13947, !noundef !4
  %i.bh = icmp ult i64 %i.ax, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !13948, !noalias !13947, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ax
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !13949, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13947
  %.not23.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not23.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !13950, !noalias !13951, !noundef !4 ; 2 uses
  store i32 %i.bl, ptr %i.a, align 4, !noalias !13947
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !noalias !13947
  %i.bp = invoke noundef nonnull ptr @_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_ptr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc10 unwind label %bb.b   ; 3 uses

.noexc10:                                         ; preds = %bb.g
  %i.bq = load i64, ptr %i.bp, align 8, !range !5, !noalias !13951, !noundef !4
  %2 = trunc nuw i64 %i.bq to i1
  %3 = select i1 %2, i64 28, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %3
  %i.bs = load i32, ptr %i.br, align 4, !noalias !13951, !noundef !4
  %.not25.i.i = icmp eq i32 %i.bs, %.sroa.634.0.copyload
  br i1 %.not25.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc10, %bb.f
  %.sink.i.i = phi i8 [ 9, %.noexc10 ], [ 4, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13947
  br label %bb.k

bb.i:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13947
  %i.bt = invoke fastcc noundef i8 @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4argsNtB2_4Args29return_call_wasm_or_host_func(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i32 noundef %i.bl, i32 noundef %i.bn, ptr noundef nonnull %i.bp, i32 noundef %.sroa.031.0.copyload, i16 noundef %.sroa.432.0.copyload)
          to label %bb.j unwind label %bb.b, !noalias !13942 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i, %bb.j
  %.sroa.6.0.ph = phi i8 [ %i.bt, %bb.j ], [ 3, %_RNvXsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utilsNtNtB7_5state4InstINtB5_10LoadEntityNtNtCs6kx5fqqPdgs_8wasmi_ir9primitive6Table0E15load_entity_mut.exit.i.i ], [ %.sink.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13938
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.525.0.copyload = load ptr, ptr %i.y, align 16, !noalias !13938
  %.sroa.626.0.copyload = load i64, ptr %i.ab, align 8, !noalias !13938
  %.sroa.7.0.copyload = load double, ptr %i.ac, align 16, !noalias !13938
  %.sroa.827.0.copyload = load i64, ptr %i.ad, align 8, !noalias !13938
  %.sroa.928.0.copyload = load double, ptr %i.af, align 16, !noalias !13938
  %.sroa.1029.0.copyload = load float, ptr %i.ae, align 8, !noalias !13938
  %i.bu = load <2 x ptr>, ptr %i.j, align 16, !noalias !13938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13938
  store <2 x ptr> %i.bu, ptr %0, align 8
  store ptr %.sroa.525.0.copyload, ptr %i.m, align 8
  store i64 %.sroa.626.0.copyload, ptr %i.n, align 8
  store double %.sroa.7.0.copyload, ptr %i.p, align 8
  store i64 %.sroa.827.0.copyload, ptr %i.r, align 8
  store float %.sroa.1029.0.copyload, ptr %i.t, align 8
  store double %.sroa.928.0.copyload, ptr %i.v, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0 = phi i8 [ %.sroa.6.0.ph, %bb.k ], [ 0, %bb.l ]
  ret i8 %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor29u32x4_trunc_sat_zero_f64x2_ss(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 1                ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13961
  store ptr %i.l, ptr %i.j, align 8, !noalias !13961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13961
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.o = load i8, ptr %i.i, align 8, !range !6, !noalias !13961, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13961
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !6, !noalias !13961, !noundef !4
  store i8 %i.r, ptr %i.h, align 1, !noalias !13961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13961
  store ptr %i.h, ptr %i.g, align 8, !noalias !13961
  br label %.invoke

_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13961
  %i.s = load ptr, ptr %i.j, align 8, !noalias !13961, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13962
  store ptr %i.s, ptr %i.f, align 8, !noalias !13962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13962
  invoke void @_RINvXNtNtCs6kx5fqqPdgs_8wasmi_ir6decode2opINtB3_7UnaryOpNtNtB7_5index4SlotBS_ENtB5_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB1F_2Ip6decode9IpDecoderEB1N_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i
  %i.t = load i8, ptr %i.e, align 4, !range !6, !noalias !13962, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %.noexc2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13962
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !6, !noalias !13962, !noundef !4
  store i8 %i.w, ptr %i.d, align 1, !noalias !13962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13962
  store ptr %i.d, ptr %i.c, align 8, !noalias !13962
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.c
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.b ], [ %.sink.sroa.gep12, %bb.c ]
  %.sink = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.c ]
  store ptr @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sink.sroa.phi, align 8, !noalias !13961
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.f, %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, %bb.a, %bb.g, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !13963
  unreachable

bb.e:                                             ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = load i32, ptr %i.y, align 4, !noalias !13962, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !13962, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13962
  %i.ac = load ptr, ptr %i.f, align 8, !noalias !13962, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13962
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3getNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.a, ptr noundef %i.n, i32 noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13964
  invoke void @_RINvXs1v_NtCs5zeGauAcNNa_10wasmi_core4simdNtB7_5U32x4INtB7_8FromWideNtB7_5F64x2E11from_low_orNCNvB7_28i32x4_trunc_sat_f64x2_u_zero0NvNtB9_4wasm19i32_trunc_sat_f64_uECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !13963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13964
  invoke void @_RINvMsi_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Sp3setNtNtCs5zeGauAcNNa_10wasmi_core5value4V128EBe_(ptr noundef %i.n, i32 noundef %i.z, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(16) %i.k)
          to label %bb.h unwind label %bb.d, !noalias !13963

bb.h:                                             ; preds = %bb.g
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.l to i64                ; 2 uses
  %reass.sub = sub i64 %i.ad, %i.ae
  %.biased.i = add i64 %reass.sub, 7
  %.sroa.0.0.i = and i64 %.biased.i, -8
  %i.af = add i64 %.sroa.0.0.i, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.ag, ptr %0, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal noundef range(i8 0, 14) i8 @_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler8dispatch7backendNtB5_8Executor30i16x8_extadd_pairwise_i8x16_ss(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13977
  store ptr %i.k, ptr %i.h, align 8, !noalias !13977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13977
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep25 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RINvXsm_NtCs6kx5fqqPdgs_8wasmi_ir6decodejNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.n = load i8, ptr %i.g, align 8, !range !6, !noalias !13977, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %_RINvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_2Ip6decodejEBe_.exit.i, !prof !9

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13977
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !6, !noalias !13977, !noundef !4
  store i8 %i.q, ptr %i.f, align 1, !noalias !13977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13977
  store ptr %i.f, ptr %i.e, align 8, !noalias !13977
  br label %.invoke

end_hunk_3
