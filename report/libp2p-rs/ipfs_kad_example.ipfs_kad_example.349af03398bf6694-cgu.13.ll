Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_kad_example.ipfs_kad_example.349af03398bf6694-cgu.13?download=true
inline.NumInlined: 1726
inline.NumDeleted: 796
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@204 = private unnamed_addr constant [10 x i8] c"CtZoneMask", align 1
@205 = private unnamed_addr constant [6 x i8] c"CtMark", align 1
@206 = private unnamed_addr constant [10 x i8] c"CtMarkMask", align 1
@207 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAhj10_NtB6_5Debug3fmtCs4w110Okq5IC_16ipfs_kad_example }>, align 8
@208 = private unnamed_addr constant [8 x i8] c"CtLabels", align 1
@209 = private unnamed_addr constant [12 x i8] c"CtLabelsMask", align 1
@210 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7filters6flower4mpls24TcFilterFlowerMplsOptionENtB6_5Debug3fmtCs4w110Okq5IC_16ipfs_kad_example }>, align 8
@211 = private unnamed_addr constant [8 x i8] c"MplsOpts", align 1
@212 = private unnamed_addr constant [7 x i8] c"KeyHash", align 1
@213 = private unnamed_addr constant [11 x i8] c"KeyHashMask", align 1
@214 = private unnamed_addr constant [8 x i8] c"\03-- \C0\01;\00", align 1
@215 = private unnamed_addr constant [13 x i8] c"tracing::span", align 1
@216 = private unnamed_addr constant [8 x i8] c"LseDepth", align 1
@217 = private unnamed_addr constant [6 x i8] c"LseTtl", align 1
@218 = private unnamed_addr constant [6 x i8] c"LseBos", align 1
@219 = private unnamed_addr constant [5 x i8] c"LseTc", align 1
@220 = private unnamed_addr constant [8 x i8] c"LseLabel", align 1
@221 = private unnamed_addr constant [1 x i8] c"A", align 1
@222 = private unnamed_addr constant [4 x i8] c"AAAA", align 1
@223 = private unnamed_addr constant [5 x i8] c"ANAME", align 1
@224 = private unnamed_addr constant [3 x i8] c"ANY", align 1
@225 = private unnamed_addr constant [4 x i8] c"AXFR", align 1
@226 = private unnamed_addr constant [3 x i8] c"CAA", align 1
@227 = private unnamed_addr constant [3 x i8] c"CDS", align 1
@228 = private unnamed_addr constant [7 x i8] c"CDNSKEY", align 1
@229 = private unnamed_addr constant [4 x i8] c"CERT", align 1
@230 = private unnamed_addr constant [5 x i8] c"CNAME", align 1
@231 = private unnamed_addr constant [5 x i8] c"CSYNC", align 1
@232 = private unnamed_addr constant [6 x i8] c"DNSKEY", align 1
@233 = private unnamed_addr constant [2 x i8] c"DS", align 1
@234 = private unnamed_addr constant [5 x i8] c"HINFO", align 1
@235 = private unnamed_addr constant [5 x i8] c"HTTPS", align 1
@236 = private unnamed_addr constant [4 x i8] c"IXFR", align 1
@237 = private unnamed_addr constant [3 x i8] c"KEY", align 1
@238 = private unnamed_addr constant [2 x i8] c"MX", align 1
@239 = private unnamed_addr constant [5 x i8] c"NAPTR", align 1
@240 = private unnamed_addr constant [2 x i8] c"NS", align 1
@241 = private unnamed_addr constant [4 x i8] c"NSEC", align 1
@242 = private unnamed_addr constant [5 x i8] c"NSEC3", align 1
@243 = private unnamed_addr constant [10 x i8] c"NSEC3PARAM", align 1
@244 = private unnamed_addr constant [4 x i8] c"NULL", align 1
@245 = private unnamed_addr constant [10 x i8] c"OPENPGPKEY", align 1
@246 = private unnamed_addr constant [3 x i8] c"OPT", align 1
@247 = private unnamed_addr constant [3 x i8] c"PTR", align 1
@248 = private unnamed_addr constant [5 x i8] c"RRSIG", align 1
@249 = private unnamed_addr constant [3 x i8] c"SIG", align 1
@250 = private unnamed_addr constant [6 x i8] c"SMIMEA", align 1
@251 = private unnamed_addr constant [3 x i8] c"SOA", align 1
@252 = private unnamed_addr constant [3 x i8] c"SRV", align 1
@253 = private unnamed_addr constant [5 x i8] c"SSHFP", align 1
@254 = private unnamed_addr constant [4 x i8] c"SVCB", align 1
@255 = private unnamed_addr constant [4 x i8] c"TLSA", align 1
@256 = private unnamed_addr constant [4 x i8] c"TSIG", align 1
@257 = private unnamed_addr constant [3 x i8] c"TXT", align 1
@258 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@259 = private unnamed_addr constant [4 x i8] c"ZERO", align 1
@260 = private unnamed_addr constant [2 x i8] c"IN", align 1
@261 = private unnamed_addr constant [2 x i8] c"CH", align 1
@262 = private unnamed_addr constant [2 x i8] c"HS", align 1
@263 = private unnamed_addr constant [4 x i8] c"NONE", align 1
@264 = private unnamed_addr constant [26 x i8] c"\17flushing frame; length=\C0\00", align 1
@265 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"g\00\00\00\00\00\00\00\99\00\00\00\09\00\00\00" }>, align 8
@266 = private unnamed_addr constant [11 x i8] c"\08written \C0\00", align 1
@267 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"g\00\00\00\00\00\00\00\A2\00\00\00\09\00\00\00" }>, align 8
@268 = private unnamed_addr constant [41 x i8] c"failed to write entire datagram to socket", align 1
@269 = private unnamed_addr constant [13 x i8] c"sending frame", align 1
@270 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"g\00\00\00\00\00\00\00\87\00\00\00\09\00\00\00" }>, align 8
@271 = private unnamed_addr constant [25 x i8] c"\16frame encoded; length=\C0\00", align 1
@272 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @45, [16 x i8] c"g\00\00\00\00\00\00\00\8D\00\00\00\09\00\00\00" }>, align 8
@273 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3LwfirTY3Ij_20netlink_packet_route20address_family_linux13AddressFamilyNtB6_5Debug3fmtCs4w110Okq5IC_16ipfs_kad_example }>, align 8
@274 = private unnamed_addr constant [20 x i8] c"NeighbourTableHeader", align 1
@275 = private unnamed_addr constant [6 x i8] c"family", align 1
@276 = private unnamed_addr constant [16 x i8] c"\0Aquerying: \C0\01 \C0\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCskmxkG8Vp81z_12hybrid_array7from_fnINtB5_5ArrayhINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnzNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtCskKLDkoKarTP_4core7default7Default7default0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.m, %.backedge.i ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val8.i = load i64, ptr %i.j, align 8, !noalias !49, !noundef !8
  %i.k = icmp eq i64 %.val8.i, %3
  br i1 %i.k, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, label %.backedge.i

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %.lr.ph.i
  %.val7.i = load ptr, ptr %i.g, align 8, !noalias !49, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %2, i64 %3), !alias.scope !50, !noalias !49
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.l = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.l, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.m = add nuw nsw i64 %i.h, 1
  %i.n = icmp eq ptr %i.i, %i.e
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE6removeCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCs80T0Klmhmtx_12clap_builder6parser7matches11matched_arg10MatchedArgE6removeCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %bb.b
  %.sink15 = phi i64 [ 8, %bb.b ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.q, %bb.b ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.val7 = load i128, ptr %1, align 8
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0819, i64 16 ; 2 uses
  %i.h = add i64 %.sroa.8.018, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0819 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.8.018 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val = load i128, ptr %.sroa.0.0819, align 8
  %i.j = icmp eq i128 %.val, %.val7
  br i1 %i.j, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !8 ; 2 uses
  %i.m = icmp ult i64 %.sroa.8.018, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.8.018
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.018, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_groupNtB3_8ArgGroup2idReECs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) initializes((72, 88)) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %3, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j0_ECs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !60, !nonnull !8, !noundef !8
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.b = invoke { ptr, i64 } @_RNvXsk_NtNtCs80T0Klmhmtx_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload)
          to label %bb.c unwind label %bb.b, !noalias !62 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs80T0Klmhmtx_12clap_builder7builder9arg_group8ArgGroupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #32
          to label %bb.h unwind label %bb.f, !noalias !63

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %3, label %bb.d

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !61
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.b, 1
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load i64, ptr %5, align 8, !alias.scope !64, !noundef !8 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !9, !alias.scope !64, !noundef !8
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #33
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i unwind label %bb.b, !noalias !63

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.e, %bb.d
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %6, align 8, !alias.scope !64, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.f, ptr %i.l, align 8, !noalias !63
  %i.m = add i64 %i.g, 1
  store i64 %i.m, ptr %5, align 8, !alias.scope !64
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !63
  unreachable

bb.g:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE8push_mutCs4w110Okq5IC_16ipfs_kad_example.exit.i, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCsc13h7DQFCSE_5tokio2io8async_fdINtB6_17AsyncFdReadyGuardNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketE6try_ioTjNtNtB19_4addr10SocketAddrENCINvXs0_NtB19_5tokioNtB2x_11TokioSocketNtNtB19_12async_socket11AsyncSocket14poll_recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0ECs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !align !10, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !range !11, !alias.scope !72, !noundef !8
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %_RNCINvXs0_NtCskGfSpwhqogB_11netlink_sys5tokioNtB8_11TokioSocketNtNtBa_12async_socket11AsyncSocket14poll_recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0Cs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #31, !noalias !73
  unreachable

_RNCINvXs0_NtCskGfSpwhqogB_11netlink_sys5tokioNtB8_11TokioSocketNtNtBa_12async_socket11AsyncSocket14poll_recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0Cs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  call void @_RINvMs2_NtCskGfSpwhqogB_11netlink_sys6socketNtB6_6Socket9recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0)
  %i.i = load i64, ptr %i.c, align 8, !range !13, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_RNCINvXs0_NtCskGfSpwhqogB_11netlink_sys5tokioNtB8_11TokioSocketNtNtBa_12async_socket11AsyncSocket14poll_recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0Cs4w110Okq5IC_16ipfs_kad_example.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.l = ptrtoint ptr %.val to i64                ; 4 uses
  %i.m = and i64 %i.l, 3                          ; 2 uses
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
    i64 1, label %bb.g
  ], !prof !14

default.unreachable:                              ; preds = %bb.k, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.d
  %i.o = lshr i64 %i.l, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  %i.s = invoke noundef i8 %i.r(i32 noundef %i.p)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.s, !inline_history !15

bb.e:                                             ; preds = %bb.c
  %i.t = lshr i64 %i.l, 32
  %i.u = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.t to i8   ; 2 uses
  %i.v = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.v)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !16, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %.val, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !16, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.h:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %_RNCINvXs0_NtCskGfSpwhqogB_11netlink_sys5tokioNtB8_11TokioSocketNtNtBa_12async_socket11AsyncSocket14poll_recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0Cs4w110Okq5IC_16ipfs_kad_example.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.r

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.g, %bb.f, %bb.e, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.z, %bb.g ], [ %switch.idx.cast.i.i.i, %bb.e ], [ %i.x, %bb.f ], [ %i.s, %.noexc ]
  %i.aa = icmp eq i8 %.sroa.0.0.i, 13
  br i1 %i.aa, label %bb.i, label %bb.h

bb.i:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 1
  %.not = icmp eq i8 %.sroa.4.0.copyload, 2
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 8 dereferenceable(9) %i.ab, i64 9, i1 false)
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx2, align 1
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx, i64 6, i1 false)
  invoke void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registrationNtB5_12Registration15clear_readiness(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %bb.o unwind label %bb.n

bb.k:                                             ; preds = %bb.o, %bb.i
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %bb.q
    i64 3, label %bb.l
    i64 0, label %bb.q
    i64 1, label %bb.m
  ], !prof !14

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.ad = and i64 %i.l, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.assume(i1 %i.ae)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !74
  store i8 3, ptr %i.a, align 8, !alias.scope !74
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag)
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4w110Okq5IC_16ipfs_kad_example(ptr nonnull %.val) #32
          to label %.thread unwind label %bb.p

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.p:                                             ; preds = %bb.n, %bb.s
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.thread:                                          ; preds = %bb.n, %bb.s
  %.pn23 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.s ], [ %i.ah, %bb.n ]
  resume { ptr, i32 } %.pn23

bb.s:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4w110Okq5IC_16ipfs_kad_example(ptr nonnull %.val) #32
          to label %.thread unwind label %bb.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEECs4w110Okq5IC_16ipfs_kad_example(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtCs5JE7FSNhGyr_15futures_bounded11futures_map12TaggedFuturemINtB1U_13TimeoutFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB3k_6future6future6Futurep6OutputINtNtB3k_6result6ResultINtNtB3k_6option6OptionNtNtCskC4O4hr3vz7_10libp2p_kad8protocol14KadResponseMsgENtNtNtB3k_2io5error5ErrorENtNtB3k_6marker4SendEL_EEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeuINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtB1W_6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB46_13KadRequestMsgNtB46_14KadResponseMsgEENtNtNtCskKLDkoKarTP_4core2io5error5ErrorEEECs4w110Okq5IC_16ipfs_kad_example(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeuINtNtNtBP_6future6either6EitherINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtB1W_6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB4B_14KadResponseMsgNtB4B_13KadRequestMsgEEzEINtCscu2bAJ62uie_6either6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorzEEEECs4w110Okq5IC_16ipfs_kad_example(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequesteduNtNtCskC4O4hr3vz7_10libp2p_kad8protocol14ProtocolConfigEEECs4w110Okq5IC_16ipfs_kad_example(ptr nofree noundef readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 16
}

end_hunk_0
